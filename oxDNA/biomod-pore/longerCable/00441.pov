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
	<24.394350, 35.121357, 35.185528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.342833, 34.953915, 34.825932>,  <24.311922, 34.853451, 34.610172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.342833, 34.953915, 34.825932>,  <24.394350, 35.121357, 35.185528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.342833, 34.953915, 34.825932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853982, 0.414016, -0.315128,
		0.504110, -0.808307, 0.304160,
		-0.128793, -0.418606, -0.898989,
		24.304195, 34.828331, 34.556236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.605167, 35.513626, 34.619026>,  <24.394350, 35.121357, 35.185528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.605167, 35.513626, 34.619026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003937, 35.513020, 34.650375>,  <25.243198, 35.512657, 34.669186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003937, 35.513020, 34.650375>,  <24.605167, 35.513626, 34.619026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.003937, 35.513020, 34.650375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005224, -0.996306, -0.085715,
		0.078216, 0.085861, -0.993232,
		0.996923, -0.001516, 0.078375,
		25.303013, 35.512566, 34.673889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.902176, 35.218433, 34.051624>,  <24.605167, 35.513626, 34.619026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.902176, 35.218433, 34.051624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148119, 35.169201, 34.363213>,  <25.295685, 35.139660, 34.550167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148119, 35.169201, 34.363213>,  <24.902176, 35.218433, 34.051624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.148119, 35.169201, 34.363213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038530, -0.981879, -0.185551,
		0.787696, 0.144102, -0.598974,
		0.614859, -0.123080, 0.778974,
		25.332577, 35.132278, 34.596905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503771, 34.885410, 33.753944>,  <24.902176, 35.218433, 34.051624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503771, 34.885410, 33.753944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465265, 34.817238, 34.146206>,  <25.442162, 34.776333, 34.381565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465265, 34.817238, 34.146206>,  <25.503771, 34.885410, 33.753944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.465265, 34.817238, 34.146206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048296, -0.984870, -0.166427,
		0.994184, 0.031341, 0.103038,
		-0.096263, -0.170436, 0.980656,
		25.436386, 34.766106, 34.440403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667103, 34.140865, 33.770298>,  <25.503771, 34.885410, 33.753944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667103, 34.140865, 33.770298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508120, 34.210896, 34.130604>,  <25.412729, 34.252914, 34.346786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508120, 34.210896, 34.130604>,  <25.667103, 34.140865, 33.770298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508120, 34.210896, 34.130604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034430, -0.983785, 0.176016,
		0.916975, 0.038945, 0.397039,
		-0.397456, 0.175072, 0.900766,
		25.388884, 34.263416, 34.400833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022636, 33.751266, 34.184937>,  <25.667103, 34.140865, 33.770298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022636, 33.751266, 34.184937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678955, 33.828579, 34.374424>,  <25.472746, 33.874966, 34.488117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678955, 33.828579, 34.374424>,  <26.022636, 33.751266, 34.184937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678955, 33.828579, 34.374424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082360, -0.966075, 0.244780,
		0.504961, 0.171300, 0.845974,
		-0.859204, 0.193278, 0.473721,
		25.421194, 33.886562, 34.516541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075731, 33.340385, 34.786499>,  <26.022636, 33.751266, 34.184937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075731, 33.340385, 34.786499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687120, 33.422176, 34.738621>,  <25.453955, 33.471252, 34.709892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687120, 33.422176, 34.738621>,  <26.075731, 33.340385, 34.786499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687120, 33.422176, 34.738621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230843, -0.930694, 0.283759,
		-0.053376, 0.303310, 0.951396,
		-0.971526, 0.204477, -0.119694,
		25.395662, 33.483521, 34.702713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769072, 33.109829, 35.462158>,  <26.075731, 33.340385, 34.786499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769072, 33.109829, 35.462158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553667, 33.064854, 35.128124>,  <25.424425, 33.037868, 34.927704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553667, 33.064854, 35.128124>,  <25.769072, 33.109829, 35.462158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.553667, 33.064854, 35.128124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035108, -0.987202, 0.155560,
		-0.841886, 0.113089, 0.527673,
		-0.538512, -0.112438, -0.835083,
		25.392113, 33.031124, 34.877598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.993744, 32.897301, 35.671379>,  <25.769072, 33.109829, 35.462158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.993744, 32.897301, 35.671379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103212, 32.749645, 35.316113>,  <25.168894, 32.661053, 35.102951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103212, 32.749645, 35.316113>,  <24.993744, 32.897301, 35.671379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103212, 32.749645, 35.316113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026046, -0.925925, 0.376808,
		-0.961470, -0.079989, -0.263017,
		0.273674, -0.369140, -0.888165,
		25.185314, 32.638905, 35.049664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.727232, 32.261223, 35.748661>,  <24.993744, 32.897301, 35.671379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.727232, 32.261223, 35.748661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877558, 32.233601, 35.379013>,  <24.967752, 32.217026, 35.157223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877558, 32.233601, 35.379013>,  <24.727232, 32.261223, 35.748661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.877558, 32.233601, 35.379013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144254, -0.989423, 0.015276,
		-0.915399, 0.127567, -0.381800,
		0.375813, -0.069060, -0.924118,
		24.990301, 32.212883, 35.101776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.311417, 31.847258, 35.302738>,  <24.727232, 32.261223, 35.748661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.311417, 31.847258, 35.302738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691221, 31.831230, 35.178272>,  <24.919104, 31.821613, 35.103592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691221, 31.831230, 35.178272>,  <24.311417, 31.847258, 35.302738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.691221, 31.831230, 35.178272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017219, -0.996971, 0.075841,
		-0.313264, -0.066654, -0.947324,
		0.949510, -0.040071, -0.311168,
		24.976074, 31.819208, 35.084923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.264143, 31.370964, 34.856846>,  <24.311417, 31.847258, 35.302738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.264143, 31.370964, 34.856846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635944, 31.413984, 34.997959>,  <24.859026, 31.439796, 35.082626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635944, 31.413984, 34.997959>,  <24.264143, 31.370964, 34.856846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.635944, 31.413984, 34.997959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022727, -0.971421, 0.236270,
		0.368111, -0.211597, -0.905384,
		0.929504, 0.107550, 0.352782,
		24.914795, 31.446249, 35.103794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.761395, 30.849426, 34.536377>,  <24.264143, 31.370964, 34.856846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.761395, 30.849426, 34.536377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871267, 30.961662, 34.904251>,  <24.937191, 31.029003, 35.124977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871267, 30.961662, 34.904251>,  <24.761395, 30.849426, 34.536377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871267, 30.961662, 34.904251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058591, -0.959582, 0.275262,
		0.959748, -0.021725, -0.280021,
		0.274684, 0.280589, 0.919684,
		24.953672, 31.045839, 35.180157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390110, 30.349106, 34.863441>,  <24.761395, 30.849426, 34.536377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390110, 30.349106, 34.863441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179142, 30.509459, 35.163074>,  <25.052561, 30.605671, 35.342854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179142, 30.509459, 35.163074>,  <25.390110, 30.349106, 34.863441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179142, 30.509459, 35.163074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084081, -0.901981, 0.423511,
		0.845434, 0.160384, 0.509429,
		-0.527419, 0.400884, 0.749080,
		25.020916, 30.629725, 35.387798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793255, 30.761265, 35.386673>,  <25.390110, 30.349106, 34.863441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793255, 30.761265, 35.386673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520098, 30.847990, 35.107632>,  <25.356203, 30.900024, 34.940208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520098, 30.847990, 35.107632>,  <25.793255, 30.761265, 35.386673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520098, 30.847990, 35.107632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297447, 0.954722, 0.005551,
		0.667222, -0.203709, -0.716462,
		-0.682891, 0.216813, -0.697604,
		25.315231, 30.913034, 34.898350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024578, 31.351860, 35.153770>,  <25.793255, 30.761265, 35.386673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024578, 31.351860, 35.153770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673489, 31.355854, 34.962147>,  <25.462835, 31.358250, 34.847172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673489, 31.355854, 34.962147>,  <26.024578, 31.351860, 35.153770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673489, 31.355854, 34.962147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109633, 0.977447, -0.180495,
		0.466455, -0.210946, -0.859024,
		-0.877725, 0.009985, -0.479061,
		25.410172, 31.358849, 34.818428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183002, 31.782066, 34.550838>,  <26.024578, 31.351860, 35.153770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183002, 31.782066, 34.550838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812397, 31.763809, 34.700233>,  <25.590034, 31.752855, 34.789871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812397, 31.763809, 34.700233>,  <26.183002, 31.782066, 34.550838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812397, 31.763809, 34.700233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064867, 0.997129, -0.039062,
		-0.370631, -0.060418, -0.926813,
		-0.926512, -0.045642, 0.373486,
		25.534443, 31.750116, 34.812279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711966, 31.982819, 34.007530>,  <26.183002, 31.782066, 34.550838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711966, 31.982819, 34.007530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546171, 32.076176, 34.359379>,  <25.446693, 32.132191, 34.570488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546171, 32.076176, 34.359379>,  <25.711966, 31.982819, 34.007530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546171, 32.076176, 34.359379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073774, 0.954756, -0.288093,
		-0.907060, -0.184304, -0.378517,
		-0.414488, 0.233392, 0.879618,
		25.421825, 32.146194, 34.623264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.263254, 32.473564, 33.817936>,  <25.711966, 31.982819, 34.007530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.263254, 32.473564, 33.817936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264677, 32.501785, 34.216938>,  <25.265532, 32.518719, 34.456337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264677, 32.501785, 34.216938>,  <25.263254, 32.473564, 33.817936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264677, 32.501785, 34.216938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274031, 0.959392, -0.066879,
		-0.961714, -0.273109, 0.022746,
		0.003557, 0.070551, 0.997502,
		25.265743, 32.522949, 34.516190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.582008, 32.749775, 33.899261>,  <25.263254, 32.473564, 33.817936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.582008, 32.749775, 33.899261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818130, 32.803566, 34.217621>,  <24.959805, 32.835842, 34.408638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818130, 32.803566, 34.217621>,  <24.582008, 32.749775, 33.899261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818130, 32.803566, 34.217621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219727, 0.975560, -0.001866,
		-0.776697, -0.173779, 0.605428,
		0.590306, 0.134478, 0.795898,
		24.995222, 32.843910, 34.456390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.118402, 33.089695, 34.394978>,  <24.582008, 32.749775, 33.899261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.118402, 33.089695, 34.394978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508640, 33.155514, 34.453140>,  <24.742783, 33.195004, 34.488037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508640, 33.155514, 34.453140>,  <24.118402, 33.089695, 34.394978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.508640, 33.155514, 34.453140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170578, 0.984888, 0.029979,
		-0.138276, -0.054050, 0.988918,
		0.975594, 0.164542, 0.145406,
		24.801319, 33.204876, 34.496761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.062525, 33.751022, 34.447098>,  <24.118402, 33.089695, 34.394978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.062525, 33.751022, 34.447098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.450933, 33.690067, 34.520741>,  <24.683979, 33.653496, 34.564926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.450933, 33.690067, 34.520741>,  <24.062525, 33.751022, 34.447098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.450933, 33.690067, 34.520741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152303, 0.988225, 0.014687,
		-0.184173, 0.013778, 0.982797,
		0.971022, -0.152388, 0.184102,
		24.742241, 33.644352, 34.575970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.253012, 34.187286, 35.047600>,  <24.062525, 33.751022, 34.447098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.253012, 34.187286, 35.047600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604261, 34.086708, 34.884789>,  <24.815012, 34.026360, 34.787102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604261, 34.086708, 34.884789>,  <24.253012, 34.187286, 35.047600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.604261, 34.086708, 34.884789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321546, 0.940135, 0.112932,
		0.354263, -0.230046, 0.906409,
		0.878127, -0.251444, -0.407025,
		24.867699, 34.011276, 34.762680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.087282, 34.584503, 35.578644>,  <24.253012, 34.187286, 35.047600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.087282, 34.584503, 35.578644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212749, 34.411209, 35.916618>,  <24.288029, 34.307232, 36.119404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212749, 34.411209, 35.916618>,  <24.087282, 34.584503, 35.578644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.212749, 34.411209, 35.916618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305756, 0.888535, 0.342081,
		-0.898959, 0.151047, 0.411167,
		0.313666, -0.433233, 0.844939,
		24.306849, 34.281239, 36.170101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.767422, 34.520847, 35.511932>,  <24.087282, 34.584503, 35.578644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.767422, 34.520847, 35.511932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949690, 34.453972, 35.162209>,  <25.059050, 34.413849, 34.952374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949690, 34.453972, 35.162209>,  <24.767422, 34.520847, 35.511932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.949690, 34.453972, 35.162209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449227, 0.891142, 0.063722,
		0.768480, -0.421799, 0.481170,
		0.455668, -0.167186, -0.874308,
		25.086390, 34.403816, 34.899918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.395020, 34.672592, 35.698223>,  <24.767422, 34.520847, 35.511932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.395020, 34.672592, 35.698223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446156, 34.697376, 35.302280>,  <25.476837, 34.712246, 35.064716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446156, 34.697376, 35.302280>,  <25.395020, 34.672592, 35.698223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446156, 34.697376, 35.302280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433256, 0.894293, 0.111932,
		0.892159, -0.443170, 0.087479,
		0.127837, 0.061960, -0.989858,
		25.484509, 34.715965, 35.005322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096624, 34.822273, 35.584835>,  <25.395020, 34.672592, 35.698223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096624, 34.822273, 35.584835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854271, 34.940941, 35.289566>,  <25.708858, 35.012142, 35.112404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854271, 34.940941, 35.289566>,  <26.096624, 34.822273, 35.584835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854271, 34.940941, 35.289566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386749, 0.920685, 0.052576,
		0.695219, -0.253631, -0.672563,
		-0.605884, 0.296665, -0.738170,
		25.672506, 35.029942, 35.068115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544571, 35.111050, 35.044830>,  <26.096624, 34.822273, 35.584835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544571, 35.111050, 35.044830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167612, 35.244297, 35.056973>,  <25.941437, 35.324245, 35.064259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167612, 35.244297, 35.056973>,  <26.544571, 35.111050, 35.044830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167612, 35.244297, 35.056973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329929, 0.910726, 0.248445,
		0.055115, 0.244149, -0.968170,
		-0.942396, 0.333120, 0.030357,
		25.884893, 35.344234, 35.066078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638241, 34.375900, 34.939133>,  <26.544571, 35.111050, 35.044830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638241, 34.375900, 34.939133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759598, 34.649864, 35.204117>,  <26.832413, 34.814243, 35.363106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759598, 34.649864, 35.204117>,  <26.638241, 34.375900, 34.939133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759598, 34.649864, 35.204117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638661, -0.369786, 0.674812,
		0.707153, -0.627819, 0.325235,
		0.303392, 0.684910, 0.662459,
		26.850615, 34.855335, 35.402855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496431, 34.117374, 35.575497>,  <26.638241, 34.375900, 34.939133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496431, 34.117374, 35.575497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588943, 34.476410, 35.725609>,  <26.644451, 34.691833, 35.815678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588943, 34.476410, 35.725609>,  <26.496431, 34.117374, 35.575497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588943, 34.476410, 35.725609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465863, -0.236467, 0.852675,
		0.854097, -0.372037, 0.363465,
		0.231279, 0.897592, 0.375284,
		26.658327, 34.745689, 35.838196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761938, 34.008709, 36.296417>,  <26.496431, 34.117374, 35.575497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761938, 34.008709, 36.296417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643270, 34.390644, 36.289886>,  <26.572069, 34.619804, 36.285969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643270, 34.390644, 36.289886>,  <26.761938, 34.008709, 36.296417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643270, 34.390644, 36.289886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448551, -0.124230, 0.885081,
		0.843083, 0.269900, 0.465150,
		-0.296669, 0.954841, -0.016328,
		26.554270, 34.677097, 36.284988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014698, 34.491066, 36.872246>,  <26.761938, 34.008709, 36.296417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014698, 34.491066, 36.872246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672096, 34.662113, 36.756634>,  <26.466536, 34.764744, 36.687267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672096, 34.662113, 36.756634>,  <27.014698, 34.491066, 36.872246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672096, 34.662113, 36.756634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391623, -0.173654, 0.903591,
		0.336203, 0.887121, 0.316202,
		-0.856504, 0.427622, -0.289033,
		26.415146, 34.790401, 36.669922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920019, 34.958000, 37.380234>,  <27.014698, 34.491066, 36.872246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920019, 34.958000, 37.380234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577265, 34.908508, 37.180058>,  <26.371613, 34.878815, 37.059952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577265, 34.908508, 37.180058>,  <26.920019, 34.958000, 37.380234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577265, 34.908508, 37.180058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493694, -0.082460, 0.865718,
		-0.148378, 0.988885, 0.009575,
		-0.856884, -0.123726, -0.500441,
		26.320200, 34.871391, 37.029926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536898, 35.389103, 37.755543>,  <26.920019, 34.958000, 37.380234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536898, 35.389103, 37.755543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322336, 35.103497, 37.575562>,  <26.193600, 34.932133, 37.467575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322336, 35.103497, 37.575562>,  <26.536898, 35.389103, 37.755543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322336, 35.103497, 37.575562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468178, -0.191837, 0.862559,
		-0.702197, 0.673335, -0.231384,
		-0.536403, -0.714015, -0.449949,
		26.161415, 34.889294, 37.440578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838533, 35.061703, 37.916088>,  <26.536898, 35.389103, 37.755543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838533, 35.061703, 37.916088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593691, 35.005783, 37.604759>,  <25.446785, 34.972233, 37.417961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593691, 35.005783, 37.604759>,  <25.838533, 35.061703, 37.916088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593691, 35.005783, 37.604759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477016, -0.719734, 0.504420,
		-0.630701, 0.680029, 0.373866,
		-0.612105, -0.139798, -0.778321,
		25.410059, 34.963844, 37.371262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.129225, 35.106441, 38.138805>,  <25.838533, 35.061703, 37.916088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.129225, 35.106441, 38.138805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198202, 34.857002, 37.833813>,  <25.239588, 34.707336, 37.650818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198202, 34.857002, 37.833813>,  <25.129225, 35.106441, 38.138805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198202, 34.857002, 37.833813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394864, -0.752927, 0.526482,
		-0.902411, 0.210291, -0.376075,
		0.172443, -0.623601, -0.762486,
		25.249935, 34.669922, 37.605068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543257, 34.721573, 38.009926>,  <25.129225, 35.106441, 38.138805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543257, 34.721573, 38.009926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897022, 34.545326, 37.948391>,  <25.109282, 34.439579, 37.911469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897022, 34.545326, 37.948391>,  <24.543257, 34.721573, 38.009926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897022, 34.545326, 37.948391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229525, -0.697659, 0.678668,
		-0.406358, -0.564916, -0.718153,
		0.884416, -0.440616, -0.153837,
		25.162348, 34.413143, 37.902241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.446522, 34.034775, 37.805573>,  <24.543257, 34.721573, 38.009926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.446522, 34.034775, 37.805573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805086, 34.060722, 37.980953>,  <25.020224, 34.076290, 38.086182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805086, 34.060722, 37.980953>,  <24.446522, 34.034775, 37.805573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805086, 34.060722, 37.980953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297609, -0.644964, 0.703882,
		0.328448, -0.761454, -0.558846,
		0.896410, 0.064871, 0.438453,
		25.074009, 34.080185, 38.112488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.536045, 33.397488, 38.218864>,  <24.446522, 34.034775, 37.805573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.536045, 33.397488, 38.218864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819624, 33.640511, 38.362122>,  <24.989771, 33.786324, 38.448078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819624, 33.640511, 38.362122>,  <24.536045, 33.397488, 38.218864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.819624, 33.640511, 38.362122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067606, -0.564026, 0.822985,
		0.702013, -0.559241, -0.440939,
		0.708948, 0.607556, 0.358146,
		25.032309, 33.822777, 38.469566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026186, 32.980598, 38.449471>,  <24.536045, 33.397488, 38.218864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026186, 32.980598, 38.449471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060951, 33.313374, 38.668674>,  <25.081810, 33.513039, 38.800198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060951, 33.313374, 38.668674>,  <25.026186, 32.980598, 38.449471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060951, 33.313374, 38.668674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078453, -0.542671, 0.836273,
		0.993122, -0.115675, 0.018104,
		0.086911, 0.831942, 0.548014,
		25.087025, 33.562958, 38.833080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.774620, 33.045029, 39.187035>,  <25.026186, 32.980598, 38.449471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.774620, 33.045029, 39.187035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129217, 33.088974, 39.366840>,  <25.341976, 33.115341, 39.474724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129217, 33.088974, 39.366840>,  <24.774620, 33.045029, 39.187035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.129217, 33.088974, 39.366840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226003, 0.744883, -0.627752,
		-0.403800, 0.658089, 0.635504,
		0.886492, 0.109861, 0.449513,
		25.395164, 33.121933, 39.501694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824116, 33.661087, 39.496086>,  <24.774620, 33.045029, 39.187035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824116, 33.661087, 39.496086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176264, 33.529987, 39.358959>,  <25.387552, 33.451328, 39.276684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176264, 33.529987, 39.358959>,  <24.824116, 33.661087, 39.496086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.176264, 33.529987, 39.358959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119365, 0.546440, -0.828948,
		0.459019, 0.770704, 0.441948,
		0.880371, -0.327749, -0.342821,
		25.440374, 33.431664, 39.256111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278116, 34.270111, 39.191410>,  <24.824116, 33.661087, 39.496086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278116, 34.270111, 39.191410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389936, 33.940517, 38.994274>,  <25.457029, 33.742760, 38.875992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389936, 33.940517, 38.994274>,  <25.278116, 34.270111, 39.191410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389936, 33.940517, 38.994274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181320, 0.549378, -0.815663,
		0.942854, 0.138658, 0.302986,
		0.279552, -0.823989, -0.492842,
		25.473803, 33.693321, 38.846420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985851, 34.325661, 38.933071>,  <25.278116, 34.270111, 39.191410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985851, 34.325661, 38.933071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783072, 34.055687, 38.718609>,  <25.661404, 33.893703, 38.589931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783072, 34.055687, 38.718609>,  <25.985851, 34.325661, 38.933071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783072, 34.055687, 38.718609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165569, 0.534182, -0.828997,
		0.845926, -0.509030, -0.159054,
		-0.506948, -0.674935, -0.536158,
		25.630987, 33.853207, 38.557762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410444, 34.022816, 38.356823>,  <25.985851, 34.325661, 38.933071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410444, 34.022816, 38.356823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016617, 34.028469, 38.287056>,  <25.780319, 34.031860, 38.245197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016617, 34.028469, 38.287056>,  <26.410444, 34.022816, 38.356823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016617, 34.028469, 38.287056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160451, 0.470647, -0.867610,
		0.069826, -0.882209, -0.465652,
		-0.984571, 0.014132, -0.174414,
		25.721245, 34.032707, 38.234730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304335, 33.827625, 37.690361>,  <26.410444, 34.022816, 38.356823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304335, 33.827625, 37.690361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960968, 34.019077, 37.764160>,  <25.754948, 34.133949, 37.808437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960968, 34.019077, 37.764160>,  <26.304335, 33.827625, 37.690361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960968, 34.019077, 37.764160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054021, 0.442023, -0.895376,
		-0.510105, -0.758637, -0.405295,
		-0.858414, 0.478630, 0.184496,
		25.703444, 34.162666, 37.819508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805904, 33.800701, 37.176472>,  <26.304335, 33.827625, 37.690361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805904, 33.800701, 37.176472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709942, 34.156345, 37.332378>,  <25.652365, 34.369732, 37.425922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709942, 34.156345, 37.332378>,  <25.805904, 33.800701, 37.176472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709942, 34.156345, 37.332378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147181, 0.430167, -0.890671,
		-0.959574, -0.156312, -0.234061,
		-0.239908, 0.889114, 0.389771,
		25.637970, 34.423080, 37.449310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.401022, 34.204144, 36.657619>,  <25.805904, 33.800701, 37.176472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.401022, 34.204144, 36.657619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559139, 34.458138, 36.923111>,  <25.654009, 34.610535, 37.082405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559139, 34.458138, 36.923111>,  <25.401022, 34.204144, 36.657619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559139, 34.458138, 36.923111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336270, 0.572382, -0.747864,
		-0.854791, 0.518816, 0.012731,
		0.395291, 0.634987, 0.663729,
		25.677727, 34.648632, 37.122231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.140884, 34.843105, 36.473042>,  <25.401022, 34.204144, 36.657619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.140884, 34.843105, 36.473042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500311, 34.851913, 36.648354>,  <25.715967, 34.857197, 36.753540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500311, 34.851913, 36.648354>,  <25.140884, 34.843105, 36.473042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500311, 34.851913, 36.648354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387817, 0.427537, -0.816584,
		-0.205363, 0.903729, 0.375631,
		0.898567, 0.022020, 0.438282,
		25.769880, 34.858521, 36.779839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487936, 35.556561, 36.323669>,  <25.140884, 34.843105, 36.473042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487936, 35.556561, 36.323669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779045, 35.299011, 36.418133>,  <25.953711, 35.144482, 36.474812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779045, 35.299011, 36.418133>,  <25.487936, 35.556561, 36.323669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779045, 35.299011, 36.418133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454304, 0.194658, -0.869319,
		0.513762, 0.739956, 0.434182,
		0.727775, -0.643874, 0.236157,
		25.997377, 35.105850, 36.488979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145824, 35.933582, 36.107712>,  <25.487936, 35.556561, 36.323669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145824, 35.933582, 36.107712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258358, 35.554661, 36.168995>,  <26.325878, 35.327309, 36.205765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258358, 35.554661, 36.168995>,  <26.145824, 35.933582, 36.107712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258358, 35.554661, 36.168995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750480, 0.117706, -0.650327,
		0.598023, 0.297936, 0.744045,
		0.281335, -0.947301, 0.153204,
		26.342758, 35.270470, 36.214954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776014, 35.992451, 36.292522>,  <26.145824, 35.933582, 36.107712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776014, 35.992451, 36.292522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726267, 35.621452, 36.151505>,  <26.696419, 35.398853, 36.066895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726267, 35.621452, 36.151505>,  <26.776014, 35.992451, 36.292522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726267, 35.621452, 36.151505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857991, 0.077934, -0.507718,
		0.498381, -0.365624, 0.786089,
		-0.124370, -0.927494, -0.352543,
		26.688955, 35.343204, 36.045742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390894, 35.684177, 36.328438>,  <26.776014, 35.992451, 36.292522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390894, 35.684177, 36.328438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217535, 35.480675, 36.030895>,  <27.113520, 35.358574, 35.852367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217535, 35.480675, 36.030895>,  <27.390894, 35.684177, 36.328438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217535, 35.480675, 36.030895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813487, 0.134349, -0.565852,
		0.387821, -0.850360, 0.355644,
		-0.433398, -0.508761, -0.743860,
		27.087515, 35.328045, 35.807735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431738, 35.364861, 37.026428>,  <27.390894, 35.684177, 36.328438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431738, 35.364861, 37.026428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518034, 35.729252, 36.885818>,  <27.569813, 35.947887, 36.801453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518034, 35.729252, 36.885818>,  <27.431738, 35.364861, 37.026428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518034, 35.729252, 36.885818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708595, 0.101630, 0.698258,
		0.671824, -0.399734, -0.623590,
		0.215742, 0.910980, -0.351527,
		27.582756, 36.002544, 36.780361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246250, 35.495491, 36.987362>,  <27.431738, 35.364861, 37.026428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246250, 35.495491, 36.987362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053898, 35.844791, 37.018810>,  <27.938486, 36.054371, 37.037678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053898, 35.844791, 37.018810>,  <28.246250, 35.495491, 36.987362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053898, 35.844791, 37.018810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525510, 0.215285, 0.823099,
		0.701850, 0.437126, -0.562430,
		-0.480881, 0.873254, 0.078616,
		27.909634, 36.106770, 37.042397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782816, 35.839512, 36.971184>,  <28.246250, 35.495491, 36.987362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782816, 35.839512, 36.971184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477051, 36.043625, 37.128807>,  <28.293591, 36.166092, 37.223381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477051, 36.043625, 37.128807>,  <28.782816, 35.839512, 36.971184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477051, 36.043625, 37.128807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616086, 0.397993, 0.679735,
		0.190026, 0.762372, -0.618611,
		-0.764414, 0.510285, 0.394057,
		28.247726, 36.196709, 37.247025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060169, 36.394821, 37.096516>,  <28.782816, 35.839512, 36.971184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060169, 36.394821, 37.096516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746170, 36.377693, 37.343723>,  <28.557770, 36.367416, 37.492046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746170, 36.377693, 37.343723>,  <29.060169, 36.394821, 37.096516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746170, 36.377693, 37.343723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584514, 0.279300, 0.761797,
		-0.205233, 0.959248, -0.194221,
		-0.784999, -0.042822, 0.618016,
		28.510670, 36.364845, 37.529129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030348, 37.033813, 37.278912>,  <29.060169, 36.394821, 37.096516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030348, 37.033813, 37.278912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954336, 36.699783, 37.485424>,  <28.908730, 36.499367, 37.609329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954336, 36.699783, 37.485424>,  <29.030348, 37.033813, 37.278912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954336, 36.699783, 37.485424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887336, 0.078955, 0.454313,
		-0.420147, 0.544445, 0.725986,
		-0.190029, -0.835072, 0.516279,
		28.897327, 36.449261, 37.640308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148016, 37.196850, 37.888634>,  <29.030348, 37.033813, 37.278912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148016, 37.196850, 37.888634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206663, 36.808392, 37.813400>,  <29.241852, 36.575317, 37.768261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206663, 36.808392, 37.813400>,  <29.148016, 37.196850, 37.888634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206663, 36.808392, 37.813400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953381, 0.088033, 0.288643,
		-0.263758, -0.221633, 0.938781,
		0.146616, -0.971148, -0.188081,
		29.250648, 36.517048, 37.756977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313751, 36.951500, 38.506882>,  <29.148016, 37.196850, 37.888634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313751, 36.951500, 38.506882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450750, 36.731258, 38.202374>,  <29.532949, 36.599113, 38.019669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450750, 36.731258, 38.202374>,  <29.313751, 36.951500, 38.506882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450750, 36.731258, 38.202374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916059, 0.015773, 0.400733,
		-0.208639, -0.834615, 0.509791,
		0.342499, -0.550608, -0.761266,
		29.553499, 36.566074, 37.973995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976229, 36.934109, 38.718849>,  <29.313751, 36.951500, 38.506882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976229, 36.934109, 38.718849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973303, 36.780216, 38.349651>,  <29.971548, 36.687881, 38.128132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973303, 36.780216, 38.349651>,  <29.976229, 36.934109, 38.718849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973303, 36.780216, 38.349651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999961, -0.007297, -0.004882,
		-0.004857, -0.922999, 0.384773,
		-0.007314, -0.384734, -0.922998,
		29.971109, 36.664795, 38.072750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671326, 36.744602, 38.786201>,  <29.976229, 36.934109, 38.718849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671326, 36.744602, 38.786201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567354, 36.689648, 38.403881>,  <30.504971, 36.656677, 38.174488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567354, 36.689648, 38.403881>,  <30.671326, 36.744602, 38.786201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567354, 36.689648, 38.403881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955351, 0.107440, -0.275248,
		0.140506, -0.984674, 0.103322,
		-0.259929, -0.137383, -0.955805,
		30.489376, 36.648434, 38.117138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255898, 36.706146, 39.273853>,  <30.671326, 36.744602, 38.786201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255898, 36.706146, 39.273853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144094, 36.932526, 39.584099>,  <31.077013, 37.068352, 39.770248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144094, 36.932526, 39.584099>,  <31.255898, 36.706146, 39.273853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144094, 36.932526, 39.584099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410666, 0.800661, -0.436229,
		-0.867887, 0.196589, -0.456207,
		-0.279509, 0.565946, 0.775616,
		31.060242, 37.102310, 39.816784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938372, 36.543232, 39.038361>,  <31.255898, 36.706146, 39.273853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938372, 36.543232, 39.038361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788586, 36.172600, 39.052364>,  <31.698715, 35.950222, 39.060768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788586, 36.172600, 39.052364>,  <31.938372, 36.543232, 39.038361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788586, 36.172600, 39.052364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112583, -0.082909, -0.990177,
		0.920382, -0.366843, 0.135364,
		-0.374463, -0.926581, 0.035008,
		31.676247, 35.894627, 39.062866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460835, 36.280102, 38.686668>,  <31.938372, 36.543232, 39.038361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460835, 36.280102, 38.686668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100143, 36.107281, 38.680920>,  <31.883728, 36.003586, 38.677471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100143, 36.107281, 38.680920>,  <32.460835, 36.280102, 38.686668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100143, 36.107281, 38.680920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035074, -0.039987, -0.998585,
		0.430871, -0.900959, 0.051211,
		-0.901732, -0.432057, -0.014371,
		31.829624, 35.977665, 38.676609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515411, 35.789021, 38.185028>,  <32.460835, 36.280102, 38.686668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515411, 35.789021, 38.185028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120190, 35.821812, 38.237217>,  <31.883057, 35.841488, 38.268532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120190, 35.821812, 38.237217>,  <32.515411, 35.789021, 38.185028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120190, 35.821812, 38.237217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128746, 0.026041, -0.991336,
		-0.084665, -0.996294, -0.015175,
		-0.988057, 0.081977, 0.130474,
		31.823772, 35.846405, 38.276360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062023, 35.314171, 37.807262>,  <32.515411, 35.789021, 38.185028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062023, 35.314171, 37.807262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820692, 35.625034, 37.878834>,  <31.675894, 35.811554, 37.921776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820692, 35.625034, 37.878834>,  <32.062023, 35.314171, 37.807262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820692, 35.625034, 37.878834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306135, -0.018521, -0.951808,
		-0.736394, -0.629029, 0.249091,
		-0.603328, 0.777161, 0.178929,
		31.639694, 35.858181, 37.932514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406860, 35.282955, 37.422058>,  <32.062023, 35.314171, 37.807262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406860, 35.282955, 37.422058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413719, 35.670319, 37.521564>,  <31.417835, 35.902737, 37.581268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413719, 35.670319, 37.521564>,  <31.406860, 35.282955, 37.422058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413719, 35.670319, 37.521564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393870, 0.235231, -0.888557,
		-0.919006, -0.082747, 0.385462,
		0.017147, 0.968411, 0.248770,
		31.418863, 35.960842, 37.596195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766779, 35.611725, 37.261227>,  <31.406860, 35.282955, 37.422058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766779, 35.611725, 37.261227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026590, 35.915787, 37.267887>,  <31.182476, 36.098225, 37.271885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026590, 35.915787, 37.267887>,  <30.766779, 35.611725, 37.261227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026590, 35.915787, 37.267887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325320, 0.297639, -0.897540,
		-0.687228, 0.577558, 0.440619,
		0.649527, 0.760156, 0.016655,
		31.221449, 36.143833, 37.272884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415747, 36.203831, 37.173538>,  <30.766779, 35.611725, 37.261227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415747, 36.203831, 37.173538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786947, 36.289543, 37.051620>,  <31.009668, 36.340969, 36.978470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786947, 36.289543, 37.051620>,  <30.415747, 36.203831, 37.173538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786947, 36.289543, 37.051620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360596, 0.310792, -0.879420,
		-0.093714, 0.926010, 0.365683,
		0.928002, 0.214277, -0.304790,
		31.065348, 36.353825, 36.960182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282455, 36.763443, 36.872231>,  <30.415747, 36.203831, 37.173538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282455, 36.763443, 36.872231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649588, 36.671261, 36.742935>,  <30.869867, 36.615952, 36.665359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649588, 36.671261, 36.742935>,  <30.282455, 36.763443, 36.872231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649588, 36.671261, 36.742935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244762, 0.312542, -0.917828,
		0.312542, 0.921525, 0.230454,
		0.917828, -0.230454, -0.323237,
		30.924936, 36.602123, 36.645966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499338, 37.418213, 36.573704>,  <30.282455, 36.763443, 36.872231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499338, 37.418213, 36.573704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707653, 37.113522, 36.419533>,  <30.832642, 36.930706, 36.327030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707653, 37.113522, 36.419533>,  <30.499338, 37.418213, 36.573704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707653, 37.113522, 36.419533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387687, 0.191215, -0.901740,
		0.760580, 0.619038, -0.195729,
		0.520785, -0.761727, -0.385427,
		30.863888, 36.885002, 36.303905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728134, 37.630875, 35.923435>,  <30.499338, 37.418213, 36.573704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728134, 37.630875, 35.923435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803883, 37.242310, 35.866180>,  <30.849331, 37.009171, 35.831829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803883, 37.242310, 35.866180>,  <30.728134, 37.630875, 35.923435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803883, 37.242310, 35.866180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010700, 0.143721, -0.989561,
		0.981848, 0.188925, 0.016823,
		0.189370, -0.971417, -0.143134,
		30.860693, 36.950886, 35.823242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377813, 37.520561, 35.552570>,  <30.728134, 37.630875, 35.923435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377813, 37.520561, 35.552570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114662, 37.222904, 35.506191>,  <30.956772, 37.044312, 35.478363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114662, 37.222904, 35.506191>,  <31.377813, 37.520561, 35.552570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114662, 37.222904, 35.506191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139939, 0.272064, -0.952049,
		0.740008, -0.610107, -0.283120,
		-0.657879, -0.744144, -0.115952,
		30.917297, 36.999660, 35.471405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471867, 37.175442, 34.873276>,  <31.377813, 37.520561, 35.552570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471867, 37.175442, 34.873276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098658, 37.088428, 34.987923>,  <30.874733, 37.036221, 35.056709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098658, 37.088428, 34.987923>,  <31.471867, 37.175442, 34.873276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098658, 37.088428, 34.987923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288741, -0.022669, -0.957139,
		0.214708, -0.975789, -0.041661,
		-0.933021, -0.217535, 0.286617,
		30.818750, 37.023167, 35.073910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302286, 36.748669, 34.399239>,  <31.471867, 37.175442, 34.873276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302286, 36.748669, 34.399239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940716, 36.817234, 34.555973>,  <30.723774, 36.858372, 34.650013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940716, 36.817234, 34.555973>,  <31.302286, 36.748669, 34.399239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940716, 36.817234, 34.555973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396965, 0.004709, -0.917822,
		-0.159174, -0.985188, 0.063789,
		-0.903926, 0.171416, 0.391835,
		30.669538, 36.868656, 34.673523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860247, 36.289501, 34.078568>,  <31.302286, 36.748669, 34.399239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860247, 36.289501, 34.078568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626501, 36.582039, 34.219227>,  <30.486254, 36.757561, 34.303623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626501, 36.582039, 34.219227>,  <30.860247, 36.289501, 34.078568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626501, 36.582039, 34.219227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508398, 0.007811, -0.861087,
		-0.632495, -0.681968, 0.367247,
		-0.584365, 0.731340, 0.351651,
		30.451191, 36.801441, 34.324722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224241, 36.076912, 33.915611>,  <30.860247, 36.289501, 34.078568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224241, 36.076912, 33.915611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177994, 36.473557, 33.938702>,  <30.150246, 36.711544, 33.952557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177994, 36.473557, 33.938702>,  <30.224241, 36.076912, 33.915611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177994, 36.473557, 33.938702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201446, 0.033500, -0.978927,
		-0.972652, -0.124811, 0.195883,
		-0.115618, 0.991615, 0.057727,
		30.143309, 36.771042, 33.956020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755095, 36.215351, 33.344891>,  <30.224241, 36.076912, 33.915611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755095, 36.215351, 33.344891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942089, 36.556072, 33.439453>,  <30.054285, 36.760506, 33.496189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942089, 36.556072, 33.439453>,  <29.755095, 36.215351, 33.344891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942089, 36.556072, 33.439453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262215, 0.389008, -0.883129,
		-0.844217, 0.350859, 0.405211,
		0.467484, 0.851804, 0.236407,
		30.082335, 36.811615, 33.510376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299339, 36.758560, 33.230419>,  <29.755095, 36.215351, 33.344891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299339, 36.758560, 33.230419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670746, 36.906532, 33.217712>,  <29.893591, 36.995316, 33.210087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670746, 36.906532, 33.217712>,  <29.299339, 36.758560, 33.230419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670746, 36.906532, 33.217712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214117, 0.463596, -0.859787,
		-0.303331, 0.805129, 0.509665,
		0.928517, 0.369927, -0.031769,
		29.949301, 37.017509, 33.208183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212221, 37.371441, 33.096535>,  <29.299339, 36.758560, 33.230419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212221, 37.371441, 33.096535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597668, 37.342007, 32.993752>,  <29.828936, 37.324345, 32.932083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597668, 37.342007, 32.993752>,  <29.212221, 37.371441, 33.096535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597668, 37.342007, 32.993752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208678, 0.393605, -0.895281,
		0.167024, 0.916329, 0.363928,
		0.963616, -0.073590, -0.256959,
		29.886753, 37.319931, 32.916664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463957, 38.010670, 32.889660>,  <29.212221, 37.371441, 33.096535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463957, 38.010670, 32.889660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706871, 37.743107, 32.718189>,  <29.852619, 37.582569, 32.615307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706871, 37.743107, 32.718189>,  <29.463957, 38.010670, 32.889660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706871, 37.743107, 32.718189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207682, 0.387149, -0.898323,
		0.766857, 0.634569, 0.096190,
		0.607287, -0.668908, -0.428676,
		29.889057, 37.542435, 32.589588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725428, 38.394043, 32.270603>,  <29.463957, 38.010670, 32.889660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725428, 38.394043, 32.270603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800411, 38.009560, 32.189678>,  <29.845402, 37.778870, 32.141125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800411, 38.009560, 32.189678>,  <29.725428, 38.394043, 32.270603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800411, 38.009560, 32.189678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175068, 0.169970, -0.969774,
		0.966545, 0.217212, -0.136415,
		0.187460, -0.961212, -0.202310,
		29.856649, 37.721195, 32.128986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019100, 38.526127, 31.648218>,  <29.725428, 38.394043, 32.270603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019100, 38.526127, 31.648218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907162, 38.143135, 31.676279>,  <29.839998, 37.913342, 31.693115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907162, 38.143135, 31.676279>,  <30.019100, 38.526127, 31.648218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907162, 38.143135, 31.676279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269427, 0.008191, -0.962986,
		0.921464, -0.288388, -0.260263,
		-0.279845, -0.957479, 0.070152,
		29.823208, 37.855892, 31.697325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324842, 38.188782, 31.080181>,  <30.019100, 38.526127, 31.648218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324842, 38.188782, 31.080181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039169, 37.924122, 31.171541>,  <29.867765, 37.765327, 31.226357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039169, 37.924122, 31.171541>,  <30.324842, 38.188782, 31.080181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039169, 37.924122, 31.171541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366572, 0.075570, -0.927316,
		0.596296, -0.745997, -0.296512,
		-0.714182, -0.661648, 0.228399,
		29.824915, 37.725628, 31.240061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336252, 37.648277, 30.521444>,  <30.324842, 38.188782, 31.080181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336252, 37.648277, 30.521444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988052, 37.639198, 30.718102>,  <29.779133, 37.633751, 30.836096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988052, 37.639198, 30.718102>,  <30.336252, 37.648277, 30.521444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988052, 37.639198, 30.718102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492112, 0.055266, -0.868776,
		-0.007455, -0.998214, -0.059277,
		-0.870500, -0.022694, 0.491645,
		29.726902, 37.632389, 30.865595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002962, 37.391693, 30.118729>,  <30.336252, 37.648277, 30.521444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002962, 37.391693, 30.118729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703867, 37.531918, 30.344292>,  <29.524410, 37.616055, 30.479630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703867, 37.531918, 30.344292>,  <30.002962, 37.391693, 30.118729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703867, 37.531918, 30.344292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575336, 0.081897, -0.813807,
		-0.331473, -0.932952, 0.140453,
		-0.747740, 0.350563, 0.563908,
		29.479546, 37.637085, 30.513464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401697, 37.008293, 29.893091>,  <30.002962, 37.391693, 30.118729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401697, 37.008293, 29.893091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254627, 37.330929, 30.078228>,  <29.166386, 37.524509, 30.189310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254627, 37.330929, 30.078228>,  <29.401697, 37.008293, 29.893091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254627, 37.330929, 30.078228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600913, 0.173778, -0.780195,
		-0.709732, -0.564986, 0.420798,
		-0.367674, 0.806593, 0.462843,
		29.144325, 37.572906, 30.217081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570772, 36.895454, 29.883665>,  <29.401697, 37.008293, 29.893091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570772, 36.895454, 29.883665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676628, 37.279476, 29.920031>,  <28.740141, 37.509888, 29.941849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676628, 37.279476, 29.920031>,  <28.570772, 36.895454, 29.883665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676628, 37.279476, 29.920031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618754, 0.241354, -0.747590,
		-0.739668, 0.141590, 0.657909,
		0.264640, 0.960052, 0.090913,
		28.756020, 37.567493, 29.947304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960398, 37.353477, 29.701818>,  <28.570772, 36.895454, 29.883665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960398, 37.353477, 29.701818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234016, 37.644154, 29.676544>,  <28.398188, 37.818562, 29.661381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234016, 37.644154, 29.676544>,  <27.960398, 37.353477, 29.701818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234016, 37.644154, 29.676544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610477, 0.522930, -0.594862,
		-0.399243, 0.445487, 0.801340,
		0.684048, 0.726695, -0.063183,
		28.439232, 37.862164, 29.657589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599861, 37.984558, 29.675694>,  <27.960398, 37.353477, 29.701818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599861, 37.984558, 29.675694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964010, 38.059380, 29.528055>,  <28.182499, 38.104275, 29.439472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964010, 38.059380, 29.528055>,  <27.599861, 37.984558, 29.675694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964010, 38.059380, 29.528055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408040, 0.553992, -0.725669,
		0.068735, 0.811235, 0.580666,
		0.910373, 0.187056, -0.369095,
		28.237122, 38.115498, 29.417326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646215, 38.732937, 29.493649>,  <27.599861, 37.984558, 29.675694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646215, 38.732937, 29.493649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928690, 38.543270, 29.283329>,  <28.098175, 38.429470, 29.157137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928690, 38.543270, 29.283329>,  <27.646215, 38.732937, 29.493649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928690, 38.543270, 29.283329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303968, 0.467662, -0.829997,
		0.639455, 0.745959, 0.186124,
		0.706187, -0.474170, -0.525797,
		28.140547, 38.401020, 29.125589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020573, 39.205559, 29.155003>,  <27.646215, 38.732937, 29.493649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020573, 39.205559, 29.155003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076336, 38.869553, 28.945263>,  <28.109795, 38.667950, 28.819420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076336, 38.869553, 28.945263>,  <28.020573, 39.205559, 29.155003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076336, 38.869553, 28.945263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001283, 0.529673, -0.848201,
		0.990234, 0.117575, 0.074920,
		0.139410, -0.840014, -0.524350,
		28.118158, 38.617550, 28.787958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202526, 39.552826, 28.496071>,  <28.020573, 39.205559, 29.155003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202526, 39.552826, 28.496071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157927, 39.163105, 28.417795>,  <28.131166, 38.929272, 28.370829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157927, 39.163105, 28.417795>,  <28.202526, 39.552826, 28.496071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157927, 39.163105, 28.417795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046307, 0.191610, -0.980378,
		0.992685, -0.118374, 0.023753,
		-0.111500, -0.974307, -0.195690,
		28.124477, 38.870811, 28.359089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767305, 39.322506, 28.003830>,  <28.202526, 39.552826, 28.496071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767305, 39.322506, 28.003830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453838, 39.079830, 27.950476>,  <28.265759, 38.934223, 27.918463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453838, 39.079830, 27.950476>,  <28.767305, 39.322506, 28.003830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453838, 39.079830, 27.950476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023647, 0.185440, -0.982371,
		0.620729, -0.773007, -0.130977,
		-0.783668, -0.606689, -0.133387,
		28.218739, 38.897823, 27.910460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886400, 38.982208, 27.399513>,  <28.767305, 39.322506, 28.003830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886400, 38.982208, 27.399513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490776, 38.981228, 27.458509>,  <28.253401, 38.980640, 27.493908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490776, 38.981228, 27.458509>,  <28.886400, 38.982208, 27.399513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490776, 38.981228, 27.458509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143062, 0.259705, -0.955032,
		-0.035962, -0.965685, -0.257214,
		-0.989060, -0.002452, 0.147493,
		28.194057, 38.980492, 27.502758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690044, 38.900715, 26.836365>,  <28.886400, 38.982208, 27.399513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690044, 38.900715, 26.836365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327349, 39.006458, 26.967781>,  <28.109732, 39.069904, 27.046631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327349, 39.006458, 26.967781>,  <28.690044, 38.900715, 26.836365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327349, 39.006458, 26.967781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184769, 0.451272, -0.873049,
		-0.379056, -0.852332, -0.360341,
		-0.906740, 0.264355, 0.328542,
		28.055326, 39.085766, 27.066343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191793, 38.675541, 26.282347>,  <28.690044, 38.900715, 26.836365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191793, 38.675541, 26.282347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030151, 38.967796, 26.502478>,  <27.933167, 39.143150, 26.634556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030151, 38.967796, 26.502478>,  <28.191793, 38.675541, 26.282347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030151, 38.967796, 26.502478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135104, 0.547364, -0.825917,
		-0.904680, -0.408109, -0.122480,
		-0.404105, 0.730643, 0.550327,
		27.908920, 39.186989, 26.667576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441454, 38.764973, 26.085167>,  <28.191793, 38.675541, 26.282347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441454, 38.764973, 26.085167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545839, 39.105724, 26.266804>,  <27.608471, 39.310177, 26.375786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545839, 39.105724, 26.266804>,  <27.441454, 38.764973, 26.085167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545839, 39.105724, 26.266804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426127, 0.523738, -0.737641,
		-0.866207, -0.001005, 0.499684,
		0.260962, 0.851879, 0.454094,
		27.624128, 39.361286, 26.403032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907297, 39.229755, 25.888838>,  <27.441454, 38.764973, 26.085167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907297, 39.229755, 25.888838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217058, 39.455273, 26.003687>,  <27.402914, 39.590584, 26.072596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217058, 39.455273, 26.003687>,  <26.907297, 39.229755, 25.888838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217058, 39.455273, 26.003687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187545, 0.637969, -0.746875,
		-0.604257, 0.524534, 0.599781,
		0.774403, 0.563791, 0.287123,
		27.449379, 39.624409, 26.089825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707733, 39.806946, 25.633961>,  <26.907297, 39.229755, 25.888838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707733, 39.806946, 25.633961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088366, 39.896893, 25.717800>,  <27.316744, 39.950859, 25.768105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088366, 39.896893, 25.717800>,  <26.707733, 39.806946, 25.633961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088366, 39.896893, 25.717800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028158, 0.742729, -0.669001,
		-0.306111, 0.630705, 0.713097,
		0.951579, 0.224868, 0.209598,
		27.373838, 39.964352, 25.780680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742107, 40.459869, 25.440598>,  <26.707733, 39.806946, 25.633961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742107, 40.459869, 25.440598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119188, 40.327621, 25.422695>,  <27.345436, 40.248272, 25.411955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119188, 40.327621, 25.422695>,  <26.742107, 40.459869, 25.440598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119188, 40.327621, 25.422695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227091, 0.734131, -0.639907,
		0.244421, 0.593078, 0.767148,
		0.942702, -0.330619, -0.044754,
		27.401999, 40.228436, 25.409269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073275, 41.085842, 25.234207>,  <26.742107, 40.459869, 25.440598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073275, 41.085842, 25.234207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363842, 40.820099, 25.163843>,  <27.538183, 40.660652, 25.121624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363842, 40.820099, 25.163843>,  <27.073275, 41.085842, 25.234207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363842, 40.820099, 25.163843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208175, 0.456643, -0.864951,
		0.654966, 0.591696, 0.470017,
		0.726418, -0.664359, -0.175909,
		27.581768, 40.620792, 25.111071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732363, 41.436832, 25.047632>,  <27.073275, 41.085842, 25.234207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732363, 41.436832, 25.047632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755941, 41.086155, 24.856659>,  <27.770088, 40.875748, 24.742075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755941, 41.086155, 24.856659>,  <27.732363, 41.436832, 25.047632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755941, 41.086155, 24.856659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375180, 0.462656, -0.803237,
		0.925076, -0.131776, 0.356188,
		0.058945, -0.876690, -0.477432,
		27.773624, 40.823147, 24.713428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294308, 41.529015, 24.604954>,  <27.732363, 41.436832, 25.047632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294308, 41.529015, 24.604954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140026, 41.202190, 24.433538>,  <28.047457, 41.006096, 24.330688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140026, 41.202190, 24.433538>,  <28.294308, 41.529015, 24.604954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140026, 41.202190, 24.433538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069354, 0.437491, -0.896544,
		0.920012, -0.375523, -0.112076,
		-0.385706, -0.817058, -0.428541,
		28.024315, 40.957073, 24.304976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743374, 41.253880, 24.167746>,  <28.294308, 41.529015, 24.604954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743374, 41.253880, 24.167746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390253, 41.107742, 24.049641>,  <28.178379, 41.020061, 23.978777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390253, 41.107742, 24.049641>,  <28.743374, 41.253880, 24.167746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390253, 41.107742, 24.049641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123362, 0.426189, -0.896183,
		0.453262, -0.827575, -0.331169,
		-0.882800, -0.365352, -0.295266,
		28.125412, 40.998138, 23.961061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863512, 40.765812, 23.676947>,  <28.743374, 41.253880, 24.167746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863512, 40.765812, 23.676947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485928, 40.875000, 23.602730>,  <28.259377, 40.940514, 23.558199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485928, 40.875000, 23.602730>,  <28.863512, 40.765812, 23.676947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485928, 40.875000, 23.602730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259102, 0.264610, -0.928896,
		-0.204464, -0.924916, -0.320509,
		-0.943960, 0.272970, -0.185544,
		28.202740, 40.956890, 23.547066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709311, 40.633926, 22.936382>,  <28.863512, 40.765812, 23.676947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709311, 40.633926, 22.936382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381460, 40.848282, 23.017416>,  <28.184750, 40.976894, 23.066036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381460, 40.848282, 23.017416>,  <28.709311, 40.633926, 22.936382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381460, 40.848282, 23.017416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010411, 0.339621, -0.940505,
		-0.572806, -0.772970, -0.272783,
		-0.819625, 0.535887, 0.202584,
		28.135572, 41.009048, 23.078192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244492, 40.555908, 22.330412>,  <28.709311, 40.633926, 22.936382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244492, 40.555908, 22.330412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117105, 40.895645, 22.498791>,  <28.040674, 41.099487, 22.599819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117105, 40.895645, 22.498791>,  <28.244492, 40.555908, 22.330412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117105, 40.895645, 22.498791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156814, 0.485154, -0.860253,
		-0.934874, -0.207950, -0.287693,
		-0.318465, 0.849342, 0.420949,
		28.021566, 41.150448, 22.625076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765869, 40.705910, 21.810263>,  <28.244492, 40.555908, 22.330412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765869, 40.705910, 21.810263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867104, 41.032612, 22.017668>,  <27.927845, 41.228634, 22.142111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867104, 41.032612, 22.017668>,  <27.765869, 40.705910, 21.810263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867104, 41.032612, 22.017668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240585, 0.572260, -0.783988,
		-0.937052, 0.073670, 0.341331,
		0.253086, 0.816756, 0.518514,
		27.943029, 41.277637, 22.173222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258400, 41.221088, 21.682280>,  <27.765869, 40.705910, 21.810263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258400, 41.221088, 21.682280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628042, 41.358177, 21.749895>,  <27.849827, 41.440430, 21.790464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628042, 41.358177, 21.749895>,  <27.258400, 41.221088, 21.682280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628042, 41.358177, 21.749895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027719, 0.501297, -0.864831,
		-0.381135, 0.794508, 0.472750,
		0.924104, 0.342722, 0.169039,
		27.905273, 41.460995, 21.800608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322489, 42.027931, 21.745255>,  <27.258400, 41.221088, 21.682280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322489, 42.027931, 21.745255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620283, 41.807228, 21.594891>,  <27.798960, 41.674809, 21.504673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620283, 41.807228, 21.594891>,  <27.322489, 42.027931, 21.745255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620283, 41.807228, 21.594891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203358, 0.348883, -0.914836,
		0.635914, 0.757527, 0.147535,
		0.744485, -0.551755, -0.375909,
		27.843628, 41.641701, 21.482119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011171, 42.395523, 21.357685>,  <27.322489, 42.027931, 21.745255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011171, 42.395523, 21.357685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792088, 42.069126, 21.283743>,  <27.660637, 41.873287, 21.239378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792088, 42.069126, 21.283743>,  <28.011171, 42.395523, 21.357685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792088, 42.069126, 21.283743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422140, 0.460272, -0.780991,
		0.722367, -0.349720, -0.596558,
		-0.547707, -0.815994, -0.184855,
		27.627775, 41.824329, 21.228287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667938, 42.946079, 21.355665>,  <28.011171, 42.395523, 21.357685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667938, 42.946079, 21.355665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501822, 43.202953, 21.613386>,  <28.402151, 43.357079, 21.768019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501822, 43.202953, 21.613386>,  <28.667938, 42.946079, 21.355665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501822, 43.202953, 21.613386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826430, 0.029669, -0.562257,
		-0.380192, -0.765971, 0.518404,
		-0.415292, 0.642190, 0.644301,
		28.377234, 43.395611, 21.806677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362028, 43.235210, 20.746759>,  <28.667938, 42.946079, 21.355665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362028, 43.235210, 20.746759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968260, 43.242897, 20.816666>,  <27.731998, 43.247509, 20.858610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968260, 43.242897, 20.816666>,  <28.362028, 43.235210, 20.746759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968260, 43.242897, 20.816666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166574, 0.420062, 0.892077,
		-0.056267, 0.907292, -0.416720,
		-0.984422, 0.019220, 0.174767,
		27.672934, 43.248665, 20.869095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169739, 43.867138, 20.878613>,  <28.362028, 43.235210, 20.746759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169739, 43.867138, 20.878613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862921, 43.657677, 21.026897>,  <27.678829, 43.531998, 21.115868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862921, 43.657677, 21.026897>,  <28.169739, 43.867138, 20.878613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862921, 43.657677, 21.026897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061164, 0.634848, 0.770213,
		-0.638670, 0.568114, -0.518986,
		-0.767046, -0.523655, 0.370710,
		27.632807, 43.500580, 21.138111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938198, 43.924488, 21.544596>,  <28.169739, 43.867138, 20.878613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938198, 43.924488, 21.544596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987644, 44.320717, 21.568233>,  <28.017311, 44.558453, 21.582417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987644, 44.320717, 21.568233>,  <27.938198, 43.924488, 21.544596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987644, 44.320717, 21.568233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864657, 0.136738, -0.483395,
		-0.486917, 0.008659, 0.873406,
		0.123613, 0.990569, 0.059093,
		28.024729, 44.617889, 21.585962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503376, 44.316833, 22.054796>,  <27.938198, 43.924488, 21.544596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503376, 44.316833, 22.054796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260715, 44.331924, 22.372425>,  <27.115118, 44.340977, 22.563002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260715, 44.331924, 22.372425>,  <27.503376, 44.316833, 22.054796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260715, 44.331924, 22.372425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764933, -0.244267, 0.595996,
		0.216449, 0.968974, 0.119328,
		-0.606653, 0.037725, 0.794071,
		27.078720, 44.343243, 22.610647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692774, 44.862392, 22.612661>,  <27.503376, 44.316833, 22.054796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692774, 44.862392, 22.612661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522568, 44.523609, 22.740160>,  <27.420444, 44.320339, 22.816660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522568, 44.523609, 22.740160>,  <27.692774, 44.862392, 22.612661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522568, 44.523609, 22.740160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861007, -0.270480, 0.430705,
		-0.278574, 0.457716, 0.844330,
		-0.425515, -0.846958, 0.318748,
		27.394913, 44.269524, 22.835785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976936, 44.719845, 23.225046>,  <27.692774, 44.862392, 22.612661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976936, 44.719845, 23.225046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830214, 44.355274, 23.150473>,  <27.742180, 44.136532, 23.105728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830214, 44.355274, 23.150473>,  <27.976936, 44.719845, 23.225046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830214, 44.355274, 23.150473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604920, -0.385925, 0.696515,
		-0.706770, 0.142710, 0.692900,
		-0.366808, -0.911425, -0.186432,
		27.720171, 44.081848, 23.094543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580854, 44.410969, 23.843643>,  <27.976936, 44.719845, 23.225046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580854, 44.410969, 23.843643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777067, 44.141396, 23.622667>,  <27.894794, 43.979652, 23.490082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777067, 44.141396, 23.622667>,  <27.580854, 44.410969, 23.843643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777067, 44.141396, 23.622667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408176, -0.382409, 0.828949,
		-0.769916, -0.632118, 0.087501,
		0.490532, -0.673937, -0.552438,
		27.924227, 43.939213, 23.456936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391603, 43.625290, 24.050888>,  <27.580854, 44.410969, 23.843643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391603, 43.625290, 24.050888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746965, 43.587845, 23.871124>,  <27.960182, 43.565376, 23.763266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746965, 43.587845, 23.871124>,  <27.391603, 43.625290, 24.050888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746965, 43.587845, 23.871124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360173, -0.464837, 0.808828,
		-0.284622, -0.880433, -0.379246,
		0.888406, -0.093616, -0.449411,
		28.013487, 43.559761, 23.736301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668009, 43.127048, 24.421629>,  <27.391603, 43.625290, 24.050888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668009, 43.127048, 24.421629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989368, 43.271057, 24.231918>,  <28.182184, 43.357464, 24.118092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989368, 43.271057, 24.231918>,  <27.668009, 43.127048, 24.421629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989368, 43.271057, 24.231918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576919, -0.273517, 0.769644,
		0.147366, -0.891949, -0.427446,
		0.803397, 0.360021, -0.474276,
		28.230387, 43.379063, 24.089636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061897, 42.672955, 24.581333>,  <27.668009, 43.127048, 24.421629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061897, 42.672955, 24.581333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316568, 42.955132, 24.456757>,  <28.469370, 43.124435, 24.382010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316568, 42.955132, 24.456757>,  <28.061897, 42.672955, 24.581333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316568, 42.955132, 24.456757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653352, -0.278953, 0.703787,
		0.409602, -0.651567, -0.638503,
		0.636677, 0.705440, -0.311443,
		28.507572, 43.166763, 24.363323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628183, 42.366039, 24.353676>,  <28.061897, 42.672955, 24.581333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628183, 42.366039, 24.353676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706417, 42.733795, 24.490189>,  <28.753357, 42.954449, 24.572096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706417, 42.733795, 24.490189>,  <28.628183, 42.366039, 24.353676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706417, 42.733795, 24.490189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686508, -0.376872, 0.621831,
		0.700324, 0.112671, -0.704877,
		0.195586, 0.919387, 0.341282,
		28.765093, 43.009613, 24.592573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370989, 42.418171, 24.609390>,  <28.628183, 42.366039, 24.353676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370989, 42.418171, 24.609390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224274, 42.745457, 24.786472>,  <29.136244, 42.941830, 24.892723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224274, 42.745457, 24.786472>,  <29.370989, 42.418171, 24.609390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224274, 42.745457, 24.786472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584514, -0.167526, 0.793900,
		0.723747, 0.549962, -0.416812,
		-0.366788, 0.818215, 0.442708,
		29.114237, 42.990921, 24.919285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909355, 42.732475, 25.036072>,  <29.370989, 42.418171, 24.609390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909355, 42.732475, 25.036072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595139, 42.919540, 25.198168>,  <29.406609, 43.031780, 25.295425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595139, 42.919540, 25.198168>,  <29.909355, 42.732475, 25.036072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595139, 42.919540, 25.198168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473372, 0.032357, 0.880268,
		0.398554, 0.883316, -0.246795,
		-0.785540, 0.467661, 0.405241,
		29.359476, 43.059837, 25.319740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137407, 43.305977, 25.481195>,  <29.909355, 42.732475, 25.036072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137407, 43.305977, 25.481195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771254, 43.232735, 25.624609>,  <29.551561, 43.188789, 25.710657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771254, 43.232735, 25.624609>,  <30.137407, 43.305977, 25.481195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771254, 43.232735, 25.624609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361980, 0.015427, 0.932058,
		-0.176198, 0.982972, 0.052160,
		-0.915382, -0.183108, 0.358535,
		29.496639, 43.177803, 25.732170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139555, 43.670986, 26.121876>,  <30.137407, 43.305977, 25.481195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139555, 43.670986, 26.121876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844738, 43.400845, 26.132196>,  <29.667847, 43.238758, 26.138388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844738, 43.400845, 26.132196>,  <30.139555, 43.670986, 26.121876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844738, 43.400845, 26.132196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257607, -0.245436, 0.934559,
		-0.624824, 0.695456, 0.354873,
		-0.737043, -0.675353, 0.025800,
		29.623625, 43.198238, 26.139936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890011, 43.588554, 26.799425>,  <30.139555, 43.670986, 26.121876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890011, 43.588554, 26.799425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776304, 43.234592, 26.651840>,  <29.708080, 43.022213, 26.563290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776304, 43.234592, 26.651840>,  <29.890011, 43.588554, 26.799425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776304, 43.234592, 26.651840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173256, -0.425915, 0.888020,
		-0.942961, 0.188509, 0.274388,
		-0.284266, -0.884907, -0.368961,
		29.691025, 42.969120, 26.541151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430965, 43.389496, 27.289875>,  <29.890011, 43.588554, 26.799425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430965, 43.389496, 27.289875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560476, 43.051315, 27.119995>,  <29.638184, 42.848404, 27.018066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560476, 43.051315, 27.119995>,  <29.430965, 43.389496, 27.289875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560476, 43.051315, 27.119995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064256, -0.428195, 0.901399,
		-0.943949, -0.319143, -0.084315,
		0.323779, -0.845456, -0.424701,
		29.657610, 42.797680, 26.992584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194023, 42.869442, 27.697704>,  <29.430965, 43.389496, 27.289875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194023, 42.869442, 27.697704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.437220, 42.642109, 27.475948>,  <29.583138, 42.505711, 27.342896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.437220, 42.642109, 27.475948>,  <29.194023, 42.869442, 27.697704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437220, 42.642109, 27.475948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101275, -0.637050, 0.764140,
		-0.787458, -0.520736, -0.329763,
		0.607991, -0.568331, -0.554388,
		29.619617, 42.471611, 27.309631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037292, 42.228352, 27.881901>,  <29.194023, 42.869442, 27.697704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037292, 42.228352, 27.881901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399010, 42.199524, 27.713587>,  <29.616039, 42.182228, 27.612598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399010, 42.199524, 27.713587>,  <29.037292, 42.228352, 27.881901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399010, 42.199524, 27.713587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275681, -0.654000, 0.704475,
		-0.325965, -0.753054, -0.571539,
		0.904294, -0.072071, -0.420784,
		29.670298, 42.177902, 27.587351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127354, 41.422817, 27.790632>,  <29.037292, 42.228352, 27.881901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127354, 41.422817, 27.790632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470724, 41.626976, 27.811041>,  <29.676746, 41.749470, 27.823286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470724, 41.626976, 27.811041>,  <29.127354, 41.422817, 27.790632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470724, 41.626976, 27.811041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348336, -0.653078, 0.672422,
		0.376521, -0.559452, -0.738407,
		0.858425, 0.510394, 0.051020,
		29.728252, 41.780094, 27.826347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581343, 40.839844, 27.844139>,  <29.127354, 41.422817, 27.790632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581343, 40.839844, 27.844139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798344, 41.160404, 27.944895>,  <29.928543, 41.352741, 28.005348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798344, 41.160404, 27.944895>,  <29.581343, 40.839844, 27.844139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798344, 41.160404, 27.944895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504118, -0.550430, 0.665501,
		0.671981, -0.234053, -0.702610,
		0.542500, 0.801402, 0.251889,
		29.961094, 41.400826, 28.020462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362822, 40.701088, 27.844444>,  <29.581343, 40.839844, 27.844139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362822, 40.701088, 27.844444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289417, 41.012913, 28.083981>,  <30.245375, 41.200008, 28.227703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289417, 41.012913, 28.083981>,  <30.362822, 40.701088, 27.844444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289417, 41.012913, 28.083981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340487, -0.521070, 0.782659,
		0.922167, 0.347524, -0.169808,
		-0.183511, 0.779560, 0.598841,
		30.234364, 41.246780, 28.263632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898178, 40.704136, 28.403856>,  <30.362822, 40.701088, 27.844444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898178, 40.704136, 28.403856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634222, 40.956444, 28.567158>,  <30.475847, 41.107830, 28.665138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634222, 40.956444, 28.567158>,  <30.898178, 40.704136, 28.403856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634222, 40.956444, 28.567158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116501, -0.450884, 0.884947,
		0.742274, 0.631531, 0.224049,
		-0.659891, 0.630771, 0.408254,
		30.436255, 41.145676, 28.689634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195335, 41.012722, 28.936573>,  <30.898178, 40.704136, 28.403856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195335, 41.012722, 28.936573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814939, 41.098705, 29.025490>,  <30.586702, 41.150295, 29.078840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814939, 41.098705, 29.025490>,  <31.195335, 41.012722, 28.936573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814939, 41.098705, 29.025490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162534, -0.264090, 0.950705,
		0.263067, 0.940239, 0.216208,
		-0.950988, 0.214958, 0.222294,
		30.529642, 41.163193, 29.092178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248421, 41.451893, 29.498405>,  <31.195335, 41.012722, 28.936573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248421, 41.451893, 29.498405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883825, 41.287369, 29.496992>,  <30.665068, 41.188656, 29.496145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883825, 41.287369, 29.496992>,  <31.248421, 41.451893, 29.498405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883825, 41.287369, 29.496992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161811, -0.366449, 0.916260,
		-0.378162, 0.834589, 0.400569,
		-0.911488, -0.411311, -0.003532,
		30.610378, 41.163975, 29.495934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947422, 41.746983, 30.045065>,  <31.248421, 41.451893, 29.498405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947422, 41.746983, 30.045065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715504, 41.427769, 29.979372>,  <30.576353, 41.236240, 29.939957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715504, 41.427769, 29.979372>,  <30.947422, 41.746983, 30.045065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715504, 41.427769, 29.979372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158544, -0.308224, 0.938010,
		-0.799187, 0.517817, 0.305231,
		-0.579796, -0.798038, -0.164232,
		30.541565, 41.188358, 29.930103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508966, 41.686432, 30.556900>,  <30.947422, 41.746983, 30.045065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508966, 41.686432, 30.556900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554014, 41.317768, 30.408386>,  <30.581043, 41.096569, 30.319277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554014, 41.317768, 30.408386>,  <30.508966, 41.686432, 30.556900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554014, 41.317768, 30.408386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189529, -0.346877, 0.918561,
		-0.975395, -0.173815, 0.135618,
		0.112617, -0.921664, -0.371286,
		30.587799, 41.041267, 30.297001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100063, 41.237015, 30.963789>,  <30.508966, 41.686432, 30.556900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100063, 41.237015, 30.963789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359579, 40.974648, 30.809471>,  <30.515289, 40.817226, 30.716881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359579, 40.974648, 30.809471>,  <30.100063, 41.237015, 30.963789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359579, 40.974648, 30.809471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013880, -0.517092, 0.855817,
		-0.760840, -0.549891, -0.344589,
		0.648791, -0.655923, -0.385792,
		30.554216, 40.777870, 30.693733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813101, 40.473927, 31.107243>,  <30.100063, 41.237015, 30.963789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813101, 40.473927, 31.107243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204546, 40.466972, 31.025251>,  <30.439413, 40.462799, 30.976057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204546, 40.466972, 31.025251>,  <29.813101, 40.473927, 31.107243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204546, 40.466972, 31.025251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180210, -0.408132, 0.894960,
		-0.099213, -0.912758, -0.396270,
		0.978612, -0.017380, -0.204980,
		30.498129, 40.461758, 30.963757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019150, 39.771400, 31.264774>,  <29.813101, 40.473927, 31.107243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019150, 39.771400, 31.264774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358999, 39.982227, 31.257406>,  <30.562908, 40.108723, 31.252985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358999, 39.982227, 31.257406>,  <30.019150, 39.771400, 31.264774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358999, 39.982227, 31.257406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337989, -0.517351, 0.786200,
		0.404853, -0.674199, -0.617697,
		0.849622, 0.527071, -0.018421,
		30.613886, 40.140350, 31.251881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490095, 39.284943, 31.362835>,  <30.019150, 39.771400, 31.264774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490095, 39.284943, 31.362835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683445, 39.618217, 31.470276>,  <30.799454, 39.818184, 31.534740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683445, 39.618217, 31.470276>,  <30.490095, 39.284943, 31.362835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683445, 39.618217, 31.470276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389412, -0.479450, 0.786439,
		0.784034, -0.275546, -0.556207,
		0.483373, 0.833188, 0.268604,
		30.828457, 39.868176, 31.550858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188307, 39.027649, 31.539867>,  <30.490095, 39.284943, 31.362835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188307, 39.027649, 31.539867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142246, 39.383553, 31.716532>,  <31.114609, 39.597095, 31.822531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142246, 39.383553, 31.716532>,  <31.188307, 39.027649, 31.539867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142246, 39.383553, 31.716532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505485, -0.330258, 0.797129,
		0.855116, 0.315045, -0.411731,
		-0.115154, 0.889762, 0.441660,
		31.107700, 39.650482, 31.849030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839382, 39.149464, 31.966660>,  <31.188307, 39.027649, 31.539867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839382, 39.149464, 31.966660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570917, 39.408398, 32.111160>,  <31.409838, 39.563759, 32.197861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570917, 39.408398, 32.111160>,  <31.839382, 39.149464, 31.966660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570917, 39.408398, 32.111160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266405, -0.244140, 0.932429,
		0.691787, 0.722050, -0.008594,
		-0.671162, 0.647332, 0.361251,
		31.369568, 39.602596, 32.219536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210964, 39.552456, 32.415379>,  <31.839382, 39.149464, 31.966660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210964, 39.552456, 32.415379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840118, 39.632439, 32.542168>,  <31.617611, 39.680428, 32.618240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840118, 39.632439, 32.542168>,  <32.210964, 39.552456, 32.415379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840118, 39.632439, 32.542168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308821, -0.071584, 0.948422,
		0.212338, 0.977185, 0.004614,
		-0.927115, 0.199962, 0.316976,
		31.561983, 39.692429, 32.637260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349808, 40.015949, 32.950985>,  <32.210964, 39.552456, 32.415379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349808, 40.015949, 32.950985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983809, 39.864857, 33.007690>,  <31.764210, 39.774200, 33.041714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983809, 39.864857, 33.007690>,  <32.349808, 40.015949, 32.950985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983809, 39.864857, 33.007690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239199, -0.224914, 0.944562,
		-0.324908, 0.898181, 0.296149,
		-0.914996, -0.377735, 0.141768,
		31.709309, 39.751537, 33.050220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098999, 40.204048, 33.572460>,  <32.349808, 40.015949, 32.950985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098999, 40.204048, 33.572460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812315, 39.929562, 33.522770>,  <31.640305, 39.764870, 33.492954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812315, 39.929562, 33.522770>,  <32.098999, 40.204048, 33.572460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812315, 39.929562, 33.522770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017525, -0.195800, 0.980487,
		-0.697151, 0.700548, 0.152358,
		-0.716710, -0.686218, -0.124225,
		31.597301, 39.723698, 33.485504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454699, 40.353802, 34.106075>,  <32.098999, 40.204048, 33.572460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454699, 40.353802, 34.106075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484827, 39.970932, 33.994259>,  <31.502903, 39.741211, 33.927170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484827, 39.970932, 33.994259>,  <31.454699, 40.353802, 34.106075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484827, 39.970932, 33.994259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104109, -0.271259, 0.956860,
		-0.991710, -0.101174, 0.079219,
		0.075320, -0.957175, -0.279543,
		31.507423, 39.683781, 33.910397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001789, 39.987133, 34.480114>,  <31.454699, 40.353802, 34.106075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001789, 39.987133, 34.480114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276028, 39.724861, 34.353596>,  <31.440571, 39.567497, 34.277683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276028, 39.724861, 34.353596>,  <31.001789, 39.987133, 34.480114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276028, 39.724861, 34.353596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026766, -0.411487, 0.911022,
		-0.727490, -0.633060, -0.264564,
		0.685596, -0.655678, -0.316298,
		31.481707, 39.528156, 34.258705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753740, 39.412445, 34.742210>,  <31.001789, 39.987133, 34.480114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753740, 39.412445, 34.742210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135672, 39.310089, 34.681782>,  <31.364830, 39.248676, 34.645527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135672, 39.310089, 34.681782>,  <30.753740, 39.412445, 34.742210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135672, 39.310089, 34.681782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124910, -0.115661, 0.985404,
		-0.269628, -0.959762, -0.078473,
		0.954829, -0.255890, -0.151069,
		31.422121, 39.233322, 34.636459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817587, 38.842552, 35.188438>,  <30.753740, 39.412445, 34.742210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817587, 38.842552, 35.188438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200562, 38.931526, 35.114864>,  <31.430347, 38.984913, 35.070721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200562, 38.931526, 35.114864>,  <30.817587, 38.842552, 35.188438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200562, 38.931526, 35.114864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230584, -0.206145, 0.950965,
		0.173615, -0.952903, -0.248663,
		0.957439, 0.222439, -0.183934,
		31.487793, 38.998257, 35.059685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269089, 38.292339, 35.465420>,  <30.817587, 38.842552, 35.188438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269089, 38.292339, 35.465420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522366, 38.598770, 35.421253>,  <31.674332, 38.782631, 35.394753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522366, 38.598770, 35.421253>,  <31.269089, 38.292339, 35.465420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522366, 38.598770, 35.421253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404294, -0.205710, 0.891196,
		0.660012, -0.608939, -0.439975,
		0.633191, 0.766079, -0.110420,
		31.712322, 38.828594, 35.388126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957588, 37.997551, 35.574192>,  <31.269089, 38.292339, 35.465420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957588, 37.997551, 35.574192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942392, 38.387817, 35.660568>,  <31.933275, 38.621979, 35.712395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942392, 38.387817, 35.660568>,  <31.957588, 37.997551, 35.574192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942392, 38.387817, 35.660568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563046, -0.157626, 0.811254,
		0.825551, 0.152405, -0.543357,
		-0.037992, 0.975667, 0.215940,
		31.930994, 38.680519, 35.725349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602589, 38.116623, 35.870522>,  <31.957588, 37.997551, 35.574192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602589, 38.116623, 35.870522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361835, 38.424313, 35.956345>,  <32.217384, 38.608925, 36.007839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361835, 38.424313, 35.956345>,  <32.602589, 38.116623, 35.870522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361835, 38.424313, 35.956345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240979, -0.081200, 0.967128,
		0.761356, 0.633803, -0.136493,
		-0.601885, 0.769221, 0.214555,
		32.181271, 38.655079, 36.020710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021664, 38.705280, 36.301357>,  <32.602589, 38.116623, 35.870522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021664, 38.705280, 36.301357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625748, 38.720768, 36.356213>,  <32.388199, 38.730061, 36.389126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625748, 38.720768, 36.356213>,  <33.021664, 38.705280, 36.301357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625748, 38.720768, 36.356213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141685, 0.164463, 0.976154,
		0.015240, 0.985623, -0.168271,
		-0.989794, 0.038718, 0.137142,
		32.328808, 38.732384, 36.397354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947388, 39.129719, 37.010860>,  <33.021664, 38.705280, 36.301357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947388, 39.129719, 37.010860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572582, 38.996136, 36.969917>,  <32.347698, 38.915985, 36.945351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572582, 38.996136, 36.969917>,  <32.947388, 39.129719, 37.010860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572582, 38.996136, 36.969917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127664, 0.054656, 0.990310,
		-0.325132, 0.941001, -0.093849,
		-0.937012, -0.333962, -0.102362,
		32.291477, 38.895947, 36.939209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244091, 39.620640, 36.520634>,  <32.947388, 39.129719, 37.010860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244091, 39.620640, 36.520634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598309, 39.434837, 36.523438>,  <33.810837, 39.323357, 36.525120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598309, 39.434837, 36.523438>,  <33.244091, 39.620640, 36.520634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598309, 39.434837, 36.523438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272111, 0.506415, -0.818229,
		0.376526, 0.726482, 0.574850,
		0.885541, -0.464508, 0.007005,
		33.863972, 39.295486, 36.525539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782078, 40.146473, 36.535507>,  <33.244091, 39.620640, 36.520634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782078, 40.146473, 36.535507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945568, 39.813110, 36.386711>,  <34.043663, 39.613094, 36.297432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945568, 39.813110, 36.386711>,  <33.782078, 40.146473, 36.535507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945568, 39.813110, 36.386711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422146, 0.534008, -0.732550,
		0.809157, 0.142377, 0.570081,
		0.408726, -0.833405, -0.371992,
		34.068188, 39.563087, 36.275112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377945, 40.392742, 36.186886>,  <33.782078, 40.146473, 36.535507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377945, 40.392742, 36.186886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274353, 40.037300, 36.035461>,  <34.212200, 39.824036, 35.944607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274353, 40.037300, 36.035461>,  <34.377945, 40.392742, 36.186886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274353, 40.037300, 36.035461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167924, 0.344542, -0.923630,
		0.951174, -0.302768, 0.059990,
		-0.258976, -0.888607, -0.378562,
		34.196659, 39.770718, 35.921894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948635, 40.303734, 35.728783>,  <34.377945, 40.392742, 36.186886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948635, 40.303734, 35.728783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645832, 40.076065, 35.600414>,  <34.464149, 39.939465, 35.523392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645832, 40.076065, 35.600414>,  <34.948635, 40.303734, 35.728783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645832, 40.076065, 35.600414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164925, 0.308811, -0.936715,
		0.632253, -0.762026, -0.139902,
		-0.757004, -0.569168, -0.320924,
		34.418732, 39.905315, 35.504139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264153, 40.008533, 35.234135>,  <34.948635, 40.303734, 35.728783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264153, 40.008533, 35.234135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875252, 39.954212, 35.157936>,  <34.641911, 39.921619, 35.112217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875252, 39.954212, 35.157936>,  <35.264153, 40.008533, 35.234135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875252, 39.954212, 35.157936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195721, -0.026079, -0.980313,
		0.128164, -0.990392, 0.051935,
		-0.972248, -0.135806, -0.190498,
		34.583576, 39.913471, 35.100788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184139, 39.372120, 34.655880>,  <35.264153, 40.008533, 35.234135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184139, 39.372120, 34.655880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875027, 39.624336, 34.684826>,  <34.689560, 39.775665, 34.702194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875027, 39.624336, 34.684826>,  <35.184139, 39.372120, 34.655880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875027, 39.624336, 34.684826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066561, 0.032867, -0.997241,
		-0.631176, -0.775463, 0.016570,
		-0.772779, 0.630537, 0.072360,
		34.643192, 39.813496, 34.706535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742832, 39.112801, 34.146870>,  <35.184139, 39.372120, 34.655880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742832, 39.112801, 34.146870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608177, 39.484650, 34.206844>,  <34.527386, 39.707760, 34.242828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608177, 39.484650, 34.206844>,  <34.742832, 39.112801, 34.146870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608177, 39.484650, 34.206844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036726, 0.172068, -0.984400,
		-0.940919, -0.325876, -0.092066,
		-0.336634, 0.929622, 0.149934,
		34.507187, 39.763535, 34.251823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172710, 39.235237, 33.525776>,  <34.742832, 39.112801, 34.146870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172710, 39.235237, 33.525776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255344, 39.596928, 33.675278>,  <34.304924, 39.813942, 33.764980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255344, 39.596928, 33.675278>,  <34.172710, 39.235237, 33.525776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255344, 39.596928, 33.675278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288650, 0.421315, -0.859753,
		-0.934882, 0.069727, 0.348043,
		0.206584, 0.904230, 0.373753,
		34.317318, 39.868198, 33.787403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626732, 39.637394, 33.277973>,  <34.172710, 39.235237, 33.525776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626732, 39.637394, 33.277973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935623, 39.868874, 33.382862>,  <34.120960, 40.007763, 33.445797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935623, 39.868874, 33.382862>,  <33.626732, 39.637394, 33.277973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935623, 39.868874, 33.382862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120169, 0.538321, -0.834128,
		-0.623873, 0.612629, 0.485250,
		0.772232, 0.578702, 0.262225,
		34.167294, 40.042484, 33.461529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410076, 40.365219, 33.111706>,  <33.626732, 39.637394, 33.277973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410076, 40.365219, 33.111706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809608, 40.365276, 33.131008>,  <34.049328, 40.365311, 33.142590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809608, 40.365276, 33.131008>,  <33.410076, 40.365219, 33.111706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809608, 40.365276, 33.131008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035669, 0.671371, -0.740263,
		-0.032507, 0.741122, 0.670583,
		0.998835, 0.000145, 0.048259,
		34.109261, 40.365318, 33.145485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539436, 41.054462, 32.972687>,  <33.410076, 40.365219, 33.111706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539436, 41.054462, 32.972687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878059, 40.858238, 32.890034>,  <34.081234, 40.740505, 32.840443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878059, 40.858238, 32.890034>,  <33.539436, 41.054462, 32.972687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878059, 40.858238, 32.890034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153307, 0.596430, -0.787888,
		0.509744, 0.635314, 0.580117,
		0.846556, -0.490558, -0.206629,
		34.132027, 40.711071, 32.828045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855915, 41.623260, 32.601082>,  <33.539436, 41.054462, 32.972687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855915, 41.623260, 32.601082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063316, 41.286274, 32.542553>,  <34.187759, 41.084084, 32.507435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063316, 41.286274, 32.542553>,  <33.855915, 41.623260, 32.601082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063316, 41.286274, 32.542553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272067, 0.324774, -0.905815,
		0.810637, 0.429860, 0.397603,
		0.518505, -0.842462, -0.146323,
		34.218868, 41.033535, 32.498657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562977, 41.732273, 32.407299>,  <33.855915, 41.623260, 32.601082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562977, 41.732273, 32.407299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495796, 41.371925, 32.247185>,  <34.455486, 41.155716, 32.151115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495796, 41.371925, 32.247185>,  <34.562977, 41.732273, 32.407299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495796, 41.371925, 32.247185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066408, 0.394789, -0.916368,
		0.983556, -0.180488, -0.006481,
		-0.167952, -0.900869, -0.400283,
		34.445412, 41.101665, 32.127098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025848, 41.709915, 31.819973>,  <34.562977, 41.732273, 32.407299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025848, 41.709915, 31.819973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751205, 41.426819, 31.753435>,  <34.586418, 41.256962, 31.713512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751205, 41.426819, 31.753435>,  <35.025848, 41.709915, 31.819973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751205, 41.426819, 31.753435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184022, 0.390535, -0.902008,
		0.703350, -0.588717, -0.398385,
		-0.686611, -0.707739, -0.166346,
		34.545223, 41.214497, 31.703531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177750, 41.443089, 31.215807>,  <35.025848, 41.709915, 31.819973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177750, 41.443089, 31.215807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794315, 41.335320, 31.252728>,  <34.564255, 41.270657, 31.274879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794315, 41.335320, 31.252728>,  <35.177750, 41.443089, 31.215807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794315, 41.335320, 31.252728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123521, 0.101286, -0.987159,
		0.256612, -0.957681, -0.130371,
		-0.958589, -0.269421, 0.092302,
		34.506741, 41.254494, 31.280418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083855, 41.082272, 30.625778>,  <35.177750, 41.443089, 31.215807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083855, 41.082272, 30.625778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704693, 41.137661, 30.740538>,  <34.477196, 41.170895, 30.809393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704693, 41.137661, 30.740538>,  <35.083855, 41.082272, 30.625778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704693, 41.137661, 30.740538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275008, 0.098878, -0.956344,
		-0.160796, -0.985418, -0.055646,
		-0.947900, 0.138473, 0.286897,
		34.420322, 41.179203, 30.826607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632568, 40.690060, 30.133720>,  <35.083855, 41.082272, 30.625778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632568, 40.690060, 30.133720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376854, 40.952724, 30.293774>,  <34.223427, 41.110325, 30.389807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376854, 40.952724, 30.293774>,  <34.632568, 40.690060, 30.133720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376854, 40.952724, 30.293774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383469, 0.178796, -0.906081,
		-0.666531, -0.732686, 0.137507,
		-0.639287, 0.656661, 0.400135,
		34.185066, 41.149723, 30.413815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051552, 40.606449, 29.804020>,  <34.632568, 40.690060, 30.133720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051552, 40.606449, 29.804020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964832, 40.972836, 29.939083>,  <33.912800, 41.192665, 30.020121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964832, 40.972836, 29.939083>,  <34.051552, 40.606449, 29.804020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964832, 40.972836, 29.939083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530473, 0.179826, -0.828409,
		-0.819511, -0.358713, 0.446908,
		-0.216795, 0.915963, 0.337657,
		33.899796, 41.247623, 30.040380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364689, 40.653023, 29.758799>,  <34.051552, 40.606449, 29.804020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364689, 40.653023, 29.758799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523594, 41.019802, 29.743883>,  <33.618935, 41.239868, 29.734934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523594, 41.019802, 29.743883>,  <33.364689, 40.653023, 29.758799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523594, 41.019802, 29.743883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393451, 0.133467, -0.909606,
		-0.829085, 0.376020, 0.413795,
		0.397258, 0.916949, -0.037290,
		33.642773, 41.294888, 29.732697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748749, 40.990849, 29.606852>,  <33.364689, 40.653023, 29.758799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748749, 40.990849, 29.606852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045918, 41.243546, 29.518337>,  <33.224216, 41.395164, 29.465229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045918, 41.243546, 29.518337>,  <32.748749, 40.990849, 29.606852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045918, 41.243546, 29.518337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440617, 0.212666, -0.872141,
		-0.503911, 0.745433, 0.436352,
		0.742920, 0.631746, -0.221286,
		33.268795, 41.433071, 29.451952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354080, 41.652115, 29.364368>,  <32.748749, 40.990849, 29.606852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354080, 41.652115, 29.364368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728741, 41.631187, 29.225834>,  <32.953537, 41.618629, 29.142714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728741, 41.631187, 29.225834>,  <32.354080, 41.652115, 29.364368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728741, 41.631187, 29.225834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339694, 0.105409, -0.934611,
		0.085408, 0.993051, 0.080958,
		0.936650, -0.052322, -0.346336,
		33.009735, 41.615490, 29.121933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430473, 42.335892, 28.908457>,  <32.354080, 41.652115, 29.364368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430473, 42.335892, 28.908457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689884, 42.052841, 28.796255>,  <32.845531, 41.883011, 28.728933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689884, 42.052841, 28.796255>,  <32.430473, 42.335892, 28.908457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689884, 42.052841, 28.796255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230785, 0.168374, -0.958326,
		0.725365, 0.686234, -0.054115,
		0.648524, -0.707625, -0.280505,
		32.884441, 41.840553, 28.712103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588451, 42.593166, 28.284775>,  <32.430473, 42.335892, 28.908457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588451, 42.593166, 28.284775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761848, 42.233135, 28.267149>,  <32.865887, 42.017117, 28.256573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761848, 42.233135, 28.267149>,  <32.588451, 42.593166, 28.284775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761848, 42.233135, 28.267149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151113, -0.024399, -0.988215,
		0.888397, 0.435042, -0.146591,
		0.433492, -0.900079, -0.044065,
		32.891895, 41.963112, 28.253929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059299, 42.611225, 27.741398>,  <32.588451, 42.593166, 28.284775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059299, 42.611225, 27.741398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963703, 42.223103, 27.756292>,  <32.906345, 41.990231, 27.765228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963703, 42.223103, 27.756292>,  <33.059299, 42.611225, 27.741398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963703, 42.223103, 27.756292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254033, 0.025468, -0.966860,
		0.937204, -0.240529, -0.252577,
		-0.238991, -0.970308, 0.037234,
		32.892006, 41.932011, 27.767462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384193, 42.383495, 27.175240>,  <33.059299, 42.611225, 27.741398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384193, 42.383495, 27.175240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091373, 42.127216, 27.267860>,  <32.915684, 41.973450, 27.323433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091373, 42.127216, 27.267860>,  <33.384193, 42.383495, 27.175240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091373, 42.127216, 27.267860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338967, 0.047720, -0.939587,
		0.590940, -0.766310, -0.252108,
		-0.732046, -0.640696, 0.231554,
		32.871761, 41.935009, 27.337326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302387, 41.883316, 26.637363>,  <33.384193, 42.383495, 27.175240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302387, 41.883316, 26.637363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939022, 41.868484, 26.803932>,  <32.721001, 41.859585, 26.903873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939022, 41.868484, 26.803932>,  <33.302387, 41.883316, 26.637363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939022, 41.868484, 26.803932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410098, -0.114552, -0.904819,
		0.081250, -0.992725, 0.088856,
		-0.908415, -0.037077, 0.416422,
		32.666496, 41.857361, 26.928858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983780, 41.308479, 26.358780>,  <33.302387, 41.883316, 26.637363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983780, 41.308479, 26.358780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672894, 41.521255, 26.493225>,  <32.486362, 41.648922, 26.573893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672894, 41.521255, 26.493225>,  <32.983780, 41.308479, 26.358780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672894, 41.521255, 26.493225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517258, -0.235955, -0.822660,
		-0.358304, -0.813239, 0.458541,
		-0.777214, 0.531947, 0.336110,
		32.439728, 41.680840, 26.594059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342674, 40.910236, 26.136988>,  <32.983780, 41.308479, 26.358780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342674, 40.910236, 26.136988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225471, 41.281742, 26.227797>,  <32.155151, 41.504646, 26.282282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225471, 41.281742, 26.227797>,  <32.342674, 40.910236, 26.136988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225471, 41.281742, 26.227797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635326, -0.011691, -0.772156,
		-0.714500, -0.370477, 0.593496,
		-0.293004, 0.928768, 0.227020,
		32.137569, 41.560371, 26.295902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594439, 40.851711, 26.012119>,  <32.342674, 40.910236, 26.136988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594439, 40.851711, 26.012119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690628, 41.239704, 25.997679>,  <31.748343, 41.472500, 25.989014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690628, 41.239704, 25.997679>,  <31.594439, 40.851711, 26.012119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690628, 41.239704, 25.997679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478780, 0.086180, -0.873695,
		-0.844359, 0.227386, 0.485133,
		0.240475, 0.969984, -0.036101,
		31.762770, 41.530701, 25.986849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981798, 41.130276, 25.706984>,  <31.594439, 40.851711, 26.012119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981798, 41.130276, 25.706984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294289, 41.376816, 25.667385>,  <31.481783, 41.524738, 25.643625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294289, 41.376816, 25.667385>,  <30.981798, 41.130276, 25.706984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294289, 41.376816, 25.667385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342028, 0.289959, -0.893835,
		-0.522207, 0.732148, 0.437332,
		0.781228, 0.616346, -0.098997,
		31.528658, 41.561718, 25.637686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696243, 41.680744, 25.488764>,  <30.981798, 41.130276, 25.706984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696243, 41.680744, 25.488764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077896, 41.727570, 25.378540>,  <31.306887, 41.755665, 25.312405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077896, 41.727570, 25.378540>,  <30.696243, 41.680744, 25.488764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077896, 41.727570, 25.378540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293236, 0.179677, -0.939004,
		-0.060407, 0.976736, 0.205762,
		0.954130, 0.117059, -0.275560,
		31.364136, 41.762688, 25.295872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640335, 42.028107, 24.894386>,  <30.696243, 41.680744, 25.488764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640335, 42.028107, 24.894386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032642, 41.956120, 24.864174>,  <31.268026, 41.912926, 24.846046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032642, 41.956120, 24.864174>,  <30.640335, 42.028107, 24.894386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032642, 41.956120, 24.864174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036463, 0.211215, -0.976759,
		0.191738, 0.960729, 0.200591,
		0.980769, -0.179967, -0.075529,
		31.326874, 41.902130, 24.841515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902132, 42.620403, 24.557524>,  <30.640335, 42.028107, 24.894386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902132, 42.620403, 24.557524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156990, 42.315853, 24.509602>,  <31.309904, 42.133121, 24.480848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156990, 42.315853, 24.509602>,  <30.902132, 42.620403, 24.557524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156990, 42.315853, 24.509602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168605, 0.013989, -0.985584,
		0.752078, 0.648157, -0.119459,
		0.637143, -0.761378, -0.119804,
		31.348133, 42.087440, 24.473660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399563, 42.868019, 24.115875>,  <30.902132, 42.620403, 24.557524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399563, 42.868019, 24.115875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398952, 42.470192, 24.074242>,  <31.398586, 42.231495, 24.049261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398952, 42.470192, 24.074242>,  <31.399563, 42.868019, 24.115875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398952, 42.470192, 24.074242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135444, 0.103332, -0.985382,
		0.990784, 0.012595, -0.134865,
		-0.001525, -0.994567, -0.104086,
		31.398495, 42.171822, 24.043016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871681, 42.695820, 23.545803>,  <31.399563, 42.868019, 24.115875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871681, 42.695820, 23.545803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641411, 42.370888, 23.583143>,  <31.503248, 42.175926, 23.605547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641411, 42.370888, 23.583143>,  <31.871681, 42.695820, 23.545803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641411, 42.370888, 23.583143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089513, -0.050870, -0.994686,
		0.812764, -0.580972, -0.043430,
		-0.575675, -0.812332, 0.093350,
		31.468708, 42.127190, 23.611149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194363, 42.413452, 22.936863>,  <31.871681, 42.695820, 23.545803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194363, 42.413452, 22.936863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854456, 42.217285, 23.014212>,  <31.650513, 42.099586, 23.060621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854456, 42.217285, 23.014212>,  <32.194363, 42.413452, 22.936863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854456, 42.217285, 23.014212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320640, 0.189667, -0.928017,
		0.418437, -0.850599, -0.318419,
		-0.849765, -0.490415, 0.193372,
		31.599525, 42.070160, 23.072224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004204, 42.019470, 22.398560>,  <32.194363, 42.413452, 22.936863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004204, 42.019470, 22.398560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654980, 42.061153, 22.589096>,  <31.445444, 42.086163, 22.703419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654980, 42.061153, 22.589096>,  <32.004204, 42.019470, 22.398560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654980, 42.061153, 22.589096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380233, 0.466082, -0.798868,
		-0.305262, -0.878583, -0.367296,
		-0.873062, 0.104206, 0.476343,
		31.393061, 42.092415, 22.731998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459036, 41.760036, 21.934271>,  <32.004204, 42.019470, 22.398560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459036, 41.760036, 21.934271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300102, 42.015953, 22.197420>,  <31.204742, 42.169502, 22.355310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300102, 42.015953, 22.197420>,  <31.459036, 41.760036, 21.934271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300102, 42.015953, 22.197420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465151, 0.477560, -0.745367,
		-0.791050, -0.602171, 0.107846,
		-0.397335, 0.639787, 0.657874,
		31.180902, 42.207890, 22.394783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870529, 41.245293, 22.379215>,  <31.459036, 41.760036, 21.934271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870529, 41.245293, 22.379215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193344, 41.150627, 22.162815>,  <32.387035, 41.093830, 22.032976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193344, 41.150627, 22.162815>,  <31.870529, 41.245293, 22.379215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193344, 41.150627, 22.162815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523483, -0.137184, 0.840920,
		-0.273229, -0.961859, 0.013175,
		0.807039, -0.236661, -0.540999,
		32.435455, 41.079628, 22.000515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046589, 40.605972, 22.619251>,  <31.870529, 41.245293, 22.379215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046589, 40.605972, 22.619251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377636, 40.717739, 22.424530>,  <32.576263, 40.784798, 22.307697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377636, 40.717739, 22.424530>,  <32.046589, 40.605972, 22.619251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377636, 40.717739, 22.424530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560390, -0.362203, 0.744830,
		0.031795, -0.889234, -0.456346,
		0.827618, 0.279414, -0.486802,
		32.625923, 40.801563, 22.278490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408932, 40.075768, 22.719435>,  <32.046589, 40.605972, 22.619251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408932, 40.075768, 22.719435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674194, 40.361214, 22.629133>,  <32.833351, 40.532482, 22.574951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674194, 40.361214, 22.629133>,  <32.408932, 40.075768, 22.719435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674194, 40.361214, 22.629133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656821, -0.410225, 0.632694,
		0.358892, -0.567858, -0.740766,
		0.663161, 0.713619, -0.225755,
		32.873142, 40.575298, 22.561407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985432, 39.730495, 22.729605>,  <32.408932, 40.075768, 22.719435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985432, 39.730495, 22.729605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107262, 40.111225, 22.715382>,  <33.180359, 40.339664, 22.706848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107262, 40.111225, 22.715382>,  <32.985432, 39.730495, 22.729605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107262, 40.111225, 22.715382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711909, -0.202688, 0.672386,
		0.632787, -0.230105, -0.739346,
		0.304576, 0.951824, -0.035556,
		33.198635, 40.396774, 22.704716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766022, 39.777744, 22.646103>,  <32.985432, 39.730495, 22.729605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766022, 39.777744, 22.646103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613621, 40.114948, 22.797981>,  <33.522179, 40.317272, 22.889109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613621, 40.114948, 22.797981>,  <33.766022, 39.777744, 22.646103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613621, 40.114948, 22.797981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678779, -0.023797, 0.733957,
		0.627769, 0.537370, -0.563152,
		-0.381005, 0.843011, 0.379694,
		33.499321, 40.367851, 22.911890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403767, 40.139885, 22.822466>,  <33.766022, 39.777744, 22.646103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403767, 40.139885, 22.822466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111408, 40.308033, 23.037531>,  <33.935993, 40.408920, 23.166569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111408, 40.308033, 23.037531>,  <34.403767, 40.139885, 22.822466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111408, 40.308033, 23.037531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575737, -0.043269, 0.816489,
		0.366491, 0.906321, -0.210397,
		-0.730897, 0.420370, 0.537660,
		33.892139, 40.434143, 23.198830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764656, 40.536720, 23.263702>,  <34.403767, 40.139885, 22.822466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764656, 40.536720, 23.263702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397617, 40.522945, 23.422112>,  <34.177395, 40.514679, 23.517157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397617, 40.522945, 23.422112>,  <34.764656, 40.536720, 23.263702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397617, 40.522945, 23.422112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395058, 0.031619, 0.918112,
		-0.044141, 0.998907, -0.015408,
		-0.917595, -0.034439, 0.396021,
		34.122337, 40.512615, 23.540918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937820, 40.885056, 23.790409>,  <34.764656, 40.536720, 23.263702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937820, 40.885056, 23.790409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580967, 40.721806, 23.867901>,  <34.366856, 40.623856, 23.914396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580967, 40.721806, 23.867901>,  <34.937820, 40.885056, 23.790409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580967, 40.721806, 23.867901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216672, -0.010252, 0.976191,
		-0.396419, 0.912870, 0.097575,
		-0.892135, -0.408122, 0.193729,
		34.313328, 40.599369, 23.926020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555397, 41.285107, 24.270821>,  <34.937820, 40.885056, 23.790409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555397, 41.285107, 24.270821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372143, 40.931908, 24.311661>,  <34.262192, 40.719986, 24.336164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372143, 40.931908, 24.311661>,  <34.555397, 41.285107, 24.270821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372143, 40.931908, 24.311661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181681, 0.019418, 0.983166,
		-0.870118, 0.468970, 0.151529,
		-0.458133, -0.883001, 0.102099,
		34.234703, 40.667007, 24.342291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284412, 41.338020, 24.898642>,  <34.555397, 41.285107, 24.270821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284412, 41.338020, 24.898642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289330, 40.944569, 24.826736>,  <34.292278, 40.708496, 24.783594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289330, 40.944569, 24.826736>,  <34.284412, 41.338020, 24.898642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289330, 40.944569, 24.826736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219589, -0.172731, 0.960180,
		-0.975515, -0.051273, 0.213872,
		0.012289, -0.983633, -0.179761,
		34.293015, 40.649479, 24.772808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835064, 40.957745, 25.366274>,  <34.284412, 41.338020, 24.898642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835064, 40.957745, 25.366274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109566, 40.691292, 25.249437>,  <34.274269, 40.531422, 25.179335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109566, 40.691292, 25.249437>,  <33.835064, 40.957745, 25.366274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109566, 40.691292, 25.249437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215172, -0.197681, 0.956359,
		-0.694802, -0.719160, 0.007673,
		0.686258, -0.666131, -0.292093,
		34.315445, 40.491451, 25.161810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623272, 40.379669, 25.712816>,  <33.835064, 40.957745, 25.366274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623272, 40.379669, 25.712816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007442, 40.353279, 25.604568>,  <34.237946, 40.337444, 25.539619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007442, 40.353279, 25.604568>,  <33.623272, 40.379669, 25.712816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007442, 40.353279, 25.604568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256445, -0.169843, 0.951519,
		-0.108735, -0.983261, -0.146204,
		0.960423, -0.065970, -0.270620,
		34.295570, 40.333488, 25.523382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805130, 39.629910, 25.850981>,  <33.623272, 40.379669, 25.712816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805130, 39.629910, 25.850981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112286, 39.885769, 25.864822>,  <34.296577, 40.039284, 25.873127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112286, 39.885769, 25.864822>,  <33.805130, 39.629910, 25.850981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112286, 39.885769, 25.864822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189151, -0.278019, 0.941768,
		0.612024, -0.716625, -0.334477,
		0.767886, 0.639651, 0.034604,
		34.342651, 40.077663, 25.875204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462051, 39.226608, 25.999716>,  <33.805130, 39.629910, 25.850981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462051, 39.226608, 25.999716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517956, 39.603008, 26.122995>,  <34.551498, 39.828850, 26.196962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517956, 39.603008, 26.122995>,  <34.462051, 39.226608, 25.999716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517956, 39.603008, 26.122995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216159, -0.332740, 0.917910,
		0.966304, -0.061666, -0.249909,
		0.139759, 0.941000, 0.308198,
		34.559883, 39.885307, 26.215454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116692, 39.194401, 26.381674>,  <34.462051, 39.226608, 25.999716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116692, 39.194401, 26.381674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949394, 39.531036, 26.518377>,  <34.849018, 39.733017, 26.600399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949394, 39.531036, 26.518377>,  <35.116692, 39.194401, 26.381674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949394, 39.531036, 26.518377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278537, -0.239293, 0.930138,
		0.864576, 0.484214, -0.134332,
		-0.418241, 0.841591, 0.341758,
		34.823921, 39.783512, 26.620905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531673, 39.362946, 26.959152>,  <35.116692, 39.194401, 26.381674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531673, 39.362946, 26.959152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207359, 39.586571, 27.028530>,  <35.012772, 39.720745, 27.070156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207359, 39.586571, 27.028530>,  <35.531673, 39.362946, 26.959152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207359, 39.586571, 27.028530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206317, -0.004350, 0.978475,
		0.547782, 0.829115, -0.111817,
		-0.810782, 0.559061, 0.173444,
		34.964123, 39.754288, 27.080563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704552, 40.016651, 27.386892>,  <35.531673, 39.362946, 26.959152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704552, 40.016651, 27.386892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332653, 39.890491, 27.462881>,  <35.109512, 39.814796, 27.508474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332653, 39.890491, 27.462881>,  <35.704552, 40.016651, 27.386892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332653, 39.890491, 27.462881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176075, 0.072270, 0.981720,
		-0.323360, 0.946204, -0.011660,
		-0.929751, -0.315396, 0.189972,
		35.053726, 39.795872, 27.519873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629303, 40.273342, 28.107685>,  <35.704552, 40.016651, 27.386892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629303, 40.273342, 28.107685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303288, 40.050411, 28.044313>,  <35.107677, 39.916653, 28.006290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303288, 40.050411, 28.044313>,  <35.629303, 40.273342, 28.107685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303288, 40.050411, 28.044313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180840, -0.015087, 0.983397,
		-0.550461, 0.830158, -0.088490,
		-0.815040, -0.557324, -0.158431,
		35.058777, 39.883213, 27.996784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117313, 40.460407, 28.538855>,  <35.629303, 40.273342, 28.107685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117313, 40.460407, 28.538855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990444, 40.086308, 28.475969>,  <34.914322, 39.861847, 28.438238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990444, 40.086308, 28.475969>,  <35.117313, 40.460407, 28.538855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990444, 40.086308, 28.475969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070347, -0.142114, 0.987348,
		-0.945754, 0.324223, -0.020716,
		-0.317177, -0.935245, -0.157213,
		34.895290, 39.805733, 28.428806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526070, 40.404228, 28.909332>,  <35.117313, 40.460407, 28.538855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526070, 40.404228, 28.909332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673294, 40.041256, 28.828238>,  <34.761627, 39.823471, 28.779581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673294, 40.041256, 28.828238>,  <34.526070, 40.404228, 28.909332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673294, 40.041256, 28.828238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086955, -0.183494, 0.979167,
		-0.925728, -0.378020, 0.011369,
		0.368059, -0.907431, -0.202736,
		34.783710, 39.769028, 28.767416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135521, 39.968056, 29.364779>,  <34.526070, 40.404228, 28.909332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135521, 39.968056, 29.364779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465637, 39.760189, 29.276373>,  <34.663708, 39.635468, 29.223330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465637, 39.760189, 29.276373>,  <34.135521, 39.968056, 29.364779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465637, 39.760189, 29.276373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056149, -0.313917, 0.947789,
		-0.561917, -0.794606, -0.229893,
		0.825286, -0.519670, -0.221012,
		34.713223, 39.604290, 29.210070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153046, 39.430050, 29.792229>,  <34.135521, 39.968056, 29.364779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153046, 39.430050, 29.792229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543179, 39.439133, 29.704405>,  <34.777260, 39.444584, 29.651711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543179, 39.439133, 29.704405>,  <34.153046, 39.430050, 29.792229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543179, 39.439133, 29.704405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215643, -0.310381, 0.925830,
		-0.047119, -0.950341, -0.307623,
		0.975335, 0.022713, -0.219559,
		34.835777, 39.445946, 29.638536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495152, 38.683929, 29.960033>,  <34.153046, 39.430050, 29.792229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495152, 38.683929, 29.960033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765873, 38.977802, 29.978718>,  <34.928307, 39.154125, 29.989929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765873, 38.977802, 29.978718>,  <34.495152, 38.683929, 29.960033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765873, 38.977802, 29.978718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411647, -0.430294, 0.803364,
		0.610317, -0.524489, -0.593654,
		0.676801, 0.734682, 0.046711,
		34.968914, 39.198208, 29.992731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049038, 38.369328, 30.358225>,  <34.495152, 38.683929, 29.960033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049038, 38.369328, 30.358225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112465, 38.764149, 30.348623>,  <35.150520, 39.001041, 30.342863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112465, 38.764149, 30.348623>,  <35.049038, 38.369328, 30.358225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112465, 38.764149, 30.348623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428838, -0.046952, 0.902160,
		0.889356, -0.153346, -0.430733,
		0.158567, 0.987056, -0.024004,
		35.160034, 39.060265, 30.341421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838284, 38.468403, 30.409327>,  <35.049038, 38.369328, 30.358225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838284, 38.468403, 30.409327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634949, 38.783844, 30.547716>,  <35.512947, 38.973106, 30.630751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634949, 38.783844, 30.547716>,  <35.838284, 38.468403, 30.409327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634949, 38.783844, 30.547716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311780, -0.205962, 0.927563,
		0.802734, 0.579386, -0.141171,
		-0.508341, 0.788601, 0.345974,
		35.482445, 39.020424, 30.651508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266258, 38.649757, 30.897236>,  <35.838284, 38.468403, 30.409327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266258, 38.649757, 30.897236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925259, 38.838104, 30.988043>,  <35.720661, 38.951111, 31.042526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925259, 38.838104, 30.988043>,  <36.266258, 38.649757, 30.897236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925259, 38.838104, 30.988043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172896, -0.155860, 0.972530,
		0.493313, 0.868328, 0.051459,
		-0.852496, 0.470864, 0.227018,
		35.669510, 38.979362, 31.056149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510967, 39.059177, 31.446901>,  <36.266258, 38.649757, 30.897236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510967, 39.059177, 31.446901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114189, 39.097710, 31.479797>,  <35.876122, 39.120831, 31.499535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114189, 39.097710, 31.479797>,  <36.510967, 39.059177, 31.446901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114189, 39.097710, 31.479797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094864, 0.134800, 0.986321,
		0.083926, 0.986179, -0.142853,
		-0.991946, 0.096330, 0.082240,
		35.816605, 39.126610, 31.504469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352821, 39.728645, 31.768797>,  <36.510967, 39.059177, 31.446901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352821, 39.728645, 31.768797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044823, 39.482883, 31.837637>,  <35.860023, 39.335426, 31.878941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044823, 39.482883, 31.837637>,  <36.352821, 39.728645, 31.768797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044823, 39.482883, 31.837637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125792, 0.118257, 0.984983,
		-0.625528, 0.780080, -0.013770,
		-0.769994, -0.614402, 0.172101,
		35.813824, 39.298561, 31.889267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026691, 39.952095, 32.397923>,  <36.352821, 39.728645, 31.768797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026691, 39.952095, 32.397923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874371, 39.582237, 32.395878>,  <35.782978, 39.360325, 32.394653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874371, 39.582237, 32.395878>,  <36.026691, 39.952095, 32.397923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874371, 39.582237, 32.395878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179408, -0.079303, 0.980573,
		-0.907084, 0.372490, 0.196087,
		-0.380804, -0.924642, -0.005107,
		35.760128, 39.304844, 32.394344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891636, 39.819607, 33.102783>,  <36.026691, 39.952095, 32.397923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891636, 39.819607, 33.102783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872883, 39.462002, 32.924549>,  <35.861633, 39.247440, 32.817608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872883, 39.462002, 32.924549>,  <35.891636, 39.819607, 33.102783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872883, 39.462002, 32.924549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244274, -0.442795, 0.862707,
		-0.968572, -0.068401, 0.239142,
		-0.046881, -0.894010, -0.445588,
		35.858818, 39.193798, 32.790874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600609, 39.360447, 33.594925>,  <35.891636, 39.819607, 33.102783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600609, 39.360447, 33.594925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804493, 39.129280, 33.339989>,  <35.926823, 38.990582, 33.187027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804493, 39.129280, 33.339989>,  <35.600609, 39.360447, 33.594925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804493, 39.129280, 33.339989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477784, -0.425923, 0.768317,
		-0.715481, -0.696135, 0.059019,
		0.509715, -0.577915, -0.637342,
		35.957409, 38.955906, 33.148785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507614, 38.717484, 33.856052>,  <35.600609, 39.360447, 33.594925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507614, 38.717484, 33.856052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853462, 38.711243, 33.655182>,  <36.060970, 38.707497, 33.534660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853462, 38.711243, 33.655182>,  <35.507614, 38.717484, 33.856052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853462, 38.711243, 33.655182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413559, -0.545474, 0.728990,
		-0.285299, -0.837982, -0.465177,
		0.864623, -0.015602, -0.502178,
		36.112850, 38.706562, 33.504528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785950, 38.060822, 33.904900>,  <35.507614, 38.717484, 33.856052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785950, 38.060822, 33.904900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116112, 38.260155, 33.798790>,  <36.314209, 38.379757, 33.735123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116112, 38.260155, 33.798790>,  <35.785950, 38.060822, 33.904900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116112, 38.260155, 33.798790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492177, -0.405033, 0.770526,
		0.276536, -0.766556, -0.579585,
		0.825403, 0.498337, -0.265275,
		36.363731, 38.409657, 33.719208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269569, 37.557198, 33.724628>,  <35.785950, 38.060822, 33.904900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269569, 37.557198, 33.724628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501347, 37.862026, 33.840210>,  <36.640411, 38.044926, 33.909557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501347, 37.862026, 33.840210>,  <36.269569, 37.557198, 33.724628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501347, 37.862026, 33.840210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424297, -0.584765, 0.691392,
		0.695862, -0.278016, -0.662181,
		0.579438, 0.762074, 0.288954,
		36.675179, 38.090649, 33.926895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948051, 37.218758, 33.855743>,  <36.269569, 37.557198, 33.724628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948051, 37.218758, 33.855743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978363, 37.594543, 33.989410>,  <36.996548, 37.820015, 34.069611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978363, 37.594543, 33.989410>,  <36.948051, 37.218758, 33.855743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978363, 37.594543, 33.989410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604894, -0.309734, 0.733600,
		0.792692, 0.146548, -0.591745,
		0.075776, 0.939462, 0.334170,
		37.001095, 37.876381, 34.089661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693764, 37.148689, 33.988140>,  <36.948051, 37.218758, 33.855743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693764, 37.148689, 33.988140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596817, 37.484818, 34.182095>,  <37.538651, 37.686497, 34.298466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596817, 37.484818, 34.182095>,  <37.693764, 37.148689, 33.988140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596817, 37.484818, 34.182095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650617, -0.229968, 0.723749,
		0.719692, 0.490887, -0.490993,
		-0.242366, 0.840324, 0.484885,
		37.524109, 37.736916, 34.327560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267475, 37.571754, 34.202465>,  <37.693764, 37.148689, 33.988140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267475, 37.571754, 34.202465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989403, 37.670498, 34.472511>,  <37.822559, 37.729744, 34.634541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989403, 37.670498, 34.472511>,  <38.267475, 37.571754, 34.202465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989403, 37.670498, 34.472511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589444, -0.341789, 0.731940,
		0.411434, 0.906775, 0.092095,
		-0.695182, 0.246860, 0.675117,
		37.780849, 37.744556, 34.675045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712093, 37.972534, 34.784340>,  <38.267475, 37.571754, 34.202465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712093, 37.972534, 34.784340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369953, 37.829079, 34.933876>,  <38.164669, 37.743004, 35.023598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369953, 37.829079, 34.933876>,  <38.712093, 37.972534, 34.784340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369953, 37.829079, 34.933876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484777, -0.299639, 0.821710,
		-0.182678, 0.884079, 0.430155,
		-0.855348, -0.358638, 0.373843,
		38.113350, 37.721489, 35.046028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586597, 38.283981, 35.385906>,  <38.712093, 37.972534, 34.784340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586597, 38.283981, 35.385906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352913, 37.963200, 35.435810>,  <38.212704, 37.770729, 35.465752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352913, 37.963200, 35.435810>,  <38.586597, 38.283981, 35.385906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352913, 37.963200, 35.435810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452230, -0.194009, 0.870545,
		-0.673936, 0.564999, 0.476011,
		-0.584207, -0.801958, 0.124760,
		38.177650, 37.722610, 35.473240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391693, 38.328693, 36.072155>,  <38.586597, 38.283981, 35.385906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391693, 38.328693, 36.072155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311172, 37.949875, 35.972095>,  <38.262859, 37.722584, 35.912060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311172, 37.949875, 35.972095>,  <38.391693, 38.328693, 36.072155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311172, 37.949875, 35.972095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206869, -0.290718, 0.934178,
		-0.957436, 0.136301, 0.254437,
		-0.201299, -0.947051, -0.250148,
		38.250782, 37.665760, 35.897053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865528, 38.011284, 36.529083>,  <38.391693, 38.328693, 36.072155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865528, 38.011284, 36.529083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084393, 37.723812, 36.357449>,  <38.215710, 37.551331, 36.254467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084393, 37.723812, 36.357449>,  <37.865528, 38.011284, 36.529083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084393, 37.723812, 36.357449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189148, -0.393212, 0.899782,
		-0.815379, -0.573483, -0.079212,
		0.547157, -0.718680, -0.429090,
		38.248539, 37.508209, 36.228722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613285, 37.379528, 36.781055>,  <37.865528, 38.011284, 36.529083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613285, 37.379528, 36.781055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992325, 37.326443, 36.664825>,  <38.219749, 37.294590, 36.595089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992325, 37.326443, 36.664825>,  <37.613285, 37.379528, 36.781055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992325, 37.326443, 36.664825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253231, -0.242418, 0.936540,
		-0.194728, -0.961052, -0.196111,
		0.947605, -0.132709, -0.290574,
		38.276608, 37.286629, 36.577652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796455, 36.792332, 37.116070>,  <37.613285, 37.379528, 36.781055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796455, 36.792332, 37.116070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135120, 36.988640, 37.033787>,  <38.338318, 37.106422, 36.984417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135120, 36.988640, 37.033787>,  <37.796455, 36.792332, 37.116070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135120, 36.988640, 37.033787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368152, -0.261103, 0.892350,
		0.384226, -0.831248, -0.401743,
		0.846660, 0.490767, -0.205703,
		38.389118, 37.135868, 36.972076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461029, 36.392780, 37.062099>,  <37.796455, 36.792332, 37.116070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461029, 36.392780, 37.062099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497658, 36.762268, 37.210888>,  <38.519634, 36.983959, 37.300163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497658, 36.762268, 37.210888>,  <38.461029, 36.392780, 37.062099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497658, 36.762268, 37.210888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402522, -0.376002, 0.834625,
		0.910819, 0.073298, -0.406247,
		0.091573, 0.923715, 0.371974,
		38.525131, 37.039383, 37.322479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588440, 36.088127, 37.630798>,  <38.461029, 36.392780, 37.062099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588440, 36.088127, 37.630798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725830, 36.463203, 37.651825>,  <38.808266, 36.688248, 37.664440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725830, 36.463203, 37.651825>,  <38.588440, 36.088127, 37.630798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725830, 36.463203, 37.651825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423703, -0.204670, 0.882375,
		0.838153, -0.280800, -0.467601,
		0.343474, 0.937690, 0.052569,
		38.828873, 36.744511, 37.667595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309402, 36.061310, 37.887531>,  <38.588440, 36.088127, 37.630798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309402, 36.061310, 37.887531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189159, 36.433208, 37.972580>,  <39.117012, 36.656345, 38.023609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189159, 36.433208, 37.972580>,  <39.309402, 36.061310, 37.887531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189159, 36.433208, 37.972580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419226, -0.071432, 0.905067,
		0.856670, 0.361209, -0.368300,
		-0.300610, 0.929745, 0.212622,
		39.098976, 36.712132, 38.036366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904415, 36.360573, 38.250313>,  <39.309402, 36.061310, 37.887531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904415, 36.360573, 38.250313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579597, 36.564953, 38.363113>,  <39.384708, 36.687580, 38.430794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579597, 36.564953, 38.363113>,  <39.904415, 36.360573, 38.250313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579597, 36.564953, 38.363113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217407, -0.183584, 0.958661,
		0.541596, 0.839780, 0.037995,
		-0.812040, 0.510946, 0.282002,
		39.335987, 36.718235, 38.447716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101078, 36.680065, 38.885098>,  <39.904415, 36.360573, 38.250313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101078, 36.680065, 38.885098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701839, 36.679283, 38.860466>,  <39.462296, 36.678814, 38.845688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701839, 36.679283, 38.860466>,  <40.101078, 36.680065, 38.885098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701839, 36.679283, 38.860466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061225, -0.079482, 0.994954,
		-0.006843, 0.996834, 0.079211,
		-0.998101, -0.001959, -0.061575,
		39.402409, 36.678696, 38.841995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977039, 37.104393, 39.410347>,  <40.101078, 36.680065, 38.885098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977039, 37.104393, 39.410347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691872, 36.830406, 39.350258>,  <39.520771, 36.666016, 39.314205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691872, 36.830406, 39.350258>,  <39.977039, 37.104393, 39.410347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691872, 36.830406, 39.350258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103939, -0.108643, 0.988632,
		-0.693497, 0.720433, 0.006259,
		-0.712923, -0.684962, -0.150224,
		39.477993, 36.624916, 39.305191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326729, 37.386810, 39.821980>,  <39.977039, 37.104393, 39.410347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326729, 37.386810, 39.821980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333225, 36.993530, 39.749256>,  <39.337124, 36.757561, 39.705624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333225, 36.993530, 39.749256>,  <39.326729, 37.386810, 39.821980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333225, 36.993530, 39.749256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286962, -0.178762, 0.941115,
		-0.957804, 0.036887, -0.285045,
		0.016240, -0.983201, -0.181804,
		39.338097, 36.698570, 39.694714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941761, 37.352840, 40.304321>,  <39.326729, 37.386810, 39.821980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941761, 37.352840, 40.304321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035069, 36.981754, 40.187744>,  <39.091053, 36.759102, 40.117798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035069, 36.981754, 40.187744>,  <38.941761, 37.352840, 40.304321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035069, 36.981754, 40.187744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172417, -0.334419, 0.926518,
		-0.957005, -0.165879, -0.237963,
		0.233269, -0.927711, -0.291441,
		39.105049, 36.703442, 40.100311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380142, 36.877750, 40.553791>,  <38.941761, 37.352840, 40.304321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380142, 36.877750, 40.553791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713383, 36.661377, 40.507610>,  <38.913326, 36.531555, 40.479900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713383, 36.661377, 40.507610>,  <38.380142, 36.877750, 40.553791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713383, 36.661377, 40.507610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166684, -0.444559, 0.880104,
		-0.527404, -0.713973, -0.460529,
		0.833103, -0.540933, -0.115454,
		38.963314, 36.499096, 40.472973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222805, 36.188534, 40.544144>,  <38.380142, 36.877750, 40.553791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222805, 36.188534, 40.544144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616360, 36.182381, 40.615395>,  <38.852493, 36.178688, 40.658146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616360, 36.182381, 40.615395>,  <38.222805, 36.188534, 40.544144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616360, 36.182381, 40.615395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148418, -0.625803, 0.765730,
		0.099695, -0.779829, -0.618003,
		0.983887, -0.015383, 0.178131,
		38.911526, 36.177765, 40.668835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342896, 35.550121, 40.924610>,  <38.222805, 36.188534, 40.544144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342896, 35.550121, 40.924610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671680, 35.763973, 41.003151>,  <38.868950, 35.892284, 41.050274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671680, 35.763973, 41.003151>,  <38.342896, 35.550121, 40.924610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671680, 35.763973, 41.003151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141307, -0.525398, 0.839041,
		0.551737, -0.661912, -0.507403,
		0.821960, 0.534630, 0.196349,
		38.918270, 35.924362, 41.062057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870735, 35.036312, 41.162292>,  <38.342896, 35.550121, 40.924610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870735, 35.036312, 41.162292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972618, 35.392124, 41.314007>,  <39.033749, 35.605610, 41.405037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972618, 35.392124, 41.314007>,  <38.870735, 35.036312, 41.162292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972618, 35.392124, 41.314007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048936, -0.379865, 0.923747,
		0.965779, -0.253847, -0.053225,
		0.254708, 0.889531, 0.379288,
		39.049030, 35.658985, 41.427792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380543, 34.892597, 41.703682>,  <38.870735, 35.036312, 41.162292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380543, 34.892597, 41.703682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267250, 35.268814, 41.778683>,  <39.199272, 35.494545, 41.823685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267250, 35.268814, 41.778683>,  <39.380543, 34.892597, 41.703682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267250, 35.268814, 41.778683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122556, -0.158411, 0.979738,
		0.951187, 0.300476, -0.070401,
		-0.283236, 0.940542, 0.187504,
		39.182278, 35.550976, 41.834934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899036, 35.078331, 42.180492>,  <39.380543, 34.892597, 41.703682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899036, 35.078331, 42.180492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580658, 35.309986, 42.250999>,  <39.389629, 35.448978, 42.293304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580658, 35.309986, 42.250999>,  <39.899036, 35.078331, 42.180492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580658, 35.309986, 42.250999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099581, -0.161947, 0.981762,
		0.597117, 0.798986, 0.071230,
		-0.795949, 0.579133, 0.176265,
		39.341873, 35.483727, 42.303879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157017, 35.506798, 42.612125>,  <39.899036, 35.078331, 42.180492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157017, 35.506798, 42.612125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760769, 35.551964, 42.642910>,  <39.523022, 35.579063, 42.661381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760769, 35.551964, 42.642910>,  <40.157017, 35.506798, 42.612125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760769, 35.551964, 42.642910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059317, -0.152080, 0.986587,
		0.123106, 0.981897, 0.143955,
		-0.990619, 0.112915, 0.076965,
		39.463585, 35.585838, 42.666000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925903, 36.094452, 43.070488>,  <40.157017, 35.506798, 42.612125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925903, 36.094452, 43.070488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624359, 35.831993, 43.056870>,  <39.443432, 35.674519, 43.048698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624359, 35.831993, 43.056870>,  <39.925903, 36.094452, 43.070488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624359, 35.831993, 43.056870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043382, -0.101421, 0.993897,
		-0.655595, 0.747787, 0.104922,
		-0.753865, -0.656146, -0.034051,
		39.398201, 35.635151, 43.046654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449711, 36.249981, 43.565102>,  <39.925903, 36.094452, 43.070488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449711, 36.249981, 43.565102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431862, 35.857395, 43.490543>,  <39.421154, 35.621845, 43.445808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431862, 35.857395, 43.490543>,  <39.449711, 36.249981, 43.565102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431862, 35.857395, 43.490543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096726, -0.189947, 0.977018,
		-0.994310, 0.025565, 0.103408,
		-0.044619, -0.981461, -0.186394,
		39.418476, 35.562958, 43.434624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038464, 35.958481, 44.051067>,  <39.449711, 36.249981, 43.565102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038464, 35.958481, 44.051067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238491, 35.646282, 43.900997>,  <39.358505, 35.458961, 43.810955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238491, 35.646282, 43.900997>,  <39.038464, 35.958481, 44.051067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238491, 35.646282, 43.900997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266741, -0.273351, 0.924191,
		-0.823884, -0.562231, 0.071498,
		0.500065, -0.780497, -0.375180,
		39.388512, 35.412132, 43.788445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486126, 35.484341, 44.281670>,  <39.038464, 35.958481, 44.051067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486126, 35.484341, 44.281670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341503, 35.133530, 44.155121>,  <38.254730, 34.923042, 44.079189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341503, 35.133530, 44.155121>,  <38.486126, 35.484341, 44.281670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341503, 35.133530, 44.155121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932350, 0.339950, 0.123116,
		-0.000425, 0.339486, -0.940611,
		-0.361557, -0.877031, -0.316376,
		38.233036, 34.870419, 44.060207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088924, 35.573708, 43.738922>,  <38.486126, 35.484341, 44.281670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088924, 35.573708, 43.738922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951317, 35.251045, 43.931156>,  <37.868752, 35.057449, 44.046497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951317, 35.251045, 43.931156>,  <38.088924, 35.573708, 43.738922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951317, 35.251045, 43.931156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909128, 0.414148, 0.044360,
		-0.234814, -0.421649, -0.875828,
		-0.344018, -0.806656, 0.480581,
		37.848110, 35.009048, 44.075329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419765, 35.144238, 43.464680>,  <38.088924, 35.573708, 43.738922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419765, 35.144238, 43.464680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426334, 35.096066, 43.861713>,  <37.430275, 35.067162, 44.099934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426334, 35.096066, 43.861713>,  <37.419765, 35.144238, 43.464680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426334, 35.096066, 43.861713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949099, 0.310425, 0.053365,
		-0.314550, -0.942939, -0.109200,
		0.016421, -0.120428, 0.992586,
		37.431259, 35.059937, 44.159489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677094, 34.436604, 43.398766>,  <37.419765, 35.144238, 43.464680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677094, 34.436604, 43.398766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564610, 34.073750, 43.273533>,  <37.497120, 33.856037, 43.198391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564610, 34.073750, 43.273533>,  <37.677094, 34.436604, 43.398766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564610, 34.073750, 43.273533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625616, 0.074092, -0.776605,
		0.727684, -0.414262, 0.546683,
		-0.281213, -0.907137, -0.313084,
		37.480244, 33.801609, 43.179607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206177, 34.127373, 43.115639>,  <37.677094, 34.436604, 43.398766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206177, 34.127373, 43.115639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902306, 33.925182, 42.951988>,  <37.719982, 33.803867, 42.853798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902306, 33.925182, 42.951988>,  <38.206177, 34.127373, 43.115639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902306, 33.925182, 42.951988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361704, 0.194397, -0.911800,
		0.540428, -0.840656, 0.035155,
		-0.759676, -0.505478, -0.409126,
		37.674404, 33.773540, 42.829250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348537, 34.937679, 43.093052>,  <38.206177, 34.127373, 43.115639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348537, 34.937679, 43.093052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682606, 35.157578, 43.086544>,  <38.883045, 35.289516, 43.082638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682606, 35.157578, 43.086544>,  <38.348537, 34.937679, 43.093052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682606, 35.157578, 43.086544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260951, 0.370042, -0.891613,
		-0.484142, 0.748896, 0.452506,
		0.835172, 0.549749, -0.016272,
		38.933159, 35.322502, 43.081661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180538, 35.605595, 42.782761>,  <38.348537, 34.937679, 43.093052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180538, 35.605595, 42.782761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576561, 35.574749, 42.735703>,  <38.814175, 35.556240, 42.707466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576561, 35.574749, 42.735703>,  <38.180538, 35.605595, 42.782761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576561, 35.574749, 42.735703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078106, 0.394217, -0.915692,
		0.116991, 0.915776, 0.384274,
		0.990057, -0.077114, -0.117647,
		38.873577, 35.551617, 42.700409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356960, 36.282772, 42.511921>,  <38.180538, 35.605595, 42.782761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356960, 36.282772, 42.511921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662468, 36.037228, 42.432083>,  <38.845772, 35.889900, 42.384182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662468, 36.037228, 42.432083>,  <38.356960, 36.282772, 42.511921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662468, 36.037228, 42.432083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116300, 0.435012, -0.892882,
		0.634930, 0.658741, 0.403639,
		0.763766, -0.613861, -0.199591,
		38.891598, 35.853069, 42.372204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893131, 36.722435, 42.290142>,  <38.356960, 36.282772, 42.511921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893131, 36.722435, 42.290142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974354, 36.359081, 42.143932>,  <39.023087, 36.141071, 42.056206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974354, 36.359081, 42.143932>,  <38.893131, 36.722435, 42.290142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974354, 36.359081, 42.143932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264886, 0.410344, -0.872613,
		0.942657, 0.080371, 0.323943,
		0.203060, -0.908382, -0.365524,
		39.035271, 36.086567, 42.034275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412243, 36.852589, 41.862774>,  <38.893131, 36.722435, 42.290142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412243, 36.852589, 41.862774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326374, 36.480015, 41.745235>,  <39.274853, 36.256470, 41.674713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326374, 36.480015, 41.745235>,  <39.412243, 36.852589, 41.862774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326374, 36.480015, 41.745235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194583, 0.254042, -0.947418,
		0.957106, -0.260563, 0.126705,
		-0.214674, -0.931434, -0.293846,
		39.261971, 36.200584, 41.657082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892582, 36.765209, 41.289471>,  <39.412243, 36.852589, 41.862774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892582, 36.765209, 41.289471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591518, 36.508205, 41.231941>,  <39.410881, 36.354004, 41.197426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591518, 36.508205, 41.231941>,  <39.892582, 36.765209, 41.289471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591518, 36.508205, 41.231941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059972, 0.150624, -0.986770,
		0.655675, -0.751326, -0.074836,
		-0.752658, -0.642512, -0.143819,
		39.365723, 36.315453, 41.188797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603310, 36.571148, 41.045864>,  <39.892582, 36.765209, 41.289471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603310, 36.571148, 41.045864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859867, 36.854046, 41.164803>,  <41.013802, 37.023785, 41.236168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859867, 36.854046, 41.164803>,  <40.603310, 36.571148, 41.045864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859867, 36.854046, 41.164803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644872, -0.706947, 0.290459,
		0.415635, 0.005452, -0.909515,
		0.641395, 0.707246, 0.297348,
		41.052284, 37.066219, 41.254005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136696, 36.116100, 40.754257>,  <40.603310, 36.571148, 41.045864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136696, 36.116100, 40.754257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738106, 36.091450, 40.731472>,  <39.498951, 36.076660, 40.717800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738106, 36.091450, 40.731472>,  <40.136696, 36.116100, 40.754257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738106, 36.091450, 40.731472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038969, 0.261393, -0.964445,
		0.074322, -0.963264, -0.258070,
		-0.996473, -0.061622, -0.056965,
		39.439163, 36.072964, 40.714382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023701, 35.837902, 40.053291>,  <40.136696, 36.116100, 40.754257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023701, 35.837902, 40.053291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661747, 35.935543, 40.192772>,  <39.444572, 35.994129, 40.276459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661747, 35.935543, 40.192772>,  <40.023701, 35.837902, 40.053291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661747, 35.935543, 40.192772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312860, 0.174044, -0.933717,
		-0.288612, -0.954003, -0.081120,
		-0.904887, 0.244103, 0.348701,
		39.390282, 36.008774, 40.297382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544121, 35.496483, 39.599396>,  <40.023701, 35.837902, 40.053291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544121, 35.496483, 39.599396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362377, 35.821449, 39.745567>,  <39.253330, 36.016430, 39.833271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362377, 35.821449, 39.745567>,  <39.544121, 35.496483, 39.599396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362377, 35.821449, 39.745567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251473, 0.276558, -0.927511,
		-0.854588, -0.513317, 0.078645,
		-0.454357, 0.812417, 0.365428,
		39.226070, 36.065174, 39.855194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803688, 35.569988, 39.471771>,  <39.544121, 35.496483, 39.599396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803688, 35.569988, 39.471771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917694, 35.945190, 39.550682>,  <38.986099, 36.170311, 39.598030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917694, 35.945190, 39.550682>,  <38.803688, 35.569988, 39.471771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917694, 35.945190, 39.550682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320917, 0.287315, -0.902476,
		-0.903205, 0.193910, 0.382910,
		0.285015, 0.938003, 0.197276,
		39.003197, 36.226593, 39.609863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316891, 35.949398, 39.048130>,  <38.803688, 35.569988, 39.471771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316891, 35.949398, 39.048130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589867, 36.228943, 39.133789>,  <38.753654, 36.396671, 39.185184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589867, 36.228943, 39.133789>,  <38.316891, 35.949398, 39.048130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589867, 36.228943, 39.133789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045892, 0.251433, -0.966786,
		-0.729495, 0.669606, 0.139516,
		0.682444, 0.698863, 0.214149,
		38.794601, 36.438602, 39.198032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082912, 36.628979, 38.835888>,  <38.316891, 35.949398, 39.048130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082912, 36.628979, 38.835888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481087, 36.661949, 38.816628>,  <38.719990, 36.681732, 38.805073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481087, 36.661949, 38.816628>,  <38.082912, 36.628979, 38.835888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481087, 36.661949, 38.816628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076347, 0.384662, -0.919895,
		-0.057298, 0.919370, 0.389198,
		0.995434, 0.082422, -0.048151,
		38.779716, 36.686676, 38.802181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237457, 37.330097, 38.625351>,  <38.082912, 36.628979, 38.835888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237457, 37.330097, 38.625351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583603, 37.136974, 38.571640>,  <38.791290, 37.021099, 38.539413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583603, 37.136974, 38.571640>,  <38.237457, 37.330097, 38.625351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583603, 37.136974, 38.571640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145657, 0.498702, -0.854447,
		0.479501, 0.719854, 0.501886,
		0.865369, -0.482812, -0.134276,
		38.843212, 36.992130, 38.531357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781788, 37.876961, 38.349758>,  <38.237457, 37.330097, 38.625351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781788, 37.876961, 38.349758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918278, 37.518269, 38.237011>,  <39.000172, 37.303055, 38.169365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918278, 37.518269, 38.237011>,  <38.781788, 37.876961, 38.349758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918278, 37.518269, 38.237011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031056, 0.288944, -0.956842,
		0.939469, 0.335252, 0.070746,
		0.341225, -0.896726, -0.281865,
		39.020645, 37.249252, 38.152451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168541, 38.027966, 37.837418>,  <38.781788, 37.876961, 38.349758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168541, 38.027966, 37.837418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046017, 37.651112, 37.782925>,  <38.972504, 37.424999, 37.750229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046017, 37.651112, 37.782925>,  <39.168541, 38.027966, 37.837418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046017, 37.651112, 37.782925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029566, 0.133625, -0.990591,
		0.951473, -0.307455, -0.013076,
		-0.306310, -0.942134, -0.136231,
		38.954124, 37.368473, 37.742054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475235, 37.869324, 37.210186>,  <39.168541, 38.027966, 37.837418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475235, 37.869324, 37.210186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172874, 37.613148, 37.264534>,  <38.991459, 37.459442, 37.297142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172874, 37.613148, 37.264534>,  <39.475235, 37.869324, 37.210186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172874, 37.613148, 37.264534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227616, 0.062492, -0.971744,
		0.613849, -0.765465, -0.193011,
		-0.755897, -0.640436, 0.135871,
		38.946106, 37.421017, 37.305294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538605, 37.649174, 36.632641>,  <39.475235, 37.869324, 37.210186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538605, 37.649174, 36.632641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198444, 37.459221, 36.723244>,  <38.994347, 37.345249, 36.777607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198444, 37.459221, 36.723244>,  <39.538605, 37.649174, 36.632641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198444, 37.459221, 36.723244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268366, 0.021215, -0.963083,
		0.452546, -0.879794, -0.145484,
		-0.850401, -0.474882, 0.226506,
		38.943325, 37.316757, 36.791195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454468, 37.091866, 36.074230>,  <39.538605, 37.649174, 36.632641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454468, 37.091866, 36.074230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095219, 37.150730, 36.239990>,  <38.879669, 37.186047, 36.339447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095219, 37.150730, 36.239990>,  <39.454468, 37.091866, 36.074230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095219, 37.150730, 36.239990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407716, 0.074452, -0.910068,
		-0.164778, -0.986307, -0.006867,
		-0.898118, 0.147160, 0.414401,
		38.825783, 37.194878, 36.364311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918522, 36.550247, 35.778545>,  <39.454468, 37.091866, 36.074230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918522, 36.550247, 35.778545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720200, 36.863197, 35.929310>,  <38.601204, 37.050968, 36.019768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720200, 36.863197, 35.929310>,  <38.918522, 36.550247, 35.778545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720200, 36.863197, 35.929310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418212, 0.165263, -0.893189,
		-0.761099, -0.600480, 0.245260,
		-0.495810, 0.782376, 0.376909,
		38.571457, 37.097912, 36.042381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354263, 35.943405, 35.820465>,  <38.918522, 36.550247, 35.778545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354263, 35.943405, 35.820465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340885, 35.557705, 35.715313>,  <39.332859, 35.326286, 35.652222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340885, 35.557705, 35.715313>,  <39.354263, 35.943405, 35.820465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340885, 35.557705, 35.715313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958318, -0.105609, 0.265469,
		-0.283741, -0.243040, 0.927590,
		-0.033442, -0.964250, -0.262875,
		39.330853, 35.268429, 35.636452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666817, 35.457382, 36.388954>,  <39.354263, 35.943405, 35.820465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666817, 35.457382, 36.388954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702816, 35.368847, 36.000538>,  <39.724415, 35.315727, 35.767490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702816, 35.368847, 36.000538>,  <39.666817, 35.457382, 36.388954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702816, 35.368847, 36.000538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993716, -0.045185, 0.102402,
		-0.066542, -0.974151, 0.215877,
		0.090001, -0.221334, -0.971036,
		39.729816, 35.302448, 35.709229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966724, 34.784477, 36.359089>,  <39.666817, 35.457382, 36.388954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966724, 34.784477, 36.359089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049961, 35.030117, 36.054569>,  <40.099903, 35.177502, 35.871857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049961, 35.030117, 36.054569>,  <39.966724, 34.784477, 36.359089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049961, 35.030117, 36.054569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976476, -0.175396, 0.125422,
		-0.056507, -0.769489, -0.636156,
		0.208090, 0.614104, -0.761298,
		40.112389, 35.214348, 35.826180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344578, 34.404034, 35.811115>,  <39.966724, 34.784477, 36.359089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344578, 34.404034, 35.811115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418850, 34.796448, 35.788887>,  <40.463413, 35.031898, 35.775551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418850, 34.796448, 35.788887>,  <40.344578, 34.404034, 35.811115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418850, 34.796448, 35.788887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982462, -0.186340, -0.006846,
		-0.017072, -0.053325, -0.998431,
		0.185682, 0.981037, -0.055571,
		40.474556, 35.090759, 35.772217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868401, 34.393547, 35.286625>,  <40.344578, 34.404034, 35.811115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868401, 34.393547, 35.286625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873253, 34.723152, 35.513203>,  <40.876163, 34.920914, 35.649151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873253, 34.723152, 35.513203>,  <40.868401, 34.393547, 35.286625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873253, 34.723152, 35.513203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953423, 0.161218, -0.254937,
		-0.301392, 0.543155, -0.783675,
		0.012128, 0.824009, 0.566446,
		40.876892, 34.970356, 35.683136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446068, 34.587521, 35.114834>,  <40.868401, 34.393547, 35.286625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446068, 34.587521, 35.114834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360115, 34.897068, 35.353146>,  <41.308544, 35.082798, 35.496132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360115, 34.897068, 35.353146>,  <41.446068, 34.587521, 35.114834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360115, 34.897068, 35.353146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960760, 0.277060, -0.013360,
		-0.175404, 0.569526, -0.803040,
		-0.214881, 0.773872, 0.595775,
		41.295650, 35.129230, 35.531879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512135, 35.200775, 34.912434>,  <41.446068, 34.587521, 35.114834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512135, 35.200775, 34.912434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580791, 35.260563, 35.301937>,  <41.621986, 35.296436, 35.535637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580791, 35.260563, 35.301937>,  <41.512135, 35.200775, 34.912434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580791, 35.260563, 35.301937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907309, 0.361125, -0.215358,
		-0.383837, 0.920461, -0.073632,
		0.171639, 0.149470, 0.973755,
		41.632282, 35.305405, 35.594063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803875, 35.809544, 34.993649>,  <41.512135, 35.200775, 34.912434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803875, 35.809544, 34.993649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927853, 35.609749, 35.317242>,  <42.002239, 35.489872, 35.511398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927853, 35.609749, 35.317242>,  <41.803875, 35.809544, 34.993649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927853, 35.609749, 35.317242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931106, 0.331560, -0.152021,
		-0.192293, 0.800364, 0.567839,
		0.309945, -0.499485, 0.808980,
		42.020836, 35.459904, 35.559937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145489, 36.300865, 35.406788>,  <41.803875, 35.809544, 34.993649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145489, 36.300865, 35.406788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290630, 35.929714, 35.441174>,  <42.377716, 35.707024, 35.461807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290630, 35.929714, 35.441174>,  <42.145489, 36.300865, 35.406788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290630, 35.929714, 35.441174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826986, 0.278129, -0.488609,
		0.429458, 0.248385, 0.868257,
		0.362850, -0.927874, 0.085966,
		42.399487, 35.651352, 35.466965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700790, 36.030373, 35.982624>,  <42.145489, 36.300865, 35.406788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700790, 36.030373, 35.982624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730583, 35.898350, 35.606216>,  <42.748459, 35.819134, 35.380371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730583, 35.898350, 35.606216>,  <42.700790, 36.030373, 35.982624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730583, 35.898350, 35.606216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894298, 0.439628, -0.083416,
		0.441230, -0.835337, 0.327915,
		0.074480, -0.330059, -0.941017,
		42.752926, 35.799332, 35.323910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429268, 35.640411, 35.818462>,  <42.700790, 36.030373, 35.982624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429268, 35.640411, 35.818462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231724, 35.821796, 35.521687>,  <43.113197, 35.930626, 35.343620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231724, 35.821796, 35.521687>,  <43.429268, 35.640411, 35.818462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231724, 35.821796, 35.521687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792482, 0.585894, -0.169412,
		0.357877, -0.671640, -0.648709,
		-0.493859, 0.453462, -0.741940,
		43.083565, 35.957836, 35.299103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098904, 35.732597, 35.598888>,  <43.429268, 35.640411, 35.818462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098904, 35.732597, 35.598888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122635, 35.419693, 35.846935>,  <44.136875, 35.231953, 35.995766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122635, 35.419693, 35.846935>,  <44.098904, 35.732597, 35.598888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122635, 35.419693, 35.846935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989822, -0.034399, -0.138093,
		0.129356, 0.622003, 0.772256,
		0.059329, -0.782259, 0.620122,
		44.140434, 35.185017, 36.032970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573116, 35.852829, 36.025108>,  <44.098904, 35.732597, 35.598888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573116, 35.852829, 36.025108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592628, 35.453651, 36.041718>,  <44.604336, 35.214146, 36.051682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592628, 35.453651, 36.041718>,  <44.573116, 35.852829, 36.025108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592628, 35.453651, 36.041718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994827, 0.044835, -0.091155,
		0.089106, 0.045755, 0.994971,
		0.048780, -0.997946, 0.041523,
		44.607262, 35.154266, 36.054176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330620, 35.681248, 36.163528>,  <44.573116, 35.852829, 36.025108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330620, 35.681248, 36.163528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147980, 35.344353, 36.048885>,  <45.038395, 35.142216, 35.980099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147980, 35.344353, 36.048885>,  <45.330620, 35.681248, 36.163528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147980, 35.344353, 36.048885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887132, -0.406700, -0.218154,
		0.067174, -0.353871, 0.932879,
		-0.456600, -0.842241, -0.286611,
		45.011002, 35.091679, 35.962902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577297, 35.119343, 36.590675>,  <45.330620, 35.681248, 36.163528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577297, 35.119343, 36.590675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472340, 35.078568, 36.206852>,  <45.409367, 35.054100, 35.976559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472340, 35.078568, 36.206852>,  <45.577297, 35.119343, 36.590675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472340, 35.078568, 36.206852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948572, -0.209738, -0.237109,
		-0.177085, -0.972429, 0.151732,
		-0.262395, -0.101940, -0.959560,
		45.393620, 35.047985, 35.918983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218102, 34.735554, 36.199455>,  <45.577297, 35.119343, 36.590675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218102, 34.735554, 36.199455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992382, 34.917133, 35.923630>,  <45.856949, 35.026081, 35.758137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992382, 34.917133, 35.923630>,  <46.218102, 34.735554, 36.199455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992382, 34.917133, 35.923630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691794, -0.195821, -0.695036,
		-0.450545, -0.869241, -0.203541,
		-0.564297, 0.453953, -0.689562,
		45.823093, 35.053318, 35.716763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.053402, 34.251495, 35.650482>,  <46.218102, 34.735554, 36.199455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.053402, 34.251495, 35.650482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140068, 34.640678, 35.618481>,  <46.192070, 34.874187, 35.599277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140068, 34.640678, 35.618481>,  <46.053402, 34.251495, 35.650482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.140068, 34.640678, 35.618481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731824, -0.216117, -0.646317,
		-0.646133, 0.081485, -0.758863,
		0.216669, 0.972961, -0.080008,
		46.205070, 34.932568, 35.594479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118179, 34.458347, 34.872299>,  <46.053402, 34.251495, 35.650482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118179, 34.458347, 34.872299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337360, 34.604561, 35.173267>,  <46.468868, 34.692291, 35.353848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337360, 34.604561, 35.173267>,  <46.118179, 34.458347, 34.872299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.337360, 34.604561, 35.173267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822120, -0.069203, -0.565093,
		-0.154493, 0.928221, -0.338435,
		0.547952, 0.365537, 0.752417,
		46.501747, 34.714222, 35.398991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470398, 35.076748, 34.622532>,  <46.118179, 34.458347, 34.872299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470398, 35.076748, 34.622532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682911, 34.915051, 34.920345>,  <46.810421, 34.818031, 35.099033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682911, 34.915051, 34.920345>,  <46.470398, 35.076748, 34.622532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.682911, 34.915051, 34.920345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818044, 0.016238, -0.574927,
		0.220319, 0.914509, 0.339313,
		0.531286, -0.404240, 0.744530,
		46.842297, 34.793777, 35.143703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.083103, 35.407639, 34.675701>,  <46.470398, 35.076748, 34.622532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.083103, 35.407639, 34.675701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.141262, 35.045769, 34.835911>,  <47.176155, 34.828648, 34.932037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.141262, 35.045769, 34.835911>,  <47.083103, 35.407639, 34.675701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.141262, 35.045769, 34.835911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809357, -0.124079, -0.574060,
		0.569035, 0.407635, 0.714166,
		0.145394, -0.904676, 0.400527,
		47.184879, 34.774364, 34.956070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.778973, 35.390476, 34.946621>,  <47.083103, 35.407639, 34.675701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.778973, 35.390476, 34.946621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.672661, 35.010910, 34.878590>,  <47.608875, 34.783173, 34.837769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.672661, 35.010910, 34.878590>,  <47.778973, 35.390476, 34.946621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.672661, 35.010910, 34.878590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814897, -0.126872, -0.565549,
		0.515078, -0.288907, 0.806986,
		-0.265775, -0.948913, -0.170081,
		47.592930, 34.726234, 34.827564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.125641, 36.103725, 28.158384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.748919, 36.237782, 28.168854>,  <31.522886, 36.318214, 28.175135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.748919, 36.237782, 28.168854>,  <32.125641, 36.103725, 28.158384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748919, 36.237782, 28.168854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143844, 0.331406, 0.932458,
		0.303832, 0.881958, -0.360328,
		-0.941804, 0.335142, 0.026173,
		31.466377, 36.338326, 28.176706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171471, 36.816803, 28.408005>,  <32.125641, 36.103725, 28.158384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171471, 36.816803, 28.408005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.816807, 36.649414, 28.486717>,  <31.604010, 36.548981, 28.533945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.816807, 36.649414, 28.486717>,  <32.171471, 36.816803, 28.408005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816807, 36.649414, 28.486717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208539, 0.017975, 0.977849,
		-0.412738, 0.908053, 0.071330,
		-0.886656, -0.418471, 0.196783,
		31.550810, 36.523872, 28.545752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839849, 37.239426, 28.977802>,  <32.171471, 36.816803, 28.408005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839849, 37.239426, 28.977802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.658722, 36.882786, 28.976875>,  <31.550045, 36.668800, 28.976318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.658722, 36.882786, 28.976875>,  <31.839849, 37.239426, 28.977802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658722, 36.882786, 28.976875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074666, -0.040513, 0.996386,
		-0.888472, 0.451007, 0.084917,
		-0.452817, -0.891601, -0.002320,
		31.522877, 36.615307, 28.976179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621506, 37.220299, 29.651854>,  <31.839849, 37.239426, 28.977802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621506, 37.220299, 29.651854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.532585, 36.847038, 29.538847>,  <31.479233, 36.623081, 29.471043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.532585, 36.847038, 29.538847>,  <31.621506, 37.220299, 29.651854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532585, 36.847038, 29.538847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119253, -0.261568, 0.957789,
		-0.967657, 0.246608, -0.053134,
		-0.222301, -0.933149, -0.282517,
		31.465895, 36.567093, 29.454092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856518, 37.028896, 29.823351>,  <31.621506, 37.220299, 29.651854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856518, 37.028896, 29.823351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.093645, 36.708595, 29.789040>,  <31.235922, 36.516415, 29.768454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.093645, 36.708595, 29.789040>,  <30.856518, 37.028896, 29.823351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093645, 36.708595, 29.789040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121900, -0.194507, 0.973297,
		-0.796059, -0.566530, -0.212919,
		0.592816, -0.800757, -0.085779,
		31.271490, 36.468369, 29.763306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650042, 36.528831, 30.351404>,  <30.856518, 37.028896, 29.823351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650042, 36.528831, 30.351404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.015463, 36.414925, 30.235249>,  <31.234716, 36.346581, 30.165556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.015463, 36.414925, 30.235249>,  <30.650042, 36.528831, 30.351404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015463, 36.414925, 30.235249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227506, -0.234037, 0.945234,
		-0.337137, -0.929587, -0.149018,
		0.913553, -0.284771, -0.290390,
		31.289528, 36.329494, 30.148132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722906, 35.915596, 30.732006>,  <30.650042, 36.528831, 30.351404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722906, 35.915596, 30.732006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.091661, 36.024963, 30.622192>,  <31.312914, 36.090584, 30.556305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.091661, 36.024963, 30.622192>,  <30.722906, 35.915596, 30.732006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091661, 36.024963, 30.622192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336825, -0.215320, 0.916617,
		0.191506, -0.937486, -0.290595,
		0.921887, 0.273417, -0.274534,
		31.368227, 36.106987, 30.539833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112362, 35.404747, 31.073881>,  <30.722906, 35.915596, 30.732006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112362, 35.404747, 31.073881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.388981, 35.678585, 30.981720>,  <31.554953, 35.842888, 30.926424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.388981, 35.678585, 30.981720>,  <31.112362, 35.404747, 31.073881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388981, 35.678585, 30.981720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431810, -0.136112, 0.891635,
		0.579053, -0.716099, -0.389745,
		0.691548, 0.684600, -0.230403,
		31.596445, 35.883965, 30.912600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794050, 35.094646, 31.179386>,  <31.112362, 35.404747, 31.073881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794050, 35.094646, 31.179386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.839228, 35.490524, 31.214598>,  <31.866335, 35.728050, 31.235725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.839228, 35.490524, 31.214598>,  <31.794050, 35.094646, 31.179386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839228, 35.490524, 31.214598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606680, -0.138855, 0.782725,
		0.786882, -0.034998, -0.616111,
		0.112944, 0.989694, 0.088030,
		31.873112, 35.787434, 31.241007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464245, 35.270130, 31.245163>,  <31.794050, 35.094646, 31.179386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464245, 35.270130, 31.245163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.289326, 35.587059, 31.415335>,  <32.184376, 35.777218, 31.517439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.289326, 35.587059, 31.415335>,  <32.464245, 35.270130, 31.245163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289326, 35.587059, 31.415335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597735, -0.097377, 0.795758,
		0.671928, 0.602276, -0.431019,
		-0.437295, 0.792327, 0.425431,
		32.158138, 35.824757, 31.542965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002644, 35.688740, 31.362379>,  <32.464245, 35.270130, 31.245163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002644, 35.688740, 31.362379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.718651, 35.844345, 31.597187>,  <32.548256, 35.937710, 31.738071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.718651, 35.844345, 31.597187>,  <33.002644, 35.688740, 31.362379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718651, 35.844345, 31.597187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595073, -0.114342, 0.795496,
		0.376580, 0.914108, -0.150311,
		-0.709982, 0.389014, 0.587020,
		32.505657, 35.961048, 31.773293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311741, 36.213638, 31.787968>,  <33.002644, 35.688740, 31.362379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311741, 36.213638, 31.787968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.983055, 36.132858, 32.001137>,  <32.785843, 36.084389, 32.129040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.983055, 36.132858, 32.001137>,  <33.311741, 36.213638, 31.787968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983055, 36.132858, 32.001137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550620, -0.040132, 0.833791,
		-0.146999, 0.978573, 0.144176,
		-0.821711, -0.201953, 0.532922,
		32.736542, 36.072273, 32.161015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304195, 36.689304, 32.364143>,  <33.311741, 36.213638, 31.787968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304195, 36.689304, 32.364143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.095146, 36.362762, 32.462471>,  <32.969719, 36.166836, 32.521469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.095146, 36.362762, 32.462471>,  <33.304195, 36.689304, 32.364143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095146, 36.362762, 32.462471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533139, -0.087930, 0.841446,
		-0.665305, 0.570815, 0.481186,
		-0.522620, -0.816357, 0.245823,
		32.938358, 36.117855, 32.536217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347130, 36.734119, 33.095154>,  <33.304195, 36.689304, 32.364143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347130, 36.734119, 33.095154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.244331, 36.357597, 33.007607>,  <33.182652, 36.131683, 32.955078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.244331, 36.357597, 33.007607>,  <33.347130, 36.734119, 33.095154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244331, 36.357597, 33.007607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517875, -0.325353, 0.791170,
		-0.815940, 0.089983, 0.571092,
		-0.256999, -0.941301, -0.218869,
		33.167233, 36.075207, 32.941944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060040, 36.427814, 33.743702>,  <33.347130, 36.734119, 33.095154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060040, 36.427814, 33.743702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.141716, 36.113941, 33.509583>,  <33.190723, 35.925617, 33.369110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.141716, 36.113941, 33.509583>,  <33.060040, 36.427814, 33.743702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141716, 36.113941, 33.509583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521747, -0.418660, 0.743306,
		-0.828303, -0.457154, 0.323921,
		0.204193, -0.784687, -0.585296,
		33.202972, 35.878536, 33.333992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817516, 35.788174, 34.162788>,  <33.060040, 36.427814, 33.743702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817516, 35.788174, 34.162788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.097000, 35.681786, 33.897137>,  <33.264690, 35.617950, 33.737747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.097000, 35.681786, 33.897137>,  <32.817516, 35.788174, 34.162788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097000, 35.681786, 33.897137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516344, -0.455052, 0.725477,
		-0.495170, -0.849815, -0.180615,
		0.698710, -0.265975, -0.664125,
		33.306614, 35.601994, 33.697899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109638, 35.103886, 34.295803>,  <32.817516, 35.788174, 34.162788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109638, 35.103886, 34.295803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.399975, 35.241966, 34.057816>,  <33.574177, 35.324814, 33.915024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.399975, 35.241966, 34.057816>,  <33.109638, 35.103886, 34.295803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399975, 35.241966, 34.057816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687766, -0.378537, 0.619425,
		-0.011390, -0.858804, -0.512177,
		0.725843, 0.345202, -0.594968,
		33.617729, 35.345528, 33.879326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559921, 34.459389, 34.211357>,  <33.109638, 35.103886, 34.295803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559921, 34.459389, 34.211357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.768154, 34.780678, 34.095543>,  <33.893093, 34.973450, 34.026054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.768154, 34.780678, 34.095543>,  <33.559921, 34.459389, 34.211357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768154, 34.780678, 34.095543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775484, -0.302922, 0.553952,
		0.357236, -0.512912, -0.780579,
		0.520583, 0.803218, -0.289540,
		33.924328, 35.021645, 34.008682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241344, 34.189571, 33.975826>,  <33.559921, 34.459389, 34.211357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241344, 34.189571, 33.975826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273087, 34.573921, 34.081974>,  <34.292133, 34.804531, 34.145664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273087, 34.573921, 34.081974>,  <34.241344, 34.189571, 33.975826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273087, 34.573921, 34.081974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677360, -0.247289, 0.692843,
		0.731359, 0.124772, -0.670482,
		0.079355, 0.960875, 0.265373,
		34.296894, 34.862183, 34.161587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971752, 34.288830, 34.008972>,  <34.241344, 34.189571, 33.975826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971752, 34.288830, 34.008972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.824333, 34.593586, 34.222027>,  <34.735882, 34.776440, 34.349861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.824333, 34.593586, 34.222027>,  <34.971752, 34.288830, 34.008972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824333, 34.593586, 34.222027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811604, -0.015678, 0.583998,
		0.453291, 0.647520, -0.612572,
		-0.368546, 0.761887, 0.532637,
		34.713768, 34.822151, 34.381817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537548, 34.709751, 34.112797>,  <34.971752, 34.288830, 34.008972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537548, 34.709751, 34.112797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.289021, 34.862095, 34.386703>,  <35.139904, 34.953499, 34.551048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.289021, 34.862095, 34.386703>,  <35.537548, 34.709751, 34.112797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289021, 34.862095, 34.386703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750400, 0.037680, 0.659909,
		0.225529, 0.923866, -0.309206,
		-0.621319, 0.380857, 0.684771,
		35.102627, 34.976353, 34.592136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976547, 35.206581, 34.484596>,  <35.537548, 34.709751, 34.112797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976547, 35.206581, 34.484596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666454, 35.118889, 34.721565>,  <35.480400, 35.066273, 34.863747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666454, 35.118889, 34.721565>,  <35.976547, 35.206581, 34.484596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666454, 35.118889, 34.721565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602861, 0.023275, 0.797507,
		-0.188624, 0.975396, 0.114121,
		-0.775229, -0.219228, 0.592418,
		35.433887, 35.053120, 34.899292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681683, 35.302803, 34.715691>,  <35.976547, 35.206581, 34.484596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681683, 35.302803, 34.715691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004604, 35.361927, 34.487160>,  <37.198357, 35.397400, 34.350040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004604, 35.361927, 34.487160>,  <36.681683, 35.302803, 34.715691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004604, 35.361927, 34.487160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578967, 0.010905, -0.815278,
		-0.114273, 0.988956, 0.094379,
		0.807304, 0.147806, -0.571327,
		37.246796, 35.406269, 34.315762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408291, 35.805992, 34.178757>,  <36.681683, 35.302803, 34.715691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408291, 35.805992, 34.178757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736526, 35.652096, 34.009712>,  <36.933468, 35.559757, 33.908283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736526, 35.652096, 34.009712>,  <36.408291, 35.805992, 34.178757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736526, 35.652096, 34.009712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438626, 0.050082, -0.897273,
		0.366384, 0.921665, -0.127661,
		0.820591, -0.384741, -0.422616,
		36.982704, 35.536674, 33.882927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466438, 36.129143, 33.576241>,  <36.408291, 35.805992, 34.178757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466438, 36.129143, 33.576241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691673, 35.803539, 33.519211>,  <36.826813, 35.608177, 33.484993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691673, 35.803539, 33.519211>,  <36.466438, 36.129143, 33.576241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691673, 35.803539, 33.519211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442948, -0.151637, -0.883631,
		0.697661, 0.560715, -0.445947,
		0.563087, -0.814006, -0.142576,
		36.860600, 35.559338, 33.476437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546429, 36.176140, 32.772785>,  <36.466438, 36.129143, 33.576241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546429, 36.176140, 32.772785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713161, 35.820591, 32.848850>,  <36.813202, 35.607262, 32.894489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713161, 35.820591, 32.848850>,  <36.546429, 36.176140, 32.772785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713161, 35.820591, 32.848850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284140, -0.326136, -0.901609,
		0.863431, 0.321790, -0.388508,
		0.416835, -0.888868, 0.190163,
		36.838211, 35.553932, 32.905899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925541, 36.072155, 32.216091>,  <36.546429, 36.176140, 32.772785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925541, 36.072155, 32.216091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851635, 35.712666, 32.375168>,  <36.807293, 35.496971, 32.470612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851635, 35.712666, 32.375168>,  <36.925541, 36.072155, 32.216091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851635, 35.712666, 32.375168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371664, -0.310707, -0.874830,
		0.909796, -0.309445, -0.276616,
		-0.184765, -0.898725, 0.397689,
		36.796204, 35.443047, 32.494476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213612, 35.696751, 31.675404>,  <36.925541, 36.072155, 32.216091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213612, 35.696751, 31.675404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930050, 35.488770, 31.866022>,  <36.759911, 35.363979, 31.980392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930050, 35.488770, 31.866022>,  <37.213612, 35.696751, 31.675404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930050, 35.488770, 31.866022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293160, -0.397303, -0.869602,
		0.641489, -0.756171, 0.129220,
		-0.708907, -0.519957, 0.476544,
		36.717377, 35.332783, 32.008984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148914, 35.010593, 31.321165>,  <37.213612, 35.696751, 31.675404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148914, 35.010593, 31.321165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805565, 35.064445, 31.519180>,  <36.599556, 35.096756, 31.637989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805565, 35.064445, 31.519180>,  <37.148914, 35.010593, 31.321165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805565, 35.064445, 31.519180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511000, -0.309930, -0.801762,
		0.045487, -0.941179, 0.334832,
		-0.858377, 0.134629, 0.495040,
		36.548054, 35.104836, 31.667692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844147, 34.414619, 31.049768>,  <37.148914, 35.010593, 31.321165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844147, 34.414619, 31.049768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574699, 34.680237, 31.179560>,  <36.413033, 34.839607, 31.257435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574699, 34.680237, 31.179560>,  <36.844147, 34.414619, 31.049768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574699, 34.680237, 31.179560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600042, -0.235047, -0.764658,
		-0.431500, -0.709786, 0.556787,
		-0.673615, 0.664046, 0.324479,
		36.372616, 34.879452, 31.276903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285217, 34.082458, 31.040417>,  <36.844147, 34.414619, 31.049768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285217, 34.082458, 31.040417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145367, 34.457180, 31.045511>,  <36.061459, 34.682014, 31.048569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.145367, 34.457180, 31.045511>,  <36.285217, 34.082458, 31.040417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145367, 34.457180, 31.045511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611795, -0.217987, -0.760387,
		-0.709557, -0.273642, 0.649346,
		-0.349623, 0.936804, 0.012738,
		36.040482, 34.738220, 31.049334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686161, 33.964985, 30.734901>,  <36.285217, 34.082458, 31.040417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686161, 33.964985, 30.734901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.747292, 34.359489, 30.709791>,  <35.783970, 34.596191, 30.694725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.747292, 34.359489, 30.709791>,  <35.686161, 33.964985, 30.734901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747292, 34.359489, 30.709791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520763, 0.026383, -0.853294,
		-0.839911, 0.163095, 0.517638,
		0.152825, 0.986257, -0.062774,
		35.793140, 34.655365, 30.690958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096447, 34.167545, 30.452915>,  <35.686161, 33.964985, 30.734901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096447, 34.167545, 30.452915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.340233, 34.476303, 30.380556>,  <35.486504, 34.661560, 30.337141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.340233, 34.476303, 30.380556>,  <35.096447, 34.167545, 30.452915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340233, 34.476303, 30.380556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464347, 0.162608, -0.870598,
		-0.642596, 0.614601, 0.457532,
		0.609468, 0.771897, -0.180897,
		35.523075, 34.707870, 30.326286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669769, 34.699226, 30.153004>,  <35.096447, 34.167545, 30.452915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669769, 34.699226, 30.153004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038109, 34.827419, 30.064157>,  <35.259113, 34.904335, 30.010849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038109, 34.827419, 30.064157>,  <34.669769, 34.699226, 30.153004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038109, 34.827419, 30.064157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305253, 0.238058, -0.922035,
		-0.242617, 0.916854, 0.317042,
		0.920846, 0.320479, -0.222116,
		35.314362, 34.923561, 29.997522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589375, 35.400215, 29.804081>,  <34.669769, 34.699226, 30.153004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589375, 35.400215, 29.804081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939266, 35.241558, 29.692705>,  <35.149200, 35.146362, 29.625879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939266, 35.241558, 29.692705>,  <34.589375, 35.400215, 29.804081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939266, 35.241558, 29.692705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224942, 0.176602, -0.958234,
		0.429251, 0.900825, 0.065257,
		0.874726, -0.396644, -0.278440,
		35.201683, 35.122566, 29.609173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915997, 35.953842, 29.461718>,  <34.589375, 35.400215, 29.804081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915997, 35.953842, 29.461718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.027901, 35.589821, 29.339376>,  <35.095043, 35.371410, 29.265972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.027901, 35.589821, 29.339376>,  <34.915997, 35.953842, 29.461718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027901, 35.589821, 29.339376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325663, 0.209736, -0.921929,
		0.903150, 0.357521, -0.237695,
		0.279756, -0.910049, -0.305854,
		35.111828, 35.316807, 29.247620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048599, 36.050640, 28.741892>,  <34.915997, 35.953842, 29.461718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048599, 36.050640, 28.741892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052361, 35.651253, 28.763733>,  <35.054615, 35.411621, 28.776836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052361, 35.651253, 28.763733>,  <35.048599, 36.050640, 28.741892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052361, 35.651253, 28.763733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479563, -0.052416, -0.875941,
		0.877457, -0.017952, -0.479319,
		0.009399, -0.998464, 0.054602,
		35.055180, 35.351715, 28.780113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237473, 35.838348, 28.074549>,  <35.048599, 36.050640, 28.741892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237473, 35.838348, 28.074549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.998344, 35.556515, 28.227480>,  <34.854870, 35.387413, 28.319239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.998344, 35.556515, 28.227480>,  <35.237473, 35.838348, 28.074549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998344, 35.556515, 28.227480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525395, -0.015841, -0.850711,
		0.605454, -0.709444, -0.360714,
		-0.597818, -0.704584, 0.382329,
		34.819000, 35.345139, 28.342178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184814, 35.310207, 27.595352>,  <35.237473, 35.838348, 28.074549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184814, 35.310207, 27.595352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.872169, 35.243164, 27.835680>,  <34.684582, 35.202938, 27.979877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.872169, 35.243164, 27.835680>,  <35.184814, 35.310207, 27.595352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872169, 35.243164, 27.835680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542302, -0.293326, -0.787317,
		0.308199, -0.941205, 0.138373,
		-0.781615, -0.167610, 0.600820,
		34.637684, 35.192883, 28.015926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997833, 34.653236, 27.537991>,  <35.184814, 35.310207, 27.595352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997833, 34.653236, 27.537991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667610, 34.847324, 27.653238>,  <34.469475, 34.963776, 27.722387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667610, 34.847324, 27.653238>,  <34.997833, 34.653236, 27.537991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667610, 34.847324, 27.653238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493742, -0.373850, -0.785146,
		-0.273247, -0.790447, 0.548206,
		-0.825563, 0.485212, 0.288123,
		34.419941, 34.992889, 27.739674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.630310, 34.572067, 27.438372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.624775, 34.937801, 27.600260>,  <33.621452, 35.157242, 27.697393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.624775, 34.937801, 27.600260>,  <33.630310, 34.572067, 27.438372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624775, 34.937801, 27.600260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337561, 0.376724, -0.862631,
		-0.941202, -0.148558, 0.303429,
		-0.013841, 0.914335, 0.404721,
		33.620621, 35.212101, 27.721676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969723, 34.879627, 27.205971>,  <33.630310, 34.572067, 27.438372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969723, 34.879627, 27.205971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249702, 35.154087, 27.285246>,  <33.417690, 35.318764, 27.332811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249702, 35.154087, 27.285246>,  <32.969723, 34.879627, 27.205971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249702, 35.154087, 27.285246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286933, 0.524281, -0.801747,
		-0.654022, 0.504313, 0.563847,
		0.699946, 0.686147, 0.198187,
		33.459686, 35.359932, 27.344702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646435, 35.486710, 27.230293>,  <32.969723, 34.879627, 27.205971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646435, 35.486710, 27.230293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.005627, 35.651100, 27.167387>,  <33.221142, 35.749737, 27.129642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.005627, 35.651100, 27.167387>,  <32.646435, 35.486710, 27.230293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005627, 35.651100, 27.167387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414528, 0.670120, -0.615716,
		-0.147660, 0.618090, 0.772115,
		0.897977, 0.410980, -0.157265,
		33.275021, 35.774395, 27.120207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577408, 36.291233, 27.271494>,  <32.646435, 35.486710, 27.230293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577408, 36.291233, 27.271494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.911053, 36.235600, 27.057985>,  <33.111240, 36.202221, 26.929880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.911053, 36.235600, 27.057985>,  <32.577408, 36.291233, 27.271494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911053, 36.235600, 27.057985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239039, 0.780955, -0.577035,
		0.497106, 0.608905, 0.618159,
		0.834114, -0.139084, -0.533769,
		33.161285, 36.193874, 26.897854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883972, 36.970184, 27.253757>,  <32.577408, 36.291233, 27.271494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883972, 36.970184, 27.253757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.012478, 36.743534, 26.950253>,  <33.089581, 36.607544, 26.768148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.012478, 36.743534, 26.950253>,  <32.883972, 36.970184, 27.253757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012478, 36.743534, 26.950253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352975, 0.671850, -0.651173,
		0.878747, 0.477025, 0.015839,
		0.321267, -0.566625, -0.758764,
		33.108856, 36.573547, 26.722624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254642, 37.360264, 26.748022>,  <32.883972, 36.970184, 27.253757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254642, 37.360264, 26.748022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158382, 37.044735, 26.521805>,  <33.100624, 36.855415, 26.386074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158382, 37.044735, 26.521805>,  <33.254642, 37.360264, 26.748022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158382, 37.044735, 26.521805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554900, 0.589870, -0.586634,
		0.796349, 0.172643, -0.579674,
		-0.240654, -0.788827, -0.565543,
		33.086185, 36.808086, 26.352142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493389, 37.556225, 26.065693>,  <33.254642, 37.360264, 26.748022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493389, 37.556225, 26.065693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228142, 37.261475, 26.013117>,  <33.068993, 37.084625, 25.981571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228142, 37.261475, 26.013117>,  <33.493389, 37.556225, 26.065693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228142, 37.261475, 26.013117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401536, 0.498401, -0.768352,
		0.631694, -0.456732, -0.626385,
		-0.663122, -0.736880, -0.131443,
		33.029205, 37.040409, 25.973684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545109, 37.420761, 25.270508>,  <33.493389, 37.556225, 26.065693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545109, 37.420761, 25.270508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202194, 37.263943, 25.403988>,  <32.996445, 37.169853, 25.484076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202194, 37.263943, 25.403988>,  <33.545109, 37.420761, 25.270508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202194, 37.263943, 25.403988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365463, 0.006887, -0.930800,
		0.362617, -0.919920, -0.149183,
		-0.857289, -0.392045, 0.333699,
		32.945007, 37.146328, 25.504097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326530, 36.881027, 24.843300>,  <33.545109, 37.420761, 25.270508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326530, 36.881027, 24.843300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.978386, 36.973495, 25.017208>,  <32.769497, 37.028976, 25.121553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.978386, 36.973495, 25.017208>,  <33.326530, 36.881027, 24.843300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978386, 36.973495, 25.017208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422474, 0.102991, -0.900505,
		-0.252950, -0.967446, 0.008025,
		-0.870363, 0.231173, 0.434772,
		32.717278, 37.042847, 25.147640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781067, 36.514500, 24.506058>,  <33.326530, 36.881027, 24.843300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781067, 36.514500, 24.506058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.606564, 36.844601, 24.649521>,  <32.501862, 37.042660, 24.735598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.606564, 36.844601, 24.649521>,  <32.781067, 36.514500, 24.506058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606564, 36.844601, 24.649521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382429, 0.190748, -0.904081,
		-0.814509, -0.531575, 0.232385,
		-0.436260, 0.825253, 0.358656,
		32.475685, 37.092178, 24.757118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228348, 36.399864, 24.138340>,  <32.781067, 36.514500, 24.506058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228348, 36.399864, 24.138340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.222260, 36.772816, 24.282804>,  <32.218609, 36.996586, 24.369482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.222260, 36.772816, 24.282804>,  <32.228348, 36.399864, 24.138340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222260, 36.772816, 24.282804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269071, 0.344058, -0.899569,
		-0.963000, -0.110868, 0.245641,
		-0.015218, 0.932380, 0.361159,
		32.217693, 37.052528, 24.391151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547619, 36.739738, 24.032766>,  <32.228348, 36.399864, 24.138340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547619, 36.739738, 24.032766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794233, 37.052204, 24.072105>,  <31.942202, 37.239681, 24.095709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794233, 37.052204, 24.072105>,  <31.547619, 36.739738, 24.032766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794233, 37.052204, 24.072105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454882, 0.455370, -0.765324,
		-0.642626, 0.427112, 0.636087,
		0.616534, 0.781162, 0.098347,
		31.979193, 37.286552, 24.101610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114016, 37.440132, 23.989973>,  <31.547619, 36.739738, 24.032766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114016, 37.440132, 23.989973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492186, 37.540272, 23.906553>,  <31.719088, 37.600357, 23.856501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492186, 37.540272, 23.906553>,  <31.114016, 37.440132, 23.989973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492186, 37.540272, 23.906553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320374, 0.597560, -0.735039,
		-0.059396, 0.761740, 0.645155,
		0.945427, 0.250349, -0.208549,
		31.775814, 37.615376, 23.843988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184626, 38.222801, 24.006695>,  <31.114016, 37.440132, 23.989973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184626, 38.222801, 24.006695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500242, 38.094536, 23.797089>,  <31.689611, 38.017578, 23.671326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500242, 38.094536, 23.797089>,  <31.184626, 38.222801, 24.006695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500242, 38.094536, 23.797089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190731, 0.682954, -0.705121,
		0.583985, 0.656314, 0.477717,
		0.789040, -0.320665, -0.524014,
		31.736954, 37.998337, 23.639885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546005, 38.781982, 23.779011>,  <31.184626, 38.222801, 24.006695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546005, 38.781982, 23.779011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.641300, 38.509167, 23.502439>,  <31.698477, 38.345478, 23.336496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.641300, 38.509167, 23.502439>,  <31.546005, 38.781982, 23.779011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641300, 38.509167, 23.502439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111712, 0.687956, -0.717103,
		0.964761, 0.248081, 0.087705,
		0.238237, -0.682035, -0.691427,
		31.712770, 38.304558, 23.295012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174648, 39.086349, 23.394255>,  <31.546005, 38.781982, 23.779011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174648, 39.086349, 23.394255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.006252, 38.788078, 23.187668>,  <31.905214, 38.609116, 23.063717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.006252, 38.788078, 23.187668>,  <32.174648, 39.086349, 23.394255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006252, 38.788078, 23.187668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079758, 0.597606, -0.797813,
		0.903552, -0.294679, -0.311059,
		-0.420989, -0.745675, -0.516465,
		31.879955, 38.564377, 23.032728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564514, 39.050652, 22.696814>,  <32.174648, 39.086349, 23.394255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564514, 39.050652, 22.696814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219063, 38.854408, 22.650434>,  <32.011791, 38.736664, 22.622608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219063, 38.854408, 22.650434>,  <32.564514, 39.050652, 22.696814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219063, 38.854408, 22.650434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112844, 0.412296, -0.904035,
		0.491330, -0.767670, -0.411434,
		-0.863632, -0.490607, -0.115947,
		31.959972, 38.707226, 22.615650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569340, 38.932686, 22.006542>,  <32.564514, 39.050652, 22.696814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569340, 38.932686, 22.006542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192432, 38.878117, 22.128860>,  <31.966288, 38.845375, 22.202251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192432, 38.878117, 22.128860>,  <32.569340, 38.932686, 22.006542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192432, 38.878117, 22.128860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334848, 0.385353, -0.859872,
		-0.000531, -0.912629, -0.408789,
		-0.942272, -0.136426, 0.305796,
		31.909750, 38.837189, 22.220600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318619, 38.738205, 21.357029>,  <32.569340, 38.932686, 22.006542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318619, 38.738205, 21.357029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.004944, 38.819908, 21.591406>,  <31.816738, 38.868931, 21.732031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.004944, 38.819908, 21.591406>,  <32.318619, 38.738205, 21.357029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004944, 38.819908, 21.591406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459752, 0.442919, -0.769708,
		-0.416747, -0.872983, -0.253422,
		-0.784188, 0.204262, 0.585941,
		31.769688, 38.881187, 21.767189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704264, 38.565483, 20.989017>,  <32.318619, 38.738205, 21.357029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704264, 38.565483, 20.989017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.619711, 38.849274, 21.257931>,  <31.568979, 39.019547, 21.419279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.619711, 38.849274, 21.257931>,  <31.704264, 38.565483, 20.989017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619711, 38.849274, 21.257931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415261, 0.557472, -0.718877,
		-0.884803, -0.431131, 0.176776,
		-0.211383, 0.709473, 0.672285,
		31.556295, 39.062115, 21.459616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069790, 38.790768, 20.695198>,  <31.704264, 38.565483, 20.989017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069790, 38.790768, 20.695198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.196455, 39.064224, 20.958216>,  <31.272453, 39.228298, 21.116026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.196455, 39.064224, 20.958216>,  <31.069790, 38.790768, 20.695198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196455, 39.064224, 20.958216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248523, 0.728797, -0.638037,
		-0.915402, 0.038628, 0.400683,
		0.316663, 0.683640, 0.657542,
		31.291454, 39.269318, 21.155478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517733, 39.136459, 20.885645>,  <31.069790, 38.790768, 20.695198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517733, 39.136459, 20.885645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.837210, 39.373646, 20.926596>,  <31.028896, 39.515957, 20.951166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.837210, 39.373646, 20.926596>,  <30.517733, 39.136459, 20.885645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837210, 39.373646, 20.926596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416011, 0.667054, -0.618041,
		-0.434767, 0.451036, 0.779452,
		0.798694, 0.592964, 0.102377,
		31.076818, 39.551537, 20.957308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273457, 39.809395, 21.161678>,  <30.517733, 39.136459, 20.885645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273457, 39.809395, 21.161678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.609896, 39.827755, 20.946106>,  <30.811760, 39.838772, 20.816763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.609896, 39.827755, 20.946106>,  <30.273457, 39.809395, 21.161678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609896, 39.827755, 20.946106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472950, 0.545863, -0.691630,
		0.262435, 0.836616, 0.480834,
		0.841098, 0.045903, -0.538931,
		30.862225, 39.841526, 20.784426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731571, 39.442314, 20.750095>,  <30.273457, 39.809395, 21.161678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731571, 39.442314, 20.750095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.372547, 39.309689, 20.633850>,  <29.157133, 39.230114, 20.564104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.372547, 39.309689, 20.633850>,  <29.731571, 39.442314, 20.750095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372547, 39.309689, 20.633850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209992, -0.901059, 0.379469,
		-0.387676, 0.279569, 0.878378,
		-0.897558, -0.331564, -0.290611,
		29.103279, 39.210220, 20.546667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480761, 39.315666, 21.458557>,  <29.731571, 39.442314, 20.750095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480761, 39.315666, 21.458557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.097837, 39.206020, 21.421846>,  <28.868084, 39.140232, 21.399820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.097837, 39.206020, 21.421846>,  <29.480761, 39.315666, 21.458557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097837, 39.206020, 21.421846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096569, 0.004014, 0.995318,
		-0.272467, 0.961687, -0.030314,
		-0.957307, -0.274119, -0.091776,
		28.810646, 39.123783, 21.394314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144876, 39.839340, 21.780098>,  <29.480761, 39.315666, 21.458557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144876, 39.839340, 21.780098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.865768, 39.552830, 21.783319>,  <28.698303, 39.380924, 21.785252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.865768, 39.552830, 21.783319>,  <29.144876, 39.839340, 21.780098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865768, 39.552830, 21.783319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092110, 0.100867, 0.990627,
		-0.710377, 0.690486, -0.136359,
		-0.697769, -0.716278, 0.008053,
		28.656439, 39.337948, 21.785736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774845, 39.988621, 22.290415>,  <29.144876, 39.839340, 21.780098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774845, 39.988621, 22.290415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.665413, 39.607273, 22.239450>,  <28.599754, 39.378464, 22.208872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.665413, 39.607273, 22.239450>,  <28.774845, 39.988621, 22.290415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665413, 39.607273, 22.239450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007529, -0.134583, 0.990874,
		-0.961820, 0.270124, 0.043997,
		-0.273580, -0.953373, -0.127411,
		28.583340, 39.321262, 22.201227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325001, 39.840450, 22.844183>,  <28.774845, 39.988621, 22.290415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325001, 39.840450, 22.844183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.475954, 39.494907, 22.710714>,  <28.566526, 39.287582, 22.630634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.475954, 39.494907, 22.710714>,  <28.325001, 39.840450, 22.844183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475954, 39.494907, 22.710714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040383, -0.375321, 0.926015,
		-0.925176, -0.335989, -0.176525,
		0.377385, -0.863855, -0.333670,
		28.589169, 39.235752, 22.610613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840502, 39.318043, 23.084251>,  <28.325001, 39.840450, 22.844183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840502, 39.318043, 23.084251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.198215, 39.152016, 23.017347>,  <28.412844, 39.052399, 22.977205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.198215, 39.152016, 23.017347>,  <27.840502, 39.318043, 23.084251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198215, 39.152016, 23.017347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048245, -0.461004, 0.886086,
		-0.444885, -0.784346, -0.432294,
		0.894287, -0.415063, -0.167253,
		28.466499, 39.027493, 22.967171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767479, 38.643456, 23.307287>,  <27.840502, 39.318043, 23.084251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767479, 38.643456, 23.307287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.162378, 38.703533, 23.286192>,  <28.399319, 38.739578, 23.273535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.162378, 38.703533, 23.286192>,  <27.767479, 38.643456, 23.307287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162378, 38.703533, 23.286192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126480, -0.538957, 0.832783,
		0.096654, -0.828835, -0.551081,
		0.987249, 0.150193, -0.052738,
		28.458553, 38.748592, 23.270370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046066, 37.999043, 23.678459>,  <27.767479, 38.643456, 23.307287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046066, 37.999043, 23.678459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.332466, 38.278172, 23.686331>,  <28.504307, 38.445648, 23.691053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.332466, 38.278172, 23.686331>,  <28.046066, 37.999043, 23.678459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332466, 38.278172, 23.686331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259438, -0.292152, 0.920510,
		0.648103, -0.653979, -0.390223,
		0.715999, 0.697824, 0.019678,
		28.547266, 38.487518, 23.692234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372499, 37.634686, 24.007431>,  <28.046066, 37.999043, 23.678459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372499, 37.634686, 24.007431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.576370, 37.978355, 24.025549>,  <28.698692, 38.184555, 24.036421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.576370, 37.978355, 24.025549>,  <28.372499, 37.634686, 24.007431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576370, 37.978355, 24.025549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327655, -0.242513, 0.913143,
		0.795532, -0.450567, -0.405115,
		0.509678, 0.859172, 0.045296,
		28.729273, 38.236107, 24.039137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092323, 37.569389, 24.089458>,  <28.372499, 37.634686, 24.007431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092323, 37.569389, 24.089458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.013773, 37.930969, 24.241409>,  <28.966642, 38.147919, 24.332579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.013773, 37.930969, 24.241409>,  <29.092323, 37.569389, 24.089458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013773, 37.930969, 24.241409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504079, -0.239233, 0.829862,
		0.841036, 0.354451, -0.408685,
		-0.196374, 0.903954, 0.379875,
		28.954861, 38.202156, 24.355371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711546, 37.807308, 24.188953>,  <29.092323, 37.569389, 24.089458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711546, 37.807308, 24.188953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.487230, 38.011585, 24.449633>,  <29.352640, 38.134151, 24.606039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.487230, 38.011585, 24.449633>,  <29.711546, 37.807308, 24.188953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487230, 38.011585, 24.449633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598996, -0.293149, 0.745163,
		0.571592, 0.808244, -0.141507,
		-0.560791, 0.510691, 0.651696,
		29.318993, 38.164791, 24.645142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184855, 38.215790, 24.577045>,  <29.711546, 37.807308, 24.188953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184855, 38.215790, 24.577045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859512, 38.223656, 24.809620>,  <29.664307, 38.228374, 24.949165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859512, 38.223656, 24.809620>,  <30.184855, 38.215790, 24.577045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859512, 38.223656, 24.809620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567740, -0.191337, 0.800663,
		0.126992, 0.981328, 0.144462,
		-0.813354, 0.019661, 0.581437,
		29.615505, 38.229553, 24.984051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412096, 38.461857, 25.227962>,  <30.184855, 38.215790, 24.577045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412096, 38.461857, 25.227962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.061640, 38.297722, 25.329153>,  <29.851366, 38.199242, 25.389868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.061640, 38.297722, 25.329153>,  <30.412096, 38.461857, 25.227962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061640, 38.297722, 25.329153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413901, -0.371348, 0.831136,
		-0.247104, 0.832901, 0.495193,
		-0.876142, -0.410338, 0.252977,
		29.798798, 38.174622, 25.405046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407831, 38.451649, 25.979212>,  <30.412096, 38.461857, 25.227962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407831, 38.451649, 25.979212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.135117, 38.179153, 25.872570>,  <29.971487, 38.015656, 25.808586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.135117, 38.179153, 25.872570>,  <30.407831, 38.451649, 25.979212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135117, 38.179153, 25.872570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335424, -0.614979, 0.713646,
		-0.650120, 0.397130, 0.647790,
		-0.681788, -0.681240, -0.266603,
		29.930580, 37.974781, 25.792589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086178, 38.245735, 26.502871>,  <30.407831, 38.451649, 25.979212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086178, 38.245735, 26.502871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.985613, 37.935902, 26.270731>,  <29.925274, 37.750000, 26.131447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.985613, 37.935902, 26.270731>,  <30.086178, 38.245735, 26.502871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985613, 37.935902, 26.270731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335190, -0.632183, 0.698565,
		-0.907986, -0.018899, 0.418573,
		-0.251413, -0.774589, -0.580348,
		29.910189, 37.703526, 26.096626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730333, 37.776352, 26.913790>,  <30.086178, 38.245735, 26.502871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730333, 37.776352, 26.913790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.879032, 37.564682, 26.608692>,  <29.968252, 37.437679, 26.425634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.879032, 37.564682, 26.608692>,  <29.730333, 37.776352, 26.913790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879032, 37.564682, 26.608692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323820, -0.696103, 0.640766,
		-0.870025, -0.485195, -0.087418,
		0.371749, -0.529175, -0.762743,
		29.990557, 37.405930, 26.379869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531923, 37.058487, 27.060999>,  <29.730333, 37.776352, 26.913790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531923, 37.058487, 27.060999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.851395, 37.070381, 26.820591>,  <30.043077, 37.077518, 26.676346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.851395, 37.070381, 26.820591>,  <29.531923, 37.058487, 27.060999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851395, 37.070381, 26.820591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521523, -0.532480, 0.666692,
		-0.300208, -0.845919, -0.440789,
		0.798679, 0.029735, -0.601022,
		30.090998, 37.079300, 26.640284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649220, 36.385159, 26.819609>,  <29.531923, 37.058487, 27.060999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649220, 36.385159, 26.819609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.015944, 36.544838, 26.815622>,  <30.235977, 36.640648, 26.813231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.015944, 36.544838, 26.815622>,  <29.649220, 36.385159, 26.819609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015944, 36.544838, 26.815622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285347, -0.637462, 0.715695,
		0.279354, -0.658999, -0.698342,
		0.916809, 0.399202, -0.009965,
		30.290987, 36.664600, 26.812634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068394, 35.823566, 27.054741>,  <29.649220, 36.385159, 26.819609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068394, 35.823566, 27.054741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.332603, 36.123257, 27.074198>,  <30.491129, 36.303070, 27.085871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.332603, 36.123257, 27.074198>,  <30.068394, 35.823566, 27.054741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332603, 36.123257, 27.074198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328721, -0.346831, 0.878436,
		0.675019, -0.564240, -0.475377,
		0.660524, 0.749228, 0.048640,
		30.530762, 36.348026, 27.088789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678471, 35.528603, 27.203100>,  <30.068394, 35.823566, 27.054741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678471, 35.528603, 27.203100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.720881, 35.911224, 27.311731>,  <30.746326, 36.140797, 27.376909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.720881, 35.911224, 27.311731>,  <30.678471, 35.528603, 27.203100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720881, 35.911224, 27.311731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340221, -0.291530, 0.894013,
		0.934349, -0.002394, -0.356352,
		0.106027, 0.956559, 0.271576,
		30.752689, 36.198193, 27.393204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365004, 35.661690, 27.334541>,  <30.678471, 35.528603, 27.203100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365004, 35.661690, 27.334541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131052, 35.919369, 27.531691>,  <30.990681, 36.073975, 27.649981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131052, 35.919369, 27.531691>,  <31.365004, 35.661690, 27.334541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131052, 35.919369, 27.531691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285760, -0.405037, 0.868497,
		0.759115, 0.648811, 0.052812,
		-0.584881, 0.644197, 0.492874,
		30.955587, 36.112629, 27.679552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.477760, 35.283367, 29.531729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.129322, 35.160561, 29.685061>,  <35.920261, 35.086876, 29.777060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.129322, 35.160561, 29.685061>,  <36.477760, 35.283367, 29.531729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129322, 35.160561, 29.685061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371345, 0.099063, 0.923195,
		-0.321408, 0.946535, 0.027716,
		-0.871091, -0.307015, 0.383330,
		35.867996, 35.068455, 29.800060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410038, 35.598454, 30.105549>,  <36.477760, 35.283367, 29.531729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410038, 35.598454, 30.105549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.115639, 35.339111, 30.183453>,  <35.938999, 35.183506, 30.230194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.115639, 35.339111, 30.183453>,  <36.410038, 35.598454, 30.105549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115639, 35.339111, 30.183453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180018, 0.089891, 0.979548,
		-0.652606, 0.756009, 0.050556,
		-0.736002, -0.648359, 0.194758,
		35.894836, 35.144604, 30.241880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807976, 35.915974, 30.455099>,  <36.410038, 35.598454, 30.105549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807976, 35.915974, 30.455099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.814262, 35.524864, 30.538727>,  <35.818035, 35.290199, 30.588903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.814262, 35.524864, 30.538727>,  <35.807976, 35.915974, 30.455099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814262, 35.524864, 30.538727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199972, 0.207943, 0.957482,
		-0.979676, 0.026760, 0.198795,
		0.015715, -0.977775, 0.209068,
		35.818977, 35.231533, 30.601446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373928, 35.870014, 31.006811>,  <35.807976, 35.915974, 30.455099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373928, 35.870014, 31.006811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.609066, 35.546432, 31.008949>,  <35.750149, 35.352283, 31.010233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.609066, 35.546432, 31.008949>,  <35.373928, 35.870014, 31.006811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609066, 35.546432, 31.008949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147529, 0.113698, 0.982501,
		-0.795407, -0.576771, 0.186181,
		0.587846, -0.808955, 0.005346,
		35.785419, 35.303745, 31.010553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402073, 35.659363, 31.758614>,  <35.373928, 35.870014, 31.006811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402073, 35.659363, 31.758614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.710789, 35.440407, 31.629181>,  <35.896019, 35.309032, 31.551521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.710789, 35.440407, 31.629181>,  <35.402073, 35.659363, 31.758614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710789, 35.440407, 31.629181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445433, 0.102246, 0.889458,
		-0.453798, -0.830606, 0.322739,
		0.771788, -0.547393, -0.323581,
		35.942326, 35.276188, 31.532106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485443, 35.285267, 32.346306>,  <35.402073, 35.659363, 31.758614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485443, 35.285267, 32.346306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.813705, 35.224346, 32.126007>,  <36.010662, 35.187794, 31.993828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.813705, 35.224346, 32.126007>,  <35.485443, 35.285267, 32.346306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813705, 35.224346, 32.126007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553045, -0.030757, 0.832583,
		-0.143747, -0.987855, 0.058992,
		0.820657, -0.152307, -0.550749,
		36.059902, 35.178654, 31.960783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771637, 34.684761, 32.612274>,  <35.485443, 35.285267, 32.346306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771637, 34.684761, 32.612274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.062408, 34.883690, 32.422852>,  <36.236870, 35.003048, 32.309200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.062408, 34.883690, 32.422852>,  <35.771637, 34.684761, 32.612274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062408, 34.883690, 32.422852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497325, 0.094281, 0.862426,
		0.473550, -0.862429, -0.178795,
		0.726924, 0.497321, -0.473554,
		36.280487, 35.032887, 32.280785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363922, 34.272976, 32.897392>,  <35.771637, 34.684761, 32.612274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363922, 34.272976, 32.897392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.491947, 34.628025, 32.764915>,  <36.568764, 34.841053, 32.685429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.491947, 34.628025, 32.764915>,  <36.363922, 34.272976, 32.897392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491947, 34.628025, 32.764915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436959, 0.171873, 0.882908,
		0.840611, -0.427305, -0.332843,
		0.320064, 0.887620, -0.331193,
		36.587967, 34.894310, 32.665558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121052, 34.287750, 32.913265>,  <36.363922, 34.272976, 32.897392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121052, 34.287750, 32.913265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.989193, 34.662556, 32.959480>,  <36.910080, 34.887440, 32.987209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.989193, 34.662556, 32.959480>,  <37.121052, 34.287750, 32.913265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989193, 34.662556, 32.959480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576558, 0.102893, 0.810552,
		0.747607, 0.333808, -0.574158,
		-0.329645, 0.937009, 0.115536,
		36.890301, 34.943657, 32.994141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624905, 34.570377, 33.323479>,  <37.121052, 34.287750, 32.913265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624905, 34.570377, 33.323479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.401863, 34.900208, 33.361752>,  <37.268040, 35.098106, 33.384716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.401863, 34.900208, 33.361752>,  <37.624905, 34.570377, 33.323479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401863, 34.900208, 33.361752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430015, 0.188335, 0.882959,
		0.710047, 0.533484, -0.459596,
		-0.557603, 0.824575, 0.095679,
		37.234581, 35.147579, 33.390457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102665, 35.031887, 33.488457>,  <37.624905, 34.570377, 33.323479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102665, 35.031887, 33.488457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.749134, 35.186592, 33.593723>,  <37.537014, 35.279415, 33.656883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.749134, 35.186592, 33.593723>,  <38.102665, 35.031887, 33.488457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749134, 35.186592, 33.593723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439727, 0.494880, 0.749489,
		0.159641, 0.778143, -0.607461,
		-0.883830, 0.386766, 0.263167,
		37.483986, 35.302624, 33.672672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385582, 35.667034, 33.749020>,  <38.102665, 35.031887, 33.488457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385582, 35.667034, 33.749020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.023819, 35.572460, 33.891090>,  <37.806763, 35.515717, 33.976334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.023819, 35.572460, 33.891090>,  <38.385582, 35.667034, 33.749020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023819, 35.572460, 33.891090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369535, -0.017921, 0.929044,
		-0.213296, 0.971481, 0.103580,
		-0.904405, -0.236437, 0.355174,
		37.752499, 35.501530, 33.997643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257889, 36.167183, 34.303162>,  <38.385582, 35.667034, 33.749020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257889, 36.167183, 34.303162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054462, 35.827610, 34.360672>,  <37.932407, 35.623867, 34.395180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054462, 35.827610, 34.360672>,  <38.257889, 36.167183, 34.303162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054462, 35.827610, 34.360672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255366, 0.010760, 0.966785,
		-0.822285, 0.528387, 0.211317,
		-0.508562, -0.848936, 0.143780,
		37.901894, 35.572929, 34.403805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402920, 36.054253, 34.988319>,  <38.257889, 36.167183, 34.303162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402920, 36.054253, 34.988319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.156509, 35.742077, 34.945545>,  <38.008663, 35.554771, 34.919880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.156509, 35.742077, 34.945545>,  <38.402920, 36.054253, 34.988319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156509, 35.742077, 34.945545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184189, -0.274699, 0.943724,
		-0.765893, 0.561657, 0.312968,
		-0.616022, -0.780437, -0.106939,
		37.971703, 35.507946, 34.913464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073887, 36.403049, 35.630379>,  <38.402920, 36.054253, 34.988319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073887, 36.403049, 35.630379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.139793, 36.792461, 35.693752>,  <38.179337, 37.026108, 35.731777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.139793, 36.792461, 35.693752>,  <38.073887, 36.403049, 35.630379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139793, 36.792461, 35.693752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595210, 0.226221, -0.771070,
		-0.786497, 0.032743, 0.616725,
		0.164764, 0.973525, 0.158434,
		38.189224, 37.084518, 35.741283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409046, 36.730122, 35.669880>,  <38.073887, 36.403049, 35.630379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409046, 36.730122, 35.669880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.656319, 37.032001, 35.581989>,  <37.804680, 37.213131, 35.529255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.656319, 37.032001, 35.581989>,  <37.409046, 36.730122, 35.669880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656319, 37.032001, 35.581989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671213, 0.361361, -0.647218,
		-0.409057, 0.547579, 0.729952,
		0.618179, 0.754703, -0.219725,
		37.841774, 37.258411, 35.516071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998074, 37.374809, 35.655643>,  <37.409046, 36.730122, 35.669880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998074, 37.374809, 35.655643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.337143, 37.451206, 35.457664>,  <37.540585, 37.497044, 35.338879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.337143, 37.451206, 35.457664>,  <36.998074, 37.374809, 35.655643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337143, 37.451206, 35.457664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523876, 0.448539, -0.724132,
		0.083698, 0.873118, 0.480271,
		0.847672, 0.190995, -0.494947,
		37.591446, 37.508503, 35.309181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914165, 38.090843, 35.516224>,  <36.998074, 37.374809, 35.655643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914165, 38.090843, 35.516224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.196384, 37.979546, 35.255524>,  <37.365715, 37.912769, 35.099102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.196384, 37.979546, 35.255524>,  <36.914165, 38.090843, 35.516224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196384, 37.979546, 35.255524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511957, 0.435789, -0.740263,
		0.489998, 0.855961, 0.165023,
		0.705551, -0.278242, -0.651750,
		37.408051, 37.896072, 35.059998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147873, 38.644550, 35.177284>,  <36.914165, 38.090843, 35.516224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147873, 38.644550, 35.177284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.240726, 38.354912, 34.917500>,  <37.296440, 38.181129, 34.761631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.240726, 38.354912, 34.917500>,  <37.147873, 38.644550, 35.177284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240726, 38.354912, 34.917500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393628, 0.540649, -0.743475,
		0.889477, 0.428235, -0.159519,
		0.232138, -0.724095, -0.649460,
		37.310368, 38.137684, 34.722660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317341, 39.038296, 34.552284>,  <37.147873, 38.644550, 35.177284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317341, 39.038296, 34.552284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207558, 38.674503, 34.427368>,  <37.141689, 38.456230, 34.352421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207558, 38.674503, 34.427368>,  <37.317341, 39.038296, 34.552284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207558, 38.674503, 34.427368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385479, 0.401580, -0.830747,
		0.880954, -0.107623, -0.460800,
		-0.274456, -0.909478, -0.312287,
		37.125221, 38.401661, 34.333683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496082, 39.108875, 33.894718>,  <37.317341, 39.038296, 34.552284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496082, 39.108875, 33.894718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.243607, 38.800705, 33.930611>,  <37.092121, 38.615803, 33.952148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.243607, 38.800705, 33.930611>,  <37.496082, 39.108875, 33.894718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243607, 38.800705, 33.930611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423241, 0.245160, -0.872218,
		0.649976, -0.588513, -0.480816,
		-0.631188, -0.770422, 0.089735,
		37.054249, 38.569580, 33.957531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477028, 38.857853, 33.255733>,  <37.496082, 39.108875, 33.894718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477028, 38.857853, 33.255733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132603, 38.730282, 33.414154>,  <36.925945, 38.653740, 33.509205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132603, 38.730282, 33.414154>,  <37.477028, 38.857853, 33.255733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132603, 38.730282, 33.414154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466152, 0.183917, -0.865377,
		0.203154, -0.929763, -0.307034,
		-0.861064, -0.318930, 0.396047,
		36.874283, 38.634605, 33.532970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185490, 38.607670, 32.762264>,  <37.477028, 38.857853, 33.255733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185490, 38.607670, 32.762264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.860573, 38.635902, 32.993851>,  <36.665623, 38.652840, 33.132801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.860573, 38.635902, 32.993851>,  <37.185490, 38.607670, 32.762264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860573, 38.635902, 32.993851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565994, 0.144273, -0.811687,
		-0.140816, -0.987018, -0.077245,
		-0.812294, 0.070579, 0.578962,
		36.616886, 38.657078, 33.167538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758305, 38.253948, 32.411179>,  <37.185490, 38.607670, 32.762264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758305, 38.253948, 32.411179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.523338, 38.484859, 32.638054>,  <36.382359, 38.623405, 32.774178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.523338, 38.484859, 32.638054>,  <36.758305, 38.253948, 32.411179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523338, 38.484859, 32.638054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684482, 0.019527, -0.728768,
		-0.431776, -0.816315, 0.383666,
		-0.587412, 0.577277, 0.567184,
		36.347115, 38.658043, 32.808208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001877, 37.949665, 32.475807>,  <36.758305, 38.253948, 32.411179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001877, 37.949665, 32.475807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.949165, 38.339642, 32.547508>,  <35.917538, 38.573627, 32.590527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.949165, 38.339642, 32.547508>,  <36.001877, 37.949665, 32.475807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949165, 38.339642, 32.547508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689438, 0.039786, -0.723251,
		-0.712257, -0.218889, 0.666916,
		-0.131777, 0.974938, 0.179249,
		35.909634, 38.632122, 32.601284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337387, 38.082771, 32.215233>,  <36.001877, 37.949665, 32.475807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337387, 38.082771, 32.215233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.473362, 38.454128, 32.275276>,  <35.554947, 38.676941, 32.311302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.473362, 38.454128, 32.275276>,  <35.337387, 38.082771, 32.215233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473362, 38.454128, 32.275276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438496, 0.297669, -0.848006,
		-0.831965, 0.222445, 0.508284,
		0.339935, 0.928392, 0.150109,
		35.575344, 38.732647, 32.320309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742435, 38.521519, 31.969654>,  <35.337387, 38.082771, 32.215233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742435, 38.521519, 31.969654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.069164, 38.752148, 31.962015>,  <35.265202, 38.890526, 31.957432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.069164, 38.752148, 31.962015>,  <34.742435, 38.521519, 31.969654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069164, 38.752148, 31.962015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228168, 0.292485, -0.928651,
		-0.529844, 0.762904, 0.370464,
		0.816826, 0.576568, -0.019099,
		35.314213, 38.925117, 31.956285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552025, 39.189129, 31.649134>,  <34.742435, 38.521519, 31.969654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552025, 39.189129, 31.649134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.944115, 39.134918, 31.591461>,  <35.179371, 39.102394, 31.556858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.944115, 39.134918, 31.591461>,  <34.552025, 39.189129, 31.649134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944115, 39.134918, 31.591461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129830, 0.109404, -0.985482,
		0.149329, 0.984715, 0.089646,
		0.980227, -0.135523, -0.144183,
		35.238182, 39.094261, 31.548206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715385, 39.776077, 32.215866>,  <34.552025, 39.189129, 31.649134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715385, 39.776077, 32.215866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.581741, 40.143345, 32.301029>,  <34.501556, 40.363705, 32.352127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.581741, 40.143345, 32.301029>,  <34.715385, 39.776077, 32.215866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581741, 40.143345, 32.301029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162263, -0.166484, 0.972601,
		0.928462, 0.359503, -0.093362,
		-0.334110, 0.918172, 0.212908,
		34.481510, 40.418797, 32.364902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278934, 40.004925, 32.634369>,  <34.715385, 39.776077, 32.215866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278934, 40.004925, 32.634369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.946682, 40.216339, 32.704453>,  <34.747330, 40.343189, 32.746502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.946682, 40.216339, 32.704453>,  <35.278934, 40.004925, 32.634369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946682, 40.216339, 32.704453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015939, -0.291962, 0.956297,
		0.556593, 0.797124, 0.234089,
		-0.830632, 0.528537, 0.175209,
		34.697491, 40.374901, 32.757015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381332, 40.444595, 33.249187>,  <35.278934, 40.004925, 32.634369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381332, 40.444595, 33.249187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.982773, 40.418571, 33.227455>,  <34.743637, 40.402958, 33.214417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.982773, 40.418571, 33.227455>,  <35.381332, 40.444595, 33.249187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982773, 40.418571, 33.227455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040351, -0.199580, 0.979051,
		-0.074543, 0.977719, 0.196236,
		-0.996401, -0.065063, -0.054329,
		34.683853, 40.399052, 33.211155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187828, 40.709618, 33.852261>,  <35.381332, 40.444595, 33.249187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187828, 40.709618, 33.852261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.848431, 40.539864, 33.725796>,  <34.644791, 40.438011, 33.649918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.848431, 40.539864, 33.725796>,  <35.187828, 40.709618, 33.852261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848431, 40.539864, 33.725796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227907, -0.246158, 0.942053,
		-0.477615, 0.871382, 0.112145,
		-0.848494, -0.424380, -0.316163,
		34.593884, 40.412548, 33.630947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677574, 40.994629, 34.287659>,  <35.187828, 40.709618, 33.852261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677574, 40.994629, 34.287659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.586300, 40.637295, 34.132801>,  <34.531536, 40.422894, 34.039886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.586300, 40.637295, 34.132801>,  <34.677574, 40.994629, 34.287659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586300, 40.637295, 34.132801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273616, -0.322765, 0.906067,
		-0.934380, 0.312680, -0.170781,
		-0.228186, -0.893339, -0.387140,
		34.517845, 40.369293, 34.016659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058414, 41.017696, 34.412758>,  <34.677574, 40.994629, 34.287659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058414, 41.017696, 34.412758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.202145, 40.646210, 34.376160>,  <34.288383, 40.423317, 34.354202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.202145, 40.646210, 34.376160>,  <34.058414, 41.017696, 34.412758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202145, 40.646210, 34.376160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417028, -0.247507, 0.874544,
		-0.834850, -0.276087, -0.476236,
		0.359322, -0.928718, -0.091495,
		34.309940, 40.367596, 34.348713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525688, 40.544804, 34.669411>,  <34.058414, 41.017696, 34.412758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525688, 40.544804, 34.669411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.858482, 40.323727, 34.688732>,  <34.058159, 40.191078, 34.700325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.858482, 40.323727, 34.688732>,  <33.525688, 40.544804, 34.669411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858482, 40.323727, 34.688732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280821, -0.344431, 0.895828,
		-0.478481, -0.758878, -0.441769,
		0.831983, -0.552695, 0.048305,
		34.108078, 40.157917, 34.703224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339867, 39.797070, 34.810318>,  <33.525688, 40.544804, 34.669411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339867, 39.797070, 34.810318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.721485, 39.814896, 34.928848>,  <33.950459, 39.825592, 34.999966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.721485, 39.814896, 34.928848>,  <33.339867, 39.797070, 34.810318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721485, 39.814896, 34.928848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213362, -0.593306, 0.776186,
		0.210402, -0.803742, -0.556533,
		0.954048, 0.044568, 0.296321,
		34.007698, 39.828266, 35.017746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524273, 39.091103, 35.087894>,  <33.339867, 39.797070, 34.810318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524273, 39.091103, 35.087894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.807343, 39.338531, 35.224464>,  <33.977184, 39.486988, 35.306408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.807343, 39.338531, 35.224464>,  <33.524273, 39.091103, 35.087894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807343, 39.338531, 35.224464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071253, -0.418290, 0.905514,
		0.702940, -0.665134, -0.251937,
		0.707671, 0.618571, 0.341425,
		34.019646, 39.524101, 35.326893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051121, 38.590549, 35.405186>,  <33.524273, 39.091103, 35.087894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051121, 38.590549, 35.405186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.052341, 38.962803, 35.551559>,  <34.053074, 39.186157, 35.639385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.052341, 38.962803, 35.551559>,  <34.051121, 38.590549, 35.405186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052341, 38.962803, 35.551559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112254, -0.363303, 0.924884,
		0.993675, -0.043903, 0.103358,
		0.003055, 0.930636, 0.365933,
		34.053257, 39.241993, 35.661339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653423, 38.548130, 35.789185>,  <34.051121, 38.590549, 35.405186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653423, 38.548130, 35.789185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.456593, 38.861603, 35.940815>,  <34.338493, 39.049686, 36.031796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.456593, 38.861603, 35.940815>,  <34.653423, 38.548130, 35.789185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456593, 38.861603, 35.940815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008325, -0.431191, 0.902222,
		0.870513, 0.447117, 0.205654,
		-0.492075, 0.783684, 0.379080,
		34.308971, 39.096706, 36.054539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058636, 38.718018, 36.431957>,  <34.653423, 38.548130, 35.789185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058636, 38.718018, 36.431957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.683914, 38.853897, 36.465443>,  <34.459084, 38.935425, 36.485535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.683914, 38.853897, 36.465443>,  <35.058636, 38.718018, 36.431957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683914, 38.853897, 36.465443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043531, -0.350597, 0.935514,
		0.347143, 0.872747, 0.343227,
		-0.936801, 0.339698, 0.083716,
		34.402874, 38.955807, 36.490559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.183109, 41.579807, 28.640846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818371, 41.612286, 28.801815>,  <33.599529, 41.631771, 28.898396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818371, 41.612286, 28.801815>,  <34.183109, 41.579807, 28.640846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818371, 41.612286, 28.801815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409605, 0.245722, 0.878547,
		-0.027550, 0.965934, -0.257319,
		-0.911847, 0.081195, 0.402421,
		33.544815, 41.636642, 28.922541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184025, 42.201389, 29.110636>,  <34.183109, 41.579807, 28.640846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184025, 42.201389, 29.110636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899765, 41.943569, 29.223446>,  <33.729210, 41.788879, 29.291132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899765, 41.943569, 29.223446>,  <34.184025, 42.201389, 29.110636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899765, 41.943569, 29.223446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374692, -0.007454, 0.927120,
		-0.595470, 0.764528, 0.246804,
		-0.710649, -0.644547, 0.282023,
		33.686569, 41.750206, 29.308052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967331, 42.503033, 29.703224>,  <34.184025, 42.201389, 29.110636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967331, 42.503033, 29.703224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852329, 42.120342, 29.721216>,  <33.783329, 41.890728, 29.732012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852329, 42.120342, 29.721216>,  <33.967331, 42.503033, 29.703224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852329, 42.120342, 29.721216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363584, -0.065575, 0.929250,
		-0.886084, 0.283521, 0.366702,
		-0.287508, -0.956721, 0.044978,
		33.766075, 41.833324, 29.734709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873901, 42.445938, 30.348282>,  <33.967331, 42.503033, 29.703224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873901, 42.445938, 30.348282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900158, 42.066776, 30.223593>,  <33.915913, 41.839279, 30.148779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900158, 42.066776, 30.223593>,  <33.873901, 42.445938, 30.348282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900158, 42.066776, 30.223593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191373, -0.294641, 0.936250,
		-0.979320, -0.121112, 0.162063,
		0.065641, -0.947902, -0.311725,
		33.919849, 41.782406, 30.130075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399815, 42.074715, 30.852156>,  <33.873901, 42.445938, 30.348282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399815, 42.074715, 30.852156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653233, 41.790287, 30.730167>,  <33.805283, 41.619633, 30.656975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653233, 41.790287, 30.730167>,  <33.399815, 42.074715, 30.852156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653233, 41.790287, 30.730167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006531, -0.389239, 0.921114,
		-0.773678, -0.585559, -0.241956,
		0.633546, -0.711065, -0.304970,
		33.843296, 41.576969, 30.638676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269314, 41.571175, 31.333845>,  <33.399815, 42.074715, 30.852156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269314, 41.571175, 31.333845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600452, 41.428341, 31.160793>,  <33.799133, 41.342640, 31.056963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600452, 41.428341, 31.160793>,  <33.269314, 41.571175, 31.333845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600452, 41.428341, 31.160793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183011, -0.557105, 0.810025,
		-0.530267, -0.749749, -0.395845,
		0.827843, -0.357085, -0.432627,
		33.848804, 41.321217, 31.031006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264397, 40.882950, 31.417879>,  <33.269314, 41.571175, 31.333845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264397, 40.882950, 31.417879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645409, 40.987110, 31.354790>,  <33.874016, 41.049606, 31.316936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645409, 40.987110, 31.354790>,  <33.264397, 40.882950, 31.417879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645409, 40.987110, 31.354790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247936, -0.362882, 0.898245,
		0.176669, -0.894711, -0.410219,
		0.952531, 0.260401, -0.157721,
		33.931168, 41.065231, 31.307474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622238, 40.309132, 31.583263>,  <33.264397, 40.882950, 31.417879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622238, 40.309132, 31.583263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899578, 40.596272, 31.608418>,  <34.065983, 40.768555, 31.623510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899578, 40.596272, 31.608418>,  <33.622238, 40.309132, 31.583263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899578, 40.596272, 31.608418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309203, -0.375199, 0.873853,
		0.650893, -0.586440, -0.482106,
		0.693348, 0.717853, 0.062886,
		34.107582, 40.811626, 31.627283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163841, 39.954449, 31.790560>,  <33.622238, 40.309132, 31.583263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163841, 39.954449, 31.790560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204453, 40.334888, 31.907253>,  <34.228821, 40.563152, 31.977270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204453, 40.334888, 31.907253>,  <34.163841, 39.954449, 31.790560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204453, 40.334888, 31.907253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210999, -0.307166, 0.927970,
		0.972199, -0.032659, -0.231866,
		0.101528, 0.951095, 0.291736,
		34.234913, 40.620216, 31.994774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697247, 39.850185, 31.400391>,  <34.163841, 39.954449, 31.790560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697247, 39.850185, 31.400391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996223, 39.604462, 31.299238>,  <35.175610, 39.457027, 31.238546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996223, 39.604462, 31.299238>,  <34.697247, 39.850185, 31.400391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996223, 39.604462, 31.299238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051111, 0.326357, -0.943864,
		0.662353, 0.718413, 0.212536,
		0.747446, -0.614308, -0.252883,
		35.220459, 39.420170, 31.223373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067921, 40.208897, 30.992760>,  <34.697247, 39.850185, 31.400391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067921, 40.208897, 30.992760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198441, 39.846725, 30.884142>,  <35.276752, 39.629425, 30.818972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198441, 39.846725, 30.884142>,  <35.067921, 40.208897, 30.992760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198441, 39.846725, 30.884142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042899, 0.272789, -0.961117,
		0.944292, 0.325261, 0.050170,
		0.326300, -0.905423, -0.271546,
		35.296329, 39.575100, 30.802679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533813, 40.314690, 30.411173>,  <35.067921, 40.208897, 30.992760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533813, 40.314690, 30.411173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433815, 39.927574, 30.399323>,  <35.373814, 39.695305, 30.392212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433815, 39.927574, 30.399323>,  <35.533813, 40.314690, 30.411173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433815, 39.927574, 30.399323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179666, 0.076433, -0.980754,
		0.951431, -0.239864, -0.192988,
		-0.249998, -0.967793, -0.029626,
		35.358814, 39.637238, 30.390434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007225, 39.994663, 29.878077>,  <35.533813, 40.314690, 30.411173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007225, 39.994663, 29.878077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687103, 39.763695, 29.942699>,  <35.495029, 39.625114, 29.981474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687103, 39.763695, 29.942699>,  <36.007225, 39.994663, 29.878077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687103, 39.763695, 29.942699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219334, 0.031153, -0.975152,
		0.558038, -0.815853, -0.151580,
		-0.800303, -0.577419, 0.161559,
		35.447014, 39.590469, 29.991167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049099, 39.463284, 29.359499>,  <36.007225, 39.994663, 29.878077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049099, 39.463284, 29.359499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663639, 39.515076, 29.452972>,  <35.432362, 39.546150, 29.509056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663639, 39.515076, 29.452972>,  <36.049099, 39.463284, 29.359499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663639, 39.515076, 29.452972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247870, -0.106978, -0.962869,
		-0.099619, -0.985802, 0.135171,
		-0.963658, 0.129425, 0.233693,
		35.374542, 39.553921, 29.523079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812683, 38.910748, 28.950211>,  <36.049099, 39.463284, 29.359499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812683, 38.910748, 28.950211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503231, 39.150558, 29.032246>,  <35.317558, 39.294445, 29.081467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503231, 39.150558, 29.032246>,  <35.812683, 38.910748, 28.950211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503231, 39.150558, 29.032246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309347, -0.074892, -0.947995,
		-0.552990, -0.796842, 0.243401,
		-0.773632, 0.599527, 0.205086,
		35.271141, 39.330418, 29.093771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239960, 38.614864, 28.444839>,  <35.812683, 38.910748, 28.950211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239960, 38.614864, 28.444839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093094, 38.968166, 28.561493>,  <35.004974, 39.180149, 28.631485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093094, 38.968166, 28.561493>,  <35.239960, 38.614864, 28.444839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093094, 38.968166, 28.561493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479479, 0.088945, -0.873034,
		-0.797051, -0.460380, 0.390845,
		-0.367164, 0.883255, 0.291636,
		34.982944, 39.233143, 28.648983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692364, 38.647312, 27.984871>,  <35.239960, 38.614864, 28.444839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692364, 38.647312, 27.984871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728626, 39.020927, 28.123066>,  <34.750385, 39.245094, 28.205982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728626, 39.020927, 28.123066>,  <34.692364, 38.647312, 27.984871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728626, 39.020927, 28.123066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301057, 0.356390, -0.884506,
		-0.949287, -0.023822, 0.313508,
		0.090661, 0.934034, 0.345488,
		34.755825, 39.301136, 28.226713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085995, 39.032379, 27.873184>,  <34.692364, 38.647312, 27.984871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085995, 39.032379, 27.873184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383804, 39.298149, 27.899185>,  <34.562492, 39.457611, 27.914785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383804, 39.298149, 27.899185>,  <34.085995, 39.032379, 27.873184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383804, 39.298149, 27.899185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255630, 0.373685, -0.891635,
		-0.616712, 0.647228, 0.448064,
		0.744526, 0.664421, 0.065005,
		34.607162, 39.497475, 27.918686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763161, 39.615005, 27.619642>,  <34.085995, 39.032379, 27.873184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763161, 39.615005, 27.619642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159878, 39.647369, 27.580042>,  <34.397907, 39.666786, 27.556282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159878, 39.647369, 27.580042>,  <33.763161, 39.615005, 27.619642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159878, 39.647369, 27.580042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126129, 0.492255, -0.861264,
		-0.020950, 0.866682, 0.498420,
		0.991793, 0.080909, -0.099001,
		34.457417, 39.671642, 27.550341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820415, 40.306923, 27.319033>,  <33.763161, 39.615005, 27.619642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820415, 40.306923, 27.319033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167286, 40.131126, 27.225359>,  <34.375408, 40.025646, 27.169155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167286, 40.131126, 27.225359>,  <33.820415, 40.306923, 27.319033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167286, 40.131126, 27.225359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030012, 0.515524, -0.856349,
		0.497089, 0.735581, 0.460243,
		0.867181, -0.439494, -0.234185,
		34.427441, 39.999279, 27.155104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347507, 40.779495, 27.163586>,  <33.820415, 40.306923, 27.319033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347507, 40.779495, 27.163586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456791, 40.448151, 26.967960>,  <34.522362, 40.249344, 26.850586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456791, 40.448151, 26.967960>,  <34.347507, 40.779495, 27.163586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456791, 40.448151, 26.967960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010663, 0.510980, -0.859526,
		0.961897, 0.229611, 0.148435,
		0.273204, -0.828358, -0.489062,
		34.538754, 40.199642, 26.821241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697826, 41.087105, 26.614683>,  <34.347507, 40.779495, 27.163586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697826, 41.087105, 26.614683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661602, 40.710747, 26.484140>,  <34.639866, 40.484932, 26.405815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661602, 40.710747, 26.484140>,  <34.697826, 41.087105, 26.614683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661602, 40.710747, 26.484140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059501, 0.332230, -0.941320,
		0.994112, -0.065830, -0.086073,
		-0.090563, -0.940899, -0.326356,
		34.634434, 40.428478, 26.386234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187286, 41.016186, 26.076530>,  <34.697826, 41.087105, 26.614683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187286, 41.016186, 26.076530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894279, 40.754559, 26.001043>,  <34.718475, 40.597580, 25.955751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894279, 40.754559, 26.001043>,  <35.187286, 41.016186, 26.076530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894279, 40.754559, 26.001043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066378, 0.207276, -0.976028,
		0.677509, -0.727480, -0.108416,
		-0.732513, -0.654071, -0.188720,
		34.674526, 40.558338, 25.944427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.211695, 38.115562, 27.898817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.505686, 38.386684, 27.906742>,  <27.682079, 38.549358, 27.911497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.505686, 38.386684, 27.906742>,  <27.211695, 38.115562, 27.898817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505686, 38.386684, 27.906742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354335, -0.408810, 0.841024,
		0.578148, -0.611112, -0.540635,
		0.734977, 0.677803, 0.019814,
		27.726179, 38.590027, 27.912687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808495, 37.718063, 27.899347>,  <27.211695, 38.115562, 27.898817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808495, 37.718063, 27.899347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.922689, 38.066818, 28.058502>,  <27.991205, 38.276070, 28.153996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.922689, 38.066818, 28.058502>,  <27.808495, 37.718063, 27.899347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922689, 38.066818, 28.058502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474826, -0.489308, 0.731518,
		0.832489, -0.019910, -0.553684,
		0.285486, 0.871884, 0.397889,
		28.008335, 38.328384, 28.177870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473303, 37.612568, 28.116079>,  <27.808495, 37.718063, 27.899347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473303, 37.612568, 28.116079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.357002, 37.928699, 28.331797>,  <28.287222, 38.118378, 28.461227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.357002, 37.928699, 28.331797>,  <28.473303, 37.612568, 28.116079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357002, 37.928699, 28.331797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509165, -0.349402, 0.786555,
		0.810070, 0.503282, -0.300820,
		-0.290752, 0.790332, 0.539294,
		28.269777, 38.165798, 28.493586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151833, 37.795597, 28.478226>,  <28.473303, 37.612568, 28.116079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151833, 37.795597, 28.478226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.844975, 37.972321, 28.664253>,  <28.660860, 38.078354, 28.775869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.844975, 37.972321, 28.664253>,  <29.151833, 37.795597, 28.478226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844975, 37.972321, 28.664253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405613, -0.227570, 0.885263,
		0.496955, 0.867764, -0.004625,
		-0.767146, 0.441812, 0.465069,
		28.614830, 38.104866, 28.803774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405935, 38.303680, 28.944859>,  <29.151833, 37.795597, 28.478226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405935, 38.303680, 28.944859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.049421, 38.221176, 29.106384>,  <28.835512, 38.171673, 29.203299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.049421, 38.221176, 29.106384>,  <29.405935, 38.303680, 28.944859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049421, 38.221176, 29.106384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434119, -0.130955, 0.891287,
		-0.130955, 0.969694, 0.206260,
		-0.891287, -0.206260, 0.403813,
		28.782036, 38.159298, 29.227528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498426, 38.509361, 29.588589>,  <29.405935, 38.303680, 28.944859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498426, 38.509361, 29.588589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.150215, 38.316174, 29.626364>,  <28.941288, 38.200260, 29.649029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.150215, 38.316174, 29.626364>,  <29.498426, 38.509361, 29.588589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150215, 38.316174, 29.626364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271992, -0.312272, 0.910223,
		-0.410120, 0.818062, 0.403207,
		-0.870530, -0.482970, 0.094438,
		28.889057, 38.171284, 29.654696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096102, 38.840660, 30.177641>,  <29.498426, 38.509361, 29.588589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096102, 38.840660, 30.177641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.997620, 38.460911, 30.099581>,  <28.938530, 38.233063, 30.052746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.997620, 38.460911, 30.099581>,  <29.096102, 38.840660, 30.177641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997620, 38.460911, 30.099581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192933, -0.245323, 0.950049,
		-0.949821, 0.196256, 0.243564,
		-0.246205, -0.949368, -0.195148,
		28.923758, 38.176102, 30.041037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670753, 38.626846, 30.771011>,  <29.096102, 38.840660, 30.177641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670753, 38.626846, 30.771011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.834717, 38.310474, 30.589285>,  <28.933094, 38.120651, 30.480249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.834717, 38.310474, 30.589285>,  <28.670753, 38.626846, 30.771011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834717, 38.310474, 30.589285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263274, -0.374293, 0.889152,
		-0.873307, -0.484079, 0.054807,
		0.409906, -0.790931, -0.454318,
		28.957689, 38.073196, 30.452990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585890, 38.137520, 31.356230>,  <28.670753, 38.626846, 30.771011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585890, 38.137520, 31.356230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.850754, 38.000694, 31.089535>,  <29.009672, 37.918598, 30.929518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.850754, 38.000694, 31.089535>,  <28.585890, 38.137520, 31.356230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850754, 38.000694, 31.089535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433723, -0.550618, 0.713235,
		-0.611088, -0.761455, -0.216236,
		0.662160, -0.342063, -0.666736,
		29.049402, 37.898075, 30.889513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591049, 37.431461, 31.409668>,  <28.585890, 38.137520, 31.356230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591049, 37.431461, 31.409668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.950916, 37.519196, 31.258678>,  <29.166838, 37.571835, 31.168085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.950916, 37.519196, 31.258678>,  <28.591049, 37.431461, 31.409668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950916, 37.519196, 31.258678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435446, -0.512871, 0.739831,
		-0.031323, -0.829973, -0.556924,
		0.899670, 0.219336, -0.377473,
		29.220818, 37.584995, 31.145437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963661, 36.787380, 31.413385>,  <28.591049, 37.431461, 31.409668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963661, 36.787380, 31.413385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.225849, 37.088425, 31.388283>,  <29.383162, 37.269051, 31.373220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.225849, 37.088425, 31.388283>,  <28.963661, 36.787380, 31.413385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225849, 37.088425, 31.388283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428060, -0.301776, 0.851878,
		0.622192, -0.585245, -0.519967,
		0.655471, 0.752608, -0.062758,
		29.422491, 37.314209, 31.369455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421822, 36.589489, 31.786188>,  <28.963661, 36.787380, 31.413385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421822, 36.589489, 31.786188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.555496, 36.962719, 31.732988>,  <29.635700, 37.186657, 31.701069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.555496, 36.962719, 31.732988>,  <29.421822, 36.589489, 31.786188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555496, 36.962719, 31.732988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503120, -0.057280, 0.862317,
		0.796988, -0.355091, -0.488591,
		0.334187, 0.933075, -0.133001,
		29.655752, 37.242641, 31.693089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056843, 36.509380, 31.826826>,  <29.421822, 36.589489, 31.786188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056843, 36.509380, 31.826826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.983866, 36.896637, 31.895428>,  <29.940079, 37.128990, 31.936588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.983866, 36.896637, 31.895428>,  <30.056843, 36.509380, 31.826826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983866, 36.896637, 31.895428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538842, -0.047450, 0.841070,
		0.822413, 0.245863, -0.513018,
		-0.182445, 0.968143, 0.171505,
		29.929132, 37.187080, 31.946878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684612, 36.669212, 32.025009>,  <30.056843, 36.509380, 31.826826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684612, 36.669212, 32.025009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.420155, 36.922157, 32.186508>,  <30.261478, 37.073925, 32.283405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.420155, 36.922157, 32.186508>,  <30.684612, 36.669212, 32.025009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420155, 36.922157, 32.186508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436778, -0.113127, 0.892428,
		0.610008, 0.766372, -0.201406,
		-0.661147, 0.632358, 0.403743,
		30.221811, 37.111866, 32.307632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446537, 36.831661, 31.944748>,  <30.684612, 36.669212, 32.025009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446537, 36.831661, 31.944748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.681774, 36.528923, 31.830667>,  <31.822916, 36.347282, 31.762220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.681774, 36.528923, 31.830667>,  <31.446537, 36.831661, 31.944748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681774, 36.528923, 31.830667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357948, 0.072656, -0.930911,
		0.725274, 0.649546, -0.228182,
		0.588091, -0.756843, -0.285199,
		31.858202, 36.301868, 31.745108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833838, 37.057285, 31.334093>,  <31.446537, 36.831661, 31.944748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833838, 37.057285, 31.334093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.875441, 36.660603, 31.303900>,  <31.900402, 36.422592, 31.285784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.875441, 36.660603, 31.303900>,  <31.833838, 37.057285, 31.334093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875441, 36.660603, 31.303900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168753, 0.057200, -0.983997,
		0.980156, 0.115080, -0.161405,
		0.104006, -0.991708, -0.075485,
		31.906643, 36.363091, 31.281254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349056, 36.933113, 30.805941>,  <31.833838, 37.057285, 31.334093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349056, 36.933113, 30.805941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.106358, 36.615200, 30.800547>,  <31.960739, 36.424454, 30.797310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.106358, 36.615200, 30.800547>,  <32.349056, 36.933113, 30.805941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106358, 36.615200, 30.800547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091984, 0.087054, -0.991948,
		0.789555, -0.600621, -0.125926,
		-0.606747, -0.794781, -0.013487,
		31.924334, 36.376766, 30.796501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509144, 36.552814, 30.189644>,  <32.349056, 36.933113, 30.805941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509144, 36.552814, 30.189644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.145630, 36.424850, 30.296803>,  <31.927523, 36.348072, 30.361097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.145630, 36.424850, 30.296803>,  <32.509144, 36.552814, 30.189644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145630, 36.424850, 30.296803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191944, -0.249557, -0.949146,
		0.370499, -0.913990, 0.165388,
		-0.908784, -0.319912, 0.267895,
		31.872995, 36.328876, 30.377171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509975, 35.827259, 29.986059>,  <32.509144, 36.552814, 30.189644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509975, 35.827259, 29.986059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.144920, 35.987808, 30.017038>,  <31.925888, 36.084137, 30.035625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.144920, 35.987808, 30.017038>,  <32.509975, 35.827259, 29.986059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144920, 35.987808, 30.017038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182652, -0.230906, -0.955678,
		-0.365706, -0.886328, 0.284044,
		-0.912632, 0.401379, 0.077446,
		31.871130, 36.108223, 30.040272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076172, 35.403458, 29.575783>,  <32.509975, 35.827259, 29.986059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076172, 35.403458, 29.575783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.856783, 35.733059, 29.632620>,  <31.725149, 35.930820, 29.666721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.856783, 35.733059, 29.632620>,  <32.076172, 35.403458, 29.575783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856783, 35.733059, 29.632620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445563, -0.144215, -0.883559,
		-0.707567, -0.547918, 0.446245,
		-0.548473, 0.824007, 0.142090,
		31.692242, 35.980263, 29.675247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436577, 35.281666, 29.124483>,  <32.076172, 35.403458, 29.575783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436577, 35.281666, 29.124483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.437672, 35.666370, 29.234028>,  <31.438328, 35.897194, 29.299755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.437672, 35.666370, 29.234028>,  <31.436577, 35.281666, 29.124483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437672, 35.666370, 29.234028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369085, 0.255498, -0.893587,
		-0.929392, -0.098635, 0.355672,
		0.002735, 0.961765, 0.273862,
		31.438492, 35.954899, 29.316187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887379, 35.468082, 28.854296>,  <31.436577, 35.281666, 29.124483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887379, 35.468082, 28.854296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.082188, 35.811825, 28.916674>,  <31.199074, 36.018070, 28.954102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.082188, 35.811825, 28.916674>,  <30.887379, 35.468082, 28.854296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082188, 35.811825, 28.916674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259570, 0.312901, -0.913629,
		-0.833926, 0.404479, 0.375452,
		0.487022, 0.859355, 0.155946,
		31.228294, 36.069630, 28.963457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391195, 35.963623, 28.798504>,  <30.887379, 35.468082, 28.854296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391195, 35.963623, 28.798504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.741604, 36.141525, 28.723909>,  <30.951849, 36.248268, 28.679153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.741604, 36.141525, 28.723909>,  <30.391195, 35.963623, 28.798504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741604, 36.141525, 28.723909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309833, 0.222694, -0.924343,
		-0.369578, 0.867525, 0.332885,
		0.876022, 0.444756, -0.186485,
		31.004410, 36.274952, 28.667963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240234, 36.621155, 28.573467>,  <30.391195, 35.963623, 28.798504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240234, 36.621155, 28.573467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.600403, 36.519367, 28.432335>,  <30.816504, 36.458294, 28.347654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.600403, 36.519367, 28.432335>,  <30.240234, 36.621155, 28.573467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600403, 36.519367, 28.432335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284694, 0.268568, -0.920229,
		0.328929, 0.929041, 0.169379,
		0.900420, -0.254469, -0.352832,
		30.870529, 36.443027, 28.326485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423048, 37.248894, 28.159805>,  <30.240234, 36.621155, 28.573467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423048, 37.248894, 28.159805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.622303, 36.925224, 28.035168>,  <30.741856, 36.731022, 27.960386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.622303, 36.925224, 28.035168>,  <30.423048, 37.248894, 28.159805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622303, 36.925224, 28.035168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096401, 0.305442, -0.947318,
		0.861722, 0.501933, 0.074147,
		0.498138, -0.809177, -0.311593,
		30.771744, 36.682472, 27.941690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010862, 37.437077, 27.811348>,  <30.423048, 37.248894, 28.159805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010862, 37.437077, 27.811348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.892851, 37.078300, 27.679619>,  <30.822044, 36.863033, 27.600582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.892851, 37.078300, 27.679619>,  <31.010862, 37.437077, 27.811348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892851, 37.078300, 27.679619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023311, 0.337805, -0.940928,
		0.955203, -0.285279, -0.078754,
		-0.295031, -0.896941, -0.329322,
		30.804342, 36.809219, 27.580822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321829, 37.391533, 27.121117>,  <31.010862, 37.437077, 27.811348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321829, 37.391533, 27.121117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.082335, 37.071255, 27.113096>,  <30.938637, 36.879089, 27.108284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.082335, 37.071255, 27.113096>,  <31.321829, 37.391533, 27.121117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082335, 37.071255, 27.113096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247507, 0.208774, -0.946126,
		0.761745, -0.561516, -0.323179,
		-0.598736, -0.800695, -0.020053,
		30.902714, 36.831047, 27.107080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401108, 37.125919, 26.460499>,  <31.321829, 37.391533, 27.121117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401108, 37.125919, 26.460499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.050081, 36.985737, 26.591375>,  <30.839464, 36.901627, 26.669901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.050081, 36.985737, 26.591375>,  <31.401108, 37.125919, 26.460499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050081, 36.985737, 26.591375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425005, 0.252756, -0.869187,
		0.221914, -0.901828, -0.370757,
		-0.877567, -0.350458, 0.327191,
		30.786812, 36.880600, 26.689533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762352, 36.743214, 25.936930>,  <31.401108, 37.125919, 26.460499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762352, 36.743214, 25.936930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.116112, 36.847553, 25.782116>,  <32.328369, 36.910156, 25.689228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.116112, 36.847553, 25.782116>,  <31.762352, 36.743214, 25.936930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116112, 36.847553, 25.782116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442239, -0.733432, 0.516239,
		-0.149205, -0.627724, -0.764003,
		0.884400, 0.260846, -0.387036,
		32.381432, 36.925808, 25.666006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111588, 36.166470, 25.676432>,  <31.762352, 36.743214, 25.936930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111588, 36.166470, 25.676432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.395046, 36.431412, 25.773678>,  <32.565121, 36.590378, 25.832026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.395046, 36.431412, 25.773678>,  <32.111588, 36.166470, 25.676432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395046, 36.431412, 25.773678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513290, -0.720373, 0.466472,
		0.484106, -0.205773, -0.850470,
		0.708643, 0.662360, 0.243115,
		32.607639, 36.630119, 25.846613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744881, 35.850311, 25.587811>,  <32.111588, 36.166470, 25.676432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744881, 35.850311, 25.587811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.844833, 36.148380, 25.835125>,  <32.904804, 36.327221, 25.983513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.844833, 36.148380, 25.835125>,  <32.744881, 35.850311, 25.587811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844833, 36.148380, 25.835125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494897, -0.647125, 0.579919,
		0.832248, 0.161077, -0.530488,
		0.249881, 0.745173, 0.618285,
		32.919796, 36.371933, 26.020611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454243, 35.797970, 25.802538>,  <32.744881, 35.850311, 25.587811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454243, 35.797970, 25.802538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.351452, 36.059929, 26.086811>,  <33.289776, 36.217106, 26.257376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.351452, 36.059929, 26.086811>,  <33.454243, 35.797970, 25.802538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351452, 36.059929, 26.086811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603465, -0.465646, 0.647305,
		0.754845, 0.595217, -0.275546,
		-0.256980, 0.654898, 0.710683,
		33.274357, 36.256397, 26.300016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185486, 35.971397, 26.157116>,  <33.454243, 35.797970, 25.802538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185486, 35.971397, 26.157116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.861637, 36.033081, 26.383650>,  <33.667328, 36.070091, 26.519571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.861637, 36.033081, 26.383650>,  <34.185486, 35.971397, 26.157116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861637, 36.033081, 26.383650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478517, -0.385355, 0.789001,
		0.339908, 0.909793, 0.238201,
		-0.809620, 0.154204, 0.566336,
		33.618752, 36.079342, 26.553551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486225, 35.977261, 26.834377>,  <34.185486, 35.971397, 26.157116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486225, 35.977261, 26.834377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.102016, 35.944271, 26.940664>,  <33.871490, 35.924477, 27.004436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.102016, 35.944271, 26.940664>,  <34.486225, 35.977261, 26.834377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102016, 35.944271, 26.940664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276885, -0.376812, 0.883938,
		0.027228, 0.922611, 0.384769,
		-0.960517, -0.082469, 0.265717,
		33.813862, 35.919529, 27.020380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415871, 36.202160, 27.531275>,  <34.486225, 35.977261, 26.834377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415871, 36.202160, 27.531275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.127914, 35.933178, 27.462500>,  <33.955139, 35.771790, 27.421234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.127914, 35.933178, 27.462500>,  <34.415871, 36.202160, 27.531275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127914, 35.933178, 27.462500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216394, -0.452812, 0.864948,
		-0.659494, 0.585461, 0.471490,
		-0.719890, -0.672456, -0.171937,
		33.911949, 35.731441, 27.410919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943668, 36.177242, 28.076954>,  <34.415871, 36.202160, 27.531275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943668, 36.177242, 28.076954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.936920, 35.817966, 27.901237>,  <33.932869, 35.602402, 27.795807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.936920, 35.817966, 27.901237>,  <33.943668, 36.177242, 28.076954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936920, 35.817966, 27.901237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169724, -0.435551, 0.884019,
		-0.985347, -0.059642, 0.159793,
		-0.016873, -0.898186, -0.439291,
		33.931858, 35.548512, 27.769449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509487, 35.652084, 28.514791>,  <33.943668, 36.177242, 28.076954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509487, 35.652084, 28.514791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767944, 35.466846, 28.272127>,  <33.923019, 35.355701, 28.126530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767944, 35.466846, 28.272127>,  <33.509487, 35.652084, 28.514791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767944, 35.466846, 28.272127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425858, -0.440866, 0.790115,
		-0.633356, -0.768881, -0.087650,
		0.646146, -0.463098, -0.606659,
		33.961788, 35.327919, 28.090130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640068, 34.916466, 28.786381>,  <33.509487, 35.652084, 28.514791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640068, 34.916466, 28.786381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.940987, 35.022533, 28.545141>,  <34.121540, 35.086174, 28.400398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.940987, 35.022533, 28.545141>,  <33.640068, 34.916466, 28.786381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940987, 35.022533, 28.545141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656937, -0.232778, 0.717111,
		0.049771, -0.935680, -0.349321,
		0.752301, 0.265173, -0.603098,
		34.166676, 35.102085, 28.364212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182457, 34.341335, 28.852179>,  <33.640068, 34.916466, 28.786381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182457, 34.341335, 28.852179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.364048, 34.664928, 28.702806>,  <34.473003, 34.859085, 28.613182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.364048, 34.664928, 28.702806>,  <34.182457, 34.341335, 28.852179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364048, 34.664928, 28.702806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821683, -0.218031, 0.526592,
		0.344583, -0.545906, -0.763708,
		0.453982, 0.808980, -0.373432,
		34.500244, 34.907623, 28.590776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840080, 34.096012, 28.869785>,  <34.182457, 34.341335, 28.852179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840080, 34.096012, 28.869785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904053, 34.490578, 28.854736>,  <34.942436, 34.727318, 28.845707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904053, 34.490578, 28.854736>,  <34.840080, 34.096012, 28.869785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904053, 34.490578, 28.854736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670419, -0.080566, 0.737595,
		0.724541, -0.143185, -0.674194,
		0.159930, 0.986411, -0.037621,
		34.952030, 34.786503, 28.843451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614239, 34.206287, 28.925274>,  <34.840080, 34.096012, 28.869785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614239, 34.206287, 28.925274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474373, 34.571362, 29.009876>,  <35.390453, 34.790405, 29.060638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474373, 34.571362, 29.009876>,  <35.614239, 34.206287, 28.925274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474373, 34.571362, 29.009876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625319, 0.059250, 0.778117,
		0.697645, 0.404342, -0.591438,
		-0.349668, 0.912686, 0.211507,
		35.369473, 34.845169, 29.073328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323402, 34.716644, 29.068438>,  <35.614239, 34.206287, 28.925274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323402, 34.716644, 29.068438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.982006, 34.838516, 29.237537>,  <35.777168, 34.911640, 29.338997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.982006, 34.838516, 29.237537>,  <36.323402, 34.716644, 29.068438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982006, 34.838516, 29.237537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474127, 0.117438, 0.872589,
		0.216215, 0.945187, -0.244690,
		-0.853495, 0.304681, 0.422747,
		35.725956, 34.929920, 29.364361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.503471, 40.148865, 25.144800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120392, 40.136951, 25.259285>,  <34.890545, 40.129803, 25.327976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120392, 40.136951, 25.259285>,  <35.503471, 40.148865, 25.144800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120392, 40.136951, 25.259285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284666, -0.047345, -0.957457,
		0.042071, -0.998434, 0.036863,
		-0.957703, -0.029787, 0.286212,
		34.833080, 40.128017, 25.345148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124054, 39.646698, 24.740967>,  <35.503471, 40.148865, 25.144800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124054, 39.646698, 24.740967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.843910, 39.893066, 24.885265>,  <34.675823, 40.040886, 24.971846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.843910, 39.893066, 24.885265>,  <35.124054, 39.646698, 24.740967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843910, 39.893066, 24.885265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445999, 0.016990, -0.894872,
		-0.557299, -0.787625, 0.262801,
		-0.700359, 0.615920, 0.360749,
		34.633801, 40.077843, 24.993490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492893, 39.426395, 24.457529>,  <35.124054, 39.646698, 24.740967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492893, 39.426395, 24.457529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.387653, 39.791515, 24.582474>,  <34.324509, 40.010590, 24.657440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.387653, 39.791515, 24.582474>,  <34.492893, 39.426395, 24.457529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387653, 39.791515, 24.582474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646767, 0.073361, -0.759151,
		-0.715870, -0.401759, 0.571069,
		-0.263101, 0.912802, 0.312361,
		34.308723, 40.065357, 24.676182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757706, 39.490837, 24.570953>,  <34.492893, 39.426395, 24.457529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757706, 39.490837, 24.570953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.886509, 39.863338, 24.502745>,  <33.963791, 40.086838, 24.461821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.886509, 39.863338, 24.502745>,  <33.757706, 39.490837, 24.570953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886509, 39.863338, 24.502745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643759, 0.083314, -0.760680,
		-0.694179, 0.354720, 0.626330,
		0.322010, 0.931253, -0.170519,
		33.983112, 40.142715, 24.451590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313866, 39.824440, 24.152760>,  <33.757706, 39.490837, 24.570953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313866, 39.824440, 24.152760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590363, 40.109081, 24.102486>,  <33.756260, 40.279865, 24.072321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590363, 40.109081, 24.102486>,  <33.313866, 39.824440, 24.152760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590363, 40.109081, 24.102486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502317, 0.348152, -0.791497,
		-0.519477, 0.610252, 0.598110,
		0.691246, 0.711606, -0.125683,
		33.797737, 40.322563, 24.064781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961113, 40.429409, 24.211239>,  <33.313866, 39.824440, 24.152760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961113, 40.429409, 24.211239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.295677, 40.446617, 23.992676>,  <33.496418, 40.456944, 23.861538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.295677, 40.446617, 23.992676>,  <32.961113, 40.429409, 24.211239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295677, 40.446617, 23.992676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533159, 0.295031, -0.792905,
		0.127094, 0.954519, 0.269706,
		0.836414, 0.043023, -0.546407,
		33.546600, 40.459522, 23.828754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045135, 41.025646, 24.007330>,  <32.961113, 40.429409, 24.211239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045135, 41.025646, 24.007330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.273293, 40.826195, 23.746250>,  <33.410187, 40.706524, 23.589603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.273293, 40.826195, 23.746250>,  <33.045135, 41.025646, 24.007330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273293, 40.826195, 23.746250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547973, 0.360939, -0.754618,
		0.611861, 0.788092, -0.067359,
		0.570396, -0.498633, -0.652698,
		33.444412, 40.676605, 23.550442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195595, 41.505787, 23.503901>,  <33.045135, 41.025646, 24.007330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195595, 41.505787, 23.503901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.274403, 41.152180, 23.334335>,  <33.321686, 40.940018, 23.232595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.274403, 41.152180, 23.334335>,  <33.195595, 41.505787, 23.503901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274403, 41.152180, 23.334335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499241, 0.281666, -0.819403,
		0.843766, 0.373075, -0.385842,
		0.197020, -0.884013, -0.423915,
		33.333508, 40.886974, 23.207161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532692, 41.664001, 22.943153>,  <33.195595, 41.505787, 23.503901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532692, 41.664001, 22.943153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.433453, 41.283798, 22.868349>,  <33.373909, 41.055676, 22.823467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.433453, 41.283798, 22.868349>,  <33.532692, 41.664001, 22.943153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433453, 41.283798, 22.868349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316138, 0.261919, -0.911842,
		0.915698, -0.167109, -0.365475,
		-0.248102, -0.950512, -0.187009,
		33.359020, 40.998646, 22.812246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743370, 41.500629, 22.265087>,  <33.532692, 41.664001, 22.943153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743370, 41.500629, 22.265087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477882, 41.219200, 22.366648>,  <33.318592, 41.050343, 22.427584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477882, 41.219200, 22.366648>,  <33.743370, 41.500629, 22.265087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477882, 41.219200, 22.366648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502745, 0.168280, -0.847897,
		0.553830, -0.690411, -0.465408,
		-0.663716, -0.703573, 0.253902,
		33.278767, 41.008129, 22.442818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809559, 41.014462, 21.819775>,  <33.743370, 41.500629, 22.265087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809559, 41.014462, 21.819775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.436451, 40.995655, 21.962730>,  <33.212585, 40.984371, 22.048504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.436451, 40.995655, 21.962730>,  <33.809559, 41.014462, 21.819775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436451, 40.995655, 21.962730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359793, 0.182026, -0.915104,
		-0.022034, -0.982169, -0.186703,
		-0.932772, -0.047011, 0.357389,
		33.156620, 40.981552, 22.069946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366604, 40.643005, 21.214584>,  <33.809559, 41.014462, 21.819775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366604, 40.643005, 21.214584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.103081, 40.815639, 21.461065>,  <32.944965, 40.919220, 21.608953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.103081, 40.815639, 21.461065>,  <33.366604, 40.643005, 21.214584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103081, 40.815639, 21.461065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562574, 0.261188, -0.784405,
		-0.499482, -0.863432, 0.070726,
		-0.658808, 0.431585, 0.616203,
		32.905437, 40.945114, 21.645926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748039, 40.518761, 20.993105>,  <33.366604, 40.643005, 21.214584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748039, 40.518761, 20.993105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.639797, 40.845490, 21.196901>,  <32.574852, 41.041527, 21.319180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.639797, 40.845490, 21.196901>,  <32.748039, 40.518761, 20.993105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639797, 40.845490, 21.196901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655532, 0.231233, -0.718894,
		-0.705016, -0.528526, 0.472877,
		-0.270610, 0.816818, 0.509489,
		32.558613, 41.090534, 21.349749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203835, 40.102123, 20.725407>,  <32.748039, 40.518761, 20.993105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203835, 40.102123, 20.725407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.808577, 40.131073, 20.779558>,  <31.571421, 40.148445, 20.812050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.808577, 40.131073, 20.779558>,  <32.203835, 40.102123, 20.725407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808577, 40.131073, 20.779558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043749, -0.712542, 0.700264,
		0.147147, 0.697886, 0.700930,
		-0.988147, 0.072377, 0.135380,
		31.512133, 40.152786, 20.820171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161324, 40.124683, 21.399136>,  <32.203835, 40.102123, 20.725407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161324, 40.124683, 21.399136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.800861, 40.020115, 21.260815>,  <31.584583, 39.957375, 21.177822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.800861, 40.020115, 21.260815>,  <32.161324, 40.124683, 21.399136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800861, 40.020115, 21.260815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066398, -0.705057, 0.706035,
		-0.428381, 0.659208, 0.618009,
		-0.901155, -0.261418, -0.345803,
		31.530516, 39.941689, 21.157074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627539, 40.260056, 21.903978>,  <32.161324, 40.124683, 21.399136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627539, 40.260056, 21.903978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.521364, 39.952454, 21.671366>,  <31.457659, 39.767895, 21.531797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.521364, 39.952454, 21.671366>,  <31.627539, 40.260056, 21.903978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521364, 39.952454, 21.671366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075763, -0.617942, 0.782565,
		-0.961147, 0.163663, 0.222287,
		-0.265437, -0.769001, -0.581533,
		31.441732, 39.721752, 21.496906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220669, 39.993557, 22.322495>,  <31.627539, 40.260056, 21.903978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220669, 39.993557, 22.322495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.330767, 39.702049, 22.071693>,  <31.396826, 39.527145, 21.921213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.330767, 39.702049, 22.071693>,  <31.220669, 39.993557, 22.322495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330767, 39.702049, 22.071693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096403, -0.627983, 0.772233,
		-0.956529, -0.272997, -0.102593,
		0.275244, -0.728773, -0.627001,
		31.413340, 39.483418, 21.883593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689335, 39.353016, 22.394747>,  <31.220669, 39.993557, 22.322495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689335, 39.353016, 22.394747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.036394, 39.221191, 22.245846>,  <31.244631, 39.142097, 22.156506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.036394, 39.221191, 22.245846>,  <30.689335, 39.353016, 22.394747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036394, 39.221191, 22.245846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019385, -0.725743, 0.687693,
		-0.496797, -0.603893, -0.623303,
		0.867650, -0.329561, -0.372254,
		31.296690, 39.122322, 22.134171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681864, 38.664711, 22.571190>,  <30.689335, 39.353016, 22.394747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681864, 38.664711, 22.571190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.063829, 38.725811, 22.469362>,  <31.293009, 38.762470, 22.408266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.063829, 38.725811, 22.469362>,  <30.681864, 38.664711, 22.571190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063829, 38.725811, 22.469362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273687, -0.785186, 0.555498,
		-0.115031, -0.600126, -0.791592,
		0.954915, 0.152749, -0.254568,
		31.350304, 38.771637, 22.392992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847424, 38.011944, 22.390825>,  <30.681864, 38.664711, 22.571190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847424, 38.011944, 22.390825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.186584, 38.218422, 22.439167>,  <31.390081, 38.342308, 22.468172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.186584, 38.218422, 22.439167>,  <30.847424, 38.011944, 22.390825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186584, 38.218422, 22.439167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341390, -0.706035, 0.620457,
		0.405603, -0.484829, -0.774872,
		0.847903, 0.516193, 0.120854,
		31.440956, 38.373280, 22.475424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473225, 37.501778, 22.328718>,  <30.847424, 38.011944, 22.390825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473225, 37.501778, 22.328718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.599785, 37.825378, 22.526871>,  <31.675722, 38.019539, 22.645761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.599785, 37.825378, 22.526871>,  <31.473225, 37.501778, 22.328718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599785, 37.825378, 22.526871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364193, -0.585783, 0.724031,
		0.875930, -0.048670, -0.479977,
		0.316401, 0.809005, 0.495380,
		31.694706, 38.068081, 22.675486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127415, 37.307125, 22.578955>,  <31.473225, 37.501778, 22.328718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127415, 37.307125, 22.578955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018150, 37.626892, 22.792986>,  <31.952593, 37.818752, 22.921406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018150, 37.626892, 22.792986>,  <32.127415, 37.307125, 22.578955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018150, 37.626892, 22.792986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313551, -0.451867, 0.835166,
		0.909434, 0.395909, -0.127227,
		-0.273160, 0.799420, 0.535080,
		31.936203, 37.866718, 22.953510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708397, 37.515251, 22.876698>,  <32.127415, 37.307125, 22.578955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708397, 37.515251, 22.876698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407230, 37.646160, 23.105087>,  <32.226532, 37.724705, 23.242121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407230, 37.646160, 23.105087>,  <32.708397, 37.515251, 22.876698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407230, 37.646160, 23.105087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502428, -0.274525, 0.819879,
		0.425067, 0.904175, 0.042266,
		-0.752917, 0.327268, 0.570974,
		32.181355, 37.744339, 23.276379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970181, 37.950432, 23.465105>,  <32.708397, 37.515251, 22.876698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970181, 37.950432, 23.465105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.608410, 37.825832, 23.581717>,  <32.391350, 37.751072, 23.651684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.608410, 37.825832, 23.581717>,  <32.970181, 37.950432, 23.465105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608410, 37.825832, 23.581717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401298, -0.389139, 0.829175,
		-0.144842, 0.866914, 0.476949,
		-0.904423, -0.311498, 0.291527,
		32.337082, 37.732384, 23.669174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903645, 38.184093, 24.187971>,  <32.970181, 37.950432, 23.465105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903645, 38.184093, 24.187971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.595066, 37.930607, 24.165056>,  <32.409920, 37.778515, 24.151306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.595066, 37.930607, 24.165056>,  <32.903645, 38.184093, 24.187971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595066, 37.930607, 24.165056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190205, -0.315585, 0.929639,
		-0.607205, 0.706266, 0.363991,
		-0.771443, -0.633715, -0.057289,
		32.363632, 37.740494, 24.147869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465458, 38.306885, 24.847691>,  <32.903645, 38.184093, 24.187971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465458, 38.306885, 24.847691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.324024, 37.954170, 24.722839>,  <32.239166, 37.742542, 24.647928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.324024, 37.954170, 24.722839>,  <32.465458, 38.306885, 24.847691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324024, 37.954170, 24.722839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002480, -0.334567, 0.942369,
		-0.935400, 0.332431, 0.120484,
		-0.353583, -0.881790, -0.312130,
		32.217949, 37.689632, 24.629200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889502, 38.083652, 25.306627>,  <32.465458, 38.306885, 24.847691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889502, 38.083652, 25.306627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.060795, 37.768047, 25.130411>,  <32.163570, 37.578686, 25.024681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.060795, 37.768047, 25.130411>,  <31.889502, 38.083652, 25.306627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060795, 37.768047, 25.130411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078411, -0.518107, 0.851714,
		-0.900261, -0.330187, -0.283737,
		0.428231, -0.789013, -0.440541,
		32.189262, 37.531342, 24.998249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654455, 37.480976, 25.699560>,  <31.889502, 38.083652, 25.306627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654455, 37.480976, 25.699560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.989126, 37.347565, 25.525789>,  <32.189930, 37.267517, 25.421526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.989126, 37.347565, 25.525789>,  <31.654455, 37.480976, 25.699560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989126, 37.347565, 25.525789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334575, -0.316745, 0.887543,
		-0.433624, -0.887937, -0.153424,
		0.836678, -0.333528, -0.434429,
		32.240131, 37.247505, 25.395460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068754, 36.987576, 25.796965>,  <31.654455, 37.480976, 25.699560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068754, 36.987576, 25.796965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.767166, 37.022186, 26.057438>,  <30.586212, 37.042953, 26.213722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.767166, 37.022186, 26.057438>,  <31.068754, 36.987576, 25.796965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767166, 37.022186, 26.057438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574515, 0.393807, -0.717530,
		-0.318526, -0.915112, -0.247208,
		-0.753973, 0.086527, 0.651183,
		30.540974, 37.048145, 26.252792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476448, 36.672005, 25.437355>,  <31.068754, 36.987576, 25.796965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476448, 36.672005, 25.437355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.342884, 36.910095, 25.729715>,  <30.262747, 37.052948, 25.905130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.342884, 36.910095, 25.729715>,  <30.476448, 36.672005, 25.437355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342884, 36.910095, 25.729715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677580, 0.387474, -0.625099,
		-0.655279, -0.703968, 0.273932,
		-0.333908, 0.595225, 0.730898,
		30.242712, 37.088661, 25.948984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650753, 36.731770, 25.265308>,  <30.476448, 36.672005, 25.437355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650753, 36.731770, 25.265308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.721914, 37.018410, 25.535074>,  <29.764610, 37.190395, 25.696934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.721914, 37.018410, 25.535074>,  <29.650753, 36.731770, 25.265308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721914, 37.018410, 25.535074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612033, 0.617239, -0.494400,
		-0.770562, -0.324810, 0.548391,
		0.177902, 0.716599, 0.674415,
		29.775286, 37.233391, 25.737398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011761, 37.097397, 25.399948>,  <29.650753, 36.731770, 25.265308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011761, 37.097397, 25.399948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.308111, 37.351902, 25.485992>,  <29.485922, 37.504604, 25.537621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.308111, 37.351902, 25.485992>,  <29.011761, 37.097397, 25.399948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308111, 37.351902, 25.485992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425376, 0.692362, -0.582830,
		-0.519770, 0.340299, 0.783604,
		0.740874, 0.636264, 0.215113,
		29.530373, 37.542782, 25.550526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678591, 37.610584, 25.647837>,  <29.011761, 37.097397, 25.399948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678591, 37.610584, 25.647837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.034094, 37.785515, 25.592913>,  <29.247396, 37.890472, 25.559958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.034094, 37.785515, 25.592913>,  <28.678591, 37.610584, 25.647837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034094, 37.785515, 25.592913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433439, 0.704359, -0.562147,
		-0.149125, 0.559130, 0.815559,
		0.888759, 0.437325, -0.137311,
		29.300722, 37.916714, 25.551720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617302, 38.422245, 25.777273>,  <28.678591, 37.610584, 25.647837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617302, 38.422245, 25.777273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.929058, 38.354557, 25.535971>,  <29.116112, 38.313942, 25.391190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.929058, 38.354557, 25.535971>,  <28.617302, 38.422245, 25.777273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929058, 38.354557, 25.535971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449277, 0.520141, -0.726364,
		0.436695, 0.837148, 0.329363,
		0.779389, -0.169224, -0.603254,
		29.162874, 38.303791, 25.354994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634026, 38.989769, 25.451910>,  <28.617302, 38.422245, 25.777273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634026, 38.989769, 25.451910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.843466, 38.745270, 25.214520>,  <28.969130, 38.598568, 25.072084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.843466, 38.745270, 25.214520>,  <28.634026, 38.989769, 25.451910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843466, 38.745270, 25.214520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422244, 0.418843, -0.803916,
		0.739968, 0.671522, -0.038791,
		0.523600, -0.611251, -0.593477,
		29.000546, 38.561893, 25.036476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642979, 39.801350, 25.412853>,  <28.634026, 38.989769, 25.451910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642979, 39.801350, 25.412853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.271751, 39.950310, 25.412054>,  <28.049015, 40.039688, 25.411573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.271751, 39.950310, 25.412054>,  <28.642979, 39.801350, 25.412853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271751, 39.950310, 25.412054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109475, -0.267684, 0.957267,
		0.355954, 0.888629, 0.289198,
		-0.928069, 0.372403, -0.002000,
		27.993330, 40.062031, 25.411453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665556, 40.229279, 25.975103>,  <28.642979, 39.801350, 25.412853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665556, 40.229279, 25.975103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.280468, 40.133671, 25.924446>,  <28.049416, 40.076305, 25.894053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.280468, 40.133671, 25.924446>,  <28.665556, 40.229279, 25.975103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280468, 40.133671, 25.924446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100701, -0.117833, 0.987914,
		-0.251050, 0.963840, 0.089371,
		-0.962722, -0.239016, -0.126642,
		27.991652, 40.061966, 25.886454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309784, 40.470062, 26.560028>,  <28.665556, 40.229279, 25.975103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309784, 40.470062, 26.560028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.057264, 40.190063, 26.426483>,  <27.905752, 40.022064, 26.346355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.057264, 40.190063, 26.426483>,  <28.309784, 40.470062, 26.560028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057264, 40.190063, 26.426483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095994, -0.356649, 0.929293,
		-0.769577, 0.618710, 0.157956,
		-0.631298, -0.700000, -0.333862,
		27.867874, 39.980064, 26.326324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958111, 40.328140, 27.086765>,  <28.309784, 40.470062, 26.560028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958111, 40.328140, 27.086765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.861868, 40.010929, 26.862906>,  <27.804121, 39.820602, 26.728590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.861868, 40.010929, 26.862906>,  <27.958111, 40.328140, 27.086765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861868, 40.010929, 26.862906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119195, -0.548084, 0.827886,
		-0.963276, 0.265904, 0.037348,
		-0.240609, -0.793031, -0.559651,
		27.789686, 39.773018, 26.695011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343513, 40.078682, 27.430220>,  <27.958111, 40.328140, 27.086765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343513, 40.078682, 27.430220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.489597, 39.789864, 27.195181>,  <27.577248, 39.616573, 27.054157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.489597, 39.789864, 27.195181>,  <27.343513, 40.078682, 27.430220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489597, 39.789864, 27.195181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090589, -0.655764, 0.749511,
		-0.926508, -0.220497, -0.304900,
		0.365207, -0.722049, -0.587596,
		27.599159, 39.573250, 27.018902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913462, 39.433296, 27.501129>,  <27.343513, 40.078682, 27.430220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913462, 39.433296, 27.501129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.271471, 39.318439, 27.364611>,  <27.486277, 39.249527, 27.282700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.271471, 39.318439, 27.364611>,  <26.913462, 39.433296, 27.501129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271471, 39.318439, 27.364611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101906, -0.613315, 0.783236,
		-0.434222, -0.735795, -0.519670,
		0.895023, -0.287141, -0.341297,
		27.539978, 39.232296, 27.262222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918945, 38.814224, 27.758356>,  <26.913462, 39.433296, 27.501129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918945, 38.814224, 27.758356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.304893, 38.890274, 27.685831>,  <27.536463, 38.935905, 27.642317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.304893, 38.890274, 27.685831>,  <26.918945, 38.814224, 27.758356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304893, 38.890274, 27.685831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260242, -0.597129, 0.758757,
		0.035992, -0.779288, -0.625631,
		0.964872, 0.190125, -0.181311,
		27.594355, 38.947311, 27.631437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.507589, 42.963200, 23.262220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683317, 42.717888, 22.999653>,  <30.788754, 42.570702, 22.842113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683317, 42.717888, 22.999653>,  <30.507589, 42.963200, 23.262220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683317, 42.717888, 22.999653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353776, -0.553545, 0.753943,
		-0.825737, -0.563445, -0.026217,
		0.439318, -0.613284, -0.656417,
		30.815113, 42.533901, 22.802729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198023, 42.229351, 23.346573>,  <30.507589, 42.963200, 23.262220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198023, 42.229351, 23.346573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.562870, 42.207108, 23.184118>,  <30.781778, 42.193760, 23.086645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.562870, 42.207108, 23.184118>,  <30.198023, 42.229351, 23.346573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562870, 42.207108, 23.184118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319066, -0.525720, 0.788553,
		-0.257367, -0.848838, -0.461775,
		0.912118, -0.055611, -0.406138,
		30.836506, 42.190426, 23.062277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357597, 41.674271, 23.677282>,  <30.198023, 42.229351, 23.346573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357597, 41.674271, 23.677282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.705061, 41.775936, 23.507183>,  <30.913538, 41.836937, 23.405125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.705061, 41.775936, 23.507183>,  <30.357597, 41.674271, 23.677282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705061, 41.775936, 23.507183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494633, -0.396803, 0.773230,
		0.027790, -0.882013, -0.470405,
		0.868657, 0.254166, -0.425246,
		30.965658, 41.852184, 23.379610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866413, 40.975216, 23.603283>,  <30.357597, 41.674271, 23.677282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866413, 40.975216, 23.603283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.046000, 41.331795, 23.627810>,  <31.153751, 41.545742, 23.642525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.046000, 41.331795, 23.627810>,  <30.866413, 40.975216, 23.603283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046000, 41.331795, 23.627810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402722, -0.263127, 0.876687,
		0.797650, -0.368908, -0.477138,
		0.448965, 0.891443, 0.061316,
		31.180689, 41.599228, 23.646204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572433, 40.891460, 23.923370>,  <30.866413, 40.975216, 23.603283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572433, 40.891460, 23.923370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.506678, 41.283672, 23.966349>,  <31.467224, 41.518997, 23.992136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.506678, 41.283672, 23.966349>,  <31.572433, 40.891460, 23.923370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506678, 41.283672, 23.966349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465426, -0.018934, 0.884885,
		0.869686, 0.195475, -0.453249,
		-0.164391, 0.980526, 0.107445,
		31.457359, 41.577831, 23.998583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207882, 41.222412, 24.185516>,  <31.572433, 40.891460, 23.923370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207882, 41.222412, 24.185516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.915260, 41.468513, 24.303017>,  <31.739687, 41.616173, 24.373516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.915260, 41.468513, 24.303017>,  <32.207882, 41.222412, 24.185516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915260, 41.468513, 24.303017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463211, 0.132386, 0.876305,
		0.500259, 0.777135, -0.381839,
		-0.731558, 0.615252, 0.293750,
		31.695793, 41.653088, 24.391142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538116, 41.439171, 24.705942>,  <32.207882, 41.222412, 24.185516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538116, 41.439171, 24.705942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.182224, 41.610844, 24.768145>,  <31.968689, 41.713848, 24.805466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.182224, 41.610844, 24.768145>,  <32.538116, 41.439171, 24.705942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182224, 41.610844, 24.768145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225528, 0.117099, 0.967174,
		0.396883, 0.895596, -0.200979,
		-0.889731, 0.429181, 0.155507,
		31.915304, 41.739597, 24.814796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643906, 42.001831, 25.077427>,  <32.538116, 41.439171, 24.705942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643906, 42.001831, 25.077427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.252102, 41.946522, 25.135990>,  <32.017017, 41.913338, 25.171129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.252102, 41.946522, 25.135990>,  <32.643906, 42.001831, 25.077427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252102, 41.946522, 25.135990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160365, -0.095812, 0.982396,
		-0.121808, 0.985749, 0.116023,
		-0.979513, -0.138270, 0.146409,
		31.958248, 41.905041, 25.179913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441231, 42.444168, 25.596478>,  <32.643906, 42.001831, 25.077427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441231, 42.444168, 25.596478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.140381, 42.181469, 25.618328>,  <31.959871, 42.023849, 25.631439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.140381, 42.181469, 25.618328>,  <32.441231, 42.444168, 25.596478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140381, 42.181469, 25.618328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051876, 0.023632, 0.998374,
		-0.656975, 0.753736, 0.016296,
		-0.752126, -0.656752, 0.054627,
		31.914743, 41.984444, 25.634716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911331, 42.810104, 25.997641>,  <32.441231, 42.444168, 25.596478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911331, 42.810104, 25.997641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.895056, 42.410576, 26.008234>,  <31.885290, 42.170860, 26.014589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.895056, 42.410576, 26.008234>,  <31.911331, 42.810104, 25.997641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895056, 42.410576, 26.008234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071024, 0.023546, 0.997197,
		-0.996645, 0.042454, 0.069982,
		-0.040687, -0.998821, 0.026482,
		31.882849, 42.110931, 26.016178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708851, 42.778915, 26.630730>,  <31.911331, 42.810104, 25.997641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708851, 42.778915, 26.630730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.824991, 42.413666, 26.516251>,  <31.894674, 42.194515, 26.447563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.824991, 42.413666, 26.516251>,  <31.708851, 42.778915, 26.630730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824991, 42.413666, 26.516251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338001, -0.181940, 0.923392,
		-0.895239, -0.364841, 0.255810,
		0.290349, -0.913121, -0.286196,
		31.912096, 42.139729, 26.430391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433817, 42.374996, 27.110756>,  <31.708851, 42.778915, 26.630730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433817, 42.374996, 27.110756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.729389, 42.153210, 26.957632>,  <31.906733, 42.020138, 26.865757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.729389, 42.153210, 26.957632>,  <31.433817, 42.374996, 27.110756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729389, 42.153210, 26.957632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285164, -0.257401, 0.923269,
		-0.610459, -0.791398, -0.032088,
		0.738933, -0.554467, -0.382811,
		31.951069, 41.986870, 26.842789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886898, 41.953579, 27.207033>,  <31.433817, 42.374996, 27.110756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886898, 41.953579, 27.207033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.506798, 42.024666, 27.309357>,  <30.278738, 42.067318, 27.370750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.506798, 42.024666, 27.309357>,  <30.886898, 41.953579, 27.207033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506798, 42.024666, 27.309357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138834, 0.493522, -0.858581,
		-0.278832, -0.851383, -0.444297,
		-0.950252, 0.177716, 0.255811,
		30.221722, 42.077980, 27.386101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451731, 41.815853, 26.570654>,  <30.886898, 41.953579, 27.207033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451731, 41.815853, 26.570654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.196365, 42.017841, 26.803011>,  <30.043146, 42.139034, 26.942425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.196365, 42.017841, 26.803011>,  <30.451731, 41.815853, 26.570654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196365, 42.017841, 26.803011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382477, 0.446798, -0.808754,
		-0.667937, -0.738497, -0.092103,
		-0.638414, 0.504969, 0.580891,
		30.004841, 42.169331, 26.977278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896563, 41.737110, 26.270670>,  <30.451731, 41.815853, 26.570654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896563, 41.737110, 26.270670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.801128, 42.064682, 26.479450>,  <29.743868, 42.261223, 26.604719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.801128, 42.064682, 26.479450>,  <29.896563, 41.737110, 26.270670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801128, 42.064682, 26.479450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449924, 0.383095, -0.806726,
		-0.860608, -0.427311, 0.277054,
		-0.238585, 0.818928, 0.521952,
		29.729553, 42.310360, 26.636036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263712, 41.901527, 25.985699>,  <29.896563, 41.737110, 26.270670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263712, 41.901527, 25.985699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382376, 42.235085, 26.171869>,  <29.453573, 42.435219, 26.283571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382376, 42.235085, 26.171869>,  <29.263712, 41.901527, 25.985699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382376, 42.235085, 26.171869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448722, 0.551932, -0.702865,
		-0.842996, -0.000338, 0.537919,
		0.296658, 0.833889, 0.465429,
		29.471373, 42.485252, 26.311499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616323, 42.282246, 26.085276>,  <29.263712, 41.901527, 25.985699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616323, 42.282246, 26.085276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.920616, 42.540188, 26.114805>,  <29.103191, 42.694954, 26.132523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.920616, 42.540188, 26.114805>,  <28.616323, 42.282246, 26.085276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920616, 42.540188, 26.114805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474658, 0.630288, -0.614358,
		-0.442702, 0.432320, 0.785566,
		0.760733, 0.644853, 0.073826,
		29.148836, 42.733643, 26.136953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315592, 42.919674, 26.242523>,  <28.616323, 42.282246, 26.085276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315592, 42.919674, 26.242523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676739, 43.011723, 26.097263>,  <28.893427, 43.066952, 26.010107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676739, 43.011723, 26.097263>,  <28.315592, 42.919674, 26.242523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676739, 43.011723, 26.097263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425834, 0.594865, -0.681763,
		0.059137, 0.770182, 0.635077,
		0.902867, 0.230120, -0.363148,
		28.947599, 43.080757, 25.988319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337631, 43.579094, 25.943113>,  <28.315592, 42.919674, 26.242523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337631, 43.579094, 25.943113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625555, 43.398842, 25.731905>,  <28.798309, 43.290691, 25.605181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625555, 43.398842, 25.731905>,  <28.337631, 43.579094, 25.943113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625555, 43.398842, 25.731905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185775, 0.607849, -0.772015,
		0.668849, 0.653798, 0.353821,
		0.719811, -0.450631, -0.528019,
		28.841499, 43.263653, 25.573500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582918, 44.037266, 25.444313>,  <28.337631, 43.579094, 25.943113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582918, 44.037266, 25.444313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728445, 43.702080, 25.281607>,  <28.815762, 43.500969, 25.183983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728445, 43.702080, 25.281607>,  <28.582918, 44.037266, 25.444313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728445, 43.702080, 25.281607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132950, 0.385505, -0.913077,
		0.921934, 0.386270, 0.028846,
		0.363815, -0.837962, -0.406765,
		28.837589, 43.450691, 25.159576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058487, 44.255878, 24.866205>,  <28.582918, 44.037266, 25.444313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058487, 44.255878, 24.866205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934958, 43.882545, 24.792973>,  <28.860840, 43.658546, 24.749033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934958, 43.882545, 24.792973>,  <29.058487, 44.255878, 24.866205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934958, 43.882545, 24.792973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138566, 0.234588, -0.962168,
		0.940971, -0.271773, -0.201775,
		-0.308825, -0.933332, -0.183081,
		28.842310, 43.602547, 24.738049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300406, 44.221668, 24.173115>,  <29.058487, 44.255878, 24.866205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300406, 44.221668, 24.173115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054808, 43.911163, 24.230293>,  <28.907450, 43.724861, 24.264601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054808, 43.911163, 24.230293>,  <29.300406, 44.221668, 24.173115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054808, 43.911163, 24.230293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285164, 0.049286, -0.957211,
		0.735998, -0.628485, -0.251622,
		-0.613993, -0.776259, 0.142947,
		28.870609, 43.678288, 24.273178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268341, 43.885517, 23.509636>,  <29.300406, 44.221668, 24.173115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268341, 43.885517, 23.509636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.945770, 43.739895, 23.696028>,  <28.752228, 43.652523, 23.807863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.945770, 43.739895, 23.696028>,  <29.268341, 43.885517, 23.509636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945770, 43.739895, 23.696028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553206, 0.186087, -0.811994,
		0.208886, -0.912603, -0.351456,
		-0.806430, -0.364043, 0.465987,
		28.703842, 43.630680, 23.835823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110289, 43.361881, 23.070601>,  <29.268341, 43.885517, 23.509636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110289, 43.361881, 23.070601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.788260, 43.466213, 23.283699>,  <28.595041, 43.528812, 23.411558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.788260, 43.466213, 23.283699>,  <29.110289, 43.361881, 23.070601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788260, 43.466213, 23.283699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522644, 0.112840, -0.845051,
		-0.280533, -0.958766, 0.045478,
		-0.805074, 0.260834, 0.532748,
		28.546738, 43.544464, 23.443523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630651, 43.000340, 22.833036>,  <29.110289, 43.361881, 23.070601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630651, 43.000340, 22.833036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426500, 43.293926, 23.012280>,  <28.304008, 43.470078, 23.119825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426500, 43.293926, 23.012280>,  <28.630651, 43.000340, 22.833036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426500, 43.293926, 23.012280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511825, 0.159474, -0.844158,
		-0.691048, -0.660194, 0.294272,
		-0.510380, 0.733970, 0.448108,
		28.273386, 43.514118, 23.146711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270344, 42.318882, 22.843695>,  <28.630651, 43.000340, 22.833036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270344, 42.318882, 22.843695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.134912, 42.005924, 22.634611>,  <28.053654, 41.818150, 22.509161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.134912, 42.005924, 22.634611>,  <28.270344, 42.318882, 22.843695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134912, 42.005924, 22.634611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240590, -0.465070, 0.851955,
		-0.909660, 0.414212, -0.030774,
		-0.338578, -0.782393, -0.522711,
		28.033339, 41.771206, 22.477798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634905, 42.211830, 23.219311>,  <28.270344, 42.318882, 22.843695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634905, 42.211830, 23.219311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.741571, 41.878223, 23.026102>,  <27.805571, 41.678059, 22.910177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.741571, 41.878223, 23.026102>,  <27.634905, 42.211830, 23.219311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741571, 41.878223, 23.026102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263942, -0.545203, 0.795668,
		-0.926943, -0.084689, -0.365519,
		0.266666, -0.834015, -0.483019,
		27.821571, 41.628017, 22.881197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062555, 41.756424, 23.282646>,  <27.634905, 42.211830, 23.219311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062555, 41.756424, 23.282646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381542, 41.525936, 23.211077>,  <27.572935, 41.387642, 23.168135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381542, 41.525936, 23.211077>,  <27.062555, 41.756424, 23.282646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381542, 41.525936, 23.211077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268851, -0.604837, 0.749594,
		-0.540148, -0.549676, -0.637257,
		0.797470, -0.576219, -0.178921,
		27.620783, 41.353069, 23.157400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881237, 41.127083, 23.366695>,  <27.062555, 41.756424, 23.282646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881237, 41.127083, 23.366695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275381, 41.072781, 23.407955>,  <27.511868, 41.040199, 23.432711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275381, 41.072781, 23.407955>,  <26.881237, 41.127083, 23.366695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275381, 41.072781, 23.407955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168867, -0.693634, 0.700254,
		-0.023517, -0.707420, -0.706402,
		0.985358, -0.135756, 0.103147,
		27.570988, 41.032055, 23.438900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074114, 40.416683, 23.521635>,  <26.881237, 41.127083, 23.366695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074114, 40.416683, 23.521635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.389748, 40.614098, 23.667933>,  <27.579128, 40.732548, 23.755711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.389748, 40.614098, 23.667933>,  <27.074114, 40.416683, 23.521635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389748, 40.614098, 23.667933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019271, -0.575215, 0.817775,
		0.613984, -0.652341, -0.444381,
		0.789083, 0.493538, 0.365744,
		27.626472, 40.762157, 23.777657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399488, 39.893448, 23.831707>,  <27.074114, 40.416683, 23.521635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399488, 39.893448, 23.831707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573181, 40.221779, 23.980129>,  <27.677397, 40.418777, 24.069183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573181, 40.221779, 23.980129>,  <27.399488, 39.893448, 23.831707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573181, 40.221779, 23.980129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154488, -0.473677, 0.867043,
		0.887454, -0.319175, -0.332495,
		0.434234, 0.820827, 0.371057,
		27.703451, 40.468025, 24.091446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072483, 39.674164, 24.175863>,  <27.399488, 39.893448, 23.831707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072483, 39.674164, 24.175863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968735, 40.020382, 24.347239>,  <27.906487, 40.228111, 24.450064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968735, 40.020382, 24.347239>,  <28.072483, 39.674164, 24.175863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968735, 40.020382, 24.347239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188132, -0.389839, 0.901461,
		0.947277, 0.314414, -0.061725,
		-0.259369, 0.865546, 0.428437,
		27.890924, 40.280045, 24.475769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171869, 39.473412, 24.899525>,  <28.072483, 39.674164, 24.175863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171869, 39.473412, 24.899525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.029751, 39.845482, 24.936491>,  <27.944479, 40.068722, 24.958672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.029751, 39.845482, 24.936491>,  <28.171869, 39.473412, 24.899525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029751, 39.845482, 24.936491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037439, -0.112950, 0.992895,
		0.934004, 0.349312, 0.074956,
		-0.355297, 0.930174, 0.092418,
		27.923162, 40.124535, 24.964216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966156, 39.406975, 24.837097>,  <28.171869, 39.473412, 24.899525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966156, 39.406975, 24.837097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.944958, 39.037884, 24.684383>,  <28.932240, 38.816429, 24.592754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.944958, 39.037884, 24.684383>,  <28.966156, 39.406975, 24.837097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944958, 39.037884, 24.684383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085137, 0.385106, -0.918937,
		0.994959, -0.016196, -0.098968,
		-0.052996, -0.922730, -0.381786,
		28.929058, 38.761066, 24.569847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050287, 39.498989, 24.145016>,  <28.966156, 39.406975, 24.837097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050287, 39.498989, 24.145016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.007580, 39.101955, 24.121775>,  <28.981955, 38.863735, 24.107830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.007580, 39.101955, 24.121775>,  <29.050287, 39.498989, 24.145016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007580, 39.101955, 24.121775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037159, 0.062381, -0.997360,
		0.993589, -0.104328, -0.043543,
		-0.106769, -0.992585, -0.058104,
		28.975550, 38.804180, 24.104343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573883, 39.207436, 23.668398>,  <29.050287, 39.498989, 24.145016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573883, 39.207436, 23.668398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234488, 38.995785, 23.672207>,  <29.030849, 38.868793, 23.674492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234488, 38.995785, 23.672207>,  <29.573883, 39.207436, 23.668398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234488, 38.995785, 23.672207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007496, -0.030007, -0.999521,
		0.529161, -0.848011, 0.029427,
		-0.848489, -0.529128, 0.009522,
		28.979940, 38.837048, 23.675064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733692, 38.782761, 23.144798>,  <29.573883, 39.207436, 23.668398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733692, 38.782761, 23.144798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336849, 38.774517, 23.194273>,  <29.098743, 38.769569, 23.223957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336849, 38.774517, 23.194273>,  <29.733692, 38.782761, 23.144798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336849, 38.774517, 23.194273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125391, 0.166509, -0.978035,
		-0.000441, -0.985825, -0.167778,
		-0.992108, -0.020607, 0.123687,
		29.039217, 38.768333, 23.231379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606272, 38.458637, 22.631777>,  <29.733692, 38.782761, 23.144798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606272, 38.458637, 22.631777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.270792, 38.635281, 22.759253>,  <29.069504, 38.741268, 22.835737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.270792, 38.635281, 22.759253>,  <29.606272, 38.458637, 22.631777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270792, 38.635281, 22.759253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295865, 0.121813, -0.947431,
		-0.457217, -0.888898, 0.028493,
		-0.838699, 0.441612, 0.318689,
		29.019182, 38.767765, 22.854858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155315, 38.108055, 22.315556>,  <29.606272, 38.458637, 22.631777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155315, 38.108055, 22.315556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972557, 38.452919, 22.403128>,  <28.862902, 38.659836, 22.455671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972557, 38.452919, 22.403128>,  <29.155315, 38.108055, 22.315556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972557, 38.452919, 22.403128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060826, 0.215263, -0.974660,
		-0.887437, -0.458637, -0.045911,
		-0.456898, 0.862157, 0.218930,
		28.835487, 38.711567, 22.468807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399246, 38.043060, 22.050341>,  <29.155315, 38.108055, 22.315556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399246, 38.043060, 22.050341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.440527, 38.439060, 22.088808>,  <28.465296, 38.676659, 22.111889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.440527, 38.439060, 22.088808>,  <28.399246, 38.043060, 22.050341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440527, 38.439060, 22.088808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265757, 0.120613, -0.956466,
		-0.958501, 0.073151, 0.275547,
		0.103201, 0.990001, 0.096167,
		28.471487, 38.736061, 22.117659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810675, 38.361423, 21.660391>,  <28.399246, 38.043060, 22.050341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810675, 38.361423, 21.660391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.076237, 38.658154, 21.698189>,  <28.235573, 38.836193, 21.720867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.076237, 38.658154, 21.698189>,  <27.810675, 38.361423, 21.660391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076237, 38.658154, 21.698189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051042, 0.171015, -0.983945,
		-0.746074, 0.648421, 0.151402,
		0.663903, 0.741824, 0.094493,
		28.275408, 38.880699, 21.726536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556084, 38.915714, 21.264118>,  <27.810675, 38.361423, 21.660391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556084, 38.915714, 21.264118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949133, 38.979107, 21.302761>,  <28.184963, 39.017143, 21.325947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949133, 38.979107, 21.302761>,  <27.556084, 38.915714, 21.264118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949133, 38.979107, 21.302761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048335, 0.284030, -0.957596,
		-0.179201, 0.945627, 0.271435,
		0.982625, 0.158482, 0.096605,
		28.243919, 39.026653, 21.331743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.536564, 34.826988, 35.802673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804703, 34.899975, 35.514969>,  <34.965588, 34.943768, 35.342346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804703, 34.899975, 35.514969>,  <34.536564, 34.826988, 35.802673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804703, 34.899975, 35.514969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733384, 0.310568, -0.604728,
		0.113039, 0.932874, 0.342006,
		0.670351, 0.182464, -0.719261,
		35.005810, 34.954716, 35.299191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312336, 35.425732, 35.553585>,  <34.536564, 34.826988, 35.802673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312336, 35.425732, 35.553585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534019, 35.266781, 35.261024>,  <34.667030, 35.171410, 35.085487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534019, 35.266781, 35.261024>,  <34.312336, 35.425732, 35.553585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534019, 35.266781, 35.261024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629338, 0.375049, -0.680641,
		0.544780, 0.837515, -0.042227,
		0.554210, -0.397375, -0.731399,
		34.700283, 35.147568, 35.041603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264572, 35.874382, 35.004913>,  <34.312336, 35.425732, 35.553585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264572, 35.874382, 35.004913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.405651, 35.545441, 34.826324>,  <34.490299, 35.348076, 34.719173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.405651, 35.545441, 34.826324>,  <34.264572, 35.874382, 35.004913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405651, 35.545441, 34.826324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459763, 0.263271, -0.848119,
		0.814999, 0.504399, -0.285234,
		0.352697, -0.822356, -0.446469,
		34.511459, 35.298733, 34.692383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471912, 36.127892, 34.398216>,  <34.264572, 35.874382, 35.004913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471912, 36.127892, 34.398216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421383, 35.736580, 34.332478>,  <34.391068, 35.501793, 34.293034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421383, 35.736580, 34.332478>,  <34.471912, 36.127892, 34.398216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421383, 35.736580, 34.332478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439445, 0.203720, -0.874863,
		0.889343, -0.038290, -0.455635,
		-0.126320, -0.978280, -0.164351,
		34.383488, 35.443096, 34.283173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591888, 36.129349, 33.768318>,  <34.471912, 36.127892, 34.398216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591888, 36.129349, 33.768318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394047, 35.787716, 33.832699>,  <34.275341, 35.582737, 33.871326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394047, 35.787716, 33.832699>,  <34.591888, 36.129349, 33.768318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394047, 35.787716, 33.832699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550295, 0.164408, -0.818624,
		0.672713, -0.493466, -0.551316,
		-0.494603, -0.854085, 0.160952,
		34.245667, 35.531490, 33.880985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542599, 35.704468, 33.077072>,  <34.591888, 36.129349, 33.768318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542599, 35.704468, 33.077072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249496, 35.587498, 33.322857>,  <34.073635, 35.517315, 33.470325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249496, 35.587498, 33.322857>,  <34.542599, 35.704468, 33.077072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249496, 35.587498, 33.322857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647242, 0.020692, -0.762003,
		0.210113, -0.956065, -0.204431,
		-0.732755, -0.292423, 0.614458,
		34.029671, 35.499771, 33.507195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128738, 35.257221, 32.727386>,  <34.542599, 35.704468, 33.077072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128738, 35.257221, 32.727386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875378, 35.357452, 33.020237>,  <33.723362, 35.417591, 33.195950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875378, 35.357452, 33.020237>,  <34.128738, 35.257221, 32.727386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875378, 35.357452, 33.020237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745423, 0.056388, -0.664202,
		-0.207718, -0.966453, 0.151070,
		-0.633401, 0.250577, 0.732129,
		33.685356, 35.432625, 33.239876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430321, 34.832615, 32.620934>,  <34.128738, 35.257221, 32.727386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430321, 34.832615, 32.620934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355930, 35.160561, 32.837540>,  <33.311298, 35.357327, 32.967503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355930, 35.160561, 32.837540>,  <33.430321, 34.832615, 32.620934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355930, 35.160561, 32.837540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705325, 0.272302, -0.654498,
		-0.684054, -0.503665, 0.527628,
		-0.185974, 0.819862, 0.541517,
		33.300137, 35.406521, 32.999996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709965, 34.814819, 32.783066>,  <33.430321, 34.832615, 32.620934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709965, 34.814819, 32.783066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825493, 35.197041, 32.806736>,  <32.894810, 35.426373, 32.820938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825493, 35.197041, 32.806736>,  <32.709965, 34.814819, 32.783066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825493, 35.197041, 32.806736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712195, 0.255753, -0.653735,
		-0.639812, 0.146667, 0.754406,
		0.288823, 0.955552, 0.059179,
		32.912140, 35.483707, 32.824490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107025, 35.168167, 32.856522>,  <32.709965, 34.814819, 32.783066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107025, 35.168167, 32.856522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.370213, 35.454647, 32.763451>,  <32.528126, 35.626534, 32.707607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.370213, 35.454647, 32.763451>,  <32.107025, 35.168167, 32.856522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370213, 35.454647, 32.763451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647166, 0.379798, -0.661006,
		-0.385043, 0.585499, 0.713395,
		0.657964, 0.716201, -0.232677,
		32.567600, 35.669506, 32.693649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729832, 35.728191, 32.868710>,  <32.107025, 35.168167, 32.856522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729832, 35.728191, 32.868710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037163, 35.817570, 32.628796>,  <32.221561, 35.871197, 32.484848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037163, 35.817570, 32.628796>,  <31.729832, 35.728191, 32.868710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037163, 35.817570, 32.628796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629645, 0.095515, -0.770989,
		-0.114986, 0.970025, 0.214079,
		0.768327, 0.223447, -0.599788,
		32.267662, 35.884605, 32.448860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627878, 36.458092, 32.616978>,  <31.729832, 35.728191, 32.868710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627878, 36.458092, 32.616978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878958, 36.289097, 32.355446>,  <32.029606, 36.187698, 32.198524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878958, 36.289097, 32.355446>,  <31.627878, 36.458092, 32.616978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878958, 36.289097, 32.355446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550012, 0.353683, -0.756568,
		0.550891, 0.834513, -0.010367,
		0.627699, -0.422489, -0.653833,
		32.067268, 36.162350, 32.159294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052872, 36.977234, 32.589584>,  <31.627878, 36.458092, 32.616978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052872, 36.977234, 32.589584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.692467, 37.115856, 32.693943>,  <30.476223, 37.199032, 32.756557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.692467, 37.115856, 32.693943>,  <31.052872, 36.977234, 32.589584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692467, 37.115856, 32.693943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208808, -0.180684, 0.961120,
		0.380227, 0.920461, 0.090434,
		-0.901014, 0.346560, 0.260900,
		30.422163, 37.219826, 32.772213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111002, 37.492004, 33.102840>,  <31.052872, 36.977234, 32.589584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111002, 37.492004, 33.102840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.740316, 37.343548, 33.126362>,  <30.517906, 37.254475, 33.140476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.740316, 37.343548, 33.126362>,  <31.111002, 37.492004, 33.102840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740316, 37.343548, 33.126362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105356, -0.106411, 0.988725,
		-0.360699, 0.922460, 0.137714,
		-0.926713, -0.371141, 0.058805,
		30.462303, 37.232204, 33.144005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720984, 37.950569, 33.497707>,  <31.111002, 37.492004, 33.102840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720984, 37.950569, 33.497707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.501114, 37.618553, 33.535423>,  <30.369192, 37.419342, 33.558052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.501114, 37.618553, 33.535423>,  <30.720984, 37.950569, 33.497707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501114, 37.618553, 33.535423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049783, 0.145212, 0.988147,
		-0.833896, 0.538463, -0.121141,
		-0.549672, -0.830042, 0.094285,
		30.336212, 37.369541, 33.563709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060299, 38.026230, 33.957710>,  <30.720984, 37.950569, 33.497707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060299, 38.026230, 33.957710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.144716, 37.635456, 33.970711>,  <30.195366, 37.400990, 33.978512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.144716, 37.635456, 33.970711>,  <30.060299, 38.026230, 33.957710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144716, 37.635456, 33.970711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049076, 0.022619, 0.998539,
		-0.976244, -0.212330, -0.043171,
		0.211043, -0.976936, 0.032502,
		30.208029, 37.342377, 33.980461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599543, 37.715973, 34.466297>,  <30.060299, 38.026230, 33.957710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599543, 37.715973, 34.466297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.896980, 37.452133, 34.422474>,  <30.075443, 37.293831, 34.396179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.896980, 37.452133, 34.422474>,  <29.599543, 37.715973, 34.466297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896980, 37.452133, 34.422474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033776, -0.126590, 0.991380,
		-0.667780, -0.740883, -0.071853,
		0.743592, -0.659597, -0.109558,
		30.120058, 37.254253, 34.389606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533936, 37.245373, 35.095367>,  <29.599543, 37.715973, 34.466297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533936, 37.245373, 35.095367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.892555, 37.112850, 34.977764>,  <30.107727, 37.033337, 34.907200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.892555, 37.112850, 34.977764>,  <29.533936, 37.245373, 35.095367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892555, 37.112850, 34.977764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238832, -0.197445, 0.950776,
		-0.373046, -0.922634, -0.097893,
		0.896546, -0.331303, -0.294010,
		30.161520, 37.013458, 34.889561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671440, 36.599861, 35.444172>,  <29.533936, 37.245373, 35.095367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671440, 36.599861, 35.444172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.027031, 36.739132, 35.325180>,  <30.240385, 36.822693, 35.253784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.027031, 36.739132, 35.325180>,  <29.671440, 36.599861, 35.444172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027031, 36.739132, 35.325180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405117, -0.295007, 0.865362,
		0.213543, -0.889799, -0.403307,
		0.888977, 0.348178, -0.297476,
		30.293724, 36.843586, 35.235939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116598, 35.985104, 35.460403>,  <29.671440, 36.599861, 35.444172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116598, 35.985104, 35.460403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.357698, 36.303837, 35.443687>,  <30.502359, 36.495075, 35.433659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.357698, 36.303837, 35.443687>,  <30.116598, 35.985104, 35.460403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357698, 36.303837, 35.443687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395128, -0.252570, 0.883223,
		0.693227, -0.548876, -0.467088,
		0.602752, 0.796833, -0.041788,
		30.538525, 36.542889, 35.431152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825523, 35.704727, 35.611744>,  <30.116598, 35.985104, 35.460403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825523, 35.704727, 35.611744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.849655, 36.097878, 35.681389>,  <30.864134, 36.333767, 35.723175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.849655, 36.097878, 35.681389>,  <30.825523, 35.704727, 35.611744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849655, 36.097878, 35.681389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419259, -0.183248, 0.889180,
		0.905860, 0.019355, -0.423135,
		0.060329, 0.982876, 0.174111,
		30.867754, 36.392742, 35.733624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545914, 35.786377, 35.999889>,  <30.825523, 35.704727, 35.611744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545914, 35.786377, 35.999889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.365679, 36.137794, 36.063297>,  <31.257538, 36.348644, 36.101341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.365679, 36.137794, 36.063297>,  <31.545914, 35.786377, 35.999889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365679, 36.137794, 36.063297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264588, -0.038166, 0.963606,
		0.852622, 0.476131, -0.215256,
		-0.450588, 0.878546, 0.158520,
		31.230503, 36.401360, 36.110851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058826, 36.239952, 36.192554>,  <31.545914, 35.786377, 35.999889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058826, 36.239952, 36.192554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710238, 36.374916, 36.334934>,  <31.501085, 36.455894, 36.420361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710238, 36.374916, 36.334934>,  <32.058826, 36.239952, 36.192554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710238, 36.374916, 36.334934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386009, 0.024154, 0.922179,
		0.302554, 0.941048, -0.151293,
		-0.871469, 0.337409, 0.355945,
		31.448797, 36.476139, 36.441719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299339, 36.748379, 36.631248>,  <32.058826, 36.239952, 36.192554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299339, 36.748379, 36.631248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926384, 36.633820, 36.719460>,  <31.702612, 36.565083, 36.772388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926384, 36.633820, 36.719460>,  <32.299339, 36.748379, 36.631248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926384, 36.633820, 36.719460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220477, 0.032866, 0.974838,
		-0.286442, 0.957546, 0.032501,
		-0.932385, -0.286400, 0.220531,
		31.646669, 36.547901, 36.785618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967150, 37.157894, 37.257107>,  <32.299339, 36.748379, 36.631248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967150, 37.157894, 37.257107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766758, 36.811794, 37.264626>,  <31.646523, 36.604134, 37.269138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766758, 36.811794, 37.264626>,  <31.967150, 37.157894, 37.257107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766758, 36.811794, 37.264626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071382, -0.019664, 0.997255,
		-0.862509, 0.500948, 0.071615,
		-0.500981, -0.865254, 0.018798,
		31.616463, 36.552219, 37.270264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490376, 37.183376, 37.783237>,  <31.967150, 37.157894, 37.257107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490376, 37.183376, 37.783237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528919, 36.788723, 37.730686>,  <31.552046, 36.551929, 37.699154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528919, 36.788723, 37.730686>,  <31.490376, 37.183376, 37.783237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528919, 36.788723, 37.730686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002439, -0.132229, 0.991216,
		-0.995344, -0.095194, -0.015148,
		0.096361, -0.986638, -0.131381,
		31.557827, 36.492733, 37.691273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871647, 37.934765, 37.776554>,  <31.490376, 37.183376, 37.783237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871647, 37.934765, 37.776554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.773481, 38.322372, 37.765411>,  <31.714582, 38.554935, 37.758724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.773481, 38.322372, 37.765411>,  <31.871647, 37.934765, 37.776554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773481, 38.322372, 37.765411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099449, -0.003419, -0.995037,
		-0.964304, -0.246964, -0.095529,
		-0.245412, 0.969019, -0.027857,
		31.699858, 38.613079, 37.757053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464409, 38.010891, 37.315544>,  <31.871647, 37.934765, 37.776554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464409, 38.010891, 37.315544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.625500, 38.376282, 37.338741>,  <31.722155, 38.595516, 37.352661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.625500, 38.376282, 37.338741>,  <31.464409, 38.010891, 37.315544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625500, 38.376282, 37.338741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133054, 0.004264, -0.991100,
		-0.905598, 0.406860, -0.119825,
		0.402728, 0.913481, 0.057996,
		31.746319, 38.650326, 37.356140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129847, 38.455544, 36.887424>,  <31.464409, 38.010891, 37.315544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129847, 38.455544, 36.887424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497297, 38.611950, 36.910168>,  <31.717768, 38.705795, 36.923813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497297, 38.611950, 36.910168>,  <31.129847, 38.455544, 36.887424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497297, 38.611950, 36.910168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067247, -0.012925, -0.997653,
		-0.389364, 0.920292, -0.038168,
		0.918626, 0.391017, 0.056854,
		31.772884, 38.729256, 36.927223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099108, 39.064613, 36.627544>,  <31.129847, 38.455544, 36.887424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099108, 39.064613, 36.627544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.475637, 38.948490, 36.558693>,  <31.701555, 38.878815, 36.517384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.475637, 38.948490, 36.558693>,  <31.099108, 39.064613, 36.627544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475637, 38.948490, 36.558693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081477, 0.299443, -0.950629,
		0.327518, 0.908875, 0.258220,
		0.941325, -0.290309, -0.172126,
		31.758036, 38.861397, 36.507053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431581, 39.666492, 36.289703>,  <31.099108, 39.064613, 36.627544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431581, 39.666492, 36.289703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.662376, 39.350540, 36.206581>,  <31.800854, 39.160969, 36.156708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.662376, 39.350540, 36.206581>,  <31.431581, 39.666492, 36.289703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662376, 39.350540, 36.206581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142495, 0.347876, -0.926648,
		0.804227, 0.505053, 0.313273,
		0.576986, -0.789876, -0.207804,
		31.835472, 39.113579, 36.144241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118050, 39.974148, 35.897945>,  <31.431581, 39.666492, 36.289703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118050, 39.974148, 35.897945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033695, 39.586887, 35.843964>,  <31.983082, 39.354530, 35.811573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033695, 39.586887, 35.843964>,  <32.118050, 39.974148, 35.897945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033695, 39.586887, 35.843964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009838, 0.135953, -0.990667,
		0.977461, -0.210245, -0.019146,
		-0.210886, -0.968150, -0.134957,
		31.970430, 39.296444, 35.803478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522861, 39.794678, 35.273518>,  <32.118050, 39.974148, 35.897945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522861, 39.794678, 35.273518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270767, 39.486443, 35.311459>,  <32.119511, 39.301502, 35.334225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270767, 39.486443, 35.311459>,  <32.522861, 39.794678, 35.273518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270767, 39.486443, 35.311459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169851, 0.017632, -0.985312,
		0.757599, -0.637088, -0.141997,
		-0.630234, -0.770589, 0.094852,
		32.081696, 39.255264, 35.339912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696033, 39.393681, 34.747616>,  <32.522861, 39.794678, 35.273518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696033, 39.393681, 34.747616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.331055, 39.266327, 34.850437>,  <32.112068, 39.189915, 34.912128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.331055, 39.266327, 34.850437>,  <32.696033, 39.393681, 34.747616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331055, 39.266327, 34.850437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222717, -0.140580, -0.964694,
		0.343282, -0.937479, 0.057361,
		-0.912444, -0.318387, 0.257051,
		32.057320, 39.170811, 34.927551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664921, 38.795166, 34.312454>,  <32.696033, 39.393681, 34.747616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664921, 38.795166, 34.312454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.303486, 38.922714, 34.426895>,  <32.086624, 38.999245, 34.495560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.303486, 38.922714, 34.426895>,  <32.664921, 38.795166, 34.312454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303486, 38.922714, 34.426895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261733, 0.117813, -0.957922,
		-0.339165, -0.940446, -0.022994,
		-0.903583, 0.318875, 0.286104,
		32.032410, 39.018375, 34.512726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234653, 38.642883, 33.770618>,  <32.664921, 38.795166, 34.312454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234653, 38.642883, 33.770618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975441, 38.896507, 33.939392>,  <31.819914, 39.048683, 34.040657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975441, 38.896507, 33.939392>,  <32.234653, 38.642883, 33.770618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975441, 38.896507, 33.939392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457640, 0.118659, -0.881184,
		-0.608791, -0.764124, 0.213278,
		-0.648027, 0.634062, 0.421932,
		31.781033, 39.086727, 34.065971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596766, 38.425583, 33.659084>,  <32.234653, 38.642883, 33.770618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596766, 38.425583, 33.659084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.583851, 38.821907, 33.711609>,  <31.576101, 39.059704, 33.743126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.583851, 38.821907, 33.711609>,  <31.596766, 38.425583, 33.659084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583851, 38.821907, 33.711609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393489, 0.108173, -0.912943,
		-0.918762, -0.081149, 0.386382,
		-0.032288, 0.990815, 0.131316,
		31.574165, 39.119152, 33.751003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953718, 38.632774, 33.428883>,  <31.596766, 38.425583, 33.659084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953718, 38.632774, 33.428883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.151621, 38.980186, 33.440723>,  <31.270363, 39.188633, 33.447826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.151621, 38.980186, 33.440723>,  <30.953718, 38.632774, 33.428883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151621, 38.980186, 33.440723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274912, 0.188731, -0.942764,
		-0.824404, 0.458300, 0.332144,
		0.494755, 0.868528, 0.029598,
		31.300047, 39.240746, 33.449604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504528, 39.120350, 33.094032>,  <30.953718, 38.632774, 33.428883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504528, 39.120350, 33.094032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.874556, 39.270218, 33.069168>,  <31.096573, 39.360138, 33.054249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.874556, 39.270218, 33.069168>,  <30.504528, 39.120350, 33.094032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874556, 39.270218, 33.069168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206985, 0.360137, -0.909648,
		-0.318436, 0.854354, 0.410704,
		0.925071, 0.374674, -0.062158,
		31.152077, 39.382622, 33.050522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327345, 39.906342, 33.020962>,  <30.504528, 39.120350, 33.094032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327345, 39.906342, 33.020962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.704315, 39.828587, 32.912113>,  <30.930498, 39.781933, 32.846806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.704315, 39.828587, 32.912113>,  <30.327345, 39.906342, 33.020962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704315, 39.828587, 32.912113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203452, 0.312523, -0.927867,
		0.265406, 0.929808, 0.254982,
		0.942426, -0.194385, -0.272117,
		30.987043, 39.770271, 32.830479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479887, 40.482571, 32.615753>,  <30.327345, 39.906342, 33.020962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479887, 40.482571, 32.615753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.772305, 40.234985, 32.500889>,  <30.947756, 40.086433, 32.431969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.772305, 40.234985, 32.500889>,  <30.479887, 40.482571, 32.615753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772305, 40.234985, 32.500889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065374, 0.355378, -0.932434,
		0.679192, 0.700422, 0.219333,
		0.731043, -0.618963, -0.287160,
		30.991617, 40.049297, 32.414742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949493, 40.898945, 32.312363>,  <30.479887, 40.482571, 32.615753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949493, 40.898945, 32.312363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.999783, 40.525837, 32.177227>,  <31.029957, 40.301971, 32.096146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.999783, 40.525837, 32.177227>,  <30.949493, 40.898945, 32.312363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999783, 40.525837, 32.177227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023201, 0.337682, -0.940974,
		0.991794, 0.126140, 0.020814,
		0.125723, -0.932770, -0.337838,
		31.037500, 40.246006, 32.075874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549788, 40.894619, 31.852041>,  <30.949493, 40.898945, 32.312363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549788, 40.894619, 31.852041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.312119, 40.587582, 31.755903>,  <31.169518, 40.403358, 31.698219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.312119, 40.587582, 31.755903>,  <31.549788, 40.894619, 31.852041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312119, 40.587582, 31.755903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050820, 0.262389, -0.963623,
		0.802732, -0.584770, -0.116895,
		-0.594170, -0.767591, -0.240346,
		31.133867, 40.357304, 31.683800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800592, 40.682285, 31.206894>,  <31.549788, 40.894619, 31.852041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800592, 40.682285, 31.206894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.450577, 40.490223, 31.231419>,  <31.240568, 40.374985, 31.246134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.450577, 40.490223, 31.231419>,  <31.800592, 40.682285, 31.206894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450577, 40.490223, 31.231419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222917, 0.287296, -0.931541,
		0.429670, -0.828802, -0.358429,
		-0.875038, -0.480155, 0.061312,
		31.188065, 40.346176, 31.249813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702255, 40.176197, 30.651077>,  <31.800592, 40.682285, 31.206894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702255, 40.176197, 30.651077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.323946, 40.265575, 30.745382>,  <31.096960, 40.319202, 30.801966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.323946, 40.265575, 30.745382>,  <31.702255, 40.176197, 30.651077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323946, 40.265575, 30.745382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208389, 0.139379, -0.968064,
		-0.249171, -0.964699, -0.085257,
		-0.945774, 0.223447, 0.235762,
		31.040215, 40.332611, 30.816111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448809, 40.102188, 30.071787>,  <31.702255, 40.176197, 30.651077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448809, 40.102188, 30.071787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.161129, 40.289436, 30.277159>,  <30.988522, 40.401787, 30.400381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.161129, 40.289436, 30.277159>,  <31.448809, 40.102188, 30.071787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161129, 40.289436, 30.277159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462307, 0.229219, -0.856581,
		-0.518674, -0.853416, 0.051563,
		-0.719201, 0.468124, 0.513430,
		30.945368, 40.429874, 30.431189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718586, 39.873993, 29.749001>,  <31.448809, 40.102188, 30.071787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718586, 39.873993, 29.749001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.640219, 40.221966, 29.930038>,  <30.593199, 40.430748, 30.038662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.640219, 40.221966, 29.930038>,  <30.718586, 39.873993, 29.749001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640219, 40.221966, 29.930038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497043, 0.309765, -0.810552,
		-0.845320, -0.383759, 0.371704,
		-0.195916, 0.869928, 0.452595,
		30.581444, 40.482944, 30.065817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943172, 40.072655, 29.578539>,  <30.718586, 39.873993, 29.749001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943172, 40.072655, 29.578539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.122757, 40.410793, 29.694349>,  <30.230507, 40.613678, 29.763836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.122757, 40.410793, 29.694349>,  <29.943172, 40.072655, 29.578539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122757, 40.410793, 29.694349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479855, 0.501423, -0.719941,
		-0.753774, 0.184295, 0.630762,
		0.448960, 0.845346, 0.289525,
		30.257444, 40.664398, 29.781206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429817, 40.556873, 29.496382>,  <29.943172, 40.072655, 29.578539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429817, 40.556873, 29.496382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773020, 40.761757, 29.481039>,  <29.978941, 40.884686, 29.471832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773020, 40.761757, 29.481039>,  <29.429817, 40.556873, 29.496382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773020, 40.761757, 29.481039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324941, 0.483442, -0.812833,
		-0.397794, 0.709880, 0.581232,
		0.858006, 0.512206, -0.038359,
		30.030422, 40.915421, 29.469532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229265, 41.271858, 29.295345>,  <29.429817, 40.556873, 29.496382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229265, 41.271858, 29.295345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.621651, 41.227428, 29.231630>,  <29.857082, 41.200771, 29.193401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.621651, 41.227428, 29.231630>,  <29.229265, 41.271858, 29.295345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621651, 41.227428, 29.231630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082874, 0.502366, -0.860674,
		0.175617, 0.857491, 0.483598,
		0.980964, -0.111071, -0.159288,
		29.915939, 41.194107, 29.183844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577028, 41.912014, 29.227711>,  <29.229265, 41.271858, 29.295345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577028, 41.912014, 29.227711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.852730, 41.671204, 29.066473>,  <30.018150, 41.526718, 28.969730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.852730, 41.671204, 29.066473>,  <29.577028, 41.912014, 29.227711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852730, 41.671204, 29.066473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046080, 0.591662, -0.804868,
		0.723051, 0.536186, 0.435548,
		0.689256, -0.602031, -0.403095,
		30.059507, 41.490593, 28.945545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104906, 42.329681, 29.011526>,  <29.577028, 41.912014, 29.227711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104906, 42.329681, 29.011526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.114285, 41.998222, 28.787813>,  <30.119911, 41.799347, 28.653585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.114285, 41.998222, 28.787813>,  <30.104906, 42.329681, 29.011526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114285, 41.998222, 28.787813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068928, 0.559447, -0.825996,
		0.997346, -0.019183, 0.070234,
		0.023447, -0.828645, -0.559284,
		30.121319, 41.749630, 28.620028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580669, 42.480381, 28.480652>,  <30.104906, 42.329681, 29.011526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580669, 42.480381, 28.480652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.381382, 42.167591, 28.330830>,  <30.261810, 41.979916, 28.240936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.381382, 42.167591, 28.330830>,  <30.580669, 42.480381, 28.480652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381382, 42.167591, 28.330830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044525, 0.454493, -0.889637,
		0.865909, -0.426555, -0.261253,
		-0.498217, -0.781977, -0.374557,
		30.231916, 41.932999, 28.218462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924915, 42.292580, 27.850872>,  <30.580669, 42.480381, 28.480652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924915, 42.292580, 27.850872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570515, 42.108746, 27.826277>,  <30.357874, 41.998444, 27.811520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570515, 42.108746, 27.826277>,  <30.924915, 42.292580, 27.850872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570515, 42.108746, 27.826277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126403, 0.366985, -0.921599,
		0.446122, -0.808765, -0.383243,
		-0.886001, -0.459588, -0.061490,
		30.304714, 41.970871, 27.807831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559240, 41.796364, 27.563158>,  <30.924915, 42.292580, 27.850872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559240, 41.796364, 27.563158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.902573, 41.810688, 27.358419>,  <32.108574, 41.819283, 27.235577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.902573, 41.810688, 27.358419>,  <31.559240, 41.796364, 27.563158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902573, 41.810688, 27.358419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492206, -0.339208, 0.801668,
		-0.144916, -0.940029, -0.308778,
		0.858331, 0.035808, -0.511845,
		32.160072, 41.821430, 27.204866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905380, 41.162849, 27.742502>,  <31.559240, 41.796364, 27.563158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905380, 41.162849, 27.742502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207630, 41.390785, 27.613310>,  <32.388981, 41.527546, 27.535795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207630, 41.390785, 27.613310>,  <31.905380, 41.162849, 27.742502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207630, 41.390785, 27.613310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572802, -0.335711, 0.747794,
		0.317692, -0.750056, -0.580075,
		0.755625, 0.569837, -0.322981,
		32.434319, 41.561737, 27.516415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454887, 40.718304, 27.838366>,  <31.905380, 41.162849, 27.742502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454887, 40.718304, 27.838366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587723, 41.095486, 27.829021>,  <32.667423, 41.321796, 27.823414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587723, 41.095486, 27.829021>,  <32.454887, 40.718304, 27.838366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587723, 41.095486, 27.829021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485527, -0.149652, 0.861317,
		0.808691, -0.297375, -0.507530,
		0.332087, 0.942959, -0.023362,
		32.687347, 41.378372, 27.822012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176212, 40.678654, 28.046202>,  <32.454887, 40.718304, 27.838366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176212, 40.678654, 28.046202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094254, 41.063725, 28.116934>,  <33.045078, 41.294765, 28.159374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094254, 41.063725, 28.116934>,  <33.176212, 40.678654, 28.046202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094254, 41.063725, 28.116934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511756, -0.048638, 0.857753,
		0.834341, 0.266244, -0.482690,
		-0.204895, 0.962678, 0.176832,
		33.032784, 41.352528, 28.169983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848095, 41.030651, 28.252510>,  <33.176212, 40.678654, 28.046202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848095, 41.030651, 28.252510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546730, 41.252708, 28.393469>,  <33.365910, 41.385944, 28.478045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546730, 41.252708, 28.393469>,  <33.848095, 41.030651, 28.252510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546730, 41.252708, 28.393469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469621, 0.079176, 0.879311,
		0.460243, 0.827977, -0.320359,
		-0.753414, 0.555144, 0.352395,
		33.320705, 41.419250, 28.499187>
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
