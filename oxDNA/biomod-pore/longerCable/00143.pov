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
	<24.126896, 35.406437, 34.664333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360977, 35.167747, 34.883957>,  <24.501425, 35.024536, 35.015732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360977, 35.167747, 34.883957>,  <24.126896, 35.406437, 34.664333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.360977, 35.167747, 34.883957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735618, 0.675560, -0.049840,
		-0.341181, 0.433063, 0.834297,
		0.585202, -0.596720, 0.549058,
		24.536537, 34.988731, 35.048676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.326370, 35.751152, 35.311012>,  <24.126896, 35.406437, 34.664333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.326370, 35.751152, 35.311012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.580055, 35.481613, 35.159382>,  <24.732267, 35.319889, 35.068401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.580055, 35.481613, 35.159382>,  <24.326370, 35.751152, 35.311012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.580055, 35.481613, 35.159382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722528, 0.691064, -0.019612,
		0.275183, -0.261457, 0.925156,
		0.634215, -0.673848, -0.379079,
		24.770319, 35.279457, 35.045658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.935120, 35.581364, 35.824074>,  <24.326370, 35.751152, 35.311012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.935120, 35.581364, 35.824074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014145, 35.678513, 35.444183>,  <25.061560, 35.736801, 35.216248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014145, 35.678513, 35.444183>,  <24.935120, 35.581364, 35.824074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014145, 35.678513, 35.444183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774948, 0.554635, 0.303043,
		0.600353, -0.795859, -0.078639,
		0.197564, 0.242874, -0.949726,
		25.073414, 35.751373, 35.159264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275978, 36.096481, 35.541004>,  <24.935120, 35.581364, 35.824074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275978, 36.096481, 35.541004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578104, 36.105015, 35.803009>,  <25.759380, 36.110134, 35.960213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578104, 36.105015, 35.803009>,  <25.275978, 36.096481, 35.541004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578104, 36.105015, 35.803009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044280, 0.995525, -0.083480,
		-0.653865, 0.092057, 0.750990,
		0.755315, 0.021330, 0.655015,
		25.804699, 36.111416, 35.999512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219259, 36.611919, 36.183891>,  <25.275978, 36.096481, 35.541004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219259, 36.611919, 36.183891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606741, 36.566895, 36.095398>,  <25.839230, 36.539879, 36.042301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606741, 36.566895, 36.095398>,  <25.219259, 36.611919, 36.183891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606741, 36.566895, 36.095398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061916, 0.972671, -0.223780,
		0.240377, 0.203078, 0.949199,
		0.968703, -0.112562, -0.221234,
		25.897352, 36.533127, 36.029026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.745333, 36.939102, 36.599815>,  <25.219259, 36.611919, 36.183891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.745333, 36.939102, 36.599815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889456, 36.917625, 36.227299>,  <25.975929, 36.904739, 36.003788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889456, 36.917625, 36.227299>,  <25.745333, 36.939102, 36.599815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889456, 36.917625, 36.227299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153753, 0.981270, -0.116056,
		0.920076, 0.185004, 0.345303,
		0.360307, -0.053689, -0.931288,
		25.997547, 36.901520, 35.947914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232054, 37.483253, 36.442745>,  <25.745333, 36.939102, 36.599815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232054, 37.483253, 36.442745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028078, 37.367279, 36.118793>,  <25.905693, 37.297695, 35.924423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028078, 37.367279, 36.118793>,  <26.232054, 37.483253, 36.442745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028078, 37.367279, 36.118793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177806, 0.956680, -0.230538,
		0.841635, 0.026441, -0.539400,
		-0.509937, -0.289937, -0.809876,
		25.875097, 37.280296, 35.875832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373194, 37.985241, 35.972946>,  <26.232054, 37.483253, 36.442745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373194, 37.985241, 35.972946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016285, 37.831676, 35.877903>,  <25.802139, 37.739536, 35.820877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016285, 37.831676, 35.877903>,  <26.373194, 37.985241, 35.972946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016285, 37.831676, 35.877903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318492, 0.908231, -0.271441,
		0.320015, -0.166523, -0.932663,
		-0.892274, -0.383911, -0.237611,
		25.748602, 37.716503, 35.806618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233055, 38.208351, 35.285240>,  <26.373194, 37.985241, 35.972946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233055, 38.208351, 35.285240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877962, 38.120350, 35.446995>,  <25.664906, 38.067551, 35.544048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877962, 38.120350, 35.446995>,  <26.233055, 38.208351, 35.285240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877962, 38.120350, 35.446995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394271, 0.816812, -0.421153,
		-0.237654, -0.533309, -0.811851,
		-0.887734, -0.220000, 0.404386,
		25.611643, 38.054348, 35.568310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827023, 38.197655, 34.695808>,  <26.233055, 38.208351, 35.285240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827023, 38.197655, 34.695808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597328, 38.261101, 35.017078>,  <25.459511, 38.299168, 35.209843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597328, 38.261101, 35.017078>,  <25.827023, 38.197655, 34.695808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597328, 38.261101, 35.017078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550012, 0.651938, -0.521981,
		-0.606417, -0.741497, -0.287125,
		-0.574235, 0.158615, 0.803178,
		25.425058, 38.308685, 35.258034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175150, 38.170105, 34.445061>,  <25.827023, 38.197655, 34.695808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175150, 38.170105, 34.445061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139729, 38.372391, 34.788319>,  <25.118475, 38.493763, 34.994274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139729, 38.372391, 34.788319>,  <25.175150, 38.170105, 34.445061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139729, 38.372391, 34.788319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543837, 0.697241, -0.467008,
		-0.834505, -0.508047, 0.213280,
		-0.088555, 0.505710, 0.858146,
		25.113163, 38.524105, 35.045761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.523266, 38.404404, 34.492138>,  <25.175150, 38.170105, 34.445061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.523266, 38.404404, 34.492138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723711, 38.666206, 34.718594>,  <24.843979, 38.823288, 34.854465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723711, 38.666206, 34.718594>,  <24.523266, 38.404404, 34.492138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.723711, 38.666206, 34.718594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401338, 0.755367, -0.518024,
		-0.766690, 0.032376, 0.641201,
		0.501113, 0.654502, 0.566138,
		24.874044, 38.862556, 34.888435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.622396, 39.078403, 34.205936>,  <24.523266, 38.404404, 34.492138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.622396, 39.078403, 34.205936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403460, 39.402714, 34.288948>,  <24.272099, 39.597298, 34.338753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403460, 39.402714, 34.288948>,  <24.622396, 39.078403, 34.205936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.403460, 39.402714, 34.288948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542450, 0.154856, 0.825692,
		0.637311, 0.564508, -0.524562,
		-0.547341, 0.810772, 0.207526,
		24.239258, 39.645947, 34.351204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044889, 39.675674, 34.228313>,  <24.622396, 39.078403, 34.205936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.044889, 39.675674, 34.228313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737909, 39.634605, 34.481445>,  <24.553720, 39.609962, 34.633324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737909, 39.634605, 34.481445>,  <25.044889, 39.675674, 34.228313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.737909, 39.634605, 34.481445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625155, -0.338686, 0.703188,
		0.142130, 0.935280, 0.324114,
		-0.767451, -0.102677, 0.632832,
		24.507673, 39.603802, 34.671295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334269, 39.798290, 34.847450>,  <25.044889, 39.675674, 34.228313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334269, 39.798290, 34.847450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.998762, 39.592110, 34.917625>,  <24.797459, 39.468403, 34.959732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.998762, 39.592110, 34.917625>,  <25.334269, 39.798290, 34.847450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.998762, 39.592110, 34.917625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414549, -0.395637, 0.819525,
		-0.353011, 0.760121, 0.545527,
		-0.838768, -0.515449, 0.175443,
		24.747131, 39.437473, 34.970257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211187, 39.656273, 35.602634>,  <25.334269, 39.798290, 34.847450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211187, 39.656273, 35.602634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993315, 39.372353, 35.423965>,  <24.862591, 39.202003, 35.316765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993315, 39.372353, 35.423965>,  <25.211187, 39.656273, 35.602634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.993315, 39.372353, 35.423965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390680, -0.686041, 0.613772,
		-0.742086, 0.159804, 0.650976,
		-0.544680, -0.709796, -0.446669,
		24.829910, 39.159412, 35.289967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.975731, 39.194744, 36.169975>,  <25.211187, 39.656273, 35.602634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.975731, 39.194744, 36.169975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.005129, 38.988632, 35.828430>,  <25.022768, 38.864964, 35.623501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.005129, 38.988632, 35.828430>,  <24.975731, 39.194744, 36.169975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.005129, 38.988632, 35.828430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395264, -0.771014, 0.499304,
		-0.915623, -0.374197, 0.147008,
		0.073492, -0.515281, -0.853864,
		25.027176, 38.834049, 35.572269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.575562, 38.529861, 36.217121>,  <24.975731, 39.194744, 36.169975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.575562, 38.529861, 36.217121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.853800, 38.466705, 35.936775>,  <25.020742, 38.428810, 35.768566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.853800, 38.466705, 35.936775>,  <24.575562, 38.529861, 36.217121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.853800, 38.466705, 35.936775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251823, -0.860074, 0.443686,
		-0.672853, -0.485121, -0.558504,
		0.695596, -0.157891, -0.700868,
		25.062479, 38.419338, 35.726513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.479591, 37.807323, 36.124191>,  <24.575562, 38.529861, 36.217121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.479591, 37.807323, 36.124191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837687, 37.904934, 35.975063>,  <25.052544, 37.963501, 35.885586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837687, 37.904934, 35.975063>,  <24.479591, 37.807323, 36.124191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837687, 37.904934, 35.975063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347687, -0.905850, 0.241969,
		-0.278674, -0.346246, -0.895798,
		0.895240, 0.244027, -0.372823,
		25.106258, 37.978142, 35.863216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.555363, 37.276226, 35.722347>,  <24.479591, 37.807323, 36.124191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.555363, 37.276226, 35.722347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926435, 37.411697, 35.785225>,  <25.149078, 37.492981, 35.822952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926435, 37.411697, 35.785225>,  <24.555363, 37.276226, 35.722347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.926435, 37.411697, 35.785225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304404, -0.929814, 0.206845,
		0.216211, -0.144037, -0.965664,
		0.927681, 0.338674, 0.157191,
		25.204741, 37.513298, 35.832382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158369, 37.011879, 35.223282>,  <24.555363, 37.276226, 35.722347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158369, 37.011879, 35.223282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264351, 37.107246, 35.597012>,  <25.327940, 37.164467, 35.821247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264351, 37.107246, 35.597012>,  <25.158369, 37.011879, 35.223282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264351, 37.107246, 35.597012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305340, -0.939834, 0.153233,
		0.914640, 0.244686, -0.321811,
		0.264954, 0.238415, 0.934322,
		25.343838, 37.178772, 35.877308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698324, 36.998379, 34.823666>,  <25.158369, 37.011879, 35.223282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698324, 36.998379, 34.823666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874672, 37.127636, 35.158619>,  <25.980480, 37.205193, 35.359592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874672, 37.127636, 35.158619>,  <25.698324, 36.998379, 34.823666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874672, 37.127636, 35.158619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092125, -0.944308, 0.315905,
		0.892832, -0.062129, -0.446085,
		0.440868, 0.323145, 0.837384,
		26.006933, 37.224579, 35.409836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396645, 36.836380, 34.726200>,  <25.698324, 36.998379, 34.823666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396645, 36.836380, 34.726200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251244, 36.845436, 35.098728>,  <26.164003, 36.850868, 35.322243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251244, 36.845436, 35.098728>,  <26.396645, 36.836380, 34.726200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251244, 36.845436, 35.098728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164963, -0.982342, 0.088268,
		0.916872, 0.185718, 0.353348,
		-0.363502, 0.022641, 0.931318,
		26.142193, 36.852230, 35.378124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854828, 36.468174, 35.239494>,  <26.396645, 36.836380, 34.726200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854828, 36.468174, 35.239494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487713, 36.481064, 35.397800>,  <26.267445, 36.488800, 35.492783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487713, 36.481064, 35.397800>,  <26.854828, 36.468174, 35.239494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487713, 36.481064, 35.397800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047370, -0.998470, -0.028541,
		0.394241, -0.044942, 0.917908,
		-0.917786, 0.032229, 0.395766,
		26.212378, 36.490734, 35.516529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713753, 35.933403, 35.793144>,  <26.854828, 36.468174, 35.239494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713753, 35.933403, 35.793144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350775, 36.019119, 35.648579>,  <26.132988, 36.070549, 35.561840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350775, 36.019119, 35.648579>,  <26.713753, 35.933403, 35.793144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350775, 36.019119, 35.648579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283954, -0.946779, 0.151590,
		-0.309698, 0.240186, 0.919999,
		-0.907446, 0.214290, -0.361417,
		26.078541, 36.083405, 35.540154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251356, 35.536488, 35.954136>,  <26.713753, 35.933403, 35.793144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251356, 35.536488, 35.954136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352592, 35.287502, 35.657898>,  <27.413334, 35.138111, 35.480156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352592, 35.287502, 35.657898>,  <27.251356, 35.536488, 35.954136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352592, 35.287502, 35.657898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939608, 0.340463, 0.034944,
		0.230394, -0.704714, 0.671042,
		0.253090, -0.622466, -0.740596,
		27.428520, 35.100761, 35.435719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758406, 35.198120, 36.201557>,  <27.251356, 35.536488, 35.954136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758406, 35.198120, 36.201557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787058, 35.202755, 35.802612>,  <27.804249, 35.205536, 35.563244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787058, 35.202755, 35.802612>,  <27.758406, 35.198120, 36.201557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787058, 35.202755, 35.802612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940105, 0.333326, 0.071392,
		0.333275, -0.942740, 0.012970,
		0.071627, 0.011600, -0.997364,
		27.808548, 35.206230, 35.503403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370342, 34.849266, 36.101345>,  <27.758406, 35.198120, 36.201557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370342, 34.849266, 36.101345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327707, 35.139267, 35.829163>,  <28.302126, 35.313267, 35.665855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327707, 35.139267, 35.829163>,  <28.370342, 34.849266, 36.101345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327707, 35.139267, 35.829163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883866, 0.382547, 0.269144,
		0.455434, -0.572742, -0.681577,
		-0.106585, 0.725000, -0.680452,
		28.295732, 35.356766, 35.625027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953941, 34.936668, 35.675781>,  <28.370342, 34.849266, 36.101345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953941, 34.936668, 35.675781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748474, 35.277435, 35.716526>,  <28.625193, 35.481895, 35.740974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748474, 35.277435, 35.716526>,  <28.953941, 34.936668, 35.675781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748474, 35.277435, 35.716526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847688, 0.485572, 0.213647,
		0.132547, 0.196094, -0.971585,
		-0.513670, 0.851919, 0.101865,
		28.594374, 35.533012, 35.747086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473175, 35.410271, 35.640434>,  <28.953941, 34.936668, 35.675781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473175, 35.410271, 35.640434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176914, 35.660614, 35.738205>,  <28.999159, 35.810818, 35.796867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176914, 35.660614, 35.738205>,  <29.473175, 35.410271, 35.640434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176914, 35.660614, 35.738205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668322, 0.648794, 0.363885,
		0.069157, 0.432867, -0.898801,
		-0.740650, 0.625854, 0.244426,
		28.954720, 35.848370, 35.811531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591768, 36.081726, 35.380096>,  <29.473175, 35.410271, 35.640434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591768, 36.081726, 35.380096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379972, 36.101227, 35.718864>,  <29.252895, 36.112926, 35.922123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379972, 36.101227, 35.718864>,  <29.591768, 36.081726, 35.380096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379972, 36.101227, 35.718864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663136, 0.646402, 0.377379,
		-0.529050, 0.761438, -0.374592,
		-0.529488, 0.048753, 0.846916,
		29.221127, 36.115852, 35.972939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100931, 36.731434, 35.273239>,  <29.591768, 36.081726, 35.380096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100931, 36.731434, 35.273239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849564, 37.023190, 35.165096>,  <29.698744, 37.198242, 35.100212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849564, 37.023190, 35.165096>,  <30.100931, 36.731434, 35.273239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849564, 37.023190, 35.165096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515431, 0.650742, 0.557553,
		0.582600, 0.211027, -0.784885,
		-0.628417, 0.729385, -0.270353,
		29.661039, 37.242004, 35.083992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529913, 37.345718, 35.031284>,  <30.100931, 36.731434, 35.273239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529913, 37.345718, 35.031284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174295, 37.452991, 35.179707>,  <29.960924, 37.517353, 35.268761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174295, 37.452991, 35.179707>,  <30.529913, 37.345718, 35.031284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174295, 37.452991, 35.179707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433639, 0.753184, 0.494643,
		-0.146818, 0.600662, -0.785907,
		-0.889045, 0.268178, 0.371051,
		29.907581, 37.533443, 35.291023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970867, 36.834393, 35.443165>,  <30.529913, 37.345718, 35.031284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970867, 36.834393, 35.443165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900715, 36.473423, 35.285751>,  <30.858624, 36.256840, 35.191303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900715, 36.473423, 35.285751>,  <30.970867, 36.834393, 35.443165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900715, 36.473423, 35.285751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560341, 0.237173, -0.793578,
		0.809481, -0.359692, 0.464071,
		-0.175379, -0.902425, -0.393538,
		30.848101, 36.202694, 35.167690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561234, 36.736057, 35.175682>,  <30.970867, 36.834393, 35.443165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561234, 36.736057, 35.175682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289911, 36.498180, 35.003059>,  <31.127119, 36.355453, 34.899487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289911, 36.498180, 35.003059>,  <31.561234, 36.736057, 35.175682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289911, 36.498180, 35.003059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410706, 0.180157, -0.893792,
		0.609283, -0.783505, 0.122045,
		-0.678303, -0.594696, -0.431556,
		31.086420, 36.319771, 34.873592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839525, 36.158390, 34.977757>,  <31.561234, 36.736057, 35.175682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839525, 36.158390, 34.977757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537270, 36.305141, 34.760719>,  <31.355915, 36.393192, 34.630497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537270, 36.305141, 34.760719>,  <31.839525, 36.158390, 34.977757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537270, 36.305141, 34.760719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644656, 0.270037, -0.715191,
		-0.115872, -0.890212, -0.440564,
		-0.755640, 0.366883, -0.542591,
		31.310577, 36.415207, 34.597942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455891, 36.532326, 34.820496>,  <31.839525, 36.158390, 34.977757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455891, 36.532326, 34.820496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855236, 36.555149, 34.818569>,  <33.094841, 36.568844, 34.817413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855236, 36.555149, 34.818569>,  <32.455891, 36.532326, 34.820496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855236, 36.555149, 34.818569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029638, 0.586947, 0.809083,
		0.048992, -0.807612, 0.587675,
		0.998359, 0.057056, -0.004820,
		33.154743, 36.572266, 34.817123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690033, 36.328388, 35.558025>,  <32.455891, 36.532326, 34.820496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690033, 36.328388, 35.558025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958740, 36.559120, 35.372124>,  <33.119965, 36.697559, 35.260582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958740, 36.559120, 35.372124>,  <32.690033, 36.328388, 35.558025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958740, 36.559120, 35.372124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091974, 0.557602, 0.824997,
		0.735029, -0.596952, 0.321527,
		0.671768, 0.576825, -0.464758,
		33.160271, 36.732166, 35.232697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185184, 36.417332, 36.095146>,  <32.690033, 36.328388, 35.558025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185184, 36.417332, 36.095146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240379, 36.707054, 35.824936>,  <33.273495, 36.880890, 35.662807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240379, 36.707054, 35.824936>,  <33.185184, 36.417332, 36.095146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240379, 36.707054, 35.824936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155575, 0.657735, 0.737008,
		0.978139, -0.206790, -0.021928,
		0.137983, 0.724308, -0.675528,
		33.281773, 36.924347, 35.622276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877567, 36.976784, 36.075897>,  <33.185184, 36.417332, 36.095146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877567, 36.976784, 36.075897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496155, 37.046204, 35.977383>,  <33.267307, 37.087856, 35.918274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496155, 37.046204, 35.977383>,  <33.877567, 36.976784, 36.075897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496155, 37.046204, 35.977383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023135, 0.772846, 0.634172,
		0.300406, 0.610400, -0.732917,
		-0.953531, 0.173553, -0.246289,
		33.210094, 37.098270, 35.903496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704449, 37.784466, 35.770134>,  <33.877567, 36.976784, 36.075897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704449, 37.784466, 35.770134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468403, 37.557472, 35.999821>,  <33.326775, 37.421276, 36.137634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468403, 37.557472, 35.999821>,  <33.704449, 37.784466, 35.770134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468403, 37.557472, 35.999821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057084, 0.738816, 0.671484,
		-0.805296, 0.363477, -0.468384,
		-0.590119, -0.567481, 0.574217,
		33.291367, 37.387226, 36.172085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960560, 38.110580, 35.789631>,  <33.704449, 37.784466, 35.770134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960560, 38.110580, 35.789631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114399, 37.916676, 36.103851>,  <33.206703, 37.800335, 36.292385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114399, 37.916676, 36.103851>,  <32.960560, 38.110580, 35.789631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114399, 37.916676, 36.103851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319589, 0.728451, 0.605988,
		-0.865996, -0.484114, 0.125235,
		0.384595, -0.484759, 0.785554,
		33.229778, 37.771248, 36.339516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932610, 37.975803, 34.988796>,  <32.960560, 38.110580, 35.789631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932610, 37.975803, 34.988796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103806, 37.742966, 35.265347>,  <33.206524, 37.603264, 35.431274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103806, 37.742966, 35.265347>,  <32.932610, 37.975803, 34.988796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103806, 37.742966, 35.265347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210949, -0.679506, -0.702689,
		0.878821, 0.446587, -0.168028,
		0.427988, -0.582093, 0.691371,
		33.232201, 37.568336, 35.472759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422123, 37.786499, 34.702305>,  <32.932610, 37.975803, 34.988796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422123, 37.786499, 34.702305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423717, 37.520340, 35.000896>,  <33.424675, 37.360645, 35.180054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423717, 37.520340, 35.000896>,  <33.422123, 37.786499, 34.702305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423717, 37.520340, 35.000896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349641, -0.698444, -0.624441,
		0.936875, 0.263487, 0.229868,
		0.003982, -0.665395, 0.746481,
		33.424911, 37.320721, 35.224842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090260, 37.535442, 34.712074>,  <33.422123, 37.786499, 34.702305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090260, 37.535442, 34.712074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831200, 37.287872, 34.889824>,  <33.675762, 37.139328, 34.996475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831200, 37.287872, 34.889824>,  <34.090260, 37.535442, 34.712074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831200, 37.287872, 34.889824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169508, -0.685649, -0.707921,
		0.742840, -0.383162, 0.548977,
		-0.647654, -0.618928, 0.444378,
		33.636902, 37.102196, 35.023136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417347, 36.947445, 34.925812>,  <34.090260, 37.535442, 34.712074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417347, 36.947445, 34.925812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039459, 36.828564, 34.870426>,  <33.812725, 36.757236, 34.837193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039459, 36.828564, 34.870426>,  <34.417347, 36.947445, 34.925812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039459, 36.828564, 34.870426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311389, -0.681072, -0.662705,
		0.102650, -0.669189, 0.735968,
		-0.944722, -0.297199, -0.138466,
		33.756042, 36.739403, 34.828888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281967, 36.166519, 34.888252>,  <34.417347, 36.947445, 34.925812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281967, 36.166519, 34.888252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983143, 36.343960, 34.690216>,  <33.803848, 36.450424, 34.571392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983143, 36.343960, 34.690216>,  <34.281967, 36.166519, 34.888252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983143, 36.343960, 34.690216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041446, -0.712247, -0.700705,
		-0.663458, -0.543991, 0.513709,
		-0.747064, 0.443597, -0.495093,
		33.759026, 36.477039, 34.541687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854549, 35.587597, 34.496052>,  <34.281967, 36.166519, 34.888252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854549, 35.587597, 34.496052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770565, 35.931641, 34.310093>,  <33.720177, 36.138065, 34.198517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770565, 35.931641, 34.310093>,  <33.854549, 35.587597, 34.496052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770565, 35.931641, 34.310093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045706, -0.483611, -0.874089,
		-0.976641, -0.162274, 0.140850,
		-0.209959, 0.860109, -0.464898,
		33.707577, 36.189674, 34.170624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253815, 35.011829, 34.176655>,  <33.854549, 35.587597, 34.496052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253815, 35.011829, 34.176655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598373, 35.183846, 34.068539>,  <34.805107, 35.287056, 34.003670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598373, 35.183846, 34.068539>,  <34.253815, 35.011829, 34.176655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598373, 35.183846, 34.068539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330186, -0.069734, 0.941336,
		0.385968, -0.900110, -0.202063,
		0.861398, 0.430045, -0.270289,
		34.856792, 35.312859, 33.987453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875217, 34.621067, 34.521587>,  <34.253815, 35.011829, 34.176655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875217, 34.621067, 34.521587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966934, 35.004074, 34.451637>,  <35.021965, 35.233879, 34.409668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966934, 35.004074, 34.451637>,  <34.875217, 34.621067, 34.521587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966934, 35.004074, 34.451637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507721, 0.035625, 0.860785,
		0.830450, -0.286153, -0.477985,
		0.229288, 0.957521, -0.174871,
		35.035721, 35.291332, 34.399178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611065, 34.553944, 34.465446>,  <34.875217, 34.621067, 34.521587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611065, 34.553944, 34.465446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466343, 34.915535, 34.556591>,  <35.379509, 35.132488, 34.611279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466343, 34.915535, 34.556591>,  <35.611065, 34.553944, 34.465446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466343, 34.915535, 34.556591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630367, 0.057148, 0.774191,
		0.686830, 0.423743, -0.590514,
		-0.361805, 0.903978, 0.227862,
		35.357800, 35.186729, 34.624950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179600, 35.078197, 34.417000>,  <35.611065, 34.553944, 34.465446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179600, 35.078197, 34.417000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903488, 35.267334, 34.636066>,  <35.737823, 35.380817, 34.767506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903488, 35.267334, 34.636066>,  <36.179600, 35.078197, 34.417000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903488, 35.267334, 34.636066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684843, 0.182731, 0.705407,
		0.233474, 0.861990, -0.449959,
		-0.690275, 0.472846, 0.547665,
		35.696407, 35.409187, 34.800365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522984, 35.774963, 34.633743>,  <36.179600, 35.078197, 34.417000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522984, 35.774963, 34.633743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229019, 35.675098, 34.885960>,  <36.052643, 35.615181, 35.037289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229019, 35.675098, 34.885960>,  <36.522984, 35.774963, 34.633743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229019, 35.675098, 34.885960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589404, 0.224742, 0.775947,
		-0.335434, 0.941891, -0.018012,
		-0.734906, -0.249663, 0.630540,
		36.008549, 35.600201, 35.075123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404125, 36.345169, 35.111492>,  <36.522984, 35.774963, 34.633743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404125, 36.345169, 35.111492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300964, 35.991241, 35.266708>,  <36.239067, 35.778885, 35.359840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300964, 35.991241, 35.266708>,  <36.404125, 36.345169, 35.111492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300964, 35.991241, 35.266708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554081, 0.193572, 0.809644,
		-0.791504, 0.423820, 0.440339,
		-0.257906, -0.884820, 0.388043,
		36.223591, 35.725796, 35.383121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194355, 36.446800, 35.779598>,  <36.404125, 36.345169, 35.111492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194355, 36.446800, 35.779598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360790, 36.085049, 35.741737>,  <36.460651, 35.867996, 35.719021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360790, 36.085049, 35.741737>,  <36.194355, 36.446800, 35.779598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360790, 36.085049, 35.741737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696448, 0.250029, 0.672641,
		-0.584661, -0.345799, 0.733891,
		0.416093, -0.904383, -0.094649,
		36.485619, 35.813732, 35.713345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268040, 36.015961, 36.458199>,  <36.194355, 36.446800, 35.779598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268040, 36.015961, 36.458199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551678, 35.866058, 36.219284>,  <36.721859, 35.776115, 36.075935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551678, 35.866058, 36.219284>,  <36.268040, 36.015961, 36.458199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551678, 35.866058, 36.219284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654183, 0.033547, 0.755592,
		-0.263127, -0.926516, 0.268948,
		0.709091, -0.374758, -0.597283,
		36.764404, 35.753632, 36.040100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613068, 35.455658, 36.780586>,  <36.268040, 36.015961, 36.458199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613068, 35.455658, 36.780586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857452, 35.629841, 36.516132>,  <37.004086, 35.734352, 36.357460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857452, 35.629841, 36.516132>,  <36.613068, 35.455658, 36.780586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857452, 35.629841, 36.516132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728780, 0.016800, 0.684542,
		0.309195, -0.900053, -0.307088,
		0.610965, 0.435457, -0.661135,
		37.040741, 35.760479, 36.317791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054111, 35.112217, 36.419296>,  <36.613068, 35.455658, 36.780586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054111, 35.112217, 36.419296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692421, 35.019409, 36.562702>,  <36.475407, 34.963722, 36.648746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692421, 35.019409, 36.562702>,  <37.054111, 35.112217, 36.419296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692421, 35.019409, 36.562702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426439, 0.445925, -0.786956,
		0.022720, -0.864475, -0.502162,
		-0.904231, -0.232021, 0.358515,
		36.421150, 34.949802, 36.670258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647255, 34.847321, 35.898487>,  <37.054111, 35.112217, 36.419296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647255, 34.847321, 35.898487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397118, 34.993088, 36.174500>,  <36.247036, 35.080547, 36.340107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397118, 34.993088, 36.174500>,  <36.647255, 34.847321, 35.898487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397118, 34.993088, 36.174500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603071, 0.335483, -0.723710,
		-0.495224, -0.868708, 0.009975,
		-0.625346, 0.364415, 0.690032,
		36.209515, 35.102413, 36.381508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905499, 34.514221, 35.765224>,  <36.647255, 34.847321, 35.898487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905499, 34.514221, 35.765224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914825, 34.880913, 35.924755>,  <35.920422, 35.100929, 36.020473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914825, 34.880913, 35.924755>,  <35.905499, 34.514221, 35.765224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914825, 34.880913, 35.924755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521846, 0.351434, -0.777284,
		-0.852721, -0.190002, 0.486587,
		0.023318, 0.916730, 0.398827,
		35.921822, 35.155933, 36.044403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273590, 34.902195, 35.803131>,  <35.905499, 34.514221, 35.765224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273590, 34.902195, 35.803131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523335, 35.214367, 35.789845>,  <35.673180, 35.401669, 35.781872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523335, 35.214367, 35.789845>,  <35.273590, 34.902195, 35.803131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523335, 35.214367, 35.789845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544230, 0.404108, -0.735194,
		-0.560345, 0.477103, 0.677043,
		0.624362, 0.780429, -0.033213,
		35.710644, 35.448494, 35.779881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969994, 35.467010, 35.905785>,  <35.273590, 34.902195, 35.803131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969994, 35.467010, 35.905785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273491, 35.547035, 35.657822>,  <35.455589, 35.595051, 35.509045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273491, 35.547035, 35.657822>,  <34.969994, 35.467010, 35.905785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273491, 35.547035, 35.657822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650916, 0.196576, -0.733257,
		-0.024838, 0.959861, 0.279374,
		0.758743, 0.200062, -0.619907,
		35.501114, 35.607052, 35.471851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817406, 36.058704, 35.455528>,  <34.969994, 35.467010, 35.905785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817406, 36.058704, 35.455528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098488, 35.843742, 35.269024>,  <35.267136, 35.714764, 35.157120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098488, 35.843742, 35.269024>,  <34.817406, 36.058704, 35.455528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098488, 35.843742, 35.269024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533928, 0.034822, -0.844813,
		0.470242, 0.842606, -0.262465,
		0.702704, -0.537404, -0.466265,
		35.309299, 35.682522, 35.129143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021053, 36.483734, 34.826687>,  <34.817406, 36.058704, 35.455528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021053, 36.483734, 34.826687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129742, 36.103836, 34.764515>,  <35.194954, 35.875896, 34.727211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129742, 36.103836, 34.764515>,  <35.021053, 36.483734, 34.826687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129742, 36.103836, 34.764515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419952, 0.028300, -0.907105,
		0.865914, 0.311753, -0.391156,
		0.271723, -0.949742, -0.155426,
		35.211258, 35.818913, 34.717888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271790, 36.503510, 34.144512>,  <35.021053, 36.483734, 34.826687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271790, 36.503510, 34.144512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178249, 36.126053, 34.238201>,  <35.122124, 35.899578, 34.294415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178249, 36.126053, 34.238201>,  <35.271790, 36.503510, 34.144512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178249, 36.126053, 34.238201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525414, -0.080047, -0.847073,
		0.818079, -0.321155, -0.477082,
		-0.233852, -0.943637, 0.234224,
		35.108093, 35.842960, 34.308468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486107, 35.915012, 33.638039>,  <35.271790, 36.503510, 34.144512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486107, 35.915012, 33.638039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156345, 35.846653, 33.853870>,  <34.958488, 35.805637, 33.983372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156345, 35.846653, 33.853870>,  <35.486107, 35.915012, 33.638039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156345, 35.846653, 33.853870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483856, -0.281829, -0.828526,
		0.293662, -0.944122, 0.149652,
		-0.824406, -0.170897, 0.539582,
		34.909023, 35.795383, 34.015743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171677, 35.188259, 33.513859>,  <35.486107, 35.915012, 33.638039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171677, 35.188259, 33.513859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914753, 35.483757, 33.595543>,  <34.760601, 35.661057, 33.644554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914753, 35.483757, 33.595543>,  <35.171677, 35.188259, 33.513859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914753, 35.483757, 33.595543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560201, -0.270651, -0.782894,
		-0.523086, -0.617257, 0.587685,
		-0.642305, 0.738743, 0.204215,
		34.722061, 35.705379, 33.656807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529640, 34.895298, 33.536770>,  <35.171677, 35.188259, 33.513859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529640, 34.895298, 33.536770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502918, 35.279823, 33.429871>,  <34.486885, 35.510536, 33.365730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502918, 35.279823, 33.429871>,  <34.529640, 34.895298, 33.536770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502918, 35.279823, 33.429871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489729, -0.264951, -0.830642,
		-0.869312, 0.075388, 0.488481,
		-0.066803, 0.961310, -0.267245,
		34.482876, 35.568218, 33.349697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812958, 35.076836, 33.344570>,  <34.529640, 34.895298, 33.536770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812958, 35.076836, 33.344570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032028, 35.359142, 33.164814>,  <34.163467, 35.528526, 33.056961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032028, 35.359142, 33.164814>,  <33.812958, 35.076836, 33.344570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032028, 35.359142, 33.164814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401076, -0.249921, -0.881293,
		-0.734298, 0.662898, 0.146191,
		0.547671, 0.705766, -0.449390,
		34.196331, 35.570873, 33.029999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344955, 35.452469, 32.884449>,  <33.812958, 35.076836, 33.344570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344955, 35.452469, 32.884449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714554, 35.533554, 32.754753>,  <33.936314, 35.582207, 32.676937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714554, 35.533554, 32.754753>,  <33.344955, 35.452469, 32.884449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714554, 35.533554, 32.754753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238464, -0.357390, -0.902999,
		-0.298932, 0.911690, -0.281888,
		0.923999, 0.202715, -0.324240,
		33.991753, 35.594368, 32.657482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277260, 35.711395, 32.157387>,  <33.344955, 35.452469, 32.884449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277260, 35.711395, 32.157387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668957, 35.639492, 32.194832>,  <33.903976, 35.596352, 32.217297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668957, 35.639492, 32.194832>,  <33.277260, 35.711395, 32.157387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668957, 35.639492, 32.194832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028796, -0.333791, -0.942207,
		0.200614, 0.925349, -0.321688,
		0.979247, -0.179757, 0.093610,
		33.962730, 35.585564, 32.222916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484280, 36.232807, 31.783670>,  <33.277260, 35.711395, 32.157387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484280, 36.232807, 31.783670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738613, 35.924664, 31.802689>,  <33.891212, 35.739777, 31.814098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738613, 35.924664, 31.802689>,  <33.484280, 36.232807, 31.783670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738613, 35.924664, 31.802689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211118, -0.232841, -0.949323,
		0.742389, 0.593576, -0.310685,
		0.635836, -0.770359, 0.047544,
		33.929363, 35.693558, 31.816952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957008, 36.311497, 31.216467>,  <33.484280, 36.232807, 31.783670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957008, 36.311497, 31.216467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989647, 35.928566, 31.327368>,  <34.009232, 35.698807, 31.393908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989647, 35.928566, 31.327368>,  <33.957008, 36.311497, 31.216467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989647, 35.928566, 31.327368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202186, -0.288294, -0.935953,
		0.975942, 0.020318, -0.217082,
		0.081600, -0.957326, 0.277250,
		34.014126, 35.641369, 31.410543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377888, 35.997303, 30.704346>,  <33.957008, 36.311497, 31.216467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377888, 35.997303, 30.704346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164089, 35.701225, 30.867525>,  <34.035812, 35.523579, 30.965433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164089, 35.701225, 30.867525>,  <34.377888, 35.997303, 30.704346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164089, 35.701225, 30.867525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176716, -0.374138, -0.910380,
		0.826492, -0.558683, 0.069169,
		-0.534492, -0.740199, 0.407951,
		34.003742, 35.479164, 30.989910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632370, 35.319969, 30.420498>,  <34.377888, 35.997303, 30.704346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632370, 35.319969, 30.420498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286854, 35.207748, 30.587906>,  <34.079544, 35.140415, 30.688351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286854, 35.207748, 30.587906>,  <34.632370, 35.319969, 30.420498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286854, 35.207748, 30.587906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278073, -0.427240, -0.860315,
		0.420169, -0.859510, 0.291033,
		-0.863790, -0.280550, 0.418519,
		34.027718, 35.123585, 30.713461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638386, 34.713581, 30.183582>,  <34.632370, 35.319969, 30.420498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638386, 34.713581, 30.183582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254993, 34.772488, 30.281256>,  <34.024960, 34.807831, 30.339859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254993, 34.772488, 30.281256>,  <34.638386, 34.713581, 30.183582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254993, 34.772488, 30.281256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285063, -0.473093, -0.833620,
		-0.007246, -0.868616, 0.495432,
		-0.958481, 0.147270, 0.244183,
		33.967449, 34.816669, 30.354511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351082, 34.055252, 30.096058>,  <34.638386, 34.713581, 30.183582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351082, 34.055252, 30.096058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048786, 34.317024, 30.086468>,  <33.867409, 34.474087, 30.080713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048786, 34.317024, 30.086468>,  <34.351082, 34.055252, 30.096058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048786, 34.317024, 30.086468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326203, -0.407940, -0.852747,
		-0.567845, -0.636635, 0.521774,
		-0.755740, 0.654432, -0.023974,
		33.822063, 34.513355, 30.079275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654812, 33.716583, 30.096397>,  <34.351082, 34.055252, 30.096058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654812, 33.716583, 30.096397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604076, 34.080467, 29.938236>,  <33.573635, 34.298798, 29.843340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604076, 34.080467, 29.938236>,  <33.654812, 33.716583, 30.096397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604076, 34.080467, 29.938236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401553, -0.411591, -0.818137,
		-0.907010, 0.055004, 0.417502,
		-0.126839, 0.909707, -0.395404,
		33.566025, 34.353378, 29.819614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996071, 33.626781, 29.728945>,  <33.654812, 33.716583, 30.096397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996071, 33.626781, 29.728945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198940, 33.933144, 29.570873>,  <33.320660, 34.116962, 29.476030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198940, 33.933144, 29.570873>,  <32.996071, 33.626781, 29.728945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198940, 33.933144, 29.570873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247297, -0.309918, -0.918039,
		-0.825603, 0.563330, 0.032225,
		0.507172, 0.765905, -0.395179,
		33.351093, 34.162914, 29.452320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496803, 33.850697, 29.218224>,  <32.996071, 33.626781, 29.728945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496803, 33.850697, 29.218224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849716, 34.006226, 29.112093>,  <33.061462, 34.099545, 29.048414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849716, 34.006226, 29.112093>,  <32.496803, 33.850697, 29.218224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849716, 34.006226, 29.112093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211074, -0.177030, -0.961305,
		-0.420751, 0.904143, -0.074118,
		0.882279, 0.388826, -0.265326,
		33.114399, 34.122875, 29.032495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290806, 34.134151, 28.682751>,  <32.496803, 33.850697, 29.218224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290806, 34.134151, 28.682751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687073, 34.144432, 28.629200>,  <32.924831, 34.150600, 28.597069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687073, 34.144432, 28.629200>,  <32.290806, 34.134151, 28.682751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687073, 34.144432, 28.629200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134443, 0.021628, -0.990685,
		-0.022569, 0.999435, 0.024882,
		0.990664, 0.025704, -0.133879,
		32.984272, 34.152142, 28.589037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506824, 34.738785, 28.218842>,  <32.290806, 34.134151, 28.682751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506824, 34.738785, 28.218842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811813, 34.481079, 28.194950>,  <32.994804, 34.326458, 28.180614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811813, 34.481079, 28.194950>,  <32.506824, 34.738785, 28.218842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811813, 34.481079, 28.194950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031589, 0.129271, -0.991106,
		0.646252, 0.753802, 0.118917,
		0.762470, -0.644261, -0.059729,
		33.040554, 34.287800, 28.177031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832329, 34.984383, 27.645197>,  <32.506824, 34.738785, 28.218842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832329, 34.984383, 27.645197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966377, 34.610016, 27.688574>,  <33.046806, 34.385395, 27.714600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966377, 34.610016, 27.688574>,  <32.832329, 34.984383, 27.645197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966377, 34.610016, 27.688574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139468, -0.064552, -0.988120,
		0.931796, 0.346261, 0.108898,
		0.335118, -0.935915, 0.108442,
		33.066914, 34.329243, 27.721106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529133, 34.962448, 27.272820>,  <32.832329, 34.984383, 27.645197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529133, 34.962448, 27.272820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365589, 34.598270, 27.297850>,  <33.267464, 34.379765, 27.312868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365589, 34.598270, 27.297850>,  <33.529133, 34.962448, 27.272820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365589, 34.598270, 27.297850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296459, -0.197358, -0.934431,
		0.863101, -0.363502, 0.350603,
		-0.408861, -0.910449, 0.062576,
		33.242931, 34.325134, 27.316622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047421, 34.575645, 26.976990>,  <33.529133, 34.962448, 27.272820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047421, 34.575645, 26.976990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712360, 34.357246, 26.970833>,  <33.511326, 34.226208, 26.967138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712360, 34.357246, 26.970833>,  <34.047421, 34.575645, 26.976990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712360, 34.357246, 26.970833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076150, -0.088827, -0.993132,
		0.540878, -0.833066, 0.115983,
		-0.837647, -0.545995, -0.015393,
		33.461067, 34.193447, 26.966215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201347, 33.895931, 26.587107>,  <34.047421, 34.575645, 26.976990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201347, 33.895931, 26.587107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805218, 33.951046, 26.593639>,  <33.567539, 33.984116, 26.597559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805218, 33.951046, 26.593639>,  <34.201347, 33.895931, 26.587107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805218, 33.951046, 26.593639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016076, 0.002956, -0.999866,
		-0.137817, -0.990457, -0.000713,
		-0.990327, 0.137787, 0.016330,
		33.508118, 33.992382, 26.598537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884354, 33.421047, 26.141670>,  <34.201347, 33.895931, 26.587107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884354, 33.421047, 26.141670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595524, 33.693882, 26.187912>,  <33.422226, 33.857582, 26.215658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595524, 33.693882, 26.187912>,  <33.884354, 33.421047, 26.141670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595524, 33.693882, 26.187912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130932, 0.029347, -0.990957,
		-0.679311, -0.730682, 0.068116,
		-0.722076, 0.682087, 0.115605,
		33.378902, 33.898506, 26.222593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346985, 33.285290, 25.696627>,  <33.884354, 33.421047, 26.141670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346985, 33.285290, 25.696627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273224, 33.676136, 25.739038>,  <33.228966, 33.910645, 25.764486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273224, 33.676136, 25.739038>,  <33.346985, 33.285290, 25.696627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273224, 33.676136, 25.739038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199845, 0.068350, -0.977441,
		-0.962318, -0.201435, 0.182667,
		-0.184405, 0.977114, 0.106031,
		33.217903, 33.969269, 25.770847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647743, 33.308605, 25.268034>,  <33.346985, 33.285290, 25.696627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647743, 33.308605, 25.268034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803162, 33.663982, 25.365774>,  <32.896412, 33.877209, 25.424417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803162, 33.663982, 25.365774>,  <32.647743, 33.308605, 25.268034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803162, 33.663982, 25.365774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358622, 0.390083, -0.848072,
		-0.848779, 0.241883, 0.470178,
		0.388542, 0.888441, 0.244350,
		32.919724, 33.930515, 25.439079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104980, 33.791367, 25.221996>,  <32.647743, 33.308605, 25.268034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104980, 33.791367, 25.221996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458977, 33.969124, 25.166409>,  <32.671375, 34.075779, 25.133057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458977, 33.969124, 25.166409>,  <32.104980, 33.791367, 25.221996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458977, 33.969124, 25.166409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294382, 0.302786, -0.906455,
		-0.360746, 0.843110, 0.398783,
		0.884987, 0.444394, -0.138967,
		32.724472, 34.102444, 25.124718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863817, 34.328640, 24.745966>,  <32.104980, 33.791367, 25.221996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863817, 34.328640, 24.745966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262020, 34.365158, 24.735914>,  <32.500942, 34.387070, 24.729883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262020, 34.365158, 24.735914>,  <31.863817, 34.328640, 24.745966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262020, 34.365158, 24.735914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072198, 0.560136, -0.825248,
		-0.061263, 0.823355, 0.564211,
		0.995507, 0.091293, -0.025129,
		32.560673, 34.392548, 24.728376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002266, 35.009399, 24.491652>,  <31.863817, 34.328640, 24.745966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002266, 35.009399, 24.491652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348618, 34.821041, 24.424112>,  <32.556431, 34.708027, 24.383589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348618, 34.821041, 24.424112>,  <32.002266, 35.009399, 24.491652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348618, 34.821041, 24.424112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140967, 0.553525, -0.820816,
		0.479978, 0.686927, 0.545667,
		0.865881, -0.470894, -0.168846,
		32.608383, 34.679771, 24.373459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536125, 35.524773, 24.392248>,  <32.002266, 35.009399, 24.491652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536125, 35.524773, 24.392248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590164, 35.186413, 24.185871>,  <32.622585, 34.983395, 24.062044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590164, 35.186413, 24.185871>,  <32.536125, 35.524773, 24.392248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590164, 35.186413, 24.185871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064523, 0.527122, -0.847336,
		0.988730, 0.081181, 0.125791,
		0.135095, -0.845903, -0.515944,
		32.630692, 34.932640, 24.031088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801273, 35.755360, 23.729973>,  <32.536125, 35.524773, 24.392248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801273, 35.755360, 23.729973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742058, 35.367310, 23.653093>,  <32.706528, 35.134480, 23.606966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742058, 35.367310, 23.653093>,  <32.801273, 35.755360, 23.729973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742058, 35.367310, 23.653093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108684, 0.209122, -0.971831,
		0.982991, -0.122982, -0.136396,
		-0.148041, -0.970125, -0.192199,
		32.697647, 35.076271, 23.595434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142288, 35.616188, 23.222815>,  <32.801273, 35.755360, 23.729973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142288, 35.616188, 23.222815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901714, 35.296860, 23.210367>,  <32.757370, 35.105263, 23.202898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901714, 35.296860, 23.210367>,  <33.142288, 35.616188, 23.222815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901714, 35.296860, 23.210367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155449, 0.155139, -0.975586,
		0.783654, -0.581912, -0.217403,
		-0.601433, -0.798317, -0.031118,
		32.721283, 35.057365, 23.201033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286957, 35.155338, 22.652864>,  <33.142288, 35.616188, 23.222815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286957, 35.155338, 22.652864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898464, 35.083767, 22.715714>,  <32.665367, 35.040825, 22.753422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898464, 35.083767, 22.715714>,  <33.286957, 35.155338, 22.652864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898464, 35.083767, 22.715714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156912, -0.015408, -0.987492,
		0.179116, -0.983740, -0.013112,
		-0.971234, -0.178933, 0.157121,
		32.607094, 35.030087, 22.762850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198181, 34.516960, 22.251915>,  <33.286957, 35.155338, 22.652864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198181, 34.516960, 22.251915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835194, 34.649937, 22.354662>,  <32.617401, 34.729725, 22.416311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835194, 34.649937, 22.354662>,  <33.198181, 34.516960, 22.251915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835194, 34.649937, 22.354662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307813, -0.110008, -0.945066,
		-0.285927, -0.936684, 0.202160,
		-0.907468, 0.332447, 0.256869,
		32.562954, 34.749672, 22.431723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715645, 34.043018, 22.149044>,  <33.198181, 34.516960, 22.251915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715645, 34.043018, 22.149044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484482, 34.368717, 22.171085>,  <32.345783, 34.564137, 22.184309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484482, 34.368717, 22.171085>,  <32.715645, 34.043018, 22.149044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484482, 34.368717, 22.171085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310426, -0.156876, -0.937563,
		-0.754760, -0.558926, 0.343422,
		-0.577904, 0.814243, 0.055101,
		32.311111, 34.612991, 22.187616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104542, 33.898998, 21.691517>,  <32.715645, 34.043018, 22.149044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104542, 33.898998, 21.691517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117229, 34.298126, 21.714682>,  <32.124844, 34.537601, 21.728580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117229, 34.298126, 21.714682>,  <32.104542, 33.898998, 21.691517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117229, 34.298126, 21.714682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106257, 0.060978, -0.992467,
		-0.993833, 0.025329, 0.107959,
		0.031722, 0.997818, 0.057911,
		32.126747, 34.597473, 21.732056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523386, 34.091499, 21.278877>,  <32.104542, 33.898998, 21.691517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523386, 34.091499, 21.278877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758070, 34.410973, 21.332355>,  <31.898880, 34.602657, 21.364443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758070, 34.410973, 21.332355>,  <31.523386, 34.091499, 21.278877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758070, 34.410973, 21.332355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207594, 0.307922, -0.928487,
		-0.782735, 0.517000, 0.346463,
		0.586712, 0.798683, 0.133696,
		31.934084, 34.650578, 21.372465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205078, 34.715179, 21.029751>,  <31.523386, 34.091499, 21.278877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205078, 34.715179, 21.029751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591696, 34.815437, 21.007971>,  <31.823668, 34.875591, 20.994902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591696, 34.815437, 21.007971>,  <31.205078, 34.715179, 21.029751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591696, 34.815437, 21.007971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089512, 0.130677, -0.987376,
		-0.240368, 0.959218, 0.148741,
		0.966546, 0.250647, -0.054451,
		31.881660, 34.890633, 20.991636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270494, 35.175369, 20.494249>,  <31.205078, 34.715179, 21.029751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270494, 35.175369, 20.494249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652342, 35.067909, 20.545677>,  <31.881451, 35.003433, 20.576534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652342, 35.067909, 20.545677>,  <31.270494, 35.175369, 20.494249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652342, 35.067909, 20.545677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114202, -0.068507, -0.991093,
		0.275065, 0.960799, -0.034717,
		0.954619, -0.268650, 0.128569,
		31.938728, 34.987316, 20.584248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697382, 35.690525, 20.175896>,  <31.270494, 35.175369, 20.494249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697382, 35.690525, 20.175896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921133, 35.359924, 20.201147>,  <32.055386, 35.161564, 20.216297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921133, 35.359924, 20.201147>,  <31.697382, 35.690525, 20.175896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921133, 35.359924, 20.201147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250029, 0.095627, -0.963505,
		0.790304, 0.554749, 0.260142,
		0.559380, -0.826504, 0.063128,
		32.088947, 35.111973, 20.220085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307732, 35.932404, 19.904026>,  <31.697382, 35.690525, 20.175896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307732, 35.932404, 19.904026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283485, 35.534725, 19.868483>,  <32.268936, 35.296116, 19.847157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283485, 35.534725, 19.868483>,  <32.307732, 35.932404, 19.904026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283485, 35.534725, 19.868483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239942, 0.071898, -0.968121,
		0.968893, -0.080003, 0.234192,
		-0.060614, -0.994198, -0.088858,
		32.265301, 35.236465, 19.841825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787937, 35.904385, 19.442928>,  <32.307732, 35.932404, 19.904026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787937, 35.904385, 19.442928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572353, 35.567562, 19.434330>,  <32.443005, 35.365467, 19.429171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572353, 35.567562, 19.434330>,  <32.787937, 35.904385, 19.442928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572353, 35.567562, 19.434330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053017, -0.008440, -0.998558,
		0.840663, -0.539321, 0.049193,
		-0.538958, -0.842058, -0.021498,
		32.410667, 35.314945, 19.427881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205025, 35.498646, 19.155504>,  <32.787937, 35.904385, 19.442928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205025, 35.498646, 19.155504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827648, 35.396008, 19.071526>,  <32.601223, 35.334423, 19.021139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827648, 35.396008, 19.071526>,  <33.205025, 35.498646, 19.155504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827648, 35.396008, 19.071526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208872, 0.031758, -0.977427,
		0.257471, -0.965997, 0.023634,
		-0.943441, -0.256595, -0.209947,
		32.544617, 35.319031, 19.008541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301796, 35.240108, 18.553183>,  <33.205025, 35.498646, 19.155504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301796, 35.240108, 18.553183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902412, 35.258957, 18.564938>,  <32.662785, 35.270267, 18.571991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902412, 35.258957, 18.564938>,  <33.301796, 35.240108, 18.553183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902412, 35.258957, 18.564938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025723, 0.076601, -0.996730,
		-0.049222, -0.995948, -0.075271,
		-0.998456, 0.047124, 0.029389,
		32.602875, 35.273094, 18.573753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049023, 34.848465, 18.031073>,  <33.301796, 35.240108, 18.553183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049023, 34.848465, 18.031073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783772, 35.138756, 18.104370>,  <32.624619, 35.312931, 18.148348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783772, 35.138756, 18.104370>,  <33.049023, 34.848465, 18.031073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783772, 35.138756, 18.104370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208859, 0.055681, -0.976359,
		-0.718773, -0.685726, 0.114651,
		-0.663131, 0.725726, 0.183242,
		32.584831, 35.356472, 18.159342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481960, 34.604305, 17.530764>,  <33.049023, 34.848465, 18.031073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481960, 34.604305, 17.530764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419952, 34.983387, 17.642347>,  <32.382748, 35.210838, 17.709297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419952, 34.983387, 17.642347>,  <32.481960, 34.604305, 17.530764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419952, 34.983387, 17.642347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159554, 0.254647, -0.953780,
		-0.974942, -0.192363, 0.111736,
		-0.155019, 0.947708, 0.278959,
		32.373447, 35.267700, 17.726034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858093, 34.823036, 17.283951>,  <32.481960, 34.604305, 17.530764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858093, 34.823036, 17.283951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082626, 35.152172, 17.319382>,  <32.217346, 35.349651, 17.340639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082626, 35.152172, 17.319382>,  <31.858093, 34.823036, 17.283951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082626, 35.152172, 17.319382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243662, 0.266605, -0.932497,
		-0.790908, 0.501858, 0.350148,
		0.561332, 0.822837, 0.088576,
		32.251026, 35.399025, 17.345955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453459, 35.339504, 16.968620>,  <31.858093, 34.823036, 17.283951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453459, 35.339504, 16.968620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832785, 35.466011, 16.979025>,  <32.060379, 35.541916, 16.985268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832785, 35.466011, 16.979025>,  <31.453459, 35.339504, 16.968620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832785, 35.466011, 16.979025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098098, 0.370121, -0.923790,
		-0.301793, 0.873490, 0.382016,
		0.948313, 0.316269, 0.026012,
		32.117279, 35.560890, 16.986828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400068, 36.077969, 16.820906>,  <31.453459, 35.339504, 16.968620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400068, 36.077969, 16.820906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738783, 35.902679, 16.700298>,  <31.942013, 35.797508, 16.627934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738783, 35.902679, 16.700298>,  <31.400068, 36.077969, 16.820906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738783, 35.902679, 16.700298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153320, 0.341708, -0.927215,
		0.509355, 0.831384, 0.222167,
		0.846788, -0.438219, -0.301518,
		31.992819, 35.771214, 16.609842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645287, 36.672298, 16.498350>,  <31.400068, 36.077969, 16.820906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645287, 36.672298, 16.498350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815702, 36.350204, 16.333382>,  <31.917952, 36.156948, 16.234400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815702, 36.350204, 16.333382>,  <31.645287, 36.672298, 16.498350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815702, 36.350204, 16.333382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334060, 0.283630, -0.898865,
		0.840769, 0.520727, -0.148158,
		0.426042, -0.805231, -0.412421,
		31.943516, 36.108635, 16.209656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075172, 36.837254, 16.040472>,  <31.645287, 36.672298, 16.498350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075172, 36.837254, 16.040472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944548, 36.478294, 15.921787>,  <31.866173, 36.262920, 15.850576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944548, 36.478294, 15.921787>,  <32.075172, 36.837254, 16.040472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944548, 36.478294, 15.921787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348856, 0.406193, -0.844575,
		0.878440, -0.172297, -0.445709,
		-0.326562, -0.897396, -0.296710,
		31.846579, 36.209076, 15.832774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300083, 36.662586, 15.335170>,  <32.075172, 36.837254, 16.040472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300083, 36.662586, 15.335170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935102, 36.544685, 15.448702>,  <31.716114, 36.473946, 15.516821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935102, 36.544685, 15.448702>,  <32.300083, 36.662586, 15.335170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935102, 36.544685, 15.448702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405782, 0.562409, -0.720443,
		0.052723, -0.772539, -0.632774,
		-0.912448, -0.294753, 0.283830,
		31.661367, 36.456261, 15.533851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564911, 37.442844, 15.115697>,  <32.300083, 36.662586, 15.335170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564911, 37.442844, 15.115697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597370, 37.067974, 14.979981>,  <32.616848, 36.843052, 14.898552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597370, 37.067974, 14.979981>,  <32.564911, 37.442844, 15.115697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597370, 37.067974, 14.979981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790048, 0.147050, -0.595147,
		0.607650, 0.316351, -0.728480,
		0.081152, -0.937175, -0.339288,
		32.621716, 36.786823, 14.878195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830048, 37.366512, 14.412891>,  <32.564911, 37.442844, 15.115697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830048, 37.366512, 14.412891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574917, 37.081944, 14.530917>,  <32.421841, 36.911201, 14.601732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574917, 37.081944, 14.530917>,  <32.830048, 37.366512, 14.412891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574917, 37.081944, 14.530917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685871, 0.350376, -0.637822,
		0.350376, -0.609194, -0.711421,
		0.637822, 0.711421, -0.295065,
		32.383572, 36.868519, 14.619436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257450, 37.107162, 14.963861>,  <32.830048, 37.366512, 14.412891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257450, 37.107162, 14.963861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311821, 36.858742, 15.272617>,  <33.344444, 36.709690, 15.457871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311821, 36.858742, 15.272617>,  <33.257450, 37.107162, 14.963861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311821, 36.858742, 15.272617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834759, 0.491408, 0.248387,
		-0.533575, 0.610581, 0.585225,
		0.135924, -0.621054, 0.771891,
		33.352596, 36.672424, 15.504185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348167, 37.510628, 15.605538>,  <33.257450, 37.107162, 14.963861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348167, 37.510628, 15.605538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539455, 37.160156, 15.629587>,  <33.654228, 36.949871, 15.644016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539455, 37.160156, 15.629587>,  <33.348167, 37.510628, 15.605538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539455, 37.160156, 15.629587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841579, 0.476754, 0.253872,
		-0.251102, -0.070808, 0.965367,
		0.478219, -0.876180, 0.060123,
		33.682922, 36.897301, 15.647624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593761, 37.672657, 16.226522>,  <33.348167, 37.510628, 15.605538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593761, 37.672657, 16.226522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314869, 37.448235, 16.404999>,  <33.147533, 37.313583, 16.512085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314869, 37.448235, 16.404999>,  <33.593761, 37.672657, 16.226522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314869, 37.448235, 16.404999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415896, 0.190364, 0.889265,
		-0.583863, 0.805594, 0.100611,
		-0.697234, -0.561052, 0.446190,
		33.105698, 37.279919, 16.538857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362930, 38.078251, 16.824682>,  <33.593761, 37.672657, 16.226522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362930, 38.078251, 16.824682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266960, 37.694752, 16.885653>,  <33.209377, 37.464653, 16.922235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266960, 37.694752, 16.885653>,  <33.362930, 38.078251, 16.824682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266960, 37.694752, 16.885653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361179, 0.057583, 0.930717,
		-0.901101, 0.278359, 0.332465,
		-0.239929, -0.958749, 0.152425,
		33.194981, 37.407127, 16.931379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985172, 38.038918, 17.449787>,  <33.362930, 38.078251, 16.824682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985172, 38.038918, 17.449787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117970, 37.664715, 17.401443>,  <33.197647, 37.440193, 17.372438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117970, 37.664715, 17.401443>,  <32.985172, 38.038918, 17.449787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117970, 37.664715, 17.401443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031247, -0.117147, 0.992623,
		-0.942763, -0.333325, -0.009661,
		0.331998, -0.935506, -0.120857,
		33.217567, 37.384064, 17.365187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625877, 37.675652, 17.942930>,  <32.985172, 38.038918, 17.449787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625877, 37.675652, 17.942930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929150, 37.431587, 17.850952>,  <33.111111, 37.285149, 17.795765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929150, 37.431587, 17.850952>,  <32.625877, 37.675652, 17.942930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929150, 37.431587, 17.850952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112378, -0.225096, 0.967834,
		-0.642291, -0.759631, -0.102095,
		0.758178, -0.610158, -0.229943,
		33.156605, 37.248539, 17.781969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514915, 37.086430, 18.324036>,  <32.625877, 37.675652, 17.942930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514915, 37.086430, 18.324036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901505, 37.065872, 18.223402>,  <33.133457, 37.053535, 18.163021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901505, 37.065872, 18.223402>,  <32.514915, 37.086430, 18.324036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901505, 37.065872, 18.223402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235992, -0.208397, 0.949146,
		-0.101212, -0.976693, -0.189280,
		0.966470, -0.051397, -0.251584,
		33.191444, 37.050453, 18.147926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720528, 36.556519, 18.712204>,  <32.514915, 37.086430, 18.324036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720528, 36.556519, 18.712204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030914, 36.793346, 18.625179>,  <33.217144, 36.935444, 18.572964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030914, 36.793346, 18.625179>,  <32.720528, 36.556519, 18.712204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030914, 36.793346, 18.625179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361471, -0.134724, 0.922599,
		0.516934, -0.794544, -0.318557,
		0.775962, 0.592072, -0.217561,
		33.263702, 36.970966, 18.559912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309887, 36.192188, 18.908615>,  <32.720528, 36.556519, 18.712204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309887, 36.192188, 18.908615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434978, 36.571377, 18.884783>,  <33.510033, 36.798889, 18.870483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434978, 36.571377, 18.884783>,  <33.309887, 36.192188, 18.908615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434978, 36.571377, 18.884783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422140, -0.082518, 0.902767,
		0.850883, -0.307469, -0.425983,
		0.312724, 0.947973, -0.059582,
		33.528797, 36.855770, 18.866909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021183, 36.126717, 19.074867>,  <33.309887, 36.192188, 18.908615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021183, 36.126717, 19.074867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924561, 36.508312, 19.145918>,  <33.866585, 36.737270, 19.188549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924561, 36.508312, 19.145918>,  <34.021183, 36.126717, 19.074867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924561, 36.508312, 19.145918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548161, -0.016898, 0.836202,
		0.800730, 0.299362, -0.518858,
		-0.241560, 0.953990, 0.177629,
		33.852093, 36.794510, 19.199207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594646, 36.349983, 19.269976>,  <34.021183, 36.126717, 19.074867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594646, 36.349983, 19.269976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333370, 36.629784, 19.385933>,  <34.176605, 36.797665, 19.455507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333370, 36.629784, 19.385933>,  <34.594646, 36.349983, 19.269976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333370, 36.629784, 19.385933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520601, 0.136875, 0.842757,
		0.549831, 0.701401, -0.453567,
		-0.653192, 0.699502, 0.289892,
		34.137413, 36.839634, 19.472900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976982, 36.918407, 19.477131>,  <34.594646, 36.349983, 19.269976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976982, 36.918407, 19.477131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629997, 36.996624, 19.660116>,  <34.421806, 37.043556, 19.769907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629997, 36.996624, 19.660116>,  <34.976982, 36.918407, 19.477131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629997, 36.996624, 19.660116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479965, 0.086928, 0.872970,
		0.130939, 0.976834, -0.169262,
		-0.867461, 0.195546, 0.457464,
		34.369759, 37.055286, 19.797356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117092, 37.396946, 19.979706>,  <34.976982, 36.918407, 19.477131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117092, 37.396946, 19.979706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756859, 37.268925, 20.097355>,  <34.540718, 37.192112, 20.167944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756859, 37.268925, 20.097355>,  <35.117092, 37.396946, 19.979706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756859, 37.268925, 20.097355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293027, 0.052763, 0.954647,
		-0.321059, 0.945928, 0.046267,
		-0.900587, -0.320055, 0.294123,
		34.486683, 37.172909, 20.185591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775551, 37.879780, 20.490692>,  <35.117092, 37.396946, 19.979706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775551, 37.879780, 20.490692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599464, 37.525684, 20.550770>,  <34.493813, 37.313229, 20.586817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599464, 37.525684, 20.550770>,  <34.775551, 37.879780, 20.490692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599464, 37.525684, 20.550770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025878, 0.154695, 0.987623,
		-0.897517, 0.438658, -0.045191,
		-0.440219, -0.885240, 0.150193,
		34.467400, 37.260113, 20.595827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223175, 38.011475, 20.920406>,  <34.775551, 37.879780, 20.490692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223175, 38.011475, 20.920406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319473, 37.625992, 20.966564>,  <34.377251, 37.394703, 20.994259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319473, 37.625992, 20.966564>,  <34.223175, 38.011475, 20.920406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319473, 37.625992, 20.966564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042689, 0.129290, 0.990688,
		-0.969649, -0.233576, 0.072266,
		0.240744, -0.963704, 0.115395,
		34.391697, 37.336880, 21.001183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866581, 37.920273, 21.473839>,  <34.223175, 38.011475, 20.920406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866581, 37.920273, 21.473839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122013, 37.614002, 21.442982>,  <34.275272, 37.430241, 21.424467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122013, 37.614002, 21.442982>,  <33.866581, 37.920273, 21.473839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122013, 37.614002, 21.442982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179747, 0.050935, 0.982393,
		-0.748269, -0.641202, 0.170155,
		0.638580, -0.765680, -0.077141,
		34.313587, 37.384300, 21.419840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740654, 37.595688, 22.075668>,  <33.866581, 37.920273, 21.473839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740654, 37.595688, 22.075668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090385, 37.427448, 21.978807>,  <34.300224, 37.326504, 21.920691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090385, 37.427448, 21.978807>,  <33.740654, 37.595688, 22.075668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090385, 37.427448, 21.978807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314272, 0.110453, 0.942886,
		-0.369831, -0.900498, 0.228755,
		0.874333, -0.420599, -0.242152,
		34.352684, 37.301270, 21.906162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868431, 37.176186, 22.594757>,  <33.740654, 37.595688, 22.075668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868431, 37.176186, 22.594757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234299, 37.242622, 22.447361>,  <34.453819, 37.282486, 22.358923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234299, 37.242622, 22.447361>,  <33.868431, 37.176186, 22.594757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234299, 37.242622, 22.447361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303211, 0.320885, 0.897271,
		0.267272, -0.932441, 0.243144,
		0.914674, 0.166092, -0.368490,
		34.508701, 37.292450, 22.336813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130539, 37.057354, 23.137676>,  <33.868431, 37.176186, 22.594757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130539, 37.057354, 23.137676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415531, 37.235695, 22.920940>,  <34.586525, 37.342701, 22.790899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415531, 37.235695, 22.920940>,  <34.130539, 37.057354, 23.137676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415531, 37.235695, 22.920940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458238, 0.289160, 0.840479,
		0.531407, -0.847115, 0.001714,
		0.712478, 0.445851, -0.541842,
		34.629276, 37.369450, 22.758389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678997, 36.772381, 23.300917>,  <34.130539, 37.057354, 23.137676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678997, 36.772381, 23.300917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827263, 37.115784, 23.159174>,  <34.916222, 37.321827, 23.074129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827263, 37.115784, 23.159174>,  <34.678997, 36.772381, 23.300917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827263, 37.115784, 23.159174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515618, 0.127122, 0.847336,
		0.772492, -0.496791, -0.395543,
		0.370667, 0.858510, -0.354355,
		34.938461, 37.373337, 23.052868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353382, 36.837986, 23.558346>,  <34.678997, 36.772381, 23.300917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353382, 36.837986, 23.558346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268570, 37.217495, 23.464640>,  <35.217682, 37.445198, 23.408417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268570, 37.217495, 23.464640>,  <35.353382, 36.837986, 23.558346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268570, 37.217495, 23.464640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385933, 0.301520, 0.871861,
		0.897831, 0.094447, -0.430091,
		-0.212026, 0.948770, -0.234264,
		35.204964, 37.502125, 23.394360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008896, 37.258678, 23.741493>,  <35.353382, 36.837986, 23.558346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008896, 37.258678, 23.741493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684834, 37.493034, 23.733677>,  <35.490398, 37.633648, 23.728987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684834, 37.493034, 23.733677>,  <36.008896, 37.258678, 23.741493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684834, 37.493034, 23.733677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335614, 0.490887, 0.803985,
		0.480642, 0.644792, -0.594328,
		-0.810152, 0.585894, -0.019540,
		35.441788, 37.668804, 23.727816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255032, 37.860203, 23.961226>,  <36.008896, 37.258678, 23.741493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255032, 37.860203, 23.961226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860168, 37.884354, 24.020382>,  <35.623249, 37.898846, 24.055876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860168, 37.884354, 24.020382>,  <36.255032, 37.860203, 23.961226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860168, 37.884354, 24.020382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159265, 0.443374, 0.882074,
		-0.012314, 0.894301, -0.447296,
		-0.987159, 0.060377, 0.147891,
		35.564022, 37.902466, 24.064749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183975, 38.513557, 24.334465>,  <36.255032, 37.860203, 23.961226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183975, 38.513557, 24.334465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861588, 38.282303, 24.385336>,  <35.668156, 38.143551, 24.415859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861588, 38.282303, 24.385336>,  <36.183975, 38.513557, 24.334465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861588, 38.282303, 24.385336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047163, 0.151444, 0.987340,
		-0.590080, 0.801761, -0.094792,
		-0.805966, -0.578139, 0.127177,
		35.619797, 38.108860, 24.423489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846172, 38.850388, 24.807753>,  <36.183975, 38.513557, 24.334465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846172, 38.850388, 24.807753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623165, 38.518559, 24.820278>,  <35.489361, 38.319462, 24.827793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623165, 38.518559, 24.820278>,  <35.846172, 38.850388, 24.807753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623165, 38.518559, 24.820278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127524, 0.122850, 0.984198,
		-0.820315, 0.544711, -0.174282,
		-0.557513, -0.829577, 0.031312,
		35.455910, 38.269684, 24.829672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228088, 38.947567, 25.260111>,  <35.846172, 38.850388, 24.807753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228088, 38.947567, 25.260111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293186, 38.552986, 25.268391>,  <35.332245, 38.316238, 25.273359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293186, 38.552986, 25.268391>,  <35.228088, 38.947567, 25.260111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293186, 38.552986, 25.268391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113123, 0.002186, 0.993579,
		-0.980161, -0.164045, -0.111234,
		0.162749, -0.986450, 0.020700,
		35.342010, 38.257050, 25.274601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658657, 38.764339, 25.683132>,  <35.228088, 38.947567, 25.260111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658657, 38.764339, 25.683132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906368, 38.450272, 25.681604>,  <35.054993, 38.261833, 25.680687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906368, 38.450272, 25.681604>,  <34.658657, 38.764339, 25.683132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906368, 38.450272, 25.681604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088136, -0.074348, 0.993330,
		-0.780213, -0.614807, -0.115243,
		0.619274, -0.785166, -0.003821,
		35.092152, 38.214722, 25.680458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364166, 38.294209, 26.054510>,  <34.658657, 38.764339, 25.683132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364166, 38.294209, 26.054510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731018, 38.135170, 26.043289>,  <34.951130, 38.039749, 26.036556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731018, 38.135170, 26.043289>,  <34.364166, 38.294209, 26.054510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731018, 38.135170, 26.043289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117581, -0.337135, 0.934085,
		-0.380845, -0.853381, -0.355947,
		0.917132, -0.397594, -0.028055,
		35.006157, 38.015892, 26.034874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295708, 37.638630, 26.224709>,  <34.364166, 38.294209, 26.054510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295708, 37.638630, 26.224709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669331, 37.751076, 26.312807>,  <34.893505, 37.818542, 26.365667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669331, 37.751076, 26.312807>,  <34.295708, 37.638630, 26.224709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669331, 37.751076, 26.312807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127530, -0.313501, 0.940985,
		0.333572, -0.907024, -0.256978,
		0.934059, 0.281114, 0.220248,
		34.949547, 37.835411, 26.378881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678230, 37.105701, 26.587788>,  <34.295708, 37.638630, 26.224709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678230, 37.105701, 26.587788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843296, 37.456299, 26.686956>,  <34.942333, 37.666656, 26.746458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843296, 37.456299, 26.686956>,  <34.678230, 37.105701, 26.587788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843296, 37.456299, 26.686956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071781, -0.240037, 0.968106,
		0.908053, -0.417294, -0.036138,
		0.412660, 0.876497, 0.247920,
		34.967094, 37.719250, 26.761332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146461, 36.996426, 27.051672>,  <34.678230, 37.105701, 26.587788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146461, 36.996426, 27.051672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104057, 37.388062, 27.121117>,  <35.078613, 37.623043, 27.162783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104057, 37.388062, 27.121117>,  <35.146461, 36.996426, 27.051672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104057, 37.388062, 27.121117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184127, -0.152246, 0.971040,
		0.977169, 0.134911, -0.164137,
		-0.106015, 0.979092, 0.173611,
		35.072254, 37.681789, 27.173201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650688, 37.303837, 27.563328>,  <35.146461, 36.996426, 27.051672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650688, 37.303837, 27.563328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413429, 37.624439, 27.593704>,  <35.271072, 37.816799, 27.611929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413429, 37.624439, 27.593704>,  <35.650688, 37.303837, 27.563328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413429, 37.624439, 27.593704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126610, -0.000286, 0.991952,
		0.795073, 0.597992, -0.101309,
		-0.593151, 0.801502, 0.075939,
		35.235485, 37.864891, 27.616486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888611, 37.885365, 28.031616>,  <35.650688, 37.303837, 27.563328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888611, 37.885365, 28.031616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496975, 37.963013, 28.007313>,  <35.261993, 38.009602, 27.992731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496975, 37.963013, 28.007313>,  <35.888611, 37.885365, 28.031616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496975, 37.963013, 28.007313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037690, 0.120391, 0.992011,
		0.199887, 0.973562, -0.110557,
		-0.979094, 0.194123, -0.060759,
		35.203247, 38.021248, 27.989086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708061, 38.431358, 28.575294>,  <35.888611, 37.885365, 28.031616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708061, 38.431358, 28.575294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366920, 38.242817, 28.485434>,  <35.162235, 38.129692, 28.431517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366920, 38.242817, 28.485434>,  <35.708061, 38.431358, 28.575294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366920, 38.242817, 28.485434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204316, -0.094687, 0.974315,
		-0.480517, 0.876848, -0.015551,
		-0.852853, -0.471352, -0.224652,
		35.111065, 38.101410, 28.418037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273388, 38.809109, 28.883499>,  <35.708061, 38.431358, 28.575294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273388, 38.809109, 28.883499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064335, 38.471485, 28.835464>,  <34.938904, 38.268909, 28.806643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064335, 38.471485, 28.835464>,  <35.273388, 38.809109, 28.883499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064335, 38.471485, 28.835464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278741, 0.036053, 0.959689,
		-0.805705, 0.535037, -0.254117,
		-0.522631, -0.844059, -0.120089,
		34.907547, 38.218266, 28.799438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772217, 38.966724, 29.331005>,  <35.273388, 38.809109, 28.883499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772217, 38.966724, 29.331005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735798, 38.574013, 29.264290>,  <34.713947, 38.338387, 29.224260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735798, 38.574013, 29.264290>,  <34.772217, 38.966724, 29.331005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735798, 38.574013, 29.264290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336136, -0.127356, 0.933163,
		-0.937402, 0.141028, -0.318416,
		-0.091050, -0.981780, -0.166788,
		34.708485, 38.279480, 29.214254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064487, 38.818233, 29.580275>,  <34.772217, 38.966724, 29.331005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064487, 38.818233, 29.580275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281246, 38.482746, 29.601818>,  <34.411301, 38.281456, 29.614744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281246, 38.482746, 29.601818>,  <34.064487, 38.818233, 29.580275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281246, 38.482746, 29.601818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254165, -0.102459, 0.961718,
		-0.801090, -0.534844, -0.268695,
		0.541900, -0.838716, 0.053860,
		34.443817, 38.231133, 29.617975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729881, 38.391285, 30.109577>,  <34.064487, 38.818233, 29.580275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729881, 38.391285, 30.109577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093567, 38.226894, 30.082977>,  <34.311779, 38.128262, 30.067019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093567, 38.226894, 30.082977>,  <33.729881, 38.391285, 30.109577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093567, 38.226894, 30.082977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081576, 0.019236, 0.996481,
		-0.408253, -0.911442, 0.051016,
		0.909217, -0.410978, -0.066498,
		34.366333, 38.103600, 30.063028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684608, 37.789349, 30.388250>,  <33.729881, 38.391285, 30.109577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684608, 37.789349, 30.388250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077934, 37.861885, 30.394014>,  <34.313931, 37.905407, 30.397472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077934, 37.861885, 30.394014>,  <33.684608, 37.789349, 30.388250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077934, 37.861885, 30.394014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034680, -0.264621, 0.963729,
		0.178581, -0.947148, -0.266495,
		0.983314, 0.181346, 0.014409,
		34.372929, 37.916290, 30.398336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045158, 37.209904, 30.723759>,  <33.684608, 37.789349, 30.388250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045158, 37.209904, 30.723759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335854, 37.479416, 30.777229>,  <34.510269, 37.641125, 30.809311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335854, 37.479416, 30.777229>,  <34.045158, 37.209904, 30.723759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335854, 37.479416, 30.777229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148984, -0.344578, 0.926860,
		0.670564, -0.653669, -0.350801,
		0.726738, 0.673783, 0.133676,
		34.553875, 37.681549, 30.817331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693829, 36.824581, 30.930887>,  <34.045158, 37.209904, 30.723759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693829, 36.824581, 30.930887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747654, 37.207211, 31.034321>,  <34.779949, 37.436787, 31.096382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747654, 37.207211, 31.034321>,  <34.693829, 36.824581, 30.930887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747654, 37.207211, 31.034321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330326, -0.289337, 0.898425,
		0.934225, -0.035480, -0.354915,
		0.134567, 0.956569, 0.258586,
		34.788025, 37.494183, 31.111897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344551, 36.837296, 31.354927>,  <34.693829, 36.824581, 30.930887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344551, 36.837296, 31.354927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136799, 37.169289, 31.436291>,  <35.012146, 37.368484, 31.485109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136799, 37.169289, 31.436291>,  <35.344551, 36.837296, 31.354927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136799, 37.169289, 31.436291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264390, -0.070281, 0.961852,
		0.812614, 0.553347, -0.182936,
		-0.519381, 0.829981, 0.203411,
		34.980984, 37.418282, 31.497314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076729, 36.707806, 31.156664>,  <35.344551, 36.837296, 31.354927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076729, 36.707806, 31.156664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227852, 36.337502, 31.162779>,  <36.318523, 36.115318, 31.166449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227852, 36.337502, 31.162779>,  <36.076729, 36.707806, 31.156664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227852, 36.337502, 31.162779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190858, 0.061711, -0.979676,
		0.906001, 0.373043, 0.200004,
		0.377803, -0.925760, 0.015288,
		36.341194, 36.059772, 31.167366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745319, 36.707714, 30.808237>,  <36.076729, 36.707806, 31.156664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745319, 36.707714, 30.808237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650581, 36.319519, 30.790077>,  <36.593739, 36.086601, 30.779181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650581, 36.319519, 30.790077>,  <36.745319, 36.707714, 30.808237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650581, 36.319519, 30.790077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277431, -0.022773, -0.960476,
		0.931095, -0.240076, 0.274636,
		-0.236842, -0.970487, -0.045401,
		36.579529, 36.028374, 30.776457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256680, 36.460972, 30.446693>,  <36.745319, 36.707714, 30.808237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256680, 36.460972, 30.446693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970303, 36.185776, 30.399187>,  <36.798477, 36.020660, 30.370684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970303, 36.185776, 30.399187>,  <37.256680, 36.460972, 30.446693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970303, 36.185776, 30.399187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135414, 0.030045, -0.990333,
		0.684905, -0.725100, 0.071653,
		-0.715938, -0.687988, -0.118767,
		36.755520, 35.979378, 30.363558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577206, 35.938793, 30.142151>,  <37.256680, 36.460972, 30.446693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577206, 35.938793, 30.142151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185570, 35.912365, 30.065187>,  <36.950588, 35.896507, 30.019011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185570, 35.912365, 30.065187>,  <37.577206, 35.938793, 30.142151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185570, 35.912365, 30.065187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193335, -0.007892, -0.981101,
		0.063307, -0.997783, 0.020501,
		-0.979088, -0.066074, -0.192407,
		36.891842, 35.892544, 30.007465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610035, 35.484913, 29.689093>,  <37.577206, 35.938793, 30.142151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610035, 35.484913, 29.689093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250149, 35.653973, 29.645489>,  <37.034218, 35.755409, 29.619326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250149, 35.653973, 29.645489>,  <37.610035, 35.484913, 29.689093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250149, 35.653973, 29.645489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147853, 0.060129, -0.987180,
		-0.410673, -0.904298, -0.116588,
		-0.899715, 0.422646, -0.109010,
		36.980232, 35.780766, 29.612785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412128, 35.095608, 29.254702>,  <37.610035, 35.484913, 29.689093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412128, 35.095608, 29.254702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183228, 35.420650, 29.210526>,  <37.045887, 35.615677, 29.184019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183228, 35.420650, 29.210526>,  <37.412128, 35.095608, 29.254702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183228, 35.420650, 29.210526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172926, -0.012075, -0.984861,
		-0.801636, -0.582690, -0.133611,
		-0.572255, 0.812605, -0.110442,
		37.011551, 35.664433, 29.177393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955894, 34.916542, 28.729790>,  <37.412128, 35.095608, 29.254702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955894, 34.916542, 28.729790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954315, 35.315708, 28.755566>,  <36.953369, 35.555206, 28.771030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954315, 35.315708, 28.755566>,  <36.955894, 34.916542, 28.729790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954315, 35.315708, 28.755566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003380, 0.064453, -0.997915,
		-0.999987, -0.003717, -0.003627,
		-0.003943, 0.997914, 0.064440,
		36.953133, 35.615082, 28.774897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456829, 35.113251, 28.307579>,  <36.955894, 34.916542, 28.729790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456829, 35.113251, 28.307579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703362, 35.424767, 28.354263>,  <36.851280, 35.611675, 28.382273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703362, 35.424767, 28.354263>,  <36.456829, 35.113251, 28.307579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703362, 35.424767, 28.354263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187305, -0.001025, -0.982301,
		-0.764889, 0.627281, -0.146503,
		0.616329, 0.778792, 0.116708,
		36.888260, 35.658405, 28.389277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262325, 35.521591, 27.850214>,  <36.456829, 35.113251, 28.307579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262325, 35.521591, 27.850214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624084, 35.681534, 27.909788>,  <36.841141, 35.777500, 27.945532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624084, 35.681534, 27.909788>,  <36.262325, 35.521591, 27.850214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624084, 35.681534, 27.909788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215522, -0.126830, -0.968228,
		-0.368264, 0.907760, -0.200882,
		0.904396, 0.399858, 0.148935,
		36.895405, 35.801491, 27.954468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343250, 36.018707, 27.390903>,  <36.262325, 35.521591, 27.850214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343250, 36.018707, 27.390903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726318, 35.970650, 27.495537>,  <36.956161, 35.941814, 27.558317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726318, 35.970650, 27.495537>,  <36.343250, 36.018707, 27.390903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726318, 35.970650, 27.495537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257382, -0.049518, -0.965040,
		0.128893, 0.991521, -0.016500,
		0.957675, -0.120140, 0.261583,
		37.013622, 35.934608, 27.574011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627155, 36.465240, 27.123253>,  <36.343250, 36.018707, 27.390903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627155, 36.465240, 27.123253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911541, 36.190079, 27.181656>,  <37.082172, 36.024982, 27.216698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911541, 36.190079, 27.181656>,  <36.627155, 36.465240, 27.123253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911541, 36.190079, 27.181656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272356, 0.077932, -0.959035,
		0.648345, 0.721606, 0.242762,
		0.710964, -0.687904, 0.146007,
		37.124832, 35.983707, 27.225458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157974, 36.721935, 26.828270>,  <36.627155, 36.465240, 27.123253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157974, 36.721935, 26.828270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255890, 36.334259, 26.839186>,  <37.314640, 36.101654, 26.845736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255890, 36.334259, 26.839186>,  <37.157974, 36.721935, 26.828270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255890, 36.334259, 26.839186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413695, 0.078951, -0.906985,
		0.876888, 0.233311, 0.420277,
		0.244791, -0.969192, 0.027289,
		37.329327, 36.043503, 26.847372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896458, 36.755222, 26.620972>,  <37.157974, 36.721935, 26.828270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896458, 36.755222, 26.620972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788166, 36.373745, 26.568563>,  <37.723190, 36.144859, 26.537119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788166, 36.373745, 26.568563>,  <37.896458, 36.755222, 26.620972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788166, 36.373745, 26.568563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301930, 0.045112, -0.952262,
		0.914080, -0.297366, 0.275737,
		-0.270731, -0.953697, -0.131020,
		37.706947, 36.087635, 26.529257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456387, 36.461468, 26.250257>,  <37.896458, 36.755222, 26.620972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456387, 36.461468, 26.250257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158318, 36.204308, 26.179373>,  <37.979477, 36.050011, 26.136843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158318, 36.204308, 26.179373>,  <38.456387, 36.461468, 26.250257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158318, 36.204308, 26.179373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235649, -0.005260, -0.971824,
		0.623850, -0.765935, 0.155417,
		-0.745171, -0.642897, -0.177210,
		37.934765, 36.011440, 26.126209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746819, 36.077721, 25.706356>,  <38.456387, 36.461468, 26.250257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746819, 36.077721, 25.706356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360542, 35.980652, 25.669357>,  <38.128777, 35.922413, 25.647158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360542, 35.980652, 25.669357>,  <38.746819, 36.077721, 25.706356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360542, 35.980652, 25.669357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129319, -0.140459, -0.981605,
		0.225214, -0.959887, 0.167022,
		-0.965689, -0.242670, -0.092498,
		38.070835, 35.907852, 25.641607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690685, 35.416157, 25.402870>,  <38.746819, 36.077721, 25.706356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690685, 35.416157, 25.402870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364281, 35.639538, 25.343197>,  <38.168438, 35.773567, 25.307392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364281, 35.639538, 25.343197>,  <38.690685, 35.416157, 25.402870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364281, 35.639538, 25.343197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171678, -0.012298, -0.985076,
		-0.551955, -0.829444, -0.085839,
		-0.816011, 0.558454, -0.149185,
		38.119476, 35.807076, 25.298441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327618, 35.121387, 24.928236>,  <38.690685, 35.416157, 25.402870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327618, 35.121387, 24.928236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157982, 35.479897, 24.876326>,  <38.056202, 35.695004, 24.845179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157982, 35.479897, 24.876326>,  <38.327618, 35.121387, 24.928236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157982, 35.479897, 24.876326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230912, -0.245580, -0.941473,
		-0.875689, -0.369297, 0.311107,
		-0.424085, 0.896276, -0.129776,
		38.030758, 35.748779, 24.837393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932827, 35.038837, 24.359623>,  <38.327618, 35.121387, 24.928236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932827, 35.038837, 24.359623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895985, 35.435280, 24.398027>,  <37.873878, 35.673145, 24.421070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895985, 35.435280, 24.398027>,  <37.932827, 35.038837, 24.359623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895985, 35.435280, 24.398027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470158, 0.041707, -0.881596,
		-0.877763, -0.126342, 0.462137,
		-0.092108, 0.991110, 0.096010,
		37.868351, 35.732613, 24.426830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275734, 35.139679, 24.156788>,  <37.932827, 35.038837, 24.359623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275734, 35.139679, 24.156788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467781, 35.488686, 24.120565>,  <37.583008, 35.698090, 24.098831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467781, 35.488686, 24.120565>,  <37.275734, 35.139679, 24.156788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467781, 35.488686, 24.120565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392139, 0.121138, -0.911895,
		-0.784675, 0.473327, 0.400309,
		0.480117, 0.872518, -0.090556,
		37.611816, 35.750443, 24.093399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796955, 35.730759, 24.003054>,  <37.275734, 35.139679, 24.156788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796955, 35.730759, 24.003054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150879, 35.856892, 23.865837>,  <37.363232, 35.932571, 23.783506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150879, 35.856892, 23.865837>,  <36.796955, 35.730759, 24.003054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150879, 35.856892, 23.865837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414948, 0.198331, -0.887966,
		-0.211967, 0.928026, 0.306331,
		0.884810, 0.315331, -0.343042,
		37.416321, 35.951492, 23.762924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726223, 36.348869, 23.683716>,  <36.796955, 35.730759, 24.003054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726223, 36.348869, 23.683716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061230, 36.212471, 23.512936>,  <37.262234, 36.130630, 23.410467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061230, 36.212471, 23.512936>,  <36.726223, 36.348869, 23.683716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061230, 36.212471, 23.512936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367668, 0.226331, -0.901994,
		0.404208, 0.912412, 0.064183,
		0.837518, -0.340995, -0.426950,
		37.312485, 36.110172, 23.384851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925114, 36.850006, 23.096750>,  <36.726223, 36.348869, 23.683716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925114, 36.850006, 23.096750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098499, 36.501183, 23.005867>,  <37.202530, 36.291889, 22.951338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098499, 36.501183, 23.005867>,  <36.925114, 36.850006, 23.096750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098499, 36.501183, 23.005867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333155, 0.079192, -0.939541,
		0.837326, 0.482954, -0.256203,
		0.433466, -0.872057, -0.227208,
		37.228539, 36.239567, 22.937704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207592, 36.997944, 22.364162>,  <36.925114, 36.850006, 23.096750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207592, 36.997944, 22.364162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227348, 36.601540, 22.413883>,  <37.239201, 36.363697, 22.443716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227348, 36.601540, 22.413883>,  <37.207592, 36.997944, 22.364162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227348, 36.601540, 22.413883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040572, -0.126342, -0.991157,
		0.997955, 0.043911, -0.046447,
		0.049391, -0.991015, 0.124302,
		37.242165, 36.304234, 22.451174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556164, 36.772625, 21.850471>,  <37.207592, 36.997944, 22.364162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556164, 36.772625, 21.850471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355080, 36.448120, 21.969894>,  <37.234428, 36.253418, 22.041548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355080, 36.448120, 21.969894>,  <37.556164, 36.772625, 21.850471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355080, 36.448120, 21.969894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161495, -0.251154, -0.954380,
		0.849236, -0.527992, -0.004757,
		-0.502710, -0.811262, 0.298557,
		37.204266, 36.204742, 22.059462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882820, 36.143753, 21.492609>,  <37.556164, 36.772625, 21.850471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882820, 36.143753, 21.492609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512226, 36.035770, 21.597490>,  <37.289871, 35.970982, 21.660419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512226, 36.035770, 21.597490>,  <37.882820, 36.143753, 21.492609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512226, 36.035770, 21.597490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201508, -0.232574, -0.951475,
		0.317838, -0.934362, 0.161078,
		-0.926484, -0.269957, 0.262202,
		37.234280, 35.954784, 21.676151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744629, 35.561623, 21.171888>,  <37.882820, 36.143753, 21.492609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744629, 35.561623, 21.171888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369488, 35.660763, 21.269051>,  <37.144402, 35.720245, 21.327349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369488, 35.660763, 21.269051>,  <37.744629, 35.561623, 21.171888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369488, 35.660763, 21.269051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292329, -0.187018, -0.937853,
		-0.187018, -0.950576, 0.247849,
		0.937853, -0.247849, -0.242905,
		37.088131, 35.735119, 21.341923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259506, 34.926506, 21.084965>,  <37.744629, 35.561623, 21.171888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259506, 34.926506, 21.084965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019310, 35.245411, 21.060328>,  <36.875195, 35.436752, 21.045546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019310, 35.245411, 21.060328>,  <37.259506, 34.926506, 21.084965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019310, 35.245411, 21.060328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358366, -0.337175, -0.870567,
		-0.714836, -0.500690, 0.488180,
		-0.600486, 0.797259, -0.061594,
		36.839165, 35.484589, 21.041849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520119, 34.660679, 20.907951>,  <37.259506, 34.926506, 21.084965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520119, 34.660679, 20.907951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516518, 35.045002, 20.797121>,  <36.514355, 35.275597, 20.730623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516518, 35.045002, 20.797121>,  <36.520119, 34.660679, 20.907951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516518, 35.045002, 20.797121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473615, -0.248134, -0.845055,
		-0.880686, 0.123617, 0.457287,
		-0.009005, 0.960806, -0.277075,
		36.513817, 35.333244, 20.713999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821861, 34.800552, 20.745827>,  <36.520119, 34.660679, 20.907951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821861, 34.800552, 20.745827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041340, 35.089218, 20.577007>,  <36.173027, 35.262417, 20.475716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041340, 35.089218, 20.577007>,  <35.821861, 34.800552, 20.745827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041340, 35.089218, 20.577007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375354, -0.238434, -0.895689,
		-0.747020, 0.649882, 0.140052,
		0.548699, 0.721666, -0.422050,
		36.205948, 35.305717, 20.450392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391857, 35.109867, 20.256313>,  <35.821861, 34.800552, 20.745827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391857, 35.109867, 20.256313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756683, 35.227959, 20.142485>,  <35.975578, 35.298813, 20.074188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756683, 35.227959, 20.142485>,  <35.391857, 35.109867, 20.256313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756683, 35.227959, 20.142485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273219, -0.079951, -0.958624,
		-0.305767, 0.952075, 0.007743,
		0.912062, 0.295231, -0.284572,
		36.030304, 35.316528, 20.057114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343456, 35.537212, 19.673611>,  <35.391857, 35.109867, 20.256313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343456, 35.537212, 19.673611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730530, 35.438778, 19.651581>,  <35.962772, 35.379719, 19.638363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730530, 35.438778, 19.651581>,  <35.343456, 35.537212, 19.673611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730530, 35.438778, 19.651581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097841, -0.165091, -0.981413,
		0.232415, 0.955086, -0.183833,
		0.967683, -0.246082, -0.055077,
		36.020836, 35.364952, 19.635057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539307, 35.838490, 19.110237>,  <35.343456, 35.537212, 19.673611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539307, 35.838490, 19.110237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808876, 35.552498, 19.184679>,  <35.970615, 35.380901, 19.229343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808876, 35.552498, 19.184679>,  <35.539307, 35.838490, 19.110237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808876, 35.552498, 19.184679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024115, -0.230478, -0.972779,
		0.738410, 0.660063, -0.138082,
		0.673920, -0.714980, 0.186104,
		36.011051, 35.338005, 19.240511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999504, 35.841297, 18.537666>,  <35.539307, 35.838490, 19.110237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999504, 35.841297, 18.537666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091690, 35.479576, 18.681396>,  <36.147003, 35.262543, 18.767635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091690, 35.479576, 18.681396>,  <35.999504, 35.841297, 18.537666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091690, 35.479576, 18.681396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040167, -0.377792, -0.925019,
		0.972251, 0.198751, -0.123391,
		0.230464, -0.904307, 0.359325,
		36.160828, 35.208282, 18.789194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645206, 35.614189, 18.179171>,  <35.999504, 35.841297, 18.537666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645206, 35.614189, 18.179171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432434, 35.300339, 18.306557>,  <36.304771, 35.112030, 18.382988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432434, 35.300339, 18.306557>,  <36.645206, 35.614189, 18.179171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432434, 35.300339, 18.306557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114001, -0.306307, -0.945082,
		0.839082, -0.539019, 0.073484,
		-0.531926, -0.784624, 0.318465,
		36.272858, 35.064953, 18.402096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973614, 35.003624, 17.907602>,  <36.645206, 35.614189, 18.179171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973614, 35.003624, 17.907602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584351, 34.936779, 17.970900>,  <36.350792, 34.896671, 18.008879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584351, 34.936779, 17.970900>,  <36.973614, 35.003624, 17.907602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584351, 34.936779, 17.970900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118016, -0.227961, -0.966492,
		0.197585, -0.959222, 0.202120,
		-0.973156, -0.167111, 0.158245,
		36.292404, 34.886646, 18.018373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836376, 34.450756, 17.393499>,  <36.973614, 35.003624, 17.907602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836376, 34.450756, 17.393499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465786, 34.563053, 17.493757>,  <36.243431, 34.630432, 17.553911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465786, 34.563053, 17.493757>,  <36.836376, 34.450756, 17.393499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465786, 34.563053, 17.493757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326263, -0.267181, -0.906734,
		-0.187589, -0.921846, 0.339132,
		-0.926479, 0.280740, 0.250644,
		36.187843, 34.647274, 17.568951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398315, 33.825897, 17.403845>,  <36.836376, 34.450756, 17.393499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398315, 33.825897, 17.403845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141766, 34.132099, 17.383276>,  <35.987835, 34.315819, 17.370935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141766, 34.132099, 17.383276>,  <36.398315, 33.825897, 17.403845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141766, 34.132099, 17.383276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493101, -0.462632, -0.736765,
		-0.587788, -0.447183, 0.674190,
		-0.641371, 0.765506, -0.051423,
		35.949352, 34.361752, 17.367849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621616, 33.277809, 16.864174>,  <36.398315, 33.825897, 17.403845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621616, 33.277809, 16.864174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642231, 32.878345, 16.862427>,  <36.654598, 32.638668, 16.861378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642231, 32.878345, 16.862427>,  <36.621616, 33.277809, 16.864174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642231, 32.878345, 16.862427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261068, 0.009250, 0.965276,
		-0.963944, -0.050886, 0.261195,
		0.051535, -0.998662, -0.004368,
		36.657692, 32.578747, 16.861116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300526, 33.063694, 17.402918>,  <36.621616, 33.277809, 16.864174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300526, 33.063694, 17.402918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533882, 32.747921, 17.326550>,  <36.673897, 32.558456, 17.280727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533882, 32.747921, 17.326550>,  <36.300526, 33.063694, 17.402918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533882, 32.747921, 17.326550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358472, 0.039339, 0.932711,
		-0.728798, -0.612580, 0.305938,
		0.583396, -0.789429, -0.190923,
		36.708900, 32.511093, 17.269272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232895, 32.613781, 17.936104>,  <36.300526, 33.063694, 17.402918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232895, 32.613781, 17.936104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582363, 32.504318, 17.775198>,  <36.792042, 32.438641, 17.678654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582363, 32.504318, 17.775198>,  <36.232895, 32.613781, 17.936104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582363, 32.504318, 17.775198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425590, 0.029228, 0.904444,
		-0.235752, -0.961383, 0.142002,
		0.873667, -0.273659, -0.402264,
		36.844463, 32.422222, 17.654518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461273, 32.074787, 18.385502>,  <36.232895, 32.613781, 17.936104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461273, 32.074787, 18.385502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779713, 32.197941, 18.177107>,  <36.970776, 32.271835, 18.052071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779713, 32.197941, 18.177107>,  <36.461273, 32.074787, 18.385502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779713, 32.197941, 18.177107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535380, 0.043014, 0.843515,
		0.282117, -0.950450, -0.130593,
		0.796102, 0.307887, -0.520987,
		37.018543, 32.290306, 18.020811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058815, 31.697451, 18.616447>,  <36.461273, 32.074787, 18.385502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058815, 31.697451, 18.616447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186722, 32.035599, 18.445288>,  <37.263466, 32.238487, 18.342592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186722, 32.035599, 18.445288>,  <37.058815, 31.697451, 18.616447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186722, 32.035599, 18.445288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631356, 0.146631, 0.761504,
		0.706495, -0.513663, -0.486841,
		0.319771, 0.845370, -0.427898,
		37.282654, 32.289211, 18.316917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799747, 31.699875, 18.799036>,  <37.058815, 31.697451, 18.616447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799747, 31.699875, 18.799036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746704, 32.080765, 18.688995>,  <37.714878, 32.309299, 18.622971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746704, 32.080765, 18.688995>,  <37.799747, 31.699875, 18.799036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746704, 32.080765, 18.688995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619692, 0.296269, 0.726778,
		0.773561, -0.074104, -0.629374,
		-0.132607, 0.952226, -0.275103,
		37.706921, 32.366432, 18.606464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440639, 31.995476, 18.563704>,  <37.799747, 31.699875, 18.799036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440639, 31.995476, 18.563704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221970, 32.303974, 18.694134>,  <38.090767, 32.489075, 18.772392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221970, 32.303974, 18.694134>,  <38.440639, 31.995476, 18.563704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221970, 32.303974, 18.694134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604789, 0.094358, 0.790776,
		0.579116, 0.629504, -0.518024,
		-0.546677, 0.771246, 0.326073,
		38.057968, 32.535347, 18.791956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939060, 32.510426, 18.783846>,  <38.440639, 31.995476, 18.563704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939060, 32.510426, 18.783846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591175, 32.605556, 18.956841>,  <38.382446, 32.662636, 19.060637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591175, 32.605556, 18.956841>,  <38.939060, 32.510426, 18.783846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591175, 32.605556, 18.956841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483345, 0.233013, 0.843850,
		0.099919, 0.942943, -0.317608,
		-0.869709, 0.237831, 0.432485,
		38.330261, 32.676907, 19.086586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046623, 33.181530, 19.237299>,  <38.939060, 32.510426, 18.783846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046623, 33.181530, 19.237299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712894, 33.004768, 19.369129>,  <38.512657, 32.898712, 19.448227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712894, 33.004768, 19.369129>,  <39.046623, 33.181530, 19.237299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712894, 33.004768, 19.369129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270496, 0.192763, 0.943226,
		-0.480347, 0.876106, -0.041294,
		-0.834326, -0.441905, 0.329576,
		38.462597, 32.872196, 19.468002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884438, 33.530849, 19.774467>,  <39.046623, 33.181530, 19.237299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884438, 33.530849, 19.774467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661606, 33.202061, 19.821831>,  <38.527905, 33.004787, 19.850248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661606, 33.202061, 19.821831>,  <38.884438, 33.530849, 19.774467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661606, 33.202061, 19.821831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091580, 0.080905, 0.992506,
		-0.825393, 0.563750, 0.030205,
		-0.557081, -0.821974, 0.118407,
		38.494480, 32.955467, 19.857353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285511, 33.715542, 20.297741>,  <38.884438, 33.530849, 19.774467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285511, 33.715542, 20.297741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326309, 33.317936, 20.282097>,  <38.350788, 33.079372, 20.272711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326309, 33.317936, 20.282097>,  <38.285511, 33.715542, 20.297741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326309, 33.317936, 20.282097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064680, -0.032604, 0.997373,
		-0.992680, -0.104256, 0.060967,
		0.101994, -0.994016, -0.039108,
		38.356907, 33.019730, 20.270365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864101, 33.433563, 20.872520>,  <38.285511, 33.715542, 20.297741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864101, 33.433563, 20.872520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123344, 33.147877, 20.766802>,  <38.278893, 32.976467, 20.703371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123344, 33.147877, 20.766802>,  <37.864101, 33.433563, 20.872520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123344, 33.147877, 20.766802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174439, -0.198595, 0.964433,
		-0.741299, -0.671162, -0.004125,
		0.648110, -0.714213, -0.264295,
		38.317780, 32.933613, 20.687513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641747, 32.986004, 21.440256>,  <37.864101, 33.433563, 20.872520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641747, 32.986004, 21.440256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007023, 32.911076, 21.295486>,  <38.226189, 32.866119, 21.208624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007023, 32.911076, 21.295486>,  <37.641747, 32.986004, 21.440256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007023, 32.911076, 21.295486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326370, -0.195688, 0.924764,
		-0.244052, -0.962610, -0.117565,
		0.913193, -0.187321, -0.361925,
		38.280979, 32.854881, 21.186909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866028, 32.498116, 21.833012>,  <37.641747, 32.986004, 21.440256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866028, 32.498116, 21.833012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215176, 32.585697, 21.658581>,  <38.424664, 32.638245, 21.553923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215176, 32.585697, 21.658581>,  <37.866028, 32.498116, 21.833012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215176, 32.585697, 21.658581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392744, 0.215103, 0.894138,
		0.289578, -0.951730, 0.101763,
		0.872867, 0.218955, -0.436075,
		38.477036, 32.651382, 21.527758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455173, 32.070198, 21.935017>,  <37.866028, 32.498116, 21.833012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455173, 32.070198, 21.935017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629147, 32.418873, 21.844679>,  <38.733528, 32.628078, 21.790476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629147, 32.418873, 21.844679>,  <38.455173, 32.070198, 21.935017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629147, 32.418873, 21.844679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507883, -0.030364, 0.860891,
		0.743566, -0.489130, -0.455919,
		0.434931, 0.871682, -0.225844,
		38.759624, 32.680378, 21.776926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129261, 32.010437, 22.207232>,  <38.455173, 32.070198, 21.935017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129261, 32.010437, 22.207232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069710, 32.403599, 22.163889>,  <39.033981, 32.639496, 22.137884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069710, 32.403599, 22.163889>,  <39.129261, 32.010437, 22.207232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069710, 32.403599, 22.163889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540347, 0.172631, 0.823543,
		0.828167, 0.064057, -0.556808,
		-0.148876, 0.982901, -0.108355,
		39.025047, 32.698471, 22.131382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751961, 32.363087, 22.461977>,  <39.129261, 32.010437, 22.207232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751961, 32.363087, 22.461977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463707, 32.640228, 22.451891>,  <39.290752, 32.806515, 22.445839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463707, 32.640228, 22.451891>,  <39.751961, 32.363087, 22.461977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463707, 32.640228, 22.451891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212342, 0.255183, 0.943288,
		0.659995, 0.674414, -0.331017,
		-0.720637, 0.692854, -0.025213,
		39.247517, 32.848083, 22.444326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051064, 33.034512, 22.857428>,  <39.751961, 32.363087, 22.461977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051064, 33.034512, 22.857428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655735, 33.075722, 22.812521>,  <39.418537, 33.100449, 22.785576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655735, 33.075722, 22.812521>,  <40.051064, 33.034512, 22.857428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655735, 33.075722, 22.812521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055888, 0.440341, 0.896089,
		0.141760, 0.891900, -0.429441,
		-0.988322, 0.103029, -0.112269,
		39.359238, 33.106632, 22.778841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936802, 33.613945, 23.304188>,  <40.051064, 33.034512, 22.857428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936802, 33.613945, 23.304188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570992, 33.467495, 23.235371>,  <39.351505, 33.379623, 23.194080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570992, 33.467495, 23.235371>,  <39.936802, 33.613945, 23.304188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570992, 33.467495, 23.235371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300155, 0.329001, 0.895358,
		-0.271214, 0.870464, -0.410774,
		-0.914522, -0.366130, -0.172045,
		39.296635, 33.357655, 23.183758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399246, 34.111107, 23.506039>,  <39.936802, 33.613945, 23.304188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399246, 34.111107, 23.506039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208355, 33.762272, 23.549316>,  <39.093819, 33.552971, 23.575283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208355, 33.762272, 23.549316>,  <39.399246, 34.111107, 23.506039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208355, 33.762272, 23.549316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226181, 0.240867, 0.943835,
		-0.849171, 0.425957, -0.312200,
		-0.477231, -0.872092, 0.108194,
		39.065186, 33.500645, 23.581774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767315, 34.250160, 23.769220>,  <39.399246, 34.111107, 23.506039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767315, 34.250160, 23.769220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836712, 33.871925, 23.879324>,  <38.878349, 33.644985, 23.945385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836712, 33.871925, 23.879324>,  <38.767315, 34.250160, 23.769220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836712, 33.871925, 23.879324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267045, 0.223857, 0.937323,
		-0.947939, -0.236121, -0.213678,
		0.173488, -0.945587, 0.275258,
		38.888760, 33.588249, 23.961901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186138, 34.074215, 24.231449>,  <38.767315, 34.250160, 23.769220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186138, 34.074215, 24.231449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454479, 33.787579, 24.307810>,  <38.615486, 33.615597, 24.353626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454479, 33.787579, 24.307810>,  <38.186138, 34.074215, 24.231449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454479, 33.787579, 24.307810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223364, 0.050216, 0.973441,
		-0.707149, -0.695680, -0.126374,
		0.670857, -0.716595, 0.190900,
		38.655735, 33.572601, 24.365080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846512, 33.657486, 24.628395>,  <38.186138, 34.074215, 24.231449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846512, 33.657486, 24.628395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232990, 33.594875, 24.710329>,  <38.464878, 33.557308, 24.759489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232990, 33.594875, 24.710329>,  <37.846512, 33.657486, 24.628395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232990, 33.594875, 24.710329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198586, 0.054749, 0.978553,
		-0.164385, -0.986155, 0.021814,
		0.966199, -0.156528, 0.204836,
		38.522850, 33.547916, 24.771780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757935, 33.157509, 25.135683>,  <37.846512, 33.657486, 24.628395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757935, 33.157509, 25.135683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126472, 33.311302, 25.158649>,  <38.347595, 33.403576, 25.172430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126472, 33.311302, 25.158649>,  <37.757935, 33.157509, 25.135683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126472, 33.311302, 25.158649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119258, 0.138972, 0.983089,
		0.369998, -0.912613, 0.173894,
		0.921346, 0.384480, 0.057417,
		38.402878, 33.426647, 25.175875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148521, 32.750961, 25.557848>,  <37.757935, 33.157509, 25.135683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148521, 32.750961, 25.557848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359146, 33.090786, 25.570389>,  <38.485523, 33.294682, 25.577913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359146, 33.090786, 25.570389>,  <38.148521, 32.750961, 25.557848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359146, 33.090786, 25.570389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145114, 0.053486, 0.987968,
		0.837658, -0.524778, 0.151447,
		0.526564, 0.849557, 0.031350,
		38.517117, 33.345654, 25.579794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530376, 32.586418, 26.017672>,  <38.148521, 32.750961, 25.557848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530376, 32.586418, 26.017672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547791, 32.986031, 26.020103>,  <38.558239, 33.225800, 26.021563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547791, 32.986031, 26.020103>,  <38.530376, 32.586418, 26.017672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547791, 32.986031, 26.020103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116205, -0.011106, 0.993163,
		0.992271, -0.042533, -0.116576,
		0.043537, 0.999033, 0.006078,
		38.560852, 33.285740, 26.021927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163254, 32.825756, 26.442936>,  <38.530376, 32.586418, 26.017672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163254, 32.825756, 26.442936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894527, 33.121742, 26.429632>,  <38.733292, 33.299335, 26.421650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894527, 33.121742, 26.429632>,  <39.163254, 32.825756, 26.442936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894527, 33.121742, 26.429632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163166, 0.191639, 0.967808,
		0.722521, 0.644765, -0.249484,
		-0.671819, 0.739968, -0.033259,
		38.692982, 33.343731, 26.419655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496807, 33.315723, 26.858526>,  <39.163254, 32.825756, 26.442936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496807, 33.315723, 26.858526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109802, 33.413200, 26.831600>,  <38.877598, 33.471687, 26.815445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109802, 33.413200, 26.831600>,  <39.496807, 33.315723, 26.858526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109802, 33.413200, 26.831600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052191, 0.453041, 0.889960,
		0.247373, 0.857536, -0.451042,
		-0.967514, 0.243692, -0.067315,
		38.819550, 33.486309, 26.811405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530228, 34.024940, 26.970722>,  <39.496807, 33.315723, 26.858526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530228, 34.024940, 26.970722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156731, 33.959488, 27.098061>,  <38.932632, 33.920216, 27.174463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156731, 33.959488, 27.098061>,  <39.530228, 34.024940, 26.970722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156731, 33.959488, 27.098061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262790, 0.290466, 0.920093,
		-0.243029, 0.942790, -0.228219,
		-0.933744, -0.163636, 0.318347,
		38.876606, 33.910397, 27.193565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307369, 34.576149, 27.494926>,  <39.530228, 34.024940, 26.970722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307369, 34.576149, 27.494926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070618, 34.260540, 27.560804>,  <38.928566, 34.071175, 27.600332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070618, 34.260540, 27.560804>,  <39.307369, 34.576149, 27.494926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070618, 34.260540, 27.560804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237840, 0.024268, 0.971001,
		-0.770137, 0.613887, 0.173297,
		-0.591879, -0.789021, 0.164696,
		38.893055, 34.023834, 27.610212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020153, 34.759041, 28.156651>,  <39.307369, 34.576149, 27.494926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020153, 34.759041, 28.156651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871433, 34.387882, 28.145536>,  <38.782200, 34.165188, 28.138868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871433, 34.387882, 28.145536>,  <39.020153, 34.759041, 28.156651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871433, 34.387882, 28.145536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155816, 0.032871, 0.987239,
		-0.915142, 0.371388, -0.156803,
		-0.371803, -0.927896, -0.027787,
		38.759892, 34.109512, 28.137201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362240, 34.780373, 28.652615>,  <39.020153, 34.759041, 28.156651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362240, 34.780373, 28.652615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526943, 34.419209, 28.603294>,  <38.625763, 34.202511, 28.573702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526943, 34.419209, 28.603294>,  <38.362240, 34.780373, 28.652615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526943, 34.419209, 28.603294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032329, -0.149691, 0.988204,
		-0.910720, -0.402913, -0.090826,
		0.411756, -0.902914, -0.123301,
		38.650471, 34.148335, 28.566303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863491, 34.286816, 29.026688>,  <38.362240, 34.780373, 28.652615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863491, 34.286816, 29.026688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222809, 34.118214, 28.977062>,  <38.438400, 34.017052, 28.947287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222809, 34.118214, 28.977062>,  <37.863491, 34.286816, 29.026688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222809, 34.118214, 28.977062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134454, -0.005119, 0.990907,
		-0.418311, -0.906810, 0.052075,
		0.898298, -0.421509, -0.124065,
		38.492298, 33.991760, 28.939842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828552, 33.674435, 29.380999>,  <37.863491, 34.286816, 29.026688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828552, 33.674435, 29.380999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221470, 33.745045, 29.355894>,  <38.457222, 33.787411, 29.340832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221470, 33.745045, 29.355894>,  <37.828552, 33.674435, 29.380999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221470, 33.745045, 29.355894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102731, -0.227368, 0.968375,
		0.156669, -0.957676, -0.241477,
		0.982294, 0.176522, -0.062761,
		38.516159, 33.798000, 29.337065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106552, 33.321018, 29.909271>,  <37.828552, 33.674435, 29.380999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106552, 33.321018, 29.909271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423901, 33.545147, 29.814104>,  <38.614311, 33.679623, 29.757004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423901, 33.545147, 29.814104>,  <38.106552, 33.321018, 29.909271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423901, 33.545147, 29.814104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335874, -0.076970, 0.938757,
		0.507690, -0.824694, -0.249262,
		0.793372, 0.560318, -0.237916,
		38.661911, 33.713242, 29.742729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668911, 32.945972, 30.142673>,  <38.106552, 33.321018, 29.909271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668911, 32.945972, 30.142673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790035, 33.326195, 30.115122>,  <38.862709, 33.554329, 30.098591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790035, 33.326195, 30.115122>,  <38.668911, 32.945972, 30.142673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790035, 33.326195, 30.115122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452976, -0.079963, 0.887929,
		0.838520, -0.300078, -0.454794,
		0.302815, 0.950557, -0.068877,
		38.880878, 33.611362, 30.094460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351379, 32.846493, 30.372190>,  <38.668911, 32.945972, 30.142673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351379, 32.846493, 30.372190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270401, 33.235821, 30.415392>,  <39.221813, 33.469418, 30.441313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270401, 33.235821, 30.415392>,  <39.351379, 32.846493, 30.372190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270401, 33.235821, 30.415392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501961, 0.008435, 0.864849,
		0.840864, 0.229298, -0.490276,
		-0.202443, 0.973320, 0.108006,
		39.209667, 33.527817, 30.447794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006214, 33.229229, 30.459499>,  <39.351379, 32.846493, 30.372190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006214, 33.229229, 30.459499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732281, 33.474464, 30.617043>,  <39.567921, 33.621605, 30.711569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732281, 33.474464, 30.617043>,  <40.006214, 33.229229, 30.459499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732281, 33.474464, 30.617043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592189, 0.153287, 0.791085,
		0.424632, 0.775001, -0.468040,
		-0.684836, 0.613088, 0.393856,
		39.526829, 33.658390, 30.735199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399948, 33.829700, 30.709091>,  <40.006214, 33.229229, 30.459499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399948, 33.829700, 30.709091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051903, 33.787003, 30.901554>,  <39.843075, 33.761383, 31.017033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051903, 33.787003, 30.901554>,  <40.399948, 33.829700, 30.709091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051903, 33.787003, 30.901554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438797, 0.276762, 0.854903,
		-0.224424, 0.954991, -0.193974,
		-0.870110, -0.106746, 0.481160,
		39.790871, 33.754978, 31.045902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394390, 34.364567, 31.243937>,  <40.399948, 33.829700, 30.709091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394390, 34.364567, 31.243937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100037, 34.124142, 31.368645>,  <39.923424, 33.979885, 31.443470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100037, 34.124142, 31.368645>,  <40.394390, 34.364567, 31.243937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100037, 34.124142, 31.368645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398311, -0.011917, 0.917173,
		-0.547563, 0.799113, 0.248180,
		-0.735882, -0.601063, 0.311770,
		39.879272, 33.943821, 31.462175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003563, 34.629871, 31.886404>,  <40.394390, 34.364567, 31.243937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003563, 34.629871, 31.886404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941082, 34.235401, 31.908529>,  <39.903591, 33.998718, 31.921804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941082, 34.235401, 31.908529>,  <40.003563, 34.629871, 31.886404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941082, 34.235401, 31.908529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146757, 0.032207, 0.988648,
		-0.976761, 0.162549, 0.139697,
		-0.156205, -0.986175, 0.055313,
		39.894222, 33.939548, 31.925123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527382, 34.436565, 32.432487>,  <40.003563, 34.629871, 31.886404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527382, 34.436565, 32.432487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706120, 34.082714, 32.379173>,  <39.813362, 33.870403, 32.347183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706120, 34.082714, 32.379173>,  <39.527382, 34.436565, 32.432487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706120, 34.082714, 32.379173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117865, -0.089472, 0.988990,
		-0.886812, -0.457637, 0.064286,
		0.446847, -0.884626, -0.133284,
		39.840172, 33.817326, 32.339188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256134, 34.055294, 32.982285>,  <39.527382, 34.436565, 32.432487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256134, 34.055294, 32.982285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579029, 33.853081, 32.860432>,  <39.772766, 33.731754, 32.787319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579029, 33.853081, 32.860432>,  <39.256134, 34.055294, 32.982285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579029, 33.853081, 32.860432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185013, -0.273395, 0.943941,
		-0.560476, -0.818349, -0.127166,
		0.807240, -0.505529, -0.304636,
		39.821201, 33.701424, 32.769039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239777, 33.389690, 33.184647>,  <39.256134, 34.055294, 32.982285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239777, 33.389690, 33.184647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615891, 33.525387, 33.173416>,  <39.841557, 33.606804, 33.166679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615891, 33.525387, 33.173416>,  <39.239777, 33.389690, 33.184647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615891, 33.525387, 33.173416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095475, -0.183666, 0.978341,
		0.326735, -0.922596, -0.205086,
		0.940281, 0.339239, -0.028075,
		39.897976, 33.627159, 33.164993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615654, 32.960083, 33.677197>,  <39.239777, 33.389690, 33.184647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615654, 32.960083, 33.677197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937233, 33.186504, 33.604252>,  <40.130180, 33.322357, 33.560486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937233, 33.186504, 33.604252>,  <39.615654, 32.960083, 33.677197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937233, 33.186504, 33.604252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364203, -0.226217, 0.903428,
		0.470137, -0.792722, -0.388024,
		0.803945, 0.566054, -0.182359,
		40.178417, 33.356319, 33.549545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222034, 32.539543, 33.949554>,  <39.615654, 32.960083, 33.677197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222034, 32.539543, 33.949554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325993, 32.924931, 33.923702>,  <40.388367, 33.156162, 33.908192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325993, 32.924931, 33.923702>,  <40.222034, 32.539543, 33.949554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325993, 32.924931, 33.923702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436352, -0.057473, 0.897939,
		0.861425, -0.261568, -0.435350,
		0.259892, 0.963473, -0.064627,
		40.403961, 33.213974, 33.904316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872936, 32.628654, 34.241669>,  <40.222034, 32.539543, 33.949554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872936, 32.628654, 34.241669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796196, 33.021221, 34.240696>,  <40.750153, 33.256763, 34.240112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796196, 33.021221, 34.240696>,  <40.872936, 32.628654, 34.241669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796196, 33.021221, 34.240696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504523, 0.100746, 0.857501,
		0.841814, 0.163286, -0.514477,
		-0.191850, 0.981421, -0.002428,
		40.738640, 33.315647, 34.239967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427418, 32.926674, 34.632217>,  <40.872936, 32.628654, 34.241669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427418, 32.926674, 34.632217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099834, 33.156113, 34.638992>,  <40.903286, 33.293777, 34.643059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099834, 33.156113, 34.638992>,  <41.427418, 32.926674, 34.632217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099834, 33.156113, 34.638992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198792, 0.255886, 0.946047,
		0.538319, 0.778141, -0.323587,
		-0.818959, 0.573601, 0.016940,
		40.854145, 33.328194, 34.644073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653309, 33.655872, 34.887276>,  <41.427418, 32.926674, 34.632217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653309, 33.655872, 34.887276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268639, 33.568237, 34.953217>,  <41.037834, 33.515656, 34.992779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268639, 33.568237, 34.953217>,  <41.653309, 33.655872, 34.887276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268639, 33.568237, 34.953217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110057, 0.242224, 0.963958,
		-0.251123, 0.945160, -0.208829,
		-0.961678, -0.219089, 0.164849,
		40.980137, 33.502510, 35.002670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237587, 34.258373, 35.171112>,  <41.653309, 33.655872, 34.887276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237587, 34.258373, 35.171112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097839, 33.895908, 35.266457>,  <41.013992, 33.678429, 35.323666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097839, 33.895908, 35.266457>,  <41.237587, 34.258373, 35.171112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097839, 33.895908, 35.266457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034636, 0.241731, 0.969725,
		-0.936344, 0.347049, -0.053068,
		-0.349370, -0.906158, 0.238364,
		40.993027, 33.624062, 35.337967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651894, 34.333035, 35.635960>,  <41.237587, 34.258373, 35.171112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651894, 34.333035, 35.635960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762596, 33.953640, 35.697636>,  <40.829018, 33.726002, 35.734642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762596, 33.953640, 35.697636>,  <40.651894, 34.333035, 35.635960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762596, 33.953640, 35.697636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156691, 0.113769, 0.981073,
		-0.948079, -0.295679, -0.117133,
		0.276756, -0.948489, 0.154193,
		40.845623, 33.669094, 35.743893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191223, 34.019157, 36.109035>,  <40.651894, 34.333035, 35.635960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191223, 34.019157, 36.109035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508781, 33.775990, 36.114124>,  <40.699318, 33.630089, 36.117180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508781, 33.775990, 36.114124>,  <40.191223, 34.019157, 36.109035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508781, 33.775990, 36.114124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095218, -0.103625, 0.990048,
		-0.600553, -0.787206, -0.140153,
		0.793895, -0.607922, 0.012724,
		40.746948, 33.593613, 36.117943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120293, 33.909332, 36.776775>,  <40.191223, 34.019157, 36.109035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120293, 33.909332, 36.776775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412518, 33.663368, 36.658009>,  <40.587852, 33.515789, 36.586746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412518, 33.663368, 36.658009>,  <40.120293, 33.909332, 36.776775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412518, 33.663368, 36.658009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072493, -0.362529, 0.929149,
		-0.678986, -0.700327, -0.220273,
		0.730564, -0.614910, -0.296921,
		40.631687, 33.478893, 36.568932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922287, 33.174194, 36.919704>,  <40.120293, 33.909332, 36.776775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922287, 33.174194, 36.919704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316483, 33.241306, 36.930038>,  <40.552998, 33.281574, 36.936237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316483, 33.241306, 36.930038>,  <39.922287, 33.174194, 36.919704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316483, 33.241306, 36.930038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019963, -0.265675, 0.963856,
		0.168576, -0.949351, -0.265169,
		0.985487, 0.167777, 0.025835,
		40.612129, 33.291637, 36.937790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249550, 32.523048, 37.158543>,  <39.922287, 33.174194, 36.919704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249550, 32.523048, 37.158543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450672, 32.855999, 37.251781>,  <40.571346, 33.055771, 37.307724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450672, 32.855999, 37.251781>,  <40.249550, 32.523048, 37.158543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450672, 32.855999, 37.251781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029139, -0.285835, 0.957836,
		0.863911, -0.474809, -0.167973,
		0.502801, 0.832379, 0.233101,
		40.601513, 33.105713, 37.321712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816341, 32.283348, 37.454533>,  <40.249550, 32.523048, 37.158543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816341, 32.283348, 37.454533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798592, 32.662167, 37.581745>,  <40.787941, 32.889458, 37.658073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798592, 32.662167, 37.581745>,  <40.816341, 32.283348, 37.454533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798592, 32.662167, 37.581745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183577, -0.305191, 0.934429,
		0.982003, 0.099851, -0.160311,
		-0.044378, 0.947042, 0.318029,
		40.785278, 32.946278, 37.677155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879391, 32.201805, 38.124443>,  <40.816341, 32.283348, 37.454533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879391, 32.201805, 38.124443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866440, 32.601395, 38.111794>,  <40.858669, 32.841148, 38.104206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866440, 32.601395, 38.111794>,  <40.879391, 32.201805, 38.124443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866440, 32.601395, 38.111794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210396, 0.037739, 0.976888,
		0.977080, 0.024976, -0.211402,
		-0.032377, 0.998975, -0.031619,
		40.856728, 32.901089, 38.102306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496864, 32.546684, 38.453636>,  <40.879391, 32.201805, 38.124443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496864, 32.546684, 38.453636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150425, 32.746002, 38.469475>,  <40.942562, 32.865593, 38.478977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150425, 32.746002, 38.469475>,  <41.496864, 32.546684, 38.453636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150425, 32.746002, 38.469475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045627, -0.157695, 0.986433,
		0.497783, 0.852544, 0.159316,
		-0.866101, 0.498299, 0.039599,
		40.890594, 32.895493, 38.481354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517742, 33.028450, 39.106846>,  <41.496864, 32.546684, 38.453636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517742, 33.028450, 39.106846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126972, 33.058033, 39.026707>,  <40.892509, 33.075783, 38.978622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126972, 33.058033, 39.026707>,  <41.517742, 33.028450, 39.106846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126972, 33.058033, 39.026707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210482, -0.174573, 0.961884,
		0.036164, 0.981862, 0.186113,
		-0.976929, 0.073959, -0.200351,
		40.833893, 33.080219, 38.966602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188797, 33.526569, 39.583511>,  <41.517742, 33.028450, 39.106846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188797, 33.526569, 39.583511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918808, 33.251575, 39.476337>,  <40.756817, 33.086578, 39.412033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918808, 33.251575, 39.476337>,  <41.188797, 33.526569, 39.583511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918808, 33.251575, 39.476337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296514, -0.079788, 0.951690,
		-0.675646, 0.721806, -0.149994,
		-0.674968, -0.687481, -0.267934,
		40.716316, 33.045330, 39.395958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707260, 33.605415, 40.143353>,  <41.188797, 33.526569, 39.583511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707260, 33.605415, 40.143353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627056, 33.282627, 39.921150>,  <40.578934, 33.088955, 39.787827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627056, 33.282627, 39.921150>,  <40.707260, 33.605415, 40.143353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627056, 33.282627, 39.921150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097792, -0.547706, 0.830936,
		-0.974799, 0.220933, 0.030904,
		-0.200507, -0.806974, -0.555509,
		40.566902, 33.040535, 39.754498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958134, 33.267387, 40.201191>,  <40.707260, 33.605415, 40.143353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958134, 33.267387, 40.201191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268883, 33.018539, 40.162331>,  <40.455334, 32.869232, 40.139015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268883, 33.018539, 40.162331>,  <39.958134, 33.267387, 40.201191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268883, 33.018539, 40.162331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223598, -0.416801, 0.881068,
		-0.588620, -0.662756, -0.462906,
		0.776872, -0.622119, -0.097146,
		40.501945, 32.831905, 40.133186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549110, 33.565018, 40.841003>,  <39.958134, 33.267387, 40.201191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549110, 33.565018, 40.841003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576424, 33.189404, 40.975788>,  <40.592812, 32.964035, 41.056660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576424, 33.189404, 40.975788>,  <40.549110, 33.565018, 40.841003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576424, 33.189404, 40.975788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332085, -0.339882, -0.879886,
		0.940775, -0.051821, -0.335048,
		0.068280, -0.939039, 0.336962,
		40.596909, 32.907692, 41.076878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032936, 33.036842, 40.573544>,  <40.549110, 33.565018, 40.841003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032936, 33.036842, 40.573544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677223, 32.885651, 40.676548>,  <40.463795, 32.794937, 40.738350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677223, 32.885651, 40.676548>,  <41.032936, 33.036842, 40.573544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677223, 32.885651, 40.676548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154233, -0.282211, -0.946874,
		0.430570, -0.881753, 0.192668,
		-0.889281, -0.377980, 0.257507,
		40.410439, 32.772255, 40.753799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908840, 32.238735, 40.408318>,  <41.032936, 33.036842, 40.573544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908840, 32.238735, 40.408318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603104, 32.496578, 40.401909>,  <40.419662, 32.651283, 40.398064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603104, 32.496578, 40.401909>,  <40.908840, 32.238735, 40.408318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603104, 32.496578, 40.401909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087292, -0.128054, -0.987918,
		-0.638875, -0.753709, 0.154146,
		-0.764342, 0.644612, -0.016017,
		40.373802, 32.689960, 40.397102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377510, 31.851988, 40.135525>,  <40.908840, 32.238735, 40.408318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377510, 31.851988, 40.135525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337906, 32.243538, 40.063969>,  <40.314144, 32.478466, 40.021034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337906, 32.243538, 40.063969>,  <40.377510, 31.851988, 40.135525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337906, 32.243538, 40.063969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076207, -0.171788, -0.982182,
		-0.992164, -0.110878, -0.057588,
		-0.099009, 0.978875, -0.178891,
		40.308205, 32.537201, 40.010300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020245, 31.913549, 39.527283>,  <40.377510, 31.851988, 40.135525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020245, 31.913549, 39.527283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179298, 32.277706, 39.573017>,  <40.274731, 32.496201, 39.600456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179298, 32.277706, 39.573017>,  <40.020245, 31.913549, 39.527283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179298, 32.277706, 39.573017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105350, 0.078488, -0.991333,
		-0.911475, 0.406235, -0.064700,
		0.397636, 0.910391, 0.114337,
		40.298588, 32.550823, 39.607319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780087, 32.200798, 38.972305>,  <40.020245, 31.913549, 39.527283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780087, 32.200798, 38.972305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047516, 32.464886, 39.109192>,  <40.207973, 32.623337, 39.191326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047516, 32.464886, 39.109192>,  <39.780087, 32.200798, 38.972305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047516, 32.464886, 39.109192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208472, 0.275339, -0.938471,
		-0.713823, 0.698784, 0.046448,
		0.668578, 0.660219, 0.342221,
		40.248089, 32.662952, 39.211857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550163, 32.849998, 38.691448>,  <39.780087, 32.200798, 38.972305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550163, 32.849998, 38.691448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940784, 32.903088, 38.759258>,  <40.175156, 32.934940, 38.799942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940784, 32.903088, 38.759258>,  <39.550163, 32.849998, 38.691448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940784, 32.903088, 38.759258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091337, 0.457625, -0.884442,
		-0.194963, 0.879184, 0.434770,
		0.976548, 0.132722, 0.169522,
		40.233749, 32.942905, 38.810116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796299, 33.582165, 38.556103>,  <39.550163, 32.849998, 38.691448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796299, 33.582165, 38.556103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115929, 33.343384, 38.527447>,  <40.307705, 33.200115, 38.510254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115929, 33.343384, 38.527447>,  <39.796299, 33.582165, 38.556103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115929, 33.343384, 38.527447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283035, 0.478618, -0.831154,
		0.530450, 0.643873, 0.551408,
		0.799071, -0.596953, -0.071645,
		40.355648, 33.164299, 38.505955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249825, 33.993244, 38.212696>,  <39.796299, 33.582165, 38.556103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249825, 33.993244, 38.212696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420673, 33.633080, 38.179661>,  <40.523182, 33.416981, 38.159840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420673, 33.633080, 38.179661>,  <40.249825, 33.993244, 38.212696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420673, 33.633080, 38.179661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423651, 0.279986, -0.861469,
		0.798802, 0.332965, 0.501049,
		0.427125, -0.900412, -0.082592,
		40.548813, 33.362957, 38.154884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810394, 34.236797, 37.950909>,  <40.249825, 33.993244, 38.212696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810394, 34.236797, 37.950909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786465, 33.841873, 37.892078>,  <40.772106, 33.604919, 37.856781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786465, 33.841873, 37.892078>,  <40.810394, 34.236797, 37.950909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786465, 33.841873, 37.892078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294535, 0.123322, -0.947650,
		0.953767, -0.100009, 0.283421,
		-0.059821, -0.987314, -0.147077,
		40.768517, 33.545677, 37.847954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448139, 34.146530, 37.618900>,  <40.810394, 34.236797, 37.950909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448139, 34.146530, 37.618900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194721, 33.849640, 37.531517>,  <41.042671, 33.671505, 37.479088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194721, 33.849640, 37.531517>,  <41.448139, 34.146530, 37.618900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194721, 33.849640, 37.531517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262170, 0.059710, -0.963173,
		0.727938, -0.667483, 0.156761,
		-0.633541, -0.742227, -0.218459,
		41.004658, 33.626972, 37.465981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807461, 33.879726, 37.114124>,  <41.448139, 34.146530, 37.618900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807461, 33.879726, 37.114124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450726, 33.700695, 37.087883>,  <41.236687, 33.593277, 37.072140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450726, 33.700695, 37.087883>,  <41.807461, 33.879726, 37.114124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450726, 33.700695, 37.087883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175140, -0.207923, -0.962338,
		0.417082, -0.869736, 0.263822,
		-0.891834, -0.447580, -0.065604,
		41.183174, 33.566422, 37.068203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900425, 33.358196, 36.675556>,  <41.807461, 33.879726, 37.114124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900425, 33.358196, 36.675556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514545, 33.454262, 36.632339>,  <41.283016, 33.511902, 36.606407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514545, 33.454262, 36.632339>,  <41.900425, 33.358196, 36.675556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514545, 33.454262, 36.632339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036144, -0.285650, -0.957652,
		-0.260841, -0.927757, 0.266888,
		-0.964705, 0.240149, -0.108042,
		41.225136, 33.526310, 36.599926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693783, 32.829514, 36.279278>,  <41.900425, 33.358196, 36.675556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693783, 32.829514, 36.279278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380924, 33.078014, 36.260151>,  <41.193207, 33.227116, 36.248672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380924, 33.078014, 36.260151>,  <41.693783, 32.829514, 36.279278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380924, 33.078014, 36.260151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232815, -0.362571, -0.902407,
		-0.577962, -0.694683, 0.428222,
		-0.782148, 0.621254, -0.047820,
		41.146278, 33.264389, 36.245804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164062, 32.428596, 36.023846>,  <41.693783, 32.829514, 36.279278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164062, 32.428596, 36.023846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075298, 32.810356, 35.943977>,  <41.022038, 33.039413, 35.896057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075298, 32.810356, 35.943977>,  <41.164062, 32.428596, 36.023846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075298, 32.810356, 35.943977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337789, -0.267342, -0.902456,
		-0.914687, -0.132823, 0.381714,
		-0.221915, 0.954404, -0.199668,
		41.008724, 33.096676, 35.884075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500004, 32.438202, 35.690102>,  <41.164062, 32.428596, 36.023846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500004, 32.438202, 35.690102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641041, 32.799610, 35.592670>,  <40.725662, 33.016457, 35.534214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641041, 32.799610, 35.592670>,  <40.500004, 32.438202, 35.690102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641041, 32.799610, 35.592670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350144, -0.114000, -0.929733,
		-0.867801, 0.413102, 0.276167,
		0.352591, 0.903521, -0.243574,
		40.746819, 33.070667, 35.519600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216175, 32.687599, 35.198891>,  <40.500004, 32.438202, 35.690102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216175, 32.687599, 35.198891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316662, 33.046997, 35.342884>,  <40.376953, 33.262638, 35.429279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316662, 33.046997, 35.342884>,  <40.216175, 32.687599, 35.198891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316662, 33.046997, 35.342884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423274, 0.232490, -0.875664,
		-0.870476, 0.372355, -0.321906,
		0.251218, 0.898499, 0.359985,
		40.392029, 33.316547, 35.450878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732964, 33.208569, 35.082832>,  <40.216175, 32.687599, 35.198891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732964, 33.208569, 35.082832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118397, 33.314461, 35.067753>,  <40.349659, 33.377995, 35.058704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118397, 33.314461, 35.067753>,  <39.732964, 33.208569, 35.082832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118397, 33.314461, 35.067753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106363, 0.250118, -0.962355,
		-0.245338, 0.931321, 0.269168,
		0.963585, 0.264732, -0.037694,
		40.407471, 33.393879, 35.056446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752266, 33.973347, 34.828209>,  <39.732964, 33.208569, 35.082832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752266, 33.973347, 34.828209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085041, 33.761578, 34.761780>,  <40.284706, 33.634514, 34.721924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085041, 33.761578, 34.761780>,  <39.752266, 33.973347, 34.828209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085041, 33.761578, 34.761780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105414, 0.143046, -0.984086,
		0.544758, 0.836209, 0.063197,
		0.831942, -0.529427, -0.166073,
		40.334625, 33.602749, 34.711956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021179, 34.321022, 34.303947>,  <39.752266, 33.973347, 34.828209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021179, 34.321022, 34.303947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229378, 33.979668, 34.292477>,  <40.354298, 33.774857, 34.285595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229378, 33.979668, 34.292477>,  <40.021179, 34.321022, 34.303947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229378, 33.979668, 34.292477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048391, 0.063011, -0.996839,
		0.852492, 0.517462, 0.074093,
		0.520495, -0.853383, -0.028677,
		40.385525, 33.723652, 34.283875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643993, 34.483414, 33.945271>,  <40.021179, 34.321022, 34.303947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643993, 34.483414, 33.945271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547005, 34.098190, 33.898407>,  <40.488811, 33.867058, 33.870289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547005, 34.098190, 33.898407>,  <40.643993, 34.483414, 33.945271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547005, 34.098190, 33.898407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069625, 0.137725, -0.988020,
		0.967657, -0.231408, -0.100447,
		-0.242470, -0.963059, -0.117159,
		40.474262, 33.809273, 33.863258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994480, 34.235302, 33.383331>,  <40.643993, 34.483414, 33.945271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994480, 34.235302, 33.383331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689701, 33.980930, 33.432381>,  <40.506836, 33.828308, 33.461811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689701, 33.980930, 33.432381>,  <40.994480, 34.235302, 33.383331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689701, 33.980930, 33.432381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085113, -0.089369, -0.992355,
		0.642024, -0.766557, 0.013969,
		-0.761945, -0.635927, 0.122621,
		40.461117, 33.790154, 33.469166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166241, 33.622391, 32.994308>,  <40.994480, 34.235302, 33.383331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166241, 33.622391, 32.994308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770378, 33.622986, 33.051685>,  <40.532860, 33.623344, 33.086113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770378, 33.622986, 33.051685>,  <41.166241, 33.622391, 32.994308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770378, 33.622986, 33.051685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134407, -0.359035, -0.923596,
		0.050126, -0.933323, 0.355521,
		-0.989658, 0.001488, 0.143442,
		40.473480, 33.623432, 33.094719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955750, 33.089794, 32.501553>,  <41.166241, 33.622391, 32.994308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955750, 33.089794, 32.501553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620171, 33.296066, 32.571114>,  <40.418823, 33.419830, 32.612850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620171, 33.296066, 32.571114>,  <40.955750, 33.089794, 32.501553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620171, 33.296066, 32.571114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281022, -0.136861, -0.949892,
		-0.466046, -0.845776, 0.259738,
		-0.838944, 0.515685, 0.173899,
		40.368488, 33.450771, 32.623283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428169, 32.683308, 32.123756>,  <40.955750, 33.089794, 32.501553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428169, 32.683308, 32.123756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271549, 33.044682, 32.193615>,  <40.177578, 33.261505, 32.235531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271549, 33.044682, 32.193615>,  <40.428169, 32.683308, 32.123756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271549, 33.044682, 32.193615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265389, 0.070855, -0.961535,
		-0.881055, -0.422836, 0.212017,
		-0.391549, 0.903432, 0.174643,
		40.154083, 33.315712, 32.246006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763168, 31.943054, 32.345043>,  <40.428169, 32.683308, 32.123756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763168, 31.943054, 32.345043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011883, 32.117645, 32.605156>,  <41.161110, 32.222401, 32.761223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011883, 32.117645, 32.605156>,  <40.763168, 31.943054, 32.345043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011883, 32.117645, 32.605156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782378, 0.383906, 0.490409,
		-0.035597, -0.813698, 0.580196,
		0.621786, 0.436476, 0.650286,
		41.198418, 32.248589, 32.800243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649799, 31.647118, 33.102493>,  <40.763168, 31.943054, 32.345043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649799, 31.647118, 33.102493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730507, 32.030373, 33.021240>,  <40.778931, 32.260326, 32.972488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730507, 32.030373, 33.021240>,  <40.649799, 31.647118, 33.102493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730507, 32.030373, 33.021240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909623, 0.260209, 0.323848,
		0.363148, 0.119432, 0.924045,
		0.201767, 0.958138, -0.203132,
		40.791039, 32.317814, 32.960300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046196, 31.118692, 33.326958>,  <40.649799, 31.647118, 33.102493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046196, 31.118692, 33.326958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225380, 31.145416, 32.970337>,  <41.332890, 31.161449, 32.756363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225380, 31.145416, 32.970337>,  <41.046196, 31.118692, 33.326958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225380, 31.145416, 32.970337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455444, -0.841064, -0.291859,
		-0.769354, 0.536794, -0.346334,
		0.447957, 0.066807, -0.891555,
		41.359768, 31.165459, 32.702869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712688, 31.414188, 33.652859>,  <41.046196, 31.118692, 33.326958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712688, 31.414188, 33.652859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460884, 31.532631, 33.940201>,  <41.309799, 31.603697, 34.112606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460884, 31.532631, 33.940201>,  <41.712688, 31.414188, 33.652859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460884, 31.532631, 33.940201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572214, -0.802119, -0.170809,
		0.525629, -0.518579, 0.674382,
		-0.629512, 0.296109, 0.718355,
		41.272030, 31.621464, 34.155708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106106, 32.197308, 33.754211>,  <41.712688, 31.414188, 33.652859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106106, 32.197308, 33.754211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289070, 32.462803, 33.990929>,  <42.398849, 32.622101, 34.132961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289070, 32.462803, 33.990929>,  <42.106106, 32.197308, 33.754211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289070, 32.462803, 33.990929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838186, -0.544085, -0.037620,
		0.297017, 0.513243, -0.805209,
		0.457411, 0.663742, 0.591796,
		42.426292, 32.661926, 34.168468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670933, 32.540401, 33.337791>,  <42.106106, 32.197308, 33.754211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670933, 32.540401, 33.337791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739689, 32.485611, 33.728008>,  <42.780945, 32.452736, 33.962139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739689, 32.485611, 33.728008>,  <42.670933, 32.540401, 33.337791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739689, 32.485611, 33.728008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778105, -0.588449, -0.219727,
		0.604156, 0.796847, 0.005430,
		0.171894, -0.136974, 0.975546,
		42.791256, 32.444519, 34.020672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318520, 32.860031, 33.545094>,  <42.670933, 32.540401, 33.337791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318520, 32.860031, 33.545094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206444, 32.534904, 33.749378>,  <43.139198, 32.339828, 33.871948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206444, 32.534904, 33.749378>,  <43.318520, 32.860031, 33.545094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206444, 32.534904, 33.749378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838779, -0.466033, -0.281536,
		0.466845, 0.349491, 0.812350,
		-0.280188, -0.812816, 0.510711,
		43.122387, 32.291061, 33.902592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509548, 33.333244, 33.085316>,  <43.318520, 32.860031, 33.545094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509548, 33.333244, 33.085316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248821, 33.316208, 33.388187>,  <43.092384, 33.305984, 33.569912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248821, 33.316208, 33.388187>,  <43.509548, 33.333244, 33.085316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248821, 33.316208, 33.388187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406281, 0.823449, 0.396065,
		-0.640367, 0.565790, -0.519434,
		-0.651817, -0.042591, 0.757179,
		43.053276, 33.303432, 33.615341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906418, 33.822330, 33.054054>,  <43.509548, 33.333244, 33.085316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906418, 33.822330, 33.054054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987110, 33.735676, 33.436127>,  <43.035526, 33.683685, 33.665371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987110, 33.735676, 33.436127>,  <42.906418, 33.822330, 33.054054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987110, 33.735676, 33.436127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522441, 0.848709, 0.082148,
		-0.828469, 0.482456, 0.284386,
		0.201728, -0.216633, 0.955184,
		43.047630, 33.670685, 33.722683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832844, 34.369995, 33.348751>,  <42.906418, 33.822330, 33.054054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832844, 34.369995, 33.348751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067585, 34.168858, 33.602600>,  <43.208431, 34.048176, 33.754910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067585, 34.168858, 33.602600>,  <42.832844, 34.369995, 33.348751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067585, 34.168858, 33.602600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626373, 0.778611, 0.037716,
		-0.513091, 0.375378, 0.771899,
		0.586852, -0.502848, 0.634625,
		43.243641, 34.018002, 33.792988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216515, 34.824585, 33.592976>,  <42.832844, 34.369995, 33.348751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216515, 34.824585, 33.592976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369545, 34.540863, 33.829800>,  <43.461361, 34.370632, 33.971893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369545, 34.540863, 33.829800>,  <43.216515, 34.824585, 33.592976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369545, 34.540863, 33.829800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626083, 0.670269, 0.398446,
		-0.679455, 0.218242, 0.700508,
		0.382571, -0.709302, 0.592056,
		43.484318, 34.328072, 34.007416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356354, 35.102551, 34.195061>,  <43.216515, 34.824585, 33.592976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356354, 35.102551, 34.195061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622608, 34.804054, 34.191933>,  <43.782360, 34.624958, 34.190056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622608, 34.804054, 34.191933>,  <43.356354, 35.102551, 34.195061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622608, 34.804054, 34.191933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691703, 0.612986, 0.381831,
		-0.280142, -0.259569, 0.924199,
		0.665633, -0.746239, -0.007821,
		43.822296, 34.580181, 34.189587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750469, 35.027027, 34.883694>,  <43.356354, 35.102551, 34.195061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750469, 35.027027, 34.883694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996662, 34.863670, 34.614059>,  <44.144379, 34.765656, 34.452278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996662, 34.863670, 34.614059>,  <43.750469, 35.027027, 34.883694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996662, 34.863670, 34.614059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785883, 0.382795, 0.485649,
		0.059701, -0.828663, 0.556555,
		0.615486, -0.408393, -0.674086,
		44.181309, 34.741154, 34.411835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246105, 34.500923, 35.206371>,  <43.750469, 35.027027, 34.883694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246105, 34.500923, 35.206371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400959, 34.716465, 34.907101>,  <44.493870, 34.845791, 34.727539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400959, 34.716465, 34.907101>,  <44.246105, 34.500923, 35.206371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400959, 34.716465, 34.907101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780891, 0.239831, 0.576793,
		0.490244, -0.807537, -0.327941,
		0.387131, 0.538856, -0.748174,
		44.517097, 34.878120, 34.682648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975559, 34.359261, 35.146973>,  <44.246105, 34.500923, 35.206371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975559, 34.359261, 35.146973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870518, 34.722980, 35.017841>,  <44.807495, 34.941212, 34.940361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870518, 34.722980, 35.017841>,  <44.975559, 34.359261, 35.146973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870518, 34.722980, 35.017841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613056, 0.415596, 0.671895,
		0.745119, -0.021474, -0.666585,
		-0.262602, 0.909296, -0.322833,
		44.791737, 34.995770, 34.920990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569874, 34.766315, 35.270340>,  <44.975559, 34.359261, 35.146973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569874, 34.766315, 35.270340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.285759, 35.047585, 35.257446>,  <45.115288, 35.216347, 35.249710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.285759, 35.047585, 35.257446>,  <45.569874, 34.766315, 35.270340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.285759, 35.047585, 35.257446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453826, 0.492469, 0.742641,
		0.538080, 0.512860, -0.668913,
		-0.710290, 0.703171, -0.032238,
		45.072674, 35.258537, 35.247776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.854626, 35.496170, 35.032196>,  <45.569874, 34.766315, 35.270340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.854626, 35.496170, 35.032196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585209, 35.475967, 35.327164>,  <45.423557, 35.463844, 35.504143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585209, 35.475967, 35.327164>,  <45.854626, 35.496170, 35.032196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585209, 35.475967, 35.327164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634811, 0.471513, 0.612120,
		-0.378621, 0.880411, -0.285521,
		-0.673544, -0.050510, 0.737419,
		45.383144, 35.460815, 35.548389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.322208, 35.598339, 35.602646>,  <45.854626, 35.496170, 35.032196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.322208, 35.598339, 35.602646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956997, 35.615070, 35.764946>,  <45.737869, 35.625107, 35.862324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956997, 35.615070, 35.764946>,  <46.322208, 35.598339, 35.602646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.956997, 35.615070, 35.764946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382286, 0.434671, 0.815425,
		-0.142261, 0.899618, -0.412856,
		-0.913027, 0.041826, 0.405748,
		45.683090, 35.627617, 35.886669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.969307, 35.998138, 35.397251>,  <46.322208, 35.598339, 35.602646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.969307, 35.998138, 35.397251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.958809, 36.214180, 35.733727>,  <46.952511, 36.343807, 35.935612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.958809, 36.214180, 35.733727>,  <46.969307, 35.998138, 35.397251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.958809, 36.214180, 35.733727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011439, 0.841260, -0.540509,
		-0.999590, -0.023809, -0.015901,
		-0.026246, 0.540106, 0.841188,
		46.950935, 36.376213, 35.986084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.421661, 35.401257, 35.467491>,  <46.969307, 35.998138, 35.397251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.421661, 35.401257, 35.467491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349682, 35.056976, 35.276993>,  <47.306496, 34.850407, 35.162693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349682, 35.056976, 35.276993>,  <47.421661, 35.401257, 35.467491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.349682, 35.056976, 35.276993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949130, -0.024739, -0.313911,
		0.258401, -0.508509, 0.821369,
		-0.179946, -0.860701, -0.476249,
		47.295696, 34.798767, 35.134117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.829247, 34.930260, 35.802635>,  <47.421661, 35.401257, 35.467491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.829247, 34.930260, 35.802635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.777412, 34.866856, 35.411110>,  <47.746311, 34.828815, 35.176193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.777412, 34.866856, 35.411110>,  <47.829247, 34.930260, 35.802635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.777412, 34.866856, 35.411110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969441, 0.187125, -0.158644,
		0.208307, -0.969464, 0.129414,
		-0.129584, -0.158506, -0.978818,
		47.738537, 34.819305, 35.117466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.880413, 31.251703, 24.770548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.678665, 31.596260, 24.794611>,  <34.557617, 31.802994, 24.809050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.678665, 31.596260, 24.794611>,  <34.880413, 31.251703, 24.770548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678665, 31.596260, 24.794611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095867, -0.013379, 0.995304,
		0.858150, 0.507768, -0.075831,
		-0.504369, 0.861390, 0.060159,
		34.527355, 31.854677, 24.812658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333195, 31.659964, 25.169395>,  <34.880413, 31.251703, 24.770548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333195, 31.659964, 25.169395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966545, 31.814093, 25.211958>,  <34.746555, 31.906570, 25.237495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966545, 31.814093, 25.211958>,  <35.333195, 31.659964, 25.169395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966545, 31.814093, 25.211958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106806, -0.020431, 0.994070,
		0.385212, 0.922555, -0.022427,
		-0.916627, 0.385323, 0.106404,
		34.691559, 31.929689, 25.243879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397057, 32.110638, 25.736490>,  <35.333195, 31.659964, 25.169395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397057, 32.110638, 25.736490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000980, 32.080753, 25.689264>,  <34.763336, 32.062824, 25.660929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000980, 32.080753, 25.689264>,  <35.397057, 32.110638, 25.736490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000980, 32.080753, 25.689264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129874, 0.180589, 0.974946,
		-0.051514, 0.980717, -0.188520,
		-0.990191, -0.074707, -0.118067,
		34.703922, 32.058342, 25.653845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164513, 32.537735, 26.238218>,  <35.397057, 32.110638, 25.736490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164513, 32.537735, 26.238218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832233, 32.333324, 26.149864>,  <34.632866, 32.210678, 26.096851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832233, 32.333324, 26.149864>,  <35.164513, 32.537735, 26.238218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832233, 32.333324, 26.149864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298639, 0.074184, 0.951479,
		-0.469849, 0.856355, -0.214238,
		-0.830697, -0.511031, -0.220885,
		34.583023, 32.180016, 26.083599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633881, 32.947392, 26.422144>,  <35.164513, 32.537735, 26.238218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633881, 32.947392, 26.422144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.509480, 32.567547, 26.437679>,  <34.434837, 32.339638, 26.447001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.509480, 32.567547, 26.437679>,  <34.633881, 32.947392, 26.422144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509480, 32.567547, 26.437679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008258, 0.038164, 0.999237,
		-0.950372, 0.311089, -0.004028,
		-0.311006, -0.949614, 0.038839,
		34.416180, 32.282661, 26.449331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073143, 32.922413, 26.782440>,  <34.633881, 32.947392, 26.422144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073143, 32.922413, 26.782440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.223751, 32.552380, 26.802273>,  <34.314114, 32.330360, 26.814173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.223751, 32.552380, 26.802273>,  <34.073143, 32.922413, 26.782440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223751, 32.552380, 26.802273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093895, 0.015138, 0.995467,
		-0.921639, -0.379465, -0.081161,
		0.376516, -0.925082, 0.049582,
		34.336704, 32.274857, 26.817148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589600, 32.602745, 27.170591>,  <34.073143, 32.922413, 26.782440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589600, 32.602745, 27.170591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.895367, 32.348347, 27.212870>,  <34.078827, 32.195709, 27.238237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.895367, 32.348347, 27.212870>,  <33.589600, 32.602745, 27.170591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895367, 32.348347, 27.212870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107485, 0.035932, 0.993557,
		-0.635696, -0.770855, -0.040893,
		0.764420, -0.635996, 0.105697,
		34.124691, 32.157547, 27.244579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474613, 32.258202, 27.827251>,  <33.589600, 32.602745, 27.170591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474613, 32.258202, 27.827251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.853134, 32.149708, 27.756891>,  <34.080246, 32.084614, 27.714674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.853134, 32.149708, 27.756891>,  <33.474613, 32.258202, 27.827251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853134, 32.149708, 27.756891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155371, -0.095573, 0.983222,
		-0.283494, -0.957757, -0.048299,
		0.946304, -0.271233, -0.175902,
		34.137024, 32.068336, 27.704121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653931, 31.720272, 28.348253>,  <33.474613, 32.258202, 27.827251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653931, 31.720272, 28.348253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.962948, 31.923113, 28.195404>,  <34.148357, 32.044819, 28.103695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.962948, 31.923113, 28.195404>,  <33.653931, 31.720272, 28.348253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962948, 31.923113, 28.195404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363026, 0.140997, 0.921049,
		0.520946, -0.850274, -0.075165,
		0.772546, 0.507104, -0.382124,
		34.194710, 32.075245, 28.080767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304031, 31.462713, 28.721075>,  <33.653931, 31.720272, 28.348253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304031, 31.462713, 28.721075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.378403, 31.835075, 28.595314>,  <34.423023, 32.058491, 28.519857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.378403, 31.835075, 28.595314>,  <34.304031, 31.462713, 28.721075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378403, 31.835075, 28.595314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466460, 0.197999, 0.862097,
		0.864781, -0.306941, -0.397416,
		0.185925, 0.930905, -0.314402,
		34.434181, 32.114346, 28.500994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998840, 31.555216, 28.538532>,  <34.304031, 31.462713, 28.721075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998840, 31.555216, 28.538532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.872925, 31.929178, 28.604086>,  <34.797375, 32.153557, 28.643417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.872925, 31.929178, 28.604086>,  <34.998840, 31.555216, 28.538532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872925, 31.929178, 28.604086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685233, 0.104372, 0.720807,
		0.656782, 0.339201, -0.673483,
		-0.314791, 0.934906, 0.163882,
		34.778488, 32.209652, 28.653250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566246, 31.884527, 28.886370>,  <34.998840, 31.555216, 28.538532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566246, 31.884527, 28.886370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.273308, 32.145153, 28.965496>,  <35.097546, 32.301529, 29.012972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.273308, 32.145153, 28.965496>,  <35.566246, 31.884527, 28.886370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273308, 32.145153, 28.965496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402279, 0.179599, 0.897728,
		0.549401, 0.737025, -0.393639,
		-0.732346, 0.651566, 0.197818,
		35.053604, 32.340622, 29.024841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923042, 32.479641, 29.143209>,  <35.566246, 31.884527, 28.886370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923042, 32.479641, 29.143209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.544769, 32.492458, 29.272612>,  <35.317806, 32.500149, 29.350254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.544769, 32.492458, 29.272612>,  <35.923042, 32.479641, 29.143209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544769, 32.492458, 29.272612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321851, 0.232387, 0.917828,
		-0.045772, 0.972096, -0.230076,
		-0.945683, 0.032039, 0.323507,
		35.261063, 32.502071, 29.369663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805943, 33.154068, 29.231899>,  <35.923042, 32.479641, 29.143209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805943, 33.154068, 29.231899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.595135, 32.913357, 29.471939>,  <35.468651, 32.768929, 29.615963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.595135, 32.913357, 29.471939>,  <35.805943, 33.154068, 29.231899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595135, 32.913357, 29.471939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509077, 0.341878, 0.789912,
		-0.680511, 0.721792, 0.126176,
		-0.527016, -0.601777, 0.600099,
		35.437031, 32.732822, 29.651968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834850, 33.457550, 29.875072>,  <35.805943, 33.154068, 29.231899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834850, 33.457550, 29.875072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.675465, 33.105587, 29.978598>,  <35.579834, 32.894409, 30.040712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.675465, 33.105587, 29.978598>,  <35.834850, 33.457550, 29.875072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675465, 33.105587, 29.978598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424329, 0.073314, 0.902535,
		-0.813126, 0.469447, 0.344159,
		-0.398461, -0.879912, 0.258814,
		35.555927, 32.841614, 30.056242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557896, 33.452099, 30.489128>,  <35.834850, 33.457550, 29.875072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557896, 33.452099, 30.489128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.653778, 33.066776, 30.440815>,  <35.711308, 32.835583, 30.411827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.653778, 33.066776, 30.440815>,  <35.557896, 33.452099, 30.489128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653778, 33.066776, 30.440815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406659, -0.013345, 0.913483,
		-0.881573, -0.268082, 0.388537,
		0.239703, -0.963304, -0.120782,
		35.725689, 32.777786, 30.404581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373077, 33.162952, 31.118320>,  <35.557896, 33.452099, 30.489128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373077, 33.162952, 31.118320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614372, 32.897015, 30.942095>,  <35.759148, 32.737453, 30.836359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614372, 32.897015, 30.942095>,  <35.373077, 33.162952, 31.118320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614372, 32.897015, 30.942095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523161, -0.087100, 0.847771,
		-0.602006, -0.741889, 0.295277,
		0.603234, -0.664841, -0.440562,
		35.795341, 32.697563, 30.809927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335350, 32.570122, 31.515045>,  <35.373077, 33.162952, 31.118320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335350, 32.570122, 31.515045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677414, 32.562187, 31.307852>,  <35.882652, 32.557426, 31.183535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677414, 32.562187, 31.307852>,  <35.335350, 32.570122, 31.515045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677414, 32.562187, 31.307852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507350, -0.172869, 0.844223,
		-0.106291, -0.984745, -0.137766,
		0.855160, -0.019838, -0.517985,
		35.933960, 32.556236, 31.152456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561584, 31.983379, 31.805439>,  <35.335350, 32.570122, 31.515045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561584, 31.983379, 31.805439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881989, 32.142933, 31.626879>,  <36.074230, 32.238663, 31.519743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881989, 32.142933, 31.626879>,  <35.561584, 31.983379, 31.805439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881989, 32.142933, 31.626879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593784, -0.434493, 0.677227,
		0.076175, -0.807533, -0.584883,
		0.801011, 0.398882, -0.446402,
		36.122292, 32.262596, 31.492958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168427, 31.399200, 31.735289>,  <35.561584, 31.983379, 31.805439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168427, 31.399200, 31.735289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364452, 31.747593, 31.721289>,  <36.482067, 31.956629, 31.712889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364452, 31.747593, 31.721289>,  <36.168427, 31.399200, 31.735289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364452, 31.747593, 31.721289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673931, -0.353119, 0.648940,
		0.552857, -0.341611, -0.760034,
		0.490067, 0.870982, -0.034998,
		36.511471, 32.008888, 31.710789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803333, 31.147264, 31.566515>,  <36.168427, 31.399200, 31.735289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803333, 31.147264, 31.566515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827488, 31.514782, 31.722551>,  <36.841980, 31.735292, 31.816174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827488, 31.514782, 31.722551>,  <36.803333, 31.147264, 31.566515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827488, 31.514782, 31.722551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811492, -0.272755, 0.516803,
		0.581234, 0.285349, -0.762065,
		0.060388, 0.918793, 0.390093,
		36.845604, 31.790421, 31.839579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445183, 31.447029, 31.454100>,  <36.803333, 31.147264, 31.566515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445183, 31.447029, 31.454100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295013, 31.628466, 31.777411>,  <37.204910, 31.737328, 31.971397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295013, 31.628466, 31.777411>,  <37.445183, 31.447029, 31.454100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295013, 31.628466, 31.777411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806669, -0.269559, 0.525949,
		0.456445, 0.849465, -0.264701,
		-0.375423, 0.453593, 0.808277,
		37.182388, 31.764544, 32.019894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847263, 32.149670, 31.415075>,  <37.445183, 31.447029, 31.454100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847263, 32.149670, 31.415075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.068005, 31.888075, 31.622059>,  <38.200447, 31.731117, 31.746248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.068005, 31.888075, 31.622059>,  <37.847263, 32.149670, 31.415075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068005, 31.888075, 31.622059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458741, -0.280120, -0.843261,
		0.696433, 0.702732, 0.145428,
		0.551849, -0.653988, 0.517457,
		38.233559, 31.691879, 31.777296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501938, 32.242271, 31.186710>,  <37.847263, 32.149670, 31.415075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501938, 32.242271, 31.186710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483074, 31.867218, 31.324480>,  <38.471756, 31.642187, 31.407141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483074, 31.867218, 31.324480>,  <38.501938, 32.242271, 31.186710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483074, 31.867218, 31.324480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296417, -0.342411, -0.891567,
		0.953893, 0.060045, 0.294078,
		-0.047161, -0.937629, 0.344422,
		38.468925, 31.585930, 31.427807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962322, 31.974169, 30.831490>,  <38.501938, 32.242271, 31.186710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962322, 31.974169, 30.831490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.745808, 31.661180, 30.954617>,  <38.615898, 31.473387, 31.028492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.745808, 31.661180, 30.954617>,  <38.962322, 31.974169, 30.831490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745808, 31.661180, 30.954617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104505, -0.425849, -0.898739,
		0.834321, -0.454303, 0.312277,
		-0.541282, -0.782472, 0.307818,
		38.583424, 31.426439, 31.046963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364204, 31.438358, 30.627604>,  <38.962322, 31.974169, 30.831490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364204, 31.438358, 30.627604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.005257, 31.273783, 30.691412>,  <38.789890, 31.175037, 30.729698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.005257, 31.273783, 30.691412>,  <39.364204, 31.438358, 30.627604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005257, 31.273783, 30.691412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021510, -0.320284, -0.947077,
		0.440759, -0.853308, 0.278562,
		-0.897367, -0.411441, 0.159523,
		38.736046, 31.150351, 30.739269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394974, 30.813309, 30.299936>,  <39.364204, 31.438358, 30.627604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394974, 30.813309, 30.299936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002724, 30.878616, 30.343227>,  <38.767372, 30.917801, 30.369202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002724, 30.878616, 30.343227>,  <39.394974, 30.813309, 30.299936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002724, 30.878616, 30.343227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152656, -0.290767, -0.944537,
		-0.122743, -0.942761, 0.310058,
		-0.980628, 0.163268, 0.108228,
		38.708534, 30.927597, 30.375696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070892, 30.146046, 30.071056>,  <39.394974, 30.813309, 30.299936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070892, 30.146046, 30.071056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794971, 30.432713, 30.029943>,  <38.629421, 30.604713, 30.005276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794971, 30.432713, 30.029943>,  <39.070892, 30.146046, 30.071056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794971, 30.432713, 30.029943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180029, -0.307295, -0.934430,
		-0.701262, -0.626064, 0.340993,
		-0.689798, 0.716669, -0.102784,
		38.588032, 30.647713, 29.999107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435299, 29.851025, 29.839165>,  <39.070892, 30.146046, 30.071056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435299, 29.851025, 29.839165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392818, 30.234783, 29.734644>,  <38.367329, 30.465038, 29.671930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392818, 30.234783, 29.734644>,  <38.435299, 29.851025, 29.839165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392818, 30.234783, 29.734644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389066, -0.281932, -0.877007,
		-0.915067, 0.008523, 0.403211,
		-0.106203, 0.959397, -0.261303,
		38.360958, 30.522602, 29.656254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735218, 29.927357, 29.551800>,  <38.435299, 29.851025, 29.839165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735218, 29.927357, 29.551800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.948849, 30.237099, 29.416077>,  <38.077026, 30.422945, 29.334642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.948849, 30.237099, 29.416077>,  <37.735218, 29.927357, 29.551800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948849, 30.237099, 29.416077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429339, -0.097318, -0.897885,
		-0.728303, 0.625221, 0.280486,
		0.534080, 0.774356, -0.339309,
		38.109074, 30.469406, 29.314283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259659, 30.225185, 29.161505>,  <37.735218, 29.927357, 29.551800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259659, 30.225185, 29.161505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.609901, 30.366838, 29.030113>,  <37.820049, 30.451830, 28.951279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.609901, 30.366838, 29.030113>,  <37.259659, 30.225185, 29.161505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609901, 30.366838, 29.030113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344606, -0.018514, -0.938565,
		-0.338456, 0.935013, 0.105825,
		0.875611, 0.354131, -0.328477,
		37.872585, 30.473078, 28.931570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153851, 30.582479, 28.563221>,  <37.259659, 30.225185, 29.161505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153851, 30.582479, 28.563221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550743, 30.570415, 28.514944>,  <37.788879, 30.563177, 28.485979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550743, 30.570415, 28.514944>,  <37.153851, 30.582479, 28.563221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550743, 30.570415, 28.514944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124017, -0.163588, -0.978703,
		0.009773, 0.986068, -0.166057,
		0.992232, -0.030159, -0.120690,
		37.848412, 30.561367, 28.478737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315071, 31.142399, 28.157841>,  <37.153851, 30.582479, 28.563221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315071, 31.142399, 28.157841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622971, 30.890490, 28.116140>,  <37.807713, 30.739344, 28.091120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622971, 30.890490, 28.116140>,  <37.315071, 31.142399, 28.157841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622971, 30.890490, 28.116140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227902, -0.118579, -0.966437,
		0.596272, 0.767676, -0.234802,
		0.769753, -0.629772, -0.104250,
		37.853897, 30.701557, 28.084866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646336, 31.391272, 27.568512>,  <37.315071, 31.142399, 28.157841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646336, 31.391272, 27.568512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.790535, 31.021755, 27.620127>,  <37.877056, 30.800045, 27.651096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.790535, 31.021755, 27.620127>,  <37.646336, 31.391272, 27.568512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790535, 31.021755, 27.620127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163581, -0.198811, -0.966290,
		0.918304, 0.327237, -0.222785,
		0.360498, -0.923791, 0.129039,
		37.898685, 30.744617, 27.658838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306477, 31.308929, 27.147295>,  <37.646336, 31.391272, 27.568512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306477, 31.308929, 27.147295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.162533, 30.942095, 27.215944>,  <38.076168, 30.721994, 27.257133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.162533, 30.942095, 27.215944>,  <38.306477, 31.308929, 27.147295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162533, 30.942095, 27.215944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019849, -0.191428, -0.981306,
		0.932797, -0.349723, 0.087090,
		-0.359857, -0.917087, 0.171622,
		38.054577, 30.666969, 27.267431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737923, 30.841234, 26.703230>,  <38.306477, 31.308929, 27.147295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737923, 30.841234, 26.703230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.407627, 30.627226, 26.774681>,  <38.209450, 30.498821, 26.817553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.407627, 30.627226, 26.774681>,  <38.737923, 30.841234, 26.703230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407627, 30.627226, 26.774681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088095, -0.190477, -0.977731,
		0.557133, -0.823085, 0.110151,
		-0.825737, -0.535023, 0.178630,
		38.159904, 30.466719, 26.828270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764469, 30.095808, 26.348780>,  <38.737923, 30.841234, 26.703230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764469, 30.095808, 26.348780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373890, 30.135193, 26.425575>,  <38.139542, 30.158825, 26.471653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373890, 30.135193, 26.425575>,  <38.764469, 30.095808, 26.348780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373890, 30.135193, 26.425575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208035, -0.193597, -0.958771,
		-0.057235, -0.976127, 0.209521,
		-0.976445, 0.098463, 0.191988,
		38.080956, 30.164732, 26.483171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442715, 29.522495, 25.940710>,  <38.764469, 30.095808, 26.348780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442715, 29.522495, 25.940710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.115459, 29.732681, 26.034122>,  <37.919106, 29.858793, 26.090170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.115459, 29.732681, 26.034122>,  <38.442715, 29.522495, 25.940710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115459, 29.732681, 26.034122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441153, -0.313084, -0.841048,
		-0.368832, -0.791113, 0.487958,
		-0.818136, 0.525470, 0.233526,
		37.870018, 29.890322, 26.104181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719044, 29.086828, 25.782351>,  <38.442715, 29.522495, 25.940710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719044, 29.086828, 25.782351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664661, 29.478752, 25.723715>,  <37.632030, 29.713907, 25.688534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664661, 29.478752, 25.723715>,  <37.719044, 29.086828, 25.782351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664661, 29.478752, 25.723715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569176, -0.198357, -0.797931,
		-0.810898, -0.025046, 0.584652,
		-0.135955, 0.979810, -0.146591,
		37.623875, 29.772696, 25.679737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025944, 29.157164, 25.506851>,  <37.719044, 29.086828, 25.782351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025944, 29.157164, 25.506851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.166660, 29.520641, 25.416945>,  <37.251091, 29.738728, 25.363001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.166660, 29.520641, 25.416945>,  <37.025944, 29.157164, 25.506851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166660, 29.520641, 25.416945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499108, -0.021052, -0.866284,
		-0.791919, 0.416931, 0.446131,
		0.351789, 0.908695, -0.224766,
		37.272198, 29.793249, 25.349514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.367729, 29.695240, 25.334774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692146, 29.874781, 25.184711>,  <36.886795, 29.982506, 25.094673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692146, 29.874781, 25.184711>,  <36.367729, 29.695240, 25.334774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692146, 29.874781, 25.184711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484091, 0.154920, -0.861194,
		-0.328429, 0.880075, 0.342931,
		0.811043, 0.448851, -0.375156,
		36.935459, 30.009436, 25.072165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096313, 30.233938, 25.031435>,  <36.367729, 29.695240, 25.334774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096313, 30.233938, 25.031435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.456833, 30.230742, 24.858185>,  <36.673145, 30.228825, 24.754234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.456833, 30.230742, 24.858185>,  <36.096313, 30.233938, 25.031435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456833, 30.230742, 24.858185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412293, 0.291044, -0.863312,
		0.132958, 0.956676, 0.259023,
		0.901297, -0.007990, -0.433127,
		36.727222, 30.228344, 24.728247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141968, 30.880028, 24.701483>,  <36.096313, 30.233938, 25.031435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141968, 30.880028, 24.701483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.399456, 30.629385, 24.525759>,  <36.553947, 30.479000, 24.420324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.399456, 30.629385, 24.525759>,  <36.141968, 30.880028, 24.701483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399456, 30.629385, 24.525759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369623, 0.248077, -0.895453,
		0.670077, 0.738799, -0.071915,
		0.643720, -0.626605, -0.439308,
		36.592571, 30.441404, 24.393967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422363, 31.237028, 24.135302>,  <36.141968, 30.880028, 24.701483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422363, 31.237028, 24.135302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.503593, 30.854740, 24.050116>,  <36.552334, 30.625366, 23.999004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.503593, 30.854740, 24.050116>,  <36.422363, 31.237028, 24.135302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503593, 30.854740, 24.050116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332961, 0.137135, -0.932915,
		0.920813, 0.260363, -0.290369,
		0.203077, -0.955722, -0.212967,
		36.564518, 30.568024, 23.986225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753750, 31.266582, 23.488405>,  <36.422363, 31.237028, 24.135302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753750, 31.266582, 23.488405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640995, 30.883085, 23.503099>,  <36.573341, 30.652987, 23.511915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640995, 30.883085, 23.503099>,  <36.753750, 31.266582, 23.488405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640995, 30.883085, 23.503099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302746, 0.052552, -0.951621,
		0.910430, -0.279374, -0.305069,
		-0.281890, -0.958743, 0.036735,
		36.556427, 30.595463, 23.514120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865536, 30.962862, 22.852837>,  <36.753750, 31.266582, 23.488405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865536, 30.962862, 22.852837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.593307, 30.715080, 23.009350>,  <36.429970, 30.566412, 23.103258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.593307, 30.715080, 23.009350>,  <36.865536, 30.962862, 22.852837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593307, 30.715080, 23.009350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372408, -0.167451, -0.912838,
		0.630980, -0.766967, -0.116727,
		-0.680571, -0.619452, 0.391283,
		36.389137, 30.529245, 23.126734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847034, 30.353098, 22.479845>,  <36.865536, 30.962862, 22.852837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847034, 30.353098, 22.479845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483902, 30.372156, 22.646490>,  <36.266022, 30.383591, 22.746477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483902, 30.372156, 22.646490>,  <36.847034, 30.353098, 22.479845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483902, 30.372156, 22.646490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417737, -0.189219, -0.888646,
		0.036493, -0.980778, 0.191682,
		-0.907835, 0.047643, 0.416612,
		36.211552, 30.386450, 22.771473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409939, 29.964186, 22.107708>,  <36.847034, 30.353098, 22.479845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409939, 29.964186, 22.107708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.131149, 30.181652, 22.294752>,  <35.963875, 30.312132, 22.406979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.131149, 30.181652, 22.294752>,  <36.409939, 29.964186, 22.107708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131149, 30.181652, 22.294752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566596, -0.017805, -0.823803,
		-0.439548, -0.839113, 0.320448,
		-0.696969, 0.543666, 0.467612,
		35.922058, 30.344751, 22.435036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735985, 29.583679, 22.014830>,  <36.409939, 29.964186, 22.107708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735985, 29.583679, 22.014830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657116, 29.970366, 22.080050>,  <35.609795, 30.202377, 22.119183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657116, 29.970366, 22.080050>,  <35.735985, 29.583679, 22.014830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657116, 29.970366, 22.080050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546133, 0.029812, -0.837168,
		-0.814163, -0.254113, 0.522077,
		-0.197171, 0.966715, 0.163052,
		35.597965, 30.260380, 22.128965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059067, 29.657696, 21.824301>,  <35.735985, 29.583679, 22.014830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059067, 29.657696, 21.824301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195740, 30.033340, 21.809742>,  <35.277744, 30.258728, 21.801006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195740, 30.033340, 21.809742>,  <35.059067, 29.657696, 21.824301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195740, 30.033340, 21.809742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532390, 0.161496, -0.830951,
		-0.774478, 0.303297, 0.555153,
		0.341680, 0.939111, -0.036397,
		35.298244, 30.315073, 21.798822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468670, 30.043917, 21.498625>,  <35.059067, 29.657696, 21.824301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468670, 30.043917, 21.498625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791115, 30.280611, 21.496078>,  <34.984581, 30.422626, 21.494551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791115, 30.280611, 21.496078>,  <34.468670, 30.043917, 21.498625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791115, 30.280611, 21.496078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244892, 0.323776, -0.913891,
		-0.538719, 0.738254, 0.405909,
		0.806108, 0.591734, -0.006368,
		35.032948, 30.458132, 21.494167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320915, 30.820280, 21.477562>,  <34.468670, 30.043917, 21.498625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320915, 30.820280, 21.477562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.686623, 30.781481, 21.320230>,  <34.906048, 30.758202, 21.225832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.686623, 30.781481, 21.320230>,  <34.320915, 30.820280, 21.477562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686623, 30.781481, 21.320230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350556, 0.297200, -0.888134,
		0.203046, 0.949875, 0.237716,
		0.914266, -0.096999, -0.393330,
		34.960903, 30.752380, 21.202232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442207, 31.360346, 21.041372>,  <34.320915, 30.820280, 21.477562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442207, 31.360346, 21.041372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.712849, 31.089245, 20.926231>,  <34.875233, 30.926584, 20.857147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.712849, 31.089245, 20.926231>,  <34.442207, 31.360346, 21.041372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712849, 31.089245, 20.926231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218008, 0.189012, -0.957469,
		0.703335, 0.710581, -0.019869,
		0.676603, -0.677754, -0.287851,
		34.915829, 30.885920, 20.839876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769825, 31.616169, 20.529177>,  <34.442207, 31.360346, 21.041372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769825, 31.616169, 20.529177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.836121, 31.224258, 20.484337>,  <34.875900, 30.989111, 20.457434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.836121, 31.224258, 20.484337>,  <34.769825, 31.616169, 20.529177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836121, 31.224258, 20.484337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105461, 0.095411, -0.989836,
		0.980514, 0.175879, -0.087515,
		0.165741, -0.979777, -0.112100,
		34.885841, 30.930325, 20.450706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152916, 31.547312, 19.905849>,  <34.769825, 31.616169, 20.529177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152916, 31.547312, 19.905849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032192, 31.166626, 19.928305>,  <34.959759, 30.938215, 19.941778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032192, 31.166626, 19.928305>,  <35.152916, 31.547312, 19.905849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032192, 31.166626, 19.928305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058581, -0.040257, -0.997471,
		0.951567, -0.304335, -0.043602,
		-0.301810, -0.951714, 0.056136,
		34.941650, 30.881111, 19.945145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482563, 31.159113, 19.382524>,  <35.152916, 31.547312, 19.905849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482563, 31.159113, 19.382524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172157, 30.926655, 19.480564>,  <34.985912, 30.787180, 19.539387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172157, 30.926655, 19.480564>,  <35.482563, 31.159113, 19.382524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172157, 30.926655, 19.480564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219888, -0.114941, -0.968730,
		0.591143, -0.805643, -0.038591,
		-0.776015, -0.581144, 0.245098,
		34.939354, 30.752312, 19.554094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578518, 30.480047, 19.091513>,  <35.482563, 31.159113, 19.382524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578518, 30.480047, 19.091513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192356, 30.571527, 19.141621>,  <34.960659, 30.626415, 19.171686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192356, 30.571527, 19.141621>,  <35.578518, 30.480047, 19.091513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192356, 30.571527, 19.141621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160893, -0.144376, -0.976355,
		-0.205209, -0.962731, 0.176178,
		-0.965403, 0.228702, 0.125269,
		34.902737, 30.640137, 19.179201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308655, 30.057062, 18.652943>,  <35.578518, 30.480047, 19.091513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308655, 30.057062, 18.652943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.022579, 30.329123, 18.717325>,  <34.850933, 30.492359, 18.755955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.022579, 30.329123, 18.717325>,  <35.308655, 30.057062, 18.652943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022579, 30.329123, 18.717325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254284, -0.038697, -0.966355,
		-0.651038, -0.732051, 0.200627,
		-0.715185, 0.680150, 0.160955,
		34.808025, 30.533167, 18.765612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824890, 29.733950, 18.360008>,  <35.308655, 30.057062, 18.652943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824890, 29.733950, 18.360008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708649, 30.116478, 18.372616>,  <34.638905, 30.345995, 18.380180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708649, 30.116478, 18.372616>,  <34.824890, 29.733950, 18.360008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708649, 30.116478, 18.372616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245477, -0.042677, -0.968463,
		-0.924818, -0.289180, 0.247157,
		-0.290607, 0.956323, 0.031519,
		34.621468, 30.403376, 18.382071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306950, 29.753237, 17.810726>,  <34.824890, 29.733950, 18.360008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306950, 29.753237, 17.810726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.345795, 30.149221, 17.851809>,  <34.369102, 30.386812, 17.876457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.345795, 30.149221, 17.851809>,  <34.306950, 29.753237, 17.810726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345795, 30.149221, 17.851809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189571, 0.119701, -0.974543,
		-0.977053, 0.075167, 0.199292,
		0.097109, 0.989961, 0.102704,
		34.374928, 30.446209, 17.882620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794285, 30.106604, 17.317739>,  <34.306950, 29.753237, 17.810726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794285, 30.106604, 17.317739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.050442, 30.404192, 17.394060>,  <34.204136, 30.582745, 17.439852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.050442, 30.404192, 17.394060>,  <33.794285, 30.106604, 17.317739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050442, 30.404192, 17.394060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204924, 0.404925, -0.891091,
		-0.740205, 0.531548, 0.411768,
		0.640393, 0.743971, 0.190801,
		34.242561, 30.627384, 17.451300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479168, 30.759636, 17.115908>,  <33.794285, 30.106604, 17.317739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479168, 30.759636, 17.115908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872471, 30.826807, 17.087608>,  <34.108452, 30.867109, 17.070629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872471, 30.826807, 17.087608>,  <33.479168, 30.759636, 17.115908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872471, 30.826807, 17.087608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147234, 0.503391, -0.851422,
		-0.107364, 0.847584, 0.519687,
		0.983257, 0.167928, -0.070747,
		34.167450, 30.877186, 17.066383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522079, 31.476124, 16.881876>,  <33.479168, 30.759636, 17.115908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522079, 31.476124, 16.881876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847046, 31.262171, 16.789030>,  <34.042027, 31.133799, 16.733322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847046, 31.262171, 16.789030>,  <33.522079, 31.476124, 16.881876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847046, 31.262171, 16.789030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042341, 0.342916, -0.938411,
		0.581537, 0.772209, 0.255943,
		0.812417, -0.534885, -0.232114,
		34.090771, 31.101706, 16.719397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017956, 32.058968, 16.464783>,  <33.522079, 31.476124, 16.881876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017956, 32.058968, 16.464783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999538, 32.451649, 16.538683>,  <32.988487, 32.687260, 16.583023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999538, 32.451649, 16.538683>,  <33.017956, 32.058968, 16.464783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999538, 32.451649, 16.538683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261099, -0.166690, 0.950811,
		0.964213, 0.092018, -0.248648,
		-0.046045, 0.981706, 0.184751,
		32.985725, 32.746162, 16.594109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572945, 32.275017, 16.908592>,  <33.017956, 32.058968, 16.464783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572945, 32.275017, 16.908592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.306419, 32.569683, 16.954803>,  <33.146503, 32.746483, 16.982531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.306419, 32.569683, 16.954803>,  <33.572945, 32.275017, 16.908592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306419, 32.569683, 16.954803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178940, 0.007561, 0.983831,
		0.723882, 0.676214, -0.136857,
		-0.666315, 0.736666, 0.115528,
		33.106525, 32.790684, 16.989462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941948, 32.761353, 17.308676>,  <33.572945, 32.275017, 16.908592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941948, 32.761353, 17.308676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551857, 32.843613, 17.341280>,  <33.317802, 32.892967, 17.360842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551857, 32.843613, 17.341280>,  <33.941948, 32.761353, 17.308676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551857, 32.843613, 17.341280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104508, 0.103561, 0.989117,
		0.194967, 0.973132, -0.122487,
		-0.975226, 0.205646, 0.081509,
		33.259289, 32.905308, 17.365732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930317, 33.390026, 17.773714>,  <33.941948, 32.761353, 17.308676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930317, 33.390026, 17.773714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561050, 33.236721, 17.761852>,  <33.339493, 33.144737, 17.754736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561050, 33.236721, 17.761852>,  <33.930317, 33.390026, 17.773714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561050, 33.236721, 17.761852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149823, 0.287685, 0.945934,
		-0.354014, 0.877693, -0.323002,
		-0.923162, -0.383267, -0.029654,
		33.284103, 33.121742, 17.752956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371265, 33.893604, 18.222702>,  <33.930317, 33.390026, 17.773714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371265, 33.893604, 18.222702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213058, 33.526394, 18.211414>,  <33.118134, 33.306068, 18.204641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213058, 33.526394, 18.211414>,  <33.371265, 33.893604, 18.222702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213058, 33.526394, 18.211414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287465, 0.094553, 0.953112,
		-0.872314, 0.385081, -0.301298,
		-0.395514, -0.918026, -0.028217,
		33.094406, 33.250984, 18.202950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674927, 33.920372, 18.675091>,  <33.371265, 33.893604, 18.222702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674927, 33.920372, 18.675091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.799400, 33.540638, 18.657549>,  <32.874084, 33.312798, 18.647024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.799400, 33.540638, 18.657549>,  <32.674927, 33.920372, 18.675091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799400, 33.540638, 18.657549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431101, -0.182135, 0.883730,
		-0.846944, -0.256100, -0.465938,
		0.311187, -0.949336, -0.043853,
		32.892757, 33.255836, 18.644392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118355, 33.467148, 19.030863>,  <32.674927, 33.920372, 18.675091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118355, 33.467148, 19.030863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466854, 33.270878, 19.025661>,  <32.675953, 33.153118, 19.022541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466854, 33.270878, 19.025661>,  <32.118355, 33.467148, 19.030863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466854, 33.270878, 19.025661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093000, -0.191025, 0.977169,
		-0.481953, -0.850147, -0.212063,
		0.871248, -0.490672, -0.013001,
		32.728230, 33.123676, 19.021761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898571, 32.972942, 19.453022>,  <32.118355, 33.467148, 19.030863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898571, 32.972942, 19.453022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.297756, 32.974915, 19.427567>,  <32.537266, 32.976097, 19.412292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.297756, 32.974915, 19.427567>,  <31.898571, 32.972942, 19.453022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297756, 32.974915, 19.427567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063455, -0.184528, 0.980777,
		-0.006902, -0.982815, -0.184465,
		0.997961, 0.004935, -0.063638,
		32.597145, 32.976395, 19.408476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047340, 32.496323, 19.921007>,  <31.898571, 32.972942, 19.453022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047340, 32.496323, 19.921007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.393093, 32.690666, 19.869188>,  <32.600544, 32.807270, 19.838097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.393093, 32.690666, 19.869188>,  <32.047340, 32.496323, 19.921007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393093, 32.690666, 19.869188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218422, -0.130743, 0.967056,
		0.452912, -0.864205, -0.219134,
		0.864386, 0.485855, -0.129546,
		32.652409, 32.836422, 19.830324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592300, 32.042820, 20.105478>,  <32.047340, 32.496323, 19.921007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592300, 32.042820, 20.105478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762489, 32.400814, 20.159117>,  <32.864601, 32.615608, 20.191299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762489, 32.400814, 20.159117>,  <32.592300, 32.042820, 20.105478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762489, 32.400814, 20.159117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329529, -0.291223, 0.898109,
		0.842843, -0.337930, -0.418830,
		0.425471, 0.894982, 0.134097,
		32.890129, 32.669308, 20.199347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231819, 31.944401, 20.367886>,  <32.592300, 32.042820, 20.105478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231819, 31.944401, 20.367886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207237, 32.331398, 20.466009>,  <33.192490, 32.563599, 20.524883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207237, 32.331398, 20.466009>,  <33.231819, 31.944401, 20.367886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207237, 32.331398, 20.466009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390899, -0.202814, 0.897811,
		0.918380, 0.151062, -0.365730,
		-0.061450, 0.967495, 0.245310,
		33.188801, 32.621647, 20.539602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955002, 32.091305, 20.523718>,  <33.231819, 31.944401, 20.367886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955002, 32.091305, 20.523718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.737854, 32.374344, 20.704651>,  <33.607567, 32.544167, 20.813211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.737854, 32.374344, 20.704651>,  <33.955002, 32.091305, 20.523718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737854, 32.374344, 20.704651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526386, -0.132988, 0.839781,
		0.654378, 0.693992, -0.300273,
		-0.542869, 0.707594, 0.452332,
		33.574993, 32.586620, 20.840351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379944, 32.470177, 20.945511>,  <33.955002, 32.091305, 20.523718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379944, 32.470177, 20.945511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024521, 32.538689, 21.115747>,  <33.811268, 32.579796, 21.217890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024521, 32.538689, 21.115747>,  <34.379944, 32.470177, 20.945511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024521, 32.538689, 21.115747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425669, -0.038140, 0.904075,
		0.171084, 0.984484, -0.039019,
		-0.888559, 0.171282, 0.425589,
		33.757954, 32.590073, 21.243423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551250, 32.986507, 21.428478>,  <34.379944, 32.470177, 20.945511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551250, 32.986507, 21.428478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195087, 32.850761, 21.549803>,  <33.981388, 32.769314, 21.622597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195087, 32.850761, 21.549803>,  <34.551250, 32.986507, 21.428478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195087, 32.850761, 21.549803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333864, -0.034048, 0.942006,
		-0.309355, 0.940039, 0.143618,
		-0.890412, -0.339364, 0.303312,
		33.927963, 32.748951, 21.640797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348248, 33.385109, 22.031212>,  <34.551250, 32.986507, 21.428478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348248, 33.385109, 22.031212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.116608, 33.062271, 22.077232>,  <33.977623, 32.868568, 22.104845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.116608, 33.062271, 22.077232>,  <34.348248, 33.385109, 22.031212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116608, 33.062271, 22.077232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213693, -0.014086, 0.976799,
		-0.786749, 0.590254, 0.180628,
		-0.579104, -0.807095, 0.115051,
		33.942875, 32.820141, 22.111748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987209, 33.385246, 22.695778>,  <34.348248, 33.385109, 22.031212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987209, 33.385246, 22.695778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960106, 32.999634, 22.592979>,  <33.943844, 32.768265, 22.531300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960106, 32.999634, 22.592979>,  <33.987209, 33.385246, 22.695778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960106, 32.999634, 22.592979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095623, -0.262678, 0.960133,
		-0.993109, 0.040483, 0.109982,
		-0.067759, -0.964034, -0.256997,
		33.939777, 32.710423, 22.515881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598995, 33.140392, 23.284956>,  <33.987209, 33.385246, 22.695778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598995, 33.140392, 23.284956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730293, 32.798733, 23.123617>,  <33.809071, 32.593739, 23.026814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730293, 32.798733, 23.123617>,  <33.598995, 33.140392, 23.284956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730293, 32.798733, 23.123617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040371, -0.413932, 0.909412,
		-0.943730, -0.314793, -0.101388,
		0.328245, -0.854146, -0.403348,
		33.828766, 32.542488, 23.002613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144848, 32.644939, 23.505247>,  <33.598995, 33.140392, 23.284956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144848, 32.644939, 23.505247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.494682, 32.469547, 23.422459>,  <33.704582, 32.364311, 23.372786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.494682, 32.469547, 23.422459>,  <33.144848, 32.644939, 23.505247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494682, 32.469547, 23.422459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019847, -0.394127, 0.918842,
		-0.484464, -0.807714, -0.335995,
		0.874586, -0.438478, -0.206971,
		33.757057, 32.338005, 23.360367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191299, 32.055630, 23.910942>,  <33.144848, 32.644939, 23.505247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191299, 32.055630, 23.910942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573631, 32.105427, 23.804440>,  <33.803032, 32.135307, 23.740538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573631, 32.105427, 23.804440>,  <33.191299, 32.055630, 23.910942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573631, 32.105427, 23.804440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292592, -0.316827, 0.902225,
		0.027965, -0.940277, -0.339259,
		0.955828, 0.124496, -0.266258,
		33.860378, 32.142776, 23.724562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547554, 31.409349, 24.061201>,  <33.191299, 32.055630, 23.910942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547554, 31.409349, 24.061201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.808102, 31.712587, 24.073887>,  <33.964432, 31.894531, 24.081499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.808102, 31.712587, 24.073887>,  <33.547554, 31.409349, 24.061201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808102, 31.712587, 24.073887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302641, -0.297912, 0.905349,
		0.695791, -0.580119, -0.423482,
		0.651370, 0.758096, 0.031716,
		34.003513, 31.940016, 24.083403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170872, 31.142197, 24.447353>,  <33.547554, 31.409349, 24.061201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170872, 31.142197, 24.447353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.218380, 31.539352, 24.450489>,  <34.246883, 31.777647, 24.452370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.218380, 31.539352, 24.450489>,  <34.170872, 31.142197, 24.447353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218380, 31.539352, 24.450489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372947, -0.051924, 0.926399,
		0.920220, -0.107104, -0.376463,
		0.118768, 0.992891, 0.007837,
		34.254009, 31.837219, 24.452841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.147308, 29.487324, 27.938898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.142380, 29.868469, 27.817640>,  <38.139423, 30.097157, 27.744884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.142380, 29.868469, 27.817640>,  <38.147308, 29.487324, 27.938898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142380, 29.868469, 27.817640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402544, 0.282243, 0.870803,
		0.915318, -0.111300, -0.387047,
		-0.012321, 0.952865, -0.303146,
		38.138683, 30.154329, 27.726696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758804, 29.793776, 28.075592>,  <38.147308, 29.487324, 27.938898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758804, 29.793776, 28.075592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.488457, 30.088291, 28.062473>,  <38.326248, 30.264999, 28.054602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.488457, 30.088291, 28.062473>,  <38.758804, 29.793776, 28.075592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488457, 30.088291, 28.062473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286494, 0.303466, 0.908752,
		0.679056, 0.604805, -0.416046,
		-0.675873, 0.736288, -0.032797,
		38.285694, 30.309177, 28.052633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122456, 30.346392, 28.354862>,  <38.758804, 29.793776, 28.075592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122456, 30.346392, 28.354862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.731464, 30.429016, 28.372137>,  <38.496868, 30.478590, 28.382502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.731464, 30.429016, 28.372137>,  <39.122456, 30.346392, 28.354862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731464, 30.429016, 28.372137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122661, 0.389606, 0.912777,
		0.171717, 0.897519, -0.406169,
		-0.977480, 0.206561, 0.043189,
		38.438221, 30.490984, 28.385094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125034, 30.931356, 28.670372>,  <39.122456, 30.346392, 28.354862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125034, 30.931356, 28.670372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.745594, 30.817144, 28.724960>,  <38.517929, 30.748617, 28.757713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.745594, 30.817144, 28.724960>,  <39.125034, 30.931356, 28.670372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745594, 30.817144, 28.724960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007934, 0.409648, 0.912209,
		-0.316368, 0.866408, -0.386328,
		-0.948604, -0.285528, 0.136473,
		38.461014, 30.731485, 28.765902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781208, 31.500874, 29.005692>,  <39.125034, 30.931356, 28.670372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781208, 31.500874, 29.005692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.572281, 31.168388, 29.081875>,  <38.446926, 30.968897, 29.127584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.572281, 31.168388, 29.081875>,  <38.781208, 31.500874, 29.005692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572281, 31.168388, 29.081875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018756, 0.234488, 0.971938,
		-0.852546, 0.504087, -0.138067,
		-0.522316, -0.831211, 0.190457,
		38.415585, 30.919025, 29.139011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131313, 31.740162, 29.315201>,  <38.781208, 31.500874, 29.005692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131313, 31.740162, 29.315201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.205193, 31.365860, 29.435369>,  <38.249519, 31.141279, 29.507471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.205193, 31.365860, 29.435369>,  <38.131313, 31.740162, 29.315201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205193, 31.365860, 29.435369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148568, 0.275583, 0.949727,
		-0.971501, -0.220048, -0.088123,
		0.184701, -0.935753, 0.300421,
		38.260601, 31.085135, 29.525496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723106, 31.665672, 29.966358>,  <38.131313, 31.740162, 29.315201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723106, 31.665672, 29.966358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967121, 31.348732, 29.964039>,  <38.113529, 31.158567, 29.962646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967121, 31.348732, 29.964039>,  <37.723106, 31.665672, 29.966358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967121, 31.348732, 29.964039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040694, 0.024022, 0.998883,
		-0.791326, -0.609593, 0.046899,
		0.610039, -0.792350, -0.005798,
		38.150131, 31.111027, 29.962299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495899, 31.216402, 30.488253>,  <37.723106, 31.665672, 29.966358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495899, 31.216402, 30.488253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.881084, 31.116751, 30.447014>,  <38.112198, 31.056959, 30.422272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.881084, 31.116751, 30.447014>,  <37.495899, 31.216402, 30.488253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881084, 31.116751, 30.447014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101810, -0.018075, 0.994640,
		-0.249658, -0.968301, 0.007959,
		0.962967, -0.249131, -0.103096,
		38.169975, 31.042011, 30.416084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463383, 30.700781, 30.929880>,  <37.495899, 31.216402, 30.488253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463383, 30.700781, 30.929880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.834229, 30.835970, 30.865099>,  <38.056736, 30.917084, 30.826231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.834229, 30.835970, 30.865099>,  <37.463383, 30.700781, 30.929880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834229, 30.835970, 30.865099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143911, 0.077958, 0.986515,
		0.346044, -0.937920, 0.023637,
		0.927116, 0.337976, -0.161954,
		38.112362, 30.937363, 30.816513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866199, 30.434658, 31.416668>,  <37.463383, 30.700781, 30.929880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866199, 30.434658, 31.416668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094875, 30.736944, 31.288879>,  <38.232082, 30.918316, 31.212206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094875, 30.736944, 31.288879>,  <37.866199, 30.434658, 31.416668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094875, 30.736944, 31.288879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284681, 0.182477, 0.941095,
		0.769498, -0.628962, -0.110818,
		0.571690, 0.755718, -0.319469,
		38.266384, 30.963659, 31.193039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324593, 30.380379, 31.920357>,  <37.866199, 30.434658, 31.416668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324593, 30.380379, 31.920357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.375351, 30.739882, 31.752485>,  <38.405804, 30.955584, 31.651762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.375351, 30.739882, 31.752485>,  <38.324593, 30.380379, 31.920357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375351, 30.739882, 31.752485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150452, 0.400764, 0.903744,
		0.980440, -0.177820, -0.084366,
		0.126892, 0.898759, -0.419678,
		38.413418, 31.009510, 31.626581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896156, 30.718500, 32.287613>,  <38.324593, 30.380379, 31.920357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896156, 30.718500, 32.287613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.684311, 31.016098, 32.124649>,  <38.557201, 31.194656, 32.026871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.684311, 31.016098, 32.124649>,  <38.896156, 30.718500, 32.287613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684311, 31.016098, 32.124649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162412, 0.560355, 0.812173,
		0.832543, 0.363973, -0.417607,
		-0.529617, 0.743993, -0.407407,
		38.525425, 31.239296, 32.002426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377808, 31.318830, 32.054600>,  <38.896156, 30.718500, 32.287613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377808, 31.318830, 32.054600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001255, 31.361528, 32.182606>,  <38.775326, 31.387148, 32.259411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001255, 31.361528, 32.182606>,  <39.377808, 31.318830, 32.054600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001255, 31.361528, 32.182606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316899, 0.605080, 0.730379,
		-0.115670, 0.788977, -0.603437,
		-0.941380, 0.106746, 0.320015,
		38.718842, 31.393553, 32.278610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189896, 32.062973, 32.089634>,  <39.377808, 31.318830, 32.054600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189896, 32.062973, 32.089634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986084, 31.837986, 32.350098>,  <38.863796, 31.702993, 32.506374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986084, 31.837986, 32.350098>,  <39.189896, 32.062973, 32.089634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986084, 31.837986, 32.350098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390379, 0.523284, 0.757482,
		-0.766803, 0.640156, -0.047050,
		-0.509527, -0.562472, 0.651159,
		38.833225, 31.669245, 32.545444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545891, 32.731750, 31.990831>,  <39.189896, 32.062973, 32.089634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545891, 32.731750, 31.990831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.661446, 33.112568, 31.950510>,  <39.730778, 33.341057, 31.926317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.661446, 33.112568, 31.950510>,  <39.545891, 32.731750, 31.990831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661446, 33.112568, 31.950510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719497, 0.146441, -0.678881,
		-0.631562, 0.268644, 0.727296,
		0.288883, 0.952043, -0.100802,
		39.748112, 33.398182, 31.920269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884384, 33.066223, 31.847994>,  <39.545891, 32.731750, 31.990831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884384, 33.066223, 31.847994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.163033, 33.331757, 31.739149>,  <39.330223, 33.491077, 31.673841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.163033, 33.331757, 31.739149>,  <38.884384, 33.066223, 31.847994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163033, 33.331757, 31.739149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591638, 0.317011, -0.741261,
		-0.405808, 0.677373, 0.613584,
		0.696624, 0.663830, -0.272114,
		39.372021, 33.530907, 31.657515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610252, 33.693333, 31.658697>,  <38.884384, 33.066223, 31.847994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610252, 33.693333, 31.658697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.963161, 33.699589, 31.470503>,  <39.174908, 33.703342, 31.357586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.963161, 33.699589, 31.470503>,  <38.610252, 33.693333, 31.658697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963161, 33.699589, 31.470503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456214, 0.274832, -0.846367,
		0.116065, 0.961365, 0.249612,
		0.882269, 0.015643, -0.470486,
		39.227840, 33.704281, 31.329357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591053, 34.278938, 31.247671>,  <38.610252, 33.693333, 31.658697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591053, 34.278938, 31.247671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.893391, 34.062946, 31.099546>,  <39.074791, 33.933353, 31.010672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.893391, 34.062946, 31.099546>,  <38.591053, 34.278938, 31.247671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893391, 34.062946, 31.099546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240561, 0.296996, -0.924080,
		0.608963, 0.787540, 0.094584,
		0.755841, -0.539977, -0.370310,
		39.120144, 33.900951, 30.988453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907551, 34.760162, 30.650444>,  <38.591053, 34.278938, 31.247671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907551, 34.760162, 30.650444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986542, 34.376526, 30.569298>,  <39.033936, 34.146343, 30.520609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986542, 34.376526, 30.569298>,  <38.907551, 34.760162, 30.650444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986542, 34.376526, 30.569298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209014, 0.160991, -0.964570,
		0.957766, 0.232882, -0.168671,
		0.197476, -0.959087, -0.202867,
		39.045784, 34.088799, 30.508438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212708, 34.885639, 30.088364>,  <38.907551, 34.760162, 30.650444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212708, 34.885639, 30.088364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.134964, 34.493305, 30.083019>,  <39.088318, 34.257904, 30.079813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.134964, 34.493305, 30.083019>,  <39.212708, 34.885639, 30.088364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134964, 34.493305, 30.083019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183532, 0.049740, -0.981755,
		0.963608, -0.188361, -0.189683,
		-0.194359, -0.980840, -0.013360,
		39.076656, 34.199055, 30.079012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661041, 34.590408, 29.622215>,  <39.212708, 34.885639, 30.088364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661041, 34.590408, 29.622215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.357204, 34.331146, 29.643837>,  <39.174904, 34.175591, 29.656811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.357204, 34.331146, 29.643837>,  <39.661041, 34.590408, 29.622215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357204, 34.331146, 29.643837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024757, -0.111861, -0.993415,
		0.649933, -0.753248, 0.101015,
		-0.759588, -0.648155, 0.054054,
		39.129330, 34.136700, 29.660053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847904, 33.965595, 29.239737>,  <39.661041, 34.590408, 29.622215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847904, 33.965595, 29.239737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.449905, 33.941807, 29.271839>,  <39.211105, 33.927532, 29.291101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.449905, 33.941807, 29.271839>,  <39.847904, 33.965595, 29.239737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449905, 33.941807, 29.271839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065879, -0.213256, -0.974773,
		0.075089, -0.975184, 0.208272,
		-0.994998, -0.059474, 0.080258,
		39.151405, 33.923965, 29.295916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614082, 33.377968, 28.865984>,  <39.847904, 33.965595, 29.239737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614082, 33.377968, 28.865984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.281174, 33.599293, 28.879667>,  <39.081429, 33.732086, 28.887877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.281174, 33.599293, 28.879667>,  <39.614082, 33.377968, 28.865984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281174, 33.599293, 28.879667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117995, -0.116518, -0.986154,
		-0.541663, -0.824786, 0.162262,
		-0.832273, 0.553310, 0.034207,
		39.031490, 33.765285, 28.889929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139084, 32.976261, 28.524685>,  <39.614082, 33.377968, 28.865984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139084, 32.976261, 28.524685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001469, 33.351822, 28.528717>,  <38.918900, 33.577160, 28.531136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001469, 33.351822, 28.528717>,  <39.139084, 32.976261, 28.524685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001469, 33.351822, 28.528717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233753, -0.075247, -0.969380,
		-0.909395, -0.335857, 0.245359,
		-0.344036, 0.938903, 0.010079,
		38.898258, 33.633492, 28.531740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526077, 32.860455, 28.099304>,  <39.139084, 32.976261, 28.524685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526077, 32.860455, 28.099304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.583405, 33.256268, 28.106117>,  <38.617802, 33.493755, 28.110205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.583405, 33.256268, 28.106117>,  <38.526077, 32.860455, 28.099304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583405, 33.256268, 28.106117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400356, 0.073708, -0.913391,
		-0.905083, 0.124083, 0.406728,
		0.143316, 0.989531, 0.017035,
		38.626400, 33.553127, 28.111227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968437, 33.198704, 27.954987>,  <38.526077, 32.860455, 28.099304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968437, 33.198704, 27.954987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.277481, 33.426521, 27.842783>,  <38.462910, 33.563213, 27.775461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.277481, 33.426521, 27.842783>,  <37.968437, 33.198704, 27.954987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277481, 33.426521, 27.842783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353019, 0.018168, -0.935440,
		-0.527680, 0.821759, 0.215098,
		0.772614, 0.569546, -0.280509,
		38.509266, 33.597385, 27.758631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678284, 33.612583, 27.462666>,  <37.968437, 33.198704, 27.954987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678284, 33.612583, 27.462666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.062901, 33.689194, 27.383926>,  <38.293671, 33.735161, 27.336683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.062901, 33.689194, 27.383926>,  <37.678284, 33.612583, 27.462666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062901, 33.689194, 27.383926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210141, 0.051572, -0.976310,
		-0.176841, 0.980131, 0.089837,
		0.961545, 0.191530, -0.196846,
		38.351364, 33.746655, 27.324873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659401, 33.978821, 26.787886>,  <37.678284, 33.612583, 27.462666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659401, 33.978821, 26.787886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.028736, 33.825241, 26.790052>,  <38.250336, 33.733093, 26.791353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.028736, 33.825241, 26.790052>,  <37.659401, 33.978821, 26.787886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028736, 33.825241, 26.790052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018171, 0.029600, -0.999397,
		0.383557, 0.922880, 0.034307,
		0.923338, -0.383949, 0.005416,
		38.305737, 33.710056, 26.791677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701569, 34.779530, 27.051264>,  <37.659401, 33.978821, 26.787886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701569, 34.779530, 27.051264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600204, 35.159813, 26.979778>,  <37.539387, 35.387981, 26.936888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600204, 35.159813, 26.979778>,  <37.701569, 34.779530, 27.051264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600204, 35.159813, 26.979778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359284, 0.079031, 0.929876,
		0.898164, 0.299849, 0.321546,
		-0.253410, 0.950708, -0.178714,
		37.524181, 35.445026, 26.926165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069366, 35.104156, 27.540945>,  <37.701569, 34.779530, 27.051264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069366, 35.104156, 27.540945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.768101, 35.347122, 27.439926>,  <37.587341, 35.492901, 27.379314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.768101, 35.347122, 27.439926>,  <38.069366, 35.104156, 27.540945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768101, 35.347122, 27.439926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252418, 0.087670, 0.963638,
		0.607471, 0.789531, 0.087293,
		-0.753169, 0.607417, -0.252549,
		37.542149, 35.529346, 27.364161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175579, 35.573593, 27.973001>,  <38.069366, 35.104156, 27.540945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175579, 35.573593, 27.973001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.818340, 35.679768, 27.827717>,  <37.603996, 35.743473, 27.740545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.818340, 35.679768, 27.827717>,  <38.175579, 35.573593, 27.973001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818340, 35.679768, 27.827717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268292, 0.333817, 0.903651,
		0.361109, 0.904494, -0.226916,
		-0.893096, 0.265437, -0.363213,
		37.550411, 35.759399, 27.718754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157078, 36.181866, 28.130669>,  <38.175579, 35.573593, 27.973001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157078, 36.181866, 28.130669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.770641, 36.088409, 28.086691>,  <37.538780, 36.032337, 28.060305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.770641, 36.088409, 28.086691>,  <38.157078, 36.181866, 28.130669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770641, 36.088409, 28.086691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220684, 0.526024, 0.821339,
		-0.134061, 0.817749, -0.559745,
		-0.966088, -0.233636, -0.109945,
		37.480816, 36.018318, 28.053707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633949, 36.768543, 28.444414>,  <38.157078, 36.181866, 28.130669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633949, 36.768543, 28.444414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.388309, 36.453060, 28.432980>,  <37.240925, 36.263771, 28.426119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.388309, 36.453060, 28.432980>,  <37.633949, 36.768543, 28.444414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388309, 36.453060, 28.432980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324387, 0.219224, 0.920171,
		-0.719480, 0.574352, -0.390473,
		-0.614103, -0.788708, -0.028585,
		37.204079, 36.216446, 28.424404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967316, 36.978718, 28.790659>,  <37.633949, 36.768543, 28.444414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967316, 36.978718, 28.790659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.948986, 36.579231, 28.782015>,  <36.937988, 36.339539, 28.776829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.948986, 36.579231, 28.782015>,  <36.967316, 36.978718, 28.790659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948986, 36.579231, 28.782015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346072, -0.004424, 0.938197,
		-0.937088, 0.050472, -0.345425,
		-0.045824, -0.998716, -0.021612,
		36.935238, 36.279617, 28.775532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339832, 36.791115, 29.066992>,  <36.967316, 36.978718, 28.790659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339832, 36.791115, 29.066992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.518101, 36.434910, 29.103580>,  <36.625061, 36.221188, 29.125534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.518101, 36.434910, 29.103580>,  <36.339832, 36.791115, 29.066992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518101, 36.434910, 29.103580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334015, -0.070618, 0.939919,
		-0.830548, -0.449449, -0.328917,
		0.445673, -0.890510, 0.091471,
		36.651802, 36.167755, 29.131021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835297, 36.325794, 29.443142>,  <36.339832, 36.791115, 29.066992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835297, 36.325794, 29.443142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.189865, 36.149651, 29.500196>,  <36.402607, 36.043964, 29.534430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.189865, 36.149651, 29.500196>,  <35.835297, 36.325794, 29.443142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189865, 36.149651, 29.500196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233112, -0.158468, 0.959451,
		-0.399902, -0.883725, -0.243122,
		0.886418, -0.440361, 0.142636,
		36.455791, 36.017544, 29.542988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638451, 35.655792, 29.860777>,  <35.835297, 36.325794, 29.443142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638451, 35.655792, 29.860777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.033417, 35.709038, 29.894924>,  <36.270397, 35.740986, 29.915413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.033417, 35.709038, 29.894924>,  <35.638451, 35.655792, 29.860777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033417, 35.709038, 29.894924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058951, -0.191092, 0.979800,
		0.146741, -0.972504, -0.180840,
		0.987417, 0.133116, 0.085371,
		36.329643, 35.748974, 29.920536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768093, 35.089756, 30.347799>,  <35.638451, 35.655792, 29.860777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768093, 35.089756, 30.347799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.077286, 35.343513, 30.350285>,  <36.262802, 35.495770, 30.351776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.077286, 35.343513, 30.350285>,  <35.768093, 35.089756, 30.347799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077286, 35.343513, 30.350285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088065, -0.116989, 0.989221,
		0.628284, -0.764105, -0.146298,
		0.772984, 0.634395, 0.006211,
		36.309181, 35.533833, 30.352148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259804, 34.785057, 30.753771>,  <35.768093, 35.089756, 30.347799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259804, 34.785057, 30.753771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.363255, 35.171425, 30.757807>,  <36.425327, 35.403248, 30.760227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.363255, 35.171425, 30.757807>,  <36.259804, 34.785057, 30.753771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363255, 35.171425, 30.757807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030423, -0.002294, 0.999535,
		0.965497, -0.258818, 0.028793,
		0.258631, 0.965923, 0.010089,
		36.440845, 35.461201, 30.760834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857353, 34.878643, 31.231707>,  <36.259804, 34.785057, 30.753771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857353, 34.878643, 31.231707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.673481, 35.232712, 31.202961>,  <36.563160, 35.445152, 31.185713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.673481, 35.232712, 31.202961>,  <36.857353, 34.878643, 31.231707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673481, 35.232712, 31.202961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138624, 0.008412, 0.990309,
		0.877200, 0.465185, 0.118840,
		-0.459678, 0.885173, -0.071865,
		36.535576, 35.498264, 31.181402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.501274, 35.853054, 22.957302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120277, 35.896694, 23.071045>,  <37.891678, 35.922878, 23.139290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120277, 35.896694, 23.071045>,  <38.501274, 35.853054, 22.957302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120277, 35.896694, 23.071045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304222, 0.385299, 0.871202,
		-0.014512, 0.916319, -0.400185,
		-0.952491, 0.109103, 0.284356,
		37.834530, 35.929424, 23.156351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536514, 36.420227, 23.321484>,  <38.501274, 35.853054, 22.957302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536514, 36.420227, 23.321484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196598, 36.260170, 23.458736>,  <37.992649, 36.164135, 23.541088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196598, 36.260170, 23.458736>,  <38.536514, 36.420227, 23.321484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196598, 36.260170, 23.458736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219758, 0.322749, 0.920619,
		-0.479121, 0.857742, -0.186336,
		-0.849794, -0.400140, 0.343131,
		37.941658, 36.140129, 23.561676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289116, 36.838123, 23.877552>,  <38.536514, 36.420227, 23.321484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289116, 36.838123, 23.877552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075691, 36.506439, 23.944143>,  <37.947636, 36.307426, 23.984098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075691, 36.506439, 23.944143>,  <38.289116, 36.838123, 23.877552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075691, 36.506439, 23.944143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211196, 0.059971, 0.975602,
		-0.818966, 0.555706, 0.143128,
		-0.533564, -0.829213, 0.166477,
		37.915623, 36.257675, 23.994087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044224, 37.034119, 24.477295>,  <38.289116, 36.838123, 23.877552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044224, 37.034119, 24.477295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967731, 36.642467, 24.449776>,  <37.921837, 36.407475, 24.433264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967731, 36.642467, 24.449776>,  <38.044224, 37.034119, 24.477295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967731, 36.642467, 24.449776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077460, -0.054819, 0.995487,
		-0.978483, 0.195701, -0.065360,
		-0.191234, -0.979130, -0.068798,
		37.910362, 36.348728, 24.429136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494038, 36.914597, 24.886238>,  <38.044224, 37.034119, 24.477295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494038, 36.914597, 24.886238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681168, 36.563076, 24.848598>,  <37.793446, 36.352165, 24.826014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681168, 36.563076, 24.848598>,  <37.494038, 36.914597, 24.886238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681168, 36.563076, 24.848598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020459, -0.117209, 0.992897,
		-0.883585, -0.462575, -0.072813,
		0.467823, -0.878798, -0.094100,
		37.821514, 36.299435, 24.820368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036308, 36.469864, 25.086531>,  <37.494038, 36.914597, 24.886238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036308, 36.469864, 25.086531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367462, 36.253338, 25.145306>,  <37.566154, 36.123425, 25.180571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367462, 36.253338, 25.145306>,  <37.036308, 36.469864, 25.086531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367462, 36.253338, 25.145306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224929, -0.080422, 0.971051,
		-0.513825, -0.836966, -0.188337,
		0.827883, -0.541313, 0.146935,
		37.615826, 36.090942, 25.189386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803387, 35.949135, 25.538574>,  <37.036308, 36.469864, 25.086531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803387, 35.949135, 25.538574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202045, 35.928223, 25.563759>,  <37.441242, 35.915676, 25.578871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202045, 35.928223, 25.563759>,  <36.803387, 35.949135, 25.538574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202045, 35.928223, 25.563759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075778, -0.298922, 0.951264,
		-0.030912, -0.952844, -0.301881,
		0.996646, -0.052282, 0.062964,
		37.501038, 35.912537, 25.582647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885258, 35.305882, 25.834728>,  <36.803387, 35.949135, 25.538574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885258, 35.305882, 25.834728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195477, 35.544392, 25.917654>,  <37.381607, 35.687496, 25.967409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195477, 35.544392, 25.917654>,  <36.885258, 35.305882, 25.834728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195477, 35.544392, 25.917654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059571, -0.257811, 0.964357,
		0.628470, -0.760257, -0.164425,
		0.775549, 0.596274, 0.207315,
		37.428143, 35.723274, 25.979849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379658, 34.872623, 26.255554>,  <36.885258, 35.305882, 25.834728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379658, 34.872623, 26.255554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459709, 35.256569, 26.334150>,  <37.507740, 35.486935, 26.381308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459709, 35.256569, 26.334150>,  <37.379658, 34.872623, 26.255554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459709, 35.256569, 26.334150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221739, -0.150971, 0.963348,
		0.954348, -0.236364, 0.182625,
		0.200130, 0.959864, 0.196490,
		37.519749, 35.544529, 26.393097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991951, 34.428577, 26.328144>,  <37.379658, 34.872623, 26.255554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991951, 34.428577, 26.328144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236450, 34.112980, 26.352995>,  <38.383148, 33.923622, 26.367907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236450, 34.112980, 26.352995>,  <37.991951, 34.428577, 26.328144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236450, 34.112980, 26.352995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067691, -0.026095, -0.997365,
		0.788538, 0.613844, 0.037457,
		0.611249, -0.788996, 0.062129,
		38.419827, 33.876282, 26.371634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622620, 34.586681, 25.957602>,  <37.991951, 34.428577, 26.328144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622620, 34.586681, 25.957602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616142, 34.187340, 25.979578>,  <38.612255, 33.947735, 25.992764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616142, 34.187340, 25.979578>,  <38.622620, 34.586681, 25.957602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616142, 34.187340, 25.979578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323413, -0.057222, -0.944526,
		0.946119, 0.002474, 0.323809,
		-0.016192, -0.998358, 0.054939,
		38.611286, 33.887833, 25.996059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259357, 34.371532, 25.592258>,  <38.622620, 34.586681, 25.957602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259357, 34.371532, 25.592258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017475, 34.052994, 25.597322>,  <38.872345, 33.861870, 25.600361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017475, 34.052994, 25.597322>,  <39.259357, 34.371532, 25.592258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017475, 34.052994, 25.597322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203761, -0.170051, -0.964139,
		0.769944, -0.580440, 0.265096,
		-0.604704, -0.796349, 0.012659,
		38.836063, 33.814091, 25.601120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641945, 33.898670, 25.205111>,  <39.259357, 34.371532, 25.592258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641945, 33.898670, 25.205111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266682, 33.760216, 25.207886>,  <39.041523, 33.677143, 25.209551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266682, 33.760216, 25.207886>,  <39.641945, 33.898670, 25.205111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266682, 33.760216, 25.207886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118605, -0.340171, -0.932854,
		0.325254, -0.874342, 0.360188,
		-0.938159, -0.346135, 0.006940,
		38.985233, 33.656376, 25.209969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727016, 33.142818, 25.127356>,  <39.641945, 33.898670, 25.205111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727016, 33.142818, 25.127356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366592, 33.270027, 25.009401>,  <39.150337, 33.346352, 24.938629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366592, 33.270027, 25.009401>,  <39.727016, 33.142818, 25.127356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366592, 33.270027, 25.009401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205394, -0.285933, -0.935978,
		-0.381981, -0.903937, 0.192322,
		-0.901057, 0.318025, -0.294884,
		39.096275, 33.365433, 24.920937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399380, 32.601669, 24.668375>,  <39.727016, 33.142818, 25.127356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399380, 32.601669, 24.668375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164356, 32.906239, 24.558830>,  <39.023342, 33.088982, 24.493103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164356, 32.906239, 24.558830>,  <39.399380, 32.601669, 24.668375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164356, 32.906239, 24.558830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026471, -0.356351, -0.933977,
		-0.808747, -0.541519, 0.229533,
		-0.587561, 0.761427, -0.273863,
		38.988087, 33.134666, 24.476671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847000, 32.316841, 24.255533>,  <39.399380, 32.601669, 24.668375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847000, 32.316841, 24.255533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863819, 32.705967, 24.164442>,  <38.873909, 32.939442, 24.109787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863819, 32.705967, 24.164442>,  <38.847000, 32.316841, 24.255533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863819, 32.705967, 24.164442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021562, -0.228758, -0.973244,
		-0.998883, 0.036009, -0.030593,
		0.042044, 0.972817, -0.227726,
		38.876431, 32.997810, 24.096125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660370, 32.252312, 23.593477>,  <38.847000, 32.316841, 24.255533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660370, 32.252312, 23.593477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778809, 32.634354, 23.597404>,  <38.849873, 32.863579, 23.599760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778809, 32.634354, 23.597404>,  <38.660370, 32.252312, 23.593477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778809, 32.634354, 23.597404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120884, 0.047667, -0.991522,
		-0.947479, 0.292397, 0.129571,
		0.296094, 0.955108, 0.009818,
		38.867638, 32.920887, 23.600349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115967, 32.740978, 23.241592>,  <38.660370, 32.252312, 23.593477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115967, 32.740978, 23.241592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483662, 32.895012, 23.208809>,  <38.704277, 32.987431, 23.189138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483662, 32.895012, 23.208809>,  <38.115967, 32.740978, 23.241592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483662, 32.895012, 23.208809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142863, 0.132270, -0.980864,
		-0.366871, 0.913355, 0.176601,
		0.919237, 0.385080, -0.081959,
		38.759434, 33.010536, 23.184221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057720, 33.274590, 22.768177>,  <38.115967, 32.740978, 23.241592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057720, 33.274590, 22.768177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449581, 33.194630, 22.775312>,  <38.684696, 33.146652, 22.779594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449581, 33.194630, 22.775312>,  <38.057720, 33.274590, 22.768177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449581, 33.194630, 22.775312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027335, 0.044840, -0.998620,
		0.198825, 0.978790, 0.049392,
		0.979654, -0.199900, 0.017840,
		38.743477, 33.134659, 22.780664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401459, 33.771217, 22.383179>,  <38.057720, 33.274590, 22.768177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401459, 33.771217, 22.383179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650475, 33.458782, 22.402603>,  <38.799885, 33.271320, 22.414257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650475, 33.458782, 22.402603>,  <38.401459, 33.771217, 22.383179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650475, 33.458782, 22.402603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051786, -0.020798, -0.998442,
		0.780876, 0.624080, 0.027502,
		0.622535, -0.781084, 0.048559,
		38.837234, 33.224457, 22.417171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744873, 33.929115, 21.826935>,  <38.401459, 33.771217, 22.383179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744873, 33.929115, 21.826935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843571, 33.557129, 21.935957>,  <38.902790, 33.333939, 22.001369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843571, 33.557129, 21.935957>,  <38.744873, 33.929115, 21.826935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843571, 33.557129, 21.935957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018301, -0.276729, -0.960774,
		0.968907, 0.242058, -0.051263,
		0.246748, -0.929962, 0.272554,
		38.917595, 33.278141, 22.017723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340694, 33.744999, 21.434055>,  <38.744873, 33.929115, 21.826935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340694, 33.744999, 21.434055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163071, 33.403984, 21.544317>,  <39.056496, 33.199375, 21.610474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163071, 33.403984, 21.544317>,  <39.340694, 33.744999, 21.434055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163071, 33.403984, 21.544317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263460, -0.169813, -0.949607,
		0.856389, -0.494304, -0.149204,
		-0.444058, -0.852542, 0.275655,
		39.029854, 33.148220, 21.627014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614601, 33.160915, 21.075291>,  <39.340694, 33.744999, 21.434055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614601, 33.160915, 21.075291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250633, 33.044765, 21.193762>,  <39.032253, 32.975075, 21.264845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250633, 33.044765, 21.193762>,  <39.614601, 33.160915, 21.075291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250633, 33.044765, 21.193762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199702, -0.319146, -0.926426,
		0.363535, -0.902124, 0.232410,
		-0.909924, -0.290375, 0.296177,
		38.977657, 32.957653, 21.282616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.881832, 34.065292, 23.202547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.147690, 34.364021, 23.193619>,  <32.307205, 34.543259, 23.188263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.147690, 34.364021, 23.193619>,  <31.881832, 34.065292, 23.202547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147690, 34.364021, 23.193619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374976, -0.307579, 0.874522,
		0.646249, -0.589617, -0.484472,
		0.664646, 0.746825, -0.022320,
		32.347084, 34.588070, 23.186922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447468, 33.790859, 23.516409>,  <31.881832, 34.065292, 23.202547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447468, 33.790859, 23.516409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.525429, 34.181976, 23.547226>,  <32.572205, 34.416645, 23.565716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.525429, 34.181976, 23.547226>,  <32.447468, 33.790859, 23.516409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525429, 34.181976, 23.547226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493442, -0.165636, 0.853862,
		0.847660, -0.128407, -0.514766,
		0.194906, 0.977792, 0.077041,
		32.583900, 34.475315, 23.570339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095200, 33.729202, 23.661776>,  <32.447468, 33.790859, 23.516409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095200, 33.729202, 23.661776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.944435, 34.080826, 23.778528>,  <32.853977, 34.291801, 23.848579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.944435, 34.080826, 23.778528>,  <33.095200, 33.729202, 23.661776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944435, 34.080826, 23.778528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569633, -0.028498, 0.821405,
		0.730381, 0.475860, -0.490000,
		-0.376910, 0.879059, 0.291880,
		32.831364, 34.344543, 23.866093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694248, 34.045921, 23.977602>,  <33.095200, 33.729202, 23.661776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694248, 34.045921, 23.977602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.357269, 34.213348, 24.113293>,  <33.155083, 34.313805, 24.194706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.357269, 34.213348, 24.113293>,  <33.694248, 34.045921, 23.977602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357269, 34.213348, 24.113293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351580, -0.049993, 0.934822,
		0.408249, 0.906807, -0.105045,
		-0.842451, 0.418572, 0.339225,
		33.104534, 34.338921, 24.215059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896122, 34.329441, 24.634960>,  <33.694248, 34.045921, 23.977602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896122, 34.329441, 24.634960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.497265, 34.348053, 24.658758>,  <33.257950, 34.359219, 24.673037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.497265, 34.348053, 24.658758>,  <33.896122, 34.329441, 24.634960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497265, 34.348053, 24.658758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048084, -0.216413, 0.975117,
		0.058244, 0.975193, 0.213558,
		-0.997144, 0.046526, 0.059496,
		33.198120, 34.362011, 24.676607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725033, 34.884689, 25.041286>,  <33.896122, 34.329441, 24.634960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725033, 34.884689, 25.041286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.398396, 34.654812, 25.062828>,  <33.202412, 34.516884, 25.075752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.398396, 34.654812, 25.062828>,  <33.725033, 34.884689, 25.041286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398396, 34.654812, 25.062828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089558, -0.033982, 0.995402,
		-0.570220, 0.817664, 0.079218,
		-0.816596, -0.574693, 0.053852,
		33.153416, 34.482403, 25.078983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291481, 35.210369, 25.469107>,  <33.725033, 34.884689, 25.041286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291481, 35.210369, 25.469107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.208771, 34.819042, 25.473919>,  <33.159145, 34.584248, 25.476807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.208771, 34.819042, 25.473919>,  <33.291481, 35.210369, 25.469107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208771, 34.819042, 25.473919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196566, -0.029494, 0.980047,
		-0.958440, 0.205011, 0.198402,
		-0.206772, -0.978315, 0.012030,
		33.146740, 34.525547, 25.477528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957359, 35.184456, 26.074814>,  <33.291481, 35.210369, 25.469107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957359, 35.184456, 26.074814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.007942, 34.798141, 25.984241>,  <33.038292, 34.566353, 25.929899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.007942, 34.798141, 25.984241>,  <32.957359, 35.184456, 26.074814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007942, 34.798141, 25.984241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002712, -0.227924, 0.973675,
		-0.991968, -0.123744, -0.026203,
		0.126459, -0.965784, -0.226429,
		33.045879, 34.508408, 25.916313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456001, 34.800930, 26.298010>,  <32.957359, 35.184456, 26.074814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456001, 34.800930, 26.298010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.748611, 34.528755, 26.280645>,  <32.924175, 34.365452, 26.270226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.748611, 34.528755, 26.280645>,  <32.456001, 34.800930, 26.298010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748611, 34.528755, 26.280645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134014, -0.205921, 0.969348,
		-0.668518, -0.703282, -0.241824,
		0.731522, -0.680434, -0.043413,
		32.968067, 34.324623, 26.267622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251774, 34.255424, 26.643593>,  <32.456001, 34.800930, 26.298010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251774, 34.255424, 26.643593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.646832, 34.192749, 26.643866>,  <32.883865, 34.155144, 26.644030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.646832, 34.192749, 26.643866>,  <32.251774, 34.255424, 26.643593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646832, 34.192749, 26.643866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060914, -0.379945, 0.923001,
		-0.144363, -0.911642, -0.384797,
		0.987648, -0.156687, 0.000681,
		32.943127, 34.145744, 26.644070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325516, 33.583733, 26.875935>,  <32.251774, 34.255424, 26.643593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325516, 33.583733, 26.875935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.684475, 33.756168, 26.913527>,  <32.899853, 33.859631, 26.936083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.684475, 33.756168, 26.913527>,  <32.325516, 33.583733, 26.875935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684475, 33.756168, 26.913527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009927, -0.232679, 0.972503,
		0.441107, -0.871791, -0.213085,
		0.897400, 0.431093, 0.093982,
		32.953693, 33.885498, 26.941721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671684, 33.138985, 27.432894>,  <32.325516, 33.583733, 26.875935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671684, 33.138985, 27.432894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.869839, 33.484070, 27.392265>,  <32.988731, 33.691120, 27.367887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.869839, 33.484070, 27.392265>,  <32.671684, 33.138985, 27.432894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869839, 33.484070, 27.392265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028848, 0.100524, 0.994516,
		0.868195, -0.495598, 0.024910,
		0.495385, 0.862715, -0.101571,
		33.018456, 33.742886, 27.361794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332047, 33.035160, 27.775656>,  <32.671684, 33.138985, 27.432894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332047, 33.035160, 27.775656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.257999, 33.428009, 27.761984>,  <33.213573, 33.663719, 27.753780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.257999, 33.428009, 27.761984>,  <33.332047, 33.035160, 27.775656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257999, 33.428009, 27.761984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235664, 0.078130, 0.968689,
		0.954042, 0.171264, -0.245913,
		-0.185115, 0.982122, -0.034178,
		33.202465, 33.722645, 27.751730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958630, 33.333328, 28.045113>,  <33.332047, 33.035160, 27.775656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958630, 33.333328, 28.045113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.668594, 33.604820, 28.091728>,  <33.494576, 33.767715, 28.119698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.668594, 33.604820, 28.091728>,  <33.958630, 33.333328, 28.045113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668594, 33.604820, 28.091728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365057, 0.235327, 0.900752,
		0.583940, 0.695666, -0.418406,
		-0.725085, 0.678727, 0.116541,
		33.451069, 33.808437, 28.126690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639328, 33.355274, 28.040504>,  <33.958630, 33.333328, 28.045113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639328, 33.355274, 28.040504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.593472, 32.981159, 28.174429>,  <34.565956, 32.756691, 28.254784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.593472, 32.981159, 28.174429>,  <34.639328, 33.355274, 28.040504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593472, 32.981159, 28.174429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424134, -0.258688, -0.867865,
		0.898313, -0.241499, -0.367030,
		-0.114643, -0.935285, 0.334811,
		34.559078, 32.700573, 28.274872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181087, 32.843288, 27.763485>,  <34.639328, 33.355274, 28.040504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181087, 32.843288, 27.763485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.886539, 32.587433, 27.851690>,  <34.709812, 32.433918, 27.904613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.886539, 32.587433, 27.851690>,  <35.181087, 32.843288, 27.763485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886539, 32.587433, 27.851690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018499, -0.344832, -0.938482,
		0.676328, -0.686989, 0.265756,
		-0.736368, -0.639638, 0.220511,
		34.665630, 32.395542, 27.917843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367565, 32.195576, 27.494261>,  <35.181087, 32.843288, 27.763485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367565, 32.195576, 27.494261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.984901, 32.116241, 27.579544>,  <34.755302, 32.068642, 27.630714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.984901, 32.116241, 27.579544>,  <35.367565, 32.195576, 27.494261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984901, 32.116241, 27.579544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146436, -0.305198, -0.940963,
		0.251700, -0.931405, 0.262928,
		-0.956663, -0.198338, 0.213209,
		34.697903, 32.056740, 27.643507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293331, 31.538418, 27.297924>,  <35.367565, 32.195576, 27.494261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293331, 31.538418, 27.297924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.934383, 31.714674, 27.288374>,  <34.719017, 31.820427, 27.282644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.934383, 31.714674, 27.288374>,  <35.293331, 31.538418, 27.297924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934383, 31.714674, 27.288374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058452, -0.172316, -0.983306,
		-0.437398, -0.880990, 0.180387,
		-0.897366, 0.440640, -0.023875,
		34.665173, 31.846867, 27.281212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797100, 31.017189, 26.879944>,  <35.293331, 31.538418, 27.297924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797100, 31.017189, 26.879944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.634426, 31.382446, 26.868778>,  <34.536823, 31.601601, 26.862080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.634426, 31.382446, 26.868778>,  <34.797100, 31.017189, 26.879944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634426, 31.382446, 26.868778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066912, -0.060245, -0.995938,
		-0.911117, -0.403161, 0.085601,
		-0.406681, 0.913144, -0.027914,
		34.512421, 31.656389, 26.860403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261108, 31.011166, 26.367630>,  <34.797100, 31.017189, 26.879944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261108, 31.011166, 26.367630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.304840, 31.407406, 26.400524>,  <34.331078, 31.645149, 26.420261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.304840, 31.407406, 26.400524>,  <34.261108, 31.011166, 26.367630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304840, 31.407406, 26.400524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214779, 0.104319, -0.971076,
		-0.970525, 0.088502, 0.224164,
		0.109327, 0.990598, 0.082236,
		34.337639, 31.704586, 26.425196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627342, 31.380608, 26.055647>,  <34.261108, 31.011166, 26.367630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627342, 31.380608, 26.055647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.938919, 31.631443, 26.056921>,  <34.125866, 31.781944, 26.057686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.938919, 31.631443, 26.056921>,  <33.627342, 31.380608, 26.055647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938919, 31.631443, 26.056921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189686, 0.240455, -0.951946,
		-0.597719, 0.740907, 0.306250,
		0.778943, 0.627087, 0.003185,
		34.172604, 31.819569, 26.057877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427296, 31.940651, 25.704617>,  <33.627342, 31.380608, 26.055647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427296, 31.940651, 25.704617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.826820, 31.953236, 25.689705>,  <34.066536, 31.960787, 25.680758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.826820, 31.953236, 25.689705>,  <33.427296, 31.940651, 25.704617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826820, 31.953236, 25.689705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042026, 0.167062, -0.985050,
		-0.024763, 0.985444, 0.168185,
		0.998810, 0.031461, -0.037277,
		34.126465, 31.962673, 25.678522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559525, 32.569561, 25.357880>,  <33.427296, 31.940651, 25.704617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559525, 32.569561, 25.357880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.889782, 32.351719, 25.298939>,  <34.087936, 32.221012, 25.263575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.889782, 32.351719, 25.298939>,  <33.559525, 32.569561, 25.357880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889782, 32.351719, 25.298939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034894, 0.211383, -0.976780,
		0.563109, 0.811616, 0.155524,
		0.825645, -0.544607, -0.147352,
		34.137474, 32.188335, 25.254734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790783, 32.912621, 24.909588>,  <33.559525, 32.569561, 25.357880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790783, 32.912621, 24.909588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.030056, 32.593681, 24.877531>,  <34.173618, 32.402317, 24.858297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.030056, 32.593681, 24.877531>,  <33.790783, 32.912621, 24.909588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030056, 32.593681, 24.877531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199789, 0.245234, -0.948654,
		0.776058, 0.551454, 0.305994,
		0.598179, -0.797345, -0.080141,
		34.209511, 32.354477, 24.853489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503330, 33.131042, 24.624708>,  <33.790783, 32.912621, 24.909588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503330, 33.131042, 24.624708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.406261, 32.747471, 24.565971>,  <34.348019, 32.517326, 24.530729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.406261, 32.747471, 24.565971>,  <34.503330, 33.131042, 24.624708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406261, 32.747471, 24.565971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040125, 0.141317, -0.989151,
		0.969279, -0.245930, 0.004183,
		-0.242671, -0.958931, -0.146843,
		34.333462, 32.459793, 24.521919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921230, 32.891697, 24.040735>,  <34.503330, 33.131042, 24.624708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921230, 32.891697, 24.040735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.627293, 32.620468, 24.046789>,  <34.450932, 32.457729, 24.050421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.627293, 32.620468, 24.046789>,  <34.921230, 32.891697, 24.040735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627293, 32.620468, 24.046789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093253, 0.078909, -0.992511,
		0.671798, -0.730748, -0.121218,
		-0.734841, -0.678071, 0.015134,
		34.406841, 32.417046, 24.051329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149776, 32.384113, 23.558863>,  <34.921230, 32.891697, 24.040735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149776, 32.384113, 23.558863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.754585, 32.342403, 23.604521>,  <34.517471, 32.317379, 23.631916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.754585, 32.342403, 23.604521>,  <35.149776, 32.384113, 23.558863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754585, 32.342403, 23.604521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109477, -0.049449, -0.992759,
		0.109160, -0.993319, 0.037439,
		-0.987978, -0.104271, 0.114143,
		34.458191, 32.311123, 23.638763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946354, 31.886141, 23.064976>,  <35.149776, 32.384113, 23.558863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946354, 31.886141, 23.064976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.573914, 32.010612, 23.141108>,  <34.350449, 32.085297, 23.186787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.573914, 32.010612, 23.141108>,  <34.946354, 31.886141, 23.064976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573914, 32.010612, 23.141108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252089, -0.171812, -0.952330,
		-0.263647, -0.934691, 0.238419,
		-0.931097, 0.311182, 0.190327,
		34.294586, 32.103966, 23.198206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088852, 31.087919, 23.025208>,  <34.946354, 31.886141, 23.064976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088852, 31.087919, 23.025208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.314182, 30.829241, 22.819508>,  <35.449379, 30.674034, 22.696089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.314182, 30.829241, 22.819508>,  <35.088852, 31.087919, 23.025208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314182, 30.829241, 22.819508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387946, -0.342501, 0.855682,
		-0.729497, -0.681525, 0.057945,
		0.563323, -0.646697, -0.514248,
		35.483181, 30.635231, 22.665234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086456, 30.469028, 23.372980>,  <35.088852, 31.087919, 23.025208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086456, 30.469028, 23.372980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.430504, 30.423119, 23.174171>,  <35.636932, 30.395573, 23.054886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.430504, 30.423119, 23.174171>,  <35.086456, 30.469028, 23.372980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430504, 30.423119, 23.174171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455284, -0.266675, 0.849471,
		-0.230036, -0.956929, -0.177119,
		0.860116, -0.114769, -0.497019,
		35.688538, 30.388687, 23.025066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475788, 29.783712, 23.699707>,  <35.086456, 30.469028, 23.372980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475788, 29.783712, 23.699707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748615, 29.994532, 23.496925>,  <35.912312, 30.121023, 23.375256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748615, 29.994532, 23.496925>,  <35.475788, 29.783712, 23.699707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748615, 29.994532, 23.496925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687325, -0.225279, 0.690531,
		0.249738, -0.819432, -0.515910,
		0.682067, 0.527050, -0.506955,
		35.953236, 30.152647, 23.344839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175858, 29.330078, 23.617386>,  <35.475788, 29.783712, 23.699707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175858, 29.330078, 23.617386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.264126, 29.719580, 23.595087>,  <36.317085, 29.953281, 23.581707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.264126, 29.719580, 23.595087>,  <36.175858, 29.330078, 23.617386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264126, 29.719580, 23.595087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660391, -0.107105, 0.743244,
		0.717766, -0.200828, -0.666694,
		0.220670, 0.973754, -0.055748,
		36.330326, 30.011705, 23.578363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822449, 29.352411, 23.690321>,  <36.175858, 29.330078, 23.617386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822449, 29.352411, 23.690321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.738056, 29.733376, 23.778322>,  <36.687420, 29.961954, 23.831123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.738056, 29.733376, 23.778322>,  <36.822449, 29.352411, 23.690321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738056, 29.733376, 23.778322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630582, -0.039360, 0.775124,
		0.746895, 0.302266, -0.592269,
		-0.210982, 0.952411, 0.220001,
		36.674763, 30.019098, 23.844322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431477, 29.686983, 23.747349>,  <36.822449, 29.352411, 23.690321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431477, 29.686983, 23.747349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162846, 29.894661, 23.958792>,  <37.001667, 30.019268, 24.085657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162846, 29.894661, 23.958792>,  <37.431477, 29.686983, 23.747349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162846, 29.894661, 23.958792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625750, 0.015393, 0.779872,
		0.396768, 0.854518, -0.335223,
		-0.671574, 0.519194, 0.528607,
		36.961372, 30.050419, 24.117374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897232, 30.104610, 24.144081>,  <37.431477, 29.686983, 23.747349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897232, 30.104610, 24.144081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.534618, 30.134312, 24.310301>,  <37.317051, 30.152132, 24.410032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.534618, 30.134312, 24.310301>,  <37.897232, 30.104610, 24.144081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534618, 30.134312, 24.310301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422073, 0.143407, 0.895147,
		0.006873, 0.986874, -0.161343,
		-0.906536, 0.074251, 0.415548,
		37.262657, 30.156588, 24.434965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976501, 30.582096, 24.562532>,  <37.897232, 30.104610, 24.144081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976501, 30.582096, 24.562532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648411, 30.412043, 24.715628>,  <37.451557, 30.310011, 24.807486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648411, 30.412043, 24.715628>,  <37.976501, 30.582096, 24.562532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648411, 30.412043, 24.715628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395316, 0.062341, 0.916427,
		-0.413466, 0.902980, 0.116929,
		-0.820226, -0.425136, 0.382739,
		37.402344, 30.284502, 24.830450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765545, 30.990730, 25.110353>,  <37.976501, 30.582096, 24.562532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765545, 30.990730, 25.110353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.616596, 30.627295, 25.186043>,  <37.527225, 30.409233, 25.231457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.616596, 30.627295, 25.186043>,  <37.765545, 30.990730, 25.110353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616596, 30.627295, 25.186043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144564, 0.144612, 0.978871,
		-0.916756, 0.391857, 0.077500,
		-0.372370, -0.908590, 0.189222,
		37.504887, 30.354717, 25.242809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247742, 31.054913, 25.553246>,  <37.765545, 30.990730, 25.110353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247742, 31.054913, 25.553246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361305, 30.674828, 25.604614>,  <37.429443, 30.446777, 25.635435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361305, 30.674828, 25.604614>,  <37.247742, 31.054913, 25.553246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361305, 30.674828, 25.604614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087406, 0.159023, 0.983398,
		-0.954858, -0.267974, 0.128202,
		0.283912, -0.950212, 0.128422,
		37.446480, 30.389765, 25.643141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873837, 30.811834, 26.109715>,  <37.247742, 31.054913, 25.553246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873837, 30.811834, 26.109715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.163685, 30.536177, 26.108952>,  <37.337593, 30.370783, 26.108494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.163685, 30.536177, 26.108952>,  <36.873837, 30.811834, 26.109715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163685, 30.536177, 26.108952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127891, 0.131752, 0.982998,
		-0.677176, -0.712546, 0.183606,
		0.724622, -0.689144, -0.001909,
		37.381073, 30.329433, 26.108379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827805, 30.381731, 26.706863>,  <36.873837, 30.811834, 26.109715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827805, 30.381731, 26.706863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.214859, 30.302429, 26.644405>,  <37.447090, 30.254848, 26.606932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.214859, 30.302429, 26.644405>,  <36.827805, 30.381731, 26.706863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214859, 30.302429, 26.644405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181402, 0.116293, 0.976509,
		-0.175440, -0.973227, 0.148493,
		0.967633, -0.198255, -0.156143,
		37.505150, 30.242952, 26.597563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045631, 29.835732, 27.118235>,  <36.827805, 30.381731, 26.706863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045631, 29.835732, 27.118235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.380196, 30.040081, 27.038807>,  <37.580933, 30.162691, 26.991150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.380196, 30.040081, 27.038807>,  <37.045631, 29.835732, 27.118235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380196, 30.040081, 27.038807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255851, -0.043517, 0.965736,
		0.484728, -0.858554, -0.167106,
		0.836408, 0.510874, -0.198567,
		37.631119, 30.193342, 26.979237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539146, 29.464760, 27.419418>,  <37.045631, 29.835732, 27.118235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539146, 29.464760, 27.419418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.675613, 29.839891, 27.393848>,  <37.757492, 30.064970, 27.378508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.675613, 29.839891, 27.393848>,  <37.539146, 29.464760, 27.419418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675613, 29.839891, 27.393848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345188, -0.061740, 0.936501,
		0.874329, -0.341568, -0.344790,
		0.341166, 0.937827, -0.063923,
		37.777962, 30.121239, 27.374672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.427902, 32.534813, 20.794308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.059479, 32.644226, 20.905184>,  <38.838425, 32.709873, 20.971710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.059479, 32.644226, 20.905184>,  <39.427902, 32.534813, 20.794308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059479, 32.644226, 20.905184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367844, -0.377402, -0.849858,
		-0.127852, -0.884730, 0.448227,
		-0.921056, 0.273534, 0.277191,
		38.783161, 32.726288, 20.988340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055943, 31.941847, 20.629648>,  <39.427902, 32.534813, 20.794308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055943, 31.941847, 20.629648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.852394, 32.286156, 20.633974>,  <38.730263, 32.492741, 20.636570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.852394, 32.286156, 20.633974>,  <39.055943, 31.941847, 20.629648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852394, 32.286156, 20.633974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249139, -0.135238, -0.958979,
		-0.824001, -0.490692, 0.283272,
		-0.508873, 0.860774, 0.010814,
		38.699734, 32.544388, 20.637218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531143, 31.730610, 20.198261>,  <39.055943, 31.941847, 20.629648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531143, 31.730610, 20.198261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.469654, 32.123379, 20.242439>,  <38.432762, 32.359039, 20.268946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.469654, 32.123379, 20.242439>,  <38.531143, 31.730610, 20.198261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469654, 32.123379, 20.242439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518900, 0.014899, -0.854705,
		-0.840900, -0.188697, 0.507229,
		-0.153724, 0.981922, 0.110443,
		38.423538, 32.417957, 20.275572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780857, 31.863451, 19.993414>,  <38.531143, 31.730610, 20.198261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780857, 31.863451, 19.993414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.011852, 32.187489, 19.952911>,  <38.150452, 32.381912, 19.928610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.011852, 32.187489, 19.952911>,  <37.780857, 31.863451, 19.993414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011852, 32.187489, 19.952911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421342, 0.189506, -0.886881,
		-0.699267, 0.554830, 0.450765,
		0.577491, 0.810093, -0.101258,
		38.185101, 32.430515, 19.922535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337433, 32.486736, 19.929514>,  <37.780857, 31.863451, 19.993414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337433, 32.486736, 19.929514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.698978, 32.604763, 19.805597>,  <37.915905, 32.675579, 19.731247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.698978, 32.604763, 19.805597>,  <37.337433, 32.486736, 19.929514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698978, 32.604763, 19.805597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403463, 0.347029, -0.846634,
		-0.142305, 0.890229, 0.432714,
		0.903862, 0.295065, -0.309791,
		37.970139, 32.693283, 19.712660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268105, 33.202644, 19.613737>,  <37.337433, 32.486736, 19.929514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268105, 33.202644, 19.613737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.597698, 33.029625, 19.467344>,  <37.795456, 32.925812, 19.379509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.597698, 33.029625, 19.467344>,  <37.268105, 33.202644, 19.613737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597698, 33.029625, 19.467344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291987, 0.229385, -0.928507,
		0.485578, 0.871941, 0.062710,
		0.823988, -0.432552, -0.365980,
		37.844894, 32.899860, 19.357550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313175, 33.578625, 19.070963>,  <37.268105, 33.202644, 19.613737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313175, 33.578625, 19.070963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.527523, 33.248516, 18.999670>,  <37.656132, 33.050449, 18.956894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.527523, 33.248516, 18.999670>,  <37.313175, 33.578625, 19.070963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527523, 33.248516, 18.999670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264182, 0.036603, -0.963778,
		0.801903, 0.563547, -0.198408,
		0.535872, -0.825273, -0.178232,
		37.688286, 33.000935, 18.946201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584602, 33.608818, 18.340801>,  <37.313175, 33.578625, 19.070963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584602, 33.608818, 18.340801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.610561, 33.215603, 18.409426>,  <37.626137, 32.979675, 18.450600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.610561, 33.215603, 18.409426>,  <37.584602, 33.608818, 18.340801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610561, 33.215603, 18.409426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252819, -0.182510, -0.950143,
		0.965334, 0.018290, -0.260375,
		0.064899, -0.983034, 0.171560,
		37.630032, 32.920692, 18.460894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937984, 33.215748, 17.705442>,  <37.584602, 33.608818, 18.340801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937984, 33.215748, 17.705442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.782661, 32.891029, 17.879890>,  <37.689468, 32.696198, 17.984558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.782661, 32.891029, 17.879890>,  <37.937984, 33.215748, 17.705442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782661, 32.891029, 17.879890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449476, -0.246300, -0.858666,
		0.804481, -0.529450, -0.269245,
		-0.388306, -0.811800, 0.436119,
		37.666168, 32.647488, 18.010727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964478, 32.746361, 17.273180>,  <37.937984, 33.215748, 17.705442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964478, 32.746361, 17.273180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.703732, 32.562248, 17.514248>,  <37.547283, 32.451778, 17.658888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.703732, 32.562248, 17.514248>,  <37.964478, 32.746361, 17.273180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703732, 32.562248, 17.514248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358050, -0.513751, -0.779654,
		0.668483, -0.724016, 0.170092,
		-0.651867, -0.460284, 0.602668,
		37.508171, 32.424164, 17.695047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964661, 32.033192, 17.064569>,  <37.964478, 32.746361, 17.273180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964661, 32.033192, 17.064569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.631790, 32.144577, 17.256378>,  <37.432068, 32.211411, 17.371464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.631790, 32.144577, 17.256378>,  <37.964661, 32.033192, 17.064569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631790, 32.144577, 17.256378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553509, -0.469176, -0.688114,
		0.033363, -0.838051, 0.544571,
		-0.832175, 0.278467, 0.479522,
		37.382137, 32.228119, 17.400234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522964, 31.494917, 16.927216>,  <37.964661, 32.033192, 17.064569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522964, 31.494917, 16.927216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.288776, 31.802408, 17.030191>,  <37.148262, 31.986904, 17.091976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.288776, 31.802408, 17.030191>,  <37.522964, 31.494917, 16.927216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288776, 31.802408, 17.030191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622093, -0.222395, -0.750694,
		-0.519827, -0.599663, 0.608428,
		-0.585474, 0.768729, 0.257439,
		37.113132, 32.033028, 17.107424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804485, 31.235046, 17.000853>,  <37.522964, 31.494917, 16.927216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804485, 31.235046, 17.000853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782452, 31.630352, 16.943867>,  <36.769234, 31.867537, 16.909676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782452, 31.630352, 16.943867>,  <36.804485, 31.235046, 17.000853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782452, 31.630352, 16.943867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701721, -0.139818, -0.698597,
		-0.710319, 0.061493, 0.701188,
		-0.055080, 0.988266, -0.142467,
		36.765926, 31.926832, 16.901127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164150, 31.398104, 17.102812>,  <36.804485, 31.235046, 17.000853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164150, 31.398104, 17.102812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.368675, 31.615698, 16.836687>,  <36.491390, 31.746254, 16.677011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.368675, 31.615698, 16.836687>,  <36.164150, 31.398104, 17.102812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368675, 31.615698, 16.836687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742979, -0.109266, -0.660336,
		-0.431910, 0.831950, 0.348301,
		0.511309, 0.543986, -0.665314,
		36.522068, 31.778894, 16.637093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405979, 31.049913, 17.080387>,  <36.164150, 31.398104, 17.102812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405979, 31.049913, 17.080387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008198, 31.007837, 17.081102>,  <34.769531, 30.982592, 17.081532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008198, 31.007837, 17.081102>,  <35.405979, 31.049913, 17.080387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008198, 31.007837, 17.081102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002153, 0.037345, 0.999300,
		-0.105185, 0.993751, -0.037364,
		-0.994450, -0.105192, 0.001789,
		34.709862, 30.976280, 17.081638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272190, 31.314178, 17.711107>,  <35.405979, 31.049913, 17.080387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272190, 31.314178, 17.711107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919350, 31.147516, 17.623209>,  <34.707645, 31.047520, 17.570469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919350, 31.147516, 17.623209>,  <35.272190, 31.314178, 17.711107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919350, 31.147516, 17.623209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215256, -0.058402, 0.974810,
		-0.418994, 0.907186, -0.038171,
		-0.882105, -0.416656, -0.219748,
		34.654716, 31.022520, 17.557285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741283, 31.669069, 18.073709>,  <35.272190, 31.314178, 17.711107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741283, 31.669069, 18.073709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.626625, 31.291224, 18.009785>,  <34.557831, 31.064516, 17.971430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.626625, 31.291224, 18.009785>,  <34.741283, 31.669069, 18.073709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626625, 31.291224, 18.009785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018111, -0.161438, 0.986717,
		-0.957866, 0.285731, 0.029167,
		-0.286644, -0.944614, -0.159811,
		34.540630, 31.007839, 17.961842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083702, 31.578173, 18.398659>,  <34.741283, 31.669069, 18.073709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083702, 31.578173, 18.398659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230309, 31.206011, 18.399893>,  <34.318272, 30.982714, 18.400633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230309, 31.206011, 18.399893>,  <34.083702, 31.578173, 18.398659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230309, 31.206011, 18.399893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086747, -0.030870, 0.995752,
		-0.926359, -0.365226, -0.092024,
		0.366515, -0.930407, 0.003086,
		34.340263, 30.926889, 18.400818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741966, 31.225601, 18.887121>,  <34.083702, 31.578173, 18.398659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741966, 31.225601, 18.887121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048744, 30.974777, 18.832586>,  <34.232811, 30.824284, 18.799866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048744, 30.974777, 18.832586>,  <33.741966, 31.225601, 18.887121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048744, 30.974777, 18.832586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075820, -0.122423, 0.989578,
		-0.637214, -0.769292, -0.046349,
		0.766948, -0.627058, -0.136338,
		34.278828, 30.786659, 18.791685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646408, 30.700535, 19.439928>,  <33.741966, 31.225601, 18.887121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646408, 30.700535, 19.439928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030323, 30.683216, 19.328985>,  <34.260674, 30.672825, 19.262421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030323, 30.683216, 19.328985>,  <33.646408, 30.700535, 19.439928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030323, 30.683216, 19.328985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257459, -0.257981, 0.931214,
		-0.111872, -0.965179, -0.236461,
		0.959791, -0.043297, -0.277355,
		34.318260, 30.670227, 19.245779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885334, 30.054142, 19.810270>,  <33.646408, 30.700535, 19.439928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885334, 30.054142, 19.810270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.219833, 30.265650, 19.752176>,  <34.420532, 30.392555, 19.717319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.219833, 30.265650, 19.752176>,  <33.885334, 30.054142, 19.810270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219833, 30.265650, 19.752176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278400, -0.181220, 0.943214,
		0.472426, -0.829192, -0.298754,
		0.836246, 0.528772, -0.145234,
		34.470707, 30.424282, 19.708607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456570, 29.702696, 20.115829>,  <33.885334, 30.054142, 19.810270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456570, 29.702696, 20.115829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587276, 30.078173, 20.071869>,  <34.665699, 30.303459, 20.045492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587276, 30.078173, 20.071869>,  <34.456570, 29.702696, 20.115829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587276, 30.078173, 20.071869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385856, -0.026353, 0.922183,
		0.862751, -0.343742, -0.370812,
		0.326765, 0.938694, -0.109899,
		34.685307, 30.359781, 20.038898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122196, 29.656601, 20.312365>,  <34.456570, 29.702696, 20.115829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122196, 29.656601, 20.312365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.041428, 30.047506, 20.338226>,  <34.992966, 30.282049, 20.353743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.041428, 30.047506, 20.338226>,  <35.122196, 29.656601, 20.312365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041428, 30.047506, 20.338226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450653, 0.034097, 0.892048,
		0.869562, 0.209261, -0.447293,
		-0.201923, 0.977265, 0.064655,
		34.980850, 30.340687, 20.357622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832752, 30.059481, 20.429176>,  <35.122196, 29.656601, 20.312365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832752, 30.059481, 20.429176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552917, 30.315178, 20.556898>,  <35.385017, 30.468596, 20.633532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552917, 30.315178, 20.556898>,  <35.832752, 30.059481, 20.429176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552917, 30.315178, 20.556898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467548, 0.071587, 0.881064,
		0.540355, 0.765667, -0.348958,
		-0.699582, 0.639242, 0.319303,
		35.343044, 30.506950, 20.652689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203709, 30.684143, 20.778755>,  <35.832752, 30.059481, 20.429176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203709, 30.684143, 20.778755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.824059, 30.662943, 20.902920>,  <35.596268, 30.650223, 20.977419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.824059, 30.662943, 20.902920>,  <36.203709, 30.684143, 20.778755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824059, 30.662943, 20.902920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312763, -0.043955, 0.948813,
		-0.036646, 0.997627, 0.058296,
		-0.949124, -0.053003, 0.310410,
		35.539322, 30.647041, 20.996042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190983, 31.132952, 21.384298>,  <36.203709, 30.684143, 20.778755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190983, 31.132952, 21.384298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.842640, 30.938993, 21.416504>,  <35.633633, 30.822618, 21.435827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.842640, 30.938993, 21.416504>,  <36.190983, 31.132952, 21.384298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842640, 30.938993, 21.416504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139771, -0.087250, 0.986332,
		-0.471245, 0.870208, 0.143757,
		-0.870857, -0.484897, 0.080514,
		35.581383, 30.793524, 21.440659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720882, 31.477251, 21.890259>,  <36.190983, 31.132952, 21.384298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720882, 31.477251, 21.890259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.584896, 31.102676, 21.855597>,  <35.503304, 30.877932, 21.834799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.584896, 31.102676, 21.855597>,  <35.720882, 31.477251, 21.890259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584896, 31.102676, 21.855597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136116, -0.042179, 0.989794,
		-0.930536, 0.348289, -0.113125,
		-0.339963, -0.936438, -0.086657,
		35.482906, 30.821745, 21.829599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238552, 31.496758, 22.363186>,  <35.720882, 31.477251, 21.890259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238552, 31.496758, 22.363186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.335308, 31.113132, 22.304285>,  <35.393364, 30.882957, 22.268944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.335308, 31.113132, 22.304285>,  <35.238552, 31.496758, 22.363186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335308, 31.113132, 22.304285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296857, -0.071335, 0.952254,
		-0.923777, -0.274056, 0.267450,
		0.241892, -0.959065, -0.147253,
		35.407875, 30.825413, 22.260109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499203, 31.507719, 22.539640>,  <35.238552, 31.496758, 22.363186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499203, 31.507719, 22.539640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.289932, 31.825438, 22.663177>,  <34.164371, 32.016068, 22.737299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.289932, 31.825438, 22.663177>,  <34.499203, 31.507719, 22.539640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289932, 31.825438, 22.663177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261099, 0.195575, -0.945293,
		-0.811242, -0.575193, 0.105069,
		-0.523177, 0.794294, 0.308841,
		34.132980, 32.063725, 22.755829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957188, 31.501926, 22.198936>,  <34.499203, 31.507719, 22.539640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957188, 31.501926, 22.198936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.923096, 31.885103, 22.308538>,  <33.902641, 32.115009, 22.374300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.923096, 31.885103, 22.308538>,  <33.957188, 31.501926, 22.198936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923096, 31.885103, 22.308538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296201, 0.238214, -0.924943,
		-0.951315, -0.159994, 0.263441,
		-0.085230, 0.957944, 0.274006,
		33.897526, 32.172485, 22.390739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269852, 31.680841, 22.124271>,  <33.957188, 31.501926, 22.198936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269852, 31.680841, 22.124271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448692, 32.038532, 22.115694>,  <33.555996, 32.253147, 22.110548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448692, 32.038532, 22.115694>,  <33.269852, 31.680841, 22.124271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448692, 32.038532, 22.115694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422541, 0.190011, -0.886202,
		-0.788392, 0.405280, 0.462802,
		0.447098, 0.894228, -0.021444,
		33.582821, 32.306801, 22.109261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749451, 32.344002, 21.971222>,  <33.269852, 31.680841, 22.124271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749451, 32.344002, 21.971222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.118359, 32.458035, 21.866804>,  <33.339703, 32.526455, 21.804153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.118359, 32.458035, 21.866804>,  <32.749451, 32.344002, 21.971222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118359, 32.458035, 21.866804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362248, 0.401775, -0.841043,
		-0.134886, 0.870232, 0.473816,
		0.922270, 0.285084, -0.261046,
		33.395039, 32.543560, 21.788490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577240, 32.939232, 21.715458>,  <32.749451, 32.344002, 21.971222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577240, 32.939232, 21.715458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.943501, 32.847378, 21.583490>,  <33.163258, 32.792263, 21.504309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.943501, 32.847378, 21.583490>,  <32.577240, 32.939232, 21.715458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943501, 32.847378, 21.583490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200840, 0.449610, -0.870353,
		0.348201, 0.863202, 0.365566,
		0.915653, -0.229637, -0.329920,
		33.218197, 32.778488, 21.484514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755451, 33.507812, 21.339619>,  <32.577240, 32.939232, 21.715458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755451, 33.507812, 21.339619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018105, 33.238190, 21.204279>,  <33.175697, 33.076416, 21.123075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018105, 33.238190, 21.204279>,  <32.755451, 33.507812, 21.339619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018105, 33.238190, 21.204279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155908, 0.317612, -0.935316,
		0.737918, 0.666913, 0.103465,
		0.656636, -0.674055, -0.338349,
		33.215096, 33.035973, 21.102774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229412, 33.822483, 21.004904>,  <32.755451, 33.507812, 21.339619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229412, 33.822483, 21.004904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.198074, 33.454800, 20.850544>,  <33.179272, 33.234188, 20.757929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.198074, 33.454800, 20.850544>,  <33.229412, 33.822483, 21.004904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198074, 33.454800, 20.850544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328475, 0.389275, -0.860563,
		0.941258, 0.059336, -0.332435,
		-0.078346, -0.919208, -0.385898,
		33.174572, 33.179035, 20.734774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186718, 34.601910, 20.778349>,  <33.229412, 33.822483, 21.004904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186718, 34.601910, 20.778349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.822483, 34.748135, 20.701216>,  <32.603943, 34.835869, 20.654936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.822483, 34.748135, 20.701216>,  <33.186718, 34.601910, 20.778349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822483, 34.748135, 20.701216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081900, 0.297709, 0.951137,
		0.405111, 0.881891, -0.241152,
		-0.910592, 0.365566, -0.192832,
		32.549305, 34.857803, 20.643366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162998, 35.246574, 21.088160>,  <33.186718, 34.601910, 20.778349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162998, 35.246574, 21.088160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.786438, 35.117146, 21.050095>,  <32.560501, 35.039486, 21.027256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.786438, 35.117146, 21.050095>,  <33.162998, 35.246574, 21.088160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786438, 35.117146, 21.050095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161277, 0.184065, 0.969593,
		-0.296221, 0.928127, -0.225465,
		-0.941405, -0.323576, -0.095162,
		32.504017, 35.020073, 21.021545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716980, 35.718559, 21.494589>,  <33.162998, 35.246574, 21.088160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716980, 35.718559, 21.494589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.480171, 35.398750, 21.454042>,  <32.338085, 35.206863, 21.429714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.480171, 35.398750, 21.454042>,  <32.716980, 35.718559, 21.494589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480171, 35.398750, 21.454042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132186, -0.027742, 0.990837,
		-0.795009, 0.599994, -0.089262,
		-0.592019, -0.799524, -0.101366,
		32.302567, 35.158894, 21.423632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163071, 35.853580, 21.900278>,  <32.716980, 35.718559, 21.494589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163071, 35.853580, 21.900278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.142708, 35.457882, 21.845438>,  <32.130489, 35.220463, 21.812534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.142708, 35.457882, 21.845438>,  <32.163071, 35.853580, 21.900278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142708, 35.457882, 21.845438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133371, -0.129314, 0.982594,
		-0.989758, 0.068308, -0.125353,
		-0.050909, -0.989248, -0.137100,
		32.127434, 35.161106, 21.804308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518242, 35.617371, 22.228088>,  <32.163071, 35.853580, 21.900278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518242, 35.617371, 22.228088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.779421, 35.315971, 22.197376>,  <31.936129, 35.135132, 22.178949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.779421, 35.315971, 22.197376>,  <31.518242, 35.617371, 22.228088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779421, 35.315971, 22.197376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054648, -0.054242, 0.997031,
		-0.755431, -0.655203, 0.005760,
		0.652946, -0.753503, -0.076782,
		31.975306, 35.089920, 22.174341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342249, 35.186512, 22.671965>,  <31.518242, 35.617371, 22.228088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342249, 35.186512, 22.671965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.712944, 35.053761, 22.601517>,  <31.935360, 34.974110, 22.559248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.712944, 35.053761, 22.601517>,  <31.342249, 35.186512, 22.671965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712944, 35.053761, 22.601517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114501, -0.196983, 0.973698,
		-0.357843, -0.922526, -0.144551,
		0.926735, -0.331879, -0.176118,
		31.990965, 34.954197, 22.548681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385015, 34.649670, 23.069498>,  <31.342249, 35.186512, 22.671965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385015, 34.649670, 23.069498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.755915, 34.767056, 22.976467>,  <31.978455, 34.837486, 22.920649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.755915, 34.767056, 22.976467>,  <31.385015, 34.649670, 23.069498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755915, 34.767056, 22.976467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292814, -0.181134, 0.938856,
		0.233393, -0.938653, -0.253887,
		0.927247, 0.293464, -0.232575,
		32.034088, 34.855095, 22.906694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.760750, 35.553909, 16.897640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.606834, 35.189602, 16.957567>,  <35.514484, 34.971020, 16.993523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.606834, 35.189602, 16.957567>,  <35.760750, 35.553909, 16.897640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606834, 35.189602, 16.957567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217658, 0.068202, 0.973639,
		-0.896976, 0.407250, 0.171993,
		-0.384785, -0.910766, 0.149817,
		35.491398, 34.916370, 17.002512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120094, 35.359810, 17.417110>,  <35.760750, 35.553909, 16.897640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120094, 35.359810, 17.417110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.366608, 35.045181, 17.401569>,  <35.514515, 34.856403, 17.392244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.366608, 35.045181, 17.401569>,  <35.120094, 35.359810, 17.417110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366608, 35.045181, 17.401569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164391, 0.080240, 0.983126,
		-0.770178, -0.612268, 0.178755,
		0.616281, -0.786568, -0.038853,
		35.551491, 34.809212, 17.389914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947193, 34.918995, 17.913904>,  <35.120094, 35.359810, 17.417110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947193, 34.918995, 17.913904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.327385, 34.833672, 17.823492>,  <35.555500, 34.782478, 17.769245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.327385, 34.833672, 17.823492>,  <34.947193, 34.918995, 17.913904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327385, 34.833672, 17.823492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216334, -0.068062, 0.973944,
		-0.223135, -0.974611, -0.018546,
		0.950479, -0.213309, -0.226028,
		35.612530, 34.769680, 17.755684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156639, 34.411358, 18.380148>,  <34.947193, 34.918995, 17.913904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156639, 34.411358, 18.380148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.498253, 34.579983, 18.258217>,  <35.703220, 34.681156, 18.185059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.498253, 34.579983, 18.258217>,  <35.156639, 34.411358, 18.380148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498253, 34.579983, 18.258217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331136, 0.011404, 0.943514,
		0.401223, -0.906729, -0.129854,
		0.854031, 0.421559, -0.304826,
		35.754463, 34.706451, 18.166769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693020, 33.950947, 18.836592>,  <35.156639, 34.411358, 18.380148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693020, 33.950947, 18.836592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.867580, 34.285435, 18.703754>,  <35.972317, 34.486126, 18.624052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.867580, 34.285435, 18.703754>,  <35.693020, 33.950947, 18.836592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867580, 34.285435, 18.703754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270700, 0.229967, 0.934792,
		0.858063, -0.497846, -0.126006,
		0.436406, 0.836220, -0.332093,
		35.998501, 34.536301, 18.604126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196175, 34.043091, 19.333141>,  <35.693020, 33.950947, 18.836592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196175, 34.043091, 19.333141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.192413, 34.406048, 19.165070>,  <36.190159, 34.623821, 19.064226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.192413, 34.406048, 19.165070>,  <36.196175, 34.043091, 19.333141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192413, 34.406048, 19.165070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227217, 0.411146, 0.882798,
		0.973799, -0.087174, -0.210039,
		-0.009399, 0.907392, -0.420181,
		36.189594, 34.678265, 19.039015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889259, 34.460281, 19.437836>,  <36.196175, 34.043091, 19.333141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889259, 34.460281, 19.437836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.600967, 34.732574, 19.385454>,  <36.427994, 34.895950, 19.354025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.600967, 34.732574, 19.385454>,  <36.889259, 34.460281, 19.437836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600967, 34.732574, 19.385454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243884, 0.425831, 0.871314,
		0.648899, 0.596044, -0.472929,
		-0.720730, 0.680734, -0.130956,
		36.384750, 34.936794, 19.346167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253704, 35.190292, 19.469212>,  <36.889259, 34.460281, 19.437836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253704, 35.190292, 19.469212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.863266, 35.224335, 19.549210>,  <36.629002, 35.244759, 19.597208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.863266, 35.224335, 19.549210>,  <37.253704, 35.190292, 19.469212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863266, 35.224335, 19.549210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214227, 0.532089, 0.819139,
		-0.036706, 0.842401, -0.537600,
		-0.976094, 0.085101, 0.199996,
		36.570438, 35.249866, 19.609209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195847, 35.824844, 19.809671>,  <37.253704, 35.190292, 19.469212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195847, 35.824844, 19.809671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.839458, 35.663349, 19.892782>,  <36.625626, 35.566452, 19.942650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.839458, 35.663349, 19.892782>,  <37.195847, 35.824844, 19.809671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839458, 35.663349, 19.892782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005696, 0.447620, 0.894206,
		-0.454033, 0.797891, -0.396514,
		-0.890967, -0.403740, 0.207779,
		36.572170, 35.542229, 19.955116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821743, 36.358356, 20.053724>,  <37.195847, 35.824844, 19.809671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821743, 36.358356, 20.053724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.657047, 36.011528, 20.165909>,  <36.558231, 35.803429, 20.233219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.657047, 36.011528, 20.165909>,  <36.821743, 36.358356, 20.053724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657047, 36.011528, 20.165909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010971, 0.303018, 0.952922,
		-0.911237, 0.395429, -0.115251,
		-0.411736, -0.867073, 0.280460,
		36.533527, 35.751408, 20.250048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447556, 36.657032, 20.461061>,  <36.821743, 36.358356, 20.053724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447556, 36.657032, 20.461061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.447273, 36.265865, 20.544668>,  <36.447105, 36.031166, 20.594831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.447273, 36.265865, 20.544668>,  <36.447556, 36.657032, 20.461061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447273, 36.265865, 20.544668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103773, 0.207815, 0.972648,
		-0.994601, 0.022377, 0.101334,
		-0.000706, -0.977912, 0.209015,
		36.447060, 35.972492, 20.607372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933708, 36.423954, 21.020340>,  <36.447556, 36.657032, 20.461061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933708, 36.423954, 21.020340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.227364, 36.152424, 21.026569>,  <36.403557, 35.989506, 21.030308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.227364, 36.152424, 21.026569>,  <35.933708, 36.423954, 21.020340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227364, 36.152424, 21.026569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104627, 0.135758, 0.985202,
		-0.670894, -0.721642, 0.170688,
		0.734135, -0.678825, 0.015576,
		36.447605, 35.948776, 21.031242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101162, 36.373402, 21.261957>,  <35.933708, 36.423954, 21.020340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101162, 36.373402, 21.261957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.851208, 36.678894, 21.326733>,  <34.701233, 36.862190, 21.365599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.851208, 36.678894, 21.326733>,  <35.101162, 36.373402, 21.261957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851208, 36.678894, 21.326733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509558, -0.241831, -0.825753,
		-0.591494, -0.598521, 0.540285,
		-0.624888, 0.763735, 0.161939,
		34.663742, 36.908016, 21.375315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380547, 36.098934, 21.308510>,  <35.101162, 36.373402, 21.261957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380547, 36.098934, 21.308510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.398224, 36.479408, 21.186337>,  <34.408833, 36.707691, 21.113031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.398224, 36.479408, 21.186337>,  <34.380547, 36.098934, 21.308510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398224, 36.479408, 21.186337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339612, -0.273222, -0.900008,
		-0.939527, 0.143506, 0.310959,
		0.044196, 0.951187, -0.305435,
		34.411484, 36.764763, 21.094706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787834, 36.160713, 20.822754>,  <34.380547, 36.098934, 21.308510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787834, 36.160713, 20.822754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.987125, 36.500145, 20.751549>,  <34.106701, 36.703804, 20.708826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.987125, 36.500145, 20.751549>,  <33.787834, 36.160713, 20.822754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987125, 36.500145, 20.751549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296244, -0.026353, -0.954749,
		-0.814868, 0.528417, 0.238256,
		0.498226, 0.848576, -0.178014,
		34.136593, 36.754719, 20.698145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359707, 36.555870, 20.540901>,  <33.787834, 36.160713, 20.822754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359707, 36.555870, 20.540901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.689983, 36.757004, 20.438612>,  <33.888149, 36.877682, 20.377239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.689983, 36.757004, 20.438612>,  <33.359707, 36.555870, 20.540901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689983, 36.757004, 20.438612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396359, 0.194549, -0.897246,
		-0.401412, 0.842207, 0.359939,
		0.825693, 0.502830, -0.255722,
		33.937691, 36.907852, 20.361895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177464, 37.177956, 20.296551>,  <33.359707, 36.555870, 20.540901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177464, 37.177956, 20.296551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.542202, 37.126682, 20.140545>,  <33.761044, 37.095917, 20.046940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.542202, 37.126682, 20.140545>,  <33.177464, 37.177956, 20.296551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542202, 37.126682, 20.140545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359014, 0.211825, -0.908977,
		0.199133, 0.968865, 0.147130,
		0.911842, -0.128186, -0.390017,
		33.815754, 37.088226, 20.023540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340401, 37.754566, 19.992262>,  <33.177464, 37.177956, 20.296551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340401, 37.754566, 19.992262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.555595, 37.463898, 19.821373>,  <33.684711, 37.289497, 19.718840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.555595, 37.463898, 19.821373>,  <33.340401, 37.754566, 19.992262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555595, 37.463898, 19.821373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366081, 0.255119, -0.894930,
		0.759313, 0.637858, -0.128770,
		0.537986, -0.726672, -0.427223,
		33.716991, 37.245895, 19.693207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389393, 37.988373, 19.258877>,  <33.340401, 37.754566, 19.992262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389393, 37.988373, 19.258877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.556057, 37.625244, 19.239861>,  <33.656055, 37.407368, 19.228451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.556057, 37.625244, 19.239861>,  <33.389393, 37.988373, 19.258877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556057, 37.625244, 19.239861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044249, 0.031983, -0.998509,
		0.907984, 0.418145, -0.026844,
		0.416663, -0.907817, -0.047543,
		33.681057, 37.352898, 19.225597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870228, 38.088787, 18.783377>,  <33.389393, 37.988373, 19.258877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870228, 38.088787, 18.783377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.767361, 37.702526, 18.798264>,  <33.705643, 37.470768, 18.807196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.767361, 37.702526, 18.798264>,  <33.870228, 38.088787, 18.783377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767361, 37.702526, 18.798264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142558, -0.000182, -0.989787,
		0.955795, -0.259842, -0.137614,
		-0.257163, -0.965651, 0.037216,
		33.690212, 37.412830, 18.809429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327713, 37.690784, 18.315634>,  <33.870228, 38.088787, 18.783377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327713, 37.690784, 18.315634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.998077, 37.472958, 18.378004>,  <33.800297, 37.342262, 18.415426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.998077, 37.472958, 18.378004>,  <34.327713, 37.690784, 18.315634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998077, 37.472958, 18.378004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060186, -0.189535, -0.980028,
		0.563249, -0.817018, 0.123419,
		-0.824093, -0.544571, 0.155928,
		33.750851, 37.309586, 18.424782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405830, 37.197113, 17.777624>,  <34.327713, 37.690784, 18.315634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405830, 37.197113, 17.777624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.032082, 37.157177, 17.914436>,  <33.807835, 37.133217, 17.996525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.032082, 37.157177, 17.914436>,  <34.405830, 37.197113, 17.777624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032082, 37.157177, 17.914436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315674, -0.213216, -0.924602,
		0.165237, -0.971891, 0.167707,
		-0.934370, -0.099837, 0.342032,
		33.751770, 37.127224, 18.017046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223389, 36.504982, 17.665188>,  <34.405830, 37.197113, 17.777624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223389, 36.504982, 17.665188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.893894, 36.731358, 17.678909>,  <33.696198, 36.867184, 17.687143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.893894, 36.731358, 17.678909>,  <34.223389, 36.504982, 17.665188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893894, 36.731358, 17.678909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281677, -0.355973, -0.891034,
		-0.492060, -0.743636, 0.452639,
		-0.823732, 0.565940, 0.034305,
		33.646774, 36.901138, 17.689201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774006, 36.216961, 17.293823>,  <34.223389, 36.504982, 17.665188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774006, 36.216961, 17.293823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.596100, 36.574333, 17.319027>,  <33.489357, 36.788757, 17.334148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.596100, 36.574333, 17.319027>,  <33.774006, 36.216961, 17.293823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596100, 36.574333, 17.319027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467024, -0.171315, -0.867490,
		-0.764247, -0.415254, 0.493448,
		-0.444764, 0.893429, 0.063007,
		33.462669, 36.842361, 17.337929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999954, 36.126305, 17.122938>,  <33.774006, 36.216961, 17.293823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999954, 36.126305, 17.122938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.089424, 36.507561, 17.041451>,  <33.143105, 36.736313, 16.992558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.089424, 36.507561, 17.041451>,  <32.999954, 36.126305, 17.122938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089424, 36.507561, 17.041451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449905, -0.084448, -0.889075,
		-0.864613, 0.290516, 0.409932,
		0.223673, 0.953137, -0.203719,
		33.156525, 36.793503, 16.980335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877014, 36.459274, 17.679609>,  <32.999954, 36.126305, 17.122938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877014, 36.459274, 17.679609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.643757, 36.151653, 17.574919>,  <32.503803, 35.967079, 17.512104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.643757, 36.151653, 17.574919>,  <32.877014, 36.459274, 17.679609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643757, 36.151653, 17.574919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233372, -0.150007, 0.960747,
		-0.778128, 0.621332, -0.092000,
		-0.583142, -0.769054, -0.261726,
		32.468815, 35.920937, 17.496401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174175, 36.495892, 18.110117>,  <32.877014, 36.459274, 17.679609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174175, 36.495892, 18.110117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.246059, 36.121323, 17.989567>,  <32.289188, 35.896584, 17.917236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.246059, 36.121323, 17.989567>,  <32.174175, 36.495892, 18.110117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246059, 36.121323, 17.989567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284760, -0.342765, 0.895223,
		-0.941603, -0.075059, -0.328252,
		0.179708, -0.936418, -0.301375,
		32.299973, 35.840397, 17.899155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523582, 36.052361, 18.283188>,  <32.174175, 36.495892, 18.110117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523582, 36.052361, 18.283188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.850296, 35.823936, 18.250305>,  <32.046326, 35.686882, 18.230576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.850296, 35.823936, 18.250305>,  <31.523582, 36.052361, 18.283188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850296, 35.823936, 18.250305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138230, -0.332034, 0.933084,
		-0.560142, -0.750763, -0.350137,
		0.816783, -0.571059, -0.082208,
		32.095329, 35.652618, 18.225643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327356, 35.475529, 18.627779>,  <31.523582, 36.052361, 18.283188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327356, 35.475529, 18.627779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.721996, 35.415371, 18.602461>,  <31.958780, 35.379276, 18.587271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.721996, 35.415371, 18.602461>,  <31.327356, 35.475529, 18.627779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721996, 35.415371, 18.602461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021496, -0.504310, 0.863255,
		-0.161749, -0.850325, -0.500784,
		0.986598, -0.150395, -0.063293,
		32.017975, 35.370251, 18.583473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375866, 34.861401, 18.983997>,  <31.327356, 35.475529, 18.627779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375866, 34.861401, 18.983997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.759354, 34.974564, 18.972536>,  <31.989447, 35.042461, 18.965660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.759354, 34.974564, 18.972536>,  <31.375866, 34.861401, 18.983997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759354, 34.974564, 18.972536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152888, -0.427884, 0.890809,
		0.239761, -0.858415, -0.453474,
		0.958718, 0.282912, -0.028651,
		32.046970, 35.059437, 18.963942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757772, 34.259312, 19.178299>,  <31.375866, 34.861401, 18.983997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757772, 34.259312, 19.178299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.971186, 34.589909, 19.250134>,  <32.099236, 34.788265, 19.293234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.971186, 34.589909, 19.250134>,  <31.757772, 34.259312, 19.178299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971186, 34.589909, 19.250134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017705, -0.223200, 0.974612,
		0.845593, -0.516809, -0.133718,
		0.533534, 0.826493, 0.179586,
		32.131245, 34.837856, 19.304010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174568, 33.959133, 19.672594>,  <31.757772, 34.259312, 19.178299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174568, 33.959133, 19.672594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.207302, 34.352806, 19.735439>,  <32.226944, 34.589008, 19.773148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.207302, 34.352806, 19.735439>,  <32.174568, 33.959133, 19.672594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207302, 34.352806, 19.735439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153625, -0.168217, 0.973706,
		0.984735, -0.055546, -0.164962,
		0.081835, 0.984184, 0.157115,
		32.231853, 34.648060, 19.782574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664280, 34.021416, 20.296078>,  <32.174568, 33.959133, 19.672594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664280, 34.021416, 20.296078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.513321, 34.390587, 20.265694>,  <32.422745, 34.612091, 20.247463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.513321, 34.390587, 20.265694>,  <32.664280, 34.021416, 20.296078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513321, 34.390587, 20.265694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119367, 0.129822, 0.984326,
		0.918325, 0.362419, -0.159162,
		-0.377401, 0.922930, -0.075958,
		32.400101, 34.667465, 20.242907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373241, 33.875271, 20.290163>,  <32.664280, 34.021416, 20.296078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373241, 33.875271, 20.290163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.215611, 33.509487, 20.253365>,  <33.121033, 33.290016, 20.231285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.215611, 33.509487, 20.253365>,  <33.373241, 33.875271, 20.290163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215611, 33.509487, 20.253365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037777, 0.116129, -0.992515,
		0.918301, -0.387652, -0.080310,
		-0.394077, -0.914461, -0.091997,
		33.097385, 33.235149, 20.225765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782524, 33.468010, 19.811682>,  <33.373241, 33.875271, 20.290163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782524, 33.468010, 19.811682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.430882, 33.277443, 19.817245>,  <33.219894, 33.163101, 19.820583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.430882, 33.277443, 19.817245>,  <33.782524, 33.468010, 19.811682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430882, 33.277443, 19.817245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017476, 0.003053, -0.999843,
		0.476305, -0.879211, -0.011010,
		-0.879107, -0.476422, 0.013911,
		33.167149, 33.134518, 19.821419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939526, 32.887703, 19.423166>,  <33.782524, 33.468010, 19.811682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939526, 32.887703, 19.423166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.542133, 32.933113, 19.419142>,  <33.303696, 32.960358, 19.416727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.542133, 32.933113, 19.419142>,  <33.939526, 32.887703, 19.423166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542133, 32.933113, 19.419142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018847, -0.250725, -0.967875,
		-0.112395, -0.961379, 0.251231,
		-0.993485, 0.113520, -0.010062,
		33.244087, 32.967171, 19.416122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649410, 32.251945, 18.988562>,  <33.939526, 32.887703, 19.423166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649410, 32.251945, 18.988562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.373112, 32.541180, 18.990213>,  <33.207333, 32.714718, 18.991205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.373112, 32.541180, 18.990213>,  <33.649410, 32.251945, 18.988562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373112, 32.541180, 18.990213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281914, -0.264041, -0.922392,
		-0.665875, -0.638306, 0.386233,
		-0.690749, 0.723082, 0.004129,
		33.165886, 32.758106, 18.991451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237907, 32.000198, 18.454157>,  <33.649410, 32.251945, 18.988562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237907, 32.000198, 18.454157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.094166, 32.369919, 18.505594>,  <33.007923, 32.591751, 18.536457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.094166, 32.369919, 18.505594>,  <33.237907, 32.000198, 18.454157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094166, 32.369919, 18.505594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104188, 0.097199, -0.989797,
		-0.927368, -0.369082, 0.061372,
		-0.359350, 0.924300, 0.128593,
		32.986362, 32.647209, 18.544172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471901, 32.169533, 18.047365>,  <33.237907, 32.000198, 18.454157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471901, 32.169533, 18.047365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.655968, 32.522072, 18.090223>,  <32.766407, 32.733593, 18.115938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.655968, 32.522072, 18.090223>,  <32.471901, 32.169533, 18.047365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655968, 32.522072, 18.090223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037603, 0.101227, -0.994152,
		-0.887038, 0.461501, 0.013440,
		0.460163, 0.881345, 0.107147,
		32.794018, 32.786476, 18.122368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053013, 32.648758, 17.805557>,  <32.471901, 32.169533, 18.047365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053013, 32.648758, 17.805557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.426670, 32.790600, 17.789425>,  <32.650864, 32.875706, 17.779745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.426670, 32.790600, 17.789425>,  <32.053013, 32.648758, 17.805557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426670, 32.790600, 17.789425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114261, 0.190100, -0.975093,
		-0.338104, 0.915489, 0.218098,
		0.934147, 0.354603, -0.040332,
		32.706913, 32.896980, 17.777325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026184, 33.291294, 17.405012>,  <32.053013, 32.648758, 17.805557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026184, 33.291294, 17.405012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.410751, 33.181259, 17.404812>,  <32.641491, 33.115238, 17.404692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.410751, 33.181259, 17.404812>,  <32.026184, 33.291294, 17.405012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410751, 33.181259, 17.404812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047465, 0.167687, -0.984697,
		0.270959, 0.946683, 0.174275,
		0.961420, -0.275085, -0.000502,
		32.699177, 33.098732, 17.404661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379711, 33.834820, 17.119009>,  <32.026184, 33.291294, 17.405012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379711, 33.834820, 17.119009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.589527, 33.498672, 17.064384>,  <32.715416, 33.296986, 17.031609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.589527, 33.498672, 17.064384>,  <32.379711, 33.834820, 17.119009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589527, 33.498672, 17.064384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006349, 0.164256, -0.986397,
		0.851364, 0.516535, 0.091494,
		0.524537, -0.840364, -0.136562,
		32.746887, 33.246563, 17.023417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.935600, 32.538696, 32.994446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991028, 32.274269, 32.699478>,  <37.024284, 32.115612, 32.522499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991028, 32.274269, 32.699478>,  <36.935600, 32.538696, 32.994446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991028, 32.274269, 32.699478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456211, 0.618282, -0.640000,
		0.879016, 0.425103, -0.215911,
		0.138572, -0.661071, -0.737416,
		37.032600, 32.075947, 32.478252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916428, 33.056267, 32.317051>,  <36.935600, 32.538696, 32.994446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916428, 33.056267, 32.317051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.886696, 32.684189, 32.173267>,  <36.868855, 32.460941, 32.086998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.886696, 32.684189, 32.173267>,  <36.916428, 33.056267, 32.317051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886696, 32.684189, 32.173267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439167, 0.354155, -0.825655,
		0.895325, 0.096489, -0.434837,
		-0.074333, -0.930196, -0.359459,
		36.864395, 32.405128, 32.065430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053680, 33.157383, 31.600817>,  <36.916428, 33.056267, 32.317051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053680, 33.157383, 31.600817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.883842, 32.795525, 31.615419>,  <36.781940, 32.578411, 31.624180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.883842, 32.795525, 31.615419>,  <37.053680, 33.157383, 31.600817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883842, 32.795525, 31.615419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417449, 0.159835, -0.894533,
		0.803401, -0.395056, -0.445509,
		-0.424599, -0.904645, 0.036505,
		36.756462, 32.524132, 31.626371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115051, 32.882622, 30.916983>,  <37.053680, 33.157383, 31.600817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115051, 32.882622, 30.916983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824203, 32.679623, 31.101913>,  <36.649696, 32.557823, 31.212872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824203, 32.679623, 31.101913>,  <37.115051, 32.882622, 30.916983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824203, 32.679623, 31.101913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485839, -0.095411, -0.868825,
		0.485035, -0.856356, -0.177185,
		-0.727119, -0.507494, 0.462329,
		36.606068, 32.527374, 31.240612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006847, 32.373466, 30.450830>,  <37.115051, 32.882622, 30.916983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006847, 32.373466, 30.450830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.677448, 32.413658, 30.674171>,  <36.479809, 32.437775, 30.808176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.677448, 32.413658, 30.674171>,  <37.006847, 32.373466, 30.450830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677448, 32.413658, 30.674171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567182, -0.124046, -0.814197,
		-0.012547, -0.987176, 0.159140,
		-0.823497, 0.100477, 0.558352,
		36.430401, 32.443802, 30.841677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591866, 31.841955, 30.279629>,  <37.006847, 32.373466, 30.450830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591866, 31.841955, 30.279629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.343719, 32.118645, 30.427505>,  <36.194832, 32.284657, 30.516232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.343719, 32.118645, 30.427505>,  <36.591866, 31.841955, 30.279629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343719, 32.118645, 30.427505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650544, -0.190506, -0.735187,
		-0.438116, -0.696583, 0.568178,
		-0.620360, 0.691722, 0.369694,
		36.157612, 32.326160, 30.538414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868572, 31.526108, 30.152777>,  <36.591866, 31.841955, 30.279629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868572, 31.526108, 30.152777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822742, 31.914392, 30.237244>,  <35.795242, 32.147362, 30.287924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822742, 31.914392, 30.237244>,  <35.868572, 31.526108, 30.152777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822742, 31.914392, 30.237244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737755, 0.059208, -0.672467,
		-0.665275, -0.232838, 0.709363,
		-0.114576, 0.970711, 0.211167,
		35.788368, 32.205605, 30.300594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196354, 31.641153, 30.407473>,  <35.868572, 31.526108, 30.152777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196354, 31.641153, 30.407473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332375, 31.994581, 30.278681>,  <35.413986, 32.206638, 30.201406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332375, 31.994581, 30.278681>,  <35.196354, 31.641153, 30.407473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332375, 31.994581, 30.278681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818194, 0.109192, -0.564478,
		-0.463598, 0.455394, 0.760061,
		0.340052, 0.883569, -0.321979,
		35.434391, 32.259651, 30.182087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532352, 32.066360, 30.285069>,  <35.196354, 31.641153, 30.407473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532352, 32.066360, 30.285069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821228, 32.254143, 30.081873>,  <34.994553, 32.366810, 29.959955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821228, 32.254143, 30.081873>,  <34.532352, 32.066360, 30.285069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821228, 32.254143, 30.081873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659093, 0.244247, -0.711295,
		-0.209845, 0.848503, 0.485806,
		0.722192, 0.469453, -0.507988,
		35.037888, 32.394978, 29.929476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068241, 32.360741, 29.772385>,  <34.532352, 32.066360, 30.285069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068241, 32.360741, 29.772385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431927, 32.469582, 29.646349>,  <34.650139, 32.534885, 29.570726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431927, 32.469582, 29.646349>,  <34.068241, 32.360741, 29.772385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431927, 32.469582, 29.646349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360360, 0.135374, -0.922938,
		-0.208480, 0.952698, 0.221139,
		0.909218, 0.272103, -0.315091,
		34.704693, 32.551212, 29.551821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103977, 33.128647, 29.429384>,  <34.068241, 32.360741, 29.772385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103977, 33.128647, 29.429384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.388374, 32.887539, 29.284521>,  <34.559013, 32.742874, 29.197603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.388374, 32.887539, 29.284521>,  <34.103977, 33.128647, 29.429384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388374, 32.887539, 29.284521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301305, 0.204208, -0.931404,
		0.635374, 0.771345, -0.036425,
		0.710995, -0.602765, -0.362159,
		34.601673, 32.706711, 29.175873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377846, 33.435162, 28.773708>,  <34.103977, 33.128647, 29.429384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377846, 33.435162, 28.773708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495918, 33.055042, 28.734100>,  <34.566761, 32.826969, 28.710335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495918, 33.055042, 28.734100>,  <34.377846, 33.435162, 28.773708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495918, 33.055042, 28.734100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395301, -0.027115, -0.918151,
		0.869832, 0.310161, -0.383657,
		0.295177, -0.950297, -0.099021,
		34.584473, 32.769955, 28.704393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317234, 33.998512, 28.320446>,  <34.377846, 33.435162, 28.773708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317234, 33.998512, 28.320446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.935219, 34.038937, 28.431934>,  <33.706009, 34.063190, 28.498827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.935219, 34.038937, 28.431934>,  <34.317234, 33.998512, 28.320446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935219, 34.038937, 28.431934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295413, 0.404054, 0.865720,
		-0.025126, 0.909135, -0.415743,
		-0.955039, 0.101064, 0.278723,
		33.648708, 34.069256, 28.515551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349468, 34.627232, 28.679146>,  <34.317234, 33.998512, 28.320446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349468, 34.627232, 28.679146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989807, 34.488052, 28.785326>,  <33.774010, 34.404545, 28.849033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989807, 34.488052, 28.785326>,  <34.349468, 34.627232, 28.679146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989807, 34.488052, 28.785326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072924, 0.478947, 0.874810,
		-0.431520, 0.805943, -0.405272,
		-0.899151, -0.347944, 0.265448,
		33.720062, 34.383671, 28.864960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938412, 35.177532, 28.906605>,  <34.349468, 34.627232, 28.679146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938412, 35.177532, 28.906605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.769379, 34.862247, 29.085560>,  <33.667957, 34.673077, 29.192932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.769379, 34.862247, 29.085560>,  <33.938412, 35.177532, 28.906605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769379, 34.862247, 29.085560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012972, 0.498835, 0.866600,
		-0.906232, 0.360406, -0.221023,
		-0.422582, -0.788208, 0.447385,
		33.642605, 34.625786, 29.219776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359058, 35.470894, 29.222826>,  <33.938412, 35.177532, 28.906605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359058, 35.470894, 29.222826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434132, 35.125885, 29.410797>,  <33.479176, 34.918880, 29.523581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434132, 35.125885, 29.410797>,  <33.359058, 35.470894, 29.222826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434132, 35.125885, 29.410797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058921, 0.487456, 0.871157,
		-0.980460, -0.135814, 0.142309,
		0.187685, -0.862520, 0.469929,
		33.490437, 34.867130, 29.551775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870533, 35.426014, 29.857121>,  <33.359058, 35.470894, 29.222826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870533, 35.426014, 29.857121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.172123, 35.169060, 29.912054>,  <33.353077, 35.014885, 29.945013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.172123, 35.169060, 29.912054>,  <32.870533, 35.426014, 29.857121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172123, 35.169060, 29.912054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003901, 0.213435, 0.976950,
		-0.656891, -0.736060, 0.163430,
		0.753975, -0.642387, 0.137332,
		33.398315, 34.976345, 29.953255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736343, 35.012371, 30.445583>,  <32.870533, 35.426014, 29.857121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736343, 35.012371, 30.445583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133362, 34.967857, 30.425695>,  <33.371571, 34.941151, 30.413763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133362, 34.967857, 30.425695>,  <32.736343, 35.012371, 30.445583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133362, 34.967857, 30.425695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079272, 0.279504, 0.956867,
		-0.092588, -0.953673, 0.286241,
		0.992544, -0.111285, -0.049720,
		33.431126, 34.934471, 30.410780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862812, 34.874390, 31.141506>,  <32.736343, 35.012371, 30.445583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862812, 34.874390, 31.141506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.230049, 34.955376, 31.005203>,  <33.450390, 35.003967, 30.923422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.230049, 34.955376, 31.005203>,  <32.862812, 34.874390, 31.141506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230049, 34.955376, 31.005203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266522, 0.320997, 0.908805,
		0.293381, -0.925186, 0.240744,
		0.918093, 0.202463, -0.340757,
		33.505478, 35.016113, 30.902977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376617, 34.553925, 31.590591>,  <32.862812, 34.874390, 31.141506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376617, 34.553925, 31.590591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589066, 34.837475, 31.404943>,  <33.716534, 35.007607, 31.293554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589066, 34.837475, 31.404943>,  <33.376617, 34.553925, 31.590591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589066, 34.837475, 31.404943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401927, 0.271429, 0.874518,
		0.745902, -0.651013, -0.140756,
		0.531117, 0.708878, -0.464119,
		33.748402, 35.050137, 31.265707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100288, 34.431305, 31.890387>,  <33.376617, 34.553925, 31.590591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100288, 34.431305, 31.890387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085056, 34.796307, 31.727472>,  <34.075916, 35.015308, 31.629725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085056, 34.796307, 31.727472>,  <34.100288, 34.431305, 31.890387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085056, 34.796307, 31.727472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456658, 0.378423, 0.805146,
		0.888827, -0.155331, -0.431113,
		-0.038079, 0.912507, -0.407286,
		34.073631, 35.070057, 31.605288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764252, 34.717960, 31.886541>,  <34.100288, 34.431305, 31.890387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764252, 34.717960, 31.886541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520027, 35.034748, 31.886158>,  <34.373493, 35.224819, 31.885929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520027, 35.034748, 31.886158>,  <34.764252, 34.717960, 31.886541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520027, 35.034748, 31.886158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390580, 0.302167, 0.869564,
		0.688954, 0.530552, -0.493819,
		-0.610565, 0.791966, -0.000956,
		34.336857, 35.272339, 31.885872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155045, 35.248207, 32.164223>,  <34.764252, 34.717960, 31.886541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155045, 35.248207, 32.164223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.782291, 35.391926, 32.184208>,  <34.558640, 35.478157, 32.196198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.782291, 35.391926, 32.184208>,  <35.155045, 35.248207, 32.164223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782291, 35.391926, 32.184208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211637, 0.426641, 0.879311,
		0.294617, 0.829990, -0.473621,
		-0.931885, 0.359296, 0.049960,
		34.502728, 35.499714, 32.199196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173702, 35.957676, 32.217224>,  <35.155045, 35.248207, 32.164223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173702, 35.957676, 32.217224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827164, 35.828945, 32.369995>,  <34.619240, 35.751705, 32.461658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827164, 35.828945, 32.369995>,  <35.173702, 35.957676, 32.217224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827164, 35.828945, 32.369995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178515, 0.514659, 0.838605,
		-0.466451, 0.794703, -0.388422,
		-0.866346, -0.321829, 0.381930,
		34.567261, 35.732395, 32.484573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884758, 36.528015, 32.498287>,  <35.173702, 35.957676, 32.217224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884758, 36.528015, 32.498287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680676, 36.236298, 32.680641>,  <34.558228, 36.061268, 32.790054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680676, 36.236298, 32.680641>,  <34.884758, 36.528015, 32.498287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680676, 36.236298, 32.680641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073691, 0.491043, 0.868013,
		-0.856891, 0.476457, -0.196790,
		-0.510203, -0.729291, 0.455880,
		34.527615, 36.017509, 32.817406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356312, 36.864147, 32.981236>,  <34.884758, 36.528015, 32.498287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356312, 36.864147, 32.981236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414036, 36.484367, 33.092751>,  <34.448669, 36.256500, 33.159660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414036, 36.484367, 33.092751>,  <34.356312, 36.864147, 32.981236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414036, 36.484367, 33.092751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298572, 0.310385, 0.902506,
		-0.943414, -0.046999, 0.328269,
		0.144306, -0.949448, 0.278789,
		34.457329, 36.199532, 33.176388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521812, 37.178699, 32.365051>,  <34.356312, 36.864147, 32.981236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521812, 37.178699, 32.365051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616589, 37.551472, 32.474857>,  <34.673454, 37.775135, 32.540741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616589, 37.551472, 32.474857>,  <34.521812, 37.178699, 32.365051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616589, 37.551472, 32.474857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116207, 0.253342, -0.960371,
		-0.964549, 0.259453, -0.048270,
		0.236942, 0.931935, 0.274511,
		34.687672, 37.831051, 32.557209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078869, 37.775414, 32.026623>,  <34.521812, 37.178699, 32.365051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078869, 37.775414, 32.026623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460991, 37.868988, 32.098923>,  <34.690262, 37.925133, 32.142303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460991, 37.868988, 32.098923>,  <34.078869, 37.775414, 32.026623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460991, 37.868988, 32.098923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061197, 0.441684, -0.895081,
		-0.289229, 0.866134, 0.407625,
		0.955302, 0.233938, 0.180753,
		34.747581, 37.939171, 32.153149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310329, 38.549786, 31.876802>,  <34.078869, 37.775414, 32.026623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310329, 38.549786, 31.876802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571934, 38.267094, 31.768879>,  <34.728897, 38.097477, 31.704124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571934, 38.267094, 31.768879>,  <34.310329, 38.549786, 31.876802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571934, 38.267094, 31.768879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005623, 0.361193, -0.932474,
		0.756462, 0.608333, 0.240199,
		0.654013, -0.706733, -0.269808,
		34.768139, 38.055073, 31.687937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791115, 38.797352, 31.437469>,  <34.310329, 38.549786, 31.876802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791115, 38.797352, 31.437469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788593, 38.404274, 31.363420>,  <34.787083, 38.168427, 31.318991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788593, 38.404274, 31.363420>,  <34.791115, 38.797352, 31.437469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788593, 38.404274, 31.363420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095540, 0.183686, -0.978331,
		0.995406, -0.023851, 0.092730,
		-0.006301, -0.982696, -0.185121,
		34.786701, 38.109467, 31.307884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468903, 38.571114, 31.040474>,  <34.791115, 38.797352, 31.437469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468903, 38.571114, 31.040474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170441, 38.316246, 30.963247>,  <34.991364, 38.163326, 30.916910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170441, 38.316246, 30.963247>,  <35.468903, 38.571114, 31.040474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170441, 38.316246, 30.963247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082406, 0.199374, -0.976452,
		0.660655, -0.744492, -0.096257,
		-0.746152, -0.637166, -0.193068,
		34.946594, 38.125095, 30.905327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636536, 38.221802, 30.406637>,  <35.468903, 38.571114, 31.040474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636536, 38.221802, 30.406637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246311, 38.134659, 30.418110>,  <35.012177, 38.082371, 30.424994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246311, 38.134659, 30.418110>,  <35.636536, 38.221802, 30.406637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246311, 38.134659, 30.418110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002979, -0.117408, -0.993079,
		0.219721, -0.968892, 0.113889,
		-0.975558, -0.217861, 0.028684,
		34.953644, 38.069302, 30.426716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599297, 37.603542, 30.036860>,  <35.636536, 38.221802, 30.406637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599297, 37.603542, 30.036860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.245354, 37.789841, 30.040979>,  <35.032990, 37.901619, 30.043451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.245354, 37.789841, 30.040979>,  <35.599297, 37.603542, 30.036860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245354, 37.789841, 30.040979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108589, -0.184699, -0.976778,
		-0.453032, -0.865427, 0.214007,
		-0.884856, 0.465750, 0.010301,
		34.979897, 37.929565, 30.044069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177353, 37.118805, 29.688862>,  <35.599297, 37.603542, 30.036860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177353, 37.118805, 29.688862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973450, 37.462257, 29.667301>,  <34.851109, 37.668327, 29.654366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973450, 37.462257, 29.667301>,  <35.177353, 37.118805, 29.688862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973450, 37.462257, 29.667301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121951, -0.134137, -0.983430,
		-0.851633, -0.494734, 0.173088,
		-0.509754, 0.858630, -0.053902,
		34.820522, 37.719845, 29.651131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531742, 36.989227, 29.339378>,  <35.177353, 37.118805, 29.688862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531742, 36.989227, 29.339378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632915, 37.372559, 29.286259>,  <34.693619, 37.602558, 29.254387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632915, 37.372559, 29.286259>,  <34.531742, 36.989227, 29.339378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632915, 37.372559, 29.286259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078176, -0.116569, -0.990101,
		-0.964319, 0.260816, 0.045434,
		0.252938, 0.958325, -0.132800,
		34.708797, 37.660057, 29.246418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153481, 37.204391, 28.651419>,  <34.531742, 36.989227, 29.339378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153481, 37.204391, 28.651419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.395054, 37.519772, 28.698088>,  <34.539997, 37.709000, 28.726089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.395054, 37.519772, 28.698088>,  <34.153481, 37.204391, 28.651419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395054, 37.519772, 28.698088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048557, 0.109714, -0.992776,
		-0.795557, 0.605232, 0.027974,
		0.603929, 0.788452, 0.116672,
		34.576233, 37.756306, 28.733089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931007, 37.644550, 28.170887>,  <34.153481, 37.204391, 28.651419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931007, 37.644550, 28.170887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301659, 37.777878, 28.240465>,  <34.524048, 37.857876, 28.282211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301659, 37.777878, 28.240465>,  <33.931007, 37.644550, 28.170887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301659, 37.777878, 28.240465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014903, 0.429718, -0.902840,
		-0.375681, 0.839190, 0.393222,
		0.926629, 0.333320, 0.173944,
		34.579647, 37.877872, 28.292648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972706, 38.314243, 27.872496>,  <33.931007, 37.644550, 28.170887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972706, 38.314243, 27.872496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363949, 38.241146, 27.912302>,  <34.598694, 38.197289, 27.936186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363949, 38.241146, 27.912302>,  <33.972706, 38.314243, 27.872496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363949, 38.241146, 27.912302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129071, 0.157699, -0.979016,
		0.163214, 0.970431, 0.177834,
		0.978111, -0.182742, 0.099516,
		34.657383, 38.186325, 27.942158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447479, 38.862343, 27.597515>,  <33.972706, 38.314243, 27.872496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447479, 38.862343, 27.597515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679604, 38.536613, 27.593096>,  <34.818878, 38.341175, 27.590445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679604, 38.536613, 27.593096>,  <34.447479, 38.862343, 27.597515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679604, 38.536613, 27.593096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221262, 0.170704, -0.960158,
		0.783763, 0.554744, 0.279240,
		0.580310, -0.814321, -0.011048,
		34.853695, 38.292316, 27.589781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105156, 39.015186, 27.296341>,  <34.447479, 38.862343, 27.597515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105156, 39.015186, 27.296341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.085590, 38.617371, 27.259466>,  <35.073853, 38.378681, 27.237341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.085590, 38.617371, 27.259466>,  <35.105156, 39.015186, 27.296341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085590, 38.617371, 27.259466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346199, 0.069693, -0.935569,
		0.936885, -0.077677, 0.340900,
		-0.048914, -0.994540, -0.092186,
		35.070915, 38.319008, 27.231810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687607, 38.813591, 26.935261>,  <35.105156, 39.015186, 27.296341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687607, 38.813591, 26.935261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.445377, 38.497810, 26.895159>,  <35.300041, 38.308342, 26.871098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.445377, 38.497810, 26.895159>,  <35.687607, 38.813591, 26.935261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445377, 38.497810, 26.895159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261028, -0.078039, -0.962172,
		0.751762, -0.608834, 0.253327,
		-0.605572, -0.789449, -0.100256,
		35.263706, 38.260975, 26.865082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156120, 38.334419, 26.664949>,  <35.687607, 38.813591, 26.935261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156120, 38.334419, 26.664949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791103, 38.197605, 26.575260>,  <35.572094, 38.115517, 26.521446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791103, 38.197605, 26.575260>,  <36.156120, 38.334419, 26.664949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791103, 38.197605, 26.575260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286331, -0.142834, -0.947425,
		0.292029, -0.928767, 0.228278,
		-0.912542, -0.342039, -0.224223,
		35.517342, 38.094994, 26.507994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284515, 37.914192, 26.114067>,  <36.156120, 38.334419, 26.664949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284515, 37.914192, 26.114067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.886127, 37.944786, 26.095324>,  <35.647095, 37.963142, 26.084078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.886127, 37.944786, 26.095324>,  <36.284515, 37.914192, 26.114067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886127, 37.944786, 26.095324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023312, -0.283720, -0.958624,
		-0.086614, -0.955852, 0.280793,
		-0.995970, 0.076484, -0.046856,
		35.587337, 37.967731, 26.081266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043732, 37.325962, 25.695143>,  <36.284515, 37.914192, 26.114067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043732, 37.325962, 25.695143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748089, 37.595207, 25.705175>,  <35.570702, 37.756756, 25.711195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748089, 37.595207, 25.705175>,  <36.043732, 37.325962, 25.695143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748089, 37.595207, 25.705175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299887, -0.295493, -0.907056,
		-0.603144, -0.677936, 0.420261,
		-0.739111, 0.673116, 0.025079,
		35.526356, 37.797142, 25.712700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580917, 36.999027, 25.190552>,  <36.043732, 37.325962, 25.695143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580917, 36.999027, 25.190552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497307, 37.387562, 25.235821>,  <35.447140, 37.620682, 25.262983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497307, 37.387562, 25.235821>,  <35.580917, 36.999027, 25.190552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497307, 37.387562, 25.235821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220435, 0.065950, -0.973170,
		-0.952741, -0.228368, 0.200332,
		-0.209029, 0.971338, 0.113174,
		35.434597, 37.678963, 25.269773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897236, 37.089699, 24.911415>,  <35.580917, 36.999027, 25.190552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897236, 37.089699, 24.911415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074013, 37.447884, 24.890102>,  <35.180077, 37.662796, 24.877316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074013, 37.447884, 24.890102>,  <34.897236, 37.089699, 24.911415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074013, 37.447884, 24.890102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329682, 0.106896, -0.938021,
		-0.834266, 0.432113, 0.342459,
		0.441939, 0.895462, -0.053281,
		35.206593, 37.716522, 24.874119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443012, 37.583954, 24.556952>,  <34.897236, 37.089699, 24.911415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443012, 37.583954, 24.556952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804173, 37.748749, 24.507906>,  <35.020870, 37.847626, 24.478479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804173, 37.748749, 24.507906>,  <34.443012, 37.583954, 24.556952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804173, 37.748749, 24.507906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205571, 0.163360, -0.964911,
		-0.377499, 0.896427, 0.232190,
		0.902903, 0.411985, -0.122612,
		35.075043, 37.872345, 24.471123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312778, 38.084297, 24.125017>,  <34.443012, 37.583954, 24.556952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312778, 38.084297, 24.125017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709011, 38.037701, 24.096237>,  <34.946751, 38.009743, 24.078970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709011, 38.037701, 24.096237>,  <34.312778, 38.084297, 24.125017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709011, 38.037701, 24.096237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059798, 0.104647, -0.992710,
		0.123167, 0.987664, 0.096696,
		0.990583, -0.116487, -0.071949,
		35.006187, 38.002754, 24.074652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481976, 38.611359, 23.745026>,  <34.312778, 38.084297, 24.125017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481976, 38.611359, 23.745026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764244, 38.328297, 23.730864>,  <34.933605, 38.158459, 23.722366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764244, 38.328297, 23.730864>,  <34.481976, 38.611359, 23.745026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764244, 38.328297, 23.730864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188939, -0.139782, -0.971989,
		0.682881, 0.692597, -0.232343,
		0.705674, -0.707652, -0.035404,
		34.975945, 38.116001, 23.720242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892960, 38.692997, 23.128174>,  <34.481976, 38.611359, 23.745026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892960, 38.692997, 23.128174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994980, 38.316010, 23.214619>,  <35.056190, 38.089817, 23.266485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994980, 38.316010, 23.214619>,  <34.892960, 38.692997, 23.128174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994980, 38.316010, 23.214619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062068, -0.239001, -0.969034,
		0.964934, 0.233739, -0.119454,
		0.255050, -0.942468, 0.216112,
		35.071495, 38.033268, 23.279451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329868, 38.537766, 22.648996>,  <34.892960, 38.692997, 23.128174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329868, 38.537766, 22.648996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.208893, 38.176136, 22.769783>,  <35.136307, 37.959160, 22.842255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.208893, 38.176136, 22.769783>,  <35.329868, 38.537766, 22.648996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208893, 38.176136, 22.769783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219542, -0.242215, -0.945057,
		0.927541, -0.352116, -0.125227,
		-0.302438, -0.904072, 0.301968,
		35.118160, 37.904915, 22.860373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538731, 38.035316, 22.203224>,  <35.329868, 38.537766, 22.648996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538731, 38.035316, 22.203224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254826, 37.816620, 22.380899>,  <35.084480, 37.685402, 22.487505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254826, 37.816620, 22.380899>,  <35.538731, 38.035316, 22.203224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254826, 37.816620, 22.380899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243711, -0.401036, -0.883049,
		0.660938, -0.735011, 0.151394,
		-0.709765, -0.546744, 0.444191,
		35.041897, 37.652596, 22.514156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702118, 37.456993, 21.838612>,  <35.538731, 38.035316, 22.203224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702118, 37.456993, 21.838612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331894, 37.423622, 21.986328>,  <35.109760, 37.403599, 22.074957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331894, 37.423622, 21.986328>,  <35.702118, 37.456993, 21.838612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331894, 37.423622, 21.986328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274959, -0.522398, -0.807154,
		0.260255, -0.848611, 0.460573,
		-0.925562, -0.083427, 0.369290,
		35.054226, 37.398594, 22.097115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509731, 36.788292, 21.682098>,  <35.702118, 37.456993, 21.838612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509731, 36.788292, 21.682098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.143635, 36.937454, 21.743113>,  <34.923977, 37.026951, 21.779720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.143635, 36.937454, 21.743113>,  <35.509731, 36.788292, 21.682098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143635, 36.937454, 21.743113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321197, -0.446781, -0.834997,
		-0.243225, -0.813221, 0.528690,
		-0.915245, 0.372906, 0.152536,
		34.869061, 37.049328, 21.788874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930611, 36.198074, 21.726877>,  <35.509731, 36.788292, 21.682098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930611, 36.198074, 21.726877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.273209, 36.033642, 21.602024>,  <36.478767, 35.934982, 21.527111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.273209, 36.033642, 21.602024>,  <35.930611, 36.198074, 21.726877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273209, 36.033642, 21.602024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288021, -0.121180, 0.949926,
		-0.428326, -0.903506, 0.014612,
		0.856493, -0.411087, -0.312134,
		36.530155, 35.910316, 21.508385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089848, 35.589169, 22.093536>,  <35.930611, 36.198074, 21.726877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089848, 35.589169, 22.093536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447144, 35.717239, 21.967295>,  <36.661522, 35.794083, 21.891550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447144, 35.717239, 21.967295>,  <36.089848, 35.589169, 22.093536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447144, 35.717239, 21.967295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345257, -0.038902, 0.937702,
		0.287949, -0.946560, -0.145291,
		0.893243, 0.320173, -0.315605,
		36.715118, 35.813290, 21.872614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567310, 35.133301, 22.337122>,  <36.089848, 35.589169, 22.093536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567310, 35.133301, 22.337122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776428, 35.468655, 22.275415>,  <36.901901, 35.669868, 22.238392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776428, 35.468655, 22.275415>,  <36.567310, 35.133301, 22.337122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776428, 35.468655, 22.275415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293932, -0.007419, 0.955798,
		0.800180, -0.545031, -0.250306,
		0.522796, 0.838383, -0.154265,
		36.933266, 35.720169, 22.229136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325951, 34.964928, 22.457947>,  <36.567310, 35.133301, 22.337122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325951, 34.964928, 22.457947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.258209, 35.357574, 22.493141>,  <37.217564, 35.593163, 22.514257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.258209, 35.357574, 22.493141>,  <37.325951, 34.964928, 22.457947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258209, 35.357574, 22.493141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614891, 0.035471, 0.787814,
		0.770213, 0.187522, -0.609596,
		-0.169356, 0.981620, 0.087986,
		37.207401, 35.652061, 22.519537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931053, 35.294514, 22.452261>,  <37.325951, 34.964928, 22.457947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931053, 35.294514, 22.452261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.676582, 35.544872, 22.632717>,  <37.523899, 35.695087, 22.740992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.676582, 35.544872, 22.632717>,  <37.931053, 35.294514, 22.452261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676582, 35.544872, 22.632717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619885, 0.066502, 0.781870,
		0.459369, 0.777064, -0.430292,
		-0.636178, 0.625898, 0.451141,
		37.485729, 35.732643, 22.768059>
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
