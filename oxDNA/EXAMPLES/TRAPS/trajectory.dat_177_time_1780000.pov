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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<35.626831, 53.543255, 50.039356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912991, 53.509659, 49.761894>,  <36.084686, 53.489502, 49.595417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912991, 53.509659, 49.761894>,  <35.626831, 53.543255, 50.039356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912991, 53.509659, 49.761894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619785, 0.534643, 0.574477,
		0.322607, -0.840894, 0.434536,
		0.715396, -0.083989, -0.693653,
		36.127609, 53.484463, 49.553799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158192, 53.463680, 50.520744>,  <35.626831, 53.543255, 50.039356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158192, 53.463680, 50.520744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344864, 53.529564, 50.173164>,  <36.456867, 53.569092, 49.964615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344864, 53.529564, 50.173164>,  <36.158192, 53.463680, 50.520744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344864, 53.529564, 50.173164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747537, 0.451607, 0.487073,
		0.472650, -0.876883, 0.087632,
		0.466681, 0.164706, -0.868954,
		36.484867, 53.578976, 49.912479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828705, 53.350540, 50.665100>,  <36.158192, 53.463680, 50.520744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828705, 53.350540, 50.665100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775810, 53.611580, 50.366669>,  <36.744072, 53.768204, 50.187611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775810, 53.611580, 50.366669>,  <36.828705, 53.350540, 50.665100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775810, 53.611580, 50.366669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760110, 0.549861, 0.346245,
		0.636197, -0.521314, -0.568758,
		-0.132236, 0.652599, -0.746076,
		36.736141, 53.807358, 50.142845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492405, 53.373272, 50.280151>,  <36.828705, 53.350540, 50.665100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492405, 53.373272, 50.280151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270569, 53.701687, 50.334305>,  <37.137466, 53.898735, 50.366798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270569, 53.701687, 50.334305>,  <37.492405, 53.373272, 50.280151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270569, 53.701687, 50.334305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791174, 0.469861, 0.391503,
		0.257828, 0.324234, -0.910163,
		-0.554589, 0.821037, 0.135382,
		37.104191, 53.947998, 50.374920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939831, 54.052944, 50.328423>,  <37.492405, 53.373272, 50.280151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939831, 54.052944, 50.328423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256657, 53.913643, 50.528965>,  <38.446751, 53.830063, 50.649292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256657, 53.913643, 50.528965>,  <37.939831, 54.052944, 50.328423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256657, 53.913643, 50.528965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402742, -0.915313, 0.000471,
		0.458733, -0.202290, -0.865241,
		0.792062, -0.348253, 0.501356,
		38.494274, 53.809166, 50.679371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150661, 54.139900, 50.908550>,  <37.939831, 54.052944, 50.328423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150661, 54.139900, 50.908550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536667, 54.132984, 50.803902>,  <38.768272, 54.128834, 50.741112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536667, 54.132984, 50.803902>,  <38.150661, 54.139900, 50.908550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536667, 54.132984, 50.803902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247867, 0.385480, 0.888801,
		0.085484, -0.922554, 0.376279,
		0.965015, -0.017289, -0.261623,
		38.826172, 54.127796, 50.725414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562172, 53.727985, 51.474091>,  <38.150661, 54.139900, 50.908550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562172, 53.727985, 51.474091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719734, 54.027435, 51.260773>,  <38.814270, 54.207104, 51.132782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719734, 54.027435, 51.260773>,  <38.562172, 53.727985, 51.474091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719734, 54.027435, 51.260773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104675, 0.539891, 0.835201,
		0.913172, -0.384812, 0.134304,
		0.393905, 0.748623, -0.533293,
		38.837906, 54.252022, 51.100784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865719, 54.225903, 51.875706>,  <38.562172, 53.727985, 51.474091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865719, 54.225903, 51.875706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937370, 54.440552, 51.545868>,  <38.980362, 54.569340, 51.347965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937370, 54.440552, 51.545868>,  <38.865719, 54.225903, 51.875706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937370, 54.440552, 51.545868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246544, 0.786921, 0.565661,
		0.952434, -0.304622, 0.008656,
		0.179124, 0.536620, -0.824593,
		38.991108, 54.601540, 51.298489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835533, 54.965355, 52.225094>,  <38.865719, 54.225903, 51.875706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835533, 54.965355, 52.225094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502239, 55.149017, 52.101871>,  <38.302265, 55.259212, 52.027939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502239, 55.149017, 52.101871>,  <38.835533, 54.965355, 52.225094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502239, 55.149017, 52.101871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386649, -0.085577, 0.918248,
		0.395254, 0.884225, 0.248837,
		-0.833233, 0.459154, -0.308060,
		38.252270, 55.286762, 52.009453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534065, 55.098137, 52.060997>,  <38.835533, 54.965355, 52.225094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534065, 55.098137, 52.060997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754990, 55.388802, 52.224419>,  <39.887543, 55.563202, 52.322472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754990, 55.388802, 52.224419>,  <39.534065, 55.098137, 52.060997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754990, 55.388802, 52.224419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782602, 0.620805, -0.046207,
		-0.287208, -0.294212, 0.911565,
		0.552310, 0.726664, 0.408551,
		39.920681, 55.606800, 52.346985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183208, 55.741165, 51.984291>,  <39.534065, 55.098137, 52.060997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183208, 55.741165, 51.984291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186031, 55.923397, 51.628223>,  <39.187725, 56.032738, 51.414585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186031, 55.923397, 51.628223>,  <39.183208, 55.741165, 51.984291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186031, 55.923397, 51.628223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432198, 0.801360, 0.413555,
		0.901751, -0.387647, -0.191246,
		0.007057, 0.455580, -0.890167,
		39.188148, 56.060070, 51.361172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801220, 56.039227, 51.771469>,  <39.183208, 55.741165, 51.984291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801220, 56.039227, 51.771469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503819, 56.253246, 51.611008>,  <39.325378, 56.381660, 51.514732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503819, 56.253246, 51.611008>,  <39.801220, 56.039227, 51.771469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503819, 56.253246, 51.611008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283589, 0.795527, 0.535457,
		0.605622, 0.284354, -0.743212,
		-0.743505, 0.535051, -0.401149,
		39.280766, 56.413761, 51.490662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478584, 56.257484, 51.982830>,  <39.801220, 56.039227, 51.771469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478584, 56.257484, 51.982830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434513, 56.408192, 52.350723>,  <40.408070, 56.498615, 52.571461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434513, 56.408192, 52.350723>,  <40.478584, 56.257484, 51.982830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434513, 56.408192, 52.350723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577499, -0.777403, 0.249278,
		0.808923, -0.503679, 0.303235,
		-0.110179, 0.376765, 0.919733,
		40.401459, 56.521221, 52.626644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731518, 55.701199, 52.328312>,  <40.478584, 56.257484, 51.982830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731518, 55.701199, 52.328312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472275, 55.946598, 52.508789>,  <40.316730, 56.093838, 52.617077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472275, 55.946598, 52.508789>,  <40.731518, 55.701199, 52.328312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472275, 55.946598, 52.508789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643346, -0.758105, 0.106694,
		0.407510, -0.221125, 0.886025,
		-0.648106, 0.613499, 0.451195,
		40.277843, 56.130650, 52.644146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173412, 55.812611, 53.067402>,  <40.731518, 55.701199, 52.328312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173412, 55.812611, 53.067402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417244, 56.105450, 52.945786>,  <41.563541, 56.281155, 52.872814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417244, 56.105450, 52.945786>,  <41.173412, 55.812611, 53.067402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417244, 56.105450, 52.945786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744877, -0.660215, -0.096304,
		-0.271238, -0.167770, -0.947778,
		0.609580, 0.732100, -0.304044,
		41.600117, 56.325081, 52.854572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640903, 55.628273, 52.456882>,  <41.173412, 55.812611, 53.067402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640903, 55.628273, 52.456882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825279, 55.886860, 52.700066>,  <41.935905, 56.042011, 52.845974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825279, 55.886860, 52.700066>,  <41.640903, 55.628273, 52.456882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825279, 55.886860, 52.700066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730612, -0.665310, 0.153521,
		0.503726, 0.373416, -0.778987,
		0.460941, 0.646470, 0.607956,
		41.963562, 56.080799, 52.882454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305859, 55.703686, 52.262138>,  <41.640903, 55.628273, 52.456882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305859, 55.703686, 52.262138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281368, 55.763939, 52.656815>,  <42.266674, 55.800091, 52.893620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281368, 55.763939, 52.656815>,  <42.305859, 55.703686, 52.262138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281368, 55.763939, 52.656815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605080, -0.780588, 0.156719,
		0.793807, 0.606623, -0.043353,
		-0.061229, 0.150636, 0.986691,
		42.263000, 55.809132, 52.952824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998714, 55.800091, 52.616325>,  <42.305859, 55.703686, 52.262138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998714, 55.800091, 52.616325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709820, 55.614273, 52.821297>,  <42.536484, 55.502785, 52.944279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709820, 55.614273, 52.821297>,  <42.998714, 55.800091, 52.616325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709820, 55.614273, 52.821297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605735, -0.782452, 0.144412,
		0.333865, 0.414694, 0.846501,
		-0.722232, -0.464541, 0.512428,
		42.493149, 55.474911, 52.975025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323814, 55.392380, 53.207073>,  <42.998714, 55.800091, 52.616325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323814, 55.392380, 53.207073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686646, 55.554016, 53.159870>,  <43.904343, 55.650997, 53.131546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686646, 55.554016, 53.159870>,  <43.323814, 55.392380, 53.207073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686646, 55.554016, 53.159870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040772, 0.194683, 0.980018,
		0.418991, -0.893761, 0.160116,
		0.907074, 0.404090, -0.118011,
		43.958767, 55.675243, 53.124466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489788, 55.573215, 53.905216>,  <43.323814, 55.392380, 53.207073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489788, 55.573215, 53.905216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849514, 55.677212, 53.764568>,  <44.065350, 55.739609, 53.680180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849514, 55.677212, 53.764568>,  <43.489788, 55.573215, 53.905216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849514, 55.677212, 53.764568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292138, 0.241126, 0.925480,
		0.325403, -0.935020, 0.140895,
		0.899316, 0.259993, -0.351618,
		44.119308, 55.755211, 53.659084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118256, 55.293510, 54.256645>,  <43.489788, 55.573215, 53.905216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118256, 55.293510, 54.256645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213917, 55.660053, 54.128212>,  <44.271313, 55.879978, 54.051151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213917, 55.660053, 54.128212>,  <44.118256, 55.293510, 54.256645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213917, 55.660053, 54.128212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386171, 0.213640, 0.897346,
		0.890885, -0.338600, -0.302776,
		0.239156, 0.916356, -0.321086,
		44.285664, 55.934959, 54.031887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864399, 55.424820, 54.504128>,  <44.118256, 55.293510, 54.256645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864399, 55.424820, 54.504128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649143, 55.752789, 54.426010>,  <44.519989, 55.949570, 54.379139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649143, 55.752789, 54.426010>,  <44.864399, 55.424820, 54.504128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649143, 55.752789, 54.426010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520803, 0.505647, 0.687812,
		0.662703, 0.268424, -0.699124,
		-0.538135, 0.819920, -0.195298,
		44.487701, 55.998764, 54.367420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402607, 55.982273, 54.320160>,  <44.864399, 55.424820, 54.504128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402607, 55.982273, 54.320160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060341, 56.098885, 54.491203>,  <44.854980, 56.168850, 54.593830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060341, 56.098885, 54.491203>,  <45.402607, 55.982273, 54.320160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060341, 56.098885, 54.491203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506258, 0.300009, 0.808515,
		0.107420, 0.908298, -0.404297,
		-0.855666, 0.291529, 0.427606,
		44.803642, 56.186344, 54.619484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743176, 56.025505, 54.918800>,  <45.402607, 55.982273, 54.320160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743176, 56.025505, 54.918800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019688, 55.755051, 55.020767>,  <46.185593, 55.592777, 55.081947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019688, 55.755051, 55.020767>,  <45.743176, 56.025505, 54.918800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019688, 55.755051, 55.020767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532044, 0.714972, 0.453591,
		-0.488944, -0.177931, 0.853976,
		0.691276, -0.676133, 0.254914,
		46.227070, 55.552212, 55.097240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918674, 55.444550, 55.480007>,  <45.743176, 56.025505, 54.918800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918674, 55.444550, 55.480007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214596, 55.199253, 55.369278>,  <46.392147, 55.052074, 55.302841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214596, 55.199253, 55.369278>,  <45.918674, 55.444550, 55.480007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214596, 55.199253, 55.369278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672180, 0.655615, 0.344010,
		-0.029469, -0.440576, 0.897231,
		0.739801, -0.613239, -0.276826,
		46.436535, 55.015282, 55.286228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.372082, 55.296379, 56.120590>,  <45.918674, 55.444550, 55.480007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.372082, 55.296379, 56.120590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543518, 55.280201, 55.759552>,  <46.646378, 55.270496, 55.542931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543518, 55.280201, 55.759552>,  <46.372082, 55.296379, 56.120590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543518, 55.280201, 55.759552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658737, 0.697714, 0.281532,
		0.618367, -0.715234, 0.325673,
		0.428588, -0.040443, -0.902595,
		46.672096, 55.268066, 55.488773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075329, 55.226463, 56.345505>,  <46.372082, 55.296379, 56.120590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075329, 55.226463, 56.345505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981441, 55.379036, 55.987862>,  <46.925110, 55.470577, 55.773277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981441, 55.379036, 55.987862>,  <47.075329, 55.226463, 56.345505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.981441, 55.379036, 55.987862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453482, 0.856541, 0.246357,
		0.859803, -0.347636, -0.374016,
		-0.234717, 0.381428, -0.894103,
		46.911026, 55.493465, 55.719631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.723816, 55.592896, 56.153214>,  <47.075329, 55.226463, 56.345505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.723816, 55.592896, 56.153214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.432644, 55.793205, 55.965874>,  <47.257942, 55.913391, 55.853470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.432644, 55.793205, 55.965874>,  <47.723816, 55.592896, 56.153214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.432644, 55.793205, 55.965874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590650, 0.804882, -0.057418,
		0.348210, -0.318425, -0.881678,
		-0.727930, 0.500770, -0.468346,
		47.214264, 55.943436, 55.825371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.098606, 55.887928, 55.610809>,  <47.723816, 55.592896, 56.153214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.098606, 55.887928, 55.610809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.761234, 56.088161, 55.688828>,  <47.558811, 56.208302, 55.735638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.761234, 56.088161, 55.688828>,  <48.098606, 55.887928, 55.610809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.761234, 56.088161, 55.688828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480004, 0.865219, -0.144889,
		-0.241289, -0.028579, -0.970032,
		-0.843431, 0.500579, 0.195050,
		47.508205, 56.238335, 55.747341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.825649, 56.364548, 55.079365>,  <48.098606, 55.887928, 55.610809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.825649, 56.364548, 55.079365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.804462, 56.497639, 55.455978>,  <47.791748, 56.577496, 55.681946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.804462, 56.497639, 55.455978>,  <47.825649, 56.364548, 55.079365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.804462, 56.497639, 55.455978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634430, 0.739332, -0.225581,
		-0.771163, 0.585388, -0.250257,
		-0.052971, 0.332730, 0.941533,
		47.788570, 56.597458, 55.738438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.564579, 57.163055, 55.138683>,  <47.825649, 56.364548, 55.079365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.564579, 57.163055, 55.138683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.814785, 57.035767, 55.423630>,  <47.964909, 56.959393, 55.594597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.814785, 57.035767, 55.423630>,  <47.564579, 57.163055, 55.138683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.814785, 57.035767, 55.423630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629877, 0.744773, -0.220381,
		-0.460420, 0.586554, 0.666309,
		0.625515, -0.318224, 0.712366,
		48.002438, 56.940300, 55.637341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.997723, 57.790939, 55.354416>,  <47.564579, 57.163055, 55.138683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.997723, 57.790939, 55.354416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.196579, 57.458408, 55.453812>,  <48.315895, 57.258892, 55.513451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.196579, 57.458408, 55.453812>,  <47.997723, 57.790939, 55.354416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.196579, 57.458408, 55.453812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866499, 0.490544, -0.092449,
		-0.045041, 0.261279, 0.964212,
		0.497143, -0.831324, 0.248492,
		48.345722, 57.209011, 55.528358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.578995, 57.976704, 55.737518>,  <47.997723, 57.790939, 55.354416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.578995, 57.976704, 55.737518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.661324, 57.614010, 55.590294>,  <48.710720, 57.396393, 55.501961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.661324, 57.614010, 55.590294>,  <48.578995, 57.976704, 55.737518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.661324, 57.614010, 55.590294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852090, 0.351014, -0.388241,
		0.481225, -0.233708, 0.844869,
		0.205825, -0.906736, -0.368057,
		48.723072, 57.341988, 55.479877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.279366, 57.690613, 56.053867>,  <48.578995, 57.976704, 55.737518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.279366, 57.690613, 56.053867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.203876, 57.599815, 55.671692>,  <49.158581, 57.545338, 55.442387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.203876, 57.599815, 55.671692>,  <49.279366, 57.690613, 56.053867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.203876, 57.599815, 55.671692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842261, 0.462853, -0.276338,
		0.504954, -0.856878, 0.103836,
		-0.188727, -0.226995, -0.955435,
		49.147259, 57.531715, 55.385063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.804844, 57.247379, 55.787510>,  <49.279366, 57.690613, 56.053867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.804844, 57.247379, 55.787510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.654438, 57.521778, 55.538345>,  <49.564194, 57.686417, 55.388847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.654438, 57.521778, 55.538345>,  <49.804844, 57.247379, 55.787510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.654438, 57.521778, 55.538345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921461, 0.347618, -0.173409,
		0.097579, -0.639196, -0.762828,
		-0.376015, 0.685995, -0.622915,
		49.541634, 57.727577, 55.351471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.075672, 57.146423, 55.054310>,  <49.804844, 57.247379, 55.787510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.075672, 57.146423, 55.054310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.017441, 57.531544, 55.145370>,  <49.982502, 57.762615, 55.200008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.017441, 57.531544, 55.145370>,  <50.075672, 57.146423, 55.054310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.017441, 57.531544, 55.145370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972077, 0.182005, -0.148122,
		-0.184046, 0.199736, -0.962410,
		-0.145578, 0.962798, 0.227656,
		49.973766, 57.820385, 55.213669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.316246, 57.512024, 54.546253>,  <50.075672, 57.146423, 55.054310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.316246, 57.512024, 54.546253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.334530, 57.712421, 54.891953>,  <50.345501, 57.832661, 55.099373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.334530, 57.712421, 54.891953>,  <50.316246, 57.512024, 54.546253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.334530, 57.712421, 54.891953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980055, 0.145000, -0.135892,
		-0.193396, 0.853219, -0.484371,
		0.045712, 0.500992, 0.864244,
		50.348244, 57.862720, 55.151226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.509922, 58.223244, 54.477440>,  <50.316246, 57.512024, 54.546253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.509922, 58.223244, 54.477440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.616730, 58.040092, 54.816628>,  <50.680817, 57.930202, 55.020138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.616730, 58.040092, 54.816628>,  <50.509922, 58.223244, 54.477440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.616730, 58.040092, 54.816628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960322, 0.052914, -0.273829,
		0.080511, 0.887440, 0.453838,
		0.267021, -0.457877, 0.847967,
		50.696835, 57.902729, 55.071018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.133282, 58.575554, 54.718018>,  <50.509922, 58.223244, 54.477440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.133282, 58.575554, 54.718018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.109100, 58.199776, 54.852951>,  <51.094589, 57.974308, 54.933910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.109100, 58.199776, 54.852951>,  <51.133282, 58.575554, 54.718018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.109100, 58.199776, 54.852951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971798, -0.132567, -0.195024,
		0.227933, 0.316028, 0.920963,
		-0.060457, -0.939442, 0.337332,
		51.090961, 57.917942, 54.954151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.699036, 58.547546, 55.152779>,  <51.133282, 58.575554, 54.718018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.699036, 58.547546, 55.152779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.593788, 58.175461, 55.050423>,  <51.530640, 57.952209, 54.989010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.593788, 58.175461, 55.050423>,  <51.699036, 58.547546, 55.152779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.593788, 58.175461, 55.050423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964631, -0.258071, -0.053727,
		-0.016059, -0.260971, 0.965213,
		-0.263115, -0.930211, -0.255886,
		51.514854, 57.896397, 54.973656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.039703, 58.105030, 55.599583>,  <51.699036, 58.547546, 55.152779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.039703, 58.105030, 55.599583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.947418, 57.956127, 55.239983>,  <51.892048, 57.866787, 55.024223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.947418, 57.956127, 55.239983>,  <52.039703, 58.105030, 55.599583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.947418, 57.956127, 55.239983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968553, -0.176302, -0.175563,
		-0.093140, -0.911232, 0.401225,
		-0.230715, -0.372256, -0.898997,
		51.878204, 57.844452, 54.970284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.358116, 57.405907, 55.498199>,  <52.039703, 58.105030, 55.599583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.358116, 57.405907, 55.498199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.323227, 57.624741, 55.165192>,  <52.302292, 57.756042, 54.965385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.323227, 57.624741, 55.165192>,  <52.358116, 57.405907, 55.498199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.323227, 57.624741, 55.165192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995193, 0.010500, -0.097367,
		-0.044527, -0.837010, -0.545373,
		-0.087223, 0.547087, -0.832519,
		52.297062, 57.788868, 54.915436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.811947, 57.213806, 54.952122>,  <52.358116, 57.405907, 55.498199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.811947, 57.213806, 54.952122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.744656, 57.596779, 54.858299>,  <52.704281, 57.826565, 54.802006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.744656, 57.596779, 54.858299>,  <52.811947, 57.213806, 54.952122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.744656, 57.596779, 54.858299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967060, 0.114190, -0.227499,
		-0.191032, -0.265100, -0.945108,
		-0.168232, 0.957436, -0.234553,
		52.694187, 57.884010, 54.787933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.998100, 57.321762, 54.261688>,  <52.811947, 57.213806, 54.952122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.998100, 57.321762, 54.261688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.026726, 57.654160, 54.482353>,  <53.043900, 57.853596, 54.614754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.026726, 57.654160, 54.482353>,  <52.998100, 57.321762, 54.261688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.026726, 57.654160, 54.482353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952643, 0.106942, -0.284666,
		-0.295551, 0.545913, -0.783983,
		0.071562, 0.830989, 0.551667,
		53.048195, 57.903458, 54.647854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.508884, 57.703171, 53.948170>,  <52.998100, 57.321762, 54.261688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.508884, 57.703171, 53.948170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.470997, 57.864212, 54.312355>,  <53.448265, 57.960838, 54.530865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.470997, 57.864212, 54.312355>,  <53.508884, 57.703171, 53.948170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.470997, 57.864212, 54.312355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987535, 0.153485, 0.034870,
		-0.125703, 0.902414, -0.412127,
		-0.094723, 0.402606, 0.910459,
		53.442581, 57.984993, 54.585491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.725979, 58.415039, 53.877480>,  <53.508884, 57.703171, 53.948170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.725979, 58.415039, 53.877480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.791855, 58.203926, 54.210785>,  <53.831383, 58.077259, 54.410767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.791855, 58.203926, 54.210785>,  <53.725979, 58.415039, 53.877480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.791855, 58.203926, 54.210785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985564, 0.121665, -0.117734,
		-0.039241, 0.840621, 0.540200,
		0.164694, -0.527782, 0.833260,
		53.841263, 58.045593, 54.460762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.158966, 58.847939, 53.447571>,  <53.725979, 58.415039, 53.877480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.158966, 58.847939, 53.447571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.326935, 58.608093, 53.175064>,  <54.427715, 58.464188, 53.011559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.326935, 58.608093, 53.175064>,  <54.158966, 58.847939, 53.447571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.326935, 58.608093, 53.175064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489003, 0.482892, -0.726424,
		0.764554, 0.638183, -0.090437,
		0.419920, -0.599615, -0.681270,
		54.452911, 58.428207, 52.970684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.401184, 59.204521, 52.775066>,  <54.158966, 58.847939, 53.447571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.401184, 59.204521, 52.775066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.329460, 58.823032, 52.678513>,  <54.286427, 58.594139, 52.620579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.329460, 58.823032, 52.678513>,  <54.401184, 59.204521, 52.775066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.329460, 58.823032, 52.678513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414157, 0.295743, -0.860819,
		0.892368, -0.054383, -0.448020,
		-0.179313, -0.953718, -0.241389,
		54.275665, 58.536919, 52.606094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.222977, 59.130253, 52.807911>,  <54.401184, 59.204521, 52.775066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.222977, 59.130253, 52.807911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.185181, 59.012917, 53.188442>,  <55.162502, 58.942516, 53.416759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.185181, 59.012917, 53.188442>,  <55.222977, 59.130253, 52.807911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.185181, 59.012917, 53.188442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495675, 0.842593, 0.210577,
		-0.863352, -0.451651, -0.225022,
		-0.094494, -0.293340, 0.951327,
		55.156834, 58.924915, 53.473839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.995544, 58.984715, 52.497952>,  <55.222977, 59.130253, 52.807911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.995544, 58.984715, 52.497952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.291878, 59.223518, 52.374828>,  <56.469677, 59.366802, 52.300953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.291878, 59.223518, 52.374828>,  <55.995544, 58.984715, 52.497952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.291878, 59.223518, 52.374828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622902, 0.439168, -0.647398,
		-0.251325, 0.671347, 0.697230,
		0.740830, 0.597013, -0.307810,
		56.514126, 59.402622, 52.282486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.806686, 59.710590, 52.554756>,  <55.995544, 58.984715, 52.497952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.806686, 59.710590, 52.554756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.060989, 59.652138, 52.251587>,  <56.213573, 59.617065, 52.069683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.060989, 59.652138, 52.251587>,  <55.806686, 59.710590, 52.554756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.060989, 59.652138, 52.251587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620604, 0.487087, -0.614489,
		0.458974, 0.861041, 0.218979,
		0.635762, -0.146136, -0.757926,
		56.251717, 59.608295, 52.024208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.129990, 60.113876, 52.228115>,  <55.806686, 59.710590, 52.554756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.129990, 60.113876, 52.228115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.332458, 60.400974, 52.419376>,  <55.453941, 60.573235, 52.534134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.332458, 60.400974, 52.419376>,  <55.129990, 60.113876, 52.228115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.332458, 60.400974, 52.419376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086874, 0.509171, -0.856270,
		-0.858043, 0.474963, 0.195378,
		0.506177, 0.717743, 0.478153,
		55.484310, 60.616299, 52.562820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.534012, 60.544098, 51.875629>,  <55.129990, 60.113876, 52.228115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.534012, 60.544098, 51.875629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.778580, 60.640869, 52.176994>,  <55.925320, 60.698933, 52.357815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.778580, 60.640869, 52.176994>,  <55.534012, 60.544098, 51.875629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.778580, 60.640869, 52.176994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255142, 0.840992, -0.477110,
		-0.749043, 0.483944, 0.452474,
		0.611422, 0.241931, 0.753414,
		55.962006, 60.713448, 52.403019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.392643, 61.176640, 52.256577>,  <55.534012, 60.544098, 51.875629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.392643, 61.176640, 52.256577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.790405, 61.136303, 52.269180>,  <56.029060, 61.112099, 52.276741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.790405, 61.136303, 52.269180>,  <55.392643, 61.176640, 52.256577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.790405, 61.136303, 52.269180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105174, 0.916493, -0.385977,
		0.010045, 0.387131, 0.921970,
		0.994403, -0.100844, 0.031510,
		56.088726, 61.106049, 52.278633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.728989, 61.686035, 52.716370>,  <55.392643, 61.176640, 52.256577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.728989, 61.686035, 52.716370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.935089, 61.603973, 52.383522>,  <56.058750, 61.554737, 52.183811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.935089, 61.603973, 52.383522>,  <55.728989, 61.686035, 52.716370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.935089, 61.603973, 52.383522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170242, 0.976079, -0.135235,
		0.839962, -0.071983, 0.537849,
		0.515249, -0.205156, -0.832124,
		56.089664, 61.542427, 52.133884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.345306, 62.015087, 52.834896>,  <55.728989, 61.686035, 52.716370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.345306, 62.015087, 52.834896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.245384, 61.992043, 52.448265>,  <56.185432, 61.978218, 52.216286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.245384, 61.992043, 52.448265>,  <56.345306, 62.015087, 52.834896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.245384, 61.992043, 52.448265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401270, 0.902320, -0.157484,
		0.881238, -0.427200, -0.202289,
		-0.249807, -0.057608, -0.966581,
		56.170441, 61.974762, 52.158291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.856243, 61.926098, 52.269657>,  <56.345306, 62.015087, 52.834896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.856243, 61.926098, 52.269657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.553398, 62.138229, 52.117065>,  <56.371689, 62.265507, 52.025513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.553398, 62.138229, 52.117065>,  <56.856243, 61.926098, 52.269657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.553398, 62.138229, 52.117065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613737, 0.777496, -0.137208,
		0.223832, -0.338009, -0.914139,
		-0.757117, 0.530330, -0.381477,
		56.326263, 62.297329, 52.002621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.377506, 61.460209, 51.890308>,  <56.856243, 61.926098, 52.269657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.377506, 61.460209, 51.890308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.605118, 61.193169, 52.082355>,  <57.741684, 61.032944, 52.197586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.605118, 61.193169, 52.082355>,  <57.377506, 61.460209, 51.890308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.605118, 61.193169, 52.082355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365438, -0.317742, -0.874926,
		0.736652, 0.673316, 0.063159,
		0.569033, -0.667597, 0.480121,
		57.775829, 60.992889, 52.226391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.121635, 61.392963, 51.674202>,  <57.377506, 61.460209, 51.890308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.121635, 61.392963, 51.674202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.043251, 61.042099, 51.849556>,  <57.996220, 60.831581, 51.954769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.043251, 61.042099, 51.849556>,  <58.121635, 61.392963, 51.674202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.043251, 61.042099, 51.849556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221565, -0.475099, -0.851580,
		0.955252, -0.069747, 0.287451,
		-0.195963, -0.877163, 0.438386,
		57.984463, 60.778950, 51.981071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.322632, 61.922184, 51.277515>,  <58.121635, 61.392963, 51.674202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.322632, 61.922184, 51.277515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.495247, 62.022495, 50.930901>,  <58.598816, 62.082684, 50.722931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.495247, 62.022495, 50.930901>,  <58.322632, 61.922184, 51.277515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.495247, 62.022495, 50.930901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859400, 0.177726, 0.479422,
		0.274236, -0.951589, -0.138826,
		0.431540, 0.250782, -0.866534,
		58.624710, 62.097729, 50.670940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.911770, 61.462212, 51.094494>,  <58.322632, 61.922184, 51.277515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.911770, 61.462212, 51.094494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.961586, 61.837688, 50.965900>,  <58.991474, 62.062973, 50.888744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.961586, 61.837688, 50.965900>,  <58.911770, 61.462212, 51.094494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.961586, 61.837688, 50.965900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908513, 0.022372, 0.417258,
		0.398868, -0.344039, -0.850025,
		0.124537, 0.938689, -0.321487,
		58.998947, 62.119293, 50.869453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.449238, 61.540550, 50.684113>,  <58.911770, 61.462212, 51.094494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.449238, 61.540550, 50.684113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.408340, 61.892651, 50.869457>,  <59.383801, 62.103912, 50.980663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.408340, 61.892651, 50.869457>,  <59.449238, 61.540550, 50.684113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.408340, 61.892651, 50.869457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911973, -0.103093, 0.397085,
		0.397304, 0.463172, -0.792225,
		-0.102246, 0.880252, 0.463360,
		59.377666, 62.156727, 51.008465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.950844, 61.945618, 50.462826>,  <59.449238, 61.540550, 50.684113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.950844, 61.945618, 50.462826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.851166, 62.067074, 50.830673>,  <59.791359, 62.139946, 51.051384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.851166, 62.067074, 50.830673>,  <59.950844, 61.945618, 50.462826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.851166, 62.067074, 50.830673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961096, -0.039289, 0.273406,
		0.119148, 0.951977, -0.282035,
		-0.249195, 0.303638, 0.919623,
		59.776409, 62.158165, 51.106560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.359009, 62.545170, 50.732227>,  <59.950844, 61.945618, 50.462826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.359009, 62.545170, 50.732227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.252022, 62.297943, 51.027916>,  <60.187828, 62.149605, 51.205330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.252022, 62.297943, 51.027916>,  <60.359009, 62.545170, 50.732227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.252022, 62.297943, 51.027916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962916, -0.143280, 0.228613,
		-0.035383, 0.772956, 0.633472,
		-0.267472, -0.618069, 0.739222,
		60.171780, 62.112522, 51.249683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.393532, 62.834023, 51.345245>,  <60.359009, 62.545170, 50.732227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.393532, 62.834023, 51.345245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.495064, 62.447220, 51.336540>,  <60.555984, 62.215137, 51.331318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.495064, 62.447220, 51.336540>,  <60.393532, 62.834023, 51.345245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.495064, 62.447220, 51.336540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964379, 0.254746, -0.071249,
		0.074442, -0.002899, 0.997221,
		0.253831, -0.967004, -0.021760,
		60.571213, 62.157120, 51.330013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.023590, 62.645000, 51.678047>,  <60.393532, 62.834023, 51.345245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.023590, 62.645000, 51.678047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.998650, 62.290733, 51.494003>,  <60.983685, 62.078171, 51.383575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.998650, 62.290733, 51.494003>,  <61.023590, 62.645000, 51.678047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.998650, 62.290733, 51.494003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971089, -0.160272, 0.176913,
		-0.230429, -0.435775, 0.870059,
		-0.062352, -0.885671, -0.460108,
		60.979942, 62.025032, 51.355972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.275066, 62.078812, 52.133759>,  <61.023590, 62.645000, 51.678047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.275066, 62.078812, 52.133759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.320694, 62.019787, 51.740776>,  <61.348072, 61.984371, 51.504986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.320694, 62.019787, 51.740776>,  <61.275066, 62.078812, 52.133759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.320694, 62.019787, 51.740776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985373, -0.109216, 0.130816,
		-0.126603, -0.983005, 0.132942,
		0.114073, -0.147559, -0.982453,
		61.354916, 61.975517, 51.446041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.742451, 61.827126, 52.723263>,  <61.275066, 62.078812, 52.133759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.742451, 61.827126, 52.723263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.799843, 61.492996, 52.935547>,  <61.834278, 61.292519, 53.062916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.799843, 61.492996, 52.935547>,  <61.742451, 61.827126, 52.723263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.799843, 61.492996, 52.935547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846579, 0.381338, 0.371330,
		-0.512559, 0.396009, 0.761879,
		0.143484, -0.835319, 0.530711,
		61.842888, 61.242401, 53.094761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.318329, 62.090527, 52.948734>,  <61.742451, 61.827126, 52.723263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.318329, 62.090527, 52.948734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.220306, 61.725342, 53.079243>,  <62.161491, 61.506233, 53.157547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.220306, 61.725342, 53.079243>,  <62.318329, 62.090527, 52.948734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.220306, 61.725342, 53.079243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786031, 0.009908, 0.618108,
		-0.567539, 0.407932, 0.715186,
		-0.245060, -0.912958, 0.326270,
		62.146790, 61.451454, 53.177124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.493996, 62.009724, 53.700630>,  <62.318329, 62.090527, 52.948734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.493996, 62.009724, 53.700630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.511925, 61.638542, 53.552635>,  <62.522682, 61.415833, 53.463840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.511925, 61.638542, 53.552635>,  <62.493996, 62.009724, 53.700630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.511925, 61.638542, 53.552635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921789, -0.104345, 0.373387,
		-0.385093, -0.357785, 0.850702,
		0.044826, -0.927956, -0.369984,
		62.525372, 61.360157, 53.441639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.626286, 61.573154, 54.282814>,  <62.493996, 62.009724, 53.700630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.626286, 61.573154, 54.282814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.793144, 61.405251, 53.960377>,  <62.893261, 61.304508, 53.766914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.793144, 61.405251, 53.960377>,  <62.626286, 61.573154, 54.282814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.793144, 61.405251, 53.960377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862994, -0.095195, 0.496165,
		-0.285005, -0.902630, 0.322538,
		0.417149, -0.419757, -0.806095,
		62.918289, 61.279324, 53.718548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.061970, 61.064812, 54.556091>,  <62.626286, 61.573154, 54.282814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.061970, 61.064812, 54.556091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.257050, 61.154114, 54.218498>,  <63.374096, 61.207695, 54.015942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.257050, 61.154114, 54.218498>,  <63.061970, 61.064812, 54.556091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.257050, 61.154114, 54.218498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822439, -0.441759, 0.358391,
		-0.292824, -0.868911, -0.399060,
		0.487698, 0.223256, -0.843983,
		63.403358, 61.221092, 53.965302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.342175, 60.453320, 54.130672>,  <63.061970, 61.064812, 54.556091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.342175, 60.453320, 54.130672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.578217, 60.772999, 54.084961>,  <63.719841, 60.964806, 54.057533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.578217, 60.772999, 54.084961>,  <63.342175, 60.453320, 54.130672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.578217, 60.772999, 54.084961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807326, -0.584012, 0.084587,
		0.000862, -0.142175, -0.989841,
		0.590105, 0.799197, -0.114278,
		63.755249, 61.012756, 54.050678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.767666, 60.473000, 53.505581>,  <63.342175, 60.453320, 54.130672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.767666, 60.473000, 53.505581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.945450, 60.631573, 53.826904>,  <64.052116, 60.726715, 54.019699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.945450, 60.631573, 53.826904>,  <63.767666, 60.473000, 53.505581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.945450, 60.631573, 53.826904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722106, -0.689227, -0.059396,
		0.530113, 0.606470, -0.592600,
		0.444458, 0.396433, 0.803304,
		64.078789, 60.750504, 54.067894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.423523, 60.665329, 53.262363>,  <63.767666, 60.473000, 53.505581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.423523, 60.665329, 53.262363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.393021, 60.572212, 53.650177>,  <64.374718, 60.516342, 53.882866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.393021, 60.572212, 53.650177>,  <64.423523, 60.665329, 53.262363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.393021, 60.572212, 53.650177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651264, -0.747918, -0.128353,
		0.755010, 0.621633, 0.208644,
		-0.076261, -0.232790, 0.969532,
		64.370140, 60.502377, 53.941036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.047775, 60.804539, 53.562912>,  <64.423523, 60.665329, 53.262363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.047775, 60.804539, 53.562912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.829353, 60.511978, 53.726315>,  <64.698296, 60.336441, 53.824356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.829353, 60.511978, 53.726315>,  <65.047775, 60.804539, 53.562912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.829353, 60.511978, 53.726315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721203, -0.658520, -0.214983,
		0.426245, 0.177219, 0.887079,
		-0.546060, -0.731399, 0.408502,
		64.665535, 60.292557, 53.848866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.923523, 61.330910, 54.247005>,  <65.047775, 60.804539, 53.562912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.923523, 61.330910, 54.247005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.898781, 61.728828, 54.214622>,  <64.883934, 61.967579, 54.195194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.898781, 61.728828, 54.214622>,  <64.923523, 61.330910, 54.247005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.898781, 61.728828, 54.214622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091348, 0.086410, 0.992063,
		0.993897, 0.053961, -0.096217,
		-0.061847, 0.994797, -0.080953,
		64.880226, 62.027267, 54.190338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.503586, 61.638126, 54.613644>,  <64.923523, 61.330910, 54.247005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.503586, 61.638126, 54.613644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.179962, 61.873177, 54.618038>,  <64.985786, 62.014206, 54.620674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.179962, 61.873177, 54.618038>,  <65.503586, 61.638126, 54.613644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.179962, 61.873177, 54.618038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077921, 0.088725, 0.993004,
		0.582542, 0.804253, -0.117572,
		-0.809057, 0.587627, 0.010982,
		64.937248, 62.049465, 54.621334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.110245, 61.779121, 54.257984>,  <65.503586, 61.638126, 54.613644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.110245, 61.779121, 54.257984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.355713, 61.721661, 54.568539>,  <66.502991, 61.687183, 54.754871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.355713, 61.721661, 54.568539>,  <66.110245, 61.779121, 54.257984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.355713, 61.721661, 54.568539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760759, -0.155587, -0.630109,
		0.211314, 0.977321, 0.013808,
		0.613671, -0.143656, 0.776384,
		66.539818, 61.678562, 54.801453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.768738, 62.016052, 54.038597>,  <66.110245, 61.779121, 54.257984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.768738, 62.016052, 54.038597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.826958, 61.776035, 54.353245>,  <66.861885, 61.632027, 54.542034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.826958, 61.776035, 54.353245>,  <66.768738, 62.016052, 54.038597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.826958, 61.776035, 54.353245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863932, -0.310368, -0.396602,
		0.482118, 0.737309, 0.473221,
		0.145545, -0.600039, 0.786619,
		66.870621, 61.596024, 54.589230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.329788, 62.131084, 54.485332>,  <66.768738, 62.016052, 54.038597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.329788, 62.131084, 54.485332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.252922, 61.738991, 54.504124>,  <67.206802, 61.503735, 54.515400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.252922, 61.738991, 54.504124>,  <67.329788, 62.131084, 54.485332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.252922, 61.738991, 54.504124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895050, -0.194697, -0.401221,
		0.402439, -0.035050, 0.914775,
		-0.192167, -0.980237, 0.046982,
		67.195274, 61.444920, 54.518219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.920601, 61.606792, 54.760353>,  <67.329788, 62.131084, 54.485332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.920601, 61.606792, 54.760353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.578583, 61.492737, 54.933594>,  <67.373367, 61.424305, 55.037540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.578583, 61.492737, 54.933594>,  <67.920601, 61.606792, 54.760353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.578583, 61.492737, 54.933594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437486, -0.845071, 0.307345,
		0.278369, 0.452274, 0.847324,
		-0.855054, -0.285137, 0.433106,
		67.322067, 61.407196, 55.063526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.080025, 61.523048, 55.548340>,  <67.920601, 61.606792, 54.760353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.080025, 61.523048, 55.548340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.805496, 61.271828, 55.401627>,  <67.640778, 61.121098, 55.313599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.805496, 61.271828, 55.401627>,  <68.080025, 61.523048, 55.548340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.805496, 61.271828, 55.401627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473345, -0.768591, 0.430363,
		-0.552194, 0.121749, 0.824778,
		-0.686313, -0.628048, -0.366782,
		67.599602, 61.083412, 55.291592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.664604, 61.196175, 56.000595>,  <68.080025, 61.523048, 55.548340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.664604, 61.196175, 56.000595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.671188, 60.895653, 55.736694>,  <67.675140, 60.715340, 55.578354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.671188, 60.895653, 55.736694>,  <67.664604, 61.196175, 56.000595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.671188, 60.895653, 55.736694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257539, -0.634391, 0.728850,
		-0.966128, -0.181904, 0.183052,
		0.016455, -0.751305, -0.659750,
		67.676125, 60.670261, 55.538769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.279915, 60.716976, 56.200768>,  <67.664604, 61.196175, 56.000595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.279915, 60.716976, 56.200768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.589043, 60.568665, 55.994751>,  <67.774521, 60.479675, 55.871140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.589043, 60.568665, 55.994751>,  <67.279915, 60.716976, 56.200768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.589043, 60.568665, 55.994751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286244, -0.520667, 0.804345,
		-0.566397, -0.769044, -0.296252,
		0.772825, -0.370778, -0.515038,
		67.820892, 60.457432, 55.840240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.179581, 59.920532, 56.180260>,  <67.279915, 60.716976, 56.200768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.179581, 59.920532, 56.180260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.551254, 60.055748, 56.120461>,  <67.774261, 60.136875, 56.084579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.551254, 60.055748, 56.120461>,  <67.179581, 59.920532, 56.180260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.551254, 60.055748, 56.120461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329130, -0.572636, 0.750841,
		0.168203, -0.746873, -0.643341,
		0.929183, 0.338036, -0.149499,
		67.830009, 60.157158, 56.075611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.585701, 59.295883, 56.096157>,  <67.179581, 59.920532, 56.180260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.585701, 59.295883, 56.096157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.732925, 59.635483, 56.247803>,  <67.821259, 59.839245, 56.338791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.732925, 59.635483, 56.247803>,  <67.585701, 59.295883, 56.096157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.732925, 59.635483, 56.247803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280990, -0.490237, 0.825052,
		0.886327, -0.197142, -0.418998,
		0.368061, 0.849001, 0.379116,
		67.843346, 59.890182, 56.361538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.270035, 59.175251, 56.356258>,  <67.585701, 59.295883, 56.096157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.270035, 59.175251, 56.356258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.132935, 59.499794, 56.545670>,  <68.050674, 59.694519, 56.659317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.132935, 59.499794, 56.545670>,  <68.270035, 59.175251, 56.356258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.132935, 59.499794, 56.545670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220999, -0.420276, 0.880073,
		0.913064, 0.406289, -0.035262,
		-0.342744, 0.811355, 0.473528,
		68.030113, 59.743202, 56.687729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.708839, 59.584362, 56.796318>,  <68.270035, 59.175251, 56.356258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.708839, 59.584362, 56.796318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.351852, 59.608398, 56.975151>,  <68.137657, 59.622818, 57.082451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.351852, 59.608398, 56.975151>,  <68.708839, 59.584362, 56.796318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.351852, 59.608398, 56.975151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403557, -0.336523, 0.850820,
		0.201576, 0.939756, 0.276089,
		-0.892474, 0.060087, 0.447080,
		68.084114, 59.626423, 57.109276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.914688, 59.934143, 57.454060>,  <68.708839, 59.584362, 56.796318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.914688, 59.934143, 57.454060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.558426, 59.761078, 57.509949>,  <68.344666, 59.657238, 57.543480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.558426, 59.761078, 57.509949>,  <68.914688, 59.934143, 57.454060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.558426, 59.761078, 57.509949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251476, -0.212771, 0.944187,
		-0.378786, 0.876089, 0.298312,
		-0.890663, -0.432663, 0.139721,
		68.291229, 59.631279, 57.551865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.864090, 60.063133, 58.090424>,  <68.914688, 59.934143, 57.454060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.864090, 60.063133, 58.090424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.632996, 59.748871, 58.001907>,  <68.494339, 59.560314, 57.948795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.632996, 59.748871, 58.001907>,  <68.864090, 60.063133, 58.090424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.632996, 59.748871, 58.001907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159223, -0.374388, 0.913500,
		-0.800547, 0.492522, 0.341390,
		-0.577731, -0.785656, -0.221294,
		68.459679, 59.513172, 57.935520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.796379, 59.469185, 58.459671>,  <68.864090, 60.063133, 58.090424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.796379, 59.469185, 58.459671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.726852, 59.078003, 58.413361>,  <68.685135, 58.843296, 58.385574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.726852, 59.078003, 58.413361>,  <68.796379, 59.469185, 58.459671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.726852, 59.078003, 58.413361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954597, -0.196196, 0.224167,
		-0.241939, -0.071557, 0.967649,
		-0.173809, -0.977950, -0.115775,
		68.674713, 58.784618, 58.378628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.402779, 59.277534, 58.737659>,  <68.796379, 59.469185, 58.459671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.402779, 59.277534, 58.737659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.188988, 58.960018, 58.621574>,  <69.060715, 58.769508, 58.551922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.188988, 58.960018, 58.621574>,  <69.402779, 59.277534, 58.737659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.188988, 58.960018, 58.621574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798977, -0.586521, 0.132773,
		-0.275611, -0.160911, 0.947706,
		-0.534485, -0.793789, -0.290216,
		69.028641, 58.721882, 58.534512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.443726, 58.646793, 59.272385>,  <69.402779, 59.277534, 58.737659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.443726, 58.646793, 59.272385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.419357, 58.538780, 58.888016>,  <69.404732, 58.473972, 58.657394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.419357, 58.538780, 58.888016>,  <69.443726, 58.646793, 59.272385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.419357, 58.538780, 58.888016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630729, -0.756562, 0.172611,
		-0.773607, -0.595564, 0.216414,
		-0.060930, -0.270031, -0.960922,
		69.401077, 58.457771, 58.599739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.711021, 58.348000, 60.003113>,  <69.443726, 58.646793, 59.272385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.711021, 58.348000, 60.003113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.003349, 58.075493, 59.986336>,  <70.178749, 57.911987, 59.976269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.003349, 58.075493, 59.986336>,  <69.711021, 58.348000, 60.003113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.003349, 58.075493, 59.986336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537362, 0.612165, -0.580083,
		0.420870, 0.401402, 0.813477,
		0.730829, -0.681271, -0.041944,
		70.222595, 57.871113, 59.973751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.283882, 58.616974, 60.304268>,  <69.711021, 58.348000, 60.003113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.283882, 58.616974, 60.304268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.372261, 58.359356, 60.011314>,  <70.425285, 58.204784, 59.835541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.372261, 58.359356, 60.011314>,  <70.283882, 58.616974, 60.304268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.372261, 58.359356, 60.011314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546797, 0.703622, -0.453795,
		0.807586, -0.300200, 0.507626,
		0.220948, -0.644046, -0.732384,
		70.438545, 58.166142, 59.791599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.013016, 58.409245, 60.220005>,  <70.283882, 58.616974, 60.304268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.013016, 58.409245, 60.220005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.789513, 58.431183, 59.889000>,  <70.655411, 58.444347, 59.690395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.789513, 58.431183, 59.889000>,  <71.013016, 58.409245, 60.220005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.789513, 58.431183, 59.889000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470021, 0.843031, -0.261495,
		0.683275, -0.535062, -0.496834,
		-0.558762, 0.054850, -0.827512,
		70.621887, 58.447639, 59.640747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.388290, 58.370907, 59.551067>,  <71.013016, 58.409245, 60.220005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.388290, 58.370907, 59.551067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.065346, 58.606197, 59.532463>,  <70.871582, 58.747372, 59.521301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.065346, 58.606197, 59.532463>,  <71.388290, 58.370907, 59.551067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.065346, 58.606197, 59.532463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573419, 0.763542, -0.296976,
		-0.139175, -0.266437, -0.953751,
		-0.807354, 0.588231, -0.046514,
		70.823143, 58.782665, 59.518509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.819626, 58.175674, 60.168312>,  <71.388290, 58.370907, 59.551067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.819626, 58.175674, 60.168312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.140678, 58.097656, 59.942833>,  <72.333305, 58.050846, 59.807545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.140678, 58.097656, 59.942833>,  <71.819626, 58.175674, 60.168312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.140678, 58.097656, 59.942833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596391, 0.245584, 0.764203,
		-0.010623, -0.949550, 0.313437,
		0.802624, -0.195049, -0.563694,
		72.381462, 58.039143, 59.773724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.226982, 57.577724, 60.354332>,  <71.819626, 58.175674, 60.168312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.226982, 57.577724, 60.354332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.444321, 57.888657, 60.227509>,  <72.574722, 58.075214, 60.151413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.444321, 57.888657, 60.227509>,  <72.226982, 57.577724, 60.354332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.444321, 57.888657, 60.227509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443717, 0.054694, 0.894497,
		0.712659, -0.626713, -0.315196,
		0.543353, 0.777328, -0.317062,
		72.607330, 58.121857, 60.132389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
