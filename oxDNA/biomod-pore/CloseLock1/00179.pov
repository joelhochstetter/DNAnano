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
	<24.411858, 35.436741, 35.384418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276331, 35.151779, 35.138592>,  <24.195015, 34.980804, 34.991096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276331, 35.151779, 35.138592>,  <24.411858, 35.436741, 35.384418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.276331, 35.151779, 35.138592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893336, -0.038634, -0.447726,
		0.295217, -0.700709, 0.649503,
		-0.338819, -0.712401, -0.614563,
		24.174685, 34.938061, 34.954224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909788, 34.837601, 35.411999>,  <24.411858, 35.436741, 35.384418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909788, 34.837601, 35.411999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.728876, 34.878647, 35.057617>,  <24.620329, 34.903275, 34.844990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.728876, 34.878647, 35.057617>,  <24.909788, 34.837601, 35.411999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.728876, 34.878647, 35.057617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891703, 0.032411, -0.451460,
		-0.017614, -0.994193, -0.106165,
		-0.452279, 0.102620, -0.885953,
		24.593193, 34.909431, 34.791832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168247, 34.367226, 34.745411>,  <24.909788, 34.837601, 35.411999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168247, 34.367226, 34.745411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042805, 34.734798, 34.649738>,  <24.967539, 34.955341, 34.592335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042805, 34.734798, 34.649738>,  <25.168247, 34.367226, 34.745411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.042805, 34.734798, 34.649738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893133, 0.199932, -0.402915,
		-0.322434, -0.339975, -0.883433,
		-0.313607, 0.918937, -0.239178,
		24.948723, 35.010479, 34.577984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.277636, 34.443260, 34.018909>,  <25.168247, 34.367226, 34.745411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.277636, 34.443260, 34.018909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269629, 34.805862, 34.187599>,  <25.264824, 35.023422, 34.288811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269629, 34.805862, 34.187599>,  <25.277636, 34.443260, 34.018909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.269629, 34.805862, 34.187599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672487, 0.324338, -0.665256,
		-0.739838, 0.270284, -0.616106,
		-0.020019, 0.906505, 0.421720,
		25.263622, 35.077812, 34.314114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813789, 34.670734, 33.491005>,  <25.277636, 34.443260, 34.018909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813789, 34.670734, 33.491005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732010, 34.564640, 33.114101>,  <25.682943, 34.500984, 32.887959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732010, 34.564640, 33.114101>,  <25.813789, 34.670734, 33.491005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732010, 34.564640, 33.114101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712741, 0.700143, -0.042437,
		0.670971, 0.662909, -0.332189,
		-0.204448, -0.265239, -0.942258,
		25.670675, 34.485069, 32.831425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289015, 35.263145, 33.653412>,  <25.813789, 34.670734, 33.491005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289015, 35.263145, 33.653412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501225, 35.230930, 33.315876>,  <26.628550, 35.211601, 33.113354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501225, 35.230930, 33.315876>,  <26.289015, 35.263145, 33.653412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501225, 35.230930, 33.315876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466056, 0.859226, 0.211002,
		0.708051, -0.505216, 0.493377,
		0.530524, -0.080541, -0.843835,
		26.660381, 35.206768, 33.062725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986128, 35.474861, 33.742641>,  <26.289015, 35.263145, 33.653412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986128, 35.474861, 33.742641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935497, 35.493458, 33.346294>,  <26.905119, 35.504616, 33.108486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935497, 35.493458, 33.346294>,  <26.986128, 35.474861, 33.742641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935497, 35.493458, 33.346294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334544, 0.942379, 0.001482,
		0.933841, -0.331301, -0.134835,
		-0.126574, 0.046492, -0.990867,
		26.897524, 35.507404, 33.049034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706337, 35.458130, 33.730412>,  <26.986128, 35.474861, 33.742641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706337, 35.458130, 33.730412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069393, 35.337112, 33.846794>,  <28.287228, 35.264500, 33.916622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069393, 35.337112, 33.846794>,  <27.706337, 35.458130, 33.730412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069393, 35.337112, 33.846794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086167, 0.812698, 0.576279,
		-0.410810, -0.497983, 0.763707,
		0.907640, -0.302548, 0.290954,
		28.341684, 35.246349, 33.934082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855043, 35.396420, 34.479023>,  <27.706337, 35.458130, 33.730412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855043, 35.396420, 34.479023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214216, 35.458023, 34.314098>,  <28.429720, 35.494984, 34.215145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214216, 35.458023, 34.314098>,  <27.855043, 35.396420, 34.479023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214216, 35.458023, 34.314098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114349, 0.822988, 0.556430,
		0.425021, -0.546784, 0.721377,
		0.897932, 0.154006, -0.412311,
		28.483595, 35.504227, 34.190403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261478, 35.727924, 34.986412>,  <27.855043, 35.396420, 34.479023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261478, 35.727924, 34.986412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448151, 35.807766, 34.641769>,  <28.560154, 35.855671, 34.434982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448151, 35.807766, 34.641769>,  <28.261478, 35.727924, 34.986412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448151, 35.807766, 34.641769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288807, 0.886400, 0.361780,
		0.835941, -0.417675, 0.356020,
		0.466683, 0.199606, -0.861606,
		28.588156, 35.867649, 34.383289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891998, 36.010147, 35.229092>,  <28.261478, 35.727924, 34.986412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891998, 36.010147, 35.229092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873575, 36.106438, 34.841293>,  <28.862520, 36.164211, 34.608612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873575, 36.106438, 34.841293>,  <28.891998, 36.010147, 35.229092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873575, 36.106438, 34.841293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295759, 0.930302, 0.216943,
		0.954152, -0.276746, -0.114046,
		-0.046059, 0.240727, -0.969499,
		28.859758, 36.178658, 34.550442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538805, 36.239513, 35.098297>,  <28.891998, 36.010147, 35.229092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538805, 36.239513, 35.098297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287766, 36.380127, 34.820435>,  <29.137142, 36.464497, 34.653717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287766, 36.380127, 34.820435>,  <29.538805, 36.239513, 35.098297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287766, 36.380127, 34.820435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381198, 0.916735, 0.119517,
		0.678826, -0.189791, -0.709348,
		-0.627601, 0.351533, -0.694652,
		29.099485, 36.485588, 34.612038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861544, 36.689827, 34.578419>,  <29.538805, 36.239513, 35.098297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861544, 36.689827, 34.578419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505062, 36.857170, 34.508297>,  <29.291174, 36.957577, 34.466225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505062, 36.857170, 34.508297>,  <29.861544, 36.689827, 34.578419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505062, 36.857170, 34.508297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443417, 0.884944, -0.142321,
		0.095592, -0.204569, -0.974173,
		-0.891204, 0.418360, -0.175303,
		29.237701, 36.982677, 34.455708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920908, 37.307835, 34.122421>,  <29.861544, 36.689827, 34.578419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920908, 37.307835, 34.122421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571861, 37.338787, 34.315315>,  <29.362432, 37.357357, 34.431049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571861, 37.338787, 34.315315>,  <29.920908, 37.307835, 34.122421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571861, 37.338787, 34.315315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241507, 0.926571, 0.288341,
		-0.424512, 0.368074, -0.827231,
		-0.872619, 0.077378, 0.482233,
		29.310076, 37.362000, 34.459984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663982, 37.964806, 33.900356>,  <29.920908, 37.307835, 34.122421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663982, 37.964806, 33.900356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479683, 37.863140, 34.240501>,  <29.369102, 37.802139, 34.444588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479683, 37.863140, 34.240501>,  <29.663982, 37.964806, 33.900356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479683, 37.863140, 34.240501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165331, 0.916767, 0.363597,
		-0.871996, 0.308118, -0.380377,
		-0.460748, -0.254167, 0.850359,
		29.341459, 37.786888, 34.495609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033821, 38.450062, 34.027458>,  <29.663982, 37.964806, 33.900356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033821, 38.450062, 34.027458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114115, 38.293591, 34.386723>,  <29.162291, 38.199707, 34.602280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114115, 38.293591, 34.386723>,  <29.033821, 38.450062, 34.027458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114115, 38.293591, 34.386723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020889, 0.918320, 0.395288,
		-0.979423, -0.060586, 0.192508,
		0.200733, -0.391176, 0.898158,
		29.174335, 38.176239, 34.656170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728369, 38.923290, 34.540867>,  <29.033821, 38.450062, 34.027458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728369, 38.923290, 34.540867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964746, 38.712170, 34.784904>,  <29.106573, 38.585499, 34.931328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964746, 38.712170, 34.784904>,  <28.728369, 38.923290, 34.540867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964746, 38.712170, 34.784904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115883, 0.803966, 0.583275,
		-0.798346, -0.273983, 0.536262,
		0.590944, -0.527799, 0.610093,
		29.142031, 38.553829, 34.967934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608953, 39.182014, 35.265636>,  <28.728369, 38.923290, 34.540867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608953, 39.182014, 35.265636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972492, 39.015377, 35.257198>,  <29.190617, 38.915394, 35.252136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972492, 39.015377, 35.257198>,  <28.608953, 39.182014, 35.265636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972492, 39.015377, 35.257198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339782, 0.710037, 0.616762,
		-0.241960, -0.567711, 0.786867,
		0.908848, -0.416594, -0.021098,
		29.245146, 38.890400, 35.250870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857103, 39.396881, 35.872723>,  <28.608953, 39.182014, 35.265636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857103, 39.396881, 35.872723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203938, 39.287792, 35.705975>,  <29.412039, 39.222340, 35.605927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203938, 39.287792, 35.705975>,  <28.857103, 39.396881, 35.872723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203938, 39.287792, 35.705975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490159, 0.616434, 0.616241,
		0.088908, -0.738667, 0.668181,
		0.867087, -0.272726, -0.416870,
		29.464064, 39.205975, 35.580914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191807, 39.411472, 36.486557>,  <28.857103, 39.396881, 35.872723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191807, 39.411472, 36.486557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458923, 39.417999, 36.188889>,  <29.619192, 39.421913, 36.010288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458923, 39.417999, 36.188889>,  <29.191807, 39.411472, 36.486557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458923, 39.417999, 36.188889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642881, 0.491276, 0.587666,
		0.375180, -0.870851, 0.317583,
		0.667791, 0.016312, -0.744170,
		29.659260, 39.422894, 35.965637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725079, 39.123894, 36.764217>,  <29.191807, 39.411472, 36.486557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725079, 39.123894, 36.764217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860109, 39.338669, 36.454964>,  <29.941128, 39.467533, 36.269409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860109, 39.338669, 36.454964>,  <29.725079, 39.123894, 36.764217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860109, 39.338669, 36.454964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669477, 0.440425, 0.598186,
		0.661697, -0.719531, -0.210789,
		0.337577, 0.536936, -0.773137,
		29.961382, 39.499748, 36.223022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509796, 39.029320, 36.759361>,  <29.725079, 39.123894, 36.764217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509796, 39.029320, 36.759361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397150, 39.367207, 36.577309>,  <30.329561, 39.569939, 36.468079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397150, 39.367207, 36.577309>,  <30.509796, 39.029320, 36.759361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397150, 39.367207, 36.577309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875590, 0.420245, 0.238194,
		0.392472, -0.331426, -0.857976,
		-0.281616, 0.844720, -0.455127,
		30.312666, 39.620621, 36.440769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865852, 39.096867, 36.152771>,  <30.509796, 39.029320, 36.759361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865852, 39.096867, 36.152771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760738, 39.462688, 36.275757>,  <30.697670, 39.682182, 36.349548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760738, 39.462688, 36.275757>,  <30.865852, 39.096867, 36.152771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760738, 39.462688, 36.275757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964590, 0.256473, 0.061540,
		-0.022574, 0.312749, -0.949567,
		-0.262785, 0.914554, 0.307465,
		30.681904, 39.737053, 36.367996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307180, 39.502415, 35.792877>,  <30.865852, 39.096867, 36.152771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307180, 39.502415, 35.792877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171268, 39.751007, 36.075241>,  <31.089722, 39.900162, 36.244659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171268, 39.751007, 36.075241>,  <31.307180, 39.502415, 35.792877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171268, 39.751007, 36.075241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928351, 0.101345, 0.357623,
		0.150717, 0.776845, -0.611390,
		-0.339778, 0.621484, 0.705910,
		31.069334, 39.937450, 36.287014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881800, 40.061077, 35.926121>,  <31.307180, 39.502415, 35.792877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881800, 40.061077, 35.926121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648615, 40.080040, 36.250568>,  <31.508705, 40.091419, 36.445236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648615, 40.080040, 36.250568>,  <31.881800, 40.061077, 35.926121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648615, 40.080040, 36.250568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783601, 0.296685, 0.545846,
		-0.214769, 0.953798, -0.210104,
		-0.582961, 0.047407, 0.811116,
		31.473726, 40.094261, 36.493904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787298, 40.847710, 36.304630>,  <31.881800, 40.061077, 35.926121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787298, 40.847710, 36.304630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782999, 40.485287, 36.473839>,  <31.780420, 40.267834, 36.575363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782999, 40.485287, 36.473839>,  <31.787298, 40.847710, 36.304630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782999, 40.485287, 36.473839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907263, 0.169035, 0.385098,
		-0.420426, 0.387930, 0.820215,
		-0.010746, -0.906056, 0.423021,
		31.779776, 40.213470, 36.600746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114967, 40.937969, 37.018593>,  <31.787298, 40.847710, 36.304630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114967, 40.937969, 37.018593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119003, 40.561882, 36.882423>,  <32.121426, 40.336231, 36.800720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119003, 40.561882, 36.882423>,  <32.114967, 40.937969, 37.018593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119003, 40.561882, 36.882423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980244, -0.057950, 0.189111,
		-0.197533, -0.335609, 0.921058,
		0.010092, -0.940217, -0.340426,
		32.122032, 40.279816, 36.780296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845333, 41.238110, 37.032452>,  <32.114967, 40.937969, 37.018593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845333, 41.238110, 37.032452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048855, 41.544483, 37.189659>,  <33.170967, 41.728306, 37.283985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048855, 41.544483, 37.189659>,  <32.845333, 41.238110, 37.032452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048855, 41.544483, 37.189659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002088, -0.457626, 0.889142,
		0.860878, -0.451581, -0.234442,
		0.508807, 0.765932, 0.393018,
		33.201496, 41.774261, 37.307564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420685, 40.896465, 37.459461>,  <32.845333, 41.238110, 37.032452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420685, 40.896465, 37.459461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343578, 41.276733, 37.556671>,  <33.297314, 41.504894, 37.614998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343578, 41.276733, 37.556671>,  <33.420685, 40.896465, 37.459461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343578, 41.276733, 37.556671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002099, -0.247274, 0.968943,
		0.981243, 0.187288, 0.045670,
		-0.192764, 0.950673, 0.243029,
		33.285748, 41.561935, 37.629581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009632, 41.197395, 37.821522>,  <33.420685, 40.896465, 37.459461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009632, 41.197395, 37.821522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662910, 41.364906, 37.929802>,  <33.454876, 41.465412, 37.994770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662910, 41.364906, 37.929802>,  <34.009632, 41.197395, 37.821522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662910, 41.364906, 37.929802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213257, -0.179383, 0.960387,
		0.450745, 0.890196, 0.066183,
		-0.866805, 0.418775, 0.270697,
		33.402870, 41.490540, 38.011009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000671, 41.974243, 37.992443>,  <34.009632, 41.197395, 37.821522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000671, 41.974243, 37.992443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780273, 41.676964, 38.144260>,  <33.648033, 41.498596, 38.235352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780273, 41.676964, 38.144260>,  <34.000671, 41.974243, 37.992443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780273, 41.676964, 38.144260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502963, 0.067170, 0.861694,
		-0.665908, 0.665686, 0.336793,
		-0.550995, -0.743203, 0.379544,
		33.614975, 41.454002, 38.258125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655262, 42.209873, 38.641838>,  <34.000671, 41.974243, 37.992443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655262, 42.209873, 38.641838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766418, 41.825928, 38.626694>,  <33.833111, 41.595558, 38.617607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766418, 41.825928, 38.626694>,  <33.655262, 42.209873, 38.641838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766418, 41.825928, 38.626694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320577, 0.055515, 0.945594,
		-0.905544, -0.274904, 0.323138,
		0.277886, -0.959868, -0.037857,
		33.849785, 41.537968, 38.615337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318035, 41.872299, 39.110126>,  <33.655262, 42.209873, 38.641838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318035, 41.872299, 39.110126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680721, 41.714172, 39.051353>,  <33.898335, 41.619297, 39.016090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680721, 41.714172, 39.051353>,  <33.318035, 41.872299, 39.110126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680721, 41.714172, 39.051353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219685, 0.145317, 0.964687,
		-0.360009, -0.906976, 0.218607,
		0.906715, -0.395321, -0.146933,
		33.952736, 41.595577, 39.007275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643356, 41.859142, 39.791157>,  <33.318035, 41.872299, 39.110126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643356, 41.859142, 39.791157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948200, 41.637913, 39.925793>,  <34.131107, 41.505177, 40.006577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948200, 41.637913, 39.925793>,  <33.643356, 41.859142, 39.791157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948200, 41.637913, 39.925793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209721, 0.280970, 0.936522,
		-0.612540, -0.784324, 0.098138,
		0.762110, -0.553075, 0.336595,
		34.176834, 41.471989, 40.026772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553024, 41.367611, 40.376644>,  <33.643356, 41.859142, 39.791157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553024, 41.367611, 40.376644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928345, 41.505722, 40.384296>,  <34.153538, 41.588589, 40.388889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928345, 41.505722, 40.384296>,  <33.553024, 41.367611, 40.376644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928345, 41.505722, 40.384296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179887, 0.440093, 0.879749,
		0.295337, -0.828915, 0.475053,
		0.938305, 0.345279, 0.019135,
		34.209835, 41.609306, 40.390038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861370, 41.081535, 40.943279>,  <33.553024, 41.367611, 40.376644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861370, 41.081535, 40.943279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612217, 40.844063, 41.147068>,  <33.462727, 40.701580, 41.269341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612217, 40.844063, 41.147068>,  <33.861370, 41.081535, 40.943279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612217, 40.844063, 41.147068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275178, -0.443352, -0.853063,
		0.732322, -0.671553, 0.112788,
		-0.622882, -0.593680, 0.509473,
		33.425354, 40.665958, 41.299911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970833, 40.368221, 40.685699>,  <33.861370, 41.081535, 40.943279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970833, 40.368221, 40.685699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599762, 40.401623, 40.831264>,  <33.377117, 40.421665, 40.918606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599762, 40.401623, 40.831264>,  <33.970833, 40.368221, 40.685699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599762, 40.401623, 40.831264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335644, -0.613473, -0.714838,
		0.163558, -0.785288, 0.597136,
		-0.927681, 0.083508, 0.363916,
		33.321457, 40.426674, 40.940441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759827, 39.725697, 40.670708>,  <33.970833, 40.368221, 40.685699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759827, 39.725697, 40.670708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419006, 39.933990, 40.692013>,  <33.214512, 40.058968, 40.704796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419006, 39.933990, 40.692013>,  <33.759827, 39.725697, 40.670708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419006, 39.933990, 40.692013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426917, -0.632429, -0.646356,
		-0.302893, -0.573471, 0.761175,
		-0.852055, 0.520735, 0.053266,
		33.163391, 40.090210, 40.707993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258461, 39.255943, 40.832737>,  <33.759827, 39.725697, 40.670708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258461, 39.255943, 40.832737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041656, 39.545242, 40.661560>,  <32.911572, 39.718822, 40.558853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041656, 39.545242, 40.661560>,  <33.258461, 39.255943, 40.832737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041656, 39.545242, 40.661560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378177, -0.664674, -0.644353,
		-0.750468, -0.187410, 0.633778,
		-0.542014, 0.723246, -0.427943,
		32.879051, 39.762215, 40.533176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680241, 38.888412, 40.657890>,  <33.258461, 39.255943, 40.832737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680241, 38.888412, 40.657890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679962, 39.228813, 40.447826>,  <32.679794, 39.433056, 40.321789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679962, 39.228813, 40.447826>,  <32.680241, 38.888412, 40.657890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679962, 39.228813, 40.447826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364836, -0.489176, -0.792213,
		-0.931072, 0.191046, 0.310817,
		-0.000695, 0.851004, -0.525158,
		32.679752, 39.484116, 40.290279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170887, 38.845112, 40.223007>,  <32.680241, 38.888412, 40.657890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170887, 38.845112, 40.223007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348740, 39.159264, 40.050735>,  <32.455452, 39.347755, 39.947372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348740, 39.159264, 40.050735>,  <32.170887, 38.845112, 40.223007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348740, 39.159264, 40.050735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268024, -0.342130, -0.900617,
		-0.854673, 0.515874, 0.058379,
		0.444631, 0.785380, -0.430676,
		32.482128, 39.394878, 39.921532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660358, 39.113968, 39.670692>,  <32.170887, 38.845112, 40.223007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660358, 39.113968, 39.670692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032345, 39.228485, 39.578426>,  <32.255535, 39.297195, 39.523067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032345, 39.228485, 39.578426>,  <31.660358, 39.113968, 39.670692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032345, 39.228485, 39.578426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135271, -0.316938, -0.938750,
		-0.341860, 0.904206, -0.256015,
		0.929964, 0.286290, -0.230661,
		32.311333, 39.314373, 39.509228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679413, 39.385468, 38.993824>,  <31.660358, 39.113968, 39.670692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679413, 39.385468, 38.993824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060932, 39.276691, 39.044926>,  <32.289845, 39.211426, 39.075588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060932, 39.276691, 39.044926>,  <31.679413, 39.385468, 38.993824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060932, 39.276691, 39.044926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003808, -0.436110, -0.899885,
		0.300428, 0.857821, -0.416996,
		0.953797, -0.271938, 0.127753,
		32.347073, 39.195110, 39.083252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014416, 39.550568, 38.406578>,  <31.679413, 39.385468, 38.993824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014416, 39.550568, 38.406578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242420, 39.274670, 38.585167>,  <32.379223, 39.109131, 38.692322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242420, 39.274670, 38.585167>,  <32.014416, 39.550568, 38.406578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242420, 39.274670, 38.585167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067861, -0.502016, -0.862192,
		0.818828, 0.521759, -0.239349,
		0.570013, -0.689745, 0.446471,
		32.413425, 39.067745, 38.719109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290653, 39.423607, 37.788643>,  <32.014416, 39.550568, 38.406578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290653, 39.423607, 37.788643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380756, 39.155174, 38.071178>,  <32.434818, 38.994114, 38.240700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380756, 39.155174, 38.071178>,  <32.290653, 39.423607, 37.788643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380756, 39.155174, 38.071178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035718, -0.718796, -0.694302,
		0.973645, 0.181624, -0.137943,
		0.225255, -0.671077, 0.706340,
		32.448334, 38.953850, 38.283081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906181, 39.161701, 37.578571>,  <32.290653, 39.423607, 37.788643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906181, 39.161701, 37.578571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714272, 38.897190, 37.809231>,  <32.599125, 38.738483, 37.947624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714272, 38.897190, 37.809231>,  <32.906181, 39.161701, 37.578571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714272, 38.897190, 37.809231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030800, -0.669517, -0.742158,
		0.876849, -0.338311, 0.341587,
		-0.479779, -0.661281, 0.576646,
		32.570339, 38.698807, 37.982224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166988, 38.563850, 37.323685>,  <32.906181, 39.161701, 37.578571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166988, 38.563850, 37.323685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865181, 38.409550, 37.536060>,  <32.684097, 38.316971, 37.663486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865181, 38.409550, 37.536060>,  <33.166988, 38.563850, 37.323685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865181, 38.409550, 37.536060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142659, -0.693265, -0.706422,
		0.640583, -0.608754, 0.468052,
		-0.754521, -0.385750, 0.530937,
		32.638824, 38.293823, 37.695343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224312, 37.833424, 37.244137>,  <33.166988, 38.563850, 37.323685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224312, 37.833424, 37.244137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843075, 37.895275, 37.348221>,  <32.614334, 37.932384, 37.410671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843075, 37.895275, 37.348221>,  <33.224312, 37.833424, 37.244137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843075, 37.895275, 37.348221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294102, -0.676383, -0.675285,
		0.071583, -0.720136, 0.690131,
		-0.953090, 0.154630, 0.260210,
		32.557148, 37.941666, 37.426285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905060, 37.294956, 36.995281>,  <33.224312, 37.833424, 37.244137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905060, 37.294956, 36.995281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566612, 37.486633, 37.088627>,  <32.363544, 37.601639, 37.144634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566612, 37.486633, 37.088627>,  <32.905060, 37.294956, 36.995281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566612, 37.486633, 37.088627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506537, -0.586694, -0.631832,
		-0.165856, -0.652812, 0.739141,
		-0.846116, 0.479194, 0.233366,
		32.312778, 37.630390, 37.158638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402832, 36.726246, 37.062435>,  <32.905060, 37.294956, 36.995281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402832, 36.726246, 37.062435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187778, 37.058472, 37.004303>,  <32.058746, 37.257805, 36.969425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187778, 37.058472, 37.004303>,  <32.402832, 36.726246, 37.062435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187778, 37.058472, 37.004303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603436, -0.499392, -0.621669,
		-0.588911, -0.246532, 0.769679,
		-0.537633, 0.830560, -0.145331,
		32.026489, 37.307640, 36.960705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666090, 36.509174, 37.153427>,  <32.402832, 36.726246, 37.062435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666090, 36.509174, 37.153427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663885, 36.838497, 36.926403>,  <31.662563, 37.036091, 36.790188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663885, 36.838497, 36.926403>,  <31.666090, 36.509174, 37.153427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663885, 36.838497, 36.926403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517166, -0.488120, -0.703049,
		-0.855867, 0.289650, 0.428479,
		-0.005511, 0.823311, -0.567563,
		31.662231, 37.085491, 36.756134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006489, 36.607029, 36.971603>,  <31.666090, 36.509174, 37.153427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006489, 36.607029, 36.971603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222519, 36.805908, 36.699982>,  <31.352137, 36.925236, 36.537010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222519, 36.805908, 36.699982>,  <31.006489, 36.607029, 36.971603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222519, 36.805908, 36.699982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487597, -0.472792, -0.733973,
		-0.685980, 0.727506, -0.012912,
		0.540075, 0.497195, -0.679056,
		31.384541, 36.955067, 36.496265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522369, 36.970322, 36.505733>,  <31.006489, 36.607029, 36.971603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522369, 36.970322, 36.505733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876305, 36.901245, 36.332649>,  <31.088667, 36.859798, 36.228798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876305, 36.901245, 36.332649>,  <30.522369, 36.970322, 36.505733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876305, 36.901245, 36.332649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451832, -0.544548, -0.706622,
		-0.113607, 0.820760, -0.559863,
		0.884840, -0.172687, -0.432710,
		31.141756, 36.849438, 36.202835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333654, 36.885139, 35.760151>,  <30.522369, 36.970322, 36.505733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333654, 36.885139, 35.760151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704357, 36.738239, 35.791771>,  <30.926779, 36.650097, 35.810741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704357, 36.738239, 35.791771>,  <30.333654, 36.885139, 35.760151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704357, 36.738239, 35.791771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233673, -0.728317, -0.644168,
		0.294143, 0.578515, -0.760789,
		0.926756, -0.367253, 0.079046,
		30.982384, 36.628063, 35.815483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396273, 36.693062, 35.102779>,  <30.333654, 36.885139, 35.760151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396273, 36.693062, 35.102779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704683, 36.500957, 35.270046>,  <30.889730, 36.385696, 35.370407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704683, 36.500957, 35.270046>,  <30.396273, 36.693062, 35.102779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704683, 36.500957, 35.270046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044516, -0.695715, -0.716937,
		0.635244, 0.534163, -0.557794,
		0.771027, -0.480261, 0.418170,
		30.935991, 36.356880, 35.395496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846762, 36.455685, 34.558258>,  <30.396273, 36.693062, 35.102779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846762, 36.455685, 34.558258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946285, 36.226379, 34.870529>,  <31.006001, 36.088795, 35.057892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946285, 36.226379, 34.870529>,  <30.846762, 36.455685, 34.558258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946285, 36.226379, 34.870529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057557, -0.813356, -0.578912,
		0.966840, 0.099106, -0.235367,
		0.248811, -0.573263, 0.780681,
		31.020929, 36.054401, 35.104733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418955, 36.100716, 34.378479>,  <30.846762, 36.455685, 34.558258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418955, 36.100716, 34.378479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274715, 35.888927, 34.685627>,  <31.188171, 35.761852, 34.869915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274715, 35.888927, 34.685627>,  <31.418955, 36.100716, 34.378479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274715, 35.888927, 34.685627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007349, -0.824846, -0.565310,
		0.932693, -0.198206, 0.301327,
		-0.360596, -0.529475, 0.767871,
		31.166536, 35.730083, 34.915989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831062, 35.454395, 34.398918>,  <31.418955, 36.100716, 34.378479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831062, 35.454395, 34.398918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497458, 35.349537, 34.593117>,  <31.297295, 35.286621, 34.709637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497458, 35.349537, 34.593117>,  <31.831062, 35.454395, 34.398918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497458, 35.349537, 34.593117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015864, -0.868164, -0.496024,
		0.551519, -0.421392, 0.719900,
		-0.834012, -0.262146, 0.485494,
		31.247253, 35.270893, 34.738766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842722, 35.301697, 33.711071>,  <31.831062, 35.454395, 34.398918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842722, 35.301697, 33.711071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188538, 35.496517, 33.661503>,  <32.396027, 35.613407, 33.631760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188538, 35.496517, 33.661503>,  <31.842722, 35.301697, 33.711071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188538, 35.496517, 33.661503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201339, -0.561587, -0.802548,
		-0.460473, 0.668883, -0.583575,
		0.864538, 0.487048, -0.123923,
		32.447899, 35.642632, 33.624325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959837, 35.553993, 33.061367>,  <31.842722, 35.301697, 33.711071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959837, 35.553993, 33.061367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323936, 35.479958, 33.209522>,  <32.542397, 35.435535, 33.298416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323936, 35.479958, 33.209522>,  <31.959837, 35.553993, 33.061367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323936, 35.479958, 33.209522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208394, -0.568189, -0.796074,
		0.357799, 0.801812, -0.478621,
		0.910248, -0.185093, 0.370390,
		32.597012, 35.424431, 33.320641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408806, 35.393719, 32.460339>,  <31.959837, 35.553993, 33.061367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408806, 35.393719, 32.460339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584763, 35.226971, 32.778511>,  <32.690338, 35.126923, 32.969414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584763, 35.226971, 32.778511>,  <32.408806, 35.393719, 32.460339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584763, 35.226971, 32.778511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240644, -0.798626, -0.551622,
		0.865208, 0.434071, -0.250994,
		0.439893, -0.416867, 0.795434,
		32.716732, 35.101910, 33.017139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128658, 35.307934, 32.410320>,  <32.408806, 35.393719, 32.460339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128658, 35.307934, 32.410320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938080, 35.031425, 32.627628>,  <32.823734, 34.865520, 32.758015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938080, 35.031425, 32.627628>,  <33.128658, 35.307934, 32.410320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938080, 35.031425, 32.627628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369341, -0.718113, -0.589831,
		0.797865, -0.080367, 0.597454,
		-0.476443, -0.691270, 0.543275,
		32.795147, 34.824043, 32.790611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844463, 34.827904, 32.526394>,  <33.128658, 35.307934, 32.410320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844463, 34.827904, 32.526394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957859, 34.446163, 32.564018>,  <34.025894, 34.217117, 32.586594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957859, 34.446163, 32.564018>,  <33.844463, 34.827904, 32.526394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957859, 34.446163, 32.564018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063113, 0.079302, 0.994851,
		-0.956897, -0.287964, -0.037751,
		0.283487, -0.954352, 0.094059,
		34.042904, 34.159859, 32.592236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463890, 34.671986, 33.130924>,  <33.844463, 34.827904, 32.526394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463890, 34.671986, 33.130924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764927, 34.423161, 33.044540>,  <33.945549, 34.273865, 32.992710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764927, 34.423161, 33.044540>,  <33.463890, 34.671986, 33.130924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764927, 34.423161, 33.044540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212236, -0.081313, 0.973830,
		-0.623348, -0.778730, 0.070829,
		0.752591, -0.622067, -0.215961,
		33.990704, 34.236542, 32.979752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342155, 34.045296, 33.555237>,  <33.463890, 34.671986, 33.130924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342155, 34.045296, 33.555237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726105, 34.135086, 33.487999>,  <33.956474, 34.188961, 33.447655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726105, 34.135086, 33.487999>,  <33.342155, 34.045296, 33.555237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726105, 34.135086, 33.487999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211107, -0.183811, 0.960025,
		0.184605, -0.956987, -0.223824,
		0.959873, 0.224476, -0.168094,
		34.014065, 34.202431, 33.437572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702061, 33.503304, 33.943417>,  <33.342155, 34.045296, 33.555237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702061, 33.503304, 33.943417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002415, 33.755524, 33.864853>,  <34.182629, 33.906857, 33.817715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002415, 33.755524, 33.864853>,  <33.702061, 33.503304, 33.943417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002415, 33.755524, 33.864853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406009, -0.206174, 0.890309,
		0.520888, -0.748266, -0.410821,
		0.750888, 0.630548, -0.196409,
		34.227680, 33.944687, 33.805931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366226, 33.135662, 34.097881>,  <33.702061, 33.503304, 33.943417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366226, 33.135662, 34.097881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435066, 33.528652, 34.126495>,  <34.476372, 33.764446, 34.143665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435066, 33.528652, 34.126495>,  <34.366226, 33.135662, 34.097881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435066, 33.528652, 34.126495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206190, -0.106943, 0.972651,
		0.963258, -0.152646, -0.220983,
		0.172104, 0.982478, 0.071539,
		34.486698, 33.823395, 34.147957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880123, 33.257523, 34.514523>,  <34.366226, 33.135662, 34.097881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880123, 33.257523, 34.514523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717678, 33.621723, 34.545658>,  <34.620213, 33.840244, 34.564339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717678, 33.621723, 34.545658>,  <34.880123, 33.257523, 34.514523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717678, 33.621723, 34.545658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042240, -0.066383, 0.996900,
		0.912848, 0.408138, -0.011501,
		-0.406109, 0.910503, 0.077837,
		34.595844, 33.894875, 34.569008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183502, 33.638874, 35.138187>,  <34.880123, 33.257523, 34.514523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183502, 33.638874, 35.138187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832275, 33.815891, 35.065365>,  <34.621540, 33.922104, 35.021671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832275, 33.815891, 35.065365>,  <35.183502, 33.638874, 35.138187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832275, 33.815891, 35.065365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045300, 0.301877, 0.952270,
		0.476383, 0.844407, -0.245022,
		-0.878070, 0.442546, -0.182061,
		34.568855, 33.948654, 35.010746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230545, 34.144909, 35.517845>,  <35.183502, 33.638874, 35.138187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230545, 34.144909, 35.517845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835026, 34.141743, 35.458233>,  <34.597713, 34.139843, 35.422466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835026, 34.141743, 35.458233>,  <35.230545, 34.144909, 35.517845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835026, 34.141743, 35.458233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146341, 0.247230, 0.957842,
		0.029263, 0.968924, -0.245619,
		-0.988801, -0.007915, -0.149028,
		34.538383, 34.139370, 35.413525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041008, 34.659603, 35.920208>,  <35.230545, 34.144909, 35.517845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041008, 34.659603, 35.920208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706703, 34.451794, 35.849098>,  <34.506123, 34.327110, 35.806431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706703, 34.451794, 35.849098>,  <35.041008, 34.659603, 35.920208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706703, 34.451794, 35.849098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306775, 0.173256, 0.935880,
		-0.455408, 0.836708, -0.304177,
		-0.835759, -0.519521, -0.177779,
		34.455975, 34.295937, 35.795765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577011, 34.972591, 36.227100>,  <35.041008, 34.659603, 35.920208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577011, 34.972591, 36.227100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431240, 34.603313, 36.178257>,  <34.343777, 34.381748, 36.148952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431240, 34.603313, 36.178257>,  <34.577011, 34.972591, 36.227100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431240, 34.603313, 36.178257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188238, -0.055386, 0.980560,
		-0.912010, 0.380324, -0.153596,
		-0.364423, -0.923193, -0.122105,
		34.321915, 34.326355, 36.141624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853649, 35.000118, 36.540634>,  <34.577011, 34.972591, 36.227100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853649, 35.000118, 36.540634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982155, 34.621349, 36.545002>,  <34.059258, 34.394089, 36.547623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982155, 34.621349, 36.545002>,  <33.853649, 35.000118, 36.540634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982155, 34.621349, 36.545002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074149, -0.013656, 0.997154,
		-0.944083, -0.321159, -0.074601,
		0.321263, -0.946927, 0.010921,
		34.078533, 34.337273, 36.548279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341446, 34.629055, 36.818356>,  <33.853649, 35.000118, 36.540634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341446, 34.629055, 36.818356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640915, 34.379810, 36.908878>,  <33.820599, 34.230263, 36.963192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640915, 34.379810, 36.908878>,  <33.341446, 34.629055, 36.818356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640915, 34.379810, 36.908878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317389, -0.037193, 0.947566,
		-0.582024, -0.781247, -0.225615,
		0.748674, -0.623113, 0.226311,
		33.865517, 34.192875, 36.976772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115246, 34.058838, 37.295258>,  <33.341446, 34.629055, 36.818356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115246, 34.058838, 37.295258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509159, 34.023701, 37.355236>,  <33.745506, 34.002621, 37.391224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509159, 34.023701, 37.355236>,  <33.115246, 34.058838, 37.295258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509159, 34.023701, 37.355236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162358, -0.157415, 0.974095,
		-0.061960, -0.983618, -0.169281,
		0.984784, -0.087839, 0.149945,
		33.804596, 33.997349, 37.400219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100601, 33.521748, 37.797302>,  <33.115246, 34.058838, 37.295258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100601, 33.521748, 37.797302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464211, 33.687912, 37.810642>,  <33.682377, 33.787613, 37.818645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464211, 33.687912, 37.810642>,  <33.100601, 33.521748, 37.797302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464211, 33.687912, 37.810642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020474, -0.124438, 0.992016,
		0.416249, -0.901080, -0.121622,
		0.909020, 0.415416, 0.033348,
		33.736916, 33.812538, 37.820648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565056, 33.024632, 38.084541>,  <33.100601, 33.521748, 37.797302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565056, 33.024632, 38.084541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713024, 33.387920, 38.162815>,  <33.801804, 33.605892, 38.209782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713024, 33.387920, 38.162815>,  <33.565056, 33.024632, 38.084541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713024, 33.387920, 38.162815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244464, -0.108054, 0.963619,
		0.896324, -0.404300, 0.182056,
		0.369919, 0.908221, 0.195688,
		33.824001, 33.660385, 38.221523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032104, 32.993267, 38.634361>,  <33.565056, 33.024632, 38.084541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032104, 32.993267, 38.634361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958286, 33.386383, 38.637524>,  <33.913994, 33.622253, 38.639423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958286, 33.386383, 38.637524>,  <34.032104, 32.993267, 38.634361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958286, 33.386383, 38.637524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075402, 0.006134, 0.997134,
		0.979927, 0.184613, -0.075237,
		-0.184546, 0.982792, 0.007910,
		33.902924, 33.681221, 38.639896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485199, 33.233070, 39.124233>,  <34.032104, 32.993267, 38.634361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485199, 33.233070, 39.124233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192921, 33.503868, 39.089008>,  <34.017551, 33.666348, 39.067875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192921, 33.503868, 39.089008>,  <34.485199, 33.233070, 39.124233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192921, 33.503868, 39.089008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100163, 0.021279, 0.994743,
		0.675314, 0.735677, 0.052261,
		-0.730698, 0.676998, -0.088058,
		33.973713, 33.706966, 39.062592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672611, 33.637787, 39.672775>,  <34.485199, 33.233070, 39.124233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672611, 33.637787, 39.672775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293121, 33.728840, 39.585049>,  <34.065426, 33.783470, 39.532413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293121, 33.728840, 39.585049>,  <34.672611, 33.637787, 39.672775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293121, 33.728840, 39.585049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234229, -0.040354, 0.971344,
		0.212260, 0.972910, 0.091603,
		-0.948727, 0.227634, -0.219318,
		34.008503, 33.797131, 39.519253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470749, 34.095200, 40.117573>,  <34.672611, 33.637787, 39.672775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470749, 34.095200, 40.117573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107006, 33.992924, 39.986305>,  <33.888760, 33.931557, 39.907547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107006, 33.992924, 39.986305>,  <34.470749, 34.095200, 40.117573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107006, 33.992924, 39.986305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353565, 0.059306, 0.933528,
		-0.219231, 0.964938, -0.144333,
		-0.909357, -0.255690, -0.328166,
		33.834198, 33.916218, 39.887856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063534, 34.501392, 40.494987>,  <34.470749, 34.095200, 40.117573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063534, 34.501392, 40.494987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812431, 34.216511, 40.369328>,  <33.661770, 34.045582, 40.293930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812431, 34.216511, 40.369328>,  <34.063534, 34.501392, 40.494987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812431, 34.216511, 40.369328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341666, -0.110521, 0.933300,
		-0.699420, 0.693218, -0.173956,
		-0.627754, -0.712204, -0.314149,
		33.624104, 34.002850, 40.275082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368496, 34.700207, 40.531845>,  <34.063534, 34.501392, 40.494987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368496, 34.700207, 40.531845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361782, 34.300831, 40.553162>,  <33.357754, 34.061207, 40.565952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361782, 34.300831, 40.553162>,  <33.368496, 34.700207, 40.531845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361782, 34.300831, 40.553162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401572, 0.055539, 0.914142,
		-0.915674, -0.006059, -0.401877,
		-0.016782, -0.998438, 0.053289,
		33.356747, 34.001301, 40.569149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641132, 34.474415, 40.740639>,  <33.368496, 34.700207, 40.531845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641132, 34.474415, 40.740639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906456, 34.190960, 40.836849>,  <33.065651, 34.020885, 40.894577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906456, 34.190960, 40.836849>,  <32.641132, 34.474415, 40.740639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906456, 34.190960, 40.836849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350847, -0.010580, 0.936373,
		-0.661005, -0.705493, -0.255641,
		0.663309, -0.708638, 0.240527,
		33.105450, 33.978367, 40.909008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238255, 33.957081, 41.010460>,  <32.641132, 34.474415, 40.740639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238255, 33.957081, 41.010460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607346, 33.867409, 41.135883>,  <32.828800, 33.813606, 41.211136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607346, 33.867409, 41.135883>,  <32.238255, 33.957081, 41.010460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607346, 33.867409, 41.135883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369444, -0.282367, 0.885314,
		-0.109934, -0.932744, -0.343371,
		0.922728, -0.224182, 0.313554,
		32.884163, 33.800156, 41.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094479, 33.416374, 41.509167>,  <32.238255, 33.957081, 41.010460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094479, 33.416374, 41.509167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474133, 33.515484, 41.586887>,  <32.701923, 33.574951, 41.633522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474133, 33.515484, 41.586887>,  <32.094479, 33.416374, 41.509167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474133, 33.515484, 41.586887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155928, -0.166253, 0.973677,
		0.273555, -0.954446, -0.119162,
		0.949133, 0.247774, 0.194304,
		32.758873, 33.589817, 41.645180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293549, 32.960396, 41.903816>,  <32.094479, 33.416374, 41.509167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293549, 32.960396, 41.903816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564980, 33.248108, 41.963379>,  <32.727837, 33.420734, 41.999115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564980, 33.248108, 41.963379>,  <32.293549, 32.960396, 41.903816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564980, 33.248108, 41.963379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070827, -0.265850, 0.961409,
		0.731105, -0.641845, -0.231345,
		0.678578, 0.719277, 0.148904,
		32.768555, 33.463890, 42.008049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846214, 32.655510, 42.234566>,  <32.293549, 32.960396, 41.903816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846214, 32.655510, 42.234566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871639, 33.046524, 42.314945>,  <32.886894, 33.281132, 42.363171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871639, 33.046524, 42.314945>,  <32.846214, 32.655510, 42.234566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871639, 33.046524, 42.314945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118835, -0.192506, 0.974074,
		0.990878, -0.085789, 0.103930,
		0.063558, 0.977539, 0.200945,
		32.890705, 33.339787, 42.375229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215298, 32.689407, 42.900009>,  <32.846214, 32.655510, 42.234566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215298, 32.689407, 42.900009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029770, 33.042252, 42.867142>,  <32.918453, 33.253960, 42.847420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029770, 33.042252, 42.867142>,  <33.215298, 32.689407, 42.900009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029770, 33.042252, 42.867142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295492, -0.066598, 0.953021,
		0.835200, 0.466306, 0.291546,
		-0.463816, 0.882113, -0.082167,
		32.890625, 33.306885, 42.842491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392540, 32.948578, 43.534031>,  <33.215298, 32.689407, 42.900009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392540, 32.948578, 43.534031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086140, 33.168468, 43.400738>,  <32.902298, 33.300404, 43.320763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086140, 33.168468, 43.400738>,  <33.392540, 32.948578, 43.534031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086140, 33.168468, 43.400738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410782, -0.019848, 0.911518,
		0.494471, 0.835110, 0.241021,
		-0.766001, 0.549725, -0.333233,
		32.856339, 33.333385, 43.300766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230381, 33.442974, 44.078983>,  <33.392540, 32.948578, 43.534031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230381, 33.442974, 44.078983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901337, 33.429859, 43.851921>,  <32.703911, 33.421989, 43.715683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901337, 33.429859, 43.851921>,  <33.230381, 33.442974, 44.078983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901337, 33.429859, 43.851921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568575, 0.037591, 0.821772,
		-0.005608, 0.998755, -0.049567,
		-0.822612, -0.032791, -0.567657,
		32.654552, 33.420021, 43.681625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770813, 33.969463, 44.501324>,  <33.230381, 33.442974, 44.078983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770813, 33.969463, 44.501324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533119, 33.745983, 44.269897>,  <32.390503, 33.611897, 44.131042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533119, 33.745983, 44.269897>,  <32.770813, 33.969463, 44.501324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533119, 33.745983, 44.269897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707428, 0.020813, 0.706480,
		-0.382668, 0.829109, -0.407608,
		-0.594232, -0.558700, -0.578570,
		32.354851, 33.578373, 44.096325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106766, 34.372997, 44.356071>,  <32.770813, 33.969463, 44.501324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106766, 34.372997, 44.356071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075039, 33.975914, 44.319748>,  <32.056004, 33.737663, 44.297955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075039, 33.975914, 44.319748>,  <32.106766, 34.372997, 44.356071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075039, 33.975914, 44.319748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595949, -0.025806, 0.802607,
		-0.799095, 0.117782, -0.589554,
		-0.079319, -0.992704, -0.090813,
		32.051243, 33.678104, 44.292503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392941, 34.236717, 44.311020>,  <32.106766, 34.372997, 44.356071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392941, 34.236717, 44.311020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566256, 33.899879, 44.439480>,  <31.670244, 33.697777, 44.516556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566256, 33.899879, 44.439480>,  <31.392941, 34.236717, 44.311020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566256, 33.899879, 44.439480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548559, 0.036315, 0.835323,
		-0.715085, -0.538103, -0.446205,
		0.433286, -0.842096, 0.321150,
		31.696241, 33.647251, 44.535824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913427, 33.709980, 44.568367>,  <31.392941, 34.236717, 44.311020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913427, 33.709980, 44.568367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255323, 33.575100, 44.726212>,  <31.460461, 33.494171, 44.820919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255323, 33.575100, 44.726212>,  <30.913427, 33.709980, 44.568367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255323, 33.575100, 44.726212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397871, 0.062624, 0.915301,
		-0.333349, -0.939349, -0.080633,
		0.854738, -0.337196, 0.394616,
		31.511745, 33.473942, 44.844597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668491, 33.277069, 45.059082>,  <30.913427, 33.709980, 44.568367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668491, 33.277069, 45.059082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046288, 33.374363, 45.147419>,  <31.272964, 33.432739, 45.200420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046288, 33.374363, 45.147419>,  <30.668491, 33.277069, 45.059082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046288, 33.374363, 45.147419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227089, -0.002423, 0.973871,
		0.237418, -0.969964, 0.052948,
		0.944491, 0.243238, 0.220843,
		31.329636, 33.447334, 45.213673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874512, 32.885700, 45.571247>,  <30.668491, 33.277069, 45.059082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874512, 32.885700, 45.571247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150724, 33.171040, 45.619076>,  <31.316452, 33.342243, 45.647774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150724, 33.171040, 45.619076>,  <30.874512, 32.885700, 45.571247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150724, 33.171040, 45.619076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160746, -0.009830, 0.986947,
		0.705213, -0.700740, 0.107880,
		0.690532, 0.713349, 0.119573,
		31.357883, 33.385044, 45.654949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302734, 32.609657, 46.036774>,  <30.874512, 32.885700, 45.571247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302734, 32.609657, 46.036774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329288, 33.008736, 46.042332>,  <31.345221, 33.248184, 46.045666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329288, 33.008736, 46.042332>,  <31.302734, 32.609657, 46.036774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329288, 33.008736, 46.042332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158215, -0.003229, 0.987399,
		0.985171, -0.067749, 0.157637,
		0.066387, 0.997697, 0.013900,
		31.349205, 33.308044, 46.046501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648966, 32.817833, 46.574139>,  <31.302734, 32.609657, 46.036774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648966, 32.817833, 46.574139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431814, 33.149811, 46.522785>,  <31.301523, 33.348995, 46.491974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431814, 33.149811, 46.522785>,  <31.648966, 32.817833, 46.574139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431814, 33.149811, 46.522785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291342, -0.042738, 0.955664,
		0.787657, 0.556212, 0.264998,
		-0.542877, 0.829941, -0.128385,
		31.268951, 33.398792, 46.484268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992680, 33.369678, 46.840401>,  <31.648966, 32.817833, 46.574139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992680, 33.369678, 46.840401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602098, 33.350765, 46.924591>,  <31.367750, 33.339417, 46.975105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602098, 33.350765, 46.924591>,  <31.992680, 33.369678, 46.840401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602098, 33.350765, 46.924591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207838, -0.467540, 0.859191,
		0.057783, 0.882706, 0.466359,
		-0.976455, -0.047281, 0.210476,
		31.309162, 33.336582, 46.987736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835201, 33.710945, 47.456841>,  <31.992680, 33.369678, 46.840401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835201, 33.710945, 47.456841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610191, 33.386631, 47.392109>,  <31.475185, 33.192043, 47.353271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610191, 33.386631, 47.392109>,  <31.835201, 33.710945, 47.456841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610191, 33.386631, 47.392109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238101, -0.346304, 0.907404,
		-0.791754, 0.471905, 0.387854,
		-0.562524, -0.810789, -0.161826,
		31.441435, 33.143394, 47.343559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388279, 33.560268, 48.054306>,  <31.835201, 33.710945, 47.456841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388279, 33.560268, 48.054306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391970, 33.197704, 47.885387>,  <31.394184, 32.980164, 47.784039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391970, 33.197704, 47.885387>,  <31.388279, 33.560268, 48.054306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391970, 33.197704, 47.885387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183429, -0.413611, 0.891784,
		-0.982990, -0.085690, 0.162445,
		0.009228, -0.906412, -0.422294,
		31.394737, 32.925781, 47.758698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019114, 33.115707, 48.489891>,  <31.388279, 33.560268, 48.054306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019114, 33.115707, 48.489891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222118, 32.858761, 48.260178>,  <31.343922, 32.704594, 48.122349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222118, 32.858761, 48.260178>,  <31.019114, 33.115707, 48.489891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222118, 32.858761, 48.260178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232924, -0.539401, 0.809192,
		-0.829564, -0.544439, -0.124131,
		0.507512, -0.642364, -0.574282,
		31.374372, 32.666050, 48.087894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779926, 32.338509, 48.620491>,  <31.019114, 33.115707, 48.489891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779926, 32.338509, 48.620491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155382, 32.380882, 48.489201>,  <31.380655, 32.406307, 48.410427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155382, 32.380882, 48.489201>,  <30.779926, 32.338509, 48.620491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155382, 32.380882, 48.489201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330177, -0.551064, 0.766363,
		-0.099693, -0.827712, -0.552226,
		0.938640, 0.105932, -0.328229,
		31.436974, 32.412663, 48.390732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092480, 31.738092, 48.761276>,  <30.779926, 32.338509, 48.620491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092480, 31.738092, 48.761276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390343, 31.996870, 48.695621>,  <31.569061, 32.152138, 48.656227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390343, 31.996870, 48.695621>,  <31.092480, 31.738092, 48.761276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390343, 31.996870, 48.695621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493894, -0.368692, 0.787486,
		0.448944, -0.667477, -0.594073,
		0.744659, 0.646946, -0.164141,
		31.613741, 32.190952, 48.646378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505970, 31.259266, 48.247051>,  <31.092480, 31.738092, 48.761276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505970, 31.259266, 48.247051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749098, 31.007854, 48.441166>,  <31.894976, 30.857008, 48.557636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749098, 31.007854, 48.441166>,  <31.505970, 31.259266, 48.247051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749098, 31.007854, 48.441166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623460, 0.000751, 0.781855,
		-0.491784, -0.777785, -0.391407,
		0.607821, -0.628530, 0.485288,
		31.931444, 30.819296, 48.586754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108658, 30.638746, 48.493057>,  <31.505970, 31.259266, 48.247051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108658, 30.638746, 48.493057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424007, 30.737316, 48.718533>,  <31.613216, 30.796457, 48.853817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424007, 30.737316, 48.718533>,  <31.108658, 30.638746, 48.493057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424007, 30.737316, 48.718533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568255, -0.059351, 0.820709,
		0.235700, -0.967343, 0.093242,
		0.788373, 0.246426, 0.563687,
		31.660519, 30.811243, 48.887638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971621, 30.308592, 49.048489>,  <31.108658, 30.638746, 48.493057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971621, 30.308592, 49.048489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234154, 30.598827, 49.131191>,  <31.391674, 30.772968, 49.180813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234154, 30.598827, 49.131191>,  <30.971621, 30.308592, 49.048489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234154, 30.598827, 49.131191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464979, 0.173202, 0.868214,
		0.594157, -0.665974, 0.451062,
		0.656332, 0.725589, 0.206755,
		31.431053, 30.816504, 49.193218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848339, 29.832659, 49.474308>,  <30.971621, 30.308592, 49.048489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848339, 29.832659, 49.474308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653790, 29.669756, 49.783520>,  <30.537060, 29.572014, 49.969048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653790, 29.669756, 49.783520>,  <30.848339, 29.832659, 49.474308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653790, 29.669756, 49.783520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849238, -0.428434, 0.308610,
		0.205511, 0.806589, 0.554237,
		-0.486375, -0.407256, 0.773034,
		30.507877, 29.547579, 50.015430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253716, 30.275717, 49.447338>,  <30.848339, 29.832659, 49.474308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253716, 30.275717, 49.447338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476673, 30.413000, 49.749733>,  <30.610447, 30.495371, 49.931171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476673, 30.413000, 49.749733>,  <30.253716, 30.275717, 49.447338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476673, 30.413000, 49.749733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799255, 0.024649, -0.600486,
		-0.224726, 0.938936, -0.260572,
		0.557395, 0.343209, 0.755989,
		30.643892, 30.515963, 49.976528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626482, 30.970554, 49.342373>,  <30.253716, 30.275717, 49.447338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626482, 30.970554, 49.342373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831795, 30.752813, 49.607773>,  <30.954983, 30.622169, 49.767014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831795, 30.752813, 49.607773>,  <30.626482, 30.970554, 49.342373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831795, 30.752813, 49.607773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799731, 0.022853, -0.599923,
		0.311406, 0.838546, 0.447064,
		0.513280, -0.544351, 0.663495,
		30.985779, 30.589508, 49.806820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359758, 31.285341, 49.601738>,  <30.626482, 30.970554, 49.342373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359758, 31.285341, 49.601738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355412, 30.885387, 49.597542>,  <31.352802, 30.645414, 49.595024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355412, 30.885387, 49.597542>,  <31.359758, 31.285341, 49.601738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355412, 30.885387, 49.597542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828047, -0.003120, -0.560650,
		0.560553, -0.014780, 0.827987,
		-0.010869, -0.999886, -0.010490,
		31.352150, 30.585423, 49.594395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035866, 31.044769, 49.874916>,  <31.359758, 31.285341, 49.601738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035866, 31.044769, 49.874916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852800, 30.787157, 49.629715>,  <31.742962, 30.632589, 49.482594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852800, 30.787157, 49.629715>,  <32.035866, 31.044769, 49.874916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852800, 30.787157, 49.629715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825732, -0.052200, -0.561643,
		0.329717, -0.763217, 0.555686,
		-0.457662, -0.644030, -0.613001,
		31.715502, 30.593948, 49.445816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470455, 30.427464, 49.724945>,  <32.035866, 31.044769, 49.874916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470455, 30.427464, 49.724945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199211, 30.465597, 49.433445>,  <32.036465, 30.488478, 49.258545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199211, 30.465597, 49.433445>,  <32.470455, 30.427464, 49.724945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199211, 30.465597, 49.433445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725314, -0.073307, -0.684504,
		-0.118681, -0.992742, -0.019440,
		-0.678111, 0.095338, -0.728750,
		31.995777, 30.494198, 49.214821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716537, 30.029104, 49.267467>,  <32.470455, 30.427464, 49.724945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716537, 30.029104, 49.267467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477821, 30.258554, 49.043041>,  <32.334591, 30.396225, 48.908386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477821, 30.258554, 49.043041>,  <32.716537, 30.029104, 49.267467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477821, 30.258554, 49.043041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643001, -0.076392, -0.762046,
		-0.479991, -0.815547, -0.323253,
		-0.596790, 0.573627, -0.561064,
		32.298786, 30.430643, 48.874722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537693, 29.720636, 48.659935>,  <32.716537, 30.029104, 49.267467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537693, 29.720636, 48.659935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495815, 30.106396, 48.562798>,  <32.470688, 30.337852, 48.504517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495815, 30.106396, 48.562798>,  <32.537693, 29.720636, 48.659935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495815, 30.106396, 48.562798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541752, -0.149467, -0.827142,
		-0.833993, -0.218156, -0.506818,
		-0.104694, 0.964400, -0.242841,
		32.464409, 30.395716, 48.489944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441177, 29.718637, 47.981258>,  <32.537693, 29.720636, 48.659935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441177, 29.718637, 47.981258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565758, 30.086102, 48.078468>,  <32.640507, 30.306580, 48.136795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565758, 30.086102, 48.078468>,  <32.441177, 29.718637, 47.981258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565758, 30.086102, 48.078468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568580, 0.024757, -0.822255,
		-0.761389, 0.394275, -0.514620,
		0.311455, 0.918659, 0.243026,
		32.659195, 30.361700, 48.151375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300323, 29.988485, 47.401245>,  <32.441177, 29.718637, 47.981258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300323, 29.988485, 47.401245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573765, 30.215284, 47.585075>,  <32.737827, 30.351364, 47.695374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573765, 30.215284, 47.585075>,  <32.300323, 29.988485, 47.401245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573765, 30.215284, 47.585075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467526, 0.143343, -0.872280,
		-0.560455, 0.811153, -0.167096,
		0.683600, 0.566995, 0.459572,
		32.778847, 30.385384, 47.722946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357838, 30.578270, 46.908829>,  <32.300323, 29.988485, 47.401245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357838, 30.578270, 46.908829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678894, 30.559734, 47.146690>,  <32.871529, 30.548613, 47.289406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678894, 30.559734, 47.146690>,  <32.357838, 30.578270, 46.908829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678894, 30.559734, 47.146690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588268, 0.226155, -0.776398,
		-0.098506, 0.972988, 0.208783,
		0.802644, -0.046340, 0.594656,
		32.919685, 30.545832, 47.325089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754848, 31.205181, 46.676502>,  <32.357838, 30.578270, 46.908829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754848, 31.205181, 46.676502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016258, 30.993492, 46.892956>,  <33.173103, 30.866480, 47.022827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016258, 30.993492, 46.892956>,  <32.754848, 31.205181, 46.676502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016258, 30.993492, 46.892956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677083, 0.089194, -0.730481,
		0.338320, 0.843783, 0.416618,
		0.653527, -0.529221, 0.541135,
		33.212315, 30.834726, 47.055298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333912, 31.622768, 46.743538>,  <32.754848, 31.205181, 46.676502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333912, 31.622768, 46.743538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433884, 31.239447, 46.798954>,  <33.493866, 31.009455, 46.832203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433884, 31.239447, 46.798954>,  <33.333912, 31.622768, 46.743538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433884, 31.239447, 46.798954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723477, 0.089731, -0.684492,
		0.643519, 0.271303, 0.715736,
		0.249928, -0.958302, 0.138538,
		33.508862, 30.951956, 46.840515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007095, 31.669363, 46.890610>,  <33.333912, 31.622768, 46.743538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007095, 31.669363, 46.890610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953922, 31.283686, 46.798820>,  <33.922016, 31.052279, 46.743748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953922, 31.283686, 46.798820>,  <34.007095, 31.669363, 46.890610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953922, 31.283686, 46.798820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805759, 0.029681, -0.591500,
		0.577132, -0.263531, 0.772962,
		-0.132936, -0.964194, -0.229472,
		33.914040, 30.994427, 46.729980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627335, 31.374090, 46.797596>,  <34.007095, 31.669363, 46.890610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627335, 31.374090, 46.797596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419144, 31.093882, 46.602303>,  <34.294228, 30.925756, 46.485126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419144, 31.093882, 46.602303>,  <34.627335, 31.374090, 46.797596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419144, 31.093882, 46.602303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760620, -0.120537, -0.637909,
		0.388019, -0.703377, 0.595568,
		-0.520479, -0.700522, -0.488232,
		34.263000, 30.883724, 46.455833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062447, 30.753101, 46.699177>,  <34.627335, 31.374090, 46.797596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062447, 30.753101, 46.699177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777031, 30.777292, 46.419979>,  <34.605782, 30.791807, 46.252460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777031, 30.777292, 46.419979>,  <35.062447, 30.753101, 46.699177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777031, 30.777292, 46.419979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694965, -0.065155, -0.716085,
		-0.088794, -0.996040, 0.004452,
		-0.713540, 0.060490, -0.697999,
		34.562969, 30.795435, 46.210579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396454, 30.550694, 46.177574>,  <35.062447, 30.753101, 46.699177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396454, 30.550694, 46.177574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049767, 30.652826, 46.006180>,  <34.841755, 30.714106, 45.903343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049767, 30.652826, 46.006180>,  <35.396454, 30.550694, 46.177574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049767, 30.652826, 46.006180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462340, 0.088867, -0.882238,
		-0.187188, -0.962760, -0.195074,
		-0.866719, 0.255335, -0.428488,
		34.789749, 30.729425, 45.877632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344242, 30.145082, 45.616138>,  <35.396454, 30.550694, 46.177574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344242, 30.145082, 45.616138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124607, 30.466423, 45.523945>,  <34.992825, 30.659227, 45.468628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124607, 30.466423, 45.523945>,  <35.344242, 30.145082, 45.616138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124607, 30.466423, 45.523945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488108, 0.084389, -0.868694,
		-0.678416, -0.589495, -0.438460,
		-0.549092, 0.803352, -0.230487,
		34.959881, 30.707428, 45.454800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184509, 30.081436, 44.944073>,  <35.344242, 30.145082, 45.616138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184509, 30.081436, 44.944073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106400, 30.471014, 44.990204>,  <35.059536, 30.704762, 45.017883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106400, 30.471014, 44.990204>,  <35.184509, 30.081436, 44.944073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106400, 30.471014, 44.990204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440441, 0.192150, -0.876978,
		-0.876288, -0.120454, -0.466487,
		-0.195271, 0.973945, 0.115326,
		35.047817, 30.763197, 45.024803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945885, 30.321896, 44.310177>,  <35.184509, 30.081436, 44.944073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945885, 30.321896, 44.310177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066151, 30.655672, 44.494919>,  <35.138309, 30.855938, 44.605762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066151, 30.655672, 44.494919>,  <34.945885, 30.321896, 44.310177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066151, 30.655672, 44.494919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310565, 0.372202, -0.874651,
		-0.901747, 0.406416, -0.147239,
		0.300670, 0.834441, 0.461850,
		35.156353, 30.906004, 44.633472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433041, 30.821510, 44.039074>,  <34.945885, 30.321896, 44.310177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433041, 30.821510, 44.039074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775482, 30.986618, 44.163467>,  <34.980946, 31.085682, 44.238106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775482, 30.986618, 44.163467>,  <34.433041, 30.821510, 44.039074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775482, 30.986618, 44.163467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130333, 0.409859, -0.902790,
		-0.500104, 0.813411, 0.297084,
		0.856101, 0.412769, 0.310986,
		35.032314, 31.110449, 44.256763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328693, 31.387896, 43.762344>,  <34.433041, 30.821510, 44.039074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328693, 31.387896, 43.762344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717026, 31.422529, 43.851780>,  <34.950024, 31.443310, 43.905441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717026, 31.422529, 43.851780>,  <34.328693, 31.387896, 43.762344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717026, 31.422529, 43.851780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162236, 0.449400, -0.878476,
		-0.176543, 0.889125, 0.422244,
		0.970831, 0.086585, 0.223586,
		35.008274, 31.448505, 43.918858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567650, 32.167912, 43.533382>,  <34.328693, 31.387896, 43.762344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567650, 32.167912, 43.533382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887409, 31.930321, 43.569508>,  <35.079266, 31.787766, 43.591183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887409, 31.930321, 43.569508>,  <34.567650, 32.167912, 43.533382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887409, 31.930321, 43.569508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302349, 0.267814, -0.914801,
		0.519185, 0.758594, 0.393678,
		0.799395, -0.593979, 0.090315,
		35.127228, 31.752127, 43.596603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994511, 32.664867, 43.316135>,  <34.567650, 32.167912, 43.533382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994511, 32.664867, 43.316135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166298, 32.305813, 43.276520>,  <35.269371, 32.090382, 43.252750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166298, 32.305813, 43.276520>,  <34.994511, 32.664867, 43.316135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166298, 32.305813, 43.276520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265375, 0.230271, -0.936243,
		0.863210, 0.375806, 0.337104,
		0.429471, -0.897633, -0.099043,
		35.295139, 32.036522, 43.246807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633316, 32.771992, 42.960968>,  <34.994511, 32.664867, 43.316135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633316, 32.771992, 42.960968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544926, 32.386272, 42.902580>,  <35.491890, 32.154842, 42.867546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544926, 32.386272, 42.902580>,  <35.633316, 32.771992, 42.960968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544926, 32.386272, 42.902580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129565, 0.119319, -0.984366,
		0.966635, -0.236432, 0.098572,
		-0.220974, -0.964294, -0.145971,
		35.478634, 32.096985, 42.858788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185547, 32.505657, 42.566257>,  <35.633316, 32.771992, 42.960968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185547, 32.505657, 42.566257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869495, 32.263802, 42.526028>,  <35.679867, 32.118687, 42.501888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869495, 32.263802, 42.526028>,  <36.185547, 32.505657, 42.566257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869495, 32.263802, 42.526028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175346, -0.065744, -0.982309,
		0.587330, -0.793782, 0.157967,
		-0.790125, -0.604638, -0.100573,
		35.632458, 32.082409, 42.495857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374947, 31.894209, 42.148384>,  <36.185547, 32.505657, 42.566257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374947, 31.894209, 42.148384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976936, 31.884880, 42.109657>,  <35.738129, 31.879282, 42.086422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976936, 31.884880, 42.109657>,  <36.374947, 31.894209, 42.148384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976936, 31.884880, 42.109657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099019, -0.128419, -0.986764,
		0.010581, -0.991446, 0.130090,
		-0.995029, -0.023323, -0.096813,
		35.678429, 31.877884, 42.080612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198563, 31.356527, 41.650963>,  <36.374947, 31.894209, 42.148384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198563, 31.356527, 41.650963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858925, 31.567802, 41.654018>,  <35.655144, 31.694567, 41.655853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858925, 31.567802, 41.654018>,  <36.198563, 31.356527, 41.650963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858925, 31.567802, 41.654018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014056, 0.037049, -0.999215,
		-0.528054, -0.848320, -0.038882,
		-0.849094, 0.528186, 0.007639,
		35.604195, 31.726257, 41.656311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779007, 30.961710, 41.237801>,  <36.198563, 31.356527, 41.650963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779007, 30.961710, 41.237801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615032, 31.326450, 41.229053>,  <35.516647, 31.545296, 41.223804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615032, 31.326450, 41.229053>,  <35.779007, 30.961710, 41.237801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615032, 31.326450, 41.229053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095328, -0.066679, -0.993210,
		-0.907120, -0.405065, 0.114259,
		-0.409934, 0.911853, -0.021872,
		35.492050, 31.600006, 41.222492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188900, 30.914814, 40.722927>,  <35.779007, 30.961710, 41.237801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188900, 30.914814, 40.722927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249138, 31.308603, 40.759007>,  <35.285282, 31.544876, 40.780655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249138, 31.308603, 40.759007>,  <35.188900, 30.914814, 40.722927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249138, 31.308603, 40.759007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124937, 0.071556, -0.989581,
		-0.980669, 0.160297, -0.112221,
		0.150597, 0.984472, 0.090200,
		35.294315, 31.603945, 40.786068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721745, 31.209524, 40.316628>,  <35.188900, 30.914814, 40.722927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721745, 31.209524, 40.316628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025604, 31.465269, 40.364212>,  <35.207920, 31.618715, 40.392761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025604, 31.465269, 40.364212>,  <34.721745, 31.209524, 40.316628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025604, 31.465269, 40.364212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108048, 0.056299, -0.992550,
		-0.641295, 0.766843, -0.026314,
		0.759649, 0.639361, 0.118960,
		35.253498, 31.657078, 40.399899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675304, 31.599115, 39.774681>,  <34.721745, 31.209524, 40.316628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675304, 31.599115, 39.774681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041885, 31.694153, 39.903465>,  <35.261833, 31.751175, 39.980736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041885, 31.694153, 39.903465>,  <34.675304, 31.599115, 39.774681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041885, 31.694153, 39.903465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283542, 0.182128, -0.941506,
		-0.282335, 0.954137, 0.099544,
		0.916456, 0.237595, 0.321959,
		35.316822, 31.765430, 40.000053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848057, 32.284676, 39.569988>,  <34.675304, 31.599115, 39.774681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848057, 32.284676, 39.569988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194725, 32.095444, 39.633331>,  <35.402725, 31.981905, 39.671337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194725, 32.095444, 39.633331>,  <34.848057, 32.284676, 39.569988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194725, 32.095444, 39.633331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299413, 0.239349, -0.923614,
		0.399036, 0.847887, 0.349082,
		0.866673, -0.473076, 0.158360,
		35.454727, 31.953522, 39.680840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244316, 32.748909, 39.345322>,  <34.848057, 32.284676, 39.569988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244316, 32.748909, 39.345322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433975, 32.396751, 39.341579>,  <35.547771, 32.185455, 39.339336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433975, 32.396751, 39.341579>,  <35.244316, 32.748909, 39.345322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433975, 32.396751, 39.341579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335331, 0.190399, -0.922660,
		0.814087, 0.434341, 0.385501,
		0.474148, -0.880396, -0.009353,
		35.576218, 32.132633, 39.338772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794670, 32.872074, 39.043530>,  <35.244316, 32.748909, 39.345322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794670, 32.872074, 39.043530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822552, 32.475735, 38.997299>,  <35.839283, 32.237930, 38.969563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822552, 32.475735, 38.997299>,  <35.794670, 32.872074, 39.043530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822552, 32.475735, 38.997299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466757, 0.134787, -0.874054,
		0.881634, 0.006983, 0.471882,
		0.069707, -0.990850, -0.115574,
		35.843464, 32.178478, 38.962627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519527, 32.698803, 38.852245>,  <35.794670, 32.872074, 39.043530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519527, 32.698803, 38.852245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292156, 32.391575, 38.734295>,  <36.155735, 32.207237, 38.663525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292156, 32.391575, 38.734295>,  <36.519527, 32.698803, 38.852245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292156, 32.391575, 38.734295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410504, 0.045830, -0.910706,
		0.713004, -0.638718, 0.289247,
		-0.568429, -0.768075, -0.294874,
		36.121628, 32.161152, 38.645832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015095, 32.256538, 38.489506>,  <36.519527, 32.698803, 38.852245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015095, 32.256538, 38.489506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636776, 32.185131, 38.380985>,  <36.409786, 32.142288, 38.315872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636776, 32.185131, 38.380985>,  <37.015095, 32.256538, 38.489506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636776, 32.185131, 38.380985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286101, -0.062667, -0.956148,
		0.153685, -0.981939, 0.110344,
		-0.945794, -0.178515, -0.271303,
		36.353039, 32.131577, 38.299595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124603, 31.865614, 37.873074>,  <37.015095, 32.256538, 38.489506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124603, 31.865614, 37.873074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747330, 31.996958, 37.852722>,  <36.520966, 32.075764, 37.840511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747330, 31.996958, 37.852722>,  <37.124603, 31.865614, 37.873074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747330, 31.996958, 37.852722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046510, -0.021162, -0.998694,
		-0.329007, -0.944316, 0.004688,
		-0.943182, 0.328360, -0.050883,
		36.464375, 32.095467, 37.837456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847145, 31.361723, 37.423267>,  <37.124603, 31.865614, 37.873074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847145, 31.361723, 37.423267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622410, 31.692411, 37.435047>,  <36.487568, 31.890825, 37.442116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622410, 31.692411, 37.435047>,  <36.847145, 31.361723, 37.423267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622410, 31.692411, 37.435047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049356, 0.002040, -0.998779,
		-0.825772, -0.562608, 0.039658,
		-0.561840, 0.826722, 0.029453,
		36.453857, 31.940428, 37.443882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272438, 31.268318, 36.938236>,  <36.847145, 31.361723, 37.423267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272438, 31.268318, 36.938236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345539, 31.660025, 36.973183>,  <36.389400, 31.895050, 36.994152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345539, 31.660025, 36.973183>,  <36.272438, 31.268318, 36.938236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345539, 31.660025, 36.973183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088344, 0.104865, -0.990555,
		-0.979181, 0.173311, 0.105677,
		0.182756, 0.979268, 0.087371,
		36.400364, 31.953806, 36.999393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934376, 31.488632, 36.363277>,  <36.272438, 31.268318, 36.938236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934376, 31.488632, 36.363277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188988, 31.785505, 36.447174>,  <36.341755, 31.963629, 36.497513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188988, 31.785505, 36.447174>,  <35.934376, 31.488632, 36.363277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188988, 31.785505, 36.447174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128571, 0.166028, -0.977704,
		-0.760457, 0.649308, 0.010259,
		0.636534, 0.742182, 0.209739,
		36.379948, 32.008160, 36.510098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661343, 31.965336, 35.981064>,  <35.934376, 31.488632, 36.363277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661343, 31.965336, 35.981064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033195, 32.077724, 36.076424>,  <36.256310, 32.145157, 36.133640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033195, 32.077724, 36.076424>,  <35.661343, 31.965336, 35.981064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033195, 32.077724, 36.076424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191318, 0.184894, -0.963956,
		-0.314923, 0.941737, 0.118129,
		0.929635, 0.280972, 0.238398,
		36.312084, 32.162018, 36.147942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685745, 32.521511, 35.556015>,  <35.661343, 31.965336, 35.981064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685745, 32.521511, 35.556015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067570, 32.489891, 35.670948>,  <36.296665, 32.470921, 35.739910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067570, 32.489891, 35.670948>,  <35.685745, 32.521511, 35.556015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067570, 32.489891, 35.670948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297993, 0.263969, -0.917345,
		-0.003333, 0.961287, 0.275530,
		0.954562, -0.079048, 0.287336,
		36.353939, 32.466175, 35.757149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922127, 33.137386, 35.309700>,  <35.685745, 32.521511, 35.556015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922127, 33.137386, 35.309700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227863, 32.884232, 35.359085>,  <36.411304, 32.732338, 35.388714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227863, 32.884232, 35.359085>,  <35.922127, 33.137386, 35.309700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227863, 32.884232, 35.359085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389362, 0.300383, -0.870728,
		0.513985, 0.713603, 0.476015,
		0.764341, -0.632883, 0.123458,
		36.457165, 32.694366, 35.396122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538513, 33.552681, 35.111938>,  <35.922127, 33.137386, 35.309700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538513, 33.552681, 35.111938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584476, 33.157352, 35.071922>,  <36.612053, 32.920155, 35.047913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584476, 33.157352, 35.071922>,  <36.538513, 33.552681, 35.111938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584476, 33.157352, 35.071922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393736, 0.137774, -0.908840,
		0.912013, 0.065042, 0.404970,
		0.114907, -0.988326, -0.100043,
		36.618950, 32.860855, 35.041908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154858, 33.470978, 34.760983>,  <36.538513, 33.552681, 35.111938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154858, 33.470978, 34.760983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970890, 33.119991, 34.706528>,  <36.860512, 32.909401, 34.673855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970890, 33.119991, 34.706528>,  <37.154858, 33.470978, 34.760983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970890, 33.119991, 34.706528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268864, 0.008503, -0.963141,
		0.846279, -0.479566, 0.232008,
		-0.459917, -0.877465, -0.136134,
		36.832916, 32.856750, 34.665688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582565, 33.157448, 34.260540>,  <37.154858, 33.470978, 34.760983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582565, 33.157448, 34.260540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248531, 32.939678, 34.228954>,  <37.048111, 32.809017, 34.210003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248531, 32.939678, 34.228954>,  <37.582565, 33.157448, 34.260540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248531, 32.939678, 34.228954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131522, -0.058209, -0.989603,
		0.534168, -0.836787, 0.120213,
		-0.835085, -0.544425, -0.078963,
		36.998005, 32.776352, 34.205265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995228, 33.809956, 34.373070>,  <37.582565, 33.157448, 34.260540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995228, 33.809956, 34.373070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162300, 33.904736, 34.022209>,  <38.262543, 33.961605, 33.811691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162300, 33.904736, 34.022209>,  <37.995228, 33.809956, 34.373070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162300, 33.904736, 34.022209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841455, 0.263334, 0.471814,
		0.342781, -0.935152, -0.089394,
		0.417678, 0.236950, -0.877154,
		38.287605, 33.975822, 33.759064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148743, 34.111191, 34.948059>,  <37.995228, 33.809956, 34.373070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148743, 34.111191, 34.948059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479877, 34.269115, 35.107464>,  <38.678558, 34.363873, 35.203106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479877, 34.269115, 35.107464>,  <38.148743, 34.111191, 34.948059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479877, 34.269115, 35.107464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241372, -0.390584, 0.888360,
		0.506392, -0.831604, -0.228040,
		0.827832, 0.394816, 0.398514,
		38.728226, 34.387562, 35.227016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421535, 33.594360, 35.407955>,  <38.148743, 34.111191, 34.948059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421535, 33.594360, 35.407955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537815, 33.951061, 35.546680>,  <38.607582, 34.165081, 35.629913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537815, 33.951061, 35.546680>,  <38.421535, 33.594360, 35.407955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537815, 33.951061, 35.546680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009645, -0.359713, 0.933013,
		0.956765, -0.274572, -0.095968,
		0.290700, 0.891749, 0.346809,
		38.625027, 34.218586, 35.650723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034058, 33.466713, 35.836853>,  <38.421535, 33.594360, 35.407955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034058, 33.466713, 35.836853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844852, 33.803894, 35.939373>,  <38.731327, 34.006203, 36.000885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844852, 33.803894, 35.939373>,  <39.034058, 33.466713, 35.836853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844852, 33.803894, 35.939373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111433, -0.231329, 0.966473,
		0.873978, 0.485719, 0.015490,
		-0.473017, 0.842950, 0.256302,
		38.702946, 34.056778, 36.016262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525105, 33.826885, 36.404354>,  <39.034058, 33.466713, 35.836853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525105, 33.826885, 36.404354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153118, 33.973255, 36.418510>,  <38.929924, 34.061077, 36.427006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153118, 33.973255, 36.418510>,  <39.525105, 33.826885, 36.404354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153118, 33.973255, 36.418510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022362, -0.152402, 0.988065,
		0.366954, 0.918080, 0.149912,
		-0.929970, 0.365927, 0.035395,
		38.874126, 34.083035, 36.429131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456955, 34.243385, 36.965389>,  <39.525105, 33.826885, 36.404354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456955, 34.243385, 36.965389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066864, 34.172997, 36.911785>,  <38.832809, 34.130764, 36.879623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066864, 34.172997, 36.911785>,  <39.456955, 34.243385, 36.965389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066864, 34.172997, 36.911785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140345, 0.024012, 0.989811,
		-0.170962, 0.984102, -0.048114,
		-0.975231, -0.175973, -0.134009,
		38.774296, 34.120205, 36.871582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154198, 34.673492, 37.446888>,  <39.456955, 34.243385, 36.965389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154198, 34.673492, 37.446888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893406, 34.384689, 37.354259>,  <38.736931, 34.211407, 37.298683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893406, 34.384689, 37.354259>,  <39.154198, 34.673492, 37.446888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893406, 34.384689, 37.354259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337417, 0.002763, 0.941351,
		-0.679028, 0.691875, -0.245421,
		-0.651975, -0.722013, -0.231574,
		38.697815, 34.168087, 37.284786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539333, 35.017395, 37.708633>,  <39.154198, 34.673492, 37.446888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539333, 35.017395, 37.708633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516407, 34.618526, 37.689159>,  <38.502651, 34.379208, 37.677475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516407, 34.618526, 37.689159>,  <38.539333, 35.017395, 37.708633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516407, 34.618526, 37.689159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314573, -0.028242, 0.948813,
		-0.947501, 0.069697, -0.312063,
		-0.057316, -0.997168, -0.048684,
		38.499210, 34.319374, 37.674553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148796, 34.896328, 38.281376>,  <38.539333, 35.017395, 37.708633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148796, 34.896328, 38.281376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238495, 34.517326, 38.190205>,  <38.292316, 34.289925, 38.135502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238495, 34.517326, 38.190205>,  <38.148796, 34.896328, 38.281376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238495, 34.517326, 38.190205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063944, -0.247687, 0.966728,
		-0.972432, -0.202214, -0.116131,
		0.224250, -0.947502, -0.227928,
		38.305771, 34.233074, 38.121826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640949, 34.492020, 38.546692>,  <38.148796, 34.896328, 38.281376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640949, 34.492020, 38.546692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965752, 34.260128, 38.519688>,  <38.160633, 34.120991, 38.503487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965752, 34.260128, 38.519688>,  <37.640949, 34.492020, 38.546692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965752, 34.260128, 38.519688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191342, -0.373697, 0.907600,
		-0.551395, -0.724058, -0.414371,
		0.812005, -0.579733, -0.067512,
		38.209354, 34.086208, 38.499435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472973, 33.859413, 38.973686>,  <37.640949, 34.492020, 38.546692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472973, 33.859413, 38.973686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871437, 33.867733, 38.939674>,  <38.110516, 33.872726, 38.919270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871437, 33.867733, 38.939674>,  <37.472973, 33.859413, 38.973686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871437, 33.867733, 38.939674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087504, -0.262110, 0.961063,
		-0.002296, -0.964814, -0.262924,
		0.996162, 0.020800, -0.085027,
		38.170284, 33.873974, 38.914165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743935, 33.304142, 39.467720>,  <37.472973, 33.859413, 38.973686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743935, 33.304142, 39.467720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075897, 33.516548, 39.399284>,  <38.275074, 33.643993, 39.358223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075897, 33.516548, 39.399284>,  <37.743935, 33.304142, 39.467720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075897, 33.516548, 39.399284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307119, -0.178836, 0.934717,
		0.465755, -0.828274, -0.311503,
		0.829909, 0.531018, -0.171085,
		38.324871, 33.675854, 39.347958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329105, 32.829258, 39.711216>,  <37.743935, 33.304142, 39.467720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329105, 32.829258, 39.711216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419624, 33.218731, 39.721973>,  <38.473938, 33.452415, 39.728428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419624, 33.218731, 39.721973>,  <38.329105, 32.829258, 39.711216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419624, 33.218731, 39.721973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307129, -0.097530, 0.946657,
		0.924370, -0.205970, -0.321118,
		0.226302, 0.973686, 0.026894,
		38.487514, 33.510838, 39.730042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975452, 32.791348, 40.081383>,  <38.329105, 32.829258, 39.711216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975452, 32.791348, 40.081383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792164, 33.146301, 40.101727>,  <38.682190, 33.359272, 40.113934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792164, 33.146301, 40.101727>,  <38.975452, 32.791348, 40.081383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792164, 33.146301, 40.101727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066066, -0.023054, 0.997549,
		0.886378, 0.460461, -0.048062,
		-0.458224, 0.887381, 0.050855,
		38.654697, 33.412514, 40.116982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256798, 33.096058, 40.621696>,  <38.975452, 32.791348, 40.081383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256798, 33.096058, 40.621696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934029, 33.321190, 40.550034>,  <38.740368, 33.456268, 40.507034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934029, 33.321190, 40.550034>,  <39.256798, 33.096058, 40.621696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934029, 33.321190, 40.550034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120862, 0.139565, 0.982809,
		0.578155, 0.814708, -0.044595,
		-0.806926, 0.562826, -0.179158,
		38.691952, 33.490036, 40.496284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336586, 33.750000, 40.992096>,  <39.256798, 33.096058, 40.621696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336586, 33.750000, 40.992096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956741, 33.634747, 40.942745>,  <38.728836, 33.565594, 40.913136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956741, 33.634747, 40.942745>,  <39.336586, 33.750000, 40.992096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956741, 33.634747, 40.942745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113928, -0.049400, 0.992260,
		-0.291997, 0.956315, 0.014084,
		-0.949609, -0.288132, -0.123376,
		38.671860, 33.548306, 40.905731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931084, 34.201138, 41.517136>,  <39.336586, 33.750000, 40.992096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931084, 34.201138, 41.517136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672958, 33.924850, 41.386612>,  <38.518085, 33.759079, 41.308300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672958, 33.924850, 41.386612>,  <38.931084, 34.201138, 41.517136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672958, 33.924850, 41.386612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238497, -0.223635, 0.945043,
		-0.725736, 0.687670, -0.020421,
		-0.645311, -0.690722, -0.326307,
		38.479366, 33.717632, 41.288719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244534, 34.310146, 41.771229>,  <38.931084, 34.201138, 41.517136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244534, 34.310146, 41.771229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266201, 33.920486, 41.683495>,  <38.279202, 33.686691, 41.630856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266201, 33.920486, 41.683495>,  <38.244534, 34.310146, 41.771229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266201, 33.920486, 41.683495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527416, -0.214429, 0.822103,
		-0.847879, 0.071144, -0.525395,
		0.054173, -0.974145, -0.219332,
		38.282452, 33.628242, 41.617695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563492, 34.081390, 42.054855>,  <38.244534, 34.310146, 41.771229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563492, 34.081390, 42.054855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772991, 33.744595, 42.003101>,  <37.898689, 33.542515, 41.972050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772991, 33.744595, 42.003101>,  <37.563492, 34.081390, 42.054855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772991, 33.744595, 42.003101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335426, -0.343446, 0.877231,
		-0.783058, -0.416047, -0.462305,
		0.523746, -0.841991, -0.129385,
		37.930115, 33.491997, 41.964287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066998, 33.649590, 42.300663>,  <37.563492, 34.081390, 42.054855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066998, 33.649590, 42.300663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396152, 33.422478, 42.291798>,  <37.593643, 33.286209, 42.286480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396152, 33.422478, 42.291798>,  <37.066998, 33.649590, 42.300663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396152, 33.422478, 42.291798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327545, -0.505859, 0.798011,
		-0.464300, -0.649413, -0.602236,
		0.822885, -0.567776, -0.022158,
		37.643017, 33.252144, 42.285149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877846, 32.882877, 42.326344>,  <37.066998, 33.649590, 42.300663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877846, 32.882877, 42.326344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251564, 32.903088, 42.467499>,  <37.475796, 32.915215, 42.552193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251564, 32.903088, 42.467499>,  <36.877846, 32.882877, 42.326344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251564, 32.903088, 42.467499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260538, -0.578880, 0.772669,
		0.243321, -0.813846, -0.527684,
		0.934299, 0.050525, 0.352892,
		37.531853, 32.918243, 42.573368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177860, 32.180149, 42.633873>,  <36.877846, 32.882877, 42.326344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177860, 32.180149, 42.633873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419384, 32.447655, 42.807384>,  <37.564301, 32.608158, 42.911491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419384, 32.447655, 42.807384>,  <37.177860, 32.180149, 42.633873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419384, 32.447655, 42.807384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094434, -0.480337, 0.871985,
		0.791512, -0.567480, -0.226880,
		0.603813, 0.668762, 0.433782,
		37.600529, 32.648285, 42.937519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476852, 31.739971, 43.152355>,  <37.177860, 32.180149, 42.633873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476852, 31.739971, 43.152355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555977, 32.118828, 43.253384>,  <37.603451, 32.346142, 43.313999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555977, 32.118828, 43.253384>,  <37.476852, 31.739971, 43.152355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555977, 32.118828, 43.253384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138122, -0.228157, 0.963777,
		0.970460, -0.225532, 0.085689,
		0.197812, 0.947143, 0.252568,
		37.615322, 32.402969, 43.329155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056301, 31.808435, 43.675850>,  <37.476852, 31.739971, 43.152355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056301, 31.808435, 43.675850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827682, 32.135063, 43.708221>,  <37.690510, 32.331039, 43.727646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827682, 32.135063, 43.708221>,  <38.056301, 31.808435, 43.675850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827682, 32.135063, 43.708221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035063, -0.074234, 0.996624,
		0.819820, 0.572455, 0.013797,
		-0.571547, 0.816569, 0.080930,
		37.656219, 32.380035, 43.732502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272812, 32.261673, 44.241035>,  <38.056301, 31.808435, 43.675850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272812, 32.261673, 44.241035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902546, 32.406921, 44.198551>,  <37.680386, 32.494072, 44.173061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902546, 32.406921, 44.198551>,  <38.272812, 32.261673, 44.241035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902546, 32.406921, 44.198551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056795, 0.144182, 0.987920,
		0.374051, 0.920518, -0.112841,
		-0.925668, 0.363123, -0.106212,
		37.624847, 32.515858, 44.166687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331585, 32.759270, 44.744041>,  <38.272812, 32.261673, 44.241035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331585, 32.759270, 44.744041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942356, 32.717098, 44.662045>,  <37.708820, 32.691795, 44.612846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942356, 32.717098, 44.662045>,  <38.331585, 32.759270, 44.744041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942356, 32.717098, 44.662045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212770, 0.068618, 0.974690,
		-0.088689, 0.992057, -0.089202,
		-0.973069, -0.105424, -0.204994,
		37.650436, 32.685471, 44.600548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954525, 33.323956, 45.026657>,  <38.331585, 32.759270, 44.744041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954525, 33.323956, 45.026657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718548, 33.003433, 44.986900>,  <37.576962, 32.811119, 44.963047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718548, 33.003433, 44.986900>,  <37.954525, 33.323956, 45.026657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718548, 33.003433, 44.986900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279504, 0.087177, 0.956179,
		-0.757523, 0.591874, -0.275397,
		-0.589946, -0.801302, -0.099393,
		37.541565, 32.763042, 44.957081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321041, 33.529831, 45.275143>,  <37.954525, 33.323956, 45.026657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321041, 33.529831, 45.275143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294712, 33.130863, 45.286621>,  <37.278915, 32.891483, 45.293510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294712, 33.130863, 45.286621>,  <37.321041, 33.529831, 45.275143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294712, 33.130863, 45.286621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477958, 0.056761, 0.876547,
		-0.875913, 0.043978, -0.480460,
		-0.065820, -0.997419, 0.028698,
		37.274967, 32.831638, 45.295231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648743, 33.350758, 45.451115>,  <37.321041, 33.529831, 45.275143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648743, 33.350758, 45.451115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848869, 33.010502, 45.515728>,  <36.968945, 32.806347, 45.554497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848869, 33.010502, 45.515728>,  <36.648743, 33.350758, 45.451115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848869, 33.010502, 45.515728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452389, -0.097744, 0.886448,
		-0.738262, -0.516578, -0.433724,
		0.500313, -0.850643, 0.161533,
		36.998962, 32.755310, 45.564186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156754, 32.963310, 45.692131>,  <36.648743, 33.350758, 45.451115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156754, 32.963310, 45.692131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479507, 32.758846, 45.810555>,  <36.673161, 32.636169, 45.881607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479507, 32.758846, 45.810555>,  <36.156754, 32.963310, 45.692131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479507, 32.758846, 45.810555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446944, -0.200591, 0.871782,
		-0.386235, -0.835750, -0.390314,
		0.806885, -0.511161, 0.296058,
		36.721573, 32.605499, 45.899372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896698, 32.305359, 45.984512>,  <36.156754, 32.963310, 45.692131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896698, 32.305359, 45.984512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261986, 32.370628, 46.133858>,  <36.481159, 32.409790, 46.223465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261986, 32.370628, 46.133858>,  <35.896698, 32.305359, 45.984512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261986, 32.370628, 46.133858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322340, -0.271197, 0.906945,
		0.249240, -0.948593, -0.195067,
		0.913223, 0.163170, 0.373363,
		36.535954, 32.419579, 46.245865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095367, 31.656799, 46.391262>,  <35.896698, 32.305359, 45.984512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095367, 31.656799, 46.391262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310184, 31.970554, 46.515400>,  <36.439075, 32.158810, 46.589882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310184, 31.970554, 46.515400>,  <36.095367, 31.656799, 46.391262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310184, 31.970554, 46.515400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346910, -0.129984, 0.928847,
		0.768919, -0.606495, 0.202306,
		0.537045, 0.784390, 0.310346,
		36.471298, 32.205872, 46.608505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436951, 31.369764, 47.017498>,  <36.095367, 31.656799, 46.391262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436951, 31.369764, 47.017498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466099, 31.767189, 47.052193>,  <36.483589, 32.005646, 47.073009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466099, 31.767189, 47.052193>,  <36.436951, 31.369764, 47.017498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466099, 31.767189, 47.052193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228828, -0.067994, 0.971089,
		0.970735, -0.090615, 0.222400,
		0.072874, 0.993562, 0.086739,
		36.487961, 32.065258, 47.078213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759392, 31.522594, 47.691254>,  <36.436951, 31.369764, 47.017498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759392, 31.522594, 47.691254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583336, 31.870007, 47.600101>,  <36.477703, 32.078453, 47.545410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583336, 31.870007, 47.600101>,  <36.759392, 31.522594, 47.691254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583336, 31.870007, 47.600101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459917, -0.000093, 0.887962,
		0.771202, 0.495633, 0.399494,
		-0.440140, 0.868532, -0.227879,
		36.451294, 32.130566, 47.531738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883953, 32.028969, 48.189629>,  <36.759392, 31.522594, 47.691254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883953, 32.028969, 48.189629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537167, 32.150238, 48.031414>,  <36.329094, 32.223000, 47.936485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537167, 32.150238, 48.031414>,  <36.883953, 32.028969, 48.189629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537167, 32.150238, 48.031414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416220, -0.003988, 0.909255,
		0.274088, 0.952926, 0.129645,
		-0.866970, 0.303177, -0.395534,
		36.277077, 32.241192, 47.912754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654968, 32.488373, 48.689468>,  <36.883953, 32.028969, 48.189629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654968, 32.488373, 48.689468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342018, 32.398483, 48.457130>,  <36.154247, 32.344547, 48.317726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342018, 32.398483, 48.457130>,  <36.654968, 32.488373, 48.689468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342018, 32.398483, 48.457130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605511, 0.056206, 0.793850,
		-0.145753, 0.972799, -0.180049,
		-0.782376, -0.224728, -0.580849,
		36.107304, 32.331066, 48.282875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174286, 33.008854, 48.838493>,  <36.654968, 32.488373, 48.689468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174286, 33.008854, 48.838493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001377, 32.668247, 48.719795>,  <35.897633, 32.463882, 48.648579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001377, 32.668247, 48.719795>,  <36.174286, 33.008854, 48.838493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001377, 32.668247, 48.719795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647584, 0.064148, 0.759289,
		-0.627512, 0.520388, -0.579159,
		-0.432276, -0.851517, -0.296741,
		35.871693, 32.412792, 48.630772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407032, 33.096130, 49.062523>,  <36.174286, 33.008854, 48.838493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407032, 33.096130, 49.062523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455906, 32.705303, 48.992775>,  <35.485229, 32.470806, 48.950928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455906, 32.705303, 48.992775>,  <35.407032, 33.096130, 49.062523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455906, 32.705303, 48.992775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570119, -0.212904, 0.793496,
		-0.812425, 0.002456, -0.583061,
		0.122187, -0.977070, -0.174369,
		35.492561, 32.412182, 48.940464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796749, 33.621952, 48.748531>,  <35.407032, 33.096130, 49.062523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796749, 33.621952, 48.748531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778812, 33.995117, 48.891449>,  <35.768051, 34.219017, 48.977200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778812, 33.995117, 48.891449>,  <35.796749, 33.621952, 48.748531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778812, 33.995117, 48.891449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368633, 0.347863, -0.862033,
		-0.928492, 0.093051, -0.359504,
		-0.044845, 0.932916, 0.357289,
		35.765358, 34.274994, 48.998634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324730, 34.102676, 48.266933>,  <35.796749, 33.621952, 48.748531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324730, 34.102676, 48.266933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574093, 34.345558, 48.463978>,  <35.723713, 34.491287, 48.582203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574093, 34.345558, 48.463978>,  <35.324730, 34.102676, 48.266933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574093, 34.345558, 48.463978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304721, 0.391534, -0.868243,
		-0.720073, 0.691381, 0.059059,
		0.623410, 0.607202, 0.492611,
		35.761116, 34.527718, 48.611763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254242, 34.759243, 47.978371>,  <35.324730, 34.102676, 48.266933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254242, 34.759243, 47.978371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604515, 34.822369, 48.160919>,  <35.814678, 34.860245, 48.270451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604515, 34.822369, 48.160919>,  <35.254242, 34.759243, 47.978371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604515, 34.822369, 48.160919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297494, 0.568138, -0.767279,
		-0.380369, 0.807661, 0.450560,
		0.875681, 0.157810, 0.456376,
		35.867218, 34.869713, 48.297832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411575, 35.427971, 47.821331>,  <35.254242, 34.759243, 47.978371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411575, 35.427971, 47.821331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758110, 35.268867, 47.942158>,  <35.966030, 35.173405, 48.014652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758110, 35.268867, 47.942158>,  <35.411575, 35.427971, 47.821331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758110, 35.268867, 47.942158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478903, 0.489820, -0.728511,
		0.141816, 0.775797, 0.614839,
		0.866337, -0.397762, 0.302067,
		36.018013, 35.149540, 48.032780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835541, 35.997612, 47.888466>,  <35.411575, 35.427971, 47.821331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835541, 35.997612, 47.888466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035629, 35.658764, 47.816730>,  <36.155682, 35.455456, 47.773689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035629, 35.658764, 47.816730>,  <35.835541, 35.997612, 47.888466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035629, 35.658764, 47.816730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474340, 0.441351, -0.761716,
		0.724417, 0.295960, 0.622598,
		0.500222, -0.847123, -0.179336,
		36.185696, 35.404629, 47.762928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532192, 36.197918, 47.703156>,  <35.835541, 35.997612, 47.888466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532192, 36.197918, 47.703156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503185, 35.825237, 47.560787>,  <36.485783, 35.601631, 47.475368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503185, 35.825237, 47.560787>,  <36.532192, 36.197918, 47.703156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503185, 35.825237, 47.560787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516614, 0.270164, -0.812478,
		0.853142, -0.242792, 0.461737,
		-0.072519, -0.931699, -0.355918,
		36.481430, 35.545727, 47.454010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188610, 36.140976, 47.498272>,  <36.532192, 36.197918, 47.703156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188610, 36.140976, 47.498272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986034, 35.848686, 47.315159>,  <36.864491, 35.673313, 47.205292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986034, 35.848686, 47.315159>,  <37.188610, 36.140976, 47.498272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986034, 35.848686, 47.315159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502061, 0.181743, -0.845520,
		0.701040, -0.658038, 0.274825,
		-0.506437, -0.730722, -0.457784,
		36.834103, 35.629471, 47.177822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689270, 35.817001, 47.037968>,  <37.188610, 36.140976, 47.498272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689270, 35.817001, 47.037968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337528, 35.722088, 46.872829>,  <37.126484, 35.665142, 46.773746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337528, 35.722088, 46.872829>,  <37.689270, 35.817001, 47.037968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337528, 35.722088, 46.872829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419123, 0.025823, -0.907562,
		0.226008, -0.971098, 0.076742,
		-0.879350, -0.237281, -0.412846,
		37.073723, 35.650906, 46.748974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804642, 35.292744, 46.654087>,  <37.689270, 35.817001, 47.037968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804642, 35.292744, 46.654087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465115, 35.452065, 46.515022>,  <37.261398, 35.547657, 46.431583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465115, 35.452065, 46.515022>,  <37.804642, 35.292744, 46.654087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465115, 35.452065, 46.515022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314405, -0.148387, -0.937620,
		-0.425044, -0.905172, 0.000725,
		-0.848816, 0.398302, -0.347661,
		37.210468, 35.571556, 46.410725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629936, 34.845505, 46.155315>,  <37.804642, 35.292744, 46.654087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629936, 34.845505, 46.155315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431381, 35.183163, 46.074306>,  <37.312248, 35.385757, 46.025700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431381, 35.183163, 46.074306>,  <37.629936, 34.845505, 46.155315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431381, 35.183163, 46.074306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289285, -0.059112, -0.955416,
		-0.818482, -0.532846, -0.214856,
		-0.496389, 0.844145, -0.202526,
		37.282463, 35.436405, 46.013550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321499, 34.726498, 45.531399>,  <37.629936, 34.845505, 46.155315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321499, 34.726498, 45.531399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357712, 35.123234, 45.567291>,  <37.379440, 35.361275, 45.588829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357712, 35.123234, 45.567291>,  <37.321499, 34.726498, 45.531399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357712, 35.123234, 45.567291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410995, 0.044862, -0.910533,
		-0.907131, 0.119317, -0.403581,
		0.090536, 0.991842, 0.089735,
		37.384872, 35.420788, 45.594212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008205, 35.056286, 44.945042>,  <37.321499, 34.726498, 45.531399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008205, 35.056286, 44.945042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239712, 35.357533, 45.070160>,  <37.378616, 35.538280, 45.145229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239712, 35.357533, 45.070160>,  <37.008205, 35.056286, 44.945042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239712, 35.357533, 45.070160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377428, 0.092636, -0.921394,
		-0.722895, 0.651330, -0.230633,
		0.578767, 0.753119, 0.312796,
		37.413342, 35.583469, 45.163998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950253, 35.736801, 44.563019>,  <37.008205, 35.056286, 44.945042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950253, 35.736801, 44.563019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320652, 35.720402, 44.713139>,  <37.542892, 35.710564, 44.803211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320652, 35.720402, 44.713139>,  <36.950253, 35.736801, 44.563019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320652, 35.720402, 44.713139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375731, 0.197159, -0.905513,
		-0.036868, 0.979514, 0.197973,
		0.925995, -0.041000, 0.375303,
		37.598450, 35.708103, 44.825729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255192, 36.354397, 44.425098>,  <36.950253, 35.736801, 44.563019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255192, 36.354397, 44.425098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563313, 36.104244, 44.474953>,  <37.748184, 35.954155, 44.504864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563313, 36.104244, 44.474953>,  <37.255192, 36.354397, 44.425098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563313, 36.104244, 44.474953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399362, 0.320751, -0.858853,
		0.497132, 0.711351, 0.496829,
		0.770305, -0.625378, 0.124631,
		37.794403, 35.916630, 44.512341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788738, 36.702972, 44.157467>,  <37.255192, 36.354397, 44.425098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788738, 36.702972, 44.157467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956600, 36.340431, 44.177113>,  <38.057320, 36.122906, 44.188900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956600, 36.340431, 44.177113>,  <37.788738, 36.702972, 44.157467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956600, 36.340431, 44.177113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525169, 0.198321, -0.827567,
		0.740327, 0.373088, 0.559215,
		0.419659, -0.906352, 0.049112,
		38.082497, 36.068527, 44.191845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580906, 36.757088, 44.024750>,  <37.788738, 36.702972, 44.157467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580906, 36.757088, 44.024750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435234, 36.395645, 43.934540>,  <38.347832, 36.178780, 43.880413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435234, 36.395645, 43.934540>,  <38.580906, 36.757088, 44.024750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435234, 36.395645, 43.934540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563846, -0.021183, -0.825608,
		0.741252, -0.427830, 0.517211,
		-0.364176, -0.903611, -0.225528,
		38.325981, 36.124561, 43.866882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123135, 36.472012, 43.592571>,  <38.580906, 36.757088, 44.024750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123135, 36.472012, 43.592571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816235, 36.227333, 43.515465>,  <38.632095, 36.080524, 43.469200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816235, 36.227333, 43.515465>,  <39.123135, 36.472012, 43.592571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816235, 36.227333, 43.515465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342662, -0.136909, -0.929429,
		0.542142, -0.779153, 0.314649,
		-0.767246, -0.611701, -0.192762,
		38.586060, 36.043823, 43.457638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414082, 35.919331, 43.285038>,  <39.123135, 36.472012, 43.592571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414082, 35.919331, 43.285038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035889, 35.893353, 43.157391>,  <38.808971, 35.877766, 43.080803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035889, 35.893353, 43.157391>,  <39.414082, 35.919331, 43.285038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035889, 35.893353, 43.157391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324212, -0.095305, -0.941171,
		0.030711, -0.993328, 0.111165,
		-0.945486, -0.064945, -0.319122,
		38.752243, 35.873871, 43.061653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461452, 35.294655, 43.043667>,  <39.414082, 35.919331, 43.285038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461452, 35.294655, 43.043667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154316, 35.486210, 42.873447>,  <38.970036, 35.601143, 42.771317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154316, 35.486210, 42.873447>,  <39.461452, 35.294655, 43.043667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154316, 35.486210, 42.873447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324150, -0.282530, -0.902831,
		-0.552584, -0.831170, 0.061706,
		-0.767839, 0.478888, -0.425545,
		38.923965, 35.629875, 42.745785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445827, 35.067020, 42.358829>,  <39.461452, 35.294655, 43.043667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445827, 35.067020, 42.358829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192623, 35.374992, 42.326588>,  <39.040699, 35.559776, 42.307243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192623, 35.374992, 42.326588>,  <39.445827, 35.067020, 42.358829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192623, 35.374992, 42.326588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152504, 0.021945, -0.988059,
		-0.758970, -0.637748, -0.131309,
		-0.633014, 0.769933, -0.080603,
		39.002720, 35.605972, 42.302406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915623, 34.884628, 41.849140>,  <39.445827, 35.067020, 42.358829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915623, 34.884628, 41.849140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920311, 35.284382, 41.862339>,  <38.923122, 35.524235, 41.870258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920311, 35.284382, 41.862339>,  <38.915623, 34.884628, 41.849140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920311, 35.284382, 41.862339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044804, 0.032445, -0.998469,
		-0.998927, 0.013183, -0.044396,
		0.011722, 0.999387, 0.033001,
		38.923828, 35.584198, 41.872238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453587, 35.067936, 41.364620>,  <38.915623, 34.884628, 41.849140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453587, 35.067936, 41.364620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711643, 35.368221, 41.421509>,  <38.866478, 35.548393, 41.455643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711643, 35.368221, 41.421509>,  <38.453587, 35.067936, 41.364620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711643, 35.368221, 41.421509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031824, 0.159580, -0.986672,
		-0.763402, 0.641067, 0.079061,
		0.645139, 0.750711, 0.142224,
		38.905186, 35.593433, 41.464176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224937, 35.635807, 41.000942>,  <38.453587, 35.067936, 41.364620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224937, 35.635807, 41.000942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616112, 35.714260, 41.029724>,  <38.850815, 35.761330, 41.046993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616112, 35.714260, 41.029724>,  <38.224937, 35.635807, 41.000942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616112, 35.714260, 41.029724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015269, 0.276392, -0.960924,
		-0.208352, 0.940819, 0.267299,
		0.977935, 0.196129, 0.071952,
		38.909492, 35.773098, 41.051311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338112, 36.197643, 40.634438>,  <38.224937, 35.635807, 41.000942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338112, 36.197643, 40.634438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712505, 36.061405, 40.670059>,  <38.937141, 35.979660, 40.691433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712505, 36.061405, 40.670059>,  <38.338112, 36.197643, 40.634438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712505, 36.061405, 40.670059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183189, 0.255200, -0.949376,
		0.300629, 0.904912, 0.301257,
		0.935983, -0.340597, 0.089050,
		38.993301, 35.959225, 40.696774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753464, 36.767868, 40.343945>,  <38.338112, 36.197643, 40.634438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753464, 36.767868, 40.343945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978683, 36.437374, 40.336803>,  <39.113815, 36.239079, 40.332520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978683, 36.437374, 40.336803>,  <38.753464, 36.767868, 40.343945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978683, 36.437374, 40.336803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273000, 0.206346, -0.939623,
		0.780030, 0.524179, 0.341744,
		0.563049, -0.826231, -0.017856,
		39.147598, 36.189507, 40.331448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463238, 36.977135, 40.131577>,  <38.753464, 36.767868, 40.343945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463238, 36.977135, 40.131577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468285, 36.583893, 40.058544>,  <39.471313, 36.347946, 40.014725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468285, 36.583893, 40.058544>,  <39.463238, 36.977135, 40.131577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468285, 36.583893, 40.058544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446626, 0.168912, -0.878632,
		0.894632, -0.070459, 0.441214,
		0.012619, -0.983110, -0.182583,
		39.472069, 36.288960, 40.003769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146168, 36.851528, 39.936314>,  <39.463238, 36.977135, 40.131577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146168, 36.851528, 39.936314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940006, 36.533352, 39.808800>,  <39.816307, 36.342445, 39.732292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940006, 36.533352, 39.808800>,  <40.146168, 36.851528, 39.936314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940006, 36.533352, 39.808800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510506, 0.013785, -0.859764,
		0.688288, -0.605871, 0.398974,
		-0.515406, -0.795444, -0.318788,
		39.785385, 36.294720, 39.713161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639065, 36.323902, 39.650772>,  <40.146168, 36.851528, 39.936314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639065, 36.323902, 39.650772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282509, 36.225025, 39.498814>,  <40.068577, 36.165699, 39.407639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282509, 36.225025, 39.498814>,  <40.639065, 36.323902, 39.650772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282509, 36.225025, 39.498814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375339, 0.067227, -0.924446,
		0.254057, -0.966631, 0.032856,
		-0.891390, -0.247194, -0.379894,
		40.015091, 36.150867, 39.384846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754196, 35.792049, 39.151550>,  <40.639065, 36.323902, 39.650772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754196, 35.792049, 39.151550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390247, 35.911488, 39.036327>,  <40.171879, 35.983150, 38.967194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390247, 35.911488, 39.036327>,  <40.754196, 35.792049, 39.151550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390247, 35.911488, 39.036327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346905, 0.166685, -0.922970,
		-0.227576, -0.939712, -0.255245,
		-0.909871, 0.298592, -0.288057,
		40.117287, 36.001064, 38.949909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568466, 35.373718, 38.557678>,  <40.754196, 35.792049, 39.151550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568466, 35.373718, 38.557678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370541, 35.721260, 38.551296>,  <40.251785, 35.929783, 38.547466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370541, 35.721260, 38.551296>,  <40.568466, 35.373718, 38.557678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370541, 35.721260, 38.551296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277295, 0.140468, -0.950461,
		-0.823570, -0.474725, -0.310434,
		-0.494813, 0.868853, -0.015954,
		40.222095, 35.981915, 38.546509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283237, 35.429642, 37.875225>,  <40.568466, 35.373718, 38.557678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283237, 35.429642, 37.875225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255844, 35.798225, 38.028179>,  <40.239407, 36.019375, 38.119953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255844, 35.798225, 38.028179>,  <40.283237, 35.429642, 37.875225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255844, 35.798225, 38.028179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280723, 0.385598, -0.878925,
		-0.957343, 0.047153, -0.285082,
		-0.068483, 0.921461, 0.382387,
		40.235298, 36.074665, 38.142895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008278, 35.756271, 37.396564>,  <40.283237, 35.429642, 37.875225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008278, 35.756271, 37.396564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160969, 36.059811, 37.607632>,  <40.252583, 36.241936, 37.734272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160969, 36.059811, 37.607632>,  <40.008278, 35.756271, 37.396564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160969, 36.059811, 37.607632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246321, 0.466727, -0.849406,
		-0.890846, 0.454220, -0.008756,
		0.381731, 0.758847, 0.527667,
		40.275490, 36.287464, 37.765930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914310, 36.370750, 37.085545>,  <40.008278, 35.756271, 37.396564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914310, 36.370750, 37.085545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211353, 36.489910, 37.325478>,  <40.389580, 36.561405, 37.469437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211353, 36.489910, 37.325478>,  <39.914310, 36.370750, 37.085545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211353, 36.489910, 37.325478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377337, 0.553836, -0.742214,
		-0.553315, 0.777508, 0.298870,
		0.742603, 0.297903, 0.599829,
		40.434135, 36.579281, 37.505424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016159, 37.056870, 36.910603>,  <39.914310, 36.370750, 37.085545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016159, 37.056870, 36.910603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359905, 36.961727, 37.091671>,  <40.566154, 36.904640, 37.200314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359905, 36.961727, 37.091671>,  <40.016159, 37.056870, 36.910603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359905, 36.961727, 37.091671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508347, 0.301414, -0.806680,
		0.055430, 0.923350, 0.379937,
		0.859367, -0.237855, 0.452675,
		40.617714, 36.890369, 37.227474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388371, 37.655807, 36.898045>,  <40.016159, 37.056870, 36.910603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388371, 37.655807, 36.898045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685833, 37.394249, 36.953751>,  <40.864311, 37.237312, 36.987175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685833, 37.394249, 36.953751>,  <40.388371, 37.655807, 36.898045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685833, 37.394249, 36.953751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556956, 0.490687, -0.670094,
		0.369838, 0.575883, 0.729094,
		0.743653, -0.653900, 0.139267,
		40.908928, 37.198078, 36.995529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917973, 38.116837, 37.000896>,  <40.388371, 37.655807, 36.898045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917973, 38.116837, 37.000896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066814, 37.762470, 36.890121>,  <41.156120, 37.549850, 36.823658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066814, 37.762470, 36.890121>,  <40.917973, 38.116837, 37.000896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066814, 37.762470, 36.890121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610741, 0.458366, -0.645675,
		0.698950, 0.071124, 0.711625,
		0.372108, -0.885913, -0.276937,
		41.178448, 37.496696, 36.807041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636288, 38.252483, 36.799397>,  <40.917973, 38.116837, 37.000896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636288, 38.252483, 36.799397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566692, 37.895306, 36.633320>,  <41.524933, 37.681000, 36.533672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566692, 37.895306, 36.633320>,  <41.636288, 38.252483, 36.799397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566692, 37.895306, 36.633320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586645, 0.244654, -0.772006,
		0.790933, -0.377893, 0.481271,
		-0.173991, -0.892940, -0.415193,
		41.514496, 37.627422, 36.508762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249176, 37.979034, 36.607025>,  <41.636288, 38.252483, 36.799397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249176, 37.979034, 36.607025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009518, 37.756912, 36.376320>,  <41.865723, 37.623638, 36.237896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009518, 37.756912, 36.376320>,  <42.249176, 37.979034, 36.607025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009518, 37.756912, 36.376320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619163, 0.135354, -0.773509,
		0.507599, -0.820560, 0.262726,
		-0.599150, -0.555303, -0.576766,
		41.829773, 37.590321, 36.203289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702095, 37.480381, 36.310486>,  <42.249176, 37.979034, 36.607025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702095, 37.480381, 36.310486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390553, 37.504391, 36.060757>,  <42.203629, 37.518795, 35.910919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390553, 37.504391, 36.060757>,  <42.702095, 37.480381, 36.310486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390553, 37.504391, 36.060757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627205, 0.076496, -0.775089,
		0.001235, -0.995262, -0.097226,
		-0.778854, 0.060023, -0.624327,
		42.156895, 37.522396, 35.873459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825253, 37.039848, 35.773174>,  <42.702095, 37.480381, 36.310486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825253, 37.039848, 35.773174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578049, 37.318844, 35.628082>,  <42.429726, 37.486240, 35.541027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578049, 37.318844, 35.628082>,  <42.825253, 37.039848, 35.773174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578049, 37.318844, 35.628082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652407, 0.197560, -0.731666,
		-0.438666, -0.688826, -0.577140,
		-0.618010, 0.697487, -0.362732,
		42.392647, 37.528091, 35.519264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785999, 36.972977, 34.956654>,  <42.825253, 37.039848, 35.773174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785999, 36.972977, 34.956654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685944, 37.338390, 35.084957>,  <42.625912, 37.557640, 35.161942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685944, 37.338390, 35.084957>,  <42.785999, 36.972977, 34.956654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685944, 37.338390, 35.084957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707375, 0.398640, -0.583701,
		-0.661098, 0.080892, -0.745926,
		-0.250139, 0.913533, 0.320761,
		42.610901, 37.612450, 35.181187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720222, 37.527546, 34.387142>,  <42.785999, 36.972977, 34.956654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720222, 37.527546, 34.387142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828247, 37.744816, 34.705143>,  <42.893063, 37.875179, 34.895943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828247, 37.744816, 34.705143>,  <42.720222, 37.527546, 34.387142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828247, 37.744816, 34.705143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632661, 0.522313, -0.571778,
		-0.725816, 0.657380, -0.202592,
		0.270058, 0.543177, 0.795001,
		42.909264, 37.907768, 34.943642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732105, 38.262108, 34.169273>,  <42.720222, 37.527546, 34.387142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732105, 38.262108, 34.169273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970688, 38.135719, 34.464409>,  <43.113838, 38.059887, 34.641491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970688, 38.135719, 34.464409>,  <42.732105, 38.262108, 34.169273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970688, 38.135719, 34.464409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791893, 0.381613, -0.476735,
		-0.130935, 0.868640, 0.477829,
		0.596457, -0.315968, 0.737837,
		43.149624, 38.040928, 34.685760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039795, 38.801373, 34.578472>,  <42.732105, 38.262108, 34.169273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039795, 38.801373, 34.578472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287567, 38.487534, 34.567764>,  <43.436230, 38.299232, 34.561340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287567, 38.487534, 34.567764>,  <43.039795, 38.801373, 34.578472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287567, 38.487534, 34.567764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761192, 0.608602, -0.224032,
		0.192069, 0.118393, 0.974214,
		0.619432, -0.784593, -0.026774,
		43.473396, 38.252155, 34.559731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640896, 38.780949, 35.039745>,  <43.039795, 38.801373, 34.578472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640896, 38.780949, 35.039745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696835, 38.602097, 34.686359>,  <43.730400, 38.494785, 34.474327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696835, 38.602097, 34.686359>,  <43.640896, 38.780949, 35.039745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696835, 38.602097, 34.686359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783974, 0.595013, -0.177042,
		0.604836, -0.667858, 0.433750,
		0.139849, -0.447130, -0.883469,
		43.738789, 38.467957, 34.421318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226501, 38.537853, 34.789215>,  <43.640896, 38.780949, 35.039745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226501, 38.537853, 34.789215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616207, 38.477947, 34.856602>,  <44.850029, 38.442001, 34.897034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616207, 38.477947, 34.856602>,  <44.226501, 38.537853, 34.789215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616207, 38.477947, 34.856602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050239, -0.584287, -0.809991,
		0.219741, 0.797608, -0.561726,
		0.974264, -0.149768, 0.168463,
		44.908485, 38.433018, 34.907139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697754, 38.627342, 34.178696>,  <44.226501, 38.537853, 34.789215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697754, 38.627342, 34.178696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854469, 38.354553, 34.425728>,  <44.948498, 38.190880, 34.573948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854469, 38.354553, 34.425728>,  <44.697754, 38.627342, 34.178696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854469, 38.354553, 34.425728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104879, -0.699977, -0.706422,
		0.914057, 0.211998, -0.345770,
		0.391792, -0.681974, 0.617585,
		44.972008, 38.149960, 34.611004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296219, 38.216110, 34.011169>,  <44.697754, 38.627342, 34.178696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296219, 38.216110, 34.011169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.050270, 37.974018, 34.213413>,  <44.902702, 37.828762, 34.334759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.050270, 37.974018, 34.213413>,  <45.296219, 38.216110, 34.011169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.050270, 37.974018, 34.213413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062973, -0.601394, -0.796467,
		0.786111, -0.521562, 0.331665,
		-0.614868, -0.605226, 0.505607,
		44.865810, 37.792450, 34.365097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476646, 37.565140, 33.787300>,  <45.296219, 38.216110, 34.011169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476646, 37.565140, 33.787300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123878, 37.489166, 33.959873>,  <44.912216, 37.443584, 34.063419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123878, 37.489166, 33.959873>,  <45.476646, 37.565140, 33.787300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123878, 37.489166, 33.959873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158466, -0.742520, -0.650809,
		0.443957, -0.642332, 0.624748,
		-0.881924, -0.189930, 0.431435,
		44.859303, 37.432186, 34.089302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400684, 36.842636, 33.853039>,  <45.476646, 37.565140, 33.787300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400684, 36.842636, 33.853039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022736, 36.973141, 33.864170>,  <44.795967, 37.051441, 33.870850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022736, 36.973141, 33.864170>,  <45.400684, 36.842636, 33.853039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022736, 36.973141, 33.864170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294240, -0.808697, -0.509344,
		-0.143674, -0.489453, 0.860113,
		-0.944871, 0.326259, 0.027828,
		44.739273, 37.071018, 33.872517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989929, 36.200954, 33.936275>,  <45.400684, 36.842636, 33.853039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989929, 36.200954, 33.936275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.760201, 36.489635, 33.781719>,  <44.622364, 36.662846, 33.688988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.760201, 36.489635, 33.781719>,  <44.989929, 36.200954, 33.936275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760201, 36.489635, 33.781719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254698, -0.606099, -0.753507,
		-0.777999, -0.334344, 0.531913,
		-0.574322, 0.721705, -0.386388,
		44.587902, 36.706146, 33.665802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461224, 35.881020, 33.661278>,  <44.989929, 36.200954, 33.936275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461224, 35.881020, 33.661278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406754, 36.229565, 33.472729>,  <44.374073, 36.438690, 33.359600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406754, 36.229565, 33.472729>,  <44.461224, 35.881020, 33.661278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406754, 36.229565, 33.472729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251532, -0.490622, -0.834279,
		-0.958222, 0.004959, 0.285984,
		-0.136173, 0.871358, -0.471372,
		44.365902, 36.490971, 33.331318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656818, 35.860134, 33.313725>,  <44.461224, 35.881020, 33.661278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656818, 35.860134, 33.313725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892551, 36.131039, 33.137543>,  <44.033993, 36.293583, 33.031834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892551, 36.131039, 33.137543>,  <43.656818, 35.860134, 33.313725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892551, 36.131039, 33.137543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225206, -0.385864, -0.894646,
		-0.775864, 0.626441, -0.074881,
		0.589337, 0.677260, -0.440456,
		44.069351, 36.334217, 33.005405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241272, 36.193172, 32.833664>,  <43.656818, 35.860134, 33.313725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241272, 36.193172, 32.833664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613640, 36.262203, 32.704906>,  <43.837059, 36.303619, 32.627651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613640, 36.262203, 32.704906>,  <43.241272, 36.193172, 32.833664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613640, 36.262203, 32.704906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247511, -0.350001, -0.903459,
		-0.268576, 0.920716, -0.283108,
		0.930916, 0.172575, -0.321889,
		43.892914, 36.313976, 32.608341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062950, 36.501659, 32.161057>,  <43.241272, 36.193172, 32.833664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062950, 36.501659, 32.161057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443314, 36.377884, 32.158813>,  <43.671532, 36.303619, 32.157467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443314, 36.377884, 32.158813>,  <43.062950, 36.501659, 32.161057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443314, 36.377884, 32.158813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177138, -0.529327, -0.829720,
		0.253778, 0.789977, -0.558152,
		0.950904, -0.309434, -0.005603,
		43.728584, 36.285053, 32.157131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251480, 36.577805, 31.457277>,  <43.062950, 36.501659, 32.161057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251480, 36.577805, 31.457277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502331, 36.318718, 31.630335>,  <43.652840, 36.163265, 31.734169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502331, 36.318718, 31.630335>,  <43.251480, 36.577805, 31.457277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502331, 36.318718, 31.630335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079943, -0.606032, -0.791413,
		0.774804, 0.461730, -0.431839,
		0.627127, -0.647712, 0.432643,
		43.690468, 36.124405, 31.760128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716679, 36.344654, 30.922045>,  <43.251480, 36.577805, 31.457277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716679, 36.344654, 30.922045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741833, 36.052036, 31.193602>,  <43.756924, 35.876465, 31.356535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741833, 36.052036, 31.193602>,  <43.716679, 36.344654, 30.922045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741833, 36.052036, 31.193602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082274, -0.681722, -0.726970,
		0.994624, -0.010139, -0.103058,
		0.062886, -0.731541, 0.678891,
		43.760700, 35.832573, 31.397268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163460, 35.861229, 30.606604>,  <43.716679, 36.344654, 30.922045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163460, 35.861229, 30.606604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957439, 35.661888, 30.885563>,  <43.833828, 35.542282, 31.052938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957439, 35.661888, 30.885563>,  <44.163460, 35.861229, 30.606604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957439, 35.661888, 30.885563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318233, -0.644290, -0.695427,
		0.795894, -0.580118, 0.173252,
		-0.515054, -0.498351, 0.697399,
		43.802921, 35.512383, 31.094782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406113, 35.188751, 30.568932>,  <44.163460, 35.861229, 30.606604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406113, 35.188751, 30.568932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048080, 35.158516, 30.744711>,  <43.833260, 35.140373, 30.850178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048080, 35.158516, 30.744711>,  <44.406113, 35.188751, 30.568932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048080, 35.158516, 30.744711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270113, -0.692209, -0.669243,
		0.354780, -0.717727, 0.599165,
		-0.895081, -0.075592, 0.439449,
		43.779556, 35.135838, 30.876545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243774, 34.536037, 30.544271>,  <44.406113, 35.188751, 30.568932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243774, 34.536037, 30.544271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879818, 34.689266, 30.607964>,  <43.661446, 34.781204, 30.646179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879818, 34.689266, 30.607964>,  <44.243774, 34.536037, 30.544271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879818, 34.689266, 30.607964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397362, -0.694501, -0.599810,
		-0.119187, -0.609033, 0.784139,
		-0.909889, 0.383076, 0.159231,
		43.606850, 34.804188, 30.655733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857868, 33.916088, 30.638742>,  <44.243774, 34.536037, 30.544271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857868, 33.916088, 30.638742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588341, 34.203022, 30.567867>,  <43.426624, 34.375183, 30.525343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588341, 34.203022, 30.567867>,  <43.857868, 33.916088, 30.638742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588341, 34.203022, 30.567867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541012, -0.642295, -0.542922,
		-0.503264, -0.269971, 0.820878,
		-0.673819, 0.717337, -0.177186,
		43.386196, 34.418224, 30.514711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237789, 33.654823, 30.846832>,  <43.857868, 33.916088, 30.638742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237789, 33.654823, 30.846832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147095, 33.954342, 30.597708>,  <43.092678, 34.134052, 30.448233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147095, 33.954342, 30.597708>,  <43.237789, 33.654823, 30.846832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147095, 33.954342, 30.597708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761393, -0.535036, -0.366083,
		-0.607348, 0.391201, 0.691441,
		-0.226734, 0.748798, -0.622811,
		43.079075, 34.178982, 30.410864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498112, 33.760033, 30.964998>,  <43.237789, 33.654823, 30.846832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498112, 33.760033, 30.964998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613937, 33.877430, 30.600578>,  <42.683434, 33.947868, 30.381926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613937, 33.877430, 30.600578>,  <42.498112, 33.760033, 30.964998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613937, 33.877430, 30.600578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735153, -0.541339, -0.408047,
		-0.612945, 0.787919, 0.059006,
		0.289566, 0.293489, -0.911052,
		42.700806, 33.965477, 30.327263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919159, 33.832912, 30.445356>,  <42.498112, 33.760033, 30.964998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919159, 33.832912, 30.445356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224648, 33.823895, 30.187294>,  <42.407940, 33.818485, 30.032455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224648, 33.823895, 30.187294>,  <41.919159, 33.832912, 30.445356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224648, 33.823895, 30.187294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589509, -0.431644, -0.682761,
		-0.263088, 0.901762, -0.342942,
		0.763717, -0.022541, -0.645158,
		42.453762, 33.817131, 29.993746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562695, 34.039394, 29.871077>,  <41.919159, 33.832912, 30.445356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562695, 34.039394, 29.871077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902241, 33.859177, 29.760487>,  <42.105968, 33.751045, 29.694132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902241, 33.859177, 29.760487>,  <41.562695, 34.039394, 29.871077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902241, 33.859177, 29.760487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509356, -0.557251, -0.655765,
		0.141387, 0.697479, -0.702518,
		0.848862, -0.450549, -0.276477,
		42.156898, 33.724010, 29.677544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486267, 33.878822, 29.200455>,  <41.562695, 34.039394, 29.871077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486267, 33.878822, 29.200455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804272, 33.651928, 29.286430>,  <41.995075, 33.515793, 29.338015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804272, 33.651928, 29.286430>,  <41.486267, 33.878822, 29.200455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804272, 33.651928, 29.286430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384910, -0.745602, -0.543988,
		0.468827, 0.349745, -0.811098,
		0.795013, -0.567236, 0.214938,
		42.042774, 33.481758, 29.350912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884968, 33.702534, 28.518129>,  <41.486267, 33.878822, 29.200455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884968, 33.702534, 28.518129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984634, 33.417427, 28.780390>,  <42.044434, 33.246361, 28.937746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984634, 33.417427, 28.780390>,  <41.884968, 33.702534, 28.518129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984634, 33.417427, 28.780390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399224, -0.692397, -0.601005,
		0.882348, -0.112003, -0.457074,
		0.249162, -0.712770, 0.655649,
		42.059383, 33.203594, 28.977085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161461, 33.058418, 28.161869>,  <41.884968, 33.702534, 28.518129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161461, 33.058418, 28.161869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041866, 32.924801, 28.519423>,  <41.970112, 32.844631, 28.733953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041866, 32.924801, 28.519423>,  <42.161461, 33.058418, 28.161869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041866, 32.924801, 28.519423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643528, -0.621091, -0.447345,
		0.704614, -0.708987, -0.029268,
		-0.298984, -0.334041, 0.893882,
		41.952171, 32.824589, 28.787588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134026, 32.343369, 27.992548>,  <42.161461, 33.058418, 28.161869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134026, 32.343369, 27.992548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026974, 32.352135, 28.377857>,  <41.962742, 32.357395, 28.609043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026974, 32.352135, 28.377857>,  <42.134026, 32.343369, 27.992548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026974, 32.352135, 28.377857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414245, -0.905247, -0.094492,
		0.869928, -0.424319, 0.251351,
		-0.267630, 0.021919, 0.963272,
		41.946686, 32.358711, 28.666840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069172, 31.637957, 28.191362>,  <42.134026, 32.343369, 27.992548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069172, 31.637957, 28.191362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922611, 31.815041, 28.518717>,  <41.834675, 31.921291, 28.715130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922611, 31.815041, 28.518717>,  <42.069172, 31.637957, 28.191362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922611, 31.815041, 28.518717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450530, -0.853983, 0.260261,
		0.814110, -0.273349, 0.512353,
		-0.366398, 0.442712, 0.818388,
		41.812691, 31.947855, 28.764233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399296, 31.296528, 28.635876>,  <42.069172, 31.637957, 28.191362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399296, 31.296528, 28.635876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027401, 31.409151, 28.730801>,  <41.804264, 31.476725, 28.787756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027401, 31.409151, 28.730801>,  <42.399296, 31.296528, 28.635876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027401, 31.409151, 28.730801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255604, -0.957382, 0.134488,
		0.265066, 0.064380, 0.962079,
		-0.929735, 0.281559, 0.237313,
		41.748482, 31.493618, 28.801994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169895, 30.987488, 29.288322>,  <42.399296, 31.296528, 28.635876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169895, 30.987488, 29.288322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867752, 31.052895, 29.034489>,  <41.686466, 31.092138, 28.882189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867752, 31.052895, 29.034489>,  <42.169895, 30.987488, 29.288322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867752, 31.052895, 29.034489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252756, -0.966136, 0.051909,
		-0.604606, 0.199605, 0.771109,
		-0.755358, 0.163518, -0.634584,
		41.641144, 31.101950, 28.844114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255222, 30.596487, 30.002275>,  <42.169895, 30.987488, 29.288322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255222, 30.596487, 30.002275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342892, 30.498863, 29.624407>,  <42.395493, 30.440289, 29.397686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342892, 30.498863, 29.624407>,  <42.255222, 30.596487, 30.002275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342892, 30.498863, 29.624407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497091, -0.805197, 0.323354,
		-0.839562, -0.540456, -0.055156,
		0.219170, -0.244058, -0.944669,
		42.408642, 30.425646, 29.341005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996174, 29.910614, 30.208689>,  <42.255222, 30.596487, 30.002275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996174, 29.910614, 30.208689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232189, 30.027359, 30.509800>,  <42.373798, 30.097406, 30.690466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232189, 30.027359, 30.509800>,  <41.996174, 29.910614, 30.208689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232189, 30.027359, 30.509800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801377, -0.098249, -0.590036,
		-0.098249, 0.951401, -0.291860,
		0.590036, 0.291860, 0.752779,
		42.409199, 30.114918, 30.735634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100388, 29.411726, 30.813438>,  <41.996174, 29.910614, 30.208689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100388, 29.411726, 30.813438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905861, 29.191618, 31.084936>,  <41.789143, 29.059553, 31.247835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905861, 29.191618, 31.084936>,  <42.100388, 29.411726, 30.813438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905861, 29.191618, 31.084936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867875, -0.214029, 0.448313,
		-0.101422, 0.807089, 0.581653,
		-0.486319, -0.550271, 0.678745,
		41.759964, 29.026537, 31.288559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225342, 29.603104, 31.591738>,  <42.100388, 29.411726, 30.813438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225342, 29.603104, 31.591738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151066, 29.222403, 31.494013>,  <42.106503, 28.993982, 31.435377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151066, 29.222403, 31.494013>,  <42.225342, 29.603104, 31.591738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151066, 29.222403, 31.494013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897095, -0.265652, 0.353057,
		-0.400925, -0.153613, 0.903140,
		-0.185687, -0.951752, -0.244312,
		42.095360, 28.936876, 31.420719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029732, 30.300068, 31.344549>,  <42.225342, 29.603104, 31.591738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029732, 30.300068, 31.344549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118095, 30.543018, 31.039316>,  <42.171112, 30.688789, 30.856176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118095, 30.543018, 31.039316>,  <42.029732, 30.300068, 31.344549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118095, 30.543018, 31.039316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581092, 0.546405, 0.603137,
		0.783283, -0.576658, -0.232236,
		0.220909, 0.607377, -0.763081,
		42.184368, 30.725231, 30.810392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688217, 30.414017, 31.348211>,  <42.029732, 30.300068, 31.344549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688217, 30.414017, 31.348211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503761, 30.731695, 31.189920>,  <42.393089, 30.922302, 31.094946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503761, 30.731695, 31.189920>,  <42.688217, 30.414017, 31.348211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503761, 30.731695, 31.189920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450487, 0.593773, 0.666704,
		0.764467, 0.129174, -0.631589,
		-0.461141, 0.794196, -0.395729,
		42.365417, 30.969954, 31.071201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159924, 30.954370, 31.038599>,  <42.688217, 30.414017, 31.348211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159924, 30.954370, 31.038599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827538, 31.086143, 31.217920>,  <42.628105, 31.165207, 31.325514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827538, 31.086143, 31.217920>,  <43.159924, 30.954370, 31.038599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827538, 31.086143, 31.217920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552852, 0.399026, 0.731528,
		0.062103, 0.855718, -0.513702,
		-0.830962, 0.329431, 0.448304,
		42.578247, 31.184973, 31.352411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292374, 31.669865, 31.186855>,  <43.159924, 30.954370, 31.038599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292374, 31.669865, 31.186855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984013, 31.575039, 31.423332>,  <42.798996, 31.518145, 31.565218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984013, 31.575039, 31.423332>,  <43.292374, 31.669865, 31.186855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984013, 31.575039, 31.423332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376260, 0.579418, 0.722982,
		-0.513939, 0.779792, -0.357480,
		-0.770906, -0.237063, 0.591190,
		42.752743, 31.503920, 31.600689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014641, 32.369301, 31.439917>,  <43.292374, 31.669865, 31.186855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014641, 32.369301, 31.439917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900143, 32.069920, 31.679209>,  <42.831444, 31.890291, 31.822784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900143, 32.069920, 31.679209>,  <43.014641, 32.369301, 31.439917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900143, 32.069920, 31.679209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317235, 0.515113, 0.796254,
		-0.904116, 0.417704, 0.089987,
		-0.286245, -0.748453, 0.598232,
		42.814270, 31.845385, 31.858679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539135, 32.698864, 31.976873>,  <43.014641, 32.369301, 31.439917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539135, 32.698864, 31.976873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682652, 32.357319, 32.127701>,  <42.768761, 32.152390, 32.218197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682652, 32.357319, 32.127701>,  <42.539135, 32.698864, 31.976873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682652, 32.357319, 32.127701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162583, 0.454961, 0.875544,
		-0.919148, -0.252836, 0.302062,
		0.358795, -0.853864, 0.377070,
		42.790291, 32.101158, 32.240822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291370, 32.670761, 32.653366>,  <42.539135, 32.698864, 31.976873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291370, 32.670761, 32.653366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599651, 32.415955, 32.659435>,  <42.784618, 32.263069, 32.663074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599651, 32.415955, 32.659435>,  <42.291370, 32.670761, 32.653366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599651, 32.415955, 32.659435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292598, 0.374949, 0.879659,
		-0.566049, -0.673512, 0.475363,
		0.770697, -0.637020, 0.015171,
		42.830860, 32.224850, 32.663986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342960, 32.418324, 33.298679>,  <42.291370, 32.670761, 32.653366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342960, 32.418324, 33.298679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708858, 32.333218, 33.161293>,  <42.928398, 32.282154, 33.078861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708858, 32.333218, 33.161293>,  <42.342960, 32.418324, 33.298679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708858, 32.333218, 33.161293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394121, 0.282814, 0.874462,
		-0.088919, -0.935279, 0.342559,
		0.914747, -0.212766, -0.343466,
		42.983284, 32.269386, 33.058254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731472, 32.144314, 33.839092>,  <42.342960, 32.418324, 33.298679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731472, 32.144314, 33.839092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005459, 32.272133, 33.577187>,  <43.169849, 32.348824, 33.420044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005459, 32.272133, 33.577187>,  <42.731472, 32.144314, 33.839092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005459, 32.272133, 33.577187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518789, 0.417068, 0.746265,
		0.511547, -0.850849, 0.119900,
		0.684965, 0.319547, -0.654762,
		43.210949, 32.367996, 33.380756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347771, 32.096012, 34.177578>,  <42.731472, 32.144314, 33.839092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347771, 32.096012, 34.177578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439716, 32.341915, 33.875786>,  <43.494884, 32.489456, 33.694710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439716, 32.341915, 33.875786>,  <43.347771, 32.096012, 34.177578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439716, 32.341915, 33.875786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639973, 0.488570, 0.593071,
		0.733209, -0.619174, -0.281120,
		0.229867, 0.614754, -0.754479,
		43.508678, 32.526340, 33.649441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081783, 32.262371, 34.256435>,  <43.347771, 32.096012, 34.177578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081783, 32.262371, 34.256435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954689, 32.571526, 34.036728>,  <43.878433, 32.757019, 33.904903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954689, 32.571526, 34.036728>,  <44.081783, 32.262371, 34.256435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954689, 32.571526, 34.036728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536924, 0.624119, 0.567616,
		0.781510, -0.114566, -0.613283,
		-0.317732, 0.772884, -0.549269,
		43.859371, 32.803391, 33.871948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644676, 32.697041, 34.058300>,  <44.081783, 32.262371, 34.256435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644676, 32.697041, 34.058300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.325859, 32.932934, 34.006229>,  <44.134571, 33.074471, 33.974987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.325859, 32.932934, 34.006229>,  <44.644676, 32.697041, 34.058300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.325859, 32.932934, 34.006229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463566, 0.735569, 0.494010,
		0.387083, 0.333402, -0.859657,
		-0.797040, 0.589730, -0.130172,
		44.086746, 33.109852, 33.967178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946533, 33.313435, 33.746590>,  <44.644676, 32.697041, 34.058300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946533, 33.313435, 33.746590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588459, 33.424686, 33.885895>,  <44.373615, 33.491436, 33.969479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588459, 33.424686, 33.885895>,  <44.946533, 33.313435, 33.746590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588459, 33.424686, 33.885895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413651, 0.809382, 0.416886,
		-0.165930, 0.517250, -0.839595,
		-0.895187, 0.278125, 0.348261,
		44.319904, 33.508125, 33.990372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829899, 34.010445, 33.559265>,  <44.946533, 33.313435, 33.746590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829899, 34.010445, 33.559265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604771, 33.936054, 33.881416>,  <44.469692, 33.891418, 34.074707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604771, 33.936054, 33.881416>,  <44.829899, 34.010445, 33.559265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604771, 33.936054, 33.881416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348433, 0.830177, 0.435201,
		-0.749549, 0.525563, -0.402442,
		-0.562824, -0.185980, 0.805382,
		44.435925, 33.880260, 34.123032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567921, 34.684933, 33.655231>,  <44.829899, 34.010445, 33.559265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567921, 34.684933, 33.655231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.541050, 34.487247, 34.001926>,  <44.524925, 34.368637, 34.209946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.541050, 34.487247, 34.001926>,  <44.567921, 34.684933, 33.655231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541050, 34.487247, 34.001926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370314, 0.794301, 0.481616,
		-0.926474, 0.353321, 0.129653,
		-0.067181, -0.494217, 0.866739,
		44.520897, 34.338982, 34.261948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.316521, 35.247356, 34.038979>,  <44.567921, 34.684933, 33.655231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.316521, 35.247356, 34.038979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420345, 34.956806, 34.293541>,  <44.482639, 34.782478, 34.446278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420345, 34.956806, 34.293541>,  <44.316521, 35.247356, 34.038979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420345, 34.956806, 34.293541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349001, 0.685007, 0.639503,
		-0.900458, 0.056113, 0.431308,
		0.259565, -0.726372, 0.636404,
		44.498215, 34.738895, 34.484463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003666, 35.442490, 34.705505>,  <44.316521, 35.247356, 34.038979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003666, 35.442490, 34.705505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313591, 35.199314, 34.774876>,  <44.499546, 35.053410, 34.816498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313591, 35.199314, 34.774876>,  <44.003666, 35.442490, 34.705505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313591, 35.199314, 34.774876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263449, 0.559872, 0.785581,
		-0.574679, -0.562991, 0.593957,
		0.774815, -0.607935, 0.173428,
		44.546036, 35.016933, 34.826904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969170, 35.296150, 35.347263>,  <44.003666, 35.442490, 34.705505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969170, 35.296150, 35.347263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352718, 35.211838, 35.271221>,  <44.582848, 35.161251, 35.225594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352718, 35.211838, 35.271221>,  <43.969170, 35.296150, 35.347263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352718, 35.211838, 35.271221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269470, 0.465501, 0.843027,
		-0.089199, -0.859581, 0.503154,
		0.958869, -0.210782, -0.190109,
		44.640381, 35.148602, 35.214188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175404, 35.203053, 36.000977>,  <43.969170, 35.296150, 35.347263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175404, 35.203053, 36.000977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502159, 35.231815, 35.772057>,  <44.698212, 35.249073, 35.634705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502159, 35.231815, 35.772057>,  <44.175404, 35.203053, 36.000977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502159, 35.231815, 35.772057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469314, 0.493956, 0.731950,
		0.335323, -0.866508, 0.369759,
		0.816886, 0.071906, -0.572300,
		44.747227, 35.253387, 35.600365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750488, 34.900772, 36.326576>,  <44.175404, 35.203053, 36.000977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750488, 34.900772, 36.326576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909973, 35.170849, 36.078339>,  <45.005665, 35.332897, 35.929398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909973, 35.170849, 36.078339>,  <44.750488, 34.900772, 36.326576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909973, 35.170849, 36.078339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489309, 0.415714, 0.766654,
		0.775632, -0.609337, -0.164630,
		0.398712, 0.675196, -0.620595,
		45.029587, 35.373409, 35.892159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336712, 35.103230, 36.619366>,  <44.750488, 34.900772, 36.326576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336712, 35.103230, 36.619366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374077, 35.412693, 36.368694>,  <45.396496, 35.598370, 36.218292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374077, 35.412693, 36.368694>,  <45.336712, 35.103230, 36.619366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.374077, 35.412693, 36.368694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236654, 0.594140, 0.768760,
		0.967093, -0.220118, -0.127589,
		0.093412, 0.773657, -0.626680,
		45.402100, 35.644791, 36.180691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943821, 35.372711, 36.786743>,  <45.336712, 35.103230, 36.619366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943821, 35.372711, 36.786743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748699, 35.664207, 36.594498>,  <45.631626, 35.839104, 36.479153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748699, 35.664207, 36.594498>,  <45.943821, 35.372711, 36.786743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748699, 35.664207, 36.594498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204241, 0.630550, 0.748794,
		0.848726, 0.267102, -0.456422,
		-0.487801, 0.728741, -0.480611,
		45.602360, 35.882832, 36.450314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246098, 35.581738, 36.195011>,  <45.943821, 35.372711, 36.786743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246098, 35.581738, 36.195011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559849, 35.333851, 36.205650>,  <46.748100, 35.185120, 36.212032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559849, 35.333851, 36.205650>,  <46.246098, 35.581738, 36.195011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559849, 35.333851, 36.205650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183334, 0.190653, -0.964386,
		0.592574, 0.761317, 0.263158,
		0.784375, -0.619716, 0.026599,
		46.795162, 35.147938, 36.213631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.850269, 35.855366, 35.784847>,  <46.246098, 35.581738, 36.195011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.850269, 35.855366, 35.784847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889782, 35.457333, 35.787994>,  <46.913490, 35.218513, 35.789883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889782, 35.457333, 35.787994>,  <46.850269, 35.855366, 35.784847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.889782, 35.457333, 35.787994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327486, 0.025036, -0.944524,
		0.939678, 0.095878, 0.328347,
		0.098780, -0.995078, 0.007872,
		46.919415, 35.158810, 35.790356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.616203, 35.608303, 35.779510>,  <46.850269, 35.855366, 35.784847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.616203, 35.608303, 35.779510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.348110, 35.383297, 35.585861>,  <47.187256, 35.248295, 35.469673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.348110, 35.383297, 35.585861>,  <47.616203, 35.608303, 35.779510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.348110, 35.383297, 35.585861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539841, 0.078120, -0.838135,
		0.509279, -0.823091, 0.251308,
		-0.670229, -0.562511, -0.484123,
		47.147041, 35.214542, 35.440624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.917549, 35.011852, 35.576988>,  <47.616203, 35.608303, 35.779510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.917549, 35.011852, 35.576988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.620739, 35.092709, 35.321320>,  <47.442654, 35.141220, 35.167919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.620739, 35.092709, 35.321320>,  <47.917549, 35.011852, 35.576988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.620739, 35.092709, 35.321320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670017, 0.254785, -0.697253,
		0.021911, -0.945635, -0.324492,
		-0.742022, 0.202137, -0.639174,
		47.398132, 35.153351, 35.129566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.126049, 34.729317, 34.973343>,  <47.917549, 35.011852, 35.576988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.126049, 34.729317, 34.973343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.867321, 35.021511, 34.885693>,  <47.712086, 35.196827, 34.833103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.867321, 35.021511, 34.885693>,  <48.126049, 34.729317, 34.973343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.867321, 35.021511, 34.885693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447895, 0.131307, -0.884392,
		-0.617262, -0.670187, -0.412113,
		-0.646821, 0.730485, -0.219122,
		47.673275, 35.240658, 34.819958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.640079, 36.523167, 42.957897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.325073, 36.381065, 42.756454>,  <33.136070, 36.295803, 42.635590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.325073, 36.381065, 42.756454>,  <33.640079, 36.523167, 42.957897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325073, 36.381065, 42.756454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556388, -0.058386, -0.828869,
		0.265055, -0.932945, 0.243639,
		-0.787514, -0.355254, -0.503604,
		33.088818, 36.274490, 42.605373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921055, 36.063538, 42.536053>,  <33.640079, 36.523167, 42.957897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921055, 36.063538, 42.536053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.557838, 36.117485, 42.377419>,  <33.339909, 36.149853, 42.282238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.557838, 36.117485, 42.377419>,  <33.921055, 36.063538, 42.536053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557838, 36.117485, 42.377419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373687, -0.166987, -0.912400,
		-0.189285, -0.976690, 0.101229,
		-0.908036, 0.134875, -0.396584,
		33.285427, 36.157944, 42.258442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898144, 35.595581, 41.979553>,  <33.921055, 36.063538, 42.536053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898144, 35.595581, 41.979553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.614437, 35.860100, 41.881878>,  <33.444214, 36.018810, 41.823273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.614437, 35.860100, 41.881878>,  <33.898144, 35.595581, 41.979553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614437, 35.860100, 41.881878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272288, -0.062508, -0.960183,
		-0.650229, -0.747516, -0.135728,
		-0.709269, 0.661296, -0.244184,
		33.401657, 36.058487, 41.808624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391754, 35.347157, 41.576931>,  <33.898144, 35.595581, 41.979553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391754, 35.347157, 41.576931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.391636, 35.733707, 41.474083>,  <33.391567, 35.965637, 41.412373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.391636, 35.733707, 41.474083>,  <33.391754, 35.347157, 41.576931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391636, 35.733707, 41.474083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493249, -0.223531, -0.840678,
		-0.869888, -0.127071, -0.476600,
		-0.000291, 0.966378, -0.257124,
		33.391548, 36.023621, 41.396946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271538, 35.364506, 40.908398>,  <33.391754, 35.347157, 41.576931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271538, 35.364506, 40.908398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.407780, 35.738594, 40.947075>,  <33.489525, 35.963047, 40.970280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.407780, 35.738594, 40.947075>,  <33.271538, 35.364506, 40.908398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407780, 35.738594, 40.947075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553457, -0.116306, -0.824717,
		-0.760046, 0.334420, -0.557219,
		0.340610, 0.935220, 0.096690,
		33.509964, 36.019161, 40.976082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161613, 35.625801, 40.294003>,  <33.271538, 35.364506, 40.908398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161613, 35.625801, 40.294003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.436287, 35.867271, 40.456013>,  <33.601089, 36.012154, 40.553219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.436287, 35.867271, 40.456013>,  <33.161613, 35.625801, 40.294003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436287, 35.867271, 40.456013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576385, -0.112591, -0.809385,
		-0.443002, 0.789241, -0.425262,
		0.686680, 0.603674, 0.405029,
		33.642292, 36.048374, 40.577522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240082, 36.211937, 39.726032>,  <33.161613, 35.625801, 40.294003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240082, 36.211937, 39.726032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.558857, 36.218029, 39.967579>,  <33.750122, 36.221684, 40.112507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.558857, 36.218029, 39.967579>,  <33.240082, 36.211937, 39.726032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558857, 36.218029, 39.967579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595479, 0.148128, -0.789597,
		-0.101476, 0.988851, 0.108980,
		0.796936, 0.015230, 0.603871,
		33.797939, 36.222599, 40.148739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650875, 36.820541, 39.541866>,  <33.240082, 36.211937, 39.726032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650875, 36.820541, 39.541866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931141, 36.573765, 39.685230>,  <34.099300, 36.425697, 39.771248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931141, 36.573765, 39.685230>,  <33.650875, 36.820541, 39.541866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931141, 36.573765, 39.685230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469632, 0.020609, -0.882622,
		0.537141, 0.786738, 0.304176,
		0.700661, -0.616943, 0.358407,
		34.141338, 36.388683, 39.792751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406807, 37.184635, 39.398056>,  <33.650875, 36.820541, 39.541866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406807, 37.184635, 39.398056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.416553, 36.788185, 39.450333>,  <34.422401, 36.550316, 39.481701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.416553, 36.788185, 39.450333>,  <34.406807, 37.184635, 39.398056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416553, 36.788185, 39.450333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629320, -0.086373, -0.772331,
		0.776764, 0.101067, 0.621629,
		0.024365, -0.991123, 0.130695,
		34.423862, 36.490849, 39.489540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066589, 36.990547, 39.482384>,  <34.406807, 37.184635, 39.398056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066589, 36.990547, 39.482384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875145, 36.662151, 39.357861>,  <34.760277, 36.465115, 39.283146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875145, 36.662151, 39.357861>,  <35.066589, 36.990547, 39.482384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875145, 36.662151, 39.357861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654855, -0.097584, -0.749428,
		0.584891, -0.562548, 0.584331,
		-0.478611, -0.820985, -0.311311,
		34.731560, 36.415855, 39.264465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437996, 36.369778, 39.428543>,  <35.066589, 36.990547, 39.482384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437996, 36.369778, 39.428543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161194, 36.227596, 39.177216>,  <34.995113, 36.142288, 39.026421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161194, 36.227596, 39.177216>,  <35.437996, 36.369778, 39.428543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161194, 36.227596, 39.177216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705006, -0.145621, -0.694090,
		0.155223, -0.923280, 0.351369,
		-0.692006, -0.355455, -0.628314,
		34.953590, 36.120960, 38.988720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798203, 35.953720, 38.997215>,  <35.437996, 36.369778, 39.428543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798203, 35.953720, 38.997215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459148, 36.020115, 38.795631>,  <35.255718, 36.059952, 38.674683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459148, 36.020115, 38.795631>,  <35.798203, 35.953720, 38.997215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459148, 36.020115, 38.795631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524959, 0.124391, -0.841989,
		-0.077070, -0.978251, -0.192573,
		-0.847631, 0.165985, -0.503955,
		35.204861, 36.069912, 38.644444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857136, 35.580830, 38.352303>,  <35.798203, 35.953720, 38.997215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857136, 35.580830, 38.352303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.600582, 35.884209, 38.306019>,  <35.446651, 36.066235, 38.278248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.600582, 35.884209, 38.306019>,  <35.857136, 35.580830, 38.352303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600582, 35.884209, 38.306019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476140, 0.275228, -0.835189,
		-0.601597, -0.590772, -0.537652,
		-0.641383, 0.758444, -0.115714,
		35.408169, 36.111740, 38.271305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646652, 35.599072, 37.594879>,  <35.857136, 35.580830, 38.352303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646652, 35.599072, 37.594879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539886, 35.960468, 37.729019>,  <35.475826, 36.177307, 37.809502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539886, 35.960468, 37.729019>,  <35.646652, 35.599072, 37.594879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539886, 35.960468, 37.729019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285552, 0.406494, -0.867884,
		-0.920443, -0.135894, -0.366494,
		-0.266918, 0.903491, 0.335350,
		35.459812, 36.231514, 37.829624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308250, 35.915558, 37.011089>,  <35.646652, 35.599072, 37.594879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308250, 35.915558, 37.011089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374962, 36.248688, 37.222214>,  <35.414989, 36.448566, 37.348888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374962, 36.248688, 37.222214>,  <35.308250, 35.915558, 37.011089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374962, 36.248688, 37.222214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081468, 0.521839, -0.849145,
		-0.982623, 0.184619, 0.019183,
		0.166779, 0.832826, 0.527811,
		35.424995, 36.498535, 37.380558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849545, 36.511169, 36.789959>,  <35.308250, 35.915558, 37.011089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849545, 36.511169, 36.789959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.189434, 36.663864, 36.935425>,  <35.393368, 36.755482, 37.022705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.189434, 36.663864, 36.935425>,  <34.849545, 36.511169, 36.789959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189434, 36.663864, 36.935425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165397, 0.461944, -0.871350,
		-0.500618, 0.800554, 0.329386,
		0.849721, 0.381734, 0.363667,
		35.444351, 36.778385, 37.044525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869106, 37.207462, 36.574455>,  <34.849545, 36.511169, 36.789959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869106, 37.207462, 36.574455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.242886, 37.155289, 36.706997>,  <35.467152, 37.123985, 36.786522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.242886, 37.155289, 36.706997>,  <34.869106, 37.207462, 36.574455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242886, 37.155289, 36.706997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350392, 0.502689, -0.790272,
		-0.063490, 0.854571, 0.515440,
		0.934449, -0.130432, 0.331350,
		35.523220, 37.116158, 36.806400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091476, 37.824940, 36.538704>,  <34.869106, 37.207462, 36.574455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091476, 37.824940, 36.538704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.409737, 37.583023, 36.525055>,  <35.600693, 37.437874, 36.516865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.409737, 37.583023, 36.525055>,  <35.091476, 37.824940, 36.538704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409737, 37.583023, 36.525055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360038, 0.517459, -0.776279,
		0.487143, 0.605363, 0.629466,
		0.795653, -0.604791, -0.034123,
		35.648434, 37.401585, 36.514816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649235, 38.216034, 36.328377>,  <35.091476, 37.824940, 36.538704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649235, 38.216034, 36.328377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818127, 37.858433, 36.268398>,  <35.919464, 37.643871, 36.232410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818127, 37.858433, 36.268398>,  <35.649235, 38.216034, 36.328377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818127, 37.858433, 36.268398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293291, 0.291245, -0.910580,
		0.857729, 0.340501, 0.385176,
		0.422235, -0.893999, -0.149944,
		35.944798, 37.590233, 36.223415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265347, 38.383846, 35.933159>,  <35.649235, 38.216034, 36.328377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265347, 38.383846, 35.933159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.239071, 37.988857, 35.875767>,  <36.223305, 37.751865, 35.841331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.239071, 37.988857, 35.875767>,  <36.265347, 38.383846, 35.933159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239071, 37.988857, 35.875767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295934, 0.118046, -0.947886,
		0.952947, -0.104729, 0.284471,
		-0.065690, -0.987470, -0.143484,
		36.219364, 37.692616, 35.832722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946392, 38.021236, 35.747562>,  <36.265347, 38.383846, 35.933159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946392, 38.021236, 35.747562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.657207, 37.791954, 35.593288>,  <36.483696, 37.654385, 35.500725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.657207, 37.791954, 35.593288>,  <36.946392, 38.021236, 35.747562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657207, 37.791954, 35.593288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376146, 0.141696, -0.915662,
		0.579515, -0.807066, 0.113169,
		-0.722964, -0.573208, -0.385689,
		36.440319, 37.619991, 35.477581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372646, 37.437973, 35.475475>,  <36.946392, 38.021236, 35.747562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372646, 37.437973, 35.475475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.029934, 37.460678, 35.270458>,  <36.824306, 37.474300, 35.147446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.029934, 37.460678, 35.270458>,  <37.372646, 37.437973, 35.475475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029934, 37.460678, 35.270458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510248, 0.237185, -0.826675,
		0.074643, -0.969805, -0.232179,
		-0.856782, 0.056763, -0.512545,
		36.772900, 37.477707, 35.116695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411045, 37.311497, 36.179924>,  <37.372646, 37.437973, 35.475475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411045, 37.311497, 36.179924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777924, 37.461697, 36.126614>,  <37.998051, 37.551815, 36.094627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777924, 37.461697, 36.126614>,  <37.411045, 37.311497, 36.179924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777924, 37.461697, 36.126614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046448, 0.231450, 0.971737,
		0.395730, -0.897460, 0.194843,
		0.917191, 0.375496, -0.133277,
		38.053082, 37.574345, 36.086632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842953, 36.986492, 36.685505>,  <37.411045, 37.311497, 36.179924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842953, 36.986492, 36.685505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.025967, 37.326839, 36.582203>,  <38.135773, 37.531048, 36.520222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.025967, 37.326839, 36.582203>,  <37.842953, 36.986492, 36.685505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025967, 37.326839, 36.582203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021438, 0.279794, 0.959820,
		0.888934, -0.444686, 0.109775,
		0.457533, 0.850864, -0.258252,
		38.163227, 37.582100, 36.504726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454308, 37.117531, 37.137562>,  <37.842953, 36.986492, 36.685505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454308, 37.117531, 37.137562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323879, 37.469143, 36.998436>,  <38.245621, 37.680111, 36.914963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323879, 37.469143, 36.998436>,  <38.454308, 37.117531, 37.137562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323879, 37.469143, 36.998436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070532, 0.344274, 0.936216,
		0.942709, 0.329808, -0.050259,
		-0.326074, 0.879035, -0.347813,
		38.226055, 37.732853, 36.894093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641403, 37.562912, 37.640869>,  <38.454308, 37.117531, 37.137562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641403, 37.562912, 37.640869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384468, 37.781029, 37.425438>,  <38.230309, 37.911900, 37.296181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384468, 37.781029, 37.425438>,  <38.641403, 37.562912, 37.640869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384468, 37.781029, 37.425438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339971, 0.427075, 0.837870,
		0.686894, 0.721294, -0.088944,
		-0.642337, 0.545290, -0.538575,
		38.191769, 37.944614, 37.263866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926552, 38.192371, 37.693840>,  <38.641403, 37.562912, 37.640869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926552, 38.192371, 37.693840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533825, 38.201744, 37.618492>,  <38.298187, 38.207367, 37.573284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533825, 38.201744, 37.618492>,  <38.926552, 38.192371, 37.693840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533825, 38.201744, 37.618492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173112, 0.296540, 0.939200,
		0.077867, 0.954733, -0.287092,
		-0.981819, 0.023434, -0.188367,
		38.239281, 38.208775, 37.561981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708630, 38.905109, 38.001610>,  <38.926552, 38.192371, 37.693840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708630, 38.905109, 38.001610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367233, 38.699478, 37.967480>,  <38.162395, 38.576099, 37.947002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367233, 38.699478, 37.967480>,  <38.708630, 38.905109, 38.001610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367233, 38.699478, 37.967480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352369, 0.448701, 0.821282,
		-0.383914, 0.731023, -0.564106,
		-0.853491, -0.514075, -0.085327,
		38.111187, 38.545258, 37.941883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183556, 39.293377, 38.311207>,  <38.708630, 38.905109, 38.001610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183556, 39.293377, 38.311207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.025444, 38.926548, 38.290276>,  <37.930576, 38.706451, 38.277718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.025444, 38.926548, 38.290276>,  <38.183556, 39.293377, 38.311207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025444, 38.926548, 38.290276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482082, 0.158628, 0.861646,
		-0.781889, 0.365816, -0.504805,
		-0.395281, -0.917069, -0.052324,
		37.906860, 38.651428, 38.274578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687691, 39.486122, 38.706692>,  <38.183556, 39.293377, 38.311207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687691, 39.486122, 38.706692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641697, 39.089367, 38.684982>,  <37.614101, 38.851315, 38.671955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641697, 39.089367, 38.684982>,  <37.687691, 39.486122, 38.706692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641697, 39.089367, 38.684982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607877, 0.027046, 0.793570,
		-0.785661, 0.124241, -0.606053,
		-0.114985, -0.991883, -0.054275,
		37.607201, 38.791801, 38.668701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899349, 39.275970, 38.779385>,  <37.687691, 39.486122, 38.706692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899349, 39.275970, 38.779385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.127411, 38.968117, 38.894341>,  <37.264248, 38.783405, 38.963314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.127411, 38.968117, 38.894341>,  <36.899349, 39.275970, 38.779385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127411, 38.968117, 38.894341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512838, -0.060129, 0.856377,
		-0.641814, -0.635652, -0.428978,
		0.570152, -0.769631, 0.287394,
		37.298458, 38.737228, 38.980560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368378, 38.680336, 38.895229>,  <36.899349, 39.275970, 38.779385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368378, 38.680336, 38.895229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.704082, 38.624668, 39.105473>,  <36.905506, 38.591267, 39.231617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.704082, 38.624668, 39.105473>,  <36.368378, 38.680336, 38.895229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704082, 38.624668, 39.105473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537085, -0.362756, 0.761543,
		0.084685, -0.921434, -0.379193,
		0.839266, -0.139167, 0.525608,
		36.955864, 38.582916, 39.263157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271900, 37.950104, 39.198418>,  <36.368378, 38.680336, 38.895229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271900, 37.950104, 39.198418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567123, 38.157448, 39.371193>,  <36.744259, 38.281853, 39.474857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567123, 38.157448, 39.371193>,  <36.271900, 37.950104, 39.198418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567123, 38.157448, 39.371193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238990, -0.397829, 0.885786,
		0.630996, -0.756990, -0.169738,
		0.738057, 0.518361, 0.431941,
		36.788540, 38.312958, 39.500774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260979, 37.732147, 39.851490>,  <36.271900, 37.950104, 39.198418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260979, 37.732147, 39.851490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497356, 38.050995, 39.901096>,  <36.639183, 38.242302, 39.930862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497356, 38.050995, 39.901096>,  <36.260979, 37.732147, 39.851490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497356, 38.050995, 39.901096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286675, 0.063806, 0.955901,
		0.754055, -0.600439, 0.266221,
		0.590947, 0.797121, 0.124018,
		36.674641, 38.290131, 39.938301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840549, 37.481861, 40.241650>,  <36.260979, 37.732147, 39.851490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840549, 37.481861, 40.241650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.828728, 37.877998, 40.295818>,  <36.821636, 38.115681, 40.328320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.828728, 37.877998, 40.295818>,  <36.840549, 37.481861, 40.241650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828728, 37.877998, 40.295818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338841, -0.137386, 0.930759,
		0.940379, -0.018377, 0.339631,
		-0.029556, 0.990347, 0.135422,
		36.819862, 38.175102, 40.336445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344688, 37.736061, 40.707607>,  <36.840549, 37.481861, 40.241650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344688, 37.736061, 40.707607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046501, 38.002651, 40.711578>,  <36.867588, 38.162605, 40.713963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046501, 38.002651, 40.711578>,  <37.344688, 37.736061, 40.707607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046501, 38.002651, 40.711578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145161, -0.176870, 0.973471,
		0.650546, 0.724247, 0.228596,
		-0.745465, 0.666471, 0.009930,
		36.822861, 38.202591, 40.714558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366135, 38.115284, 41.404182>,  <37.344688, 37.736061, 40.707607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366135, 38.115284, 41.404182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.002785, 38.175762, 41.248234>,  <36.784775, 38.212048, 41.154663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.002785, 38.175762, 41.248234>,  <37.366135, 38.115284, 41.404182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002785, 38.175762, 41.248234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410393, -0.143456, 0.900554,
		0.080231, 0.978039, 0.192361,
		-0.908372, 0.151195, -0.389871,
		36.730274, 38.221123, 41.131271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103394, 38.550514, 41.856689>,  <37.366135, 38.115284, 41.404182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103394, 38.550514, 41.856689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776978, 38.412277, 41.671371>,  <36.581127, 38.329334, 41.560181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776978, 38.412277, 41.671371>,  <37.103394, 38.550514, 41.856689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776978, 38.412277, 41.671371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497844, 0.013038, 0.867169,
		-0.293650, 0.938293, -0.182693,
		-0.816040, -0.345596, -0.463295,
		36.532166, 38.308598, 41.532383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590721, 38.896072, 42.213394>,  <37.103394, 38.550514, 41.856689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590721, 38.896072, 42.213394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420208, 38.582237, 42.033302>,  <36.317902, 38.393936, 41.925247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420208, 38.582237, 42.033302>,  <36.590721, 38.896072, 42.213394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420208, 38.582237, 42.033302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651663, -0.078847, 0.754399,
		-0.627393, 0.614982, -0.477677,
		-0.426279, -0.784589, -0.450229,
		36.292324, 38.346859, 41.898235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877834, 38.962421, 42.355854>,  <36.590721, 38.896072, 42.213394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877834, 38.962421, 42.355854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931248, 38.582054, 42.244194>,  <35.963295, 38.353832, 42.177200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931248, 38.582054, 42.244194>,  <35.877834, 38.962421, 42.355854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931248, 38.582054, 42.244194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654749, -0.296091, 0.695438,
		-0.743958, 0.089907, -0.662151,
		0.133532, -0.950919, -0.279145,
		35.971306, 38.296780, 42.160450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.102894, 38.692486, 42.253075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329666, 38.363125, 42.262871>,  <35.465729, 38.165508, 42.268749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329666, 38.363125, 42.262871>,  <35.102894, 38.692486, 42.253075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329666, 38.363125, 42.262871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559122, -0.362788, 0.745498,
		-0.604961, -0.436337, -0.666057,
		0.566926, -0.823404, 0.024493,
		35.499744, 38.116104, 42.270218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694489, 38.160656, 42.152458>,  <35.102894, 38.692486, 42.253075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694489, 38.160656, 42.152458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008457, 38.009331, 42.348736>,  <35.196838, 37.918533, 42.466503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008457, 38.009331, 42.348736>,  <34.694489, 38.160656, 42.152458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008457, 38.009331, 42.348736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619177, -0.508112, 0.598700,
		0.022828, -0.773756, -0.633072,
		0.784920, -0.378317, 0.490691,
		35.243935, 37.895836, 42.495941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519875, 37.461468, 42.312283>,  <34.694489, 38.160656, 42.152458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519875, 37.461468, 42.312283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801029, 37.588829, 42.566704>,  <34.969723, 37.665245, 42.719357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801029, 37.588829, 42.566704>,  <34.519875, 37.461468, 42.312283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801029, 37.588829, 42.566704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514361, -0.390121, 0.763700,
		0.491301, -0.863960, -0.110439,
		0.702891, 0.318402, 0.636054,
		35.011898, 37.684349, 42.757519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658390, 36.814762, 42.673679>,  <34.519875, 37.461468, 42.312283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658390, 36.814762, 42.673679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783161, 37.132153, 42.882717>,  <34.858025, 37.322586, 43.008141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783161, 37.132153, 42.882717>,  <34.658390, 36.814762, 42.673679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783161, 37.132153, 42.882717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428854, -0.373230, 0.822668,
		0.847812, -0.480729, 0.223863,
		0.311928, 0.793473, 0.522591,
		34.876740, 37.370193, 43.039494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967300, 36.457371, 43.274265>,  <34.658390, 36.814762, 42.673679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967300, 36.457371, 43.274265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945793, 36.837460, 43.397026>,  <34.932888, 37.065514, 43.470684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945793, 36.837460, 43.397026>,  <34.967300, 36.457371, 43.274265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945793, 36.837460, 43.397026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477834, -0.294359, 0.827664,
		0.876803, -0.102148, 0.469875,
		-0.053768, 0.950220, 0.306905,
		34.929665, 37.122524, 43.489098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418396, 36.577110, 43.778748>,  <34.967300, 36.457371, 43.274265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418396, 36.577110, 43.778748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105072, 36.824425, 43.804489>,  <34.917076, 36.972813, 43.819935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105072, 36.824425, 43.804489>,  <35.418396, 36.577110, 43.778748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105072, 36.824425, 43.804489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255470, -0.414563, 0.873426,
		0.566708, 0.667725, 0.482686,
		-0.783312, 0.618289, 0.064352,
		34.870079, 37.009911, 43.823795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419216, 36.750618, 44.437538>,  <35.418396, 36.577110, 43.778748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419216, 36.750618, 44.437538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047905, 36.873764, 44.354084>,  <34.825119, 36.947651, 44.304012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047905, 36.873764, 44.354084>,  <35.419216, 36.750618, 44.437538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047905, 36.873764, 44.354084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310108, -0.331104, 0.891181,
		0.205281, 0.891959, 0.402826,
		-0.928274, 0.307862, -0.208634,
		34.769424, 36.966122, 44.291492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278656, 36.981731, 44.970600>,  <35.419216, 36.750618, 44.437538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278656, 36.981731, 44.970600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923302, 36.925682, 44.795723>,  <34.710091, 36.892052, 44.690796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923302, 36.925682, 44.795723>,  <35.278656, 36.981731, 44.970600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923302, 36.925682, 44.795723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402303, -0.221188, 0.888385,
		-0.221188, 0.965112, 0.140127,
		-0.888385, -0.140127, -0.437192,
		34.656788, 36.883644, 44.664566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719242, 37.416195, 45.269352>,  <35.278656, 36.981731, 44.970600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719242, 37.416195, 45.269352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545429, 37.076180, 45.150284>,  <34.441143, 36.872169, 45.078842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545429, 37.076180, 45.150284>,  <34.719242, 37.416195, 45.269352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545429, 37.076180, 45.150284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424035, -0.098503, 0.900273,
		-0.794592, 0.517423, -0.317645,
		-0.434533, -0.850042, -0.297675,
		34.415070, 36.821167, 45.060982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019314, 37.526314, 45.461853>,  <34.719242, 37.416195, 45.269352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019314, 37.526314, 45.461853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.070381, 37.130054, 45.442574>,  <34.101021, 36.892300, 45.431007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.070381, 37.130054, 45.442574>,  <34.019314, 37.526314, 45.461853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070381, 37.130054, 45.442574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386927, -0.094492, 0.917256,
		-0.913229, -0.098458, -0.395371,
		0.127670, -0.990645, -0.048197,
		34.108681, 36.832863, 45.428116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587006, 37.265205, 45.879890>,  <34.019314, 37.526314, 45.461853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587006, 37.265205, 45.879890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801861, 36.929768, 45.843575>,  <33.930775, 36.728504, 45.821785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801861, 36.929768, 45.843575>,  <33.587006, 37.265205, 45.879890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801861, 36.929768, 45.843575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291625, -0.285632, 0.912891,
		-0.791477, -0.463871, -0.397979,
		0.537139, -0.838593, -0.090795,
		33.963001, 36.678188, 45.816338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162411, 36.721882, 46.197216>,  <33.587006, 37.265205, 45.879890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162411, 36.721882, 46.197216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541767, 36.596107, 46.213654>,  <33.769379, 36.520641, 46.223515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541767, 36.596107, 46.213654>,  <33.162411, 36.721882, 46.197216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541767, 36.596107, 46.213654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092991, -0.151887, 0.984014,
		-0.303169, -0.937048, -0.173288,
		0.948389, -0.314436, 0.041090,
		33.826283, 36.501778, 46.225979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283222, 36.136192, 46.678406>,  <33.162411, 36.721882, 46.197216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283222, 36.136192, 46.678406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641811, 36.311653, 46.653370>,  <33.856964, 36.416927, 46.638348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641811, 36.311653, 46.653370>,  <33.283222, 36.136192, 46.678406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641811, 36.311653, 46.653370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100391, -0.063495, 0.992920,
		0.431571, -0.896412, -0.100958,
		0.896475, 0.438650, -0.062589,
		33.910755, 36.443249, 46.634594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696243, 35.618103, 46.874729>,  <33.283222, 36.136192, 46.678406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696243, 35.618103, 46.874729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.896751, 35.962006, 46.913807>,  <34.017056, 36.168346, 46.937256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.896751, 35.962006, 46.913807>,  <33.696243, 35.618103, 46.874729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896751, 35.962006, 46.913807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279628, -0.267804, 0.922003,
		0.818864, -0.434851, -0.374654,
		0.501268, 0.859759, 0.097698,
		34.047131, 36.219933, 46.943115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302334, 35.480186, 47.222157>,  <33.696243, 35.618103, 46.874729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302334, 35.480186, 47.222157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.194633, 35.859344, 47.290268>,  <34.130013, 36.086842, 47.331135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.194633, 35.859344, 47.290268>,  <34.302334, 35.480186, 47.222157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194633, 35.859344, 47.290268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160319, -0.130229, 0.978436,
		0.949633, 0.290742, -0.116902,
		-0.269248, 0.947897, 0.170282,
		34.113857, 36.143715, 47.341354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655209, 35.535942, 47.731110>,  <34.302334, 35.480186, 47.222157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655209, 35.535942, 47.731110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.446381, 35.876869, 47.743809>,  <34.321083, 36.081425, 47.751431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.446381, 35.876869, 47.743809>,  <34.655209, 35.535942, 47.731110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446381, 35.876869, 47.743809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051519, -0.005646, 0.998656,
		0.851347, 0.523002, -0.040963,
		-0.522067, 0.852313, 0.031751,
		34.289761, 36.132565, 47.753334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000446, 36.044041, 48.185715>,  <34.655209, 35.535942, 47.731110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000446, 36.044041, 48.185715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.615509, 36.152775, 48.186859>,  <34.384548, 36.218014, 48.187546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.615509, 36.152775, 48.186859>,  <35.000446, 36.044041, 48.185715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615509, 36.152775, 48.186859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029127, 0.092621, 0.995275,
		0.270287, 0.957876, -0.097050,
		-0.962339, 0.271836, 0.002865,
		34.326809, 36.234325, 48.187717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920460, 36.574619, 48.761875>,  <35.000446, 36.044041, 48.185715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920460, 36.574619, 48.761875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540035, 36.474079, 48.689987>,  <34.311779, 36.413754, 48.646854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540035, 36.474079, 48.689987>,  <34.920460, 36.574619, 48.761875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540035, 36.474079, 48.689987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211084, 0.103743, 0.971947,
		-0.225659, 0.962319, -0.151723,
		-0.951063, -0.251355, -0.179720,
		34.254715, 36.398674, 48.636070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509705, 37.016327, 49.129948>,  <34.920460, 36.574619, 48.761875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509705, 37.016327, 49.129948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.328064, 36.664768, 49.071522>,  <34.219078, 36.453835, 49.036469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.328064, 36.664768, 49.071522>,  <34.509705, 37.016327, 49.129948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328064, 36.664768, 49.071522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275946, -0.017137, 0.961020,
		-0.847139, 0.476707, -0.234745,
		-0.454103, -0.878895, -0.146063,
		34.191833, 36.401100, 49.027702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144138, 37.037415, 49.656834>,  <34.509705, 37.016327, 49.129948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144138, 37.037415, 49.656834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995697, 36.689480, 49.526802>,  <33.906631, 36.480721, 49.448784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995697, 36.689480, 49.526802>,  <34.144138, 37.037415, 49.656834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995697, 36.689480, 49.526802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228367, -0.253833, 0.939903,
		-0.900075, 0.423033, -0.104445,
		-0.371099, -0.869834, -0.325075,
		33.884369, 36.428528, 49.429279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479294, 36.979736, 49.869175>,  <34.144138, 37.037415, 49.656834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479294, 36.979736, 49.869175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.617451, 36.609524, 49.807091>,  <33.700344, 36.387394, 49.769840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.617451, 36.609524, 49.807091>,  <33.479294, 36.979736, 49.869175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617451, 36.609524, 49.807091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519913, -0.326399, 0.789401,
		-0.781277, -0.191959, -0.593934,
		0.345392, -0.925535, -0.155206,
		33.721069, 36.331863, 49.760529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860336, 36.533009, 49.992573>,  <33.479294, 36.979736, 49.869175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860336, 36.533009, 49.992573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.189232, 36.309364, 50.035122>,  <33.386570, 36.175179, 50.060650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.189232, 36.309364, 50.035122>,  <32.860336, 36.533009, 49.992573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189232, 36.309364, 50.035122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343772, -0.338950, 0.875747,
		-0.453582, -0.756645, -0.470905,
		0.822243, -0.559108, 0.106372,
		33.435905, 36.141632, 50.067032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637520, 35.883930, 50.146240>,  <32.860336, 36.533009, 49.992573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637520, 35.883930, 50.146240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.009892, 35.863419, 50.290874>,  <33.233315, 35.851112, 50.377655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.009892, 35.863419, 50.290874>,  <32.637520, 35.883930, 50.146240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009892, 35.863419, 50.290874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283175, -0.726597, 0.625995,
		0.230625, -0.685148, -0.690930,
		0.930927, -0.051284, 0.361588,
		33.289169, 35.848034, 50.399349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928547, 35.219353, 50.281933>,  <32.637520, 35.883930, 50.146240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928547, 35.219353, 50.281933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.076992, 35.463902, 50.561504>,  <33.166058, 35.610630, 50.729248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.076992, 35.463902, 50.561504>,  <32.928547, 35.219353, 50.281933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076992, 35.463902, 50.561504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269821, -0.649204, 0.711147,
		0.888523, -0.452500, -0.075966,
		0.371111, 0.611373, 0.698927,
		33.188324, 35.647312, 50.771183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283268, 34.849995, 50.301746>,  <32.928547, 35.219353, 50.281933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283268, 34.849995, 50.301746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.885675, 34.858498, 50.258770>,  <31.647120, 34.863598, 50.232983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.885675, 34.858498, 50.258770>,  <32.283268, 34.849995, 50.301746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885675, 34.858498, 50.258770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106102, -0.056392, -0.992755,
		-0.027149, -0.998182, 0.053799,
		-0.993985, 0.021244, -0.107440,
		31.587481, 34.864872, 50.226540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037601, 34.333477, 49.851078>,  <32.283268, 34.849995, 50.301746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037601, 34.333477, 49.851078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731346, 34.587948, 49.812962>,  <31.547594, 34.740631, 49.790092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731346, 34.587948, 49.812962>,  <32.037601, 34.333477, 49.851078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731346, 34.587948, 49.812962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114229, -0.011319, -0.993390,
		-0.633051, -0.771460, -0.064004,
		-0.765636, 0.636177, -0.095288,
		31.501656, 34.778801, 49.784374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726513, 34.159279, 49.269215>,  <32.037601, 34.333477, 49.851078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726513, 34.159279, 49.269215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.553757, 34.518280, 49.304886>,  <31.450102, 34.733681, 49.326286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.553757, 34.518280, 49.304886>,  <31.726513, 34.159279, 49.269215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553757, 34.518280, 49.304886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068434, 0.065977, -0.995472,
		-0.899326, -0.436038, 0.032925,
		-0.431891, 0.897507, 0.089175,
		31.424189, 34.787533, 49.331638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163073, 34.190666, 48.790253>,  <31.726513, 34.159279, 49.269215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163073, 34.190666, 48.790253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.249357, 34.575134, 48.859089>,  <31.301128, 34.805817, 48.900391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.249357, 34.575134, 48.859089>,  <31.163073, 34.190666, 48.790253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249357, 34.575134, 48.859089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055212, 0.187960, -0.980624,
		-0.974895, 0.202029, 0.093613,
		0.215710, 0.961174, 0.172087,
		31.314070, 34.863487, 48.910713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549919, 34.660931, 48.496899>,  <31.163073, 34.190666, 48.790253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549919, 34.660931, 48.496899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880024, 34.885612, 48.520355>,  <31.078087, 35.020420, 48.534428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880024, 34.885612, 48.520355>,  <30.549919, 34.660931, 48.496899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880024, 34.885612, 48.520355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105970, 0.256007, -0.960849,
		-0.554722, 0.786736, 0.270796,
		0.825260, 0.561700, 0.058643,
		31.127602, 35.054123, 48.537949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329975, 35.281590, 48.168697>,  <30.549919, 34.660931, 48.496899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329975, 35.281590, 48.168697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.729071, 35.308029, 48.163822>,  <30.968529, 35.323891, 48.160896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.729071, 35.308029, 48.163822>,  <30.329975, 35.281590, 48.168697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729071, 35.308029, 48.163822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041879, 0.469543, -0.881916,
		-0.052567, 0.880432, 0.471250,
		0.997739, 0.066095, -0.012189,
		31.028393, 35.327858, 48.160164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478199, 35.945606, 47.815731>,  <30.329975, 35.281590, 48.168697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478199, 35.945606, 47.815731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.821177, 35.742462, 47.782581>,  <31.026962, 35.620575, 47.762691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.821177, 35.742462, 47.782581>,  <30.478199, 35.945606, 47.815731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821177, 35.742462, 47.782581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121137, 0.355746, -0.926699,
		0.500116, 0.784553, 0.366553,
		0.857444, -0.507860, -0.082876,
		31.078409, 35.590103, 47.757717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967718, 36.508472, 47.625072>,  <30.478199, 35.945606, 47.815731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967718, 36.508472, 47.625072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.098789, 36.140804, 47.537663>,  <31.177433, 35.920204, 47.485218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.098789, 36.140804, 47.537663>,  <30.967718, 36.508472, 47.625072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098789, 36.140804, 47.537663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269977, 0.312748, -0.910660,
		0.905394, 0.239407, 0.350636,
		0.327679, -0.919170, -0.218526,
		31.197092, 35.865055, 47.472103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581207, 36.579876, 47.221428>,  <30.967718, 36.508472, 47.625072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581207, 36.579876, 47.221428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.512552, 36.196251, 47.131317>,  <31.471359, 35.966076, 47.077251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.512552, 36.196251, 47.131317>,  <31.581207, 36.579876, 47.221428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512552, 36.196251, 47.131317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361583, 0.151381, -0.919968,
		0.916405, -0.239356, 0.320797,
		-0.171638, -0.959058, -0.225273,
		31.461061, 35.908535, 47.063736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235970, 36.271744, 46.909630>,  <31.581207, 36.579876, 47.221428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235970, 36.271744, 46.909630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.945440, 36.025814, 46.786694>,  <31.771124, 35.878258, 46.712933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.945440, 36.025814, 46.786694>,  <32.235970, 36.271744, 46.909630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945440, 36.025814, 46.786694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297421, 0.121989, -0.946921,
		0.619679, -0.779175, 0.094258,
		-0.726319, -0.614821, -0.307337,
		31.727545, 35.841366, 46.694492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621853, 35.939606, 46.484768>,  <32.235970, 36.271744, 46.909630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621853, 35.939606, 46.484768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.243778, 35.858368, 46.382496>,  <32.016933, 35.809628, 46.321133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.243778, 35.858368, 46.382496>,  <32.621853, 35.939606, 46.484768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243778, 35.858368, 46.382496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256043, 0.024950, -0.966343,
		0.202636, -0.978842, 0.028418,
		-0.945189, -0.203092, -0.255681,
		31.960222, 35.797440, 46.305790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694206, 35.503258, 45.903748>,  <32.621853, 35.939606, 46.484768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694206, 35.503258, 45.903748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319992, 35.641243, 45.873367>,  <32.095463, 35.724033, 45.855137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319992, 35.641243, 45.873367>,  <32.694206, 35.503258, 45.903748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319992, 35.641243, 45.873367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104544, 0.065016, -0.992393,
		-0.337397, -0.936363, -0.096889,
		-0.935539, 0.344959, -0.075954,
		32.039330, 35.744732, 45.850582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529572, 35.144371, 45.408817>,  <32.694206, 35.503258, 45.903748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529572, 35.144371, 45.408817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.259121, 35.438240, 45.431122>,  <32.096851, 35.614559, 45.444504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.259121, 35.438240, 45.431122>,  <32.529572, 35.144371, 45.408817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259121, 35.438240, 45.431122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099865, 0.166370, -0.980993,
		-0.729984, -0.657709, -0.185855,
		-0.676128, 0.734670, 0.055766,
		32.056282, 35.658642, 45.447853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907301, 34.978508, 44.951942>,  <32.529572, 35.144371, 45.408817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907301, 34.978508, 44.951942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.982525, 35.365570, 45.019207>,  <32.027660, 35.597809, 45.059566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.982525, 35.365570, 45.019207>,  <31.907301, 34.978508, 44.951942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982525, 35.365570, 45.019207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074140, 0.156737, -0.984854,
		-0.979355, 0.197678, -0.042266,
		0.188059, 0.967656, 0.168157,
		32.038944, 35.655869, 45.069653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433891, 35.329819, 44.577171>,  <31.907301, 34.978508, 44.951942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433891, 35.329819, 44.577171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.708817, 35.613068, 44.641865>,  <31.873772, 35.783016, 44.680679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.708817, 35.613068, 44.641865>,  <31.433891, 35.329819, 44.577171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708817, 35.613068, 44.641865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004412, 0.226730, -0.973948,
		-0.726348, 0.668693, 0.158959,
		0.687313, 0.708127, 0.161735,
		31.915010, 35.825504, 44.690384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251497, 35.933125, 44.099552>,  <31.433891, 35.329819, 44.577171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251497, 35.933125, 44.099552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.626026, 36.022572, 44.207844>,  <31.850744, 36.076241, 44.272820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.626026, 36.022572, 44.207844>,  <31.251497, 35.933125, 44.099552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626026, 36.022572, 44.207844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189980, 0.325811, -0.926151,
		-0.295313, 0.918608, 0.262580,
		0.936321, 0.223620, 0.270733,
		31.906923, 36.089657, 44.289062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333235, 36.488441, 43.617752>,  <31.251497, 35.933125, 44.099552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333235, 36.488441, 43.617752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.699350, 36.366993, 43.723625>,  <31.919020, 36.294125, 43.787148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.699350, 36.366993, 43.723625>,  <31.333235, 36.488441, 43.617752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699350, 36.366993, 43.723625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323572, 0.162906, -0.932074,
		0.239883, 0.938762, 0.247351,
		0.915291, -0.303625, 0.264679,
		31.973938, 36.275906, 43.803028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732590, 36.914902, 43.227360>,  <31.333235, 36.488441, 43.617752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732590, 36.914902, 43.227360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.002754, 36.642647, 43.340889>,  <32.164852, 36.479294, 43.409008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.002754, 36.642647, 43.340889>,  <31.732590, 36.914902, 43.227360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002754, 36.642647, 43.340889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503650, 0.144619, -0.851717,
		0.538664, 0.718205, 0.440480,
		0.675410, -0.680637, 0.283823,
		32.205376, 36.438457, 43.426037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439186, 37.248741, 43.225666>,  <31.732590, 36.914902, 43.227360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439186, 37.248741, 43.225666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472122, 36.852383, 43.183075>,  <32.491882, 36.614567, 43.157520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472122, 36.852383, 43.183075>,  <32.439186, 37.248741, 43.225666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472122, 36.852383, 43.183075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482476, 0.133118, -0.865735,
		0.872030, 0.019914, 0.489047,
		0.082341, -0.990900, -0.106475,
		32.496826, 36.555111, 43.151131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110310, 37.079636, 43.079769>,  <32.439186, 37.248741, 43.225666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110310, 37.079636, 43.079769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916401, 36.748196, 42.967758>,  <32.800056, 36.549332, 42.900551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916401, 36.748196, 42.967758>,  <33.110310, 37.079636, 43.079769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916401, 36.748196, 42.967758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608685, -0.089695, -0.788326,
		0.628094, -0.552602, 0.547840,
		-0.484769, -0.828605, -0.280024,
		32.770969, 36.499615, 42.883751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.609200, 32.420582, 29.756111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.858425, 32.438972, 29.443785>,  <42.007961, 32.450008, 29.256388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.858425, 32.438972, 29.443785>,  <41.609200, 32.420582, 29.756111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858425, 32.438972, 29.443785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422017, 0.820740, 0.385082,
		0.658553, -0.569449, 0.491971,
		0.623065, 0.045976, -0.780818,
		42.045345, 32.452766, 29.209539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311691, 32.347157, 29.899378>,  <41.609200, 32.420582, 29.756111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311691, 32.347157, 29.899378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.232445, 32.597107, 29.597309>,  <42.184898, 32.747078, 29.416069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.232445, 32.597107, 29.597309>,  <42.311691, 32.347157, 29.899378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232445, 32.597107, 29.597309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588220, 0.692082, 0.418352,
		0.784057, -0.361324, -0.504677,
		-0.198118, 0.624874, -0.755170,
		42.173008, 32.784569, 29.370758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008717, 32.679310, 29.685816>,  <42.311691, 32.347157, 29.899378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008717, 32.679310, 29.685816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705860, 32.917507, 29.578390>,  <42.524147, 33.060425, 29.513935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705860, 32.917507, 29.578390>,  <43.008717, 32.679310, 29.685816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705860, 32.917507, 29.578390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455660, 0.776022, 0.436078,
		0.468091, 0.207800, -0.858901,
		-0.757143, 0.595490, -0.268563,
		42.478718, 33.096153, 29.497822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397335, 33.276634, 29.494106>,  <43.008717, 32.679310, 29.685816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397335, 33.276634, 29.494106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.016422, 33.390331, 29.538591>,  <42.787876, 33.458549, 29.565283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.016422, 33.390331, 29.538591>,  <43.397335, 33.276634, 29.494106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016422, 33.390331, 29.538591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305086, 0.875500, 0.374730,
		0.009148, 0.390777, -0.920440,
		-0.952281, 0.284242, 0.111212,
		42.730740, 33.475605, 29.571955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388783, 33.890350, 29.113823>,  <43.397335, 33.276634, 29.494106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388783, 33.890350, 29.113823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083885, 33.881493, 29.372587>,  <42.900948, 33.876179, 29.527845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083885, 33.881493, 29.372587>,  <43.388783, 33.890350, 29.113823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083885, 33.881493, 29.372587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327102, 0.849239, 0.414484,
		-0.558559, 0.527544, -0.640085,
		-0.762244, -0.022141, 0.646911,
		42.855213, 33.874851, 29.566660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055264, 34.528301, 29.161272>,  <43.388783, 33.890350, 29.113823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055264, 34.528301, 29.161272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.955593, 34.354015, 29.507235>,  <42.895790, 34.249443, 29.714811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.955593, 34.354015, 29.507235>,  <43.055264, 34.528301, 29.161272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955593, 34.354015, 29.507235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374210, 0.780394, 0.500951,
		-0.893240, 0.448481, -0.031404,
		-0.249175, -0.435718, 0.864905,
		42.880840, 34.223301, 29.766706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699493, 35.085632, 29.601351>,  <43.055264, 34.528301, 29.161272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699493, 35.085632, 29.601351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.806072, 34.797337, 29.857332>,  <42.870022, 34.624359, 30.010921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.806072, 34.797337, 29.857332>,  <42.699493, 35.085632, 29.601351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806072, 34.797337, 29.857332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438796, 0.681868, 0.585247,
		-0.858174, 0.124869, 0.497942,
		0.266452, -0.720738, 0.639953,
		42.886009, 34.581116, 30.049318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445442, 35.324238, 30.229887>,  <42.699493, 35.085632, 29.601351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445442, 35.324238, 30.229887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.725796, 35.050819, 30.311399>,  <42.894009, 34.886768, 30.360308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.725796, 35.050819, 30.311399>,  <42.445442, 35.324238, 30.229887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725796, 35.050819, 30.311399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382741, 0.601501, 0.701217,
		-0.601887, -0.413478, 0.683204,
		0.700886, -0.683544, 0.203781,
		42.936062, 34.845757, 30.372534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412735, 35.114239, 31.021120>,  <42.445442, 35.324238, 30.229887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412735, 35.114239, 31.021120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787247, 35.039238, 30.902306>,  <43.011951, 34.994236, 30.831017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787247, 35.039238, 30.902306>,  <42.412735, 35.114239, 31.021120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787247, 35.039238, 30.902306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350254, 0.562459, 0.748974,
		0.026637, -0.805285, 0.592290,
		0.936276, -0.187501, -0.297037,
		43.068130, 34.982986, 30.813194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721672, 34.962143, 31.656704>,  <42.412735, 35.114239, 31.021120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721672, 34.962143, 31.656704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.022243, 35.046093, 31.406487>,  <43.202587, 35.096462, 31.256355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.022243, 35.046093, 31.406487>,  <42.721672, 34.962143, 31.656704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022243, 35.046093, 31.406487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497049, 0.443446, 0.745854,
		0.433915, -0.871388, 0.228914,
		0.751439, 0.209856, -0.625540,
		43.247673, 35.109055, 31.218822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293705, 34.910183, 32.110996>,  <42.721672, 34.962143, 31.656704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293705, 34.910183, 32.110996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.457245, 35.092854, 31.794950>,  <43.555370, 35.202457, 31.605322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.457245, 35.092854, 31.794950>,  <43.293705, 34.910183, 32.110996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457245, 35.092854, 31.794950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576900, 0.541515, 0.611513,
		0.707125, -0.705836, -0.042058,
		0.408853, 0.456680, -0.790116,
		43.579899, 35.229858, 31.557915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964516, 34.917061, 32.237259>,  <43.293705, 34.910183, 32.110996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964516, 34.917061, 32.237259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883194, 35.211636, 31.979162>,  <43.834400, 35.388378, 31.824305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883194, 35.211636, 31.979162>,  <43.964516, 34.917061, 32.237259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883194, 35.211636, 31.979162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464847, 0.652596, 0.598362,
		0.861734, -0.178288, -0.475004,
		-0.203305, 0.736432, -0.645240,
		43.822201, 35.432564, 31.785591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542145, 35.246586, 32.239456>,  <43.964516, 34.917061, 32.237259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542145, 35.246586, 32.239456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.294369, 35.511139, 32.070286>,  <44.145702, 35.669872, 31.968784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.294369, 35.511139, 32.070286>,  <44.542145, 35.246586, 32.239456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294369, 35.511139, 32.070286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466626, 0.743422, 0.479149,
		0.631312, 0.099458, -0.769125,
		-0.619440, 0.661386, -0.422922,
		44.108536, 35.709557, 31.943409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987717, 35.819023, 31.956795>,  <44.542145, 35.246586, 32.239456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987717, 35.819023, 31.956795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.617138, 35.932888, 32.055309>,  <44.394791, 36.001205, 32.114418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.617138, 35.932888, 32.055309>,  <44.987717, 35.819023, 31.956795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.617138, 35.932888, 32.055309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376418, 0.699766, 0.607155,
		0.000492, 0.655205, -0.755451,
		-0.926450, 0.284663, 0.246287,
		44.339203, 36.018288, 32.129196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.101570, 36.498741, 32.288792>,  <44.987717, 35.819023, 31.956795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.101570, 36.498741, 32.288792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.713356, 36.444271, 32.368313>,  <44.480427, 36.411591, 32.416027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.713356, 36.444271, 32.368313>,  <45.101570, 36.498741, 32.288792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713356, 36.444271, 32.368313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077599, 0.604449, 0.792856,
		-0.228135, 0.784919, -0.576070,
		-0.970532, -0.136175, 0.198805,
		44.422195, 36.403419, 32.427956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774364, 37.213375, 32.348412>,  <45.101570, 36.498741, 32.288792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774364, 37.213375, 32.348412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.558128, 36.945534, 32.552135>,  <44.428387, 36.784828, 32.674370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.558128, 36.945534, 32.552135>,  <44.774364, 37.213375, 32.348412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558128, 36.945534, 32.552135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017372, 0.614144, 0.789003,
		-0.841107, 0.417679, -0.343632,
		-0.540589, -0.669605, 0.509305,
		44.395950, 36.744652, 32.704926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242542, 37.572834, 32.622398>,  <44.774364, 37.213375, 32.348412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242542, 37.572834, 32.622398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275661, 37.242977, 32.846222>,  <44.295532, 37.045063, 32.980515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275661, 37.242977, 32.846222>,  <44.242542, 37.572834, 32.622398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275661, 37.242977, 32.846222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126417, 0.565644, 0.814902,
		-0.988515, 0.003263, 0.151085,
		0.082802, -0.824643, 0.559560,
		44.300503, 36.995583, 33.014091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840466, 37.698658, 33.177933>,  <44.242542, 37.572834, 32.622398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840466, 37.698658, 33.177933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078236, 37.410126, 33.320107>,  <44.220898, 37.237007, 33.405411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078236, 37.410126, 33.320107>,  <43.840466, 37.698658, 33.177933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078236, 37.410126, 33.320107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037582, 0.466432, 0.883759,
		-0.803270, -0.511974, 0.304369,
		0.594429, -0.721335, 0.355430,
		44.256565, 37.193726, 33.426735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526543, 37.504486, 33.773537>,  <43.840466, 37.698658, 33.177933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526543, 37.504486, 33.773537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.906258, 37.381420, 33.799446>,  <44.134087, 37.307583, 33.814991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.906258, 37.381420, 33.799446>,  <43.526543, 37.504486, 33.773537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906258, 37.381420, 33.799446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072627, 0.415031, 0.906904,
		-0.305905, -0.856208, 0.416329,
		0.949288, -0.307663, 0.064776,
		44.191044, 37.289120, 33.818878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644211, 37.430668, 34.469513>,  <43.526543, 37.504486, 33.773537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644211, 37.430668, 34.469513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.027767, 37.393372, 34.362297>,  <44.257900, 37.370995, 34.297970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.027767, 37.393372, 34.362297>,  <43.644211, 37.430668, 34.469513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027767, 37.393372, 34.362297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276743, 0.098042, 0.955930,
		-0.062851, -0.990805, 0.119814,
		0.958886, -0.093239, -0.268036,
		44.315434, 37.365398, 34.281887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003387, 37.137924, 35.063789>,  <43.644211, 37.430668, 34.469513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003387, 37.137924, 35.063789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.266804, 37.341045, 34.841633>,  <44.424854, 37.462917, 34.708340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.266804, 37.341045, 34.841633>,  <44.003387, 37.137924, 35.063789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266804, 37.341045, 34.841633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491042, 0.269300, 0.828466,
		0.570263, -0.818300, -0.072007,
		0.658542, 0.507802, -0.555391,
		44.464367, 37.493385, 34.675014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662205, 36.899319, 35.225975>,  <44.003387, 37.137924, 35.063789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662205, 36.899319, 35.225975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.693089, 37.272545, 35.085449>,  <44.711617, 37.496483, 35.001133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.693089, 37.272545, 35.085449>,  <44.662205, 36.899319, 35.225975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693089, 37.272545, 35.085449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513233, 0.264902, 0.816345,
		0.854770, -0.243335, -0.458428,
		0.077207, 0.933067, -0.351318,
		44.716251, 37.552464, 34.980053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944923, 36.866982, 35.892300>,  <44.662205, 36.899319, 35.225975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944923, 36.866982, 35.892300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193756, 36.594734, 36.047100>,  <45.343056, 36.431385, 36.139980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193756, 36.594734, 36.047100>,  <44.944923, 36.866982, 35.892300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193756, 36.594734, 36.047100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191833, -0.611721, -0.767462,
		0.759088, 0.403184, -0.511105,
		0.622082, -0.680618, 0.387006,
		45.380383, 36.390549, 36.163200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340534, 36.581448, 35.300697>,  <44.944923, 36.866982, 35.892300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340534, 36.581448, 35.300697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.323914, 36.293304, 35.577641>,  <45.313942, 36.120419, 35.743805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.323914, 36.293304, 35.577641>,  <45.340534, 36.581448, 35.300697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323914, 36.293304, 35.577641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084737, -0.687916, -0.720827,
		0.995537, -0.088618, -0.032458,
		-0.041549, -0.720360, 0.692355,
		45.311447, 36.077198, 35.785347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888138, 36.161121, 35.204018>,  <45.340534, 36.581448, 35.300697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888138, 36.161121, 35.204018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.625061, 35.933018, 35.400890>,  <45.467213, 35.796154, 35.519012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.625061, 35.933018, 35.400890>,  <45.888138, 36.161121, 35.204018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625061, 35.933018, 35.400890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116073, -0.722299, -0.681771,
		0.744289, -0.391268, 0.541243,
		-0.657694, -0.570258, 0.492183,
		45.427753, 35.761940, 35.548546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919701, 35.490822, 34.956070>,  <45.888138, 36.161121, 35.204018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919701, 35.490822, 34.956070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.568184, 35.429119, 35.136703>,  <45.357273, 35.392097, 35.245083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.568184, 35.429119, 35.136703>,  <45.919701, 35.490822, 34.956070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568184, 35.429119, 35.136703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275491, -0.608698, -0.744037,
		0.389649, -0.778262, 0.492424,
		-0.878794, -0.154255, 0.451583,
		45.304546, 35.382843, 35.272179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869343, 34.811573, 34.918087>,  <45.919701, 35.490822, 34.956070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.869343, 34.811573, 34.918087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.495804, 34.920853, 35.010426>,  <45.271679, 34.986420, 35.065830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.495804, 34.920853, 35.010426>,  <45.869343, 34.811573, 34.918087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495804, 34.920853, 35.010426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357386, -0.686834, -0.632878,
		-0.014351, -0.673512, 0.739037,
		-0.933846, 0.273204, 0.230847,
		45.215649, 35.002815, 35.079681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547134, 34.161095, 34.940838>,  <45.869343, 34.811573, 34.918087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547134, 34.161095, 34.940838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.250286, 34.426697, 34.904266>,  <45.072178, 34.586060, 34.882324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.250286, 34.426697, 34.904266>,  <45.547134, 34.161095, 34.940838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250286, 34.426697, 34.904266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547180, -0.678953, -0.489507,
		-0.387109, -0.313245, 0.867193,
		-0.742119, 0.664003, -0.091427,
		45.027649, 34.625896, 34.876839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059086, 33.828259, 35.301926>,  <45.547134, 34.161095, 34.940838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059086, 33.828259, 35.301926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.863213, 34.092335, 35.074116>,  <44.745689, 34.250782, 34.937431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.863213, 34.092335, 35.074116>,  <45.059086, 33.828259, 35.301926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863213, 34.092335, 35.074116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536176, -0.743100, -0.400397,
		-0.687553, 0.109298, 0.717862,
		-0.489680, 0.660194, -0.569524,
		44.716309, 34.290394, 34.903259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302879, 33.715958, 35.396980>,  <45.059086, 33.828259, 35.301926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302879, 33.715958, 35.396980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371193, 33.902340, 35.049713>,  <44.412182, 34.014172, 34.841354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371193, 33.902340, 35.049713>,  <44.302879, 33.715958, 35.396980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371193, 33.902340, 35.049713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518265, -0.706896, -0.481352,
		-0.837994, 0.532148, 0.120764,
		0.170783, 0.465958, -0.868168,
		44.422428, 34.042126, 34.789261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621136, 33.704567, 35.119823>,  <44.302879, 33.715958, 35.396980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621136, 33.704567, 35.119823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883968, 33.767757, 34.824993>,  <44.041668, 33.805672, 34.648094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.883968, 33.767757, 34.824993>,  <43.621136, 33.704567, 35.119823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883968, 33.767757, 34.824993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539377, -0.584540, -0.606123,
		-0.526603, 0.795837, -0.298885,
		0.657086, 0.157975, -0.737077,
		44.081093, 33.815151, 34.603870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168415, 33.824490, 34.461185>,  <43.621136, 33.704567, 35.119823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168415, 33.824490, 34.461185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.532429, 33.732128, 34.323471>,  <43.750835, 33.676712, 34.240845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.532429, 33.732128, 34.323471>,  <43.168415, 33.824490, 34.461185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532429, 33.732128, 34.323471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413878, -0.553134, -0.723013,
		-0.023488, 0.800454, -0.598934,
		0.910029, -0.230903, -0.344282,
		43.805439, 33.662857, 34.220188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146053, 33.970352, 33.774616>,  <43.168415, 33.824490, 34.461185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146053, 33.970352, 33.774616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.422680, 33.690655, 33.847057>,  <43.588654, 33.522835, 33.890522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.422680, 33.690655, 33.847057>,  <43.146053, 33.970352, 33.774616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422680, 33.690655, 33.847057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371651, -0.559447, -0.740874,
		0.619369, 0.445055, -0.646768,
		0.691562, -0.699246, 0.181099,
		43.630150, 33.480881, 33.901386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416824, 33.746841, 33.106617>,  <43.146053, 33.970352, 33.774616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416824, 33.746841, 33.106617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.552494, 33.443897, 33.329819>,  <43.633896, 33.262131, 33.463741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.552494, 33.443897, 33.329819>,  <43.416824, 33.746841, 33.106617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552494, 33.443897, 33.329819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254200, -0.644885, -0.720768,
		0.905727, 0.102623, -0.411250,
		0.339176, -0.757359, 0.558003,
		43.654247, 33.216690, 33.497219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908142, 33.371452, 32.677357>,  <43.416824, 33.746841, 33.106617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908142, 33.371452, 32.677357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.760021, 33.135849, 32.964676>,  <43.671150, 32.994488, 33.137066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.760021, 33.135849, 32.964676>,  <43.908142, 33.371452, 32.677357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760021, 33.135849, 32.964676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166786, -0.718542, -0.675189,
		0.913815, -0.369826, 0.167840,
		-0.370302, -0.589005, 0.718296,
		43.648930, 32.959148, 33.180164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159645, 32.754345, 32.542442>,  <43.908142, 33.371452, 32.677357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159645, 32.754345, 32.542442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865360, 32.648911, 32.792004>,  <43.688789, 32.585651, 32.941738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865360, 32.648911, 32.792004>,  <44.159645, 32.754345, 32.542442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865360, 32.648911, 32.792004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262047, -0.738648, -0.621072,
		0.624546, -0.620422, 0.474362,
		-0.735713, -0.263583, 0.623900,
		43.644646, 32.569836, 32.979172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137466, 31.950674, 32.492260>,  <44.159645, 32.754345, 32.542442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137466, 31.950674, 32.492260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.797131, 32.033966, 32.685219>,  <43.592930, 32.083942, 32.800995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.797131, 32.033966, 32.685219>,  <44.137466, 31.950674, 32.492260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797131, 32.033966, 32.685219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494091, -0.629396, -0.599779,
		0.178728, -0.748666, 0.638400,
		-0.850841, 0.208231, 0.482400,
		43.541878, 32.096436, 32.829941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750092, 31.351748, 32.512341>,  <44.137466, 31.950674, 32.492260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750092, 31.351748, 32.512341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.471256, 31.631458, 32.575684>,  <43.303955, 31.799284, 32.613689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.471256, 31.631458, 32.575684>,  <43.750092, 31.351748, 32.512341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471256, 31.631458, 32.575684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661189, -0.541552, -0.519182,
		-0.277294, -0.466620, 0.839865,
		-0.697092, 0.699276, 0.158355,
		43.262127, 31.841242, 32.623192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188492, 30.944407, 32.707897>,  <43.750092, 31.351748, 32.512341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188492, 30.944407, 32.707897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.062920, 31.300127, 32.574875>,  <42.987576, 31.513559, 32.495060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.062920, 31.300127, 32.574875>,  <43.188492, 30.944407, 32.707897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062920, 31.300127, 32.574875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709764, -0.452457, -0.539924,
		-0.630622, 0.066539, 0.773232,
		-0.313929, 0.889300, -0.332556,
		42.968742, 31.566917, 32.475109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403816, 30.997787, 32.719975>,  <43.188492, 30.944407, 32.707897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403816, 30.997787, 32.719975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517220, 31.271605, 32.451340>,  <42.585262, 31.435894, 32.290161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517220, 31.271605, 32.451340>,  <42.403816, 30.997787, 32.719975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517220, 31.271605, 32.451340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666357, -0.362999, -0.651306,
		-0.689631, 0.632166, 0.353235,
		0.283509, 0.684542, -0.671584,
		42.602272, 31.476967, 32.249866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763153, 31.116980, 32.315731>,  <42.403816, 30.997787, 32.719975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763153, 31.116980, 32.315731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.052250, 31.274866, 32.088806>,  <42.225708, 31.369598, 31.952652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.052250, 31.274866, 32.088806>,  <41.763153, 31.116980, 32.315731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052250, 31.274866, 32.088806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492352, -0.281993, -0.823450,
		-0.485007, 0.874459, -0.009469,
		0.722743, 0.394717, -0.567310,
		42.269073, 31.393282, 31.918613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495136, 31.618118, 31.898138>,  <41.763153, 31.116980, 32.315731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495136, 31.618118, 31.898138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.832207, 31.479609, 31.733221>,  <42.034451, 31.396503, 31.634270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.832207, 31.479609, 31.733221>,  <41.495136, 31.618118, 31.898138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832207, 31.479609, 31.733221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512312, -0.280139, -0.811824,
		0.165612, 0.895331, -0.413467,
		0.842680, -0.346272, -0.412294,
		42.085011, 31.375727, 31.609533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.295403, 39.383728, 40.274899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100494, 39.057922, 40.148949>,  <36.983551, 38.862438, 40.073380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100494, 39.057922, 40.148949>,  <37.295403, 39.383728, 40.274899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100494, 39.057922, 40.148949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527658, 0.012681, -0.849362,
		0.695807, -0.580010, 0.423604,
		-0.487267, -0.814510, -0.314871,
		36.954315, 38.813568, 40.054489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785049, 38.864563, 40.143867>,  <37.295403, 39.383728, 40.274899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785049, 38.864563, 40.143867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476978, 38.711456, 39.939781>,  <37.292137, 38.619591, 39.817329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476978, 38.711456, 39.939781>,  <37.785049, 38.864563, 40.143867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476978, 38.711456, 39.939781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627262, -0.309509, -0.714666,
		0.115634, -0.870456, 0.478471,
		-0.770176, -0.382767, -0.510214,
		37.245926, 38.596626, 39.786716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195843, 38.410206, 39.779701>,  <37.785049, 38.864563, 40.143867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195843, 38.410206, 39.779701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822334, 38.425621, 39.637386>,  <37.598228, 38.434872, 39.551998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822334, 38.425621, 39.637386>,  <38.195843, 38.410206, 39.779701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822334, 38.425621, 39.637386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336268, -0.245709, -0.909148,
		-0.122460, -0.968577, 0.216476,
		-0.933770, 0.038540, -0.355791,
		37.542202, 38.437183, 39.530647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052563, 37.749519, 39.378807>,  <38.195843, 38.410206, 39.779701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052563, 37.749519, 39.378807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815971, 38.050110, 39.261887>,  <37.674019, 38.230465, 39.191734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815971, 38.050110, 39.261887>,  <38.052563, 37.749519, 39.378807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815971, 38.050110, 39.261887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231755, -0.188772, -0.954282,
		-0.772299, -0.632176, -0.062505,
		-0.591476, 0.751477, -0.292298,
		37.638527, 38.275555, 39.174198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716969, 37.479435, 38.755722>,  <38.052563, 37.749519, 39.378807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716969, 37.479435, 38.755722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675323, 37.875473, 38.718048>,  <37.650337, 38.113094, 38.695446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675323, 37.875473, 38.718048>,  <37.716969, 37.479435, 38.755722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675323, 37.875473, 38.718048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206946, -0.071058, -0.975769,
		-0.972797, -0.121082, -0.197498,
		-0.104114, 0.990096, -0.094183,
		37.644089, 38.172501, 38.689793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356197, 37.531464, 38.237679>,  <37.716969, 37.479435, 38.755722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356197, 37.531464, 38.237679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522266, 37.895359, 38.236328>,  <37.621906, 38.113697, 38.235519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522266, 37.895359, 38.236328>,  <37.356197, 37.531464, 38.237679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522266, 37.895359, 38.236328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096885, -0.047905, -0.994142,
		-0.904569, 0.412412, -0.108029,
		0.415172, 0.909737, -0.003377,
		37.646816, 38.168282, 38.235313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098282, 37.799660, 37.648682>,  <37.356197, 37.531464, 38.237679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098282, 37.799660, 37.648682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406322, 38.034267, 37.749035>,  <37.591145, 38.175034, 37.809246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406322, 38.034267, 37.749035>,  <37.098282, 37.799660, 37.648682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406322, 38.034267, 37.749035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261906, 0.067907, -0.962701,
		-0.581681, 0.807082, -0.101318,
		0.770099, 0.586521, 0.250880,
		37.637352, 38.210224, 37.824299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006622, 38.376926, 37.221710>,  <37.098282, 37.799660, 37.648682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006622, 38.376926, 37.221710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385956, 38.313454, 37.331608>,  <37.613556, 38.275372, 37.397545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385956, 38.313454, 37.331608>,  <37.006622, 38.376926, 37.221710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385956, 38.313454, 37.331608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239951, -0.207847, -0.948274,
		0.207575, 0.965205, -0.159034,
		0.948333, -0.158677, 0.274745,
		37.670456, 38.265850, 37.414032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367123, 38.814877, 36.741329>,  <37.006622, 38.376926, 37.221710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367123, 38.814877, 36.741329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600979, 38.527744, 36.892548>,  <37.741291, 38.355465, 36.983280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600979, 38.527744, 36.892548>,  <37.367123, 38.814877, 36.741329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600979, 38.527744, 36.892548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322338, -0.222101, -0.920201,
		0.744512, 0.659843, 0.101536,
		0.584637, -0.717829, 0.378049,
		37.776371, 38.312397, 37.005962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940800, 38.900463, 36.323421>,  <37.367123, 38.814877, 36.741329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940800, 38.900463, 36.323421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033760, 38.549530, 36.491360>,  <38.089539, 38.338970, 36.592121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033760, 38.549530, 36.491360>,  <37.940800, 38.900463, 36.323421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033760, 38.549530, 36.491360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420293, -0.298690, -0.856819,
		0.877122, 0.375584, 0.299322,
		0.232403, -0.877337, 0.419843,
		38.103481, 38.286327, 36.617313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687637, 38.742626, 36.176636>,  <37.940800, 38.900463, 36.323421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687637, 38.742626, 36.176636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520332, 38.395309, 36.283321>,  <38.419949, 38.186920, 36.347332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520332, 38.395309, 36.283321>,  <38.687637, 38.742626, 36.176636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520332, 38.395309, 36.283321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289122, -0.405620, -0.867111,
		0.861085, -0.285566, 0.420695,
		-0.418260, -0.868288, 0.266710,
		38.394855, 38.134823, 36.363335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165970, 38.214821, 35.806980>,  <38.687637, 38.742626, 36.176636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165970, 38.214821, 35.806980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828529, 38.014999, 35.885757>,  <38.626064, 37.895107, 35.933025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828529, 38.014999, 35.885757>,  <39.165970, 38.214821, 35.806980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828529, 38.014999, 35.885757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078672, -0.477795, -0.874942,
		0.531178, -0.722607, 0.442368,
		-0.843600, -0.499552, 0.196945,
		38.575451, 37.865135, 35.944839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729687, 38.124882, 36.271671>,  <39.165970, 38.214821, 35.806980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729687, 38.124882, 36.271671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873604, 38.318340, 35.952515>,  <39.959953, 38.434414, 35.761021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873604, 38.318340, 35.952515>,  <39.729687, 38.124882, 36.271671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873604, 38.318340, 35.952515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932712, -0.208852, 0.293988,
		-0.024456, -0.849982, -0.526244,
		0.359792, 0.483645, -0.797896,
		39.981541, 38.463432, 35.713146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082481, 37.669785, 35.887886>,  <39.729687, 38.124882, 36.271671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082481, 37.669785, 35.887886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241505, 38.032112, 35.829311>,  <40.336918, 38.249508, 35.794167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241505, 38.032112, 35.829311>,  <40.082481, 37.669785, 35.887886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241505, 38.032112, 35.829311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905725, -0.361824, 0.220786,
		0.147006, -0.220409, -0.964266,
		0.397557, 0.905816, -0.146440,
		40.360771, 38.303856, 35.785381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592106, 37.675701, 35.352013>,  <40.082481, 37.669785, 35.887886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592106, 37.675701, 35.352013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673023, 37.898621, 35.674129>,  <40.721573, 38.032372, 35.867401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673023, 37.898621, 35.674129>,  <40.592106, 37.675701, 35.352013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673023, 37.898621, 35.674129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900773, -0.428561, 0.070305,
		0.384298, 0.711165, -0.588692,
		0.202292, 0.557297, 0.805294,
		40.733711, 38.065811, 35.915718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149380, 37.593292, 35.046692>,  <40.592106, 37.675701, 35.352013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149380, 37.593292, 35.046692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448936, 37.598232, 35.311726>,  <41.628670, 37.601196, 35.470745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448936, 37.598232, 35.311726>,  <41.149380, 37.593292, 35.046692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448936, 37.598232, 35.311726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550388, -0.545288, 0.632245,
		0.369105, -0.838158, -0.401564,
		0.748889, 0.012349, 0.662580,
		41.673603, 37.601936, 35.510498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920799, 37.015381, 35.497452>,  <41.149380, 37.593292, 35.046692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920799, 37.015381, 35.497452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209602, 37.200504, 35.703175>,  <41.382885, 37.311577, 35.826607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209602, 37.200504, 35.703175>,  <40.920799, 37.015381, 35.497452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209602, 37.200504, 35.703175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365344, -0.376235, 0.851452,
		0.587560, -0.802655, -0.102560,
		0.722009, 0.462809, 0.514306,
		41.426205, 37.339348, 35.857468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154594, 36.501434, 36.059441>,  <40.920799, 37.015381, 35.497452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154594, 36.501434, 36.059441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299831, 36.849979, 36.191437>,  <41.386974, 37.059105, 36.270634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299831, 36.849979, 36.191437>,  <41.154594, 36.501434, 36.059441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299831, 36.849979, 36.191437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191271, -0.276918, 0.941664,
		0.911910, -0.405029, 0.066119,
		0.363091, 0.871360, 0.329995,
		41.408760, 37.111389, 36.290436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645393, 36.249054, 36.530025>,  <41.154594, 36.501434, 36.059441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645393, 36.249054, 36.530025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523354, 36.623989, 36.597336>,  <41.450130, 36.848949, 36.637722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523354, 36.623989, 36.597336>,  <41.645393, 36.249054, 36.530025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523354, 36.623989, 36.597336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233207, -0.244864, 0.941093,
		0.923325, 0.247883, 0.293300,
		-0.305100, 0.937334, 0.168281,
		41.431824, 36.905190, 36.647820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821381, 36.328163, 37.213924>,  <41.645393, 36.249054, 36.530025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821381, 36.328163, 37.213924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515976, 36.577095, 37.144920>,  <41.332733, 36.726456, 37.103519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515976, 36.577095, 37.144920>,  <41.821381, 36.328163, 37.213924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515976, 36.577095, 37.144920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415152, -0.268373, 0.869267,
		0.494675, 0.735310, 0.463267,
		-0.763509, 0.622331, -0.172508,
		41.286922, 36.763794, 37.093166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562080, 36.406170, 37.886902>,  <41.821381, 36.328163, 37.213924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562080, 36.406170, 37.886902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275452, 36.577328, 37.666565>,  <41.103474, 36.680023, 37.534363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275452, 36.577328, 37.666565>,  <41.562080, 36.406170, 37.886902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275452, 36.577328, 37.666565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637003, -0.079716, 0.766729,
		0.284164, 0.900308, 0.329689,
		-0.716574, 0.427890, -0.550847,
		41.060478, 36.705696, 37.501312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329857, 36.992344, 38.287083>,  <41.562080, 36.406170, 37.886902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329857, 36.992344, 38.287083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037540, 36.863976, 38.046097>,  <40.862152, 36.786953, 37.901505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037540, 36.863976, 38.046097>,  <41.329857, 36.992344, 38.287083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037540, 36.863976, 38.046097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592406, -0.140302, 0.793328,
		-0.339125, 0.936655, -0.087587,
		-0.730787, -0.320924, -0.602460,
		40.818306, 36.767696, 37.865360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753590, 37.230171, 38.561241>,  <41.329857, 36.992344, 38.287083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753590, 37.230171, 38.561241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605587, 36.954620, 38.311909>,  <40.516785, 36.789291, 38.162308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605587, 36.954620, 38.311909>,  <40.753590, 37.230171, 38.561241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605587, 36.954620, 38.311909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622623, -0.314105, 0.716714,
		-0.689520, 0.653288, -0.312691,
		-0.370003, -0.688877, -0.623334,
		40.494587, 36.747955, 38.124908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137650, 37.321724, 38.576740>,  <40.753590, 37.230171, 38.561241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137650, 37.321724, 38.576740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166634, 36.944557, 38.446720>,  <40.184025, 36.718258, 38.368710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166634, 36.944557, 38.446720>,  <40.137650, 37.321724, 38.576740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166634, 36.944557, 38.446720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545288, -0.310336, 0.778686,
		-0.835111, 0.120822, -0.536648,
		0.072459, -0.942917, -0.325048,
		40.188370, 36.661682, 38.349205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444862, 37.021770, 38.506924>,  <40.137650, 37.321724, 38.576740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444862, 37.021770, 38.506924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667278, 36.690006, 38.528469>,  <39.800728, 36.490948, 38.541397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667278, 36.690006, 38.528469>,  <39.444862, 37.021770, 38.506924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667278, 36.690006, 38.528469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571631, -0.334570, 0.749200,
		-0.603370, -0.447378, -0.660150,
		0.556042, -0.829407, 0.053866,
		39.834091, 36.441185, 38.544628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940521, 36.455322, 38.695084>,  <39.444862, 37.021770, 38.506924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940521, 36.455322, 38.695084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309677, 36.312462, 38.752659>,  <39.531170, 36.226746, 38.787205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309677, 36.312462, 38.752659>,  <38.940521, 36.455322, 38.695084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309677, 36.312462, 38.752659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307593, -0.458906, 0.833542,
		-0.231646, -0.813542, -0.533376,
		0.922891, -0.357149, 0.143936,
		39.586544, 36.205318, 38.795841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879391, 35.827148, 38.821926>,  <38.940521, 36.455322, 38.695084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879391, 35.827148, 38.821926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222996, 35.918320, 39.005295>,  <39.429157, 35.973022, 39.115314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222996, 35.918320, 39.005295>,  <38.879391, 35.827148, 38.821926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222996, 35.918320, 39.005295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366557, -0.351280, 0.861533,
		0.357403, -0.908103, -0.218203,
		0.859011, 0.227930, 0.458420,
		39.480698, 35.986698, 39.142822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977829, 35.266132, 39.307800>,  <38.879391, 35.827148, 38.821926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977829, 35.266132, 39.307800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216820, 35.568268, 39.415489>,  <39.360214, 35.749550, 39.480103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216820, 35.568268, 39.415489>,  <38.977829, 35.266132, 39.307800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216820, 35.568268, 39.415489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217754, -0.170292, 0.961033,
		0.771752, -0.632822, 0.062732,
		0.597480, 0.755339, 0.269223,
		39.396065, 35.794868, 39.496258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291401, 34.516338, 39.260067>,  <38.977829, 35.266132, 39.307800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291401, 34.516338, 39.260067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972504, 34.277420, 39.295052>,  <38.781166, 34.134068, 39.316040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972504, 34.277420, 39.295052>,  <39.291401, 34.516338, 39.260067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972504, 34.277420, 39.295052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051656, -0.211851, -0.975936,
		0.601451, -0.773536, 0.199749,
		-0.797238, -0.597296, 0.087460,
		38.733334, 34.098232, 39.321289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469212, 33.867359, 38.886650>,  <39.291401, 34.516338, 39.260067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469212, 33.867359, 38.886650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069664, 33.886330, 38.888222>,  <38.829937, 33.897713, 38.889164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069664, 33.886330, 38.888222>,  <39.469212, 33.867359, 38.886650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069664, 33.886330, 38.888222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010798, -0.145529, -0.989295,
		-0.046351, -0.988217, 0.145876,
		-0.998867, 0.047430, 0.003925,
		38.770004, 33.900558, 38.889400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279743, 33.406845, 38.322536>,  <39.469212, 33.867359, 38.886650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279743, 33.406845, 38.322536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930328, 33.589661, 38.389530>,  <38.720680, 33.699348, 38.429726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930328, 33.589661, 38.389530>,  <39.279743, 33.406845, 38.322536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930328, 33.589661, 38.389530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229129, -0.082520, -0.969892,
		-0.429459, -0.885610, 0.176805,
		-0.873536, 0.457040, 0.167480,
		38.668266, 33.726772, 38.439774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817394, 33.040447, 37.965088>,  <39.279743, 33.406845, 38.322536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817394, 33.040447, 37.965088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647804, 33.399307, 38.014660>,  <38.546051, 33.614624, 38.044403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647804, 33.399307, 38.014660>,  <38.817394, 33.040447, 37.965088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647804, 33.399307, 38.014660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305910, -0.013063, -0.951971,
		-0.852444, -0.441528, 0.279986,
		-0.423979, 0.897153, 0.123933,
		38.520611, 33.668453, 38.051838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300369, 32.983906, 37.479111>,  <38.817394, 33.040447, 37.965088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300369, 32.983906, 37.479111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362091, 33.373871, 37.543270>,  <38.399124, 33.607849, 37.581764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362091, 33.373871, 37.543270>,  <38.300369, 32.983906, 37.479111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362091, 33.373871, 37.543270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113281, 0.178728, -0.977356,
		-0.981508, 0.132641, 0.138018,
		0.154305, 0.974917, 0.160397,
		38.408382, 33.666348, 37.591389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811714, 33.330338, 36.994408>,  <38.300369, 32.983906, 37.479111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811714, 33.330338, 36.994408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043377, 33.633343, 37.114910>,  <38.182377, 33.815144, 37.187210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043377, 33.633343, 37.114910>,  <37.811714, 33.330338, 36.994408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043377, 33.633343, 37.114910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013953, 0.360276, -0.932741,
		-0.815095, 0.544410, 0.198087,
		0.579159, 0.757509, 0.301255,
		38.217125, 33.860596, 37.205288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519337, 34.060230, 36.702557>,  <37.811714, 33.330338, 36.994408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519337, 34.060230, 36.702557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913624, 34.077801, 36.767582>,  <38.150196, 34.088341, 36.806599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913624, 34.077801, 36.767582>,  <37.519337, 34.060230, 36.702557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913624, 34.077801, 36.767582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131414, 0.403009, -0.905712,
		-0.105300, 0.914141, 0.391482,
		0.985719, 0.043925, 0.162568,
		38.209339, 34.090977, 36.816353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684017, 34.745029, 36.495872>,  <37.519337, 34.060230, 36.702557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684017, 34.745029, 36.495872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035385, 34.554867, 36.476440>,  <38.246208, 34.440769, 36.464783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035385, 34.554867, 36.476440>,  <37.684017, 34.745029, 36.495872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035385, 34.554867, 36.476440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156632, 0.382457, -0.910601,
		0.451488, 0.792283, 0.410423,
		0.878422, -0.475411, -0.048578,
		38.298912, 34.412243, 36.461868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167953, 35.235718, 36.158680>,  <37.684017, 34.745029, 36.495872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167953, 35.235718, 36.158680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335941, 34.873363, 36.136745>,  <38.436733, 34.655952, 36.123585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335941, 34.873363, 36.136745>,  <38.167953, 35.235718, 36.158680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335941, 34.873363, 36.136745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388940, 0.234249, -0.890984,
		0.819972, 0.352854, 0.450710,
		0.419966, -0.905881, -0.054839,
		38.461929, 34.601601, 36.120293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869389, 35.367004, 36.122883>,  <38.167953, 35.235718, 36.158680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869389, 35.367004, 36.122883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778877, 35.013496, 35.959053>,  <38.724571, 34.801392, 35.860756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778877, 35.013496, 35.959053>,  <38.869389, 35.367004, 36.122883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778877, 35.013496, 35.959053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225183, 0.361627, -0.904720,
		0.947676, -0.296947, 0.117181,
		-0.226278, -0.883769, -0.409573,
		38.710995, 34.748367, 35.836182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406559, 34.911022, 35.672459>,  <38.869389, 35.367004, 36.122883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406559, 34.911022, 35.672459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031906, 34.871540, 35.538013>,  <38.807114, 34.847851, 35.457344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031906, 34.871540, 35.538013>,  <39.406559, 34.911022, 35.672459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031906, 34.871540, 35.538013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305730, 0.238077, -0.921872,
		0.171017, -0.966217, -0.192813,
		-0.936633, -0.098707, -0.336117,
		38.750916, 34.841927, 35.437180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389431, 34.453613, 35.092934>,  <39.406559, 34.911022, 35.672459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389431, 34.453613, 35.092934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079273, 34.705761, 35.077911>,  <38.893181, 34.857048, 35.068897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079273, 34.705761, 35.077911>,  <39.389431, 34.453613, 35.092934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079273, 34.705761, 35.077911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317133, 0.337292, -0.886375,
		-0.546074, -0.699196, -0.461442,
		-0.775390, 0.630365, -0.037552,
		38.846657, 34.894871, 35.066647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.776932, 33.046745, 42.879658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.387794, 33.003525, 42.797779>,  <38.154312, 32.977592, 42.748653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.387794, 33.003525, 42.797779>,  <38.776932, 33.046745, 42.879658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387794, 33.003525, 42.797779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174456, 0.238916, -0.955240,
		0.152120, -0.965010, -0.213578,
		-0.972843, -0.108051, -0.204696,
		38.095940, 32.971107, 42.736370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729889, 32.560211, 42.363808>,  <38.776932, 33.046745, 42.879658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729889, 32.560211, 42.363808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391544, 32.771858, 42.336803>,  <38.188538, 32.898846, 42.320602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391544, 32.771858, 42.336803>,  <38.729889, 32.560211, 42.363808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391544, 32.771858, 42.336803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124714, 0.073121, -0.989495,
		-0.518621, -0.845393, -0.127838,
		-0.845860, 0.529116, -0.067510,
		38.137787, 32.930592, 42.316551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312725, 32.258739, 41.877186>,  <38.729889, 32.560211, 42.363808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312725, 32.258739, 41.877186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.217106, 32.646339, 41.902164>,  <38.159733, 32.878899, 41.917152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.217106, 32.646339, 41.902164>,  <38.312725, 32.258739, 41.877186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217106, 32.646339, 41.902164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017266, 0.068547, -0.997498,
		-0.970854, -0.237373, -0.033117,
		-0.239049, 0.968997, 0.062451,
		38.145390, 32.937038, 41.920898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026760, 32.447418, 41.210636>,  <38.312725, 32.258739, 41.877186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026760, 32.447418, 41.210636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.123230, 32.807949, 41.354553>,  <38.181110, 33.024265, 41.440903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.123230, 32.807949, 41.354553>,  <38.026760, 32.447418, 41.210636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123230, 32.807949, 41.354553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206439, 0.314605, -0.926502,
		-0.948272, 0.297720, -0.110195,
		0.241171, 0.901325, 0.359792,
		38.195580, 33.078346, 41.462490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704067, 32.844925, 40.699242>,  <38.026760, 32.447418, 41.210636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704067, 32.844925, 40.699242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.924690, 33.113995, 40.896542>,  <38.057064, 33.275436, 41.014923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.924690, 33.113995, 40.896542>,  <37.704067, 32.844925, 40.699242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924690, 33.113995, 40.896542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020798, 0.580055, -0.814312,
		-0.833878, 0.459398, 0.305943,
		0.551556, 0.672674, 0.493250,
		38.090157, 33.315796, 41.044518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389149, 33.453175, 40.590103>,  <37.704067, 32.844925, 40.699242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389149, 33.453175, 40.590103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.779984, 33.486042, 40.668640>,  <38.014484, 33.505764, 40.715763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.779984, 33.486042, 40.668640>,  <37.389149, 33.453175, 40.590103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779984, 33.486042, 40.668640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142690, 0.431612, -0.890702,
		-0.157935, 0.898309, 0.409997,
		0.977086, 0.082170, 0.196346,
		38.073109, 33.510693, 40.727543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601501, 34.157673, 40.364613>,  <37.389149, 33.453175, 40.590103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601501, 34.157673, 40.364613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942913, 33.949493, 40.374561>,  <38.147758, 33.824585, 40.380531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942913, 33.949493, 40.374561>,  <37.601501, 34.157673, 40.364613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942913, 33.949493, 40.374561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282014, 0.421310, -0.861955,
		0.438127, 0.742718, 0.506374,
		0.853530, -0.520451, 0.024870,
		38.198971, 33.793358, 40.382023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124454, 34.617805, 40.207607>,  <37.601501, 34.157673, 40.364613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124454, 34.617805, 40.207607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.299129, 34.259068, 40.179390>,  <38.403934, 34.043823, 40.162460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.299129, 34.259068, 40.179390>,  <38.124454, 34.617805, 40.207607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299129, 34.259068, 40.179390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342049, 0.238046, -0.909031,
		0.832052, 0.372830, 0.410716,
		0.436683, -0.896845, -0.070540,
		38.430134, 33.990013, 40.158226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778641, 34.755127, 39.902187>,  <38.124454, 34.617805, 40.207607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778641, 34.755127, 39.902187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.675900, 34.373203, 39.842373>,  <38.614254, 34.144047, 39.806484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.675900, 34.373203, 39.842373>,  <38.778641, 34.755127, 39.902187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675900, 34.373203, 39.842373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199592, 0.098987, -0.974867,
		0.945617, -0.280241, 0.165148,
		-0.256850, -0.954812, -0.149537,
		38.598843, 34.086761, 39.797512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451302, 35.017513, 39.847168>,  <38.778641, 34.755127, 39.902187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451302, 35.017513, 39.847168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483124, 35.414383, 39.885681>,  <39.502216, 35.652504, 39.908791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483124, 35.414383, 39.885681>,  <39.451302, 35.017513, 39.847168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483124, 35.414383, 39.885681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270457, -0.071481, 0.960075,
		0.959439, -0.102422, 0.262652,
		0.079558, 0.992169, 0.096282,
		39.506992, 35.712032, 39.914566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850506, 35.076588, 40.375549>,  <39.451302, 35.017513, 39.847168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850506, 35.076588, 40.375549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.648636, 35.421413, 40.357040>,  <39.527515, 35.628311, 40.345936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.648636, 35.421413, 40.357040>,  <39.850506, 35.076588, 40.375549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648636, 35.421413, 40.357040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174912, -0.049611, 0.983334,
		0.845404, 0.504359, 0.175823,
		-0.504676, 0.862068, -0.046276,
		39.497234, 35.680035, 40.343159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208038, 35.524975, 40.883583>,  <39.850506, 35.076588, 40.375549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208038, 35.524975, 40.883583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.840050, 35.663277, 40.809704>,  <39.619259, 35.746258, 40.765377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.840050, 35.663277, 40.809704>,  <40.208038, 35.524975, 40.883583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840050, 35.663277, 40.809704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150065, 0.124649, 0.980787,
		0.362131, 0.930010, -0.062788,
		-0.919968, 0.345751, -0.184702,
		39.564060, 35.767002, 40.754292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123493, 36.089264, 41.318039>,  <40.208038, 35.524975, 40.883583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123493, 36.089264, 41.318039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.753700, 35.962246, 41.233665>,  <39.531822, 35.886036, 41.183041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.753700, 35.962246, 41.233665>,  <40.123493, 36.089264, 41.318039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753700, 35.962246, 41.233665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228521, 0.018752, 0.973358,
		-0.305131, 0.948057, -0.089902,
		-0.924485, -0.317546, -0.210929,
		39.476357, 35.866982, 41.170387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769867, 36.550518, 41.578739>,  <40.123493, 36.089264, 41.318039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769867, 36.550518, 41.578739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.510391, 36.248978, 41.536961>,  <39.354706, 36.068054, 41.511894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.510391, 36.248978, 41.536961>,  <39.769867, 36.550518, 41.578739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510391, 36.248978, 41.536961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406214, 0.226913, 0.885156,
		-0.643574, 0.616622, -0.453421,
		-0.648694, -0.753849, -0.104446,
		39.315784, 36.022823, 41.505627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100571, 36.822380, 41.904629>,  <39.769867, 36.550518, 41.578739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100571, 36.822380, 41.904629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.044670, 36.426361, 41.898094>,  <39.011127, 36.188747, 41.894173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.044670, 36.426361, 41.898094>,  <39.100571, 36.822380, 41.904629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044670, 36.426361, 41.898094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290326, 0.025194, 0.956596,
		-0.946667, 0.138434, -0.290959,
		-0.139756, -0.990051, -0.016340,
		39.002743, 36.129345, 41.893192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479454, 36.796124, 42.250786>,  <39.100571, 36.822380, 41.904629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479454, 36.796124, 42.250786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.594921, 36.413494, 42.234634>,  <38.664204, 36.183914, 42.224945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.594921, 36.413494, 42.234634>,  <38.479454, 36.796124, 42.250786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594921, 36.413494, 42.234634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496280, -0.185565, 0.848099,
		-0.818764, -0.224782, -0.528297,
		0.288671, -0.956577, -0.040379,
		38.681522, 36.126522, 42.222519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879547, 36.238728, 42.255562>,  <38.479454, 36.796124, 42.250786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879547, 36.238728, 42.255562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.206936, 36.081081, 42.422787>,  <38.403370, 35.986496, 42.523121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.206936, 36.081081, 42.422787>,  <37.879547, 36.238728, 42.255562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206936, 36.081081, 42.422787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481510, -0.073543, 0.873350,
		-0.313453, -0.916115, -0.249962,
		0.818471, -0.394114, 0.418066,
		38.452477, 35.962849, 42.548206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570316, 35.674133, 42.637173>,  <37.879547, 36.238728, 42.255562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570316, 35.674133, 42.637173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939693, 35.741508, 42.775085>,  <38.161320, 35.781933, 42.857834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939693, 35.741508, 42.775085>,  <37.570316, 35.674133, 42.637173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939693, 35.741508, 42.775085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324708, -0.135790, 0.936016,
		0.204483, -0.976314, -0.070700,
		0.923445, 0.168442, 0.344783,
		38.216728, 35.792042, 42.878521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638165, 35.189411, 43.147392>,  <37.570316, 35.674133, 42.637173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638165, 35.189411, 43.147392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913235, 35.460941, 43.250385>,  <38.078278, 35.623859, 43.312180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913235, 35.460941, 43.250385>,  <37.638165, 35.189411, 43.147392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913235, 35.460941, 43.250385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247387, -0.114336, 0.962147,
		0.682566, -0.725347, 0.089305,
		0.687680, 0.678822, 0.257483,
		38.119537, 35.664589, 43.327629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063332, 34.896141, 43.657288>,  <37.638165, 35.189411, 43.147392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063332, 34.896141, 43.657288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.137142, 35.284065, 43.721050>,  <38.181427, 35.516819, 43.759308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.137142, 35.284065, 43.721050>,  <38.063332, 34.896141, 43.657288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137142, 35.284065, 43.721050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289874, -0.101271, 0.951692,
		0.939108, -0.221819, 0.262437,
		0.184526, 0.969815, 0.159404,
		38.192501, 35.575008, 43.768871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647873, 34.893047, 44.227852>,  <38.063332, 34.896141, 43.657288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647873, 34.893047, 44.227852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457756, 35.244957, 44.223946>,  <38.343685, 35.456104, 44.221603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457756, 35.244957, 44.223946>,  <38.647873, 34.893047, 44.227852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457756, 35.244957, 44.223946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173508, -0.082845, 0.981342,
		0.862549, 0.468120, 0.192024,
		-0.475294, 0.879773, -0.009765,
		38.315166, 35.508888, 44.221016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901356, 35.197941, 44.763802>,  <38.647873, 34.893047, 44.227852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901356, 35.197941, 44.763802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566086, 35.398308, 44.677498>,  <38.364925, 35.518528, 44.625717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566086, 35.398308, 44.677498>,  <38.901356, 35.197941, 44.763802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566086, 35.398308, 44.677498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255375, -0.010899, 0.966781,
		0.481927, 0.865425, 0.137057,
		-0.838170, 0.500919, -0.215755,
		38.314636, 35.548584, 44.612770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747253, 35.698570, 45.362736>,  <38.901356, 35.197941, 44.763802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747253, 35.698570, 45.362736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.388832, 35.707737, 45.185394>,  <38.173779, 35.713238, 45.078991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.388832, 35.707737, 45.185394>,  <38.747253, 35.698570, 45.362736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388832, 35.707737, 45.185394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441324, 0.062404, 0.895175,
		0.048183, 0.997788, -0.045803,
		-0.896053, 0.022919, -0.443354,
		38.120018, 35.714611, 45.052387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.530249, 33.371090, 43.086884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.880850, 33.372555, 43.279434>,  <32.091209, 33.373432, 43.394966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.880850, 33.372555, 43.279434>,  <31.530249, 33.371090, 43.086884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880850, 33.372555, 43.279434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458741, 0.296776, -0.837544,
		-0.145930, 0.954940, 0.258445,
		0.876505, 0.003663, 0.481379,
		32.143803, 33.373653, 43.423847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816990, 33.998287, 42.756508>,  <31.530249, 33.371090, 43.086884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816990, 33.998287, 42.756508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.122971, 33.808983, 42.931263>,  <32.306561, 33.695400, 43.036118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.122971, 33.808983, 42.931263>,  <31.816990, 33.998287, 42.756508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122971, 33.808983, 42.931263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554053, 0.137618, -0.821027,
		0.328437, 0.870107, 0.367483,
		0.764954, -0.473261, 0.436887,
		32.352455, 33.667004, 43.062328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374493, 34.498459, 42.824364>,  <31.816990, 33.998287, 42.756508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374493, 34.498459, 42.824364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.551083, 34.139565, 42.820816>,  <32.657036, 33.924229, 42.818687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.551083, 34.139565, 42.820816>,  <32.374493, 34.498459, 42.824364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551083, 34.139565, 42.820816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522933, 0.265309, -0.810032,
		0.729139, 0.352969, 0.586318,
		0.441472, -0.897231, -0.008868,
		32.683525, 33.870396, 42.818157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098995, 34.559353, 42.778111>,  <32.374493, 34.498459, 42.824364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098995, 34.559353, 42.778111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.026726, 34.188107, 42.647907>,  <32.983364, 33.965359, 42.569786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.026726, 34.188107, 42.647907>,  <33.098995, 34.559353, 42.778111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026726, 34.188107, 42.647907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398481, 0.233500, -0.886956,
		0.899205, -0.289958, 0.327650,
		-0.180674, -0.928118, -0.325507,
		32.972523, 33.909672, 42.550255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654736, 34.423519, 42.368080>,  <33.098995, 34.559353, 42.778111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654736, 34.423519, 42.368080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.371067, 34.172394, 42.239754>,  <33.200867, 34.021717, 42.162758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.371067, 34.172394, 42.239754>,  <33.654736, 34.423519, 42.368080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371067, 34.172394, 42.239754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457750, -0.063923, -0.886780,
		0.536228, -0.775732, 0.332715,
		-0.709172, -0.627816, -0.320814,
		33.158314, 33.984051, 42.143509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955719, 34.073982, 41.850777>,  <33.654736, 34.423519, 42.368080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955719, 34.073982, 41.850777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.583752, 33.936829, 41.797581>,  <33.360573, 33.854538, 41.765663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.583752, 33.936829, 41.797581>,  <33.955719, 34.073982, 41.850777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583752, 33.936829, 41.797581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185351, -0.124636, -0.974736,
		0.317648, -0.931072, 0.179455,
		-0.929916, -0.342885, -0.132985,
		33.304775, 33.833961, 41.757687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060356, 33.437866, 41.536247>,  <33.955719, 34.073982, 41.850777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060356, 33.437866, 41.536247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.691223, 33.572899, 41.462040>,  <33.469742, 33.653919, 41.417515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.691223, 33.572899, 41.462040>,  <34.060356, 33.437866, 41.536247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691223, 33.572899, 41.462040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120348, -0.204841, -0.971368,
		-0.365916, -0.918738, 0.148408,
		-0.922834, 0.337579, -0.185523,
		33.414371, 33.674171, 41.406384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826004, 32.945446, 41.131611>,  <34.060356, 33.437866, 41.536247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826004, 32.945446, 41.131611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595734, 33.266262, 41.067951>,  <33.457573, 33.458752, 41.029755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595734, 33.266262, 41.067951>,  <33.826004, 32.945446, 41.131611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595734, 33.266262, 41.067951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119412, -0.110086, -0.986723,
		-0.808913, -0.587036, -0.032400,
		-0.575675, 0.802042, -0.159149,
		33.423031, 33.506874, 41.020206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187763, 32.735043, 40.593346>,  <33.826004, 32.945446, 41.131611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187763, 32.735043, 40.593346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257191, 33.128944, 40.597973>,  <33.298847, 33.365284, 40.600750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257191, 33.128944, 40.597973>,  <33.187763, 32.735043, 40.593346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257191, 33.128944, 40.597973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100630, -0.006047, -0.994906,
		-0.979668, 0.173845, -0.100146,
		0.173565, 0.984755, 0.011570,
		33.309261, 33.424370, 40.601444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845039, 32.916729, 39.987152>,  <33.187763, 32.735043, 40.593346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845039, 32.916729, 39.987152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.062054, 33.243027, 40.067368>,  <33.192261, 33.438805, 40.115498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.062054, 33.243027, 40.067368>,  <32.845039, 32.916729, 39.987152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062054, 33.243027, 40.067368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137143, 0.149515, -0.979202,
		-0.828765, 0.558751, -0.030757,
		0.542531, 0.815747, 0.200541,
		33.224812, 33.487751, 40.127529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669094, 33.470654, 39.487858>,  <32.845039, 32.916729, 39.987152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669094, 33.470654, 39.487858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.033367, 33.591560, 39.600491>,  <33.251930, 33.664104, 39.668068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.033367, 33.591560, 39.600491>,  <32.669094, 33.470654, 39.487858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033367, 33.591560, 39.600491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187475, 0.304984, -0.933723,
		-0.368111, 0.903117, 0.221077,
		0.910685, 0.302267, 0.281580,
		33.306572, 33.682240, 39.684963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753826, 34.203220, 39.370651>,  <32.669094, 33.470654, 39.487858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753826, 34.203220, 39.370651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122116, 34.047138, 39.372211>,  <33.343090, 33.953491, 39.373146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122116, 34.047138, 39.372211>,  <32.753826, 34.203220, 39.370651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122116, 34.047138, 39.372211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190890, 0.441668, -0.876636,
		0.340345, 0.807880, 0.481139,
		0.920720, -0.390203, 0.003896,
		33.398331, 33.930077, 39.373379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154812, 34.709625, 39.154247>,  <32.753826, 34.203220, 39.370651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154812, 34.709625, 39.154247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405556, 34.402912, 39.098988>,  <33.556004, 34.218884, 39.065834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405556, 34.402912, 39.098988>,  <33.154812, 34.709625, 39.154247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405556, 34.402912, 39.098988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239367, 0.358267, -0.902413,
		0.741451, 0.532619, 0.408127,
		0.626860, -0.766787, -0.138146,
		33.593613, 34.172874, 39.057545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651642, 34.900387, 38.694801>,  <33.154812, 34.709625, 39.154247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651642, 34.900387, 38.694801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762302, 34.516293, 38.679813>,  <33.828701, 34.285835, 38.670822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762302, 34.516293, 38.679813>,  <33.651642, 34.900387, 38.694801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762302, 34.516293, 38.679813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315329, 0.127540, -0.940373,
		0.907761, 0.248346, 0.338075,
		0.276656, -0.960238, -0.037465,
		33.845299, 34.228222, 38.668575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159859, 35.336899, 38.971222>,  <33.651642, 34.900387, 38.694801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159859, 35.336899, 38.971222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350544, 35.674503, 39.069519>,  <34.464954, 35.877068, 39.128498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350544, 35.674503, 39.069519>,  <34.159859, 35.336899, 38.971222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350544, 35.674503, 39.069519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311386, -0.099293, 0.945082,
		0.822061, -0.527053, 0.215479,
		0.476713, 0.844012, 0.245742,
		34.493557, 35.927708, 39.143242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437836, 35.222424, 39.641556>,  <34.159859, 35.336899, 38.971222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437836, 35.222424, 39.641556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476471, 35.618507, 39.601257>,  <34.499653, 35.856159, 39.577076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476471, 35.618507, 39.601257>,  <34.437836, 35.222424, 39.641556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476471, 35.618507, 39.601257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324779, 0.127040, 0.937219,
		0.940844, -0.057804, 0.333871,
		0.096590, 0.990212, -0.100751,
		34.505447, 35.915569, 39.571033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821491, 35.455574, 40.252655>,  <34.437836, 35.222424, 39.641556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821491, 35.455574, 40.252655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614079, 35.761082, 40.098885>,  <34.489632, 35.944386, 40.006622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614079, 35.761082, 40.098885>,  <34.821491, 35.455574, 40.252655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614079, 35.761082, 40.098885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423164, 0.161456, 0.891551,
		0.743006, 0.624973, 0.239479,
		-0.518530, 0.763767, -0.384429,
		34.458519, 35.990211, 39.983555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878757, 35.987492, 40.785870>,  <34.821491, 35.455574, 40.252655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878757, 35.987492, 40.785870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.543095, 36.065548, 40.582798>,  <34.341698, 36.112381, 40.460953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.543095, 36.065548, 40.582798>,  <34.878757, 35.987492, 40.785870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543095, 36.065548, 40.582798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442493, 0.297815, 0.845876,
		0.316262, 0.934465, -0.163563,
		-0.839153, 0.195143, -0.507682,
		34.291348, 36.124092, 40.430492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615856, 36.706554, 41.066105>,  <34.878757, 35.987492, 40.785870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615856, 36.706554, 41.066105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307587, 36.516167, 40.896629>,  <34.122623, 36.401932, 40.794945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307587, 36.516167, 40.896629>,  <34.615856, 36.706554, 41.066105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307587, 36.516167, 40.896629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610954, 0.362951, 0.703563,
		-0.181098, 0.801072, -0.570514,
		-0.770674, -0.475972, -0.423689,
		34.076385, 36.373375, 40.769524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981380, 37.245094, 41.021564>,  <34.615856, 36.706554, 41.066105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981380, 37.245094, 41.021564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855106, 36.865570, 41.017544>,  <33.779343, 36.637856, 41.015133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855106, 36.865570, 41.017544>,  <33.981380, 37.245094, 41.021564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855106, 36.865570, 41.017544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699422, 0.225530, 0.678193,
		-0.641210, 0.221126, -0.734815,
		-0.315689, -0.948810, -0.010048,
		33.760399, 36.580929, 41.014530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274353, 37.289955, 41.187614>,  <33.981380, 37.245094, 41.021564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274353, 37.289955, 41.187614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.329704, 36.900818, 41.261841>,  <33.362915, 36.667336, 41.306377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.329704, 36.900818, 41.261841>,  <33.274353, 37.289955, 41.187614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329704, 36.900818, 41.261841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623674, 0.059948, 0.779382,
		-0.769338, -0.223585, -0.598439,
		0.138383, -0.972839, 0.185564,
		33.371220, 36.608967, 41.317509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593288, 36.962822, 41.363686>,  <33.274353, 37.289955, 41.187614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593288, 36.962822, 41.363686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846909, 36.686710, 41.503109>,  <32.999081, 36.521042, 41.586761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846909, 36.686710, 41.503109>,  <32.593288, 36.962822, 41.363686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846909, 36.686710, 41.503109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572515, -0.116040, 0.811641,
		-0.519815, -0.714175, -0.468772,
		0.634050, -0.690282, 0.348556,
		33.037125, 36.479626, 41.607677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212898, 36.417206, 41.629631>,  <32.593288, 36.962822, 41.363686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212898, 36.417206, 41.629631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.556953, 36.363026, 41.826332>,  <32.763386, 36.330517, 41.944355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.556953, 36.363026, 41.826332>,  <32.212898, 36.417206, 41.629631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556953, 36.363026, 41.826332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510051, -0.236301, 0.827049,
		0.004179, -0.962193, -0.272336,
		0.860134, -0.135449, 0.491755,
		32.814995, 36.322392, 41.973858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109489, 35.729046, 41.967300>,  <32.212898, 36.417206, 41.629631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109489, 35.729046, 41.967300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.395649, 35.936687, 42.154381>,  <32.567345, 36.061272, 42.266628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.395649, 35.936687, 42.154381>,  <32.109489, 35.729046, 41.967300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395649, 35.936687, 42.154381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465102, -0.145737, 0.873178,
		0.521428, -0.842197, 0.137175,
		0.715396, 0.519100, 0.467699,
		32.610268, 36.092419, 42.294689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216209, 35.373558, 42.540386>,  <32.109489, 35.729046, 41.967300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216209, 35.373558, 42.540386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.396500, 35.713852, 42.648529>,  <32.504673, 35.918030, 42.713413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.396500, 35.713852, 42.648529>,  <32.216209, 35.373558, 42.540386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396500, 35.713852, 42.648529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224998, -0.184813, 0.956671,
		0.863842, -0.492024, 0.108115,
		0.450724, 0.850739, 0.270353,
		32.531715, 35.969074, 42.729633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739128, 35.252617, 43.079559>,  <32.216209, 35.373558, 42.540386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739128, 35.252617, 43.079559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.642326, 35.640408, 43.095280>,  <32.584244, 35.873081, 43.104713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.642326, 35.640408, 43.095280>,  <32.739128, 35.252617, 43.079559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642326, 35.640408, 43.095280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123263, -0.070895, 0.989838,
		0.962413, 0.234702, 0.136657,
		-0.242005, 0.969479, 0.039301,
		32.569725, 35.931252, 43.107071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977364, 35.434959, 43.695911>,  <32.739128, 35.252617, 43.079559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977364, 35.434959, 43.695911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733528, 35.743683, 43.623569>,  <32.587227, 35.928917, 43.580162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733528, 35.743683, 43.623569>,  <32.977364, 35.434959, 43.695911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733528, 35.743683, 43.623569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285335, -0.000774, 0.958427,
		0.739582, 0.635855, 0.220696,
		-0.609591, 0.771808, -0.180859,
		32.550652, 35.975224, 43.569313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151047, 35.921719, 44.187531>,  <32.977364, 35.434959, 43.695911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151047, 35.921719, 44.187531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.779140, 36.002331, 44.064301>,  <32.555996, 36.050697, 43.990360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.779140, 36.002331, 44.064301>,  <33.151047, 35.921719, 44.187531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779140, 36.002331, 44.064301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271783, 0.188704, 0.943676,
		0.248319, 0.961132, -0.120678,
		-0.929770, 0.201534, -0.308078,
		32.500210, 36.062790, 43.971878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525768, 36.613411, 44.074986>,  <33.151047, 35.921719, 44.187531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525768, 36.613411, 44.074986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856567, 36.738754, 44.261696>,  <34.055046, 36.813961, 44.373722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856567, 36.738754, 44.261696>,  <33.525768, 36.613411, 44.074986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856567, 36.738754, 44.261696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258163, 0.525887, -0.810429,
		-0.499425, 0.790728, 0.354011,
		0.826999, 0.313356, 0.466778,
		34.104668, 36.832760, 44.401730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567772, 37.364044, 44.051155>,  <33.525768, 36.613411, 44.074986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567772, 37.364044, 44.051155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.941582, 37.227856, 44.092617>,  <34.165867, 37.146141, 44.117493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.941582, 37.227856, 44.092617>,  <33.567772, 37.364044, 44.051155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941582, 37.227856, 44.092617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268792, 0.484312, -0.832582,
		0.233272, 0.805929, 0.544117,
		0.934524, -0.340472, 0.103650,
		34.221939, 37.125713, 44.123711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005386, 37.948456, 44.029285>,  <33.567772, 37.364044, 44.051155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005386, 37.948456, 44.029285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.276138, 37.660385, 43.968388>,  <34.438591, 37.487545, 43.931847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.276138, 37.660385, 43.968388>,  <34.005386, 37.948456, 44.029285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276138, 37.660385, 43.968388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459548, 0.575018, -0.676883,
		0.575018, 0.388206, 0.720174,
		0.676883, -0.720174, -0.152246,
		34.479202, 37.444332, 43.922714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664230, 38.272346, 43.990746>,  <34.005386, 37.948456, 44.029285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664230, 38.272346, 43.990746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724907, 37.922668, 43.806236>,  <34.761311, 37.712860, 43.695530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724907, 37.922668, 43.806236>,  <34.664230, 38.272346, 43.990746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724907, 37.922668, 43.806236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535950, 0.464855, -0.704746,
		0.830511, -0.140315, 0.539040,
		0.151689, -0.874197, -0.461269,
		34.770412, 37.660408, 43.667854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390553, 38.352596, 43.819324>,  <34.664230, 38.272346, 43.990746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390553, 38.352596, 43.819324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.216507, 38.077370, 43.587036>,  <35.112080, 37.912231, 43.447662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.216507, 38.077370, 43.587036>,  <35.390553, 38.352596, 43.819324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216507, 38.077370, 43.587036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572475, 0.286399, -0.768276,
		0.694945, -0.666736, 0.269286,
		-0.435114, -0.688069, -0.580721,
		35.085972, 37.870949, 43.412819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007820, 37.923275, 43.561050>,  <35.390553, 38.352596, 43.819324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007820, 37.923275, 43.561050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.713745, 37.835445, 43.304523>,  <35.537300, 37.782749, 43.150608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.713745, 37.835445, 43.304523>,  <36.007820, 37.923275, 43.561050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713745, 37.835445, 43.304523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637798, 0.096376, -0.764150,
		0.229595, -0.970824, 0.069190,
		-0.735187, -0.219574, -0.641317,
		35.493191, 37.769573, 43.112129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207329, 37.330952, 43.138618>,  <36.007820, 37.923275, 43.561050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207329, 37.330952, 43.138618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.917999, 37.528343, 42.945419>,  <35.744404, 37.646778, 42.829498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.917999, 37.528343, 42.945419>,  <36.207329, 37.330952, 43.138618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917999, 37.528343, 42.945419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518838, -0.073160, -0.851737,
		-0.455647, -0.866678, -0.203115,
		-0.723321, 0.493475, -0.483000,
		35.701004, 37.676384, 42.800518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191322, 37.044025, 42.498730>,  <36.207329, 37.330952, 43.138618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191322, 37.044025, 42.498730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.988705, 37.383232, 42.436409>,  <35.867134, 37.586758, 42.399017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.988705, 37.383232, 42.436409>,  <36.191322, 37.044025, 42.498730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988705, 37.383232, 42.436409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419222, 0.084335, -0.903958,
		-0.753435, -0.523212, -0.398228,
		-0.506546, 0.848019, -0.155801,
		35.836742, 37.637638, 42.389668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080227, 37.041458, 41.811886>,  <36.191322, 37.044025, 42.498730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080227, 37.041458, 41.811886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.034966, 37.426884, 41.908825>,  <36.007809, 37.658138, 41.966988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.034966, 37.426884, 41.908825>,  <36.080227, 37.041458, 41.811886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034966, 37.426884, 41.908825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325243, 0.266401, -0.907330,
		-0.938836, -0.023847, -0.343538,
		-0.113156, 0.963567, 0.242350,
		36.001019, 37.715954, 41.981529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694538, 37.298374, 41.303905>,  <36.080227, 37.041458, 41.811886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694538, 37.298374, 41.303905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.894089, 37.598251, 41.477840>,  <36.013821, 37.778175, 41.582203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.894089, 37.598251, 41.477840>,  <35.694538, 37.298374, 41.303905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894089, 37.598251, 41.477840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344127, 0.289134, -0.893296,
		-0.795422, 0.595286, -0.113746,
		0.498879, 0.749691, 0.434838,
		36.043751, 37.823158, 41.608292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521095, 37.819511, 40.903461>,  <35.694538, 37.298374, 41.303905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521095, 37.819511, 40.903461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828365, 37.964859, 41.114315>,  <36.012726, 38.052067, 41.240829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828365, 37.964859, 41.114315>,  <35.521095, 37.819511, 40.903461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828365, 37.964859, 41.114315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402489, 0.366227, -0.838976,
		-0.497910, 0.856645, 0.135073,
		0.768172, 0.363369, 0.527138,
		36.058815, 38.073872, 41.272457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550827, 38.520874, 40.727203>,  <35.521095, 37.819511, 40.903461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550827, 38.520874, 40.727203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.920216, 38.431358, 40.851856>,  <36.141850, 38.377647, 40.926647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.920216, 38.431358, 40.851856>,  <35.550827, 38.520874, 40.727203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920216, 38.431358, 40.851856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376407, 0.371227, -0.848828,
		0.074276, 0.901170, 0.427055,
		0.923472, -0.223794, 0.311634,
		36.197258, 38.364220, 40.945347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917019, 39.108448, 40.463844>,  <35.550827, 38.520874, 40.727203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917019, 39.108448, 40.463844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193359, 38.842335, 40.577072>,  <36.359161, 38.682667, 40.645008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193359, 38.842335, 40.577072>,  <35.917019, 39.108448, 40.463844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193359, 38.842335, 40.577072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560687, 0.245799, -0.790704,
		0.456465, 0.704968, 0.542825,
		0.690847, -0.665284, 0.283068,
		36.400612, 38.642750, 40.661991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594261, 39.428875, 40.451336>,  <35.917019, 39.108448, 40.463844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594261, 39.428875, 40.451336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.644650, 39.037514, 40.385777>,  <36.674881, 38.802696, 40.346443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.644650, 39.037514, 40.385777>,  <36.594261, 39.428875, 40.451336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644650, 39.037514, 40.385777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504548, 0.205437, -0.838586,
		0.854144, 0.022945, 0.519530,
		0.125972, -0.978401, -0.163896,
		36.682442, 38.743992, 40.336609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.825438, 40.362465, 37.500267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.014404, 40.369457, 37.147785>,  <31.127785, 40.373653, 36.936298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.014404, 40.369457, 37.147785>,  <30.825438, 40.362465, 37.500267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014404, 40.369457, 37.147785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861759, -0.200597, -0.465974,
		-0.184911, 0.979518, -0.079703,
		0.472418, 0.017479, -0.881201,
		31.156130, 40.374702, 36.883427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526844, 40.843376, 37.049526>,  <30.825438, 40.362465, 37.500267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526844, 40.843376, 37.049526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.703478, 40.552910, 36.838741>,  <30.809458, 40.378632, 36.712269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.703478, 40.552910, 36.838741>,  <30.526844, 40.843376, 37.049526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703478, 40.552910, 36.838741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862262, -0.181122, -0.472968,
		0.248006, 0.663237, -0.706123,
		0.441584, -0.726162, -0.526965,
		30.835953, 40.335060, 36.680653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330236, 40.947887, 36.348087>,  <30.526844, 40.843376, 37.049526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330236, 40.947887, 36.348087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.447767, 40.567192, 36.383537>,  <30.518286, 40.338776, 36.404808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.447767, 40.567192, 36.383537>,  <30.330236, 40.947887, 36.348087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447767, 40.567192, 36.383537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792119, -0.294337, -0.534708,
		0.534990, 0.086909, -0.840377,
		0.293825, -0.951742, 0.088625,
		30.535915, 40.281670, 36.410126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153124, 40.757099, 35.719696>,  <30.330236, 40.947887, 36.348087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153124, 40.757099, 35.719696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226320, 40.409885, 35.904320>,  <30.270239, 40.201557, 36.015095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226320, 40.409885, 35.904320>,  <30.153124, 40.757099, 35.719696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226320, 40.409885, 35.904320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530595, -0.482440, -0.696937,
		0.827637, -0.117369, -0.548854,
		0.182990, -0.868030, 0.461561,
		30.281218, 40.149475, 36.042789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350393, 40.233524, 35.214088>,  <30.153124, 40.757099, 35.719696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350393, 40.233524, 35.214088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239740, 40.008011, 35.525375>,  <30.173349, 39.872704, 35.712147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239740, 40.008011, 35.525375>,  <30.350393, 40.233524, 35.214088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239740, 40.008011, 35.525375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383262, -0.677902, -0.627343,
		0.881241, -0.471804, -0.028547,
		-0.276630, -0.563781, 0.778220,
		30.156752, 39.838875, 35.758842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516932, 39.588490, 35.027935>,  <30.350393, 40.233524, 35.214088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516932, 39.588490, 35.027935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.233759, 39.544903, 35.307064>,  <30.063856, 39.518749, 35.474541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.233759, 39.544903, 35.307064>,  <30.516932, 39.588490, 35.027935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233759, 39.544903, 35.307064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504327, -0.613711, -0.607465,
		0.494458, -0.781975, 0.379509,
		-0.707931, -0.108969, 0.697825,
		30.021379, 39.512211, 35.516411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554380, 38.881969, 34.956459>,  <30.516932, 39.588490, 35.027935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554380, 38.881969, 34.956459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226360, 38.975529, 35.165382>,  <30.029549, 39.031666, 35.290737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226360, 38.975529, 35.165382>,  <30.554380, 38.881969, 34.956459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226360, 38.975529, 35.165382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459752, -0.812748, -0.357867,
		0.340799, -0.533601, 0.774032,
		-0.820051, 0.233902, 0.522308,
		29.980345, 39.045700, 35.322075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333786, 38.213917, 35.143570>,  <30.554380, 38.881969, 34.956459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333786, 38.213917, 35.143570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007059, 38.431202, 35.221272>,  <29.811024, 38.561573, 35.267891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007059, 38.431202, 35.221272>,  <30.333786, 38.213917, 35.143570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007059, 38.431202, 35.221272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565465, -0.687179, -0.456108,
		-0.114277, -0.482399, 0.868465,
		-0.816817, 0.543209, 0.194251,
		29.762014, 38.594166, 35.279549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960890, 37.836552, 35.576515>,  <30.333786, 38.213917, 35.143570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960890, 37.836552, 35.576515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.709866, 38.068504, 35.368706>,  <29.559250, 38.207676, 35.244022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.709866, 38.068504, 35.368706>,  <29.960890, 37.836552, 35.576515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709866, 38.068504, 35.368706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439060, -0.814642, -0.378925,
		-0.642956, -0.009698, 0.765842,
		-0.627562, 0.579883, -0.519521,
		29.521597, 38.242470, 35.212849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346830, 37.630154, 35.783451>,  <29.960890, 37.836552, 35.576515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346830, 37.630154, 35.783451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.317446, 37.807079, 35.425911>,  <29.299814, 37.913235, 35.211388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.317446, 37.807079, 35.425911>,  <29.346830, 37.630154, 35.783451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317446, 37.807079, 35.425911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395416, -0.835730, -0.381054,
		-0.915560, 0.325449, 0.236291,
		-0.073462, 0.442311, -0.893848,
		29.295406, 37.939774, 35.157757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751631, 37.347107, 35.595955>,  <29.346830, 37.630154, 35.783451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751631, 37.347107, 35.595955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923717, 37.486576, 35.262886>,  <29.026970, 37.570259, 35.063046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923717, 37.486576, 35.262886>,  <28.751631, 37.347107, 35.595955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923717, 37.486576, 35.262886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405028, -0.749785, -0.523235,
		-0.806763, 0.562359, -0.181346,
		0.430216, 0.348676, -0.832670,
		29.052782, 37.591179, 35.013084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197437, 37.462914, 35.089302>,  <28.751631, 37.347107, 35.595955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197437, 37.462914, 35.089302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.543718, 37.416756, 34.894470>,  <28.751488, 37.389061, 34.777573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.543718, 37.416756, 34.894470>,  <28.197437, 37.462914, 35.089302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543718, 37.416756, 34.894470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422421, -0.690470, -0.587206,
		-0.268551, 0.714098, -0.646487,
		0.865702, -0.115395, -0.487077,
		28.803429, 37.382137, 34.748348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962996, 37.363750, 34.406258>,  <28.197437, 37.462914, 35.089302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962996, 37.363750, 34.406258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.342453, 37.239552, 34.430470>,  <28.570127, 37.165031, 34.444996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.342453, 37.239552, 34.430470>,  <27.962996, 37.363750, 34.406258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342453, 37.239552, 34.430470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235995, -0.822036, -0.518231,
		0.210667, 0.477333, -0.853096,
		0.948644, -0.310500, 0.060528,
		28.627047, 37.146400, 34.448627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203939, 37.001167, 33.776947>,  <27.962996, 37.363750, 34.406258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203939, 37.001167, 33.776947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.484272, 36.858475, 34.024036>,  <28.652472, 36.772861, 34.172291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.484272, 36.858475, 34.024036>,  <28.203939, 37.001167, 33.776947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484272, 36.858475, 34.024036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131738, -0.915804, -0.379404,
		0.701056, 0.184522, -0.688820,
		0.700832, -0.356727, 0.617721,
		28.694521, 36.751457, 34.209354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751453, 36.661293, 33.345501>,  <28.203939, 37.001167, 33.776947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751453, 36.661293, 33.345501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774567, 36.511642, 33.715733>,  <28.788435, 36.421852, 33.937870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774567, 36.511642, 33.715733>,  <28.751453, 36.661293, 33.345501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774567, 36.511642, 33.715733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056404, -0.926867, -0.371127,
		0.996734, -0.030761, -0.074660,
		0.057784, -0.374126, 0.925576,
		28.791903, 36.399406, 33.993404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180576, 36.215115, 33.314560>,  <28.751453, 36.661293, 33.345501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180576, 36.215115, 33.314560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.032005, 36.084389, 33.662178>,  <28.942862, 36.005955, 33.870747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.032005, 36.084389, 33.662178>,  <29.180576, 36.215115, 33.314560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032005, 36.084389, 33.662178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027334, -0.939445, -0.341608,
		0.928059, -0.103128, 0.357871,
		-0.371429, -0.326815, 0.869041,
		28.920576, 35.986343, 33.922890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576387, 35.598553, 33.539783>,  <29.180576, 36.215115, 33.314560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576387, 35.598553, 33.539783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.243444, 35.584202, 33.761013>,  <29.043678, 35.575592, 33.893753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.243444, 35.584202, 33.761013>,  <29.576387, 35.598553, 33.539783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243444, 35.584202, 33.761013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159272, -0.940325, -0.300700,
		0.530862, -0.338380, 0.776972,
		-0.832357, -0.035881, 0.553077,
		28.993738, 35.573437, 33.926937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613489, 34.847145, 33.970181>,  <29.576387, 35.598553, 33.539783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613489, 34.847145, 33.970181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.258657, 35.014317, 33.891769>,  <29.045759, 35.114620, 33.844723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.258657, 35.014317, 33.891769>,  <29.613489, 34.847145, 33.970181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258657, 35.014317, 33.891769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373783, -0.899497, -0.226255,
		-0.270882, -0.127435, 0.954140,
		-0.887079, 0.417929, -0.196025,
		28.992535, 35.139694, 33.832962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134764, 34.912773, 34.646454>,  <29.613489, 34.847145, 33.970181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134764, 34.912773, 34.646454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.509476, 34.806797, 34.737888>,  <30.734303, 34.743210, 34.792747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.509476, 34.806797, 34.737888>,  <30.134764, 34.912773, 34.646454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509476, 34.806797, 34.737888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134802, 0.876064, 0.462969,
		-0.322917, -0.402885, 0.856392,
		0.936778, -0.264945, 0.228586,
		30.790508, 34.727314, 34.806465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228601, 34.848801, 35.353493>,  <30.134764, 34.912773, 34.646454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228601, 34.848801, 35.353493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.556517, 34.988972, 35.172321>,  <30.753265, 35.073074, 35.063618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.556517, 34.988972, 35.172321>,  <30.228601, 34.848801, 35.353493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556517, 34.988972, 35.172321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041047, 0.752927, 0.656823,
		0.571193, -0.557048, 0.602857,
		0.819789, 0.350427, -0.452932,
		30.802454, 35.094101, 35.036442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720367, 35.051529, 35.914154>,  <30.228601, 34.848801, 35.353493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720367, 35.051529, 35.914154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.849110, 35.245243, 35.588730>,  <30.926355, 35.361473, 35.393475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.849110, 35.245243, 35.588730>,  <30.720367, 35.051529, 35.914154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849110, 35.245243, 35.588730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200822, 0.804807, 0.558530,
		0.925246, -0.343146, 0.161776,
		0.321856, 0.484289, -0.813556,
		30.945667, 35.390530, 35.344662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366285, 35.289177, 36.090462>,  <30.720367, 35.051529, 35.914154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366285, 35.289177, 36.090462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264528, 35.513542, 35.775333>,  <31.203474, 35.648159, 35.586254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264528, 35.513542, 35.775333>,  <31.366285, 35.289177, 36.090462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264528, 35.513542, 35.775333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276065, 0.822846, 0.496703,
		0.926862, -0.091132, -0.364174,
		-0.254393, 0.560910, -0.787822,
		31.188210, 35.681816, 35.538986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825222, 35.713242, 36.032261>,  <31.366285, 35.289177, 36.090462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825222, 35.713242, 36.032261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.558271, 35.923923, 35.821667>,  <31.398102, 36.050335, 35.695309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.558271, 35.923923, 35.821667>,  <31.825222, 35.713242, 36.032261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558271, 35.923923, 35.821667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312208, 0.839713, 0.444307,
		0.676118, 0.132147, -0.724846,
		-0.667376, 0.526707, -0.526487,
		31.358059, 36.081936, 35.663719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208546, 36.248756, 35.677795>,  <31.825222, 35.713242, 36.032261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208546, 36.248756, 35.677795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.829924, 36.370850, 35.719498>,  <31.602751, 36.444103, 35.744518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.829924, 36.370850, 35.719498>,  <32.208546, 36.248756, 35.677795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829924, 36.370850, 35.719498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302576, 0.728314, 0.614822,
		0.111730, 0.613509, -0.781744,
		-0.946554, 0.305231, 0.104259,
		31.545958, 36.462418, 35.750774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233082, 36.914597, 35.523949>,  <32.208546, 36.248756, 35.677795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233082, 36.914597, 35.523949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.904398, 36.863983, 35.746223>,  <31.707188, 36.833614, 35.879589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.904398, 36.863983, 35.746223>,  <32.233082, 36.914597, 35.523949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904398, 36.863983, 35.746223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386004, 0.593771, 0.706001,
		-0.419281, 0.794623, -0.439064,
		-0.821708, -0.126532, 0.555685,
		31.657887, 36.826023, 35.912930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034950, 37.672615, 35.614937>,  <32.233082, 36.914597, 35.523949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034950, 37.672615, 35.614937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.844822, 37.449104, 35.886772>,  <31.730745, 37.314999, 36.049873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.844822, 37.449104, 35.886772>,  <32.034950, 37.672615, 35.614937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844822, 37.449104, 35.886772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299553, 0.623489, 0.722170,
		-0.827246, 0.546835, -0.128975,
		-0.475322, -0.558778, 0.679585,
		31.702225, 37.281471, 36.090649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686361, 38.156033, 36.033009>,  <32.034950, 37.672615, 35.614937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686361, 38.156033, 36.033009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.683901, 37.826340, 36.259495>,  <31.682425, 37.628525, 36.395386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.683901, 37.826340, 36.259495>,  <31.686361, 38.156033, 36.033009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683901, 37.826340, 36.259495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313937, 0.536010, 0.783669,
		-0.949424, 0.182579, 0.255459,
		-0.006153, -0.824232, 0.566219,
		31.682055, 37.579071, 36.429359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362497, 38.412071, 36.609039>,  <31.686361, 38.156033, 36.033009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362497, 38.412071, 36.609039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563480, 38.084190, 36.719040>,  <31.684071, 37.887463, 36.785038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563480, 38.084190, 36.719040>,  <31.362497, 38.412071, 36.609039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563480, 38.084190, 36.719040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245179, 0.440094, 0.863831,
		-0.829109, -0.366617, 0.422102,
		0.502460, -0.819701, 0.274999,
		31.714218, 37.838280, 36.801540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156551, 38.256390, 37.231262>,  <31.362497, 38.412071, 36.609039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156551, 38.256390, 37.231262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.512367, 38.073738, 37.225456>,  <31.725857, 37.964146, 37.221973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.512367, 38.073738, 37.225456>,  <31.156551, 38.256390, 37.231262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512367, 38.073738, 37.225456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247554, 0.455062, 0.855357,
		-0.383975, -0.764467, 0.517836,
		0.889540, -0.456628, -0.014515,
		31.779228, 37.936749, 37.221104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324549, 37.976322, 37.784946>,  <31.156551, 38.256390, 37.231262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324549, 37.976322, 37.784946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.716015, 37.965706, 37.703449>,  <31.950893, 37.959335, 37.654549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.716015, 37.965706, 37.703449>,  <31.324549, 37.976322, 37.784946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716015, 37.965706, 37.703449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200941, 0.330607, 0.922129,
		0.042890, -0.943395, 0.328886,
		0.978664, -0.026537, -0.203746,
		32.009613, 37.957745, 37.642326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653934, 37.884212, 38.372498>,  <31.324549, 37.976322, 37.784946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653934, 37.884212, 38.372498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.971010, 38.003769, 38.159969>,  <32.161255, 38.075504, 38.032452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.971010, 38.003769, 38.159969>,  <31.653934, 37.884212, 38.372498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971010, 38.003769, 38.159969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428492, 0.346778, 0.834350,
		0.433634, -0.889048, 0.146814,
		0.792689, 0.298894, -0.531325,
		32.208817, 38.093437, 38.000572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196045, 37.748383, 38.781010>,  <31.653934, 37.884212, 38.372498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196045, 37.748383, 38.781010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323914, 38.033760, 38.531593>,  <32.400635, 38.204987, 38.381943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323914, 38.033760, 38.531593>,  <32.196045, 37.748383, 38.781010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323914, 38.033760, 38.531593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226983, 0.581250, 0.781426,
		0.919939, -0.391335, 0.023870,
		0.319674, 0.713446, -0.623541,
		32.419815, 38.247795, 38.344532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804054, 37.888371, 39.052959>,  <32.196045, 37.748383, 38.781010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804054, 37.888371, 39.052959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.697662, 38.210560, 38.841125>,  <32.633827, 38.403873, 38.714024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.697662, 38.210560, 38.841125>,  <32.804054, 37.888371, 39.052959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697662, 38.210560, 38.841125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184705, 0.581783, 0.792094,
		0.946118, 0.112863, -0.303517,
		-0.265979, 0.805476, -0.529589,
		32.617870, 38.452202, 38.682247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238667, 38.320999, 39.311401>,  <32.804054, 37.888371, 39.052959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238667, 38.320999, 39.311401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.985859, 38.557892, 39.111473>,  <32.834175, 38.700027, 38.991516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.985859, 38.557892, 39.111473>,  <33.238667, 38.320999, 39.311401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985859, 38.557892, 39.111473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153020, 0.727636, 0.668678,
		0.759699, 0.346132, -0.550500,
		-0.632015, 0.592231, -0.499819,
		32.796253, 38.735561, 38.961529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614796, 38.937614, 39.196266>,  <33.238667, 38.320999, 39.311401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614796, 38.937614, 39.196266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.227676, 39.023968, 39.144489>,  <32.995403, 39.075779, 39.113422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.227676, 39.023968, 39.144489>,  <33.614796, 38.937614, 39.196266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227676, 39.023968, 39.144489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085444, 0.765445, 0.637804,
		0.236770, 0.606208, -0.759244,
		-0.967801, 0.215886, -0.129438,
		32.937336, 39.088734, 39.105659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528542, 39.657818, 39.275948>,  <33.614796, 38.937614, 39.196266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528542, 39.657818, 39.275948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.139442, 39.577137, 39.321674>,  <32.905983, 39.528728, 39.349110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.139442, 39.577137, 39.321674>,  <33.528542, 39.657818, 39.275948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139442, 39.577137, 39.321674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058474, 0.690570, 0.720898,
		-0.224353, 0.694570, -0.683548,
		-0.972752, -0.201705, 0.114317,
		32.847618, 39.516624, 39.355968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172035, 40.206848, 39.267647>,  <33.528542, 39.657818, 39.275948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172035, 40.206848, 39.267647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.964939, 39.939663, 39.481476>,  <32.840679, 39.779354, 39.609776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.964939, 39.939663, 39.481476>,  <33.172035, 40.206848, 39.267647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964939, 39.939663, 39.481476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071124, 0.589075, 0.804942,
		-0.852575, 0.454774, -0.257481,
		-0.517742, -0.667960, 0.534576,
		32.809616, 39.739273, 39.641850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726074, 40.623657, 39.647152>,  <33.172035, 40.206848, 39.267647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726074, 40.623657, 39.647152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.726669, 40.290428, 39.868420>,  <32.727028, 40.090492, 40.001179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.726669, 40.290428, 39.868420>,  <32.726074, 40.623657, 39.647152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726669, 40.290428, 39.868420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028643, 0.552974, 0.832706,
		-0.999589, 0.014602, 0.024687,
		0.001492, -0.833071, 0.553165,
		32.727116, 40.040508, 40.034370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143715, 40.684628, 39.991070>,  <32.726074, 40.623657, 39.647152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143715, 40.684628, 39.991070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.371067, 40.408703, 40.170448>,  <32.507481, 40.243149, 40.278076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.371067, 40.408703, 40.170448>,  <32.143715, 40.684628, 39.991070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371067, 40.408703, 40.170448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053058, 0.574643, 0.816683,
		-0.821052, -0.440394, 0.363217,
		0.568382, -0.689811, 0.448445,
		32.541580, 40.201759, 40.304981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073292, 40.796032, 40.653969>,  <32.143715, 40.684628, 39.991070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073292, 40.796032, 40.653969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.409256, 40.579765, 40.672890>,  <32.610832, 40.450005, 40.684242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.409256, 40.579765, 40.672890>,  <32.073292, 40.796032, 40.653969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409256, 40.579765, 40.672890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311240, 0.551234, 0.774126,
		-0.444618, -0.635471, 0.631261,
		0.839908, -0.540664, 0.047305,
		32.661228, 40.417564, 40.687080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160175, 40.553997, 41.366158>,  <32.073292, 40.796032, 40.653969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160175, 40.553997, 41.366158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.523705, 40.565079, 41.199650>,  <32.741821, 40.571728, 41.099747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.523705, 40.565079, 41.199650>,  <32.160175, 40.553997, 41.366158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523705, 40.565079, 41.199650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392455, 0.281675, 0.875579,
		0.141506, -0.959110, 0.245121,
		0.908821, 0.027700, -0.416266,
		32.796352, 40.573387, 41.074772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907429, 40.402668, 41.526554>,  <32.160175, 40.553997, 41.366158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907429, 40.402668, 41.526554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.901009, 40.583656, 41.883209>,  <32.897156, 40.692249, 42.097202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.901009, 40.583656, 41.883209>,  <32.907429, 40.402668, 41.526554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901009, 40.583656, 41.883209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681613, -0.647482, 0.340839,
		0.731537, 0.613220, -0.298019,
		-0.016048, 0.452470, 0.891635,
		32.896194, 40.719398, 42.150700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.269054, 36.516418, 45.716999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.039478, 36.241997, 45.538147>,  <37.901733, 36.077343, 45.430836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.039478, 36.241997, 45.538147>,  <38.269054, 36.516418, 45.716999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039478, 36.241997, 45.538147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718989, 0.160809, 0.676162,
		-0.391984, 0.709554, -0.585561,
		-0.573937, -0.686057, -0.447127,
		37.867298, 36.036179, 45.404011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532162, 36.718670, 45.658428>,  <38.269054, 36.516418, 45.716999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532162, 36.718670, 45.658428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.499420, 36.320107, 45.649677>,  <37.479774, 36.080971, 45.644428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.499420, 36.320107, 45.649677>,  <37.532162, 36.718670, 45.658428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499420, 36.320107, 45.649677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758539, 0.048043, 0.649854,
		-0.646466, 0.069787, -0.759744,
		-0.081852, -0.996404, -0.021878,
		37.474865, 36.021187, 45.643112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742607, 36.583340, 45.614426>,  <37.532162, 36.718670, 45.658428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742607, 36.583340, 45.614426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.903553, 36.242073, 45.747211>,  <37.000122, 36.037312, 45.826885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.903553, 36.242073, 45.747211>,  <36.742607, 36.583340, 45.614426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903553, 36.242073, 45.747211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707247, -0.059444, 0.704463,
		-0.581293, -0.518236, -0.627320,
		0.402368, -0.853169, 0.331966,
		37.024265, 35.986122, 45.846802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137829, 36.127205, 45.957500>,  <36.742607, 36.583340, 45.614426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137829, 36.127205, 45.957500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461876, 35.946133, 46.106514>,  <36.656303, 35.837490, 46.195923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461876, 35.946133, 46.106514>,  <36.137829, 36.127205, 45.957500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461876, 35.946133, 46.106514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524229, -0.274863, 0.805999,
		-0.262454, -0.848257, -0.459976,
		0.810125, -0.452670, 0.372542,
		36.704910, 35.810326, 46.218273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931072, 35.424648, 46.271385>,  <36.137829, 36.127205, 45.957500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931072, 35.424648, 46.271385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288338, 35.480389, 46.442429>,  <36.502697, 35.513832, 46.545055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288338, 35.480389, 46.442429>,  <35.931072, 35.424648, 46.271385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288338, 35.480389, 46.442429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319333, -0.473001, 0.821156,
		0.316690, -0.869971, -0.377965,
		0.893160, 0.139355, 0.427605,
		36.556286, 35.522194, 46.570709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129642, 34.715363, 46.502445>,  <35.931072, 35.424648, 46.271385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129642, 34.715363, 46.502445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328835, 34.995647, 46.706806>,  <36.448349, 35.163818, 46.829422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328835, 34.995647, 46.706806>,  <36.129642, 34.715363, 46.502445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328835, 34.995647, 46.706806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175679, -0.495413, 0.850707,
		0.849210, -0.513386, -0.123603,
		0.497976, 0.700714, 0.510901,
		36.478226, 35.205860, 46.860077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528984, 34.338467, 47.030861>,  <36.129642, 34.715363, 46.502445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528984, 34.338467, 47.030861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526180, 34.715214, 47.165230>,  <36.524498, 34.941261, 47.245850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526180, 34.715214, 47.165230>,  <36.528984, 34.338467, 47.030861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526180, 34.715214, 47.165230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178226, -0.331726, 0.926387,
		0.983965, -0.053372, 0.170191,
		-0.007014, 0.941865, 0.335919,
		36.524075, 34.997772, 47.266006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918655, 34.348640, 47.656399>,  <36.528984, 34.338467, 47.030861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918655, 34.348640, 47.656399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.696144, 34.679199, 47.691319>,  <36.562637, 34.877533, 47.712273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.696144, 34.679199, 47.691319>,  <36.918655, 34.348640, 47.656399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696144, 34.679199, 47.691319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125825, -0.187608, 0.974152,
		0.821415, 0.530914, 0.208344,
		-0.556278, 0.826398, 0.087302,
		36.529263, 34.927120, 47.717510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059223, 34.503052, 48.294064>,  <36.918655, 34.348640, 47.656399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059223, 34.503052, 48.294064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744877, 34.739239, 48.220558>,  <36.556271, 34.880951, 48.176453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744877, 34.739239, 48.220558>,  <37.059223, 34.503052, 48.294064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744877, 34.739239, 48.220558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236668, -0.012632, 0.971508,
		0.571321, 0.806964, 0.149671,
		-0.785863, 0.590466, -0.183765,
		36.509117, 34.916378, 48.165428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000809, 34.964252, 48.889263>,  <37.059223, 34.503052, 48.294064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000809, 34.964252, 48.889263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.634811, 34.953060, 48.728264>,  <36.415215, 34.946342, 48.631664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.634811, 34.953060, 48.728264>,  <37.000809, 34.964252, 48.889263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634811, 34.953060, 48.728264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386127, -0.228580, 0.893676,
		-0.117012, 0.973123, 0.198344,
		-0.914994, -0.027985, -0.402496,
		36.360313, 34.944664, 48.607513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557934, 35.294914, 49.410061>,  <37.000809, 34.964252, 48.889263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557934, 35.294914, 49.410061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.312374, 35.095074, 49.165596>,  <36.165039, 34.975170, 49.018917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.312374, 35.095074, 49.165596>,  <36.557934, 35.294914, 49.410061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312374, 35.095074, 49.165596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569961, -0.255113, 0.781065,
		-0.546139, 0.827836, -0.128141,
		-0.613903, -0.499606, -0.611161,
		36.128204, 34.945190, 48.982246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814072, 35.545708, 49.420662>,  <36.557934, 35.294914, 49.410061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814072, 35.545708, 49.420662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.830734, 35.163399, 49.304207>,  <35.840733, 34.934013, 49.234333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.830734, 35.163399, 49.304207>,  <35.814072, 35.545708, 49.420662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830734, 35.163399, 49.304207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516632, -0.270022, 0.812514,
		-0.855193, 0.116563, -0.505032,
		0.041661, -0.955772, -0.291142,
		35.843231, 34.876667, 49.216866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237755, 35.209949, 49.535656>,  <35.814072, 35.545708, 49.420662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237755, 35.209949, 49.535656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469524, 34.884796, 49.512024>,  <35.608585, 34.689705, 49.497845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469524, 34.884796, 49.512024>,  <35.237755, 35.209949, 49.535656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469524, 34.884796, 49.512024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085965, -0.011136, 0.996236,
		-0.810481, -0.582321, 0.063427,
		0.579423, -0.812883, -0.059084,
		35.643353, 34.640930, 49.494297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945889, 34.756302, 50.025684>,  <35.237755, 35.209949, 49.535656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945889, 34.756302, 50.025684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336758, 34.709309, 49.954876>,  <35.571278, 34.681110, 49.912392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336758, 34.709309, 49.954876>,  <34.945889, 34.756302, 50.025684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336758, 34.709309, 49.954876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177768, -0.004204, 0.984063,
		-0.116358, -0.993066, 0.016777,
		0.977169, -0.117486, -0.177024,
		35.629910, 34.674065, 49.901768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515331, 35.424706, 50.094387>,  <34.945889, 34.756302, 50.025684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515331, 35.424706, 50.094387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173794, 35.632805, 50.087498>,  <33.968872, 35.757664, 50.083363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173794, 35.632805, 50.087498>,  <34.515331, 35.424706, 50.094387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173794, 35.632805, 50.087498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191065, 0.282448, -0.940062,
		-0.484203, -0.805954, -0.340567,
		-0.853839, 0.520251, -0.017227,
		33.917641, 35.788879, 50.082329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146126, 35.132202, 49.598476>,  <34.515331, 35.424706, 50.094387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146126, 35.132202, 49.598476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.988029, 35.496773, 49.644245>,  <33.893173, 35.715515, 49.671707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.988029, 35.496773, 49.644245>,  <34.146126, 35.132202, 49.598476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988029, 35.496773, 49.644245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057135, 0.148718, -0.987228,
		-0.916801, -0.383650, -0.110853,
		-0.395236, 0.911425, 0.114425,
		33.869457, 35.770199, 49.678574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738419, 35.189072, 49.046448>,  <34.146126, 35.132202, 49.598476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738419, 35.189072, 49.046448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806488, 35.570129, 49.147251>,  <33.847328, 35.798763, 49.207733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806488, 35.570129, 49.147251>,  <33.738419, 35.189072, 49.046448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806488, 35.570129, 49.147251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060500, 0.245158, -0.967593,
		-0.983555, 0.179905, -0.015915,
		0.170173, 0.952644, 0.252011,
		33.857540, 35.855923, 49.222855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209579, 35.650707, 48.750790>,  <33.738419, 35.189072, 49.046448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209579, 35.650707, 48.750790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540421, 35.861786, 48.828190>,  <33.738926, 35.988434, 48.874630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540421, 35.861786, 48.828190>,  <33.209579, 35.650707, 48.750790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540421, 35.861786, 48.828190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018632, 0.318343, -0.947793,
		-0.561748, 0.787523, 0.253469,
		0.827098, 0.527698, 0.193501,
		33.788551, 36.020096, 48.886242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007023, 36.157444, 48.372608>,  <33.209579, 35.650707, 48.750790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007023, 36.157444, 48.372608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392216, 36.234898, 48.447628>,  <33.623333, 36.281368, 48.492641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392216, 36.234898, 48.447628>,  <33.007023, 36.157444, 48.372608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392216, 36.234898, 48.447628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104272, 0.374021, -0.921540,
		-0.248586, 0.906981, 0.339985,
		0.962981, 0.193631, 0.187549,
		33.681110, 36.292988, 48.503891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114471, 36.702034, 48.112682>,  <33.007023, 36.157444, 48.372608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114471, 36.702034, 48.112682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490959, 36.570629, 48.144157>,  <33.716850, 36.491783, 48.163040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490959, 36.570629, 48.144157>,  <33.114471, 36.702034, 48.112682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490959, 36.570629, 48.144157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154285, 0.210835, -0.965269,
		0.300518, 0.920666, 0.249126,
		0.941215, -0.328517, 0.078685,
		33.773323, 36.472073, 48.167763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567600, 37.251980, 47.770546>,  <33.114471, 36.702034, 48.112682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567600, 37.251980, 47.770546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799046, 36.926422, 47.791630>,  <33.937912, 36.731087, 47.804279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799046, 36.926422, 47.791630>,  <33.567600, 37.251980, 47.770546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799046, 36.926422, 47.791630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258265, 0.121537, -0.958399,
		0.773630, 0.568157, 0.280524,
		0.578615, -0.813896, 0.052711,
		33.972630, 36.682255, 47.807442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252953, 37.391174, 47.549797>,  <33.567600, 37.251980, 47.770546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252953, 37.391174, 47.549797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201229, 37.001694, 47.474762>,  <34.170197, 36.768005, 47.429741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201229, 37.001694, 47.474762>,  <34.252953, 37.391174, 47.549797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201229, 37.001694, 47.474762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227156, 0.155055, -0.961435,
		0.965235, -0.166933, 0.201132,
		-0.129309, -0.973700, -0.187584,
		34.162437, 36.709583, 47.418488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803791, 37.285076, 47.040871>,  <34.252953, 37.391174, 47.549797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803791, 37.285076, 47.040871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571033, 36.960850, 47.014408>,  <34.431377, 36.766312, 46.998531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571033, 36.960850, 47.014408>,  <34.803791, 37.285076, 47.040871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571033, 36.960850, 47.014408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028464, 0.101601, -0.994418,
		0.812767, -0.576762, -0.082193,
		-0.581893, -0.810570, -0.066161,
		34.396465, 36.717678, 46.994560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083363, 36.932854, 46.495922>,  <34.803791, 37.285076, 47.040871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083363, 36.932854, 46.495922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739296, 36.734188, 46.542294>,  <34.532856, 36.614990, 46.570118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739296, 36.734188, 46.542294>,  <35.083363, 36.932854, 46.495922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739296, 36.734188, 46.542294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050109, -0.308508, -0.949901,
		0.507544, -0.811265, 0.290255,
		-0.860167, -0.496661, 0.115930,
		34.481247, 36.585190, 46.577072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110779, 36.257229, 46.158993>,  <35.083363, 36.932854, 46.495922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110779, 36.257229, 46.158993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712860, 36.279060, 46.193386>,  <34.474110, 36.292160, 46.214020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712860, 36.279060, 46.193386>,  <35.110779, 36.257229, 46.158993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712860, 36.279060, 46.193386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091027, -0.097945, -0.991020,
		-0.045663, -0.993694, 0.102404,
		-0.994801, 0.054575, 0.085981,
		34.414421, 36.295433, 46.219181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669704, 35.612152, 45.872810>,  <35.110779, 36.257229, 46.158993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669704, 35.612152, 45.872810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.456470, 35.949532, 45.846203>,  <34.328529, 36.151958, 45.830238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.456470, 35.949532, 45.846203>,  <34.669704, 35.612152, 45.872810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456470, 35.949532, 45.846203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148809, -0.170869, -0.973992,
		-0.832874, -0.509319, 0.216599,
		-0.533083, 0.843444, -0.066521,
		34.296547, 36.202564, 45.826248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235859, 35.554268, 45.274406>,  <34.669704, 35.612152, 45.872810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235859, 35.554268, 45.274406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.222767, 35.952065, 45.314236>,  <34.214912, 36.190742, 45.338135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.222767, 35.952065, 45.314236>,  <34.235859, 35.554268, 45.274406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222767, 35.952065, 45.314236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108013, 0.095525, -0.989550,
		-0.993611, -0.043141, 0.104292,
		-0.032727, 0.994492, 0.099574,
		34.212948, 36.250412, 45.344109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756519, 35.818775, 44.725773>,  <34.235859, 35.554268, 45.274406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756519, 35.818775, 44.725773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986301, 36.129505, 44.828957>,  <34.124172, 36.315945, 44.890865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986301, 36.129505, 44.828957>,  <33.756519, 35.818775, 44.725773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986301, 36.129505, 44.828957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129868, 0.224654, -0.965746,
		-0.808168, 0.588278, 0.028169,
		0.574455, 0.776826, 0.257957,
		34.158638, 36.362553, 44.906345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146820, 36.355835, 44.774471>,  <33.756519, 35.818775, 44.725773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146820, 36.355835, 44.774471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786648, 36.278591, 44.618557>,  <32.570545, 36.232243, 44.525009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786648, 36.278591, 44.618557>,  <33.146820, 36.355835, 44.774471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786648, 36.278591, 44.618557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369873, -0.131729, 0.919696,
		-0.228952, 0.972294, 0.047185,
		-0.900430, -0.193114, -0.389785,
		32.516518, 36.220657, 44.501621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705433, 36.761662, 45.036102>,  <33.146820, 36.355835, 44.774471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705433, 36.761662, 45.036102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.463825, 36.466747, 44.915054>,  <32.318863, 36.289799, 44.842426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.463825, 36.466747, 44.915054>,  <32.705433, 36.761662, 45.036102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463825, 36.466747, 44.915054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426934, -0.021294, 0.904032,
		-0.672972, 0.675248, -0.301909,
		-0.604017, -0.737283, -0.302617,
		32.282619, 36.245564, 44.824268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970020, 36.928379, 45.100307>,  <32.705433, 36.761662, 45.036102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970020, 36.928379, 45.100307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.977806, 36.528522, 45.107609>,  <31.982477, 36.288609, 45.111988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.977806, 36.528522, 45.107609>,  <31.970020, 36.928379, 45.100307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977806, 36.528522, 45.107609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489807, 0.006381, 0.871808,
		-0.871614, -0.025909, -0.489508,
		0.019464, -0.999644, 0.018252,
		31.983644, 36.228630, 45.113083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407341, 36.770767, 45.436440>,  <31.970020, 36.928379, 45.100307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407341, 36.770767, 45.436440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.609261, 36.425613, 45.446270>,  <31.730413, 36.218521, 45.452168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.609261, 36.425613, 45.446270>,  <31.407341, 36.770767, 45.436440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609261, 36.425613, 45.446270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282058, -0.137967, 0.949425,
		-0.815855, -0.486203, -0.313029,
		0.504801, -0.862886, 0.024576,
		31.760700, 36.166748, 45.453644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845617, 36.296268, 45.722347>,  <31.407341, 36.770767, 45.436440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845617, 36.296268, 45.722347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.200701, 36.114342, 45.750946>,  <31.413752, 36.005184, 45.768105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.200701, 36.114342, 45.750946>,  <30.845617, 36.296268, 45.722347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200701, 36.114342, 45.750946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275015, -0.399283, 0.874608,
		-0.369238, -0.796062, -0.479529,
		0.887710, -0.454816, 0.071499,
		31.467014, 35.977898, 45.772396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720209, 35.614761, 45.931385>,  <30.845617, 36.296268, 45.722347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720209, 35.614761, 45.931385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093500, 35.688404, 46.054798>,  <31.317474, 35.732590, 46.128845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093500, 35.688404, 46.054798>,  <30.720209, 35.614761, 45.931385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093500, 35.688404, 46.054798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211104, -0.413886, 0.885513,
		0.290727, -0.891517, -0.347383,
		0.933227, 0.184109, 0.308531,
		31.373468, 35.743637, 46.147358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887465, 35.010025, 46.281746>,  <30.720209, 35.614761, 45.931385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887465, 35.010025, 46.281746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.151720, 35.285862, 46.400417>,  <31.310274, 35.451363, 46.471619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.151720, 35.285862, 46.400417>,  <30.887465, 35.010025, 46.281746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151720, 35.285862, 46.400417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143286, -0.272100, 0.951541,
		0.736902, -0.671135, -0.080951,
		0.660640, 0.689593, 0.296675,
		31.349913, 35.492741, 46.489418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551374, 34.611530, 46.155373>,  <30.887465, 35.010025, 46.281746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551374, 34.611530, 46.155373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.498022, 34.216625, 46.120674>,  <31.466011, 33.979683, 46.099857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.498022, 34.216625, 46.120674>,  <31.551374, 34.611530, 46.155373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498022, 34.216625, 46.120674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613642, -0.013541, -0.789468,
		0.778237, -0.158531, 0.607631,
		-0.133383, -0.987261, -0.086743,
		31.458008, 33.920448, 46.094650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168957, 34.337727, 45.758282>,  <31.551374, 34.611530, 46.155373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168957, 34.337727, 45.758282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903742, 34.039791, 45.728344>,  <31.744614, 33.861031, 45.710381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903742, 34.039791, 45.728344>,  <32.168957, 34.337727, 45.758282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903742, 34.039791, 45.728344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438745, -0.305646, -0.845035,
		0.606538, -0.593125, 0.529448,
		-0.663035, -0.744838, -0.074845,
		31.704832, 33.816341, 45.705891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530437, 33.801769, 45.538940>,  <32.168957, 34.337727, 45.758282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530437, 33.801769, 45.538940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.159401, 33.677910, 45.455326>,  <31.936779, 33.603596, 45.405159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.159401, 33.677910, 45.455326>,  <32.530437, 33.801769, 45.538940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159401, 33.677910, 45.455326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325734, -0.396294, -0.858399,
		0.182960, -0.864332, 0.468461,
		-0.927590, -0.309646, -0.209036,
		31.881124, 33.585014, 45.392616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699398, 33.061012, 45.294392>,  <32.530437, 33.801769, 45.538940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699398, 33.061012, 45.294392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.338005, 33.170650, 45.162579>,  <32.121170, 33.236435, 45.083488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.338005, 33.170650, 45.162579>,  <32.699398, 33.061012, 45.294392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338005, 33.170650, 45.162579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231050, -0.336124, -0.913037,
		-0.361032, -0.901048, 0.240349,
		-0.903478, 0.274103, -0.329539,
		32.066959, 33.252880, 45.063717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407501, 32.606709, 44.705029>,  <32.699398, 33.061012, 45.294392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407501, 32.606709, 44.705029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.170753, 32.928280, 44.681767>,  <32.028706, 33.121223, 44.667809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.170753, 32.928280, 44.681767>,  <32.407501, 32.606709, 44.705029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170753, 32.928280, 44.681767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033044, -0.047887, -0.998306,
		-0.805355, -0.592790, 0.001778,
		-0.591871, 0.803932, -0.058155,
		31.993193, 33.169460, 44.664322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864922, 32.454250, 44.120781>,  <32.407501, 32.606709, 44.705029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864922, 32.454250, 44.120781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.922070, 32.847301, 44.168167>,  <31.956358, 33.083130, 44.196598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.922070, 32.847301, 44.168167>,  <31.864922, 32.454250, 44.120781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922070, 32.847301, 44.168167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287625, 0.073309, -0.954933,
		-0.947027, 0.170504, -0.272154,
		0.142869, 0.982626, 0.118467,
		31.964930, 33.142090, 44.203709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581850, 32.758812, 43.475342>,  <31.864922, 32.454250, 44.120781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581850, 32.758812, 43.475342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.817865, 33.028419, 43.653130>,  <31.959475, 33.190186, 43.759800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.817865, 33.028419, 43.653130>,  <31.581850, 32.758812, 43.475342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817865, 33.028419, 43.653130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412393, 0.221674, -0.883625,
		-0.694107, 0.704669, -0.147164,
		0.590040, 0.674019, 0.444466,
		31.994877, 33.230625, 43.786469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.480038, 31.153065, 48.595413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460106, 31.543865, 48.678349>,  <35.448147, 31.778345, 48.728107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460106, 31.543865, 48.678349>,  <35.480038, 31.153065, 48.595413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460106, 31.543865, 48.678349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183371, 0.213014, -0.959687,
		-0.981780, -0.009798, -0.189768,
		-0.049827, 0.977000, 0.207336,
		35.445156, 31.836966, 48.740551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022099, 31.521477, 48.014149>,  <35.480038, 31.153065, 48.595413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022099, 31.521477, 48.014149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.278072, 31.769632, 48.195518>,  <35.431656, 31.918526, 48.304340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.278072, 31.769632, 48.195518>,  <35.022099, 31.521477, 48.014149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278072, 31.769632, 48.195518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300048, 0.341491, -0.890705,
		-0.707426, 0.706045, 0.032386,
		0.639937, 0.620390, 0.453427,
		35.470055, 31.955750, 48.331547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015434, 32.116455, 47.618816>,  <35.022099, 31.521477, 48.014149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015434, 32.116455, 47.618816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.338673, 32.212463, 47.833988>,  <35.532616, 32.270069, 47.963093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.338673, 32.212463, 47.833988>,  <35.015434, 32.116455, 47.618816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338673, 32.212463, 47.833988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459047, 0.315664, -0.830441,
		-0.369126, 0.918013, 0.144908,
		0.808097, 0.240018, 0.537931,
		35.581100, 32.284470, 47.995369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246696, 32.847866, 47.452755>,  <35.015434, 32.116455, 47.618816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246696, 32.847866, 47.452755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.558212, 32.627155, 47.572109>,  <35.745121, 32.494728, 47.643723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.558212, 32.627155, 47.572109>,  <35.246696, 32.847866, 47.452755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558212, 32.627155, 47.572109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523633, 0.309932, -0.793569,
		0.345392, 0.774266, 0.530299,
		0.778790, -0.551774, 0.298383,
		35.791851, 32.461624, 47.661625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850792, 33.219460, 47.174385>,  <35.246696, 32.847866, 47.452755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850792, 33.219460, 47.174385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.035782, 32.889736, 47.305008>,  <36.146774, 32.691902, 47.383381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.035782, 32.889736, 47.305008>,  <35.850792, 33.219460, 47.174385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035782, 32.889736, 47.305008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671520, 0.085148, -0.736078,
		0.578949, 0.559703, 0.592917,
		0.462471, -0.824307, 0.326555,
		36.174522, 32.642445, 47.402973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534863, 33.369099, 47.196514>,  <35.850792, 33.219460, 47.174385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534863, 33.369099, 47.196514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.516319, 32.971455, 47.157337>,  <36.505196, 32.732868, 47.133831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.516319, 32.971455, 47.157337>,  <36.534863, 33.369099, 47.196514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516319, 32.971455, 47.157337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701355, 0.037429, -0.711829,
		0.711304, -0.101691, 0.695490,
		-0.046355, -0.994112, -0.097945,
		36.502411, 32.673222, 47.127953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130585, 33.200848, 47.039787>,  <36.534863, 33.369099, 47.196514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130585, 33.200848, 47.039787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.919437, 32.883766, 46.917816>,  <36.792747, 32.693520, 46.844635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.919437, 32.883766, 46.917816>,  <37.130585, 33.200848, 47.039787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919437, 32.883766, 46.917816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547489, -0.043117, -0.835701,
		0.649313, -0.608085, 0.456755,
		-0.527872, -0.792700, -0.304923,
		36.761074, 32.645958, 46.826340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652519, 32.671223, 46.737267>,  <37.130585, 33.200848, 47.039787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652519, 32.671223, 46.737267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.295040, 32.624798, 46.563908>,  <37.080551, 32.596943, 46.459892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.295040, 32.624798, 46.563908>,  <37.652519, 32.671223, 46.737267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295040, 32.624798, 46.563908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448359, -0.195259, -0.872266,
		0.016617, -0.973860, 0.226542,
		-0.893699, -0.116067, -0.433394,
		37.026932, 32.589977, 46.433887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887012, 32.165173, 46.291706>,  <37.652519, 32.671223, 46.737267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887012, 32.165173, 46.291706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.533455, 32.311409, 46.175037>,  <37.321320, 32.399151, 46.105034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.533455, 32.311409, 46.175037>,  <37.887012, 32.165173, 46.291706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533455, 32.311409, 46.175037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284059, -0.075787, -0.955807,
		-0.371539, -0.927686, -0.036861,
		-0.883894, 0.365590, -0.291676,
		37.268288, 32.421085, 46.087536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663052, 31.682564, 45.810593>,  <37.887012, 32.165173, 46.291706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663052, 31.682564, 45.810593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.445923, 32.012058, 45.745106>,  <37.315647, 32.209755, 45.705814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.445923, 32.012058, 45.745106>,  <37.663052, 31.682564, 45.810593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445923, 32.012058, 45.745106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098760, -0.130972, -0.986455,
		-0.834021, -0.551637, -0.010257,
		-0.542822, 0.823737, -0.163713,
		37.283077, 32.259178, 45.695992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259285, 31.505821, 45.316879>,  <37.663052, 31.682564, 45.810593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259285, 31.505821, 45.316879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.257160, 31.905550, 45.302319>,  <37.255886, 32.145386, 45.293583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.257160, 31.905550, 45.302319>,  <37.259285, 31.505821, 45.316879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257160, 31.905550, 45.302319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008668, -0.036351, -0.999301,
		-0.999948, -0.005627, -0.008469,
		-0.005315, 0.999323, -0.036398,
		37.255566, 32.205345, 45.291401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707237, 31.750820, 44.870560>,  <37.259285, 31.505821, 45.316879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707237, 31.750820, 44.870560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.971210, 32.050175, 44.897114>,  <37.129593, 32.229790, 44.913044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.971210, 32.050175, 44.897114>,  <36.707237, 31.750820, 44.870560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971210, 32.050175, 44.897114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017640, 0.072895, -0.997184,
		-0.751119, 0.659243, 0.034904,
		0.659931, 0.748388, 0.066382,
		37.169189, 32.274693, 44.917030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982010, 31.894878, 44.759140>,  <36.707237, 31.750820, 44.870560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982010, 31.894878, 44.759140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.684414, 31.680031, 44.600151>,  <35.505856, 31.551123, 44.504757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.684414, 31.680031, 44.600151>,  <35.982010, 31.894878, 44.759140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684414, 31.680031, 44.600151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492125, 0.038094, 0.869691,
		-0.451988, 0.842645, -0.292672,
		-0.743989, -0.537120, -0.397469,
		35.461216, 31.518894, 44.480911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324650, 32.160439, 44.921539>,  <35.982010, 31.894878, 44.759140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324650, 32.160439, 44.921539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.279293, 31.767872, 44.859627>,  <35.252079, 31.532331, 44.822479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.279293, 31.767872, 44.859627>,  <35.324650, 32.160439, 44.921539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279293, 31.767872, 44.859627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405834, -0.096444, 0.908844,
		-0.906886, 0.165867, -0.387359,
		-0.113389, -0.981421, -0.154778,
		35.245277, 31.473446, 44.813194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677853, 32.080406, 45.221741>,  <35.324650, 32.160439, 44.921539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677853, 32.080406, 45.221741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.794247, 31.702906, 45.158924>,  <34.864082, 31.476406, 45.121235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.794247, 31.702906, 45.158924>,  <34.677853, 32.080406, 45.221741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794247, 31.702906, 45.158924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717474, -0.323841, 0.616732,
		-0.632899, -0.066784, -0.771349,
		0.290982, -0.943752, -0.157043,
		34.881542, 31.419781, 45.111813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106483, 31.684351, 45.221455>,  <34.677853, 32.080406, 45.221741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106483, 31.684351, 45.221455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371571, 31.391422, 45.284069>,  <34.530624, 31.215666, 45.321640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371571, 31.391422, 45.284069>,  <34.106483, 31.684351, 45.221455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371571, 31.391422, 45.284069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657930, -0.469546, 0.588775,
		-0.357669, -0.493186, -0.792994,
		0.662723, -0.732321, 0.156540,
		34.570389, 31.171726, 45.331032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714600, 31.152075, 45.339027>,  <34.106483, 31.684351, 45.221455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714600, 31.152075, 45.339027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051006, 31.024794, 45.514042>,  <34.252850, 30.948425, 45.619053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051006, 31.024794, 45.514042>,  <33.714600, 31.152075, 45.339027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051006, 31.024794, 45.514042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540754, -0.469479, 0.697979,
		-0.016683, -0.823612, -0.566909,
		0.841016, -0.318202, 0.437538,
		34.303310, 30.929333, 45.645302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716282, 30.383837, 45.319977>,  <33.714600, 31.152075, 45.339027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716282, 30.383837, 45.319977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.954956, 30.533325, 45.604034>,  <34.098160, 30.623018, 45.774467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.954956, 30.533325, 45.604034>,  <33.716282, 30.383837, 45.319977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954956, 30.533325, 45.604034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656628, -0.281340, 0.699777,
		0.461314, -0.883843, 0.077527,
		0.596681, 0.373723, 0.710142,
		34.133961, 30.645443, 45.817078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615883, 29.967382, 45.787727>,  <33.716282, 30.383837, 45.319977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615883, 29.967382, 45.787727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.789925, 30.272133, 45.979656>,  <33.894352, 30.454983, 46.094814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.789925, 30.272133, 45.979656>,  <33.615883, 29.967382, 45.787727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789925, 30.272133, 45.979656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504268, -0.235290, 0.830874,
		0.745920, -0.603477, 0.281814,
		0.435106, 0.761875, 0.479822,
		33.920456, 30.500696, 46.123604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609470, 29.740688, 46.474281>,  <33.615883, 29.967382, 45.787727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609470, 29.740688, 46.474281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.734383, 30.114058, 46.544933>,  <33.809330, 30.338079, 46.587326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.734383, 30.114058, 46.544933>,  <33.609470, 29.740688, 46.474281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734383, 30.114058, 46.544933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560265, 0.030810, 0.827740,
		0.767190, -0.357450, 0.532587,
		0.312285, 0.933424, 0.176630,
		33.828068, 30.394085, 46.597923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828201, 29.625101, 47.200451>,  <33.609470, 29.740688, 46.474281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828201, 29.625101, 47.200451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.792179, 30.012259, 47.106586>,  <33.770565, 30.244553, 47.050266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.792179, 30.012259, 47.106586>,  <33.828201, 29.625101, 47.200451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792179, 30.012259, 47.106586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501490, 0.159500, 0.850334,
		0.860464, 0.194262, 0.471025,
		-0.090059, 0.967896, -0.234664,
		33.765160, 30.302628, 47.036186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007088, 30.096304, 47.723808>,  <33.828201, 29.625101, 47.200451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007088, 30.096304, 47.723808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.758282, 30.331758, 47.517277>,  <33.608997, 30.473032, 47.393356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.758282, 30.331758, 47.517277>,  <34.007088, 30.096304, 47.723808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758282, 30.331758, 47.517277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495486, 0.214695, 0.841665,
		0.606290, 0.779366, 0.158117,
		-0.622018, 0.588637, -0.516333,
		33.571678, 30.508350, 47.362377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880806, 30.649593, 48.168285>,  <34.007088, 30.096304, 47.723808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880806, 30.649593, 48.168285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.597343, 30.650917, 47.886066>,  <33.427265, 30.651711, 47.716736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.597343, 30.650917, 47.886066>,  <33.880806, 30.649593, 48.168285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597343, 30.650917, 47.886066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681923, 0.253437, 0.686112,
		0.181083, 0.967346, -0.177343,
		-0.708653, 0.003309, -0.705549,
		33.384747, 30.651911, 47.674400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583233, 31.283861, 48.193176>,  <33.880806, 30.649593, 48.168285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583233, 31.283861, 48.193176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.324409, 31.014896, 48.049408>,  <33.169117, 30.853518, 47.963146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.324409, 31.014896, 48.049408>,  <33.583233, 31.283861, 48.193176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324409, 31.014896, 48.049408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684165, 0.304003, 0.662948,
		-0.336510, 0.674866, -0.656748,
		-0.647054, -0.672413, -0.359420,
		33.130295, 30.813173, 47.941582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895302, 31.575615, 48.265972>,  <33.583233, 31.283861, 48.193176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895302, 31.575615, 48.265972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.805084, 31.187740, 48.228367>,  <32.750954, 30.955015, 48.205803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.805084, 31.187740, 48.228367>,  <32.895302, 31.575615, 48.265972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805084, 31.187740, 48.228367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816858, 0.135642, 0.560664,
		-0.530916, 0.203251, -0.822689,
		-0.225547, -0.969685, -0.094012,
		32.737419, 30.896835, 48.200165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218178, 31.611153, 48.229546>,  <32.895302, 31.575615, 48.265972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218178, 31.611153, 48.229546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.297104, 31.228680, 48.316063>,  <32.344460, 30.999195, 48.367973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.297104, 31.228680, 48.316063>,  <32.218178, 31.611153, 48.229546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297104, 31.228680, 48.316063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809961, -0.034710, 0.585456,
		-0.552295, -0.290709, -0.781318,
		0.197317, -0.956182, 0.216293,
		32.356300, 30.941826, 48.380951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555882, 32.209103, 47.789803>,  <32.218178, 31.611153, 48.229546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555882, 32.209103, 47.789803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.188560, 32.180439, 47.945538>,  <31.968168, 32.163242, 48.038979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.188560, 32.180439, 47.945538>,  <32.555882, 32.209103, 47.789803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188560, 32.180439, 47.945538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393002, 0.283381, -0.874783,
		-0.047648, -0.956327, -0.288390,
		-0.918303, -0.071656, 0.389341,
		31.913071, 32.158943, 48.062340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046379, 31.841696, 47.347290>,  <32.555882, 32.209103, 47.789803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046379, 31.841696, 47.347290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864840, 32.112637, 47.578880>,  <31.755915, 32.275200, 47.717834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864840, 32.112637, 47.578880>,  <32.046379, 31.841696, 47.347290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864840, 32.112637, 47.578880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478073, 0.363227, -0.799695,
		-0.751975, -0.639736, 0.158973,
		-0.453850, 0.677351, 0.578979,
		31.728685, 32.315842, 47.752575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381958, 31.830362, 47.094559>,  <32.046379, 31.841696, 47.347290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381958, 31.830362, 47.094559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.406466, 32.170261, 47.304005>,  <31.421169, 32.374203, 47.429672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.406466, 32.170261, 47.304005>,  <31.381958, 31.830362, 47.094559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406466, 32.170261, 47.304005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498800, 0.480464, -0.721355,
		-0.864549, -0.216982, 0.453293,
		0.061270, 0.849749, 0.523615,
		31.424847, 32.425186, 47.461090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769844, 32.171898, 46.938683>,  <31.381958, 31.830362, 47.094559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769844, 32.171898, 46.938683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.001429, 32.471149, 47.068367>,  <31.140379, 32.650700, 47.146179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.001429, 32.471149, 47.068367>,  <30.769844, 32.171898, 46.938683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001429, 32.471149, 47.068367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405618, 0.609208, -0.681425,
		-0.707302, 0.263013, 0.656161,
		0.578963, 0.748124, 0.324211,
		31.175117, 32.695587, 47.165630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398335, 32.709732, 47.126671>,  <30.769844, 32.171898, 46.938683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398335, 32.709732, 47.126671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.756464, 32.830910, 46.996059>,  <30.971342, 32.903614, 46.917694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.756464, 32.830910, 46.996059>,  <30.398335, 32.709732, 47.126671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756464, 32.830910, 46.996059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445287, 0.591382, -0.672300,
		-0.010566, 0.747325, 0.664375,
		0.895326, 0.302941, -0.326526,
		31.025063, 32.921791, 46.898102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604452, 33.353737, 47.203598>,  <30.398335, 32.709732, 47.126671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604452, 33.353737, 47.203598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.768421, 33.215340, 46.866016>,  <30.866802, 33.132301, 46.663467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.768421, 33.215340, 46.866016>,  <30.604452, 33.353737, 47.203598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768421, 33.215340, 46.866016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501824, 0.687091, -0.525432,
		0.761666, 0.638901, 0.108026,
		0.409922, -0.345994, -0.843950,
		30.891397, 33.111542, 46.612831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846693, 33.988670, 46.717152>,  <30.604452, 33.353737, 47.203598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846693, 33.988670, 46.717152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.710310, 33.656189, 46.541492>,  <30.628479, 33.456699, 46.436096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.710310, 33.656189, 46.541492>,  <30.846693, 33.988670, 46.717152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710310, 33.656189, 46.541492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505438, 0.555966, -0.659874,
		0.792641, -0.003026, -0.609681,
		-0.340959, -0.831199, -0.439152,
		30.608023, 33.406830, 46.409748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190378, 34.659077, 46.864037>,  <30.846693, 33.988670, 46.717152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190378, 34.659077, 46.864037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.274603, 35.046120, 46.919743>,  <31.325138, 35.278347, 46.953167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.274603, 35.046120, 46.919743>,  <31.190378, 34.659077, 46.864037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274603, 35.046120, 46.919743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014140, -0.139427, 0.990131,
		0.977478, -0.210453, -0.015676,
		0.210562, 0.967610, 0.139263,
		31.337772, 35.336403, 46.961521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705849, 34.639412, 47.212013>,  <31.190378, 34.659077, 46.864037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705849, 34.639412, 47.212013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.577793, 35.009830, 47.291958>,  <31.500959, 35.232082, 47.339924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.577793, 35.009830, 47.291958>,  <31.705849, 34.639412, 47.212013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577793, 35.009830, 47.291958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105800, -0.174692, 0.978922,
		0.941444, 0.334538, -0.042050,
		-0.320141, 0.926049, 0.199857,
		31.481750, 35.287643, 47.351913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183365, 34.917160, 47.748016>,  <31.705849, 34.639412, 47.212013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183365, 34.917160, 47.748016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.847540, 35.134365, 47.741356>,  <31.646046, 35.264690, 47.737362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.847540, 35.134365, 47.741356>,  <32.183365, 34.917160, 47.748016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847540, 35.134365, 47.741356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094529, -0.115838, 0.988760,
		0.534983, 0.831695, 0.148583,
		-0.839558, 0.543015, -0.016648,
		31.595673, 35.297268, 47.736362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316036, 35.298500, 48.180416>,  <32.183365, 34.917160, 47.748016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316036, 35.298500, 48.180416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.919127, 35.340614, 48.154160>,  <31.680981, 35.365883, 48.138405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.919127, 35.340614, 48.154160>,  <32.316036, 35.298500, 48.180416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919127, 35.340614, 48.154160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070979, -0.047801, 0.996332,
		0.101761, 0.993293, 0.054904,
		-0.992274, 0.105285, -0.065639,
		31.621445, 35.372200, 48.134468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265545, 35.750618, 48.724304>,  <32.316036, 35.298500, 48.180416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265545, 35.750618, 48.724304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.921095, 35.558418, 48.657879>,  <31.714424, 35.443096, 48.618023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.921095, 35.558418, 48.657879>,  <32.265545, 35.750618, 48.724304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921095, 35.558418, 48.657879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063607, -0.222252, 0.972912,
		-0.504395, 0.848364, 0.160824,
		-0.861127, -0.480502, -0.166065,
		31.662756, 35.414268, 48.608059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856552, 35.982170, 49.215919>,  <32.265545, 35.750618, 48.724304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856552, 35.982170, 49.215919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.686754, 35.635715, 49.110382>,  <31.584875, 35.427841, 49.047062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.686754, 35.635715, 49.110382>,  <31.856552, 35.982170, 49.215919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686754, 35.635715, 49.110382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204332, -0.192241, 0.959839,
		-0.882074, 0.461357, -0.095374,
		-0.424493, -0.866137, -0.263841,
		31.559406, 35.375874, 49.031231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166676, 36.010014, 49.395344>,  <31.856552, 35.982170, 49.215919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166676, 36.010014, 49.395344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.292658, 35.630371, 49.396049>,  <31.368248, 35.402584, 49.396473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.292658, 35.630371, 49.396049>,  <31.166676, 36.010014, 49.395344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292658, 35.630371, 49.396049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224206, -0.072597, 0.971834,
		-0.922245, -0.306479, -0.235660,
		0.314955, -0.949105, 0.001762,
		31.387144, 35.345638, 49.396580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695553, 35.755516, 49.856819>,  <31.166676, 36.010014, 49.395344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695553, 35.755516, 49.856819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.961374, 35.459133, 49.818153>,  <31.120867, 35.281303, 49.794952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.961374, 35.459133, 49.818153>,  <30.695553, 35.755516, 49.856819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961374, 35.459133, 49.818153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254427, -0.346006, 0.903076,
		-0.702591, -0.575550, -0.418460,
		0.664555, -0.740960, -0.096665,
		31.160742, 35.236847, 49.789154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335667, 35.150974, 49.911877>,  <30.695553, 35.755516, 49.856819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335667, 35.150974, 49.911877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.710770, 35.060966, 50.017693>,  <30.935831, 35.006962, 50.081181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.710770, 35.060966, 50.017693>,  <30.335667, 35.150974, 49.911877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710770, 35.060966, 50.017693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335448, -0.389632, 0.857707,
		-0.089930, -0.893058, -0.440862,
		0.937756, -0.225020, 0.264535,
		30.992096, 34.993462, 50.097054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.453568, 37.407120, 34.766693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847755, 37.391224, 34.832756>,  <36.084267, 37.381687, 34.872395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847755, 37.391224, 34.832756>,  <35.453568, 37.407120, 34.766693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847755, 37.391224, 34.832756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169584, -0.287049, 0.942785,
		0.009944, -0.957091, -0.289616,
		0.985465, -0.039739, 0.165162,
		36.143394, 37.379303, 34.882305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692677, 36.746902, 35.005985>,  <35.453568, 37.407120, 34.766693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692677, 36.746902, 35.005985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937954, 37.024033, 35.157764>,  <36.085121, 37.190311, 35.248833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937954, 37.024033, 35.157764>,  <35.692677, 36.746902, 35.005985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937954, 37.024033, 35.157764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166483, -0.356221, 0.919451,
		0.772190, -0.626973, -0.103088,
		0.613193, 0.692829, 0.379450,
		36.121910, 37.231880, 35.271599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975288, 36.450989, 35.601028>,  <35.692677, 36.746902, 35.005985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975288, 36.450989, 35.601028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062649, 36.836517, 35.662151>,  <36.115067, 37.067833, 35.698826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062649, 36.836517, 35.662151>,  <35.975288, 36.450989, 35.601028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062649, 36.836517, 35.662151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063804, -0.142152, 0.987786,
		0.973770, -0.225488, 0.030448,
		0.218405, 0.963820, 0.152811,
		36.128170, 37.125664, 35.707996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538910, 36.420132, 36.103626>,  <35.975288, 36.450989, 35.601028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538910, 36.420132, 36.103626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362362, 36.776104, 36.149616>,  <36.256432, 36.989685, 36.177208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362362, 36.776104, 36.149616>,  <36.538910, 36.420132, 36.103626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362362, 36.776104, 36.149616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158890, -0.203614, 0.966072,
		0.883145, 0.408129, 0.231270,
		-0.441372, 0.889928, 0.114973,
		36.229950, 37.043083, 36.184109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781914, 36.609013, 36.661983>,  <36.538910, 36.420132, 36.103626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781914, 36.609013, 36.661983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470779, 36.856236, 36.616405>,  <36.284100, 37.004570, 36.589058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470779, 36.856236, 36.616405>,  <36.781914, 36.609013, 36.661983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470779, 36.856236, 36.616405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230630, -0.112053, 0.966568,
		0.584625, 0.778108, 0.229700,
		-0.777833, 0.618056, -0.113946,
		36.237431, 37.041653, 36.582222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762959, 37.008133, 37.199329>,  <36.781914, 36.609013, 36.661983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762959, 37.008133, 37.199329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384216, 37.027744, 37.072174>,  <36.156971, 37.039513, 36.995880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384216, 37.027744, 37.072174>,  <36.762959, 37.008133, 37.199329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384216, 37.027744, 37.072174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318542, -0.279948, 0.905627,
		-0.044587, 0.958762, 0.280691,
		-0.946860, 0.049033, -0.317888,
		36.100159, 37.042454, 36.976807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435902, 37.371136, 37.711636>,  <36.762959, 37.008133, 37.199329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435902, 37.371136, 37.711636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139076, 37.193520, 37.510769>,  <35.960983, 37.086948, 37.390247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139076, 37.193520, 37.510769>,  <36.435902, 37.371136, 37.711636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139076, 37.193520, 37.510769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502425, -0.127489, 0.855170,
		-0.443751, 0.886891, -0.128492,
		-0.742061, -0.444040, -0.502170,
		35.916458, 37.060307, 37.360119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787685, 37.549294, 38.031067>,  <36.435902, 37.371136, 37.711636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787685, 37.549294, 38.031067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671391, 37.217201, 37.840832>,  <35.601612, 37.017944, 37.726692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671391, 37.217201, 37.840832>,  <35.787685, 37.549294, 38.031067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671391, 37.217201, 37.840832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438514, -0.326159, 0.837452,
		-0.850397, 0.452032, -0.269242,
		-0.290740, -0.830234, -0.475587,
		35.584167, 36.968132, 37.698154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091747, 37.377773, 38.252495>,  <35.787685, 37.549294, 38.031067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091747, 37.377773, 38.252495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209805, 37.027836, 38.098854>,  <35.280640, 36.817871, 38.006672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209805, 37.027836, 38.098854>,  <35.091747, 37.377773, 38.252495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209805, 37.027836, 38.098854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426325, -0.480354, 0.766490,
		-0.855065, -0.062476, -0.514744,
		0.295147, -0.874846, -0.384099,
		35.298347, 36.765381, 37.983624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479099, 37.008850, 38.076004>,  <35.091747, 37.377773, 38.252495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479099, 37.008850, 38.076004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774517, 36.746124, 38.136860>,  <34.951767, 36.588490, 38.173374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774517, 36.746124, 38.136860>,  <34.479099, 37.008850, 38.076004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774517, 36.746124, 38.136860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608206, -0.551696, 0.570716,
		-0.290920, -0.514032, -0.806931,
		0.738547, -0.656813, 0.152138,
		34.996082, 36.549080, 38.182503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208210, 36.362736, 37.892910>,  <34.479099, 37.008850, 38.076004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208210, 36.362736, 37.892910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514553, 36.287758, 38.138947>,  <34.698357, 36.242771, 38.286568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514553, 36.287758, 38.138947>,  <34.208210, 36.362736, 37.892910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514553, 36.287758, 38.138947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610233, -0.513397, 0.603356,
		0.202688, -0.837429, -0.507572,
		0.765854, -0.187444, 0.615087,
		34.744308, 36.231525, 38.323471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181286, 35.633728, 38.106453>,  <34.208210, 36.362736, 37.892910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181286, 35.633728, 38.106453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396034, 35.821041, 38.387157>,  <34.524883, 35.933430, 38.555580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396034, 35.821041, 38.387157>,  <34.181286, 35.633728, 38.106453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396034, 35.821041, 38.387157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690424, -0.234167, 0.684457,
		0.484852, -0.851982, 0.197598,
		0.536874, 0.468287, 0.701764,
		34.557095, 35.961529, 38.597687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295532, 34.887871, 38.320236>,  <34.181286, 35.633728, 38.106453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295532, 34.887871, 38.320236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150749, 34.517105, 38.280598>,  <34.063881, 34.294647, 38.256813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150749, 34.517105, 38.280598>,  <34.295532, 34.887871, 38.320236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150749, 34.517105, 38.280598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335805, -0.030481, -0.941438,
		0.869612, -0.374034, 0.322295,
		-0.361954, -0.926914, -0.099096,
		34.042164, 34.239033, 38.250870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811619, 34.477921, 37.940643>,  <34.295532, 34.887871, 38.320236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811619, 34.477921, 37.940643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484867, 34.253422, 37.887428>,  <34.288815, 34.118721, 37.855499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484867, 34.253422, 37.887428>,  <34.811619, 34.477921, 37.940643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484867, 34.253422, 37.887428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226110, -0.099396, -0.969017,
		0.530638, -0.821656, 0.208099,
		-0.816883, -0.561251, -0.133041,
		34.239803, 34.085045, 37.847515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085747, 34.015903, 37.478745>,  <34.811619, 34.477921, 37.940643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085747, 34.015903, 37.478745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686451, 33.997715, 37.463482>,  <34.446873, 33.986801, 37.454323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686451, 33.997715, 37.463482>,  <35.085747, 34.015903, 37.478745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686451, 33.997715, 37.463482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046331, -0.195017, -0.979705,
		0.037109, -0.979745, 0.196780,
		-0.998237, -0.045473, -0.038156,
		34.386978, 33.984074, 37.452034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909973, 33.431541, 37.046677>,  <35.085747, 34.015903, 37.478745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909973, 33.431541, 37.046677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593029, 33.675404, 37.037861>,  <34.402863, 33.821720, 37.032574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593029, 33.675404, 37.037861>,  <34.909973, 33.431541, 37.046677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593029, 33.675404, 37.037861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094324, -0.158120, -0.982904,
		-0.602718, -0.776735, 0.182794,
		-0.792360, 0.609656, -0.022037,
		34.355320, 33.858299, 37.031250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370937, 33.102695, 36.596371>,  <34.909973, 33.431541, 37.046677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370937, 33.102695, 36.596371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275150, 33.490845, 36.583569>,  <34.217678, 33.723736, 36.575886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275150, 33.490845, 36.583569>,  <34.370937, 33.102695, 36.596371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275150, 33.490845, 36.583569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131721, -0.065134, -0.989145,
		-0.961928, -0.232649, 0.143416,
		-0.239464, 0.970378, -0.032009,
		34.203312, 33.781960, 36.573967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754913, 33.179832, 36.166740>,  <34.370937, 33.102695, 36.596371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754913, 33.179832, 36.166740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926163, 33.540241, 36.138821>,  <34.028912, 33.756485, 36.122066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926163, 33.540241, 36.138821>,  <33.754913, 33.179832, 36.166740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926163, 33.540241, 36.138821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064261, -0.107395, -0.992138,
		-0.901434, 0.420270, -0.103879,
		0.428122, 0.901021, -0.069802,
		34.054600, 33.810547, 36.117882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486126, 33.381149, 35.590916>,  <33.754913, 33.179832, 36.166740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486126, 33.381149, 35.590916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778748, 33.649899, 35.637241>,  <33.954319, 33.811150, 35.665035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778748, 33.649899, 35.637241>,  <33.486126, 33.381149, 35.590916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778748, 33.649899, 35.637241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121619, 0.038540, -0.991828,
		-0.670850, 0.739659, -0.053519,
		0.731553, 0.671877, 0.115811,
		33.998215, 33.851463, 35.671986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326885, 33.894318, 35.138809>,  <33.486126, 33.381149, 35.590916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326885, 33.894318, 35.138809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702797, 33.980705, 35.244766>,  <33.928345, 34.032539, 35.308342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702797, 33.980705, 35.244766>,  <33.326885, 33.894318, 35.138809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702797, 33.980705, 35.244766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218360, 0.216835, -0.951473,
		-0.262928, 0.952018, 0.156618,
		0.939780, 0.215970, 0.264895,
		33.984730, 34.045498, 35.324234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521641, 34.589752, 34.742626>,  <33.326885, 33.894318, 35.138809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521641, 34.589752, 34.742626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851578, 34.381714, 34.831291>,  <34.049541, 34.256889, 34.884491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851578, 34.381714, 34.831291>,  <33.521641, 34.589752, 34.742626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851578, 34.381714, 34.831291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251371, -0.013801, -0.967792,
		0.506406, 0.853995, 0.119354,
		0.824843, -0.520098, 0.221658,
		34.099030, 34.225685, 34.897789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053085, 35.077511, 34.542027>,  <33.521641, 34.589752, 34.742626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053085, 35.077511, 34.542027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216980, 34.712654, 34.537735>,  <34.315315, 34.493740, 34.535160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216980, 34.712654, 34.537735>,  <34.053085, 35.077511, 34.542027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216980, 34.712654, 34.537735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199286, 0.100985, -0.974724,
		0.890170, 0.397239, 0.223154,
		0.409734, -0.912142, -0.010729,
		34.339901, 34.439011, 34.534515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667835, 35.116783, 34.207779>,  <34.053085, 35.077511, 34.542027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667835, 35.116783, 34.207779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580860, 34.727047, 34.184536>,  <34.528675, 34.493206, 34.170589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580860, 34.727047, 34.184536>,  <34.667835, 35.116783, 34.207779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580860, 34.727047, 34.184536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125691, 0.031090, -0.991582,
		0.967948, -0.222911, 0.115707,
		-0.217437, -0.974343, -0.058111,
		34.515629, 34.434746, 34.167103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150284, 34.762581, 33.672630>,  <34.667835, 35.116783, 34.207779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150284, 34.762581, 33.672630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822792, 34.537006, 33.715801>,  <34.626297, 34.401661, 33.741703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822792, 34.537006, 33.715801>,  <35.150284, 34.762581, 33.672630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822792, 34.537006, 33.715801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116778, -0.020497, -0.992947,
		0.562174, -0.825562, -0.049074,
		-0.818733, -0.563939, 0.107930,
		34.577171, 34.367825, 33.748180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315090, 34.179234, 33.187786>,  <35.150284, 34.762581, 33.672630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315090, 34.179234, 33.187786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926723, 34.238773, 33.262794>,  <34.693703, 34.274498, 33.307800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926723, 34.238773, 33.262794>,  <35.315090, 34.179234, 33.187786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926723, 34.238773, 33.262794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188024, 0.010833, -0.982105,
		-0.148216, -0.988801, 0.017469,
		-0.970917, 0.148848, 0.187524,
		34.635448, 34.283428, 33.319050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973633, 33.750877, 33.133854>,  <35.315090, 34.179234, 33.187786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973633, 33.750877, 33.133854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153461, 33.936077, 33.439407>,  <36.261360, 34.047195, 33.622738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153461, 33.936077, 33.439407>,  <35.973633, 33.750877, 33.133854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153461, 33.936077, 33.439407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795377, 0.596693, 0.106450,
		-0.406517, -0.655432, 0.636516,
		0.449576, 0.462997, 0.763882,
		36.288334, 34.074978, 33.668571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152184, 33.372696, 33.704136>,  <35.973633, 33.750877, 33.133854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152184, 33.372696, 33.704136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213573, 33.008442, 33.550674>,  <36.250408, 32.789890, 33.458599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213573, 33.008442, 33.550674>,  <36.152184, 33.372696, 33.704136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213573, 33.008442, 33.550674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132388, -0.365801, 0.921229,
		-0.979245, -0.192172, 0.064417,
		0.153471, -0.910637, -0.383650,
		36.259613, 32.735252, 33.435581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715462, 32.997704, 34.065475>,  <36.152184, 33.372696, 33.704136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715462, 32.997704, 34.065475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033756, 32.774654, 33.970940>,  <36.224731, 32.640823, 33.914219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033756, 32.774654, 33.970940>,  <35.715462, 32.997704, 34.065475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033756, 32.774654, 33.970940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143629, -0.205341, 0.968094,
		-0.588365, -0.804292, -0.083306,
		0.795737, -0.557628, -0.236336,
		36.272476, 32.607365, 33.900040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680008, 32.181591, 34.154694>,  <35.715462, 32.997704, 34.065475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680008, 32.181591, 34.154694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053501, 32.322105, 34.182243>,  <36.277596, 32.406414, 34.198772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053501, 32.322105, 34.182243>,  <35.680008, 32.181591, 34.154694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053501, 32.322105, 34.182243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044293, -0.304307, 0.951543,
		0.355220, -0.885436, -0.299701,
		0.933733, 0.351282, 0.068878,
		36.333622, 32.427490, 34.202908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251945, 31.730621, 34.593445>,  <35.680008, 32.181591, 34.154694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251945, 31.730621, 34.593445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454281, 32.075474, 34.605110>,  <36.575684, 32.282387, 34.612110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454281, 32.075474, 34.605110>,  <36.251945, 31.730621, 34.593445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454281, 32.075474, 34.605110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130239, -0.109744, 0.985390,
		0.852738, -0.494653, -0.167797,
		0.505841, 0.862133, 0.029160,
		36.606033, 32.334114, 34.613857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854622, 31.545406, 34.934830>,  <36.251945, 31.730621, 34.593445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854622, 31.545406, 34.934830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798725, 31.939051, 34.978642>,  <36.765186, 32.175236, 35.004929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798725, 31.939051, 34.978642>,  <36.854622, 31.545406, 34.934830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798725, 31.939051, 34.978642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053403, -0.117940, 0.991584,
		0.988747, 0.132718, 0.069036,
		-0.139743, 0.984112, 0.109525,
		36.756802, 32.234283, 35.011497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396408, 31.793308, 35.380032>,  <36.854622, 31.545406, 34.934830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396408, 31.793308, 35.380032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098892, 32.060226, 35.395466>,  <36.920383, 32.220379, 35.404728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098892, 32.060226, 35.395466>,  <37.396408, 31.793308, 35.380032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098892, 32.060226, 35.395466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109546, -0.178646, 0.977796,
		0.659372, 0.723051, 0.205976,
		-0.743793, 0.667295, 0.038587,
		36.875755, 32.260414, 35.407043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565426, 32.151165, 35.983555>,  <37.396408, 31.793308, 35.380032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565426, 32.151165, 35.983555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176926, 32.212112, 35.910385>,  <36.943825, 32.248680, 35.866482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176926, 32.212112, 35.910385>,  <37.565426, 32.151165, 35.983555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176926, 32.212112, 35.910385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204768, -0.142702, 0.968352,
		0.121443, 0.977967, 0.169799,
		-0.971247, 0.152369, -0.182927,
		36.885551, 32.257824, 35.855507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458805, 32.664471, 36.476349>,  <37.565426, 32.151165, 35.983555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458805, 32.664471, 36.476349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108086, 32.501842, 36.373650>,  <36.897652, 32.404266, 36.312031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108086, 32.501842, 36.373650>,  <37.458805, 32.664471, 36.476349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108086, 32.501842, 36.373650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315698, 0.083972, 0.945137,
		-0.362706, 0.909752, -0.201981,
		-0.876801, -0.406571, -0.256749,
		36.845047, 32.379871, 36.296623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950809, 33.094479, 36.724251>,  <37.458805, 32.664471, 36.476349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950809, 33.094479, 36.724251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768097, 32.742580, 36.671497>,  <36.658470, 32.531441, 36.639843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768097, 32.742580, 36.671497>,  <36.950809, 33.094479, 36.724251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768097, 32.742580, 36.671497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474864, 0.115771, 0.872411,
		-0.752233, 0.461131, -0.470642,
		-0.456783, -0.879747, -0.131888,
		36.631062, 32.478657, 36.631931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479584, 33.232380, 37.193794>,  <36.950809, 33.094479, 36.724251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479584, 33.232380, 37.193794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407913, 32.844486, 37.127445>,  <36.364910, 32.611752, 37.087635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407913, 32.844486, 37.127445>,  <36.479584, 33.232380, 37.193794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407913, 32.844486, 37.127445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338402, -0.097566, 0.935930,
		-0.923786, 0.223826, -0.310678,
		-0.179174, -0.969733, -0.165873,
		36.354160, 32.553566, 37.077682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760460, 33.040592, 37.422882>,  <36.479584, 33.232380, 37.193794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760460, 33.040592, 37.422882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949783, 32.688232, 37.423409>,  <36.063377, 32.476818, 37.423725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949783, 32.688232, 37.423409>,  <35.760460, 33.040592, 37.422882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949783, 32.688232, 37.423409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437530, -0.233791, 0.868280,
		-0.764558, -0.411537, -0.496074,
		0.473306, -0.880897, 0.001313,
		36.091774, 32.423962, 37.423801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247616, 32.466637, 37.684448>,  <35.760460, 33.040592, 37.422882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247616, 32.466637, 37.684448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627411, 32.351021, 37.733334>,  <35.855286, 32.281651, 37.762665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627411, 32.351021, 37.733334>,  <35.247616, 32.466637, 37.684448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627411, 32.351021, 37.733334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208265, -0.289084, 0.934375,
		-0.234740, -0.912627, -0.334678,
		0.949485, -0.289037, 0.122209,
		35.912258, 32.264309, 37.769997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108921, 31.830259, 37.980629>,  <35.247616, 32.466637, 37.684448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108921, 31.830259, 37.980629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473156, 31.967703, 38.072514>,  <35.691696, 32.050167, 38.127644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473156, 31.967703, 38.072514>,  <35.108921, 31.830259, 37.980629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473156, 31.967703, 38.072514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045564, -0.468926, 0.882061,
		0.410799, -0.813659, -0.411342,
		0.910586, 0.343608, 0.229708,
		35.746330, 32.070786, 38.141426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362915, 31.227659, 38.208790>,  <35.108921, 31.830259, 37.980629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362915, 31.227659, 38.208790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596558, 31.517656, 38.354778>,  <35.736744, 31.691654, 38.442371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596558, 31.517656, 38.354778>,  <35.362915, 31.227659, 38.208790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596558, 31.517656, 38.354778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154384, -0.342208, 0.926854,
		0.796861, -0.597726, -0.087957,
		0.584105, 0.724995, 0.364971,
		35.771790, 31.735155, 38.464272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631039, 30.940607, 38.804283>,  <35.362915, 31.227659, 38.208790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631039, 30.940607, 38.804283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716942, 31.328382, 38.851730>,  <35.768482, 31.561047, 38.880199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716942, 31.328382, 38.851730>,  <35.631039, 30.940607, 38.804283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716942, 31.328382, 38.851730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070041, -0.136428, 0.988171,
		0.974153, -0.203907, -0.097199,
		0.214756, 0.969437, 0.118620,
		35.781368, 31.619213, 38.887318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213215, 30.987316, 39.294682>,  <35.631039, 30.940607, 38.804283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213215, 30.987316, 39.294682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015125, 31.334093, 39.317181>,  <35.896271, 31.542160, 39.330681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015125, 31.334093, 39.317181>,  <36.213215, 30.987316, 39.294682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015125, 31.334093, 39.317181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106066, -0.124591, 0.986523,
		0.862267, 0.482584, 0.153654,
		-0.495224, 0.866943, 0.056245,
		35.866558, 31.594175, 39.334053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591286, 31.348505, 39.879017>,  <36.213215, 30.987316, 39.294682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591286, 31.348505, 39.879017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227333, 31.506659, 39.828766>,  <36.008961, 31.601551, 39.798615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227333, 31.506659, 39.828766>,  <36.591286, 31.348505, 39.879017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227333, 31.506659, 39.828766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061086, 0.171839, 0.983229,
		0.410343, 0.902298, -0.132201,
		-0.909883, 0.395386, -0.125631,
		35.954369, 31.625275, 39.791077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569256, 31.937744, 40.378704>,  <36.591286, 31.348505, 39.879017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569256, 31.937744, 40.378704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190907, 31.881800, 40.261562>,  <35.963898, 31.848232, 40.191277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190907, 31.881800, 40.261562>,  <36.569256, 31.937744, 40.378704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190907, 31.881800, 40.261562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323731, 0.343015, 0.881782,
		-0.022874, 0.928859, -0.369726,
		-0.945873, -0.139862, -0.292854,
		35.907146, 31.839842, 40.173706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216797, 32.477516, 40.605869>,  <36.569256, 31.937744, 40.378704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216797, 32.477516, 40.605869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906548, 32.238220, 40.525345>,  <35.720398, 32.094643, 40.477032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906548, 32.238220, 40.525345>,  <36.216797, 32.477516, 40.605869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906548, 32.238220, 40.525345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380798, 0.189140, 0.905107,
		-0.503394, 0.778677, -0.374509,
		-0.775621, -0.598238, -0.201306,
		35.673862, 32.058750, 40.464954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662956, 32.836258, 40.782360>,  <36.216797, 32.477516, 40.605869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662956, 32.836258, 40.782360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558674, 32.450504, 40.800236>,  <35.496105, 32.219051, 40.810963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558674, 32.450504, 40.800236>,  <35.662956, 32.836258, 40.782360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558674, 32.450504, 40.800236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287889, 0.121848, 0.949880,
		-0.921493, 0.234777, -0.309402,
		-0.260710, -0.964382, 0.044692,
		35.480461, 32.161190, 40.813644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998249, 32.808674, 41.179218>,  <35.662956, 32.836258, 40.782360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998249, 32.808674, 41.179218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161484, 32.443871, 41.195728>,  <35.259426, 32.224987, 41.205635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161484, 32.443871, 41.195728>,  <34.998249, 32.808674, 41.179218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161484, 32.443871, 41.195728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105855, -0.002358, 0.994379,
		-0.906785, -0.410164, -0.097503,
		0.408088, -0.912009, 0.041279,
		35.283909, 32.170269, 41.208111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606441, 32.487541, 41.651131>,  <34.998249, 32.808674, 41.179218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606441, 32.487541, 41.651131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911907, 32.229576, 41.639133>,  <35.095188, 32.074795, 41.631935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911907, 32.229576, 41.639133>,  <34.606441, 32.487541, 41.651131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911907, 32.229576, 41.639133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031722, -0.083881, 0.995971,
		-0.644832, -0.759638, -0.084515,
		0.763666, -0.644915, -0.029992,
		35.141006, 32.036102, 41.630135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412987, 31.943905, 42.015961>,  <34.606441, 32.487541, 41.651131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412987, 31.943905, 42.015961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810944, 31.909679, 42.037384>,  <35.049717, 31.889143, 42.050236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810944, 31.909679, 42.037384>,  <34.412987, 31.943905, 42.015961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810944, 31.909679, 42.037384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069678, -0.198243, 0.977673,
		-0.073037, -0.976411, -0.203192,
		0.994892, -0.085565, 0.053555,
		35.109413, 31.884010, 42.053452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601528, 31.274151, 42.298462>,  <34.412987, 31.943905, 42.015961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601528, 31.274151, 42.298462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900864, 31.530598, 42.366539>,  <35.080463, 31.684465, 42.407383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900864, 31.530598, 42.366539>,  <34.601528, 31.274151, 42.298462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900864, 31.530598, 42.366539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129128, -0.392466, 0.910657,
		0.650632, -0.659499, -0.376481,
		0.748334, 0.641117, 0.170191,
		35.125362, 31.722933, 42.417595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052322, 30.903053, 42.742126>,  <34.601528, 31.274151, 42.298462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052322, 30.903053, 42.742126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217770, 31.264414, 42.787354>,  <35.317039, 31.481230, 42.814487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217770, 31.264414, 42.787354>,  <35.052322, 30.903053, 42.742126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217770, 31.264414, 42.787354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170561, -0.198873, 0.965069,
		0.894332, -0.379885, -0.236343,
		0.413617, 0.903403, 0.113065,
		35.341854, 31.535435, 42.821274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742641, 30.830196, 43.051228>,  <35.052322, 30.903053, 42.742126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742641, 30.830196, 43.051228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601753, 31.195137, 43.134712>,  <35.517220, 31.414101, 43.184803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601753, 31.195137, 43.134712>,  <35.742641, 30.830196, 43.051228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601753, 31.195137, 43.134712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075816, -0.194453, 0.977977,
		0.932842, 0.360284, -0.000681,
		-0.352217, 0.912350, 0.208709,
		35.496086, 31.468842, 43.197327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259468, 31.105997, 43.552345>,  <35.742641, 30.830196, 43.051228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259468, 31.105997, 43.552345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921841, 31.316282, 43.594616>,  <35.719265, 31.442453, 43.619976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921841, 31.316282, 43.594616>,  <36.259468, 31.105997, 43.552345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921841, 31.316282, 43.594616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047449, -0.269516, 0.961826,
		0.534126, 0.806837, 0.252436,
		-0.844072, 0.525714, 0.105672,
		35.668617, 31.473997, 43.626316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276852, 31.566055, 44.141541>,  <36.259468, 31.105997, 43.552345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276852, 31.566055, 44.141541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882034, 31.520603, 44.096214>,  <35.645145, 31.493332, 44.069019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882034, 31.520603, 44.096214>,  <36.276852, 31.566055, 44.141541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882034, 31.520603, 44.096214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089388, -0.197128, 0.976294,
		-0.133276, 0.973770, 0.184416,
		-0.987040, -0.113632, -0.113316,
		35.585922, 31.486513, 44.062218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442249, 32.349869, 44.262493>,  <36.276852, 31.566055, 44.141541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442249, 32.349869, 44.262493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816849, 32.441635, 44.368584>,  <37.041607, 32.496696, 44.432236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816849, 32.441635, 44.368584>,  <36.442249, 32.349869, 44.262493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816849, 32.441635, 44.368584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275593, -0.013799, -0.961176,
		-0.216851, 0.973230, -0.076149,
		0.936496, 0.229418, 0.265223,
		37.097797, 32.510460, 44.448151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501980, 33.006279, 43.957191>,  <36.442249, 32.349869, 44.262493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501980, 33.006279, 43.957191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878040, 32.900269, 44.042870>,  <37.103676, 32.836662, 44.094276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878040, 32.900269, 44.042870>,  <36.501980, 33.006279, 43.957191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878040, 32.900269, 44.042870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289980, 0.292092, -0.911369,
		0.178972, 0.918936, 0.351462,
		0.940149, -0.265027, 0.214197,
		37.160084, 32.820759, 44.107128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163677, 33.559120, 43.809418>,  <36.501980, 33.006279, 43.957191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163677, 33.559120, 43.809418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304798, 33.184952, 43.800262>,  <37.389469, 32.960453, 43.794769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304798, 33.184952, 43.800262>,  <37.163677, 33.559120, 43.809418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304798, 33.184952, 43.800262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297741, 0.135421, -0.944993,
		0.887063, 0.326581, 0.326289,
		0.352803, -0.935418, -0.022890,
		37.410641, 32.904327, 43.793396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950768, 33.580666, 43.760845>,  <37.163677, 33.559120, 43.809418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950768, 33.580666, 43.760845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835732, 33.225174, 43.618042>,  <37.766708, 33.011879, 43.532360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835732, 33.225174, 43.618042>,  <37.950768, 33.580666, 43.760845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835732, 33.225174, 43.618042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305433, 0.268185, -0.913667,
		0.907745, -0.371805, 0.194319,
		-0.287592, -0.888728, -0.357005,
		37.749454, 32.958557, 43.510941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537548, 33.375515, 43.487564>,  <37.950768, 33.580666, 43.760845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537548, 33.375515, 43.487564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242546, 33.166611, 43.316296>,  <38.065544, 33.041267, 43.213535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242546, 33.166611, 43.316296>,  <38.537548, 33.375515, 43.487564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242546, 33.166611, 43.316296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377932, 0.206269, -0.902563,
		0.559696, -0.827461, 0.045257,
		-0.737501, -0.522265, -0.428172,
		38.021297, 33.009930, 43.187843>
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
