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
	<24.686701, 35.370121, 35.496067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.347513, 35.392380, 35.285221>,  <24.144001, 35.405735, 35.158714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.347513, 35.392380, 35.285221>,  <24.686701, 35.370121, 35.496067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.347513, 35.392380, 35.285221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502764, 0.399369, -0.766637,
		0.167856, -0.915100, -0.366628,
		-0.847970, 0.055643, -0.527116,
		24.093122, 35.409073, 35.127087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002159, 34.784721, 35.915333>,  <24.686701, 35.370121, 35.496067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002159, 34.784721, 35.915333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223701, 35.110199, 35.985931>,  <25.356627, 35.305485, 36.028290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223701, 35.110199, 35.985931>,  <25.002159, 34.784721, 35.915333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223701, 35.110199, 35.985931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707009, -0.571578, 0.416458,
		0.439751, -0.105870, -0.891858,
		0.553856, 0.813689, 0.176501,
		25.389858, 35.354305, 36.038883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704285, 34.766605, 35.522079>,  <25.002159, 34.784721, 35.915333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704285, 34.766605, 35.522079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751833, 34.998970, 35.844173>,  <25.780361, 35.138390, 36.037430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751833, 34.998970, 35.844173>,  <25.704285, 34.766605, 35.522079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.751833, 34.998970, 35.844173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723736, -0.605908, 0.330275,
		0.679761, 0.543519, -0.492455,
		0.118871, 0.580916, 0.805237,
		25.787495, 35.173244, 36.085743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364929, 34.879772, 35.690376>,  <25.704285, 34.766605, 35.522079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364929, 34.879772, 35.690376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192036, 34.908722, 36.049915>,  <26.088299, 34.926094, 36.265640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192036, 34.908722, 36.049915>,  <26.364929, 34.879772, 35.690376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192036, 34.908722, 36.049915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614743, -0.705608, 0.352431,
		0.659746, 0.704896, 0.260493,
		-0.432234, 0.072379, 0.898852,
		26.062366, 34.930435, 36.319572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731529, 35.169178, 36.328491>,  <26.364929, 34.879772, 35.690376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731529, 35.169178, 36.328491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498005, 34.858318, 36.422474>,  <26.357891, 34.671803, 36.478863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498005, 34.858318, 36.422474>,  <26.731529, 35.169178, 36.328491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498005, 34.858318, 36.422474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806504, -0.521839, 0.277911,
		-0.093369, 0.351741, 0.931429,
		-0.583809, -0.777150, 0.234957,
		26.322863, 34.625172, 36.492962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028477, 34.940250, 36.855080>,  <26.731529, 35.169178, 36.328491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028477, 34.940250, 36.855080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897432, 34.623295, 36.649250>,  <26.818806, 34.433121, 36.525753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897432, 34.623295, 36.649250>,  <27.028477, 34.940250, 36.855080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897432, 34.623295, 36.649250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876580, -0.458132, 0.147388,
		-0.352533, -0.402783, 0.844681,
		-0.327610, -0.792390, -0.514578,
		26.799149, 34.385578, 36.494877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941652, 34.853218, 37.638954>,  <27.028477, 34.940250, 36.855080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941652, 34.853218, 37.638954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042280, 34.469875, 37.584904>,  <27.102657, 34.239868, 37.552471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042280, 34.469875, 37.584904>,  <26.941652, 34.853218, 37.638954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042280, 34.469875, 37.584904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932913, -0.277283, 0.229756,
		-0.257658, 0.068263, -0.963822,
		0.251568, -0.958360, -0.135128,
		27.117750, 34.182369, 37.544365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503967, 34.511097, 37.138844>,  <26.941652, 34.853218, 37.638954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503967, 34.511097, 37.138844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635544, 34.217129, 37.376057>,  <26.714489, 34.040749, 37.518383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635544, 34.217129, 37.376057>,  <26.503967, 34.511097, 37.138844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635544, 34.217129, 37.376057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938538, -0.184846, 0.291510,
		-0.104618, -0.652472, -0.750557,
		0.328939, -0.734924, 0.593032,
		26.734226, 33.996651, 37.553967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297613, 33.904636, 36.824005>,  <26.503967, 34.511097, 37.138844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297613, 33.904636, 36.824005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349483, 33.861645, 37.218292>,  <26.380606, 33.835850, 37.454865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349483, 33.861645, 37.218292>,  <26.297613, 33.904636, 36.824005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349483, 33.861645, 37.218292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955045, -0.280820, 0.095020,
		0.266596, -0.953723, -0.139062,
		0.129674, -0.107478, 0.985714,
		26.388386, 33.829403, 37.514008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886065, 33.348206, 37.045929>,  <26.297613, 33.904636, 36.824005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886065, 33.348206, 37.045929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952608, 33.510475, 37.405430>,  <25.992535, 33.607838, 37.621132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952608, 33.510475, 37.405430>,  <25.886065, 33.348206, 37.045929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952608, 33.510475, 37.405430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938699, -0.213941, 0.270321,
		0.301941, -0.888628, 0.345213,
		0.166359, 0.405672, 0.898752,
		26.002516, 33.632175, 37.675056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617908, 32.919392, 37.495655>,  <25.886065, 33.348206, 37.045929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617908, 32.919392, 37.495655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631672, 33.274208, 37.679817>,  <25.639929, 33.487099, 37.790314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631672, 33.274208, 37.679817>,  <25.617908, 32.919392, 37.495655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631672, 33.274208, 37.679817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929942, -0.140336, 0.339874,
		0.366094, -0.439845, 0.820068,
		0.034407, 0.887041, 0.460406,
		25.641994, 33.540321, 37.817940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291647, 32.899170, 38.164871>,  <25.617908, 32.919392, 37.495655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291647, 32.899170, 38.164871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286215, 33.266945, 38.007675>,  <25.282955, 33.487610, 37.913357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286215, 33.266945, 38.007675>,  <25.291647, 32.899170, 38.164871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.286215, 33.266945, 38.007675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999696, -0.020572, -0.013582,
		-0.020572, 0.392690, 0.919441,
		0.013582, -0.919441, 0.392994,
		25.282141, 33.542778, 37.889778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.654726, 33.257214, 38.223755>,  <25.291647, 32.899170, 38.164871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.654726, 33.257214, 38.223755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792419, 33.492214, 37.930813>,  <24.875036, 33.633217, 37.755047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792419, 33.492214, 37.930813>,  <24.654726, 33.257214, 38.223755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.792419, 33.492214, 37.930813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929594, 0.103822, -0.353660,
		-0.131743, 0.802533, 0.581881,
		0.344236, 0.587505, -0.732352,
		24.895691, 33.668465, 37.711105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.503269, 33.917946, 37.961586>,  <24.654726, 33.257214, 38.223755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.503269, 33.917946, 37.961586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733236, 33.869865, 38.285320>,  <24.871218, 33.841019, 38.479561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733236, 33.869865, 38.285320>,  <24.503269, 33.917946, 37.961586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.733236, 33.869865, 38.285320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817413, 0.128039, -0.561642,
		-0.036118, 0.984458, 0.171864,
		0.574919, -0.120199, 0.809334,
		24.905712, 33.833805, 38.528122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.995819, 34.547760, 38.176910>,  <24.503269, 33.917946, 37.961586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.995819, 34.547760, 38.176910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153755, 34.186176, 38.242588>,  <25.248516, 33.969227, 38.281994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153755, 34.186176, 38.242588>,  <24.995819, 34.547760, 38.176910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153755, 34.186176, 38.242588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797823, 0.248724, -0.549195,
		0.455612, 0.347841, 0.819405,
		0.394838, -0.903960, 0.164194,
		25.272207, 33.914989, 38.291847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621943, 34.602150, 38.630455>,  <24.995819, 34.547760, 38.176910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.621943, 34.602150, 38.630455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642559, 34.275349, 38.400726>,  <25.654930, 34.079266, 38.262890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642559, 34.275349, 38.400726>,  <25.621943, 34.602150, 38.630455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642559, 34.275349, 38.400726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929281, 0.249859, -0.272041,
		0.365758, -0.519684, 0.772107,
		0.051543, -0.817006, -0.574321,
		25.658022, 34.030247, 38.228432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223097, 34.248699, 38.756943>,  <25.621943, 34.602150, 38.630455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223097, 34.248699, 38.756943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145041, 34.064724, 38.410446>,  <26.098207, 33.954338, 38.202549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145041, 34.064724, 38.410446>,  <26.223097, 34.248699, 38.756943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145041, 34.064724, 38.410446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980103, -0.058745, -0.189597,
		0.036316, -0.886005, 0.462251,
		-0.195139, -0.459939, -0.866243,
		26.086498, 33.926743, 38.150574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585274, 33.662861, 38.779495>,  <26.223097, 34.248699, 38.756943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585274, 33.662861, 38.779495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517933, 33.738621, 38.392551>,  <26.477528, 33.784077, 38.160385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517933, 33.738621, 38.392551>,  <26.585274, 33.662861, 38.779495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517933, 33.738621, 38.392551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985720, 0.035954, -0.164510,
		0.003623, -0.981242, -0.192748,
		-0.168354, 0.189400, -0.967360,
		26.467426, 33.795441, 38.102345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849386, 33.122761, 38.342533>,  <26.585274, 33.662861, 38.779495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849386, 33.122761, 38.342533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878378, 33.460743, 38.130573>,  <26.895773, 33.663532, 38.003399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878378, 33.460743, 38.130573>,  <26.849386, 33.122761, 38.342533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878378, 33.460743, 38.130573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950154, -0.220032, -0.220893,
		-0.303240, -0.487473, -0.818789,
		0.072480, 0.844959, -0.529896,
		26.900122, 33.714230, 37.971603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176550, 32.948082, 37.688015>,  <26.849386, 33.122761, 38.342533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176550, 32.948082, 37.688015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286041, 33.319702, 37.787560>,  <27.351736, 33.542675, 37.847286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286041, 33.319702, 37.787560>,  <27.176550, 32.948082, 37.688015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286041, 33.319702, 37.787560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944300, -0.210450, -0.252997,
		-0.182674, 0.304257, -0.934911,
		0.273728, 0.929053, 0.248866,
		27.368160, 33.598419, 37.862221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749014, 32.506420, 37.609951>,  <27.176550, 32.948082, 37.688015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749014, 32.506420, 37.609951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765238, 32.747986, 37.291542>,  <27.774971, 32.892925, 37.100498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765238, 32.747986, 37.291542>,  <27.749014, 32.506420, 37.609951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765238, 32.747986, 37.291542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829479, 0.464514, 0.310148,
		0.557064, 0.647702, 0.519772,
		0.040558, 0.603912, -0.796019,
		27.777405, 32.929161, 37.052738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353785, 32.441299, 37.159420>,  <27.749014, 32.506420, 37.609951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353785, 32.441299, 37.159420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372627, 32.814922, 37.017822>,  <28.383934, 33.039097, 36.932865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372627, 32.814922, 37.017822>,  <28.353785, 32.441299, 37.159420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372627, 32.814922, 37.017822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996565, -0.068115, -0.047109,
		-0.068115, -0.350560, -0.934060,
		0.047109, 0.934060, -0.353995,
		28.386761, 33.095139, 36.911625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704498, 32.580830, 36.404049>,  <28.353785, 32.441299, 37.159420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704498, 32.580830, 36.404049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782234, 32.866474, 36.673054>,  <28.828876, 33.037861, 36.834457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782234, 32.866474, 36.673054>,  <28.704498, 32.580830, 36.404049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782234, 32.866474, 36.673054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979537, -0.177849, -0.094214,
		0.052325, 0.677059, -0.734066,
		0.194341, 0.714115, 0.672511,
		28.840536, 33.080708, 36.874805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195923, 33.030365, 36.113029>,  <28.704498, 32.580830, 36.404049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195923, 33.030365, 36.113029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217737, 32.991253, 36.510513>,  <29.230825, 32.967785, 36.749004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217737, 32.991253, 36.510513>,  <29.195923, 33.030365, 36.113029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217737, 32.991253, 36.510513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963053, -0.257706, -0.078211,
		0.263733, 0.961263, 0.080113,
		0.054536, -0.097779, 0.993713,
		29.234098, 32.961918, 36.808628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697128, 33.467251, 36.359882>,  <29.195923, 33.030365, 36.113029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697128, 33.467251, 36.359882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676311, 33.126335, 36.568073>,  <29.663820, 32.921787, 36.692986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676311, 33.126335, 36.568073>,  <29.697128, 33.467251, 36.359882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676311, 33.126335, 36.568073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938544, -0.219819, -0.266112,
		0.341215, 0.474637, 0.811352,
		-0.052044, -0.852291, 0.520473,
		29.660698, 32.870647, 36.724216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212305, 33.549068, 36.765392>,  <29.697128, 33.467251, 36.359882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212305, 33.549068, 36.765392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171518, 33.151268, 36.774948>,  <30.147045, 32.912586, 36.780682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171518, 33.151268, 36.774948>,  <30.212305, 33.549068, 36.765392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171518, 33.151268, 36.774948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988760, -0.098683, 0.112316,
		-0.109341, 0.035074, 0.993385,
		-0.101969, -0.994501, 0.023890,
		30.140928, 32.852917, 36.782116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109892, 33.686134, 37.387951>,  <30.212305, 33.549068, 36.765392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109892, 33.686134, 37.387951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010105, 33.359283, 37.180077>,  <29.950233, 33.163174, 37.055351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010105, 33.359283, 37.180077>,  <30.109892, 33.686134, 37.387951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010105, 33.359283, 37.180077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945314, -0.089047, -0.313769,
		0.210113, -0.569537, 0.794657,
		-0.249465, -0.817128, -0.519681,
		29.935266, 33.114143, 37.024174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568609, 33.237274, 37.657726>,  <30.109892, 33.686134, 37.387951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568609, 33.237274, 37.657726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444468, 33.131851, 37.292385>,  <30.369984, 33.068596, 37.073181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444468, 33.131851, 37.292385>,  <30.568609, 33.237274, 37.657726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444468, 33.131851, 37.292385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949556, -0.040480, -0.310973,
		0.044987, -0.963794, 0.262826,
		-0.310353, -0.263558, -0.913356,
		30.351362, 33.052784, 37.018379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955601, 32.627609, 37.534752>,  <30.568609, 33.237274, 37.657726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955601, 32.627609, 37.534752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818457, 32.768490, 37.186405>,  <30.736170, 32.853016, 36.977398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818457, 32.768490, 37.186405>,  <30.955601, 32.627609, 37.534752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818457, 32.768490, 37.186405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840747, -0.298486, -0.451719,
		-0.419035, -0.887053, -0.193769,
		-0.342861, 0.352197, -0.870864,
		30.715599, 32.874149, 36.925148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805119, 32.049465, 37.170029>,  <30.955601, 32.627609, 37.534752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805119, 32.049465, 37.170029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946400, 32.365055, 36.968925>,  <31.031168, 32.554409, 36.848263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946400, 32.365055, 36.968925>,  <30.805119, 32.049465, 37.170029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946400, 32.365055, 36.968925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724795, -0.570557, -0.386182,
		-0.591541, -0.227997, -0.773367,
		0.353202, 0.788976, -0.502758,
		31.052361, 32.601749, 36.818096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367891, 32.107224, 37.887020>,  <30.805119, 32.049465, 37.170029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367891, 32.107224, 37.887020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620293, 31.812542, 37.789783>,  <30.771734, 31.635733, 37.731441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620293, 31.812542, 37.789783>,  <30.367891, 32.107224, 37.887020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620293, 31.812542, 37.789783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068620, -0.365127, 0.928425,
		-0.772738, -0.569160, -0.280950,
		0.631005, -0.736708, -0.243092,
		30.809595, 31.591530, 37.716858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163885, 31.512775, 38.140751>,  <30.367891, 32.107224, 37.887020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163885, 31.512775, 38.140751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547491, 31.425039, 38.068993>,  <30.777655, 31.372396, 38.025936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547491, 31.425039, 38.068993>,  <30.163885, 31.512775, 38.140751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547491, 31.425039, 38.068993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052488, -0.484645, 0.873135,
		-0.278458, -0.846764, -0.453268,
		0.959013, -0.219340, -0.179398,
		30.835196, 31.359238, 38.015175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230219, 30.963606, 38.393448>,  <30.163885, 31.512775, 38.140751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230219, 30.963606, 38.393448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621103, 31.042490, 38.362045>,  <30.855635, 31.089821, 38.343204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621103, 31.042490, 38.362045>,  <30.230219, 30.963606, 38.393448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621103, 31.042490, 38.362045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184769, -0.608253, 0.771939,
		0.104482, -0.768854, -0.630831,
		0.977212, 0.197211, -0.078509,
		30.914267, 31.101654, 38.338493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551241, 30.389366, 38.366562>,  <30.230219, 30.963606, 38.393448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551241, 30.389366, 38.366562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850388, 30.632114, 38.474194>,  <31.029875, 30.777763, 38.538773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850388, 30.632114, 38.474194>,  <30.551241, 30.389366, 38.366562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850388, 30.632114, 38.474194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305819, -0.674709, 0.671746,
		0.589211, -0.420088, -0.690186,
		0.747867, 0.606872, 0.269075,
		31.074747, 30.814177, 38.554916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287159, 30.197113, 38.263527>,  <30.551241, 30.389366, 38.366562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287159, 30.197113, 38.263527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219200, 30.417704, 38.590210>,  <31.178425, 30.550058, 38.786221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219200, 30.417704, 38.590210>,  <31.287159, 30.197113, 38.263527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219200, 30.417704, 38.590210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319101, -0.753318, 0.575054,
		0.932367, 0.358313, -0.047988,
		-0.169899, 0.551475, 0.816707,
		31.168230, 30.583145, 38.835220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927948, 29.917839, 38.269775>,  <31.287159, 30.197113, 38.263527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927948, 29.917839, 38.269775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970661, 30.242414, 38.499615>,  <31.996288, 30.437160, 38.637520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970661, 30.242414, 38.499615>,  <31.927948, 29.917839, 38.269775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970661, 30.242414, 38.499615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025137, -0.579921, 0.814285,
		0.993965, -0.072506, -0.082322,
		0.106781, 0.811439, 0.574599,
		32.002697, 30.485846, 38.671993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524918, 29.964270, 38.685463>,  <31.927948, 29.917839, 38.269775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524918, 29.964270, 38.685463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235298, 30.167761, 38.871773>,  <32.061527, 30.289856, 38.983559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235298, 30.167761, 38.871773>,  <32.524918, 29.964270, 38.685463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235298, 30.167761, 38.871773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078862, -0.609797, 0.788625,
		0.685225, 0.607735, 0.401403,
		-0.724049, 0.508730, 0.465776,
		32.018082, 30.320379, 39.011505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788559, 30.247055, 39.331585>,  <32.524918, 29.964270, 38.685463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788559, 30.247055, 39.331585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392155, 30.193638, 39.334915>,  <32.154312, 30.161587, 39.336914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392155, 30.193638, 39.334915>,  <32.788559, 30.247055, 39.331585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392155, 30.193638, 39.334915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083406, -0.567917, 0.818849,
		-0.104625, 0.812180, 0.573949,
		-0.991008, -0.133543, 0.008323,
		32.094852, 30.153574, 39.337414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549549, 30.472385, 40.056942>,  <32.788559, 30.247055, 39.331585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549549, 30.472385, 40.056942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307560, 30.197161, 39.896652>,  <32.162365, 30.032026, 39.800480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307560, 30.197161, 39.896652>,  <32.549549, 30.472385, 40.056942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307560, 30.197161, 39.896652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052416, -0.536590, 0.842213,
		-0.794518, 0.488513, 0.360688,
		-0.604974, -0.688060, -0.400725,
		32.126068, 29.990744, 39.776436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825871, 30.402744, 40.187874>,  <32.549549, 30.472385, 40.056942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825871, 30.402744, 40.187874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935059, 30.773611, 40.290516>,  <32.000572, 30.996132, 40.352100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935059, 30.773611, 40.290516>,  <31.825871, 30.402744, 40.187874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935059, 30.773611, 40.290516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205838, -0.316850, 0.925871,
		0.939743, -0.199917, -0.277337,
		0.272971, 0.927168, 0.256607,
		32.016949, 31.051762, 40.367496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542524, 29.950134, 40.645267>,  <31.825871, 30.402744, 40.187874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542524, 29.950134, 40.645267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431837, 29.729599, 40.960087>,  <31.365425, 29.597277, 41.148979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431837, 29.729599, 40.960087>,  <31.542524, 29.950134, 40.645267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431837, 29.729599, 40.960087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932393, 0.352235, -0.081074,
		-0.232528, -0.756277, -0.611536,
		-0.276718, -0.551340, 0.787052,
		31.348822, 29.564198, 41.196201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980326, 29.639133, 40.367764>,  <31.542524, 29.950134, 40.645267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980326, 29.639133, 40.367764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996313, 29.678383, 40.765511>,  <31.005905, 29.701933, 41.004158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996313, 29.678383, 40.765511>,  <30.980326, 29.639133, 40.367764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996313, 29.678383, 40.765511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897885, 0.440169, -0.007346,
		-0.438412, -0.892538, 0.105697,
		0.039968, 0.098124, 0.994371,
		31.008303, 29.707821, 41.063824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035770, 29.571211, 39.565697>,  <30.980326, 29.639133, 40.367764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035770, 29.571211, 39.565697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349728, 29.783310, 39.693935>,  <31.538103, 29.910568, 39.770878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349728, 29.783310, 39.693935>,  <31.035770, 29.571211, 39.565697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349728, 29.783310, 39.693935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022913, 0.541878, -0.840145,
		-0.619206, 0.652079, 0.437467,
		0.784894, 0.530246, 0.320593,
		31.585196, 29.942385, 39.790112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801977, 30.238293, 39.609348>,  <31.035770, 29.571211, 39.565697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801977, 30.238293, 39.609348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197472, 30.240547, 39.549526>,  <31.434769, 30.241899, 39.513634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197472, 30.240547, 39.549526>,  <30.801977, 30.238293, 39.609348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197472, 30.240547, 39.549526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123159, 0.598392, -0.791681,
		0.085031, 0.801184, 0.592347,
		0.988737, 0.005636, -0.149555,
		31.494093, 30.242237, 39.504658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069490, 30.909534, 39.646446>,  <30.801977, 30.238293, 39.609348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069490, 30.909534, 39.646446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349531, 30.722986, 39.430168>,  <31.517555, 30.611057, 39.300400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349531, 30.722986, 39.430168>,  <31.069490, 30.909534, 39.646446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349531, 30.722986, 39.430168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071479, 0.799208, -0.596790,
		0.710456, 0.379165, 0.592863,
		0.700102, -0.466370, -0.540699,
		31.559563, 30.583075, 39.267960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467703, 31.493343, 39.477848>,  <31.069490, 30.909534, 39.646446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467703, 31.493343, 39.477848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530849, 31.172749, 39.247131>,  <31.568737, 30.980391, 39.108700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530849, 31.172749, 39.247131>,  <31.467703, 31.493343, 39.477848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530849, 31.172749, 39.247131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051290, 0.589987, -0.805782,
		0.986127, 0.097623, 0.134248,
		0.157868, -0.801489, -0.576796,
		31.578209, 30.932302, 39.074093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973408, 31.675720, 38.904163>,  <31.467703, 31.493343, 39.477848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973408, 31.675720, 38.904163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724598, 31.383509, 38.791443>,  <31.575312, 31.208181, 38.723808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724598, 31.383509, 38.791443>,  <31.973408, 31.675720, 38.904163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724598, 31.383509, 38.791443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207066, 0.500567, -0.840569,
		0.755121, -0.464503, -0.462633,
		-0.622025, -0.730527, -0.281806,
		31.537991, 31.164351, 38.706902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181675, 31.434507, 38.333321>,  <31.973408, 31.675720, 38.904163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181675, 31.434507, 38.333321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796368, 31.327211, 38.338497>,  <31.565184, 31.262835, 38.341602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796368, 31.327211, 38.338497>,  <32.181675, 31.434507, 38.333321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796368, 31.327211, 38.338497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094015, 0.291705, -0.951877,
		0.251553, -0.918127, -0.306207,
		-0.963266, -0.268235, 0.012939,
		31.507389, 31.246738, 38.342377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110283, 31.144646, 37.728584>,  <32.181675, 31.434507, 38.333321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110283, 31.144646, 37.728584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748325, 31.269659, 37.844162>,  <31.531151, 31.344667, 37.913509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748325, 31.269659, 37.844162>,  <32.110283, 31.144646, 37.728584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748325, 31.269659, 37.844162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107073, 0.489880, -0.865190,
		-0.411947, -0.813844, -0.409826,
		-0.904895, 0.312531, 0.288945,
		31.476856, 31.363419, 37.930847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605196, 30.891102, 37.363060>,  <32.110283, 31.144646, 37.728584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605196, 30.891102, 37.363060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497433, 31.254976, 37.489479>,  <31.432775, 31.473301, 37.565331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497433, 31.254976, 37.489479>,  <31.605196, 30.891102, 37.363060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497433, 31.254976, 37.489479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179180, 0.275106, -0.944569,
		-0.946210, -0.311105, 0.088882,
		-0.269408, 0.909687, 0.316052,
		31.416611, 31.527882, 37.584293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233133, 31.084648, 36.786552>,  <31.605196, 30.891102, 37.363060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233133, 31.084648, 36.786552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114521, 31.253744, 36.444008>,  <31.043354, 31.355202, 36.238480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114521, 31.253744, 36.444008>,  <31.233133, 31.084648, 36.786552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114521, 31.253744, 36.444008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949375, 0.033108, -0.312395,
		-0.103710, -0.905646, -0.411157,
		-0.296532, 0.422741, -0.856364,
		31.025562, 31.380566, 36.187099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628010, 30.899849, 36.087212>,  <31.233133, 31.084648, 36.786552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628010, 30.899849, 36.087212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510315, 31.267567, 35.982655>,  <31.439699, 31.488197, 35.919922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510315, 31.267567, 35.982655>,  <31.628010, 30.899849, 36.087212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510315, 31.267567, 35.982655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939162, 0.227401, -0.257419,
		-0.177203, -0.321230, -0.930275,
		-0.294235, 0.919293, -0.261390,
		31.422045, 31.543354, 35.904236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942152, 31.185812, 35.435715>,  <31.628010, 30.899849, 36.087212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942152, 31.185812, 35.435715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860651, 31.528612, 35.625042>,  <31.811750, 31.734293, 35.738640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860651, 31.528612, 35.625042>,  <31.942152, 31.185812, 35.435715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860651, 31.528612, 35.625042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959100, 0.271763, -0.079190,
		-0.196498, 0.437827, -0.877323,
		-0.203753, 0.857002, 0.473321,
		31.799524, 31.785713, 35.767036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283150, 31.704966, 35.038002>,  <31.942152, 31.185812, 35.435715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283150, 31.704966, 35.038002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243233, 31.778084, 35.429230>,  <32.219280, 31.821955, 35.663967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243233, 31.778084, 35.429230>,  <32.283150, 31.704966, 35.038002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243233, 31.778084, 35.429230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988027, 0.134444, 0.075683,
		-0.117662, 0.973915, -0.194025,
		-0.099794, 0.182796, 0.978073,
		32.213295, 31.832922, 35.722652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276695, 31.166536, 34.476242>,  <32.283150, 31.704966, 35.038002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276695, 31.166536, 34.476242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157379, 30.794458, 34.561806>,  <32.085789, 30.571211, 34.613144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157379, 30.794458, 34.561806>,  <32.276695, 31.166536, 34.476242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157379, 30.794458, 34.561806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082923, -0.248519, -0.965071,
		0.950866, -0.270133, 0.151265,
		-0.298290, -0.930197, 0.213908,
		32.067894, 30.515400, 34.625977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872555, 31.364754, 34.058323>,  <32.276695, 31.166536, 34.476242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872555, 31.364754, 34.058323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023746, 31.427685, 33.693382>,  <33.114460, 31.465443, 33.474419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023746, 31.427685, 33.693382>,  <32.872555, 31.364754, 34.058323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023746, 31.427685, 33.693382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870876, 0.394835, -0.292711,
		0.314176, 0.905181, 0.286252,
		0.377979, 0.157328, -0.912348,
		33.137138, 31.474884, 33.419678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682041, 32.026245, 33.820473>,  <32.872555, 31.364754, 34.058323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682041, 32.026245, 33.820473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745136, 31.813442, 33.487705>,  <32.782993, 31.685760, 33.288044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745136, 31.813442, 33.487705>,  <32.682041, 32.026245, 33.820473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745136, 31.813442, 33.487705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908645, 0.251659, -0.333215,
		0.386632, 0.808480, -0.443707,
		0.157735, -0.532004, -0.831921,
		32.792458, 31.653841, 33.238129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384701, 32.441826, 33.291054>,  <32.682041, 32.026245, 33.820473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384701, 32.441826, 33.291054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410103, 32.074581, 33.134575>,  <32.425343, 31.854235, 33.040688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410103, 32.074581, 33.134575>,  <32.384701, 32.441826, 33.291054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410103, 32.074581, 33.134575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803773, 0.185296, -0.565344,
		0.591537, 0.350335, -0.726188,
		0.063501, -0.918113, -0.391199,
		32.429153, 31.799147, 33.017216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944635, 32.538483, 32.722813>,  <32.384701, 32.441826, 33.291054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944635, 32.538483, 32.722813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009132, 32.143745, 32.727436>,  <32.047829, 31.906902, 32.730209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009132, 32.143745, 32.727436>,  <31.944635, 32.538483, 32.722813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009132, 32.143745, 32.727436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838592, -0.143175, -0.525608,
		0.520350, 0.075057, -0.850648,
		0.161242, -0.986848, 0.011558,
		32.057507, 31.847691, 32.730904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900469, 32.288998, 32.057194>,  <31.944635, 32.538483, 32.722813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900469, 32.288998, 32.057194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810877, 31.976755, 32.290600>,  <31.757122, 31.789410, 32.430641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810877, 31.976755, 32.290600>,  <31.900469, 32.288998, 32.057194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810877, 31.976755, 32.290600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886060, -0.086238, -0.455478,
		0.405870, -0.619044, -0.672350,
		-0.223979, -0.780608, 0.583512,
		31.743683, 31.742573, 32.465652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568182, 31.847231, 31.596397>,  <31.900469, 32.288998, 32.057194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568182, 31.847231, 31.596397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493343, 31.686289, 31.954861>,  <31.448441, 31.589724, 32.169941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493343, 31.686289, 31.954861>,  <31.568182, 31.847231, 31.596397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493343, 31.686289, 31.954861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885483, -0.325923, -0.331202,
		0.425340, -0.855502, -0.295300,
		-0.187099, -0.402356, 0.896160,
		31.437214, 31.565582, 32.223709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408735, 31.081944, 31.542889>,  <31.568182, 31.847231, 31.596397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408735, 31.081944, 31.542889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228825, 31.281906, 31.838942>,  <31.120878, 31.401884, 32.016575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228825, 31.281906, 31.838942>,  <31.408735, 31.081944, 31.542889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228825, 31.281906, 31.838942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893006, -0.266172, -0.362895,
		0.015591, -0.824165, 0.566135,
		-0.449774, 0.499904, 0.740134,
		31.093893, 31.431877, 32.060982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717146, 31.353443, 30.837126>,  <31.408735, 31.081944, 31.542889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717146, 31.353443, 30.837126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945671, 31.675014, 30.903217>,  <32.082787, 31.867958, 30.942871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945671, 31.675014, 30.903217>,  <31.717146, 31.353443, 30.837126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945671, 31.675014, 30.903217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820709, 0.561152, 0.107444,
		-0.006340, -0.196987, 0.980386,
		0.571311, 0.803930, 0.165227,
		32.117065, 31.916193, 30.952785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299278, 31.469183, 30.356873>,  <31.717146, 31.353443, 30.837126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299278, 31.469183, 30.356873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310440, 31.070406, 30.386074>,  <32.317139, 30.831141, 30.403595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310440, 31.070406, 30.386074>,  <32.299278, 31.469183, 30.356873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310440, 31.070406, 30.386074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831211, -0.017426, -0.555684,
		0.555257, 0.076186, 0.828182,
		0.027904, -0.996941, 0.073002,
		32.318810, 30.771324, 30.407974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959751, 31.271544, 30.707237>,  <32.299278, 31.469183, 30.356873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959751, 31.271544, 30.707237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817081, 30.996298, 30.454483>,  <32.731480, 30.831150, 30.302832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817081, 30.996298, 30.454483>,  <32.959751, 31.271544, 30.707237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817081, 30.996298, 30.454483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820069, 0.093380, -0.564594,
		0.447512, -0.719566, 0.530997,
		-0.356678, -0.688117, -0.631883,
		32.710079, 30.789864, 30.264917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436970, 31.402561, 30.112757>,  <32.959751, 31.271544, 30.707237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436970, 31.402561, 30.112757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544365, 31.017250, 30.113985>,  <33.608803, 30.786064, 30.114721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544365, 31.017250, 30.113985>,  <33.436970, 31.402561, 30.112757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544365, 31.017250, 30.113985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107274, 0.026732, -0.993870,
		0.957291, 0.267175, 0.110512,
		0.268491, -0.963278, 0.003070,
		33.624912, 30.728268, 30.114906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209408, 31.261248, 29.805273>,  <33.436970, 31.402561, 30.112757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209408, 31.261248, 29.805273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970322, 30.943306, 29.763420>,  <33.826870, 30.752541, 29.738308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970322, 30.943306, 29.763420>,  <34.209408, 31.261248, 29.805273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970322, 30.943306, 29.763420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206672, -0.026668, -0.978047,
		0.774613, -0.606216, 0.180214,
		-0.597713, -0.794853, -0.104631,
		33.791008, 30.704849, 29.732031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453373, 30.862867, 29.272165>,  <34.209408, 31.261248, 29.805273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453373, 30.862867, 29.272165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097797, 30.683670, 29.310316>,  <33.884453, 30.576151, 29.333206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097797, 30.683670, 29.310316>,  <34.453373, 30.862867, 29.272165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097797, 30.683670, 29.310316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027742, -0.260507, -0.965073,
		0.457194, -0.855241, 0.244002,
		-0.888934, -0.447995, 0.095377,
		33.831116, 30.549273, 29.338928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593014, 30.288944, 28.911837>,  <34.453373, 30.862867, 29.272165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593014, 30.288944, 28.911837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200989, 30.368355, 28.915100>,  <33.965775, 30.416000, 28.917059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200989, 30.368355, 28.915100>,  <34.593014, 30.288944, 28.911837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200989, 30.368355, 28.915100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047254, -0.192991, -0.980062,
		-0.192991, -0.960907, 0.198524,
		0.980062, -0.198524, -0.008161,
		33.906971, 30.427912, 28.917549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223637, 29.792725, 28.483328>,  <34.593014, 30.288944, 28.911837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223637, 29.792725, 28.483328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980293, 30.110023, 28.493551>,  <33.834286, 30.300404, 28.499685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980293, 30.110023, 28.493551>,  <34.223637, 29.792725, 28.483328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980293, 30.110023, 28.493551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159886, -0.090951, -0.982937,
		-0.777388, -0.602068, 0.182160,
		-0.608362, 0.793248, 0.025558,
		33.797783, 30.347998, 28.501219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526917, 29.615671, 28.160017>,  <34.223637, 29.792725, 28.483328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526917, 29.615671, 28.160017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562008, 30.013231, 28.133293>,  <33.583065, 30.251768, 28.117258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562008, 30.013231, 28.133293>,  <33.526917, 29.615671, 28.160017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562008, 30.013231, 28.133293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295149, -0.038123, -0.954690,
		-0.951415, 0.103476, 0.290004,
		0.087731, 0.993901, -0.066811,
		33.588326, 30.311401, 28.113249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050133, 29.775358, 27.745090>,  <33.526917, 29.615671, 28.160017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050133, 29.775358, 27.745090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275059, 30.105799, 27.730352>,  <33.410015, 30.304064, 27.721510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275059, 30.105799, 27.730352>,  <33.050133, 29.775358, 27.745090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275059, 30.105799, 27.730352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178363, 0.077657, -0.980895,
		-0.807460, 0.558142, 0.191014,
		0.562313, 0.826103, -0.036847,
		33.443752, 30.353630, 27.719297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713097, 30.354008, 27.337286>,  <33.050133, 29.775358, 27.745090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713097, 30.354008, 27.337286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107967, 30.414072, 27.315603>,  <33.344891, 30.450109, 27.302593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107967, 30.414072, 27.315603>,  <32.713097, 30.354008, 27.337286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107967, 30.414072, 27.315603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085976, 0.213938, -0.973056,
		-0.134516, 0.965237, 0.224104,
		0.987175, 0.150159, -0.054209,
		33.404121, 30.459120, 27.299341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635471, 30.842266, 26.928488>,  <32.713097, 30.354008, 27.337286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635471, 30.842266, 26.928488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025139, 30.751940, 26.927589>,  <33.258938, 30.697744, 26.927050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025139, 30.751940, 26.927589>,  <32.635471, 30.842266, 26.928488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025139, 30.751940, 26.927589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026138, 0.122633, -0.992108,
		0.224308, 0.966421, 0.125368,
		0.974168, -0.225814, -0.002247,
		33.317390, 30.684195, 26.926916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006401, 31.347656, 26.416306>,  <32.635471, 30.842266, 26.928488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006401, 31.347656, 26.416306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257710, 31.039339, 26.458542>,  <33.408493, 30.854349, 26.483883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257710, 31.039339, 26.458542>,  <33.006401, 31.347656, 26.416306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257710, 31.039339, 26.458542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055875, -0.090667, -0.994313,
		0.775985, 0.630598, -0.013895,
		0.628272, -0.770795, 0.105591,
		33.446190, 30.808100, 26.490219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567032, 31.517292, 25.906788>,  <33.006401, 31.347656, 26.416306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567032, 31.517292, 25.906788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602005, 31.128429, 25.993755>,  <33.622990, 30.895113, 26.045937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602005, 31.128429, 25.993755>,  <33.567032, 31.517292, 25.906788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602005, 31.128429, 25.993755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230862, -0.192538, -0.953746,
		0.969050, 0.133586, 0.207598,
		0.087436, -0.972154, 0.217419,
		33.628235, 30.836782, 26.058981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218140, 31.265938, 25.649076>,  <33.567032, 31.517292, 25.906788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218140, 31.265938, 25.649076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992676, 30.935612, 25.656195>,  <33.857399, 30.737415, 25.660465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992676, 30.935612, 25.656195>,  <34.218140, 31.265938, 25.649076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992676, 30.935612, 25.656195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346188, -0.255738, -0.902636,
		0.749963, -0.502617, 0.430037,
		-0.563657, -0.825817, 0.017794,
		33.823578, 30.687866, 25.661533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426266, 30.799189, 25.126507>,  <34.218140, 31.265938, 25.649076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426266, 30.799189, 25.126507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108730, 30.577724, 25.227125>,  <33.918209, 30.444845, 25.287497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108730, 30.577724, 25.227125>,  <34.426266, 30.799189, 25.126507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108730, 30.577724, 25.227125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077375, -0.318320, -0.944820,
		0.603184, -0.769500, 0.209856,
		-0.793840, -0.553663, 0.251546,
		33.870579, 30.411625, 25.302589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470821, 30.119528, 24.776844>,  <34.426266, 30.799189, 25.126507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470821, 30.119528, 24.776844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084225, 30.196152, 24.845194>,  <33.852268, 30.242126, 24.886204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084225, 30.196152, 24.845194>,  <34.470821, 30.119528, 24.776844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084225, 30.196152, 24.845194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228524, -0.338880, -0.912654,
		-0.116923, -0.921121, 0.371301,
		-0.966492, 0.191561, 0.170876,
		33.794277, 30.253620, 24.896456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056568, 29.552811, 24.451796>,  <34.470821, 30.119528, 24.776844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056568, 29.552811, 24.451796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805611, 29.856363, 24.521618>,  <33.655037, 30.038496, 24.563511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805611, 29.856363, 24.521618>,  <34.056568, 29.552811, 24.451796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805611, 29.856363, 24.521618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472684, -0.193010, -0.859835,
		-0.618823, -0.621968, 0.479806,
		-0.627397, 0.758883, 0.174555,
		33.617390, 30.084028, 24.573984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455242, 29.259678, 24.299093>,  <34.056568, 29.552811, 24.451796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455242, 29.259678, 24.299093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431305, 29.656490, 24.254738>,  <33.416943, 29.894577, 24.228125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431305, 29.656490, 24.254738>,  <33.455242, 29.259678, 24.299093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431305, 29.656490, 24.254738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443485, -0.125945, -0.887389,
		-0.894281, -0.003927, 0.447488,
		-0.059844, 0.992029, -0.110889,
		33.413353, 29.954100, 24.221472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791592, 29.434156, 24.144619>,  <33.455242, 29.259678, 24.299093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791592, 29.434156, 24.144619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016743, 29.742714, 24.025879>,  <33.151833, 29.927849, 23.954634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016743, 29.742714, 24.025879>,  <32.791592, 29.434156, 24.144619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016743, 29.742714, 24.025879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320319, -0.127498, -0.938691,
		-0.761948, 0.623455, 0.175326,
		0.562877, 0.771394, -0.296852,
		33.185604, 29.974133, 23.936823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314537, 29.728489, 23.694010>,  <32.791592, 29.434156, 24.144619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314537, 29.728489, 23.694010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676746, 29.862919, 23.590405>,  <32.894070, 29.943577, 23.528242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676746, 29.862919, 23.590405>,  <32.314537, 29.728489, 23.694010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676746, 29.862919, 23.590405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263484, -0.033095, -0.964096,
		-0.332582, 0.941253, 0.058583,
		0.905519, 0.336076, -0.259012,
		32.948402, 29.963741, 23.512701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210293, 30.188623, 23.055334>,  <32.314537, 29.728489, 23.694010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210293, 30.188623, 23.055334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597012, 30.086424, 23.057110>,  <32.829044, 30.025105, 23.058174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597012, 30.086424, 23.057110>,  <32.210293, 30.188623, 23.055334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597012, 30.086424, 23.057110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011228, -0.059822, -0.998146,
		0.255291, 0.964957, -0.060705,
		0.966799, -0.255499, 0.004437,
		32.887051, 30.009773, 23.058441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598061, 30.676989, 22.670828>,  <32.210293, 30.188623, 23.055334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598061, 30.676989, 22.670828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826836, 30.348936, 22.677364>,  <32.964100, 30.152105, 22.681286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826836, 30.348936, 22.677364>,  <32.598061, 30.676989, 22.670828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826836, 30.348936, 22.677364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025742, -0.001964, -0.999667,
		0.819890, 0.572171, 0.019988,
		0.571941, -0.820132, 0.016339,
		32.998417, 30.102896, 22.682266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975464, 30.704086, 21.984608>,  <32.598061, 30.676989, 22.670828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975464, 30.704086, 21.984608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022972, 30.333456, 22.127354>,  <33.051476, 30.111078, 22.213001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022972, 30.333456, 22.127354>,  <32.975464, 30.704086, 21.984608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022972, 30.333456, 22.127354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094978, -0.347158, -0.932985,
		0.988369, 0.144702, 0.046773,
		0.118767, -0.926576, 0.356864,
		33.058601, 30.055483, 22.234413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535183, 30.412148, 21.588810>,  <32.975464, 30.704086, 21.984608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535183, 30.412148, 21.588810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333359, 30.101603, 21.739904>,  <33.212265, 29.915276, 21.830561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333359, 30.101603, 21.739904>,  <33.535183, 30.412148, 21.588810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333359, 30.101603, 21.739904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019083, -0.447433, -0.894114,
		0.863167, -0.443923, 0.240571,
		-0.504558, -0.776361, 0.377738,
		33.181992, 29.868694, 21.853226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971035, 29.846313, 21.282104>,  <33.535183, 30.412148, 21.588810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971035, 29.846313, 21.282104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613457, 29.711592, 21.400368>,  <33.398911, 29.630758, 21.471327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613457, 29.711592, 21.400368>,  <33.971035, 29.846313, 21.282104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613457, 29.711592, 21.400368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111517, -0.471791, -0.874630,
		0.434071, -0.814846, 0.384198,
		-0.893950, -0.336807, 0.295660,
		33.345272, 29.610550, 21.489065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981647, 29.162907, 21.042341>,  <33.971035, 29.846313, 21.282104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981647, 29.162907, 21.042341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595455, 29.243757, 21.108055>,  <33.363739, 29.292267, 21.147484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595455, 29.243757, 21.108055>,  <33.981647, 29.162907, 21.042341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595455, 29.243757, 21.108055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249594, -0.537589, -0.805420,
		-0.074479, -0.818623, 0.569482,
		-0.965483, 0.202126, 0.164284,
		33.305809, 29.304396, 21.157341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642731, 28.569155, 20.784090>,  <33.981647, 29.162907, 21.042341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642731, 28.569155, 20.784090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335789, 28.825102, 20.800713>,  <33.151623, 28.978670, 20.810686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335789, 28.825102, 20.800713>,  <33.642731, 28.569155, 20.784090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335789, 28.825102, 20.800713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265166, -0.257654, -0.929140,
		-0.583821, -0.724004, 0.367385,
		-0.767359, 0.639870, 0.041557,
		33.105579, 29.017063, 20.813179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025539, 28.214481, 20.690256>,  <33.642731, 28.569155, 20.784090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025539, 28.214481, 20.690256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934521, 28.585443, 20.571505>,  <32.879910, 28.808022, 20.500254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934521, 28.585443, 20.571505>,  <33.025539, 28.214481, 20.690256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934521, 28.585443, 20.571505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298996, -0.356692, -0.885083,
		-0.926726, -0.112636, 0.358456,
		-0.227551, 0.927407, -0.296878,
		32.866257, 28.863667, 20.482441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358257, 28.198828, 20.222250>,  <33.025539, 28.214481, 20.690256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358257, 28.198828, 20.222250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508774, 28.564417, 20.161512>,  <32.599083, 28.783772, 20.125071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508774, 28.564417, 20.161512>,  <32.358257, 28.198828, 20.222250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508774, 28.564417, 20.161512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328866, -0.021458, -0.944133,
		-0.866171, 0.405206, 0.292500,
		0.376292, 0.913974, -0.151844,
		32.621662, 28.838610, 20.115959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853094, 28.590576, 20.013021>,  <32.358257, 28.198828, 20.222250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853094, 28.590576, 20.013021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194595, 28.745947, 19.874325>,  <32.399498, 28.839170, 19.791107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194595, 28.745947, 19.874325>,  <31.853094, 28.590576, 20.013021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194595, 28.745947, 19.874325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411742, 0.096032, -0.906226,
		-0.318707, 0.916461, 0.241920,
		0.853753, 0.388429, -0.346740,
		32.450722, 28.862476, 19.770304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686260, 29.098465, 19.558287>,  <31.853094, 28.590576, 20.013021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686260, 29.098465, 19.558287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066101, 29.037233, 19.448874>,  <32.294006, 29.000494, 19.383226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066101, 29.037233, 19.448874>,  <31.686260, 29.098465, 19.558287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066101, 29.037233, 19.448874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284732, -0.056343, -0.956950,
		0.131079, 0.986606, -0.097091,
		0.949603, -0.153081, -0.273533,
		32.350983, 28.991308, 19.366814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749969, 29.417921, 18.946568>,  <31.686260, 29.098465, 19.558287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749969, 29.417921, 18.946568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074455, 29.189079, 18.898190>,  <32.269146, 29.051775, 18.869164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074455, 29.189079, 18.898190>,  <31.749969, 29.417921, 18.946568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074455, 29.189079, 18.898190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218582, -0.104844, -0.970170,
		0.542357, 0.813453, -0.210103,
		0.811216, -0.572103, -0.120943,
		32.317822, 29.017448, 18.861906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078011, 29.593241, 18.342525>,  <31.749969, 29.417921, 18.946568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078011, 29.593241, 18.342525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233910, 29.230871, 18.408735>,  <32.327450, 29.013449, 18.448462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233910, 29.230871, 18.408735>,  <32.078011, 29.593241, 18.342525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233910, 29.230871, 18.408735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009487, -0.183677, -0.982941,
		0.920875, 0.381524, -0.080181,
		0.389743, -0.905926, 0.165524,
		32.350834, 28.959093, 18.458393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502060, 29.540358, 17.784067>,  <32.078011, 29.593241, 18.342525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502060, 29.540358, 17.784067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458103, 29.165606, 17.916840>,  <32.431728, 28.940754, 17.996504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458103, 29.165606, 17.916840>,  <32.502060, 29.540358, 17.784067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458103, 29.165606, 17.916840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029694, -0.330711, -0.943265,
		0.993500, -0.113511, 0.008521,
		-0.109889, -0.936881, 0.331933,
		32.425137, 28.884541, 18.016418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955650, 29.167006, 17.464100>,  <32.502060, 29.540358, 17.784067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955650, 29.167006, 17.464100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663288, 28.911646, 17.560616>,  <32.487869, 28.758430, 17.618525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663288, 28.911646, 17.560616>,  <32.955650, 29.167006, 17.464100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663288, 28.911646, 17.560616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147004, -0.197982, -0.969120,
		0.666454, -0.743809, 0.050860,
		-0.730910, -0.638397, 0.241288,
		32.444016, 28.720127, 17.633001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159939, 28.568750, 17.135452>,  <32.955650, 29.167006, 17.464100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159939, 28.568750, 17.135452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765347, 28.559473, 17.200335>,  <32.528591, 28.553905, 17.239264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765347, 28.559473, 17.200335>,  <33.159939, 28.568750, 17.135452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765347, 28.559473, 17.200335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148734, -0.288591, -0.945829,
		0.068750, -0.957171, 0.281241,
		-0.986484, -0.023196, 0.162205,
		32.469402, 28.552515, 17.248997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896942, 28.068327, 16.629204>,  <33.159939, 28.568750, 17.135452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896942, 28.068327, 16.629204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573578, 28.275446, 16.741173>,  <32.379559, 28.399717, 16.808355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573578, 28.275446, 16.741173>,  <32.896942, 28.068327, 16.629204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573578, 28.275446, 16.741173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276788, 0.085299, -0.957137,
		-0.519482, -0.851239, 0.074364,
		-0.808410, 0.517799, 0.279925,
		32.331055, 28.430786, 16.825150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346363, 27.668880, 16.332441>,  <32.896942, 28.068327, 16.629204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346363, 27.668880, 16.332441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178307, 28.022753, 16.413256>,  <32.077473, 28.235077, 16.461744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178307, 28.022753, 16.413256>,  <32.346363, 27.668880, 16.332441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178307, 28.022753, 16.413256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471182, -0.022400, -0.881751,
		-0.775543, -0.465658, 0.426258,
		-0.420142, 0.884681, 0.202037,
		32.052265, 28.288157, 16.473867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561111, 27.636723, 16.349222>,  <32.346363, 27.668880, 16.332441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561111, 27.636723, 16.349222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662296, 28.016611, 16.275427>,  <31.723007, 28.244545, 16.231150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662296, 28.016611, 16.275427>,  <31.561111, 27.636723, 16.349222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662296, 28.016611, 16.275427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584445, -0.001957, -0.811431,
		-0.770996, 0.313084, 0.554566,
		0.252961, 0.949723, -0.184489,
		31.738184, 28.301529, 16.220079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925800, 28.036236, 15.983957>,  <31.561111, 27.636723, 16.349222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925800, 28.036236, 15.983957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232618, 28.274658, 15.888992>,  <31.416708, 28.417711, 15.832013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232618, 28.274658, 15.888992>,  <30.925800, 28.036236, 15.983957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232618, 28.274658, 15.888992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444878, 0.227478, -0.866220,
		-0.462309, 0.770047, 0.439657,
		0.767043, 0.596055, -0.237411,
		31.462730, 28.453474, 15.817769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622448, 28.588621, 15.579129>,  <30.925800, 28.036236, 15.983957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622448, 28.588621, 15.579129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013472, 28.592234, 15.494944>,  <31.248085, 28.594402, 15.444432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013472, 28.592234, 15.494944>,  <30.622448, 28.588621, 15.579129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013472, 28.592234, 15.494944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203935, 0.290980, -0.934741,
		0.052797, 0.956687, 0.286293,
		0.977560, 0.009033, -0.210464,
		31.306740, 28.594944, 15.431805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759542, 29.209900, 15.179371>,  <30.622448, 28.588621, 15.579129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759542, 29.209900, 15.179371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057585, 28.960825, 15.083806>,  <31.236410, 28.811380, 15.026467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057585, 28.960825, 15.083806>,  <30.759542, 29.209900, 15.179371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057585, 28.960825, 15.083806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120659, 0.226454, -0.966520,
		0.655940, 0.748987, 0.093600,
		0.745107, -0.622685, -0.238912,
		31.281116, 28.774019, 15.012133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030495, 29.505650, 14.639218>,  <30.759542, 29.209900, 15.179371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030495, 29.505650, 14.639218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171089, 29.131950, 14.615073>,  <31.255445, 28.907732, 14.600586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171089, 29.131950, 14.615073>,  <31.030495, 29.505650, 14.639218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171089, 29.131950, 14.615073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060125, 0.086870, -0.994403,
		0.934261, 0.345888, 0.086705,
		0.351484, -0.934246, -0.060363,
		31.276535, 28.851677, 14.596964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608648, 29.469954, 14.187047>,  <31.030495, 29.505650, 14.639218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608648, 29.469954, 14.187047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454594, 29.100832, 14.191106>,  <31.362162, 28.879358, 14.193542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454594, 29.100832, 14.191106>,  <31.608648, 29.469954, 14.187047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454594, 29.100832, 14.191106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049413, 0.009641, -0.998732,
		0.921536, -0.385149, -0.049312,
		-0.385136, -0.922804, 0.010147,
		31.339052, 28.823990, 14.194150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612118, 29.248278, 13.545989>,  <31.608648, 29.469954, 14.187047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612118, 29.248278, 13.545989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407888, 28.917568, 13.640444>,  <31.285351, 28.719143, 13.697117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407888, 28.917568, 13.640444>,  <31.612118, 29.248278, 13.545989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407888, 28.917568, 13.640444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001767, -0.273620, -0.961836,
		0.859833, -0.491504, 0.138242,
		-0.510572, -0.826774, 0.236136,
		31.254717, 28.669537, 13.711285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951197, 28.675623, 13.147510>,  <31.612118, 29.248278, 13.545989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951197, 28.675623, 13.147510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575659, 28.575478, 13.242073>,  <31.350336, 28.515390, 13.298811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575659, 28.575478, 13.242073>,  <31.951197, 28.675623, 13.147510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575659, 28.575478, 13.242073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125536, -0.390444, -0.912027,
		0.320642, -0.885930, 0.335137,
		-0.938845, -0.250362, 0.236409,
		31.294004, 28.500368, 13.312996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790785, 27.892725, 13.115405>,  <31.951197, 28.675623, 13.147510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790785, 27.892725, 13.115405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471308, 28.122784, 13.044643>,  <31.279621, 28.260818, 13.002187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471308, 28.122784, 13.044643>,  <31.790785, 27.892725, 13.115405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471308, 28.122784, 13.044643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157128, -0.483130, -0.861334,
		-0.580861, -0.660145, 0.476244,
		-0.798693, 0.575147, -0.176905,
		31.231699, 28.295328, 12.991572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112970, 27.527634, 13.026652>,  <31.790785, 27.892725, 13.115405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112970, 27.527634, 13.026652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114191, 27.881548, 12.840256>,  <31.114923, 28.093897, 12.728417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114191, 27.881548, 12.840256>,  <31.112970, 27.527634, 13.026652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114191, 27.881548, 12.840256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203469, -0.455697, -0.866568,
		-0.979077, 0.097460, 0.178635,
		0.003052, 0.884783, -0.465992,
		31.115107, 28.146982, 12.700458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442793, 27.731251, 12.642321>,  <31.112970, 27.527634, 13.026652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442793, 27.731251, 12.642321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759312, 27.906553, 12.471776>,  <30.949223, 28.011734, 12.369449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759312, 27.906553, 12.471776>,  <30.442793, 27.731251, 12.642321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759312, 27.906553, 12.471776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310395, -0.312855, -0.897651,
		-0.526789, 0.842647, -0.111529,
		0.791295, 0.438254, -0.426362,
		30.996700, 28.038029, 12.343867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298435, 27.555418, 11.944365>,  <30.442793, 27.731251, 12.642321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298435, 27.555418, 11.944365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596174, 27.816551, 11.888143>,  <30.774817, 27.973232, 11.854409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596174, 27.816551, 11.888143>,  <30.298435, 27.555418, 11.944365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596174, 27.816551, 11.888143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082735, -0.118700, -0.989477,
		-0.662649, 0.748142, -0.034342,
		0.744346, 0.652835, -0.140554,
		30.819477, 28.012402, 11.845976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050142, 28.041496, 11.383368>,  <30.298435, 27.555418, 11.944365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050142, 28.041496, 11.383368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444864, 27.977379, 11.374205>,  <30.681698, 27.938908, 11.368707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444864, 27.977379, 11.374205>,  <30.050142, 28.041496, 11.383368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444864, 27.977379, 11.374205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035201, -0.074287, -0.996615,
		0.158050, 0.984270, -0.078950,
		0.986803, -0.160295, -0.022907,
		30.740906, 27.929291, 11.367332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367388, 28.625172, 11.162973>,  <30.050142, 28.041496, 11.383368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367388, 28.625172, 11.162973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513405, 28.261473, 11.082959>,  <30.601015, 28.043253, 11.034951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513405, 28.261473, 11.082959>,  <30.367388, 28.625172, 11.162973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513405, 28.261473, 11.082959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122810, 0.165955, -0.978456,
		0.922856, 0.381743, -0.051084,
		0.365041, -0.909248, -0.200035,
		30.622917, 27.988699, 11.022949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402103, 28.877390, 11.766128>,  <30.367388, 28.625172, 11.162973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402103, 28.877390, 11.766128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400158, 28.477551, 11.777269>,  <30.398991, 28.237646, 11.783955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400158, 28.477551, 11.777269>,  <30.402103, 28.877390, 11.766128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400158, 28.477551, 11.777269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565253, 0.025726, 0.824516,
		-0.824903, -0.011735, -0.565152,
		-0.004863, -0.999600, 0.027855,
		30.398699, 28.177670, 11.785625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663582, 28.675343, 11.821254>,  <30.402103, 28.877390, 11.766128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663582, 28.675343, 11.821254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893053, 28.377707, 11.958205>,  <30.030737, 28.199125, 12.040376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893053, 28.377707, 11.958205>,  <29.663582, 28.675343, 11.821254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893053, 28.377707, 11.958205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638031, -0.143843, 0.756456,
		-0.513623, -0.652410, -0.557272,
		0.573679, -0.744090, 0.342377,
		30.065157, 28.154480, 12.060919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307074, 28.031517, 11.854679>,  <29.663582, 28.675343, 11.821254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307074, 28.031517, 11.854679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602842, 28.048349, 12.123448>,  <29.780304, 28.058449, 12.284710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602842, 28.048349, 12.123448>,  <29.307074, 28.031517, 11.854679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602842, 28.048349, 12.123448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654010, -0.191939, 0.731731,
		0.159762, -0.980504, -0.114402,
		0.739423, 0.042083, 0.671924,
		29.824669, 28.060974, 12.325026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194460, 27.536087, 12.442730>,  <29.307074, 28.031517, 11.854679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194460, 27.536087, 12.442730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399117, 27.853821, 12.573731>,  <29.521910, 28.044460, 12.652332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399117, 27.853821, 12.573731>,  <29.194460, 27.536087, 12.442730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399117, 27.853821, 12.573731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549424, 0.009418, 0.835491,
		0.660573, -0.607410, 0.441244,
		0.511640, 0.794333, 0.327504,
		29.552608, 28.092121, 12.671983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698933, 27.704214, 13.014128>,  <29.194460, 27.536087, 12.442730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698933, 27.704214, 13.014128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042082, 27.904327, 13.061073>,  <29.247971, 28.024395, 13.089241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042082, 27.904327, 13.061073>,  <28.698933, 27.704214, 13.014128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042082, 27.904327, 13.061073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279210, 0.262066, 0.923776,
		0.431393, -0.825250, 0.364503,
		0.857871, 0.500284, 0.117365,
		29.299442, 28.054413, 13.096283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771305, 27.535139, 13.669843>,  <28.698933, 27.704214, 13.014128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771305, 27.535139, 13.669843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035641, 27.827143, 13.600127>,  <29.194242, 28.002346, 13.558298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035641, 27.827143, 13.600127>,  <28.771305, 27.535139, 13.669843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035641, 27.827143, 13.600127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075971, 0.296091, 0.952134,
		0.746674, -0.615965, 0.251128,
		0.660838, 0.730012, -0.174288,
		29.233892, 28.046146, 13.547841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266645, 27.554251, 14.169369>,  <28.771305, 27.535139, 13.669843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266645, 27.554251, 14.169369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237307, 27.922249, 14.015365>,  <29.219704, 28.143047, 13.922962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237307, 27.922249, 14.015365>,  <29.266645, 27.554251, 14.169369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237307, 27.922249, 14.015365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167659, 0.369180, 0.914109,
		0.983113, 0.131596, 0.127168,
		-0.073345, 0.919994, -0.385009,
		29.215303, 28.198246, 13.899862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708715, 27.929363, 14.594437>,  <29.266645, 27.554251, 14.169369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708715, 27.929363, 14.594437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459856, 28.180117, 14.406842>,  <29.310539, 28.330568, 14.294286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459856, 28.180117, 14.406842>,  <29.708715, 27.929363, 14.594437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459856, 28.180117, 14.406842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093362, 0.535358, 0.839449,
		0.777311, 0.566049, -0.274546,
		-0.622150, 0.626881, -0.468987,
		29.273211, 28.368181, 14.266146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886070, 28.584911, 14.867304>,  <29.708715, 27.929363, 14.594437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886070, 28.584911, 14.867304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528193, 28.653852, 14.702470>,  <29.313465, 28.695217, 14.603570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528193, 28.653852, 14.702470>,  <29.886070, 28.584911, 14.867304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528193, 28.653852, 14.702470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135238, 0.774739, 0.617649,
		0.425710, 0.608338, -0.669847,
		-0.894696, 0.172350, -0.412084,
		29.259783, 28.705557, 14.578844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866341, 29.295895, 14.747157>,  <29.886070, 28.584911, 14.867304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866341, 29.295895, 14.747157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480463, 29.193502, 14.771955>,  <29.248938, 29.132067, 14.786833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480463, 29.193502, 14.771955>,  <29.866341, 29.295895, 14.747157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480463, 29.193502, 14.771955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132329, 0.674576, 0.726248,
		-0.227725, 0.692402, -0.684632,
		-0.964692, -0.255981, 0.061993,
		29.191055, 29.116709, 14.790552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512848, 29.892208, 14.843418>,  <29.866341, 29.295895, 14.747157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512848, 29.892208, 14.843418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211170, 29.646719, 14.936827>,  <29.030163, 29.499426, 14.992872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211170, 29.646719, 14.936827>,  <29.512848, 29.892208, 14.843418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211170, 29.646719, 14.936827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107144, 0.465875, 0.878340,
		-0.647850, 0.637419, -0.417118,
		-0.754195, -0.613724, 0.233521,
		28.984911, 29.462603, 15.006883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006268, 30.283871, 15.195256>,  <29.512848, 29.892208, 14.843418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006268, 30.283871, 15.195256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905308, 29.907352, 15.284927>,  <28.844732, 29.681442, 15.338730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905308, 29.907352, 15.284927>,  <29.006268, 30.283871, 15.195256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905308, 29.907352, 15.284927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273778, 0.291682, 0.916497,
		-0.928084, 0.169949, -0.331327,
		-0.252400, -0.941296, 0.224178,
		28.829588, 29.624964, 15.352180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250977, 30.245144, 15.500362>,  <29.006268, 30.283871, 15.195256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250977, 30.245144, 15.500362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455746, 29.925848, 15.627327>,  <28.578608, 29.734270, 15.703506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455746, 29.925848, 15.627327>,  <28.250977, 30.245144, 15.500362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455746, 29.925848, 15.627327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234468, 0.225630, 0.945577,
		-0.826415, -0.558483, -0.071657,
		0.511921, -0.798240, 0.317410,
		28.609322, 29.686377, 15.722550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769833, 29.980558, 16.074963>,  <28.250977, 30.245144, 15.500362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769833, 29.980558, 16.074963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129477, 29.811628, 16.121000>,  <28.345263, 29.710270, 16.148623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129477, 29.811628, 16.121000>,  <27.769833, 29.980558, 16.074963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129477, 29.811628, 16.121000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059059, 0.143487, 0.987888,
		-0.433724, -0.895016, 0.104068,
		0.899108, -0.422325, 0.115093,
		28.399210, 29.684931, 16.155527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691185, 29.576809, 16.672226>,  <27.769833, 29.980558, 16.074963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691185, 29.576809, 16.672226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090517, 29.598841, 16.665312>,  <28.330116, 29.612061, 16.661163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090517, 29.598841, 16.665312>,  <27.691185, 29.576809, 16.672226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090517, 29.598841, 16.665312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015036, 0.040951, 0.999048,
		0.055732, -0.997642, 0.040054,
		0.998332, 0.055076, -0.017283,
		28.390017, 29.615364, 16.660128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863337, 29.129438, 17.173182>,  <27.691185, 29.576809, 16.672226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863337, 29.129438, 17.173182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163441, 29.382736, 17.097172>,  <28.343504, 29.534716, 17.051565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163441, 29.382736, 17.097172>,  <27.863337, 29.129438, 17.173182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163441, 29.382736, 17.097172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185545, 0.074199, 0.979830,
		0.634572, -0.770387, -0.061826,
		0.750261, 0.633244, -0.190026,
		28.388519, 29.572710, 17.040163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478765, 28.795609, 17.448893>,  <27.863337, 29.129438, 17.173182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478765, 28.795609, 17.448893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515713, 29.193855, 17.443064>,  <28.537882, 29.432804, 17.439566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515713, 29.193855, 17.443064>,  <28.478765, 28.795609, 17.448893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515713, 29.193855, 17.443064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265349, -0.010505, 0.964095,
		0.959718, -0.092919, -0.265156,
		0.092368, 0.995618, -0.014574,
		28.543423, 29.492540, 17.438692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834959, 28.808899, 17.975471>,  <28.478765, 28.795609, 17.448893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834959, 28.808899, 17.975471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782677, 29.198334, 17.900593>,  <28.751307, 29.431995, 17.855665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782677, 29.198334, 17.900593>,  <28.834959, 28.808899, 17.975471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782677, 29.198334, 17.900593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452788, 0.226595, 0.862345,
		0.881986, 0.027954, -0.470446,
		-0.130707, 0.973588, -0.187196,
		28.743465, 29.490410, 17.844435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536955, 29.185415, 17.929310>,  <28.834959, 28.808899, 17.975471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536955, 29.185415, 17.929310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234119, 29.390514, 18.091253>,  <29.052418, 29.513575, 18.188419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234119, 29.390514, 18.091253>,  <29.536955, 29.185415, 17.929310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234119, 29.390514, 18.091253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527341, 0.113806, 0.841998,
		0.385658, 0.850963, -0.356554,
		-0.757087, 0.512748, 0.404857,
		29.006994, 29.544338, 18.212709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872316, 29.683016, 18.498474>,  <29.536955, 29.185415, 17.929310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872316, 29.683016, 18.498474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474379, 29.684195, 18.539019>,  <29.235615, 29.684902, 18.563345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474379, 29.684195, 18.539019>,  <29.872316, 29.683016, 18.498474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474379, 29.684195, 18.539019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100541, 0.158717, 0.982192,
		-0.013192, 0.987320, -0.158195,
		-0.994846, 0.002948, 0.101360,
		29.175924, 29.685080, 18.569427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722479, 30.298700, 18.911392>,  <29.872316, 29.683016, 18.498474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722479, 30.298700, 18.911392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422495, 30.034222, 18.919199>,  <29.242504, 29.875534, 18.923883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422495, 30.034222, 18.919199>,  <29.722479, 30.298700, 18.911392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422495, 30.034222, 18.919199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040740, 0.075616, 0.996304,
		-0.660228, 0.746393, -0.083646,
		-0.749959, -0.661196, 0.019516,
		29.197508, 29.835863, 18.925055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267492, 30.541250, 19.410929>,  <29.722479, 30.298700, 18.911392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267492, 30.541250, 19.410929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180939, 30.155106, 19.352615>,  <29.129005, 29.923418, 19.317627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180939, 30.155106, 19.352615>,  <29.267492, 30.541250, 19.410929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180939, 30.155106, 19.352615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146542, -0.115513, 0.982437,
		-0.965247, 0.233949, -0.116471,
		-0.216386, -0.965362, -0.145783,
		29.116022, 29.865498, 19.308880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603102, 30.374582, 19.807718>,  <29.267492, 30.541250, 19.410929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603102, 30.374582, 19.807718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812542, 30.035973, 19.769257>,  <28.938206, 29.832808, 19.746180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812542, 30.035973, 19.769257>,  <28.603102, 30.374582, 19.807718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812542, 30.035973, 19.769257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024287, -0.127645, 0.991522,
		-0.851619, -0.516824, -0.087394,
		0.523598, -0.846522, -0.096153,
		28.969622, 29.782017, 19.740410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209669, 29.965981, 20.229166>,  <28.603102, 30.374582, 19.807718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209669, 29.965981, 20.229166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564001, 29.781572, 20.208124>,  <28.776600, 29.670927, 20.195499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564001, 29.781572, 20.208124>,  <28.209669, 29.965981, 20.229166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564001, 29.781572, 20.208124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129330, -0.354183, 0.926190,
		-0.445627, -0.813641, -0.373370,
		0.885828, -0.461023, -0.052605,
		28.829750, 29.643267, 20.192343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165480, 29.339907, 20.579605>,  <28.209669, 29.965981, 20.229166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165480, 29.339907, 20.579605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561197, 29.398270, 20.578230>,  <28.798628, 29.433287, 20.577406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561197, 29.398270, 20.578230>,  <28.165480, 29.339907, 20.579605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561197, 29.398270, 20.578230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025751, -0.151334, 0.988147,
		0.143657, -0.977655, -0.153471,
		0.989293, 0.145906, -0.003436,
		28.857985, 29.442041, 20.577200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426510, 28.710884, 20.987715>,  <28.165480, 29.339907, 20.579605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426510, 28.710884, 20.987715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741404, 28.957272, 20.976099>,  <28.930340, 29.105104, 20.969130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741404, 28.957272, 20.976099>,  <28.426510, 28.710884, 20.987715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741404, 28.957272, 20.976099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207137, -0.219782, 0.953305,
		0.580826, -0.756489, -0.300610,
		0.787233, 0.615971, -0.029041,
		28.977573, 29.142063, 20.967386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954798, 28.365992, 21.417437>,  <28.426510, 28.710884, 20.987715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954798, 28.365992, 21.417437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022274, 28.759308, 21.390057>,  <29.062759, 28.995296, 21.373629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022274, 28.759308, 21.390057>,  <28.954798, 28.365992, 21.417437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022274, 28.759308, 21.390057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375643, 0.000071, 0.926764,
		0.911282, -0.182048, -0.369354,
		0.168690, 0.983290, -0.068450,
		29.072882, 29.054295, 21.369522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591593, 28.503454, 21.741932>,  <28.954798, 28.365992, 21.417437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591593, 28.503454, 21.741932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435450, 28.871178, 21.761902>,  <29.341764, 29.091812, 21.773884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435450, 28.871178, 21.761902>,  <29.591593, 28.503454, 21.741932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435450, 28.871178, 21.761902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405121, 0.122821, 0.905976,
		0.826740, 0.373879, -0.420375,
		-0.390357, 0.919309, 0.049925,
		29.318342, 29.146971, 21.776880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109474, 28.978746, 22.032764>,  <29.591593, 28.503454, 21.741932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109474, 28.978746, 22.032764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757910, 29.162596, 22.083771>,  <29.546970, 29.272905, 22.114374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757910, 29.162596, 22.083771>,  <30.109474, 28.978746, 22.032764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757910, 29.162596, 22.083771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183572, 0.079202, 0.979810,
		0.440246, 0.884574, -0.153986,
		-0.878911, 0.459625, 0.127515,
		29.494236, 29.300484, 22.122025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241325, 29.547964, 22.416939>,  <30.109474, 28.978746, 22.032764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241325, 29.547964, 22.416939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851269, 29.514374, 22.498962>,  <29.617235, 29.494219, 22.548176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851269, 29.514374, 22.498962>,  <30.241325, 29.547964, 22.416939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851269, 29.514374, 22.498962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185528, 0.196578, 0.962775,
		-0.121160, 0.976885, -0.176112,
		-0.975141, -0.083977, 0.205057,
		29.558727, 29.489182, 22.560480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208303, 30.076603, 22.930063>,  <30.241325, 29.547964, 22.416939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208303, 30.076603, 22.930063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876316, 29.856590, 22.967188>,  <29.677124, 29.724583, 22.989462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876316, 29.856590, 22.967188>,  <30.208303, 30.076603, 22.930063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876316, 29.856590, 22.967188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054612, 0.085459, 0.994844,
		-0.555128, 0.830759, -0.040890,
		-0.829970, -0.550033, 0.092810,
		29.627325, 29.691580, 22.995031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680769, 30.442066, 23.325054>,  <30.208303, 30.076603, 22.930063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680769, 30.442066, 23.325054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600241, 30.051981, 23.361774>,  <29.551924, 29.817930, 23.383806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600241, 30.051981, 23.361774>,  <29.680769, 30.442066, 23.325054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600241, 30.051981, 23.361774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100238, 0.072716, 0.992303,
		-0.974383, 0.208972, 0.083114,
		-0.201320, -0.975214, 0.091800,
		29.539845, 29.759417, 23.389315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189682, 30.382193, 23.859308>,  <29.680769, 30.442066, 23.325054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189682, 30.382193, 23.859308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324600, 30.006813, 23.829525>,  <29.405550, 29.781586, 23.811655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324600, 30.006813, 23.829525>,  <29.189682, 30.382193, 23.859308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324600, 30.006813, 23.829525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238220, -0.161602, 0.957672,
		-0.910761, -0.305279, -0.278065,
		0.337293, -0.938451, -0.074457,
		29.425789, 29.725277, 23.807188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787842, 30.092735, 24.286274>,  <29.189682, 30.382193, 23.859308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787842, 30.092735, 24.286274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072754, 29.816828, 24.234310>,  <29.243702, 29.651283, 24.203133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072754, 29.816828, 24.234310>,  <28.787842, 30.092735, 24.286274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072754, 29.816828, 24.234310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005925, -0.179169, 0.983800,
		-0.701870, -0.701511, -0.123532,
		0.712280, -0.689768, -0.129910,
		29.286438, 29.609898, 24.195337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605911, 29.478991, 24.623112>,  <28.787842, 30.092735, 24.286274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605911, 29.478991, 24.623112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005135, 29.467230, 24.601151>,  <29.244669, 29.460173, 24.587973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005135, 29.467230, 24.601151>,  <28.605911, 29.478991, 24.623112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005135, 29.467230, 24.601151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051615, -0.102887, 0.993353,
		-0.034851, -0.994259, -0.101169,
		0.998059, -0.029398, -0.054905,
		29.304552, 29.458408, 24.584679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817617, 28.963303, 25.058800>,  <28.605911, 29.478991, 24.623112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817617, 28.963303, 25.058800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149576, 29.178608, 25.000088>,  <29.348751, 29.307791, 24.964861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149576, 29.178608, 25.000088>,  <28.817617, 28.963303, 25.058800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149576, 29.178608, 25.000088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202503, -0.045463, 0.978226,
		0.519870, -0.841549, -0.146730,
		0.829896, 0.538264, -0.146781,
		29.398544, 29.340088, 24.956053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274467, 28.589170, 25.494987>,  <28.817617, 28.963303, 25.058800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274467, 28.589170, 25.494987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444466, 28.943489, 25.420431>,  <29.546465, 29.156080, 25.375696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444466, 28.943489, 25.420431>,  <29.274467, 28.589170, 25.494987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444466, 28.943489, 25.420431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112358, 0.152700, 0.981865,
		0.898196, -0.438229, -0.034630,
		0.424994, 0.885798, -0.186393,
		29.571964, 29.209229, 25.364513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056602, 28.637060, 25.871130>,  <29.274467, 28.589170, 25.494987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056602, 28.637060, 25.871130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922220, 29.005505, 25.792458>,  <29.841591, 29.226572, 25.745255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922220, 29.005505, 25.792458>,  <30.056602, 28.637060, 25.871130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922220, 29.005505, 25.792458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316343, 0.307037, 0.897583,
		0.887164, 0.239330, -0.394539,
		-0.335957, 0.921113, -0.196682,
		29.821434, 29.281839, 25.733454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672184, 29.106007, 25.867226>,  <30.056602, 28.637060, 25.871130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672184, 29.106007, 25.867226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328144, 29.286942, 25.961559>,  <30.121719, 29.395502, 26.018160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328144, 29.286942, 25.961559>,  <30.672184, 29.106007, 25.867226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328144, 29.286942, 25.961559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410652, 0.339684, 0.846156,
		0.302637, 0.824626, -0.477916,
		-0.860102, 0.452335, 0.235833,
		30.070114, 29.422642, 26.032309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861454, 29.732662, 26.102524>,  <30.672184, 29.106007, 25.867226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861454, 29.732662, 26.102524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481333, 29.736040, 26.227007>,  <30.253260, 29.738068, 26.301697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481333, 29.736040, 26.227007>,  <30.861454, 29.732662, 26.102524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481333, 29.736040, 26.227007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258475, 0.578595, 0.773575,
		-0.173530, 0.815571, -0.552024,
		-0.950304, 0.008446, 0.311209,
		30.196241, 29.738573, 26.320370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772837, 30.416136, 26.410353>,  <30.861454, 29.732662, 26.102524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772837, 30.416136, 26.410353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458900, 30.211901, 26.550825>,  <30.270538, 30.089359, 26.635109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458900, 30.211901, 26.550825>,  <30.772837, 30.416136, 26.410353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458900, 30.211901, 26.550825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167903, 0.370291, 0.913615,
		-0.596519, 0.776006, -0.204890,
		-0.784840, -0.510587, 0.351179,
		30.223448, 30.058725, 26.656179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274473, 30.896606, 26.735159>,  <30.772837, 30.416136, 26.410353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274473, 30.896606, 26.735159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225248, 30.536617, 26.902447>,  <30.195713, 30.320623, 27.002819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225248, 30.536617, 26.902447>,  <30.274473, 30.896606, 26.735159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225248, 30.536617, 26.902447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148806, 0.399926, 0.904387,
		-0.981179, 0.173528, 0.084705,
		-0.123061, -0.899971, 0.418221,
		30.188330, 30.266626, 27.027912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955851, 31.070858, 27.347597>,  <30.274473, 30.896606, 26.735159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955851, 31.070858, 27.347597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055822, 30.690458, 27.420410>,  <30.115805, 30.462219, 27.464098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055822, 30.690458, 27.420410>,  <29.955851, 31.070858, 27.347597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055822, 30.690458, 27.420410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174498, 0.229157, 0.957621,
		-0.952411, -0.207572, 0.223220,
		0.249927, -0.951000, 0.182031,
		30.130800, 30.405159, 27.475019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709097, 30.906736, 27.929020>,  <29.955851, 31.070858, 27.347597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709097, 30.906736, 27.929020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038424, 30.681273, 27.902380>,  <30.236019, 30.545994, 27.886396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038424, 30.681273, 27.902380>,  <29.709097, 30.906736, 27.929020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038424, 30.681273, 27.902380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268313, 0.283119, 0.920788,
		-0.500154, -0.775972, 0.384334,
		0.823319, -0.563658, -0.066600,
		30.285419, 30.512175, 27.882401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141500, 31.188652, 27.987631>,  <29.709097, 30.906736, 27.929020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141500, 31.188652, 27.987631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129459, 31.587387, 28.017038>,  <29.122234, 31.826628, 28.034683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129459, 31.587387, 28.017038>,  <29.141500, 31.188652, 27.987631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129459, 31.587387, 28.017038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239193, 0.064233, -0.968845,
		-0.970505, -0.046750, 0.236503,
		-0.030102, 0.996839, 0.073521,
		29.120428, 31.886438, 28.039095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596476, 31.348986, 27.643623>,  <29.141500, 31.188652, 27.987631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596476, 31.348986, 27.643623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832119, 31.672161, 27.649157>,  <28.973505, 31.866066, 27.652477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832119, 31.672161, 27.649157>,  <28.596476, 31.348986, 27.643623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832119, 31.672161, 27.649157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207592, 0.167868, -0.963704,
		-0.780934, 0.564853, 0.266613,
		0.589107, 0.807936, 0.013835,
		29.008852, 31.914541, 27.653307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201324, 31.824862, 27.315046>,  <28.596476, 31.348986, 27.643623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201324, 31.824862, 27.315046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585922, 31.933569, 27.298714>,  <28.816681, 31.998793, 27.288914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585922, 31.933569, 27.298714>,  <28.201324, 31.824862, 27.315046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585922, 31.933569, 27.298714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074932, 0.116306, -0.990383,
		-0.264404, 0.955309, 0.132192,
		0.961497, 0.271767, -0.040831,
		28.874371, 32.015099, 27.286465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117844, 32.434574, 26.887423>,  <28.201324, 31.824862, 27.315046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117844, 32.434574, 26.887423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490540, 32.289356, 26.884262>,  <28.714157, 32.202225, 26.882366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490540, 32.289356, 26.884262>,  <28.117844, 32.434574, 26.887423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490540, 32.289356, 26.884262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106144, 0.293092, -0.950174,
		0.347269, 0.884476, 0.311620,
		0.931739, -0.363043, -0.007900,
		28.770061, 32.180443, 26.881891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415682, 32.781967, 26.334974>,  <28.117844, 32.434574, 26.887423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415682, 32.781967, 26.334974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674265, 32.481255, 26.386995>,  <28.829414, 32.300827, 26.418207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674265, 32.481255, 26.386995>,  <28.415682, 32.781967, 26.334974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674265, 32.481255, 26.386995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145150, -0.046161, -0.988332,
		0.749017, 0.657790, 0.079280,
		0.646456, -0.751785, 0.130053,
		28.868202, 32.255718, 26.426012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072840, 32.876972, 25.901600>,  <28.415682, 32.781967, 26.334974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072840, 32.876972, 25.901600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051725, 32.482868, 25.966696>,  <29.039057, 32.246407, 26.005753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051725, 32.482868, 25.966696>,  <29.072840, 32.876972, 25.901600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051725, 32.482868, 25.966696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178192, -0.151057, -0.972332,
		0.982579, -0.080326, -0.167591,
		-0.052788, -0.985256, 0.162739,
		29.035889, 32.187290, 26.015518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575121, 32.625526, 25.450247>,  <29.072840, 32.876972, 25.901600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575121, 32.625526, 25.450247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328939, 32.325806, 25.548037>,  <29.181231, 32.145973, 25.606710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328939, 32.325806, 25.548037>,  <29.575121, 32.625526, 25.450247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328939, 32.325806, 25.548037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100832, -0.232780, -0.967288,
		0.781697, -0.619972, 0.067712,
		-0.615453, -0.749299, 0.244476,
		29.144304, 32.101017, 25.621380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683966, 32.089684, 24.913170>,  <29.575121, 32.625526, 25.450247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683966, 32.089684, 24.913170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323154, 32.013424, 25.068089>,  <29.106668, 31.967669, 25.161039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323154, 32.013424, 25.068089>,  <29.683966, 32.089684, 24.913170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323154, 32.013424, 25.068089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354025, -0.186662, -0.916419,
		0.247010, -0.963748, 0.100879,
		-0.902027, -0.190651, 0.387298,
		29.052546, 31.956228, 25.184278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492296, 31.494936, 24.491076>,  <29.683966, 32.089684, 24.913170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492296, 31.494936, 24.491076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149654, 31.616287, 24.658018>,  <28.944069, 31.689098, 24.758184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149654, 31.616287, 24.658018>,  <29.492296, 31.494936, 24.491076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149654, 31.616287, 24.658018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487791, -0.212497, -0.846702,
		-0.168176, -0.928877, 0.330007,
		-0.856607, 0.303370, 0.417361,
		28.892672, 31.707300, 24.783226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974771, 31.051966, 24.259199>,  <29.492296, 31.494936, 24.491076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974771, 31.051966, 24.259199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720715, 31.327888, 24.398199>,  <28.568279, 31.493443, 24.481600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720715, 31.327888, 24.398199>,  <28.974771, 31.051966, 24.259199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720715, 31.327888, 24.398199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537764, -0.071978, -0.840017,
		-0.554439, -0.720404, 0.416671,
		-0.635143, 0.689809, 0.347500,
		28.530172, 31.534832, 24.502449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363035, 30.874147, 24.107143>,  <28.974771, 31.051966, 24.259199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363035, 30.874147, 24.107143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282671, 31.260405, 24.173073>,  <28.234453, 31.492159, 24.212631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282671, 31.260405, 24.173073>,  <28.363035, 30.874147, 24.107143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282671, 31.260405, 24.173073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470095, 0.052577, -0.881048,
		-0.859445, -0.254493, 0.443382,
		-0.200909, 0.965644, 0.164823,
		28.222399, 31.550098, 24.222519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748188, 30.978682, 23.892902>,  <28.363035, 30.874147, 24.107143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748188, 30.978682, 23.892902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877728, 31.357082, 23.887194>,  <27.955452, 31.584122, 23.883768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877728, 31.357082, 23.887194>,  <27.748188, 30.978682, 23.892902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877728, 31.357082, 23.887194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572963, 0.184095, -0.798638,
		-0.752884, 0.266817, 0.601643,
		0.323850, 0.946001, -0.014274,
		27.974882, 31.640882, 23.882912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160006, 31.346319, 23.682962>,  <27.748188, 30.978682, 23.892902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160006, 31.346319, 23.682962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478096, 31.566313, 23.580877>,  <27.668949, 31.698309, 23.519627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478096, 31.566313, 23.580877>,  <27.160006, 31.346319, 23.682962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478096, 31.566313, 23.580877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447553, 0.248491, -0.859040,
		-0.409041, 0.797351, 0.443754,
		0.795224, 0.549986, -0.255214,
		27.716663, 31.731308, 23.504313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906816, 31.911619, 23.360870>,  <27.160006, 31.346319, 23.682962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906816, 31.911619, 23.360870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287624, 31.901186, 23.238903>,  <27.516109, 31.894926, 23.165722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287624, 31.901186, 23.238903>,  <26.906816, 31.911619, 23.360870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287624, 31.901186, 23.238903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280079, 0.327292, -0.902461,
		0.123335, 0.944563, 0.304284,
		0.952021, -0.026081, -0.304919,
		27.573231, 31.893362, 23.147427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918245, 32.418221, 22.858435>,  <26.906816, 31.911619, 23.360870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918245, 32.418221, 22.858435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255014, 32.223068, 22.766226>,  <27.457075, 32.105976, 22.710901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255014, 32.223068, 22.766226>,  <26.918245, 32.418221, 22.858435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255014, 32.223068, 22.766226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094990, 0.286530, -0.953351,
		0.531172, 0.824544, 0.194892,
		0.841922, -0.487881, -0.230520,
		27.507591, 32.076702, 22.697069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307619, 32.927368, 22.349998>,  <26.918245, 32.418221, 22.858435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307619, 32.927368, 22.349998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397802, 32.539860, 22.308729>,  <27.451912, 32.307354, 22.283968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397802, 32.539860, 22.308729>,  <27.307619, 32.927368, 22.349998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397802, 32.539860, 22.308729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057682, 0.118987, -0.991219,
		0.972544, 0.217526, 0.082708,
		0.225457, -0.968775, -0.103172,
		27.465439, 32.249226, 22.277777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668375, 32.903397, 21.723688>,  <27.307619, 32.927368, 22.349998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668375, 32.903397, 21.723688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615402, 32.514771, 21.802195>,  <27.583618, 32.281593, 21.849298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615402, 32.514771, 21.802195>,  <27.668375, 32.903397, 21.723688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615402, 32.514771, 21.802195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031963, -0.202092, -0.978845,
		0.990676, -0.123358, 0.057818,
		-0.132433, -0.971567, 0.196265,
		27.575672, 32.223301, 21.861074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156080, 32.506748, 21.375395>,  <27.668375, 32.903397, 21.723688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156080, 32.506748, 21.375395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841320, 32.267700, 21.436899>,  <27.652464, 32.124271, 21.473801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841320, 32.267700, 21.436899>,  <28.156080, 32.506748, 21.375395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841320, 32.267700, 21.436899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011027, -0.262750, -0.964801,
		0.616982, -0.757506, 0.213348,
		-0.786900, -0.597617, 0.153759,
		27.605249, 32.088413, 21.483027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298168, 31.872469, 21.112984>,  <28.156080, 32.506748, 21.375395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298168, 31.872469, 21.112984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898327, 31.880772, 21.120619>,  <27.658422, 31.885754, 21.125200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898327, 31.880772, 21.120619>,  <28.298168, 31.872469, 21.112984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898327, 31.880772, 21.120619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025221, -0.355167, -0.934463,
		-0.012618, -0.934572, 0.355550,
		-0.999603, 0.020758, 0.019089,
		27.598446, 31.886999, 21.126345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147738, 31.355482, 20.688002>,  <28.298168, 31.872469, 21.112984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147738, 31.355482, 20.688002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777767, 31.506531, 20.705509>,  <27.555784, 31.597160, 20.716013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777767, 31.506531, 20.705509>,  <28.147738, 31.355482, 20.688002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777767, 31.506531, 20.705509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106657, -0.147266, -0.983330,
		-0.364878, -0.914176, 0.176486,
		-0.924926, 0.377619, 0.043769,
		27.500290, 31.619816, 20.718639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624830, 30.872917, 20.412584>,  <28.147738, 31.355482, 20.688002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624830, 30.872917, 20.412584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481161, 31.243656, 20.368860>,  <27.394960, 31.466099, 20.342625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481161, 31.243656, 20.368860>,  <27.624830, 30.872917, 20.412584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481161, 31.243656, 20.368860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095826, -0.153134, -0.983549,
		-0.928339, -0.342788, 0.143817,
		-0.359172, 0.926848, -0.109312,
		27.373409, 31.521711, 20.336067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127787, 30.897764, 19.898176>,  <27.624830, 30.872917, 20.412584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127787, 30.897764, 19.898176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186384, 31.292519, 19.925289>,  <27.221542, 31.529371, 19.941557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186384, 31.292519, 19.925289>,  <27.127787, 30.897764, 19.898176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186384, 31.292519, 19.925289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178879, 0.093821, -0.979387,
		-0.972903, 0.131351, 0.190278,
		0.146496, 0.986886, 0.067783,
		27.230333, 31.588585, 19.945623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569752, 31.221613, 19.594561>,  <27.127787, 30.897764, 19.898176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569752, 31.221613, 19.594561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853462, 31.502382, 19.568542>,  <27.023689, 31.670843, 19.552933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853462, 31.502382, 19.568542>,  <26.569752, 31.221613, 19.594561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853462, 31.502382, 19.568542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142947, 0.052864, -0.988318,
		-0.690283, 0.710290, 0.137833,
		0.709278, 0.701922, -0.065043,
		27.066246, 31.712959, 19.549030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347383, 31.636141, 19.041777>,  <26.569752, 31.221613, 19.594561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347383, 31.636141, 19.041777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733376, 31.716614, 19.109116>,  <26.964970, 31.764898, 19.149519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733376, 31.716614, 19.109116>,  <26.347383, 31.636141, 19.041777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733376, 31.716614, 19.109116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182426, -0.053484, -0.981764,
		-0.188512, 0.978092, -0.088312,
		0.964979, 0.201185, 0.168347,
		27.022869, 31.776970, 19.159620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516039, 32.154549, 18.609154>,  <26.347383, 31.636141, 19.041777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516039, 32.154549, 18.609154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871082, 31.982271, 18.674450>,  <27.084108, 31.878904, 18.713629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871082, 31.982271, 18.674450>,  <26.516039, 32.154549, 18.609154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871082, 31.982271, 18.674450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267226, 0.192874, -0.944134,
		0.375151, 0.881646, 0.286291,
		0.887610, -0.430697, 0.163242,
		27.137365, 31.853062, 18.723423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006308, 32.592766, 18.157028>,  <26.516039, 32.154549, 18.609154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006308, 32.592766, 18.157028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190605, 32.251568, 18.255102>,  <27.301184, 32.046848, 18.313946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190605, 32.251568, 18.255102>,  <27.006308, 32.592766, 18.157028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190605, 32.251568, 18.255102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401378, -0.046134, -0.914750,
		0.791588, 0.519877, 0.321117,
		0.460743, -0.852995, 0.245186,
		27.328829, 31.995670, 18.328657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630354, 32.720787, 18.003025>,  <27.006308, 32.592766, 18.157028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630354, 32.720787, 18.003025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547504, 32.329716, 17.988907>,  <27.497795, 32.095074, 17.980436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547504, 32.329716, 17.988907>,  <27.630354, 32.720787, 18.003025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547504, 32.329716, 17.988907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199179, -0.006817, -0.979940,
		0.957825, -0.209998, 0.196145,
		-0.207122, -0.977678, -0.035298,
		27.485367, 32.036411, 17.978317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924627, 32.474751, 17.433880>,  <27.630354, 32.720787, 18.003025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924627, 32.474751, 17.433880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721869, 32.140621, 17.519009>,  <27.600214, 31.940144, 17.570086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721869, 32.140621, 17.519009>,  <27.924627, 32.474751, 17.433880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721869, 32.140621, 17.519009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136128, -0.166222, -0.976647,
		0.851191, -0.524029, -0.029453,
		-0.506896, -0.835323, 0.212822,
		27.569799, 31.890024, 17.582855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185101, 31.880350, 17.052059>,  <27.924627, 32.474751, 17.433880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185101, 31.880350, 17.052059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805283, 31.782389, 17.130424>,  <27.577391, 31.723612, 17.177444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805283, 31.782389, 17.130424>,  <28.185101, 31.880350, 17.052059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805283, 31.782389, 17.130424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149059, -0.197201, -0.968965,
		0.275939, -0.949280, 0.150747,
		-0.949547, -0.244905, 0.195914,
		27.520418, 31.708918, 17.189199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078249, 31.207901, 16.747822>,  <28.185101, 31.880350, 17.052059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078249, 31.207901, 16.747822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718725, 31.380064, 16.781034>,  <27.503012, 31.483362, 16.800962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718725, 31.380064, 16.781034>,  <28.078249, 31.207901, 16.747822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718725, 31.380064, 16.781034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226525, -0.293908, -0.928604,
		-0.375274, -0.853445, 0.361664,
		-0.898808, 0.430407, 0.083031,
		27.449083, 31.509186, 16.805944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712679, 30.785761, 16.395306>,  <28.078249, 31.207901, 16.747822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712679, 30.785761, 16.395306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447979, 31.085218, 16.411396>,  <27.289158, 31.264893, 16.421051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447979, 31.085218, 16.411396>,  <27.712679, 30.785761, 16.395306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447979, 31.085218, 16.411396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294797, -0.210498, -0.932087,
		-0.689332, -0.628669, 0.359995,
		-0.661752, 0.748643, 0.040227,
		27.249453, 31.309811, 16.423464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089869, 30.755775, 15.914701>,  <27.712679, 30.785761, 16.395306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089869, 30.755775, 15.914701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039669, 31.144360, 15.995216>,  <27.009548, 31.377510, 16.043526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039669, 31.144360, 15.995216>,  <27.089869, 30.755775, 15.914701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039669, 31.144360, 15.995216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216647, 0.171162, -0.961128,
		-0.968150, -0.164230, 0.188983,
		-0.125500, 0.971458, 0.201290,
		27.002020, 31.435797, 16.055603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419613, 30.922789, 15.718229>,  <27.089869, 30.755775, 15.914701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419613, 30.922789, 15.718229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674536, 31.229227, 15.684923>,  <26.827490, 31.413090, 15.664940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674536, 31.229227, 15.684923>,  <26.419613, 30.922789, 15.718229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674536, 31.229227, 15.684923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178000, 0.041219, -0.983167,
		-0.749770, 0.641401, 0.162635,
		0.637307, 0.766098, -0.083265,
		26.865728, 31.459057, 15.659944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081266, 31.321064, 15.308942>,  <26.419613, 30.922789, 15.718229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081266, 31.321064, 15.308942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456533, 31.454775, 15.272944>,  <26.681694, 31.535002, 15.251346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456533, 31.454775, 15.272944>,  <26.081266, 31.321064, 15.308942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456533, 31.454775, 15.272944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166131, 0.206677, -0.964202,
		-0.303709, 0.919535, 0.249432,
		0.938169, 0.334275, -0.089994,
		26.737984, 31.555058, 15.245946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102961, 32.038818, 15.041000>,  <26.081266, 31.321064, 15.308942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102961, 32.038818, 15.041000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457952, 31.880642, 14.946339>,  <26.670948, 31.785738, 14.889542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457952, 31.880642, 14.946339>,  <26.102961, 32.038818, 15.041000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457952, 31.880642, 14.946339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111924, 0.313202, -0.943068,
		0.447044, 0.863443, 0.233702,
		0.887482, -0.395437, -0.236655,
		26.724197, 31.762011, 14.875342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301741, 32.524021, 14.605513>,  <26.102961, 32.038818, 15.041000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301741, 32.524021, 14.605513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539440, 32.212708, 14.524376>,  <26.682060, 32.025921, 14.475694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539440, 32.212708, 14.524376>,  <26.301741, 32.524021, 14.605513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539440, 32.212708, 14.524376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038329, 0.224512, -0.973717,
		0.803367, 0.586406, 0.103585,
		0.594250, -0.778282, -0.202842,
		26.717714, 31.979223, 14.463524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814301, 32.772125, 14.056358>,  <26.301741, 32.524021, 14.605513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814301, 32.772125, 14.056358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828463, 32.373077, 14.032680>,  <26.836960, 32.133648, 14.018473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828463, 32.373077, 14.032680>,  <26.814301, 32.772125, 14.056358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828463, 32.373077, 14.032680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156983, 0.064050, -0.985522,
		0.986966, 0.025597, 0.158877,
		0.035403, -0.997618, -0.059197,
		26.839083, 32.073792, 14.014920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386621, 32.580807, 13.637395>,  <26.814301, 32.772125, 14.056358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386621, 32.580807, 13.637395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.195181, 32.229595, 13.636510>,  <27.080317, 32.018867, 13.635979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.195181, 32.229595, 13.636510>,  <27.386621, 32.580807, 13.637395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195181, 32.229595, 13.636510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201174, -0.107203, -0.973672,
		0.854676, -0.466445, 0.227944,
		-0.478600, -0.878030, -0.002213,
		27.051601, 31.966187, 13.635846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362858, 33.253883, 13.314629>,  <27.386621, 32.580807, 13.637395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362858, 33.253883, 13.314629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591108, 33.581749, 13.294459>,  <27.728058, 33.778469, 13.282357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591108, 33.581749, 13.294459>,  <27.362858, 33.253883, 13.314629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591108, 33.581749, 13.294459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056681, 0.021945, 0.998151,
		0.819252, -0.572428, -0.033937,
		0.570625, 0.819661, -0.050424,
		27.762297, 33.827648, 13.279332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742443, 33.132915, 13.966120>,  <27.362858, 33.253883, 13.314629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742443, 33.132915, 13.966120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844501, 33.510326, 13.881586>,  <27.905737, 33.736771, 13.830866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844501, 33.510326, 13.881586>,  <27.742443, 33.132915, 13.966120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844501, 33.510326, 13.881586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264246, 0.142204, 0.953914,
		0.930094, -0.299232, -0.213039,
		0.255146, 0.943525, -0.211334,
		27.921045, 33.793385, 13.818186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462502, 33.177017, 14.170084>,  <27.742443, 33.132915, 13.966120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462502, 33.177017, 14.170084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288589, 33.537220, 14.173187>,  <28.184242, 33.753342, 14.175050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288589, 33.537220, 14.173187>,  <28.462502, 33.177017, 14.170084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288589, 33.537220, 14.173187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289131, 0.131428, 0.948225,
		0.852859, 0.414513, -0.317506,
		-0.434780, 0.900503, 0.007759,
		28.158155, 33.807369, 14.175515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029209, 33.626945, 14.304950>,  <28.462502, 33.177017, 14.170084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029209, 33.626945, 14.304950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700529, 33.826485, 14.415191>,  <28.503321, 33.946209, 14.481335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700529, 33.826485, 14.415191>,  <29.029209, 33.626945, 14.304950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700529, 33.826485, 14.415191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341393, 0.043618, 0.938908,
		0.456353, 0.865590, -0.206145,
		-0.821701, 0.498850, 0.275601,
		28.454020, 33.976139, 14.497871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249447, 34.142349, 14.758265>,  <29.029209, 33.626945, 14.304950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249447, 34.142349, 14.758265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857346, 34.127014, 14.835866>,  <28.622086, 34.117813, 14.882426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857346, 34.127014, 14.835866>,  <29.249447, 34.142349, 14.758265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857346, 34.127014, 14.835866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191995, 0.050480, 0.980097,
		-0.047367, 0.997989, -0.042123,
		-0.980252, -0.038337, 0.194000,
		28.563271, 34.115513, 14.894066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099669, 34.683811, 15.114377>,  <29.249447, 34.142349, 14.758265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099669, 34.683811, 15.114377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807611, 34.427776, 15.210023>,  <28.632378, 34.274155, 15.267410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807611, 34.427776, 15.210023>,  <29.099669, 34.683811, 15.114377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807611, 34.427776, 15.210023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131076, 0.212237, 0.968388,
		-0.670604, 0.738404, -0.071063,
		-0.730143, -0.640090, 0.239114,
		28.588568, 34.235748, 15.281757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867691, 34.997715, 15.810340>,  <29.099669, 34.683811, 15.114377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867691, 34.997715, 15.810340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744316, 34.617664, 15.791893>,  <28.670290, 34.389633, 15.780825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744316, 34.617664, 15.791893>,  <28.867691, 34.997715, 15.810340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744316, 34.617664, 15.791893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157256, -0.098744, 0.982609,
		-0.938156, 0.295822, 0.179869,
		-0.308439, -0.950126, -0.046117,
		28.651785, 34.332626, 15.778058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380333, 35.001942, 16.282228>,  <28.867691, 34.997715, 15.810340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380333, 35.001942, 16.282228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505348, 34.624924, 16.235023>,  <28.580357, 34.398712, 16.206701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505348, 34.624924, 16.235023>,  <28.380333, 35.001942, 16.282228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505348, 34.624924, 16.235023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125204, -0.164028, 0.978478,
		-0.941618, -0.291034, -0.169276,
		0.312536, -0.942547, -0.118013,
		28.599110, 34.342159, 16.199619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925365, 34.644218, 16.726755>,  <28.380333, 35.001942, 16.282228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925365, 34.644218, 16.726755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253273, 34.424618, 16.661556>,  <28.450018, 34.292858, 16.622437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253273, 34.424618, 16.661556>,  <27.925365, 34.644218, 16.726755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253273, 34.424618, 16.661556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134564, -0.091992, 0.986626,
		-0.556658, -0.830740, -0.001536,
		0.819771, -0.549006, -0.162996,
		28.499205, 34.259914, 16.612658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853878, 34.083832, 17.179081>,  <27.925365, 34.644218, 16.726755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853878, 34.083832, 17.179081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234959, 34.082783, 17.057520>,  <28.463606, 34.082153, 16.984583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234959, 34.082783, 17.057520>,  <27.853878, 34.083832, 17.179081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234959, 34.082783, 17.057520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303630, -0.035080, 0.952144,
		-0.013145, -0.999381, -0.032628,
		0.952699, -0.002609, -0.303903,
		28.520769, 34.081997, 16.966349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079828, 33.472961, 17.470541>,  <27.853878, 34.083832, 17.179081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079828, 33.472961, 17.470541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396326, 33.704132, 17.390606>,  <28.586226, 33.842834, 17.342646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396326, 33.704132, 17.390606>,  <28.079828, 33.472961, 17.470541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396326, 33.704132, 17.390606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314694, -0.104635, 0.943408,
		0.524310, -0.809353, -0.264662,
		0.791244, 0.577926, -0.199837,
		28.633699, 33.877510, 17.330654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688704, 33.154388, 17.853825>,  <28.079828, 33.472961, 17.470541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688704, 33.154388, 17.853825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806543, 33.526764, 17.767511>,  <28.877247, 33.750191, 17.715723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806543, 33.526764, 17.767511>,  <28.688704, 33.154388, 17.853825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806543, 33.526764, 17.767511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328265, 0.113481, 0.937744,
		0.897470, -0.347094, -0.272163,
		0.294600, 0.930939, -0.215785,
		28.894924, 33.806046, 17.702776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434147, 33.255531, 17.908190>,  <28.688704, 33.154388, 17.853825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434147, 33.255531, 17.908190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299387, 33.624088, 17.985682>,  <29.218531, 33.845222, 18.032177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299387, 33.624088, 17.985682>,  <29.434147, 33.255531, 17.908190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299387, 33.624088, 17.985682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473604, -0.011994, 0.880656,
		0.813756, 0.388443, -0.432335,
		-0.336899, 0.921395, 0.193728,
		29.198317, 33.900505, 18.043800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957760, 33.600628, 18.229994>,  <29.434147, 33.255531, 17.908190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957760, 33.600628, 18.229994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643839, 33.830776, 18.322111>,  <29.455486, 33.968864, 18.377382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643839, 33.830776, 18.322111>,  <29.957760, 33.600628, 18.229994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643839, 33.830776, 18.322111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409975, 0.203320, 0.889147,
		0.464764, 0.792219, -0.395453,
		-0.784803, 0.575369, 0.230294,
		29.408398, 34.003387, 18.391199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166168, 34.231033, 18.599873>,  <29.957760, 33.600628, 18.229994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166168, 34.231033, 18.599873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782368, 34.221016, 18.712109>,  <29.552088, 34.215008, 18.779451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782368, 34.221016, 18.712109>,  <30.166168, 34.231033, 18.599873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782368, 34.221016, 18.712109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275568, 0.123379, 0.953331,
		-0.058491, 0.992044, -0.111482,
		-0.959500, -0.025040, 0.280592,
		29.494518, 34.213505, 18.796286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064718, 34.753971, 19.142956>,  <30.166168, 34.231033, 18.599873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064718, 34.753971, 19.142956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749758, 34.511635, 19.188498>,  <29.560781, 34.366234, 19.215822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749758, 34.511635, 19.188498>,  <30.064718, 34.753971, 19.142956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749758, 34.511635, 19.188498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160692, -0.023418, 0.986727,
		-0.595130, 0.795243, 0.115793,
		-0.787400, -0.605838, 0.113853,
		29.513538, 34.329884, 19.222652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646015, 35.058167, 19.629248>,  <30.064718, 34.753971, 19.142956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646015, 35.058167, 19.629248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562733, 34.667000, 19.636414>,  <29.512764, 34.432301, 19.640713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562733, 34.667000, 19.636414>,  <29.646015, 35.058167, 19.629248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562733, 34.667000, 19.636414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148825, -0.013572, 0.988770,
		-0.966696, 0.208534, 0.148365,
		-0.208206, -0.977921, 0.017915,
		29.500271, 34.373623, 19.641788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258829, 34.943192, 20.216980>,  <29.646015, 35.058167, 19.629248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258829, 34.943192, 20.216980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331007, 34.559441, 20.130224>,  <29.374313, 34.329189, 20.078171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331007, 34.559441, 20.130224>,  <29.258829, 34.943192, 20.216980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331007, 34.559441, 20.130224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105624, -0.200333, 0.974018,
		-0.977898, -0.198663, 0.065184,
		0.180443, -0.959374, -0.216889,
		29.385139, 34.271629, 20.065157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775589, 34.663124, 20.610748>,  <29.258829, 34.943192, 20.216980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775589, 34.663124, 20.610748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048630, 34.384197, 20.523298>,  <29.212454, 34.216839, 20.470829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048630, 34.384197, 20.523298>,  <28.775589, 34.663124, 20.610748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048630, 34.384197, 20.523298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029168, -0.324919, 0.945292,
		-0.730207, -0.638882, -0.242130,
		0.682603, -0.697321, -0.218623,
		29.253410, 34.174999, 20.457712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557228, 33.908260, 20.895800>,  <28.775589, 34.663124, 20.610748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557228, 33.908260, 20.895800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956202, 33.897972, 20.869083>,  <29.195585, 33.891800, 20.853054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956202, 33.897972, 20.869083>,  <28.557228, 33.908260, 20.895800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956202, 33.897972, 20.869083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059839, -0.212265, 0.975378,
		-0.039259, -0.976874, -0.210181,
		0.997436, -0.025715, -0.066789,
		29.255432, 33.890259, 20.849047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824961, 33.246601, 21.279898>,  <28.557228, 33.908260, 20.895800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824961, 33.246601, 21.279898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133896, 33.499073, 21.251303>,  <29.319258, 33.650555, 21.234146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133896, 33.499073, 21.251303>,  <28.824961, 33.246601, 21.279898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133896, 33.499073, 21.251303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261805, -0.213758, 0.941151,
		0.578752, -0.745603, -0.330338,
		0.772337, 0.631177, -0.071490,
		29.365597, 33.688427, 21.229856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340734, 32.859554, 21.644934>,  <28.824961, 33.246601, 21.279898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340734, 32.859554, 21.644934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462523, 33.240433, 21.635019>,  <29.535595, 33.468960, 21.629070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462523, 33.240433, 21.635019>,  <29.340734, 32.859554, 21.644934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462523, 33.240433, 21.635019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449678, -0.120750, 0.884991,
		0.839694, -0.280602, -0.464948,
		0.304472, 0.952199, -0.024788,
		29.553864, 33.526093, 21.627583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966825, 32.835739, 21.889042>,  <29.340734, 32.859554, 21.644934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966825, 32.835739, 21.889042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834246, 33.205784, 21.963142>,  <29.754698, 33.427811, 22.007603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834246, 33.205784, 21.963142>,  <29.966825, 32.835739, 21.889042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834246, 33.205784, 21.963142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362162, -0.056557, 0.930398,
		0.871195, 0.375471, -0.316293,
		-0.331449, 0.925107, 0.185253,
		29.734812, 33.483315, 22.018719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361820, 33.133018, 22.508556>,  <29.966825, 32.835739, 21.889042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361820, 33.133018, 22.508556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062290, 33.397354, 22.488340>,  <29.882572, 33.555954, 22.476212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062290, 33.397354, 22.488340>,  <30.361820, 33.133018, 22.508556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062290, 33.397354, 22.488340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103511, 0.191932, 0.975934,
		0.654633, 0.725574, -0.212127,
		-0.748826, 0.660836, -0.050540,
		29.837643, 33.595604, 22.473179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569754, 33.673363, 22.999685>,  <30.361820, 33.133018, 22.508556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569754, 33.673363, 22.999685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177170, 33.734375, 22.953260>,  <29.941620, 33.770985, 22.925406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177170, 33.734375, 22.953260>,  <30.569754, 33.673363, 22.999685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177170, 33.734375, 22.953260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118655, -0.007988, 0.992903,
		0.150524, 0.988266, 0.025938,
		-0.981460, 0.152533, -0.116060,
		29.882732, 33.780136, 22.918442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354233, 34.349743, 23.392223>,  <30.569754, 33.673363, 22.999685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354233, 34.349743, 23.392223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026236, 34.128300, 23.334082>,  <29.829437, 33.995434, 23.299196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026236, 34.128300, 23.334082>,  <30.354233, 34.349743, 23.392223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026236, 34.128300, 23.334082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277964, 0.163171, 0.946631,
		-0.500346, 0.816635, -0.287682,
		-0.819994, -0.553609, -0.145353,
		29.780237, 33.962215, 23.290476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768875, 34.767506, 23.548487>,  <30.354233, 34.349743, 23.392223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768875, 34.767506, 23.548487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668531, 34.383400, 23.597420>,  <29.608324, 34.152939, 23.626780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668531, 34.383400, 23.597420>,  <29.768875, 34.767506, 23.548487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668531, 34.383400, 23.597420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283662, 0.193747, 0.939147,
		-0.925530, 0.200894, -0.320993,
		-0.250860, -0.960262, 0.122333,
		29.593273, 34.095322, 23.634119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182644, 34.847466, 23.902599>,  <29.768875, 34.767506, 23.548487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182644, 34.847466, 23.902599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266922, 34.460903, 23.961470>,  <29.317488, 34.228966, 23.996792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266922, 34.460903, 23.961470>,  <29.182644, 34.847466, 23.902599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266922, 34.460903, 23.961470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330685, 0.071221, 0.941050,
		-0.919921, -0.246943, -0.304571,
		0.210694, -0.966409, 0.147178,
		29.330130, 34.170979, 24.005623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547333, 34.598877, 24.190144>,  <29.182644, 34.847466, 23.902599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547333, 34.598877, 24.190144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831753, 34.339134, 24.298027>,  <29.002405, 34.183289, 24.362757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831753, 34.339134, 24.298027>,  <28.547333, 34.598877, 24.190144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831753, 34.339134, 24.298027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192899, 0.188713, 0.962900,
		-0.676163, -0.736698, 0.008925,
		0.711051, -0.649356, 0.269709,
		29.045069, 34.144329, 24.378941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215940, 34.306725, 24.801657>,  <28.547333, 34.598877, 24.190144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215940, 34.306725, 24.801657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606731, 34.230396, 24.839823>,  <28.841206, 34.184601, 24.862722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606731, 34.230396, 24.839823>,  <28.215940, 34.306725, 24.801657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606731, 34.230396, 24.839823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056966, 0.197675, 0.978611,
		-0.205601, -0.961515, 0.182253,
		0.976977, -0.190821, 0.095416,
		28.899824, 34.173149, 24.868448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326187, 33.973289, 25.426096>,  <28.215940, 34.306725, 24.801657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326187, 33.973289, 25.426096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688150, 34.121132, 25.341686>,  <28.905329, 34.209839, 25.291040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688150, 34.121132, 25.341686>,  <28.326187, 33.973289, 25.426096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688150, 34.121132, 25.341686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005766, 0.485133, 0.874422,
		0.425563, -0.792490, 0.436871,
		0.904910, 0.369602, -0.211024,
		28.959623, 34.232014, 25.278379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545231, 33.892483, 26.010014>,  <28.326187, 33.973289, 25.426096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545231, 33.892483, 26.010014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822598, 34.141327, 25.864603>,  <28.989017, 34.290634, 25.777357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822598, 34.141327, 25.864603>,  <28.545231, 33.892483, 26.010014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822598, 34.141327, 25.864603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264237, 0.249817, 0.931542,
		0.670338, -0.742004, 0.008842,
		0.693416, 0.622111, -0.363526,
		29.030622, 34.327961, 25.755545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197208, 33.684429, 26.338715>,  <28.545231, 33.892483, 26.010014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197208, 33.684429, 26.338715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245729, 34.053444, 26.192173>,  <29.274843, 34.274853, 26.104248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245729, 34.053444, 26.192173>,  <29.197208, 33.684429, 26.338715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245729, 34.053444, 26.192173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216457, 0.335612, 0.916794,
		0.968727, -0.190511, -0.158979,
		0.121304, 0.922535, -0.366353,
		29.282120, 34.330204, 26.082268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828701, 33.892002, 26.621828>,  <29.197208, 33.684429, 26.338715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828701, 33.892002, 26.621828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651321, 34.235352, 26.518639>,  <29.544893, 34.441360, 26.456724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651321, 34.235352, 26.518639>,  <29.828701, 33.892002, 26.621828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651321, 34.235352, 26.518639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339108, 0.427103, 0.838205,
		0.829673, 0.284220, -0.480480,
		-0.443449, 0.858372, -0.257975,
		29.518286, 34.492863, 26.441246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328989, 34.329887, 26.819281>,  <29.828701, 33.892002, 26.621828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328989, 34.329887, 26.819281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989517, 34.538857, 26.786238>,  <29.785835, 34.664238, 26.766411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989517, 34.538857, 26.786238>,  <30.328989, 34.329887, 26.819281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989517, 34.538857, 26.786238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271766, 0.564708, 0.779261,
		0.453751, 0.638891, -0.621231,
		-0.848677, 0.522420, -0.082608,
		29.734915, 34.695583, 26.761456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503122, 35.027027, 26.810818>,  <30.328989, 34.329887, 26.819281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503122, 35.027027, 26.810818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117218, 35.046864, 26.914181>,  <29.885675, 35.058765, 26.976198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117218, 35.046864, 26.914181>,  <30.503122, 35.027027, 26.810818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117218, 35.046864, 26.914181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245052, 0.527016, 0.813759,
		-0.095828, 0.848407, -0.520598,
		-0.964762, 0.049593, 0.258407,
		29.827789, 35.061741, 26.991703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361444, 35.728462, 26.957182>,  <30.503122, 35.027027, 26.810818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361444, 35.728462, 26.957182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114853, 35.480614, 27.151508>,  <29.966898, 35.331905, 27.268105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114853, 35.480614, 27.151508>,  <30.361444, 35.728462, 26.957182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114853, 35.480614, 27.151508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091523, 0.556436, 0.825834,
		-0.782032, 0.553574, -0.286323,
		-0.616481, -0.619624, 0.485816,
		29.929909, 35.294727, 27.297253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033762, 36.228806, 27.328863>,  <30.361444, 35.728462, 26.957182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033762, 36.228806, 27.328863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993036, 35.870525, 27.502003>,  <29.968601, 35.655560, 27.605886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993036, 35.870525, 27.502003>,  <30.033762, 36.228806, 27.328863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993036, 35.870525, 27.502003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213237, 0.405349, 0.888944,
		-0.971681, 0.182806, 0.149726,
		-0.101813, -0.895698, 0.432851,
		29.962492, 35.601814, 27.631859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884054, 36.408146, 27.918476>,  <30.033762, 36.228806, 27.328863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884054, 36.408146, 27.918476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010309, 36.031929, 27.968691>,  <30.086061, 35.806198, 27.998819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010309, 36.031929, 27.968691>,  <29.884054, 36.408146, 27.918476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010309, 36.031929, 27.968691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537493, 0.286249, 0.793198,
		-0.781969, -0.182886, 0.595883,
		0.315636, -0.940539, 0.125538,
		30.105000, 35.749767, 28.006351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704933, 36.190220, 28.614340>,  <29.884054, 36.408146, 27.918476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704933, 36.190220, 28.614340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013035, 35.962021, 28.500328>,  <30.197895, 35.825100, 28.431921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013035, 35.962021, 28.500328>,  <29.704933, 36.190220, 28.614340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013035, 35.962021, 28.500328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482317, 0.228719, 0.845611,
		-0.417229, -0.788808, 0.451333,
		0.770253, -0.570499, -0.285028,
		30.244110, 35.790871, 28.414820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791933, 35.679794, 29.155987>,  <29.704933, 36.190220, 28.614340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791933, 35.679794, 29.155987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107697, 35.801899, 28.942951>,  <30.297155, 35.875160, 28.815130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107697, 35.801899, 28.942951>,  <29.791933, 35.679794, 29.155987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107697, 35.801899, 28.942951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410421, 0.382726, 0.827693,
		0.456498, -0.871973, 0.176841,
		0.789408, 0.305261, -0.532589,
		30.344519, 35.893475, 28.783175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472347, 35.298683, 29.309324>,  <29.791933, 35.679794, 29.155987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472347, 35.298683, 29.309324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575735, 35.676514, 29.228354>,  <30.637768, 35.903210, 29.179771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575735, 35.676514, 29.228354>,  <30.472347, 35.298683, 29.309324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575735, 35.676514, 29.228354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448186, 0.068375, 0.891322,
		0.855758, -0.321105, -0.405671,
		0.258470, 0.944572, -0.202427,
		30.653276, 35.959885, 29.167625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408905, 34.800282, 29.925165>,  <30.472347, 35.298683, 29.309324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408905, 34.800282, 29.925165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429316, 34.583946, 30.260998>,  <30.441563, 34.454147, 30.462498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429316, 34.583946, 30.260998>,  <30.408905, 34.800282, 29.925165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429316, 34.583946, 30.260998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006980, -0.840460, -0.541827,
		0.998673, 0.033508, -0.039110,
		0.051026, -0.540835, 0.839579,
		30.444624, 34.421696, 30.512871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540703, 34.211643, 29.638536>,  <30.408905, 34.800282, 29.925165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540703, 34.211643, 29.638536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486834, 34.093719, 30.016943>,  <30.454512, 34.022964, 30.243988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486834, 34.093719, 30.016943>,  <30.540703, 34.211643, 29.638536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486834, 34.093719, 30.016943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202481, -0.926383, -0.317515,
		0.969982, -0.234311, 0.065064,
		-0.134671, -0.294809, 0.946019,
		30.446432, 34.005276, 30.300749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648350, 33.482170, 29.577152>,  <30.540703, 34.211643, 29.638536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648350, 33.482170, 29.577152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436935, 33.559689, 29.907751>,  <30.310087, 33.606201, 30.106110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436935, 33.559689, 29.907751>,  <30.648350, 33.482170, 29.577152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436935, 33.559689, 29.907751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485391, -0.867733, -0.106936,
		0.696454, -0.457693, 0.552693,
		-0.528534, 0.193796, 0.826496,
		30.278376, 33.617828, 30.155701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378534, 33.524658, 29.733150>,  <30.648350, 33.482170, 29.577152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378534, 33.524658, 29.733150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464876, 33.243168, 29.462395>,  <31.516682, 33.074272, 29.299942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464876, 33.243168, 29.462395>,  <31.378534, 33.524658, 29.733150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464876, 33.243168, 29.462395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971557, 0.223934, 0.077012,
		0.097383, -0.674258, 0.732047,
		0.215856, -0.703726, -0.676887,
		31.529633, 33.032051, 29.259329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894159, 33.039631, 29.987276>,  <31.378534, 33.524658, 29.733150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894159, 33.039631, 29.987276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972963, 33.001122, 29.597012>,  <32.020245, 32.978016, 29.362852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972963, 33.001122, 29.597012>,  <31.894159, 33.039631, 29.987276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972963, 33.001122, 29.597012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966566, 0.185670, 0.176852,
		0.164126, -0.977885, 0.129633,
		0.197010, -0.096273, -0.975663,
		32.032066, 32.972240, 29.304312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550283, 32.457645, 30.382763>,  <31.894159, 33.039631, 29.987276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550283, 32.457645, 30.382763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427851, 32.829052, 30.298693>,  <31.354391, 33.051895, 30.248251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427851, 32.829052, 30.298693>,  <31.550283, 32.457645, 30.382763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427851, 32.829052, 30.298693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519866, -0.347965, -0.780166,
		-0.797530, -0.129531, 0.589209,
		-0.306080, 0.928516, -0.210174,
		31.336027, 33.107605, 30.235641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824358, 32.500134, 30.394636>,  <31.550283, 32.457645, 30.382763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824358, 32.500134, 30.394636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017529, 32.717216, 30.119753>,  <31.133430, 32.847466, 29.954823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017529, 32.717216, 30.119753>,  <30.824358, 32.500134, 30.394636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017529, 32.717216, 30.119753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391174, -0.568425, -0.723793,
		-0.783430, 0.618358, -0.062217,
		0.482929, 0.542703, -0.687207,
		31.162407, 32.880028, 29.913591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408779, 32.824730, 29.842258>,  <30.824358, 32.500134, 30.394636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408779, 32.824730, 29.842258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777370, 32.768673, 29.697350>,  <30.998526, 32.735039, 29.610405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777370, 32.768673, 29.697350>,  <30.408779, 32.824730, 29.842258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777370, 32.768673, 29.697350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384017, -0.468871, -0.795419,
		-0.058389, 0.872079, -0.485870,
		0.921478, -0.140139, -0.362270,
		31.053814, 32.726631, 29.588669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439402, 32.939560, 29.067179>,  <30.408779, 32.824730, 29.842258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439402, 32.939560, 29.067179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725897, 32.676544, 29.160686>,  <30.897795, 32.518734, 29.216791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725897, 32.676544, 29.160686>,  <30.439402, 32.939560, 29.067179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725897, 32.676544, 29.160686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389867, -0.654851, -0.647436,
		0.578796, 0.372581, -0.725382,
		0.716240, -0.657536, 0.233768,
		30.940769, 32.479282, 29.230818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645947, 33.166832, 29.148745>,  <30.439402, 32.939560, 29.067179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645947, 33.166832, 29.148745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627743, 32.864120, 28.887911>,  <29.616821, 32.682495, 28.731411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627743, 32.864120, 28.887911>,  <29.645947, 33.166832, 29.148745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627743, 32.864120, 28.887911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758219, 0.451170, -0.470691,
		0.650410, 0.473004, -0.594335,
		-0.045508, -0.756778, -0.652086,
		29.614090, 32.637089, 28.692286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694109, 32.566219, 29.680006>,  <29.645947, 33.166832, 29.148745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694109, 32.566219, 29.680006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431513, 32.346596, 29.886909>,  <29.273954, 32.214821, 30.011051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431513, 32.346596, 29.886909>,  <29.694109, 32.566219, 29.680006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431513, 32.346596, 29.886909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168162, -0.561936, -0.809907,
		0.735352, -0.618679, 0.276575,
		-0.656490, -0.549057, 0.517259,
		29.234566, 32.181877, 30.042088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987026, 32.700253, 30.435936>,  <29.694109, 32.566219, 29.680006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987026, 32.700253, 30.435936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614079, 32.732338, 30.576933>,  <29.390310, 32.751591, 30.661531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614079, 32.732338, 30.576933>,  <29.987026, 32.700253, 30.435936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614079, 32.732338, 30.576933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162125, -0.964299, -0.209384,
		0.323113, -0.252372, 0.912089,
		-0.932370, 0.080218, 0.352494,
		29.334368, 32.756405, 30.682680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877064, 32.140198, 30.864491>,  <29.987026, 32.700253, 30.435936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877064, 32.140198, 30.864491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524921, 32.243397, 30.705288>,  <29.313635, 32.305317, 30.609766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524921, 32.243397, 30.705288>,  <29.877064, 32.140198, 30.864491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524921, 32.243397, 30.705288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212535, -0.964741, -0.155254,
		-0.424028, -0.052088, 0.904150,
		-0.880357, 0.257996, -0.398007,
		29.260815, 32.320797, 30.585886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555244, 31.827303, 31.358690>,  <29.877064, 32.140198, 30.864491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555244, 31.827303, 31.358690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390797, 31.880535, 30.997963>,  <29.292128, 31.912474, 30.781527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390797, 31.880535, 30.997963>,  <29.555244, 31.827303, 31.358690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390797, 31.880535, 30.997963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120729, -0.988521, -0.090836,
		-0.903552, 0.071531, 0.422464,
		-0.411117, 0.133079, -0.901816,
		29.267462, 31.920458, 30.727419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887152, 31.315119, 31.733700>,  <29.555244, 31.827303, 31.358690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887152, 31.315119, 31.733700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890598, 31.590496, 32.023796>,  <29.892666, 31.755722, 32.197853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890598, 31.590496, 32.023796>,  <29.887152, 31.315119, 31.733700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890598, 31.590496, 32.023796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678568, -0.536743, 0.501450,
		0.734487, 0.487803, -0.471781,
		0.008617, 0.688444, 0.725239,
		29.893183, 31.797029, 32.241367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559299, 31.692036, 31.830437>,  <29.887152, 31.315119, 31.733700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559299, 31.692036, 31.830437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356812, 31.680586, 32.175209>,  <30.235319, 31.673716, 32.382072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356812, 31.680586, 32.175209>,  <30.559299, 31.692036, 31.830437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356812, 31.680586, 32.175209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768348, -0.468849, 0.435686,
		0.391644, 0.882815, 0.259333,
		-0.506218, -0.028624, 0.861930,
		30.204947, 31.671999, 32.433788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892303, 32.087723, 32.395683>,  <30.559299, 31.692036, 31.830437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892303, 32.087723, 32.395683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707434, 31.766388, 32.545906>,  <30.596512, 31.573587, 32.636040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707434, 31.766388, 32.545906>,  <30.892303, 32.087723, 32.395683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707434, 31.766388, 32.545906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876674, -0.350121, 0.329937,
		-0.133558, 0.481734, 0.866080,
		-0.462175, -0.803336, 0.375562,
		30.568781, 31.525387, 32.658573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075865, 31.938251, 33.098198>,  <30.892303, 32.087723, 32.395683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075865, 31.938251, 33.098198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986116, 31.636593, 32.851322>,  <30.932268, 31.455597, 32.703197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986116, 31.636593, 32.851322>,  <31.075865, 31.938251, 33.098198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986116, 31.636593, 32.851322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919009, -0.374421, 0.123414,
		-0.324160, -0.539510, 0.777078,
		-0.224371, -0.754147, -0.617187,
		30.918804, 31.410349, 32.666164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070326, 31.228426, 33.392151>,  <31.075865, 31.938251, 33.098198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070326, 31.228426, 33.392151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200762, 31.289669, 33.019009>,  <31.279024, 31.326414, 32.795124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200762, 31.289669, 33.019009>,  <31.070326, 31.228426, 33.392151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200762, 31.289669, 33.019009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945339, -0.053340, 0.321698,
		-0.000504, -0.986769, -0.162132,
		0.326090, 0.153107, -0.932858,
		31.298590, 31.335602, 32.739151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651121, 30.697256, 33.213062>,  <31.070326, 31.228426, 33.392151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651121, 30.697256, 33.213062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675648, 31.018791, 32.976391>,  <31.690363, 31.211712, 32.834389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675648, 31.018791, 32.976391>,  <31.651121, 30.697256, 33.213062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675648, 31.018791, 32.976391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998118, -0.049120, 0.036704,
		0.000441, -0.592816, -0.805338,
		0.061317, 0.803839, -0.591678,
		31.694042, 31.259943, 32.798889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105595, 30.609522, 32.621376>,  <31.651121, 30.697256, 33.213062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105595, 30.609522, 32.621376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112949, 31.002817, 32.693939>,  <32.117363, 31.238794, 32.737476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112949, 31.002817, 32.693939>,  <32.105595, 30.609522, 32.621376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112949, 31.002817, 32.693939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999818, -0.017139, -0.008428,
		-0.005177, 0.181528, -0.983372,
		0.018384, 0.983236, 0.181407,
		32.118465, 31.297789, 32.748360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668610, 30.813101, 32.231159>,  <32.105595, 30.609522, 32.621376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668610, 30.813101, 32.231159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584152, 31.107792, 32.488110>,  <32.533478, 31.284607, 32.642281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584152, 31.107792, 32.488110>,  <32.668610, 30.813101, 32.231159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584152, 31.107792, 32.488110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977106, 0.141506, 0.158870,
		0.026143, 0.661218, -0.749738,
		-0.211140, 0.736727, 0.642380,
		32.520809, 31.328810, 32.680824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173485, 31.264975, 32.061512>,  <32.668610, 30.813101, 32.231159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173485, 31.264975, 32.061512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037678, 31.377792, 32.420441>,  <32.956196, 31.445482, 32.635796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037678, 31.377792, 32.420441>,  <33.173485, 31.264975, 32.061512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037678, 31.377792, 32.420441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863380, 0.471992, 0.178319,
		-0.373234, 0.835270, -0.403758,
		-0.339515, 0.282042, 0.897319,
		32.935822, 31.462404, 32.689636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169380, 31.958506, 32.097149>,  <33.173485, 31.264975, 32.061512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169380, 31.958506, 32.097149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222134, 31.863350, 32.482067>,  <33.253784, 31.806257, 32.713020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222134, 31.863350, 32.482067>,  <33.169380, 31.958506, 32.097149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222134, 31.863350, 32.482067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667556, 0.738954, 0.091190,
		-0.732787, 0.630362, 0.256256,
		0.131879, -0.237888, 0.962298,
		33.261696, 31.791983, 32.770756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352821, 32.658817, 32.344215>,  <33.169380, 31.958506, 32.097149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352821, 32.658817, 32.344215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481049, 32.439045, 32.652855>,  <33.557987, 32.307182, 32.838039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481049, 32.439045, 32.652855>,  <33.352821, 32.658817, 32.344215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481049, 32.439045, 32.652855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688196, 0.694819, 0.208837,
		-0.650861, 0.464063, 0.600854,
		0.320571, -0.549429, 0.771597,
		33.577221, 32.274216, 32.884335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373039, 33.097755, 32.991802>,  <33.352821, 32.658817, 32.344215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373039, 33.097755, 32.991802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616833, 32.781578, 33.016193>,  <33.763111, 32.591869, 33.030830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616833, 32.781578, 33.016193>,  <33.373039, 33.097755, 32.991802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616833, 32.781578, 33.016193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761865, 0.605248, 0.230730,
		-0.219288, -0.094168, 0.971105,
		0.609487, -0.790448, 0.060980,
		33.799679, 32.544445, 33.034489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986736, 33.371624, 33.473717>,  <33.373039, 33.097755, 32.991802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986736, 33.371624, 33.473717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947910, 33.756523, 33.372005>,  <33.924614, 33.987461, 33.310978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947910, 33.756523, 33.372005>,  <33.986736, 33.371624, 33.473717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947910, 33.756523, 33.372005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102160, -0.263772, -0.959160,
		-0.990021, -0.067123, 0.123906,
		-0.097065, 0.962247, -0.254283,
		33.918793, 34.045197, 33.295719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765614, 32.735802, 33.978325>,  <33.986736, 33.371624, 33.473717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765614, 32.735802, 33.978325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817528, 32.749847, 34.374695>,  <33.848675, 32.758274, 34.612514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817528, 32.749847, 34.374695>,  <33.765614, 32.735802, 33.978325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817528, 32.749847, 34.374695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945894, 0.295355, -0.134352,
		-0.297392, 0.954742, 0.005113,
		0.129781, 0.035118, 0.990921,
		33.856461, 32.760384, 34.671970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137718, 33.402401, 34.214401>,  <33.765614, 32.735802, 33.978325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137718, 33.402401, 34.214401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200310, 33.106281, 34.475925>,  <34.237865, 32.928608, 34.632839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200310, 33.106281, 34.475925>,  <34.137718, 33.402401, 34.214401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200310, 33.106281, 34.475925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985767, 0.075864, -0.150026,
		0.061464, 0.667978, 0.741638,
		0.156477, -0.740304, 0.653808,
		34.247253, 32.884190, 34.672070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640480, 33.666172, 34.568100>,  <34.137718, 33.402401, 34.214401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640480, 33.666172, 34.568100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650738, 33.266434, 34.578285>,  <34.656891, 33.026592, 34.584396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650738, 33.266434, 34.578285>,  <34.640480, 33.666172, 34.568100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650738, 33.266434, 34.578285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938585, 0.015299, -0.344709,
		0.344094, 0.032738, 0.938364,
		0.025641, -0.999347, 0.025463,
		34.658432, 32.966629, 34.585926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298878, 33.497345, 34.936699>,  <34.640480, 33.666172, 34.568100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298878, 33.497345, 34.936699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207466, 33.209419, 34.674511>,  <35.152618, 33.036663, 34.517197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207466, 33.209419, 34.674511>,  <35.298878, 33.497345, 34.936699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207466, 33.209419, 34.674511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953569, -0.029843, -0.299693,
		0.196161, -0.693528, 0.693209,
		-0.228533, -0.719811, -0.655473,
		35.138905, 32.993477, 34.477867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869011, 33.000259, 34.971325>,  <35.298878, 33.497345, 34.936699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869011, 33.000259, 34.971325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703766, 32.953930, 34.610012>,  <35.604618, 32.926132, 34.393223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703766, 32.953930, 34.610012>,  <35.869011, 33.000259, 34.971325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703766, 32.953930, 34.610012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888178, -0.270367, -0.371539,
		-0.201186, -0.955765, 0.214561,
		-0.413115, -0.115820, -0.903284,
		35.579830, 32.919186, 34.339027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078278, 32.417828, 34.741871>,  <35.869011, 33.000259, 34.971325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078278, 32.417828, 34.741871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999840, 32.645561, 34.422520>,  <35.952778, 32.782200, 34.230907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999840, 32.645561, 34.422520>,  <36.078278, 32.417828, 34.741871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999840, 32.645561, 34.422520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863782, -0.285089, -0.415458,
		-0.464143, -0.771092, -0.435877,
		-0.196093, 0.569334, -0.798377,
		35.941013, 32.816360, 34.183006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934921, 32.096542, 34.079437>,  <36.078278, 32.417828, 34.741871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934921, 32.096542, 34.079437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117538, 32.443947, 34.002224>,  <36.227108, 32.652390, 33.955894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117538, 32.443947, 34.002224>,  <35.934921, 32.096542, 34.079437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117538, 32.443947, 34.002224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787308, -0.495430, -0.367009,
		-0.414385, 0.015580, -0.909969,
		0.456544, 0.868508, -0.193032,
		36.254501, 32.704498, 33.944313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154022, 32.194901, 33.312294>,  <35.934921, 32.096542, 34.079437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154022, 32.194901, 33.312294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387520, 32.369473, 33.586163>,  <36.527618, 32.474216, 33.750484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387520, 32.369473, 33.586163>,  <36.154022, 32.194901, 33.312294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387520, 32.369473, 33.586163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804317, -0.426083, -0.414158,
		0.110973, 0.792453, -0.599753,
		0.583745, 0.436431, 0.684667,
		36.562645, 32.500401, 33.791561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752022, 32.491085, 33.105907>,  <36.154022, 32.194901, 33.312294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752022, 32.491085, 33.105907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866421, 32.396549, 33.477360>,  <36.935059, 32.339828, 33.700230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866421, 32.396549, 33.477360>,  <36.752022, 32.491085, 33.105907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866421, 32.396549, 33.477360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783852, -0.499719, -0.368587,
		0.551164, 0.833322, 0.042334,
		0.285997, -0.236335, 0.928629,
		36.952221, 32.325649, 33.755947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169910, 32.936169, 33.502266>,  <36.752022, 32.491085, 33.105907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169910, 32.936169, 33.502266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211437, 32.539825, 33.536724>,  <37.236355, 32.302021, 33.557400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211437, 32.539825, 33.536724>,  <37.169910, 32.936169, 33.502266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211437, 32.539825, 33.536724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776270, 0.026574, -0.629840,
		0.621794, 0.132262, 0.771932,
		0.103818, -0.990858, 0.086148,
		37.242584, 32.242569, 33.562569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789520, 32.729073, 33.953506>,  <37.169910, 32.936169, 33.502266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789520, 32.729073, 33.953506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979450, 32.475212, 34.197395>,  <38.093410, 32.322895, 34.343727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979450, 32.475212, 34.197395>,  <37.789520, 32.729073, 33.953506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979450, 32.475212, 34.197395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501578, -0.764424, -0.405063,
		0.723158, -0.113487, -0.681296,
		0.474829, -0.634647, 0.609721,
		38.121899, 32.284817, 34.380310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918262, 33.108704, 34.501747>,  <37.789520, 32.729073, 33.953506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918262, 33.108704, 34.501747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000031, 33.497036, 34.451626>,  <38.049091, 33.730034, 34.421551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000031, 33.497036, 34.451626>,  <37.918262, 33.108704, 34.501747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000031, 33.497036, 34.451626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560414, -0.011113, 0.828138,
		0.802588, -0.239514, -0.546338,
		0.204422, 0.970829, -0.125308,
		38.061356, 33.788284, 34.414032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653217, 33.247944, 34.572598>,  <37.918262, 33.108704, 34.501747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653217, 33.247944, 34.572598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416386, 33.552929, 34.676971>,  <38.274284, 33.735920, 34.739594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416386, 33.552929, 34.676971>,  <38.653217, 33.247944, 34.572598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416386, 33.552929, 34.676971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422627, 0.018090, 0.906123,
		0.686168, 0.646776, -0.332949,
		-0.592082, 0.762466, 0.260932,
		38.238762, 33.781670, 34.755253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955013, 33.679615, 35.026009>,  <38.653217, 33.247944, 34.572598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955013, 33.679615, 35.026009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564938, 33.750092, 35.079617>,  <38.330891, 33.792377, 35.111782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564938, 33.750092, 35.079617>,  <38.955013, 33.679615, 35.026009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564938, 33.750092, 35.079617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165431, 0.177781, 0.970065,
		0.147088, 0.968169, -0.202517,
		-0.975191, 0.176188, 0.134016,
		38.272381, 33.802948, 35.119820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542389, 33.268162, 34.993385>,  <38.955013, 33.679615, 35.026009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542389, 33.268162, 34.993385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600368, 33.640682, 34.859718>,  <39.635155, 33.864193, 34.779518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600368, 33.640682, 34.859718>,  <39.542389, 33.268162, 34.993385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600368, 33.640682, 34.859718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872633, 0.038867, 0.486827,
		0.466371, -0.362171, -0.807050,
		0.144947, 0.931301, -0.334169,
		39.643852, 33.920071, 34.759468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232414, 33.397327, 34.608192>,  <39.542389, 33.268162, 34.993385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232414, 33.397327, 34.608192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123127, 33.728405, 34.804268>,  <40.057556, 33.927052, 34.921913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123127, 33.728405, 34.804268>,  <40.232414, 33.397327, 34.608192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123127, 33.728405, 34.804268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880526, 0.010000, 0.473892,
		0.387334, 0.561097, -0.731534,
		-0.273215, 0.827690, 0.490187,
		40.041161, 33.976711, 34.951324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645477, 33.908779, 34.482979>,  <40.232414, 33.397327, 34.608192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645477, 33.908779, 34.482979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516514, 33.968681, 34.856850>,  <40.439137, 34.004623, 35.081173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516514, 33.968681, 34.856850>,  <40.645477, 33.908779, 34.482979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516514, 33.968681, 34.856850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946272, 0.024956, 0.322406,
		0.024956, 0.988408, -0.149757,
		-0.322406, 0.149757, 0.934680,
		40.419792, 34.013607, 35.137253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124012, 34.373764, 34.868217>,  <40.645477, 33.908779, 34.482979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124012, 34.373764, 34.868217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917992, 34.197926, 35.162560>,  <40.794380, 34.092422, 35.339165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917992, 34.197926, 35.162560>,  <41.124012, 34.373764, 34.868217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917992, 34.197926, 35.162560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849463, -0.146962, 0.506770,
		-0.114632, 0.886091, 0.449114,
		-0.515046, -0.439597, 0.735854,
		40.763477, 34.066048, 35.383316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301277, 34.742733, 35.462666>,  <41.124012, 34.373764, 34.868217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301277, 34.742733, 35.462666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196106, 34.366611, 35.549110>,  <41.133003, 34.140938, 35.600979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196106, 34.366611, 35.549110>,  <41.301277, 34.742733, 35.462666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196106, 34.366611, 35.549110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881143, -0.142784, 0.450778,
		-0.393009, 0.308947, 0.866081,
		-0.262929, -0.940300, 0.216111,
		41.117226, 34.084522, 35.613945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657387, 34.423141, 36.185349>,  <41.301277, 34.742733, 35.462666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657387, 34.423141, 36.185349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018734, 34.252483, 36.167919>,  <42.235542, 34.150089, 36.157463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018734, 34.252483, 36.167919>,  <41.657387, 34.423141, 36.185349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018734, 34.252483, 36.167919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364567, 0.710457, 0.601948,
		-0.225858, -0.559669, 0.797345,
		0.903371, -0.426641, -0.043575,
		42.289745, 34.124493, 36.154846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938656, 34.245918, 36.892151>,  <41.657387, 34.423141, 36.185349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938656, 34.245918, 36.892151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188648, 34.346367, 36.596493>,  <42.338642, 34.406635, 36.419098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188648, 34.346367, 36.596493>,  <41.938656, 34.245918, 36.892151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188648, 34.346367, 36.596493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276896, 0.813971, 0.510666,
		0.729883, -0.523823, 0.439181,
		0.624979, 0.251119, -0.739149,
		42.376141, 34.421703, 36.374748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590332, 34.378410, 37.124268>,  <41.938656, 34.245918, 36.892151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590332, 34.378410, 37.124268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619614, 34.592255, 36.787498>,  <42.637180, 34.720562, 36.585438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619614, 34.592255, 36.787498>,  <42.590332, 34.378410, 37.124268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619614, 34.592255, 36.787498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334487, 0.782129, 0.525731,
		0.939553, -0.320096, -0.121569,
		0.073201, 0.534615, -0.841919,
		42.641575, 34.752640, 36.534924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320232, 34.589527, 37.091217>,  <42.590332, 34.378410, 37.124268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320232, 34.589527, 37.091217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061367, 34.826912, 36.899811>,  <42.906048, 34.969341, 36.784966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061367, 34.826912, 36.899811>,  <43.320232, 34.589527, 37.091217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061367, 34.826912, 36.899811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281680, 0.769418, 0.573282,
		0.708403, 0.236218, -0.665107,
		-0.647164, 0.593462, -0.478520,
		42.867218, 35.004951, 36.756256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828938, 35.070377, 37.353794>,  <43.320232, 34.589527, 37.091217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828938, 35.070377, 37.353794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042198, 35.145199, 37.023762>,  <43.170155, 35.190090, 36.825741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042198, 35.145199, 37.023762>,  <42.828938, 35.070377, 37.353794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042198, 35.145199, 37.023762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454990, 0.758815, 0.466031,
		0.713257, -0.623869, 0.319456,
		0.533150, 0.187051, -0.825084,
		43.202145, 35.201313, 36.776237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254696, 35.519051, 37.728561>,  <42.828938, 35.070377, 37.353794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254696, 35.519051, 37.728561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335224, 35.511650, 37.336823>,  <43.383541, 35.507210, 37.101780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335224, 35.511650, 37.336823>,  <43.254696, 35.519051, 37.728561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335224, 35.511650, 37.336823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724775, 0.675384, 0.136226,
		0.658918, -0.737234, 0.149379,
		0.201318, -0.018504, -0.979351,
		43.395618, 35.506100, 37.043018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941040, 35.464546, 37.664722>,  <43.254696, 35.519051, 37.728561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941040, 35.464546, 37.664722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775848, 35.659229, 37.356812>,  <43.676735, 35.776039, 37.172066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775848, 35.659229, 37.356812>,  <43.941040, 35.464546, 37.664722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775848, 35.659229, 37.356812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643863, 0.753811, 0.131186,
		0.644118, -0.441455, -0.624683,
		-0.412980, 0.486709, -0.769780,
		43.651955, 35.805241, 37.125877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459549, 35.577400, 37.293182>,  <43.941040, 35.464546, 37.664722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459549, 35.577400, 37.293182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175747, 35.843941, 37.201458>,  <44.005466, 36.003864, 37.146423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175747, 35.843941, 37.201458>,  <44.459549, 35.577400, 37.293182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175747, 35.843941, 37.201458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659997, 0.742383, 0.115203,
		0.246999, -0.069605, -0.966513,
		-0.709504, 0.666350, -0.229307,
		43.962894, 36.043846, 37.132668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705196, 36.162437, 36.783833>,  <44.459549, 35.577400, 37.293182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705196, 36.162437, 36.783833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434605, 36.324162, 37.030052>,  <44.272251, 36.421196, 37.177784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434605, 36.324162, 37.030052>,  <44.705196, 36.162437, 36.783833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434605, 36.324162, 37.030052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484214, 0.873946, -0.041893,
		-0.554898, 0.269720, -0.786981,
		-0.676480, 0.404314, 0.615553,
		44.231659, 36.445457, 37.214718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355553, 36.205906, 37.136929>,  <44.705196, 36.162437, 36.783833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355553, 36.205906, 37.136929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503277, 35.913334, 37.366230>,  <45.591911, 35.737793, 37.503811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503277, 35.913334, 37.366230>,  <45.355553, 36.205906, 37.136929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.503277, 35.913334, 37.366230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901637, 0.132616, -0.411659,
		0.225075, 0.668901, 0.708458,
		0.369312, -0.731427, 0.573257,
		45.614071, 35.693905, 37.538208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022167, 36.364670, 37.590431>,  <45.355553, 36.205906, 37.136929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022167, 36.364670, 37.590431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003696, 35.984032, 37.468884>,  <45.992615, 35.755650, 37.395954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003696, 35.984032, 37.468884>,  <46.022167, 36.364670, 37.590431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003696, 35.984032, 37.468884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891108, 0.098230, -0.443031,
		0.451435, -0.291238, 0.843437,
		-0.046177, -0.951594, -0.303870,
		45.989845, 35.698555, 37.377724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.712826, 36.154884, 37.505806>,  <46.022167, 36.364670, 37.590431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.712826, 36.154884, 37.505806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523041, 35.852001, 37.326241>,  <46.409168, 35.670273, 37.218502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523041, 35.852001, 37.326241>,  <46.712826, 36.154884, 37.505806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.523041, 35.852001, 37.326241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763222, -0.099763, -0.638388,
		0.438606, -0.645512, 0.625251,
		-0.474464, -0.757206, -0.448912,
		46.380703, 35.624840, 37.191566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.029686, 35.512978, 37.581207>,  <46.712826, 36.154884, 37.505806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.029686, 35.512978, 37.581207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.817669, 35.519634, 37.242085>,  <46.690460, 35.523628, 37.038609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.817669, 35.519634, 37.242085>,  <47.029686, 35.512978, 37.581207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.817669, 35.519634, 37.242085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836754, -0.151830, -0.526108,
		-0.137476, -0.988267, 0.066555,
		-0.530040, 0.016637, -0.847810,
		46.658657, 35.524628, 36.987743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.990990, 34.805008, 37.319427>,  <47.029686, 35.512978, 37.581207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.990990, 34.805008, 37.319427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.967201, 35.093449, 37.043316>,  <46.952927, 35.266514, 36.877651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.967201, 35.093449, 37.043316>,  <46.990990, 34.805008, 37.319427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.967201, 35.093449, 37.043316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685841, -0.472930, -0.553135,
		-0.725317, -0.506314, -0.466434,
		-0.059470, 0.721098, -0.690276,
		46.949360, 35.309776, 36.836235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.001942, 34.530678, 36.610546>,  <46.990990, 34.805008, 37.319427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.001942, 34.530678, 36.610546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180183, 34.888512, 36.596981>,  <47.287128, 35.103210, 36.588844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180183, 34.888512, 36.596981>,  <47.001942, 34.530678, 36.610546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.180183, 34.888512, 36.596981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773240, -0.403701, -0.489004,
		-0.451145, 0.191683, -0.871622,
		0.445608, 0.894585, -0.033910,
		47.313866, 35.156887, 36.586807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.897156, 34.945877, 36.001812>,  <47.001942, 34.530678, 36.610546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.897156, 34.945877, 36.001812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.240891, 34.978519, 36.203754>,  <47.447132, 34.998104, 36.324921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.240891, 34.978519, 36.203754>,  <46.897156, 34.945877, 36.001812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.240891, 34.978519, 36.203754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461053, -0.550798, -0.695738,
		0.221298, 0.830639, -0.510946,
		0.859335, 0.081608, 0.504859,
		47.498692, 35.003002, 36.355213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.392700, 35.303017, 35.632690>,  <46.897156, 34.945877, 36.001812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.392700, 35.303017, 35.632690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.594624, 35.068523, 35.886147>,  <47.715778, 34.927826, 36.038219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.594624, 35.068523, 35.886147>,  <47.392700, 35.303017, 35.632690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.594624, 35.068523, 35.886147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511979, -0.387665, -0.766546,
		0.695015, 0.711369, 0.104443,
		0.504808, -0.586234, 0.633639,
		47.746067, 34.892654, 36.076237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.576553, 34.641354, 35.285736>,  <47.392700, 35.303017, 35.632690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.576553, 34.641354, 35.285736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.361015, 34.901024, 35.070992>,  <47.231693, 35.056824, 34.942142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.361015, 34.901024, 35.070992>,  <47.576553, 34.641354, 35.285736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.361015, 34.901024, 35.070992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788898, 0.165352, -0.591860,
		-0.295449, -0.742450, -0.601230,
		-0.538841, 0.649174, -0.536865,
		47.199364, 35.095776, 34.909931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.714199, 34.534557, 34.627583>,  <47.576553, 34.641354, 35.285736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.714199, 34.534557, 34.627583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612499, 34.919266, 34.668262>,  <47.551479, 35.150093, 34.692673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612499, 34.919266, 34.668262>,  <47.714199, 34.534557, 34.627583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.612499, 34.919266, 34.668262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657591, 0.249027, -0.711027,
		-0.709175, -0.113903, -0.695771,
		-0.254254, 0.961775, 0.101702,
		47.536224, 35.207798, 34.698772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.278000, 33.454540, 19.764059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.347973, 33.063046, 19.806889>,  <33.389957, 32.828148, 19.832586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.347973, 33.063046, 19.806889>,  <33.278000, 33.454540, 19.764059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347973, 33.063046, 19.806889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074125, 0.121535, 0.989816,
		-0.981786, -0.165218, 0.093810,
		0.174936, -0.978740, 0.107074,
		33.400455, 32.769424, 19.839010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898029, 33.173450, 20.301565>,  <33.278000, 33.454540, 19.764059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898029, 33.173450, 20.301565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.193756, 32.905640, 20.272860>,  <33.371193, 32.744953, 20.255636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.193756, 32.905640, 20.272860>,  <32.898029, 33.173450, 20.301565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193756, 32.905640, 20.272860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026546, -0.077516, 0.996637,
		-0.672840, -0.738731, -0.039536,
		0.739312, -0.669528, -0.071766,
		33.415550, 32.704781, 20.251329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715054, 32.649738, 20.816555>,  <32.898029, 33.173450, 20.301565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715054, 32.649738, 20.816555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.102531, 32.583309, 20.742739>,  <33.335018, 32.543453, 20.698448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.102531, 32.583309, 20.742739>,  <32.715054, 32.649738, 20.816555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102531, 32.583309, 20.742739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177804, -0.054698, 0.982545,
		-0.173265, -0.984596, -0.023457,
		0.968692, -0.166070, -0.184542,
		33.393139, 32.533489, 20.687376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872486, 32.067261, 21.225307>,  <32.715054, 32.649738, 20.816555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872486, 32.067261, 21.225307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.251488, 32.180546, 21.165937>,  <33.478889, 32.248516, 21.130316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.251488, 32.180546, 21.165937>,  <32.872486, 32.067261, 21.225307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251488, 32.180546, 21.165937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167852, -0.045464, 0.984763,
		0.272148, -0.957979, -0.090615,
		0.947502, 0.283212, -0.148426,
		33.535740, 32.265511, 21.121410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355034, 31.684231, 21.541836>,  <32.872486, 32.067261, 21.225307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355034, 31.684231, 21.541836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.537258, 32.038006, 21.501368>,  <33.646591, 32.250271, 21.477087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.537258, 32.038006, 21.501368>,  <33.355034, 31.684231, 21.541836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537258, 32.038006, 21.501368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074228, 0.075511, 0.994378,
		0.887106, -0.460507, -0.031251,
		0.455559, 0.884438, -0.101169,
		33.673927, 32.303337, 21.471018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033264, 31.640001, 21.840059>,  <33.355034, 31.684231, 21.541836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033264, 31.640001, 21.840059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.957653, 32.032612, 21.851885>,  <33.912285, 32.268177, 21.858980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.957653, 32.032612, 21.851885>,  <34.033264, 31.640001, 21.840059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957653, 32.032612, 21.851885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038293, -0.022715, 0.999008,
		0.981225, 0.189972, -0.033292,
		-0.189027, 0.981527, 0.029563,
		33.900944, 32.327068, 21.860754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520882, 31.993696, 22.353262>,  <34.033264, 31.640001, 21.840059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520882, 31.993696, 22.353262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.211670, 32.246239, 22.328535>,  <34.026142, 32.397762, 22.313700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.211670, 32.246239, 22.328535>,  <34.520882, 31.993696, 22.353262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211670, 32.246239, 22.328535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099049, 0.216375, 0.971273,
		0.626593, 0.744697, -0.229799,
		-0.773027, 0.631354, -0.061817,
		33.979763, 32.435646, 22.309990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751945, 32.630100, 22.706179>,  <34.520882, 31.993696, 22.353262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751945, 32.630100, 22.706179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.353039, 32.654217, 22.689064>,  <34.113697, 32.668686, 22.678795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.353039, 32.654217, 22.689064>,  <34.751945, 32.630100, 22.706179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353039, 32.654217, 22.689064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020346, 0.332536, 0.942871,
		0.071078, 0.941161, -0.330399,
		-0.997263, 0.060295, -0.042785,
		34.053860, 32.672306, 22.676228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494446, 33.208305, 23.102863>,  <34.751945, 32.630100, 22.706179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494446, 33.208305, 23.102863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.166912, 32.981045, 23.135641>,  <33.970394, 32.844688, 23.155308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.166912, 32.981045, 23.135641>,  <34.494446, 33.208305, 23.102863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166912, 32.981045, 23.135641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113428, 0.300080, 0.947146,
		-0.562716, 0.766258, -0.310159,
		-0.818831, -0.568156, 0.081945,
		33.921265, 32.810596, 23.160225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914772, 33.653217, 23.459471>,  <34.494446, 33.208305, 23.102863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914772, 33.653217, 23.459471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.817463, 33.265495, 23.473749>,  <33.759079, 33.032864, 23.482315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.817463, 33.265495, 23.473749>,  <33.914772, 33.653217, 23.459471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817463, 33.265495, 23.473749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225279, 0.092257, 0.969916,
		-0.943434, 0.227912, -0.240807,
		-0.243272, -0.969301, 0.035695,
		33.744480, 32.974705, 23.484457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369553, 33.641586, 23.775822>,  <33.914772, 33.653217, 23.459471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369553, 33.641586, 23.775822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.470108, 33.256557, 23.816324>,  <33.530441, 33.025539, 23.840626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.470108, 33.256557, 23.816324>,  <33.369553, 33.641586, 23.775822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470108, 33.256557, 23.816324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306884, 0.019949, 0.951538,
		-0.917947, -0.270280, -0.290383,
		0.251389, -0.962575, 0.101257,
		33.545525, 32.967785, 23.846701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822620, 33.263714, 24.117596>,  <33.369553, 33.641586, 23.775822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822620, 33.263714, 24.117596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.141815, 33.040821, 24.209421>,  <33.333332, 32.907085, 24.264517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.141815, 33.040821, 24.209421>,  <32.822620, 33.263714, 24.117596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141815, 33.040821, 24.209421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313732, -0.058861, 0.947685,
		-0.514571, -0.828266, -0.221793,
		0.797991, -0.557234, 0.229566,
		33.381214, 32.873650, 24.278292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542534, 32.764923, 24.554949>,  <32.822620, 33.263714, 24.117596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542534, 32.764923, 24.554949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.935345, 32.759598, 24.630266>,  <33.171032, 32.756405, 24.675457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.935345, 32.759598, 24.630266>,  <32.542534, 32.764923, 24.554949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935345, 32.759598, 24.630266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188683, -0.098358, 0.977100,
		0.005518, -0.995062, -0.099101,
		0.982023, -0.013307, 0.188294,
		33.229950, 32.755604, 24.686754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677605, 32.274124, 25.050163>,  <32.542534, 32.764923, 24.554949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677605, 32.274124, 25.050163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.005306, 32.503307, 25.059448>,  <33.201927, 32.640816, 25.065020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.005306, 32.503307, 25.059448>,  <32.677605, 32.274124, 25.050163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005306, 32.503307, 25.059448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069772, -0.139782, 0.987721,
		0.569167, -0.807577, -0.154494,
		0.819256, 0.572957, 0.023213,
		33.251083, 32.675194, 25.066412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082554, 32.006336, 25.594528>,  <32.677605, 32.274124, 25.050163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082554, 32.006336, 25.594528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.207363, 32.382660, 25.541569>,  <33.282249, 32.608452, 25.509792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.207363, 32.382660, 25.541569>,  <33.082554, 32.006336, 25.594528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207363, 32.382660, 25.541569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007119, 0.137036, 0.990541,
		0.950049, -0.310010, 0.036060,
		0.312019, 0.940806, -0.132398,
		33.300968, 32.664902, 25.501850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305656, 32.046944, 26.310905>,  <33.082554, 32.006336, 25.594528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305656, 32.046944, 26.310905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.360958, 32.399452, 26.130127>,  <33.394138, 32.610958, 26.021660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.360958, 32.399452, 26.130127>,  <33.305656, 32.046944, 26.310905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360958, 32.399452, 26.130127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196059, 0.422942, 0.884692,
		0.970797, -0.210922, -0.114306,
		0.138256, 0.881267, -0.451944,
		33.402435, 32.663834, 25.994543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935066, 32.301136, 26.523321>,  <33.305656, 32.046944, 26.310905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935066, 32.301136, 26.523321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.689865, 32.598866, 26.417332>,  <33.542744, 32.777504, 26.353739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.689865, 32.598866, 26.417332>,  <33.935066, 32.301136, 26.523321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689865, 32.598866, 26.417332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056640, 0.293111, 0.954399,
		0.788048, 0.600058, -0.137520,
		-0.613003, 0.744323, -0.264973,
		33.505962, 32.822163, 26.337839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321812, 32.900646, 26.775213>,  <33.935066, 32.301136, 26.523321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321812, 32.900646, 26.775213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.937805, 32.990822, 26.708836>,  <33.707401, 33.044926, 26.669008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.937805, 32.990822, 26.708836>,  <34.321812, 32.900646, 26.775213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937805, 32.990822, 26.708836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080267, 0.346225, 0.934711,
		0.268176, 0.910662, -0.314288,
		-0.960020, 0.225440, -0.165946,
		33.649799, 33.058453, 26.659052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366558, 33.425613, 27.141819>,  <34.321812, 32.900646, 26.775213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366558, 33.425613, 27.141819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.972889, 33.373657, 27.093590>,  <33.736687, 33.342484, 27.064653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.972889, 33.373657, 27.093590>,  <34.366558, 33.425613, 27.141819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972889, 33.373657, 27.093590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170158, 0.502328, 0.847769,
		-0.049552, 0.854865, -0.516478,
		-0.984170, -0.129891, -0.120571,
		33.677639, 33.334690, 27.057419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044170, 34.022469, 27.354837>,  <34.366558, 33.425613, 27.141819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044170, 34.022469, 27.354837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.736778, 33.766544, 27.358488>,  <33.552345, 33.612991, 27.360680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.736778, 33.766544, 27.358488>,  <34.044170, 34.022469, 27.354837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736778, 33.766544, 27.358488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337904, 0.417889, 0.843321,
		-0.543380, 0.644989, -0.537333,
		-0.768478, -0.639811, 0.009128,
		33.506233, 33.574600, 27.361227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448364, 34.450542, 27.421577>,  <34.044170, 34.022469, 27.354837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448364, 34.450542, 27.421577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.356934, 34.089714, 27.568012>,  <33.302074, 33.873215, 27.655872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.356934, 34.089714, 27.568012>,  <33.448364, 34.450542, 27.421577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356934, 34.089714, 27.568012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467682, 0.431553, 0.771385,
		-0.853831, 0.005107, -0.520525,
		-0.228574, -0.902073, 0.366085,
		33.288361, 33.819092, 27.677837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750607, 34.479366, 27.539461>,  <33.448364, 34.450542, 27.421577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750607, 34.479366, 27.539461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.916660, 34.200462, 27.773212>,  <33.016293, 34.033119, 27.913464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.916660, 34.200462, 27.773212>,  <32.750607, 34.479366, 27.539461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916660, 34.200462, 27.773212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580763, 0.291327, 0.760160,
		-0.700272, -0.654953, -0.284001,
		0.415132, -0.697256, 0.584380,
		33.041199, 33.991287, 27.948526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124420, 34.785645, 27.085264>,  <32.750607, 34.479366, 27.539461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124420, 34.785645, 27.085264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.021061, 35.172024, 27.090479>,  <31.959045, 35.403851, 27.093609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.021061, 35.172024, 27.090479>,  <32.124420, 34.785645, 27.085264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021061, 35.172024, 27.090479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641490, 0.181660, -0.745313,
		-0.722304, -0.184221, -0.666588,
		-0.258395, 0.965951, 0.013038,
		31.943542, 35.461811, 27.094391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753782, 34.979996, 26.466766>,  <32.124420, 34.785645, 27.085264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753782, 34.979996, 26.466766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.927084, 35.319511, 26.587990>,  <32.031063, 35.523220, 26.660725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.927084, 35.319511, 26.587990>,  <31.753782, 34.979996, 26.466766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927084, 35.319511, 26.587990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244608, 0.212899, -0.945960,
		-0.867444, 0.483971, -0.115382,
		0.433253, 0.848791, 0.303061,
		32.057060, 35.574150, 26.678907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553759, 35.405567, 26.005890>,  <31.753782, 34.979996, 26.466766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553759, 35.405567, 26.005890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.887169, 35.567116, 26.156685>,  <32.087215, 35.664047, 26.247162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.887169, 35.567116, 26.156685>,  <31.553759, 35.405567, 26.005890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887169, 35.567116, 26.156685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371474, 0.095396, -0.923530,
		-0.408953, 0.909827, -0.070514,
		0.833525, 0.403874, 0.376989,
		32.137226, 35.688278, 26.269781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691603, 35.990246, 25.639141>,  <31.553759, 35.405567, 26.005890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691603, 35.990246, 25.639141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.053352, 35.941357, 25.802687>,  <32.270401, 35.912022, 25.900814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.053352, 35.941357, 25.802687>,  <31.691603, 35.990246, 25.639141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053352, 35.941357, 25.802687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426574, 0.232154, -0.874150,
		0.011923, 0.964969, 0.262092,
		0.904374, -0.122224, 0.408863,
		32.324665, 35.904690, 25.925346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144321, 36.675598, 25.532736>,  <31.691603, 35.990246, 25.639141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144321, 36.675598, 25.532736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.387772, 36.369984, 25.618362>,  <32.533844, 36.186615, 25.669739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.387772, 36.369984, 25.618362>,  <32.144321, 36.675598, 25.532736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387772, 36.369984, 25.618362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459372, 0.119324, -0.880193,
		0.646954, 0.634046, 0.423599,
		0.608628, -0.764034, 0.214066,
		32.570358, 36.140774, 25.682583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641487, 36.889324, 25.118290>,  <32.144321, 36.675598, 25.532736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641487, 36.889324, 25.118290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.753086, 36.520782, 25.226566>,  <32.820045, 36.299660, 25.291533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.753086, 36.520782, 25.226566>,  <32.641487, 36.889324, 25.118290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753086, 36.520782, 25.226566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436476, -0.129416, -0.890359,
		0.855365, 0.366558, 0.366041,
		0.278997, -0.921350, 0.270692,
		32.836784, 36.244377, 25.307774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227692, 36.872444, 24.868206>,  <32.641487, 36.889324, 25.118290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227692, 36.872444, 24.868206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.139729, 36.484173, 24.907022>,  <33.086952, 36.251209, 24.930313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.139729, 36.484173, 24.907022>,  <33.227692, 36.872444, 24.868206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139729, 36.484173, 24.907022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522169, -0.201152, -0.828781,
		0.824003, -0.131581, 0.551094,
		-0.219905, -0.970682, 0.097043,
		33.073757, 36.192966, 24.936134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841305, 36.538246, 24.681337>,  <33.227692, 36.872444, 24.868206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841305, 36.538246, 24.681337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.557713, 36.262356, 24.622517>,  <33.387558, 36.096821, 24.587225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.557713, 36.262356, 24.622517>,  <33.841305, 36.538246, 24.681337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557713, 36.262356, 24.622517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409988, -0.233454, -0.881708,
		0.573804, -0.685406, 0.448294,
		-0.708984, -0.689723, -0.147051,
		33.345016, 36.055439, 24.578402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136753, 35.911560, 24.369543>,  <33.841305, 36.538246, 24.681337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136753, 35.911560, 24.369543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.746666, 35.863419, 24.295280>,  <33.512615, 35.834534, 24.250723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.746666, 35.863419, 24.295280>,  <34.136753, 35.911560, 24.369543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746666, 35.863419, 24.295280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221168, -0.506793, -0.833214,
		0.006190, -0.853625, 0.520851,
		-0.975216, -0.120353, -0.185657,
		33.454102, 35.827312, 24.239584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124866, 35.168446, 24.095608>,  <34.136753, 35.911560, 24.369543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124866, 35.168446, 24.095608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.788452, 35.352455, 23.981745>,  <33.586601, 35.462860, 23.913427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.788452, 35.352455, 23.981745>,  <34.124866, 35.168446, 24.095608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788452, 35.352455, 23.981745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122830, -0.350062, -0.928639,
		-0.526846, -0.815986, 0.237910,
		-0.841039, 0.460027, -0.284656,
		33.536140, 35.490463, 23.896349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756626, 34.678654, 23.619587>,  <34.124866, 35.168446, 24.095608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756626, 34.678654, 23.619587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.618530, 35.043701, 23.532013>,  <33.535671, 35.262730, 23.479469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.618530, 35.043701, 23.532013>,  <33.756626, 34.678654, 23.619587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618530, 35.043701, 23.532013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041156, -0.247776, -0.967943,
		-0.937611, -0.325165, 0.123102,
		-0.345243, 0.912620, -0.218935,
		33.514957, 35.317486, 23.466333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087677, 34.627518, 23.228773>,  <33.756626, 34.678654, 23.619587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087677, 34.627518, 23.228773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.238712, 34.987198, 23.140345>,  <33.329334, 35.203007, 23.087288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.238712, 34.987198, 23.140345>,  <33.087677, 34.627518, 23.228773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238712, 34.987198, 23.140345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281688, -0.115887, -0.952482,
		-0.882087, 0.421921, 0.209535,
		0.377590, 0.899196, -0.221072,
		33.351990, 35.256958, 23.074022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638443, 34.842701, 22.711792>,  <33.087677, 34.627518, 23.228773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638443, 34.842701, 22.711792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.918907, 35.122646, 22.657299>,  <33.087185, 35.290615, 22.624603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.918907, 35.122646, 22.657299>,  <32.638443, 34.842701, 22.711792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918907, 35.122646, 22.657299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316790, 0.134621, -0.938894,
		-0.638758, 0.701476, 0.316101,
		0.701165, 0.699864, -0.136231,
		33.129257, 35.332607, 22.616430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267525, 35.431858, 22.643204>,  <32.638443, 34.842701, 22.711792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267525, 35.431858, 22.643204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.626793, 35.453983, 22.468742>,  <32.842354, 35.467258, 22.364065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.626793, 35.453983, 22.468742>,  <32.267525, 35.431858, 22.643204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626793, 35.453983, 22.468742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438801, 0.051265, -0.897121,
		-0.027263, 0.997152, 0.070316,
		0.898171, 0.055313, -0.436154,
		32.896244, 35.470577, 22.337896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247475, 36.065334, 22.170204>,  <32.267525, 35.431858, 22.643204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247475, 36.065334, 22.170204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.557186, 35.829842, 22.077349>,  <32.743011, 35.688545, 22.021635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.557186, 35.829842, 22.077349>,  <32.247475, 36.065334, 22.170204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557186, 35.829842, 22.077349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202485, 0.117067, -0.972263,
		0.599583, 0.799803, -0.028568,
		0.774274, -0.588736, -0.232140,
		32.789467, 35.653221, 22.007708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608288, 36.365826, 21.648026>,  <32.247475, 36.065334, 22.170204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608288, 36.365826, 21.648026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706821, 35.981281, 21.598875>,  <32.765942, 35.750553, 21.569386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706821, 35.981281, 21.598875>,  <32.608288, 36.365826, 21.648026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706821, 35.981281, 21.598875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273530, 0.052667, -0.960421,
		0.929786, 0.270193, -0.249989,
		0.246333, -0.961365, -0.122874,
		32.780720, 35.692871, 21.562014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847778, 36.353264, 20.990854>,  <32.608288, 36.365826, 21.648026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847778, 36.353264, 20.990854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.796116, 35.967972, 21.085098>,  <32.765118, 35.736797, 21.141644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.796116, 35.967972, 21.085098>,  <32.847778, 36.353264, 20.990854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796116, 35.967972, 21.085098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113898, -0.250437, -0.961410,
		0.985061, -0.097338, 0.142056,
		-0.129158, -0.963227, 0.235609,
		32.757370, 35.679005, 21.155781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452175, 35.877361, 20.707197>,  <32.847778, 36.353264, 20.990854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452175, 35.877361, 20.707197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.132011, 35.642979, 20.757811>,  <32.939915, 35.502350, 20.788177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.132011, 35.642979, 20.757811>,  <33.452175, 35.877361, 20.707197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132011, 35.642979, 20.757811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059054, -0.287121, -0.956072,
		0.596544, -0.757772, 0.264415,
		-0.800404, -0.585954, 0.126531,
		32.891891, 35.467194, 20.795771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.607872, 35.311249, 20.300144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.214149, 35.294651, 20.368748>,  <32.977917, 35.284691, 20.409910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.214149, 35.294651, 20.368748>,  <33.607872, 35.311249, 20.300144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214149, 35.294651, 20.368748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158667, -0.217166, -0.963153,
		0.077211, -0.975252, 0.207174,
		-0.984308, -0.041495, 0.171508,
		32.918858, 35.282204, 20.420200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371368, 34.604328, 20.007267>,  <33.607872, 35.311249, 20.300144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371368, 34.604328, 20.007267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016712, 34.780193, 20.064619>,  <32.803917, 34.885712, 20.099031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016712, 34.780193, 20.064619>,  <33.371368, 34.604328, 20.007267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016712, 34.780193, 20.064619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262746, -0.223783, -0.938555,
		-0.380564, -0.869836, 0.313937,
		-0.886643, 0.439666, 0.143382,
		32.750721, 34.912094, 20.107634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776066, 34.093483, 19.940865>,  <33.371368, 34.604328, 20.007267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776066, 34.093483, 19.940865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.626850, 34.457691, 19.869539>,  <32.537319, 34.676216, 19.826744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.626850, 34.457691, 19.869539>,  <32.776066, 34.093483, 19.940865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626850, 34.457691, 19.869539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279240, -0.293457, -0.914280,
		-0.884797, -0.291272, 0.363725,
		-0.373042, 0.910518, -0.178315,
		32.514938, 34.730846, 19.816044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199368, 33.965122, 19.618275>,  <32.776066, 34.093483, 19.940865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199368, 33.965122, 19.618275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237389, 34.353561, 19.530703>,  <32.260201, 34.586624, 19.478159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237389, 34.353561, 19.530703>,  <32.199368, 33.965122, 19.618275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237389, 34.353561, 19.530703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358540, -0.171766, -0.917576,
		-0.928662, 0.165715, 0.331851,
		0.095055, 0.971100, -0.218928,
		32.265903, 34.644890, 19.465025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583914, 34.290535, 19.339436>,  <32.199368, 33.965122, 19.618275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583914, 34.290535, 19.339436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896391, 34.499142, 19.202171>,  <32.083878, 34.624306, 19.119814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896391, 34.499142, 19.202171>,  <31.583914, 34.290535, 19.339436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896391, 34.499142, 19.202171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317734, -0.141024, -0.937634,
		-0.537382, 0.841508, 0.055535,
		0.781195, 0.521513, -0.343159,
		32.130749, 34.655594, 19.099224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345097, 34.605286, 18.619184>,  <31.583914, 34.290535, 19.339436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345097, 34.605286, 18.619184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.744932, 34.614983, 18.613111>,  <31.984835, 34.620800, 18.609467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.744932, 34.614983, 18.613111>,  <31.345097, 34.605286, 18.619184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744932, 34.614983, 18.613111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009574, -0.216686, -0.976194,
		-0.026953, 0.975940, -0.216365,
		0.999591, 0.024240, -0.015184,
		32.044811, 34.622253, 18.608557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544920, 35.086792, 18.122919>,  <31.345097, 34.605286, 18.619184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544920, 35.086792, 18.122919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857784, 34.844269, 18.180355>,  <32.045502, 34.698757, 18.214817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857784, 34.844269, 18.180355>,  <31.544920, 35.086792, 18.122919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857784, 34.844269, 18.180355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137925, -0.056254, -0.988844,
		0.607617, 0.793241, 0.039625,
		0.782162, -0.606304, 0.143589,
		32.092434, 34.662376, 18.223433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051826, 35.336048, 17.676247>,  <31.544920, 35.086792, 18.122919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051826, 35.336048, 17.676247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.212402, 34.977722, 17.752525>,  <32.308746, 34.762726, 17.798292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.212402, 34.977722, 17.752525>,  <32.051826, 35.336048, 17.676247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212402, 34.977722, 17.752525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009487, -0.212266, -0.977166,
		0.915837, 0.390463, -0.093710,
		0.401439, -0.895813, 0.190697,
		32.332832, 34.708977, 17.809734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341309, 35.132561, 17.128498>,  <32.051826, 35.336048, 17.676247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341309, 35.132561, 17.128498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282341, 34.772705, 17.292900>,  <32.246960, 34.556793, 17.391541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282341, 34.772705, 17.292900>,  <32.341309, 35.132561, 17.128498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282341, 34.772705, 17.292900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166285, -0.387087, -0.906925,
		0.974997, -0.202038, -0.092533,
		-0.147415, -0.899635, 0.411005,
		32.238117, 34.502815, 17.416201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760250, 34.774940, 16.679592>,  <32.341309, 35.132561, 17.128498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760250, 34.774940, 16.679592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.525242, 34.503288, 16.855595>,  <32.384235, 34.340298, 16.961197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.525242, 34.503288, 16.855595>,  <32.760250, 34.774940, 16.679592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525242, 34.503288, 16.855595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067762, -0.500549, -0.863052,
		0.806366, -0.536877, 0.248065,
		-0.587521, -0.679127, 0.440006,
		32.348984, 34.299549, 16.987597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005642, 34.034153, 16.426769>,  <32.760250, 34.774940, 16.679592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005642, 34.034153, 16.426769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622597, 34.031975, 16.541977>,  <32.392769, 34.030666, 16.611101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622597, 34.031975, 16.541977>,  <33.005642, 34.034153, 16.426769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622597, 34.031975, 16.541977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268619, -0.344283, -0.899618,
		0.104061, -0.938850, 0.328225,
		-0.957609, -0.005448, 0.288019,
		32.335316, 34.030342, 16.628384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653370, 33.559761, 16.051685>,  <33.005642, 34.034153, 16.426769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653370, 33.559761, 16.051685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.337753, 33.774052, 16.171953>,  <32.148384, 33.902626, 16.244114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.337753, 33.774052, 16.171953>,  <32.653370, 33.559761, 16.051685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337753, 33.774052, 16.171953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456416, -0.183608, -0.870616,
		-0.411211, -0.824185, 0.389390,
		-0.789044, 0.535731, 0.300670,
		32.101040, 33.934772, 16.262154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120419, 33.191891, 15.855339>,  <32.653370, 33.559761, 16.051685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120419, 33.191891, 15.855339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.965441, 33.555042, 15.919400>,  <31.872454, 33.772934, 15.957837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.965441, 33.555042, 15.919400>,  <32.120419, 33.191891, 15.855339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965441, 33.555042, 15.919400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550202, -0.088327, -0.830347,
		-0.739706, -0.409829, 0.533737,
		-0.387444, 0.907876, 0.160153,
		31.849207, 33.827404, 15.967446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436310, 32.951855, 15.626542>,  <32.120419, 33.191891, 15.855339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436310, 32.951855, 15.626542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381849, 33.346409, 15.663429>,  <31.349173, 33.583141, 15.685561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381849, 33.346409, 15.663429>,  <31.436310, 32.951855, 15.626542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381849, 33.346409, 15.663429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495829, 0.012739, -0.868327,
		-0.857680, -0.163950, 0.487345,
		-0.136153, 0.986387, 0.092217,
		31.341003, 33.642326, 15.691094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728447, 33.041908, 15.468606>,  <31.436310, 32.951855, 15.626542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728447, 33.041908, 15.468606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923773, 33.383522, 15.396862>,  <31.040968, 33.588490, 15.353815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923773, 33.383522, 15.396862>,  <30.728447, 33.041908, 15.468606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923773, 33.383522, 15.396862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454453, 0.073403, -0.887741,
		-0.744999, 0.515007, 0.423964,
		0.488313, 0.854038, -0.179361,
		31.070267, 33.639732, 15.343054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262058, 33.450157, 15.176498>,  <30.728447, 33.041908, 15.468606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262058, 33.450157, 15.176498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.625425, 33.558056, 15.048738>,  <30.843445, 33.622795, 14.972083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.625425, 33.558056, 15.048738>,  <30.262058, 33.450157, 15.176498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625425, 33.558056, 15.048738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337928, 0.023977, -0.940866,
		-0.246139, 0.962632, 0.112936,
		0.908416, 0.269749, -0.319399,
		30.897951, 33.638981, 14.952919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088184, 34.017109, 14.814003>,  <30.262058, 33.450157, 15.176498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088184, 34.017109, 14.814003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.442430, 33.901382, 14.668685>,  <30.654978, 33.831947, 14.581494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.442430, 33.901382, 14.668685>,  <30.088184, 34.017109, 14.814003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442430, 33.901382, 14.668685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385074, -0.020145, -0.922666,
		0.259619, 0.957023, -0.129247,
		0.885616, -0.289312, -0.363295,
		30.708115, 33.814590, 14.559696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136084, 34.242809, 14.086896>,  <30.088184, 34.017109, 14.814003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136084, 34.242809, 14.086896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.436110, 33.978931, 14.105701>,  <30.616125, 33.820606, 14.116984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.436110, 33.978931, 14.105701>,  <30.136084, 34.242809, 14.086896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436110, 33.978931, 14.105701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076963, -0.157667, -0.984489,
		0.656871, 0.734812, -0.169032,
		0.750065, -0.659691, 0.047014,
		30.661129, 33.781025, 14.119805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593136, 34.339882, 13.585080>,  <30.136084, 34.242809, 14.086896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593136, 34.339882, 13.585080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737141, 33.969921, 13.633969>,  <30.823544, 33.747944, 13.663303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737141, 33.969921, 13.633969>,  <30.593136, 34.339882, 13.585080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737141, 33.969921, 13.633969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061609, -0.154291, -0.986103,
		0.930911, 0.347480, -0.112530,
		0.360013, -0.924906, 0.122224,
		30.845144, 33.692448, 13.670636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998693, 34.228088, 13.018803>,  <30.593136, 34.339882, 13.585080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998693, 34.228088, 13.018803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924192, 33.862022, 13.161791>,  <30.879492, 33.642384, 13.247584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924192, 33.862022, 13.161791>,  <30.998693, 34.228088, 13.018803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924192, 33.862022, 13.161791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007652, -0.362475, -0.931962,
		0.982472, -0.176314, 0.060508,
		-0.186251, -0.915164, 0.357471,
		30.868317, 33.587475, 13.269032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520163, 33.871067, 12.804152>,  <30.998693, 34.228088, 13.018803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520163, 33.871067, 12.804152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.207045, 33.626823, 12.852138>,  <31.019175, 33.480278, 12.880929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.207045, 33.626823, 12.852138>,  <31.520163, 33.871067, 12.804152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207045, 33.626823, 12.852138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032271, -0.232352, -0.972096,
		0.621444, -0.757079, 0.201589,
		-0.782794, -0.610609, 0.119962,
		30.972206, 33.443642, 12.888126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635641, 33.258446, 12.555223>,  <31.520163, 33.871067, 12.804152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635641, 33.258446, 12.555223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.237986, 33.282955, 12.519603>,  <30.999392, 33.297661, 12.498231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.237986, 33.282955, 12.519603>,  <31.635641, 33.258446, 12.555223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237986, 33.282955, 12.519603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069969, -0.263186, -0.962205,
		-0.082391, -0.962798, 0.257357,
		-0.994141, 0.061270, -0.089050,
		30.939743, 33.301334, 12.492887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481344, 32.603878, 12.265916>,  <31.635641, 33.258446, 12.555223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481344, 32.603878, 12.265916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.200365, 32.877247, 12.186415>,  <31.031778, 33.041267, 12.138714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.200365, 32.877247, 12.186415>,  <31.481344, 32.603878, 12.265916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200365, 32.877247, 12.186415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007045, -0.285914, -0.958229,
		-0.711702, -0.671704, 0.205654,
		-0.702446, 0.683423, -0.198753,
		30.989632, 33.082275, 12.126789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218979, 32.418625, 12.358381>,  <31.481344, 32.603878, 12.265916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218979, 32.418625, 12.358381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.176205, 32.037430, 12.244980>,  <32.150539, 31.808712, 12.176939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.176205, 32.037430, 12.244980>,  <32.218979, 32.418625, 12.358381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176205, 32.037430, 12.244980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189290, -0.299437, 0.935150,
		-0.976081, 0.046339, 0.212412,
		-0.106938, -0.952990, -0.283504,
		32.144123, 31.751534, 12.159928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878761, 32.007839, 12.844964>,  <32.218979, 32.418625, 12.358381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878761, 32.007839, 12.844964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087852, 31.740515, 12.633259>,  <32.213306, 31.580122, 12.506235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087852, 31.740515, 12.633259>,  <31.878761, 32.007839, 12.844964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087852, 31.740515, 12.633259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284414, -0.448553, 0.847295,
		-0.803656, -0.593436, -0.044396,
		0.522729, -0.668307, -0.529264,
		32.244671, 31.540022, 12.474480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626194, 31.367245, 13.073365>,  <31.878761, 32.007839, 12.844964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626194, 31.367245, 13.073365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.999634, 31.364355, 12.930066>,  <32.223698, 31.362621, 12.844087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.999634, 31.364355, 12.930066>,  <31.626194, 31.367245, 13.073365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999634, 31.364355, 12.930066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304649, -0.510329, 0.804210,
		-0.188635, -0.859949, -0.474242,
		0.933598, -0.007225, -0.358249,
		32.279713, 31.362188, 12.822592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863970, 30.620256, 13.174674>,  <31.626194, 31.367245, 13.073365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863970, 30.620256, 13.174674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.176876, 30.869061, 13.161019>,  <32.364620, 31.018343, 13.152826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.176876, 30.869061, 13.161019>,  <31.863970, 30.620256, 13.174674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176876, 30.869061, 13.161019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387282, -0.442677, 0.808733,
		0.487928, -0.645864, -0.587184,
		0.782265, 0.622010, -0.034137,
		32.411556, 31.055664, 13.150778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391041, 30.173840, 13.316480>,  <31.863970, 30.620256, 13.174674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391041, 30.173840, 13.316480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.555119, 30.532480, 13.383233>,  <32.653564, 30.747663, 13.423285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.555119, 30.532480, 13.383233>,  <32.391041, 30.173840, 13.316480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555119, 30.532480, 13.383233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345406, -0.322086, 0.881451,
		0.844060, -0.303923, -0.441808,
		0.410193, 0.896600, 0.166883,
		32.678177, 30.801460, 13.433298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041992, 30.071732, 13.599452>,  <32.391041, 30.173840, 13.316480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041992, 30.071732, 13.599452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.924767, 30.435886, 13.716283>,  <32.854431, 30.654379, 13.786382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.924767, 30.435886, 13.716283>,  <33.041992, 30.071732, 13.599452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924767, 30.435886, 13.716283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322357, -0.193516, 0.926627,
		0.900111, 0.365715, -0.236757,
		-0.293065, 0.910387, 0.292077,
		32.836845, 30.709002, 13.803905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512615, 30.213474, 14.134498>,  <33.041992, 30.071732, 13.599452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512615, 30.213474, 14.134498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207256, 30.470268, 14.163009>,  <33.024040, 30.624344, 14.180116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207256, 30.470268, 14.163009>,  <33.512615, 30.213474, 14.134498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207256, 30.470268, 14.163009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015401, -0.128408, 0.991602,
		0.645744, 0.755889, 0.107914,
		-0.763398, 0.641983, 0.071278,
		32.978237, 30.662863, 14.184392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652920, 30.631645, 14.705033>,  <33.512615, 30.213474, 14.134498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652920, 30.631645, 14.705033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.259449, 30.693151, 14.667656>,  <33.023365, 30.730055, 14.645229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.259449, 30.693151, 14.667656>,  <33.652920, 30.631645, 14.705033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259449, 30.693151, 14.667656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072047, 0.139274, 0.987629,
		0.164879, 0.978243, -0.125923,
		-0.983679, 0.153767, -0.093443,
		32.964344, 30.739281, 14.639623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572319, 31.297045, 15.045393>,  <33.652920, 30.631645, 14.705033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572319, 31.297045, 15.045393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.229134, 31.091564, 15.045415>,  <33.023220, 30.968275, 15.045428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.229134, 31.091564, 15.045415>,  <33.572319, 31.297045, 15.045393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229134, 31.091564, 15.045415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090607, 0.151433, 0.984306,
		-0.505650, 0.844498, -0.176470,
		-0.857968, -0.513704, 0.000055,
		32.971745, 30.937452, 15.045431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182571, 31.685192, 15.369720>,  <33.572319, 31.297045, 15.045393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182571, 31.685192, 15.369720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.946789, 31.362995, 15.394145>,  <32.805321, 31.169678, 15.408800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.946789, 31.362995, 15.394145>,  <33.182571, 31.685192, 15.369720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946789, 31.362995, 15.394145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195904, 0.215875, 0.956567,
		-0.783687, 0.551890, -0.285047,
		-0.589454, -0.805491, 0.061061,
		32.769951, 31.121347, 15.412463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606438, 31.944906, 15.641418>,  <33.182571, 31.685192, 15.369720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606438, 31.944906, 15.641418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608635, 31.550776, 15.709649>,  <32.609955, 31.314297, 15.750588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608635, 31.550776, 15.709649>,  <32.606438, 31.944906, 15.641418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608635, 31.550776, 15.709649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088725, 0.169429, 0.981540,
		-0.996041, -0.020528, -0.086493,
		0.005495, -0.985329, 0.170580,
		32.610283, 31.255177, 15.760823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959734, 31.773621, 16.007183>,  <32.606438, 31.944906, 15.641418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959734, 31.773621, 16.007183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239658, 31.499004, 16.086096>,  <32.407612, 31.334234, 16.133444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239658, 31.499004, 16.086096>,  <31.959734, 31.773621, 16.007183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239658, 31.499004, 16.086096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150228, 0.128553, 0.980258,
		-0.698350, -0.715635, -0.013175,
		0.699813, -0.686543, 0.197284,
		32.449604, 31.293041, 16.145281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655201, 31.496193, 16.531757>,  <31.959734, 31.773621, 16.007183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655201, 31.496193, 16.531757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.036419, 31.386414, 16.582951>,  <32.265152, 31.320545, 16.613667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.036419, 31.386414, 16.582951>,  <31.655201, 31.496193, 16.531757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036419, 31.386414, 16.582951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101297, 0.109363, 0.988827,
		-0.285380, -0.955362, 0.076427,
		0.953046, -0.274450, 0.127985,
		32.322334, 31.304079, 16.621346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678162, 31.204535, 17.267952>,  <31.655201, 31.496193, 16.531757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678162, 31.204535, 17.267952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047726, 31.293524, 17.143440>,  <32.269463, 31.346918, 17.068733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047726, 31.293524, 17.143440>,  <31.678162, 31.204535, 17.267952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047726, 31.293524, 17.143440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218853, 0.360042, 0.906903,
		0.313835, -0.906022, 0.283958,
		0.923911, 0.222473, -0.311279,
		32.324898, 31.360266, 17.050056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144154, 31.011276, 17.884644>,  <31.678162, 31.204535, 17.267952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144154, 31.011276, 17.884644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371712, 31.259644, 17.668934>,  <32.508247, 31.408665, 17.539509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371712, 31.259644, 17.668934>,  <32.144154, 31.011276, 17.884644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371712, 31.259644, 17.668934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464248, 0.298794, 0.833784,
		0.678843, -0.724695, -0.118276,
		0.568899, 0.620918, -0.539273,
		32.542381, 31.445919, 17.507153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608551, 31.121075, 18.260445>,  <32.144154, 31.011276, 17.884644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608551, 31.121075, 18.260445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.690086, 31.409630, 17.995703>,  <32.739010, 31.582764, 17.836859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.690086, 31.409630, 17.995703>,  <32.608551, 31.121075, 18.260445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690086, 31.409630, 17.995703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618578, 0.429096, 0.658208,
		0.758821, -0.543577, -0.358767,
		0.203841, 0.721388, -0.661852,
		32.751240, 31.626045, 17.797148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337032, 31.205673, 18.163788>,  <32.608551, 31.121075, 18.260445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337032, 31.205673, 18.163788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208473, 31.566977, 18.050066>,  <33.131336, 31.783758, 17.981833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208473, 31.566977, 18.050066>,  <33.337032, 31.205673, 18.163788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208473, 31.566977, 18.050066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593899, 0.426118, 0.682427,
		0.737555, 0.050482, -0.673397,
		-0.321397, 0.903258, -0.284304,
		33.112053, 31.837954, 17.964775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897381, 31.534109, 18.057167>,  <33.337032, 31.205673, 18.163788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897381, 31.534109, 18.057167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.602119, 31.785498, 18.155275>,  <33.424965, 31.936331, 18.214140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.602119, 31.785498, 18.155275>,  <33.897381, 31.534109, 18.057167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602119, 31.785498, 18.155275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571117, 0.388603, 0.723058,
		0.359110, 0.673803, -0.645778,
		-0.738150, 0.628473, 0.245269,
		33.380676, 31.974039, 18.228857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183193, 32.076122, 18.382917>,  <33.897381, 31.534109, 18.057167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183193, 32.076122, 18.382917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.805573, 32.149342, 18.492655>,  <33.579002, 32.193272, 18.558496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.805573, 32.149342, 18.492655>,  <34.183193, 32.076122, 18.382917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805573, 32.149342, 18.492655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328787, 0.457104, 0.826411,
		0.025870, 0.870373, -0.491713,
		-0.944050, 0.183048, 0.274342,
		33.522358, 32.204254, 18.574957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122742, 32.824963, 18.675303>,  <34.183193, 32.076122, 18.382917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122742, 32.824963, 18.675303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.818024, 32.617916, 18.831118>,  <33.635193, 32.493687, 18.924606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.818024, 32.617916, 18.831118>,  <34.122742, 32.824963, 18.675303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818024, 32.617916, 18.831118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209415, 0.372257, 0.904196,
		-0.613036, 0.770388, -0.175187,
		-0.761796, -0.517618, 0.389537,
		33.589485, 32.462631, 18.947979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885273, 33.291477, 19.270706>,  <34.122742, 32.824963, 18.675303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885273, 33.291477, 19.270706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694195, 32.946758, 19.338963>,  <33.579548, 32.739929, 19.379917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694195, 32.946758, 19.338963>,  <33.885273, 33.291477, 19.270706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694195, 32.946758, 19.338963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015893, 0.202682, 0.979116,
		-0.878384, 0.465004, -0.110517,
		-0.477692, -0.861796, 0.170642,
		33.550888, 32.688221, 19.390156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.771839, 36.419945, 22.807472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.625580, 36.056252, 22.887066>,  <33.537823, 35.838036, 22.934822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.625580, 36.056252, 22.887066>,  <33.771839, 36.419945, 22.807472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625580, 36.056252, 22.887066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009840, 0.210000, 0.977652,
		-0.930701, 0.359434, -0.067839,
		-0.365648, -0.909234, 0.198984,
		33.515884, 35.783482, 22.946760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117661, 36.522270, 23.258427>,  <33.771839, 36.419945, 22.807472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117661, 36.522270, 23.258427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.230598, 36.142132, 23.310780>,  <33.298363, 35.914051, 23.342192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.230598, 36.142132, 23.310780>,  <33.117661, 36.522270, 23.258427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230598, 36.142132, 23.310780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195391, 0.076604, 0.977729,
		-0.939203, -0.301632, -0.164060,
		0.282347, -0.950342, 0.130883,
		33.315304, 35.857029, 23.350044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493805, 36.065998, 23.336111>,  <33.117661, 36.522270, 23.258427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493805, 36.065998, 23.336111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.802860, 35.907604, 23.534597>,  <32.988293, 35.812569, 23.653688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.802860, 35.907604, 23.534597>,  <32.493805, 36.065998, 23.336111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802860, 35.907604, 23.534597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367547, 0.358292, 0.858217,
		-0.517632, -0.845471, 0.131285,
		0.772636, -0.395987, 0.496214,
		33.034653, 35.788807, 23.683462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183815, 35.769581, 23.939501>,  <32.493805, 36.065998, 23.336111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183815, 35.769581, 23.939501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.570503, 35.794361, 24.038790>,  <32.802517, 35.809231, 24.098362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.570503, 35.794361, 24.038790>,  <32.183815, 35.769581, 23.939501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570503, 35.794361, 24.038790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255660, 0.198079, 0.946257,
		0.009453, -0.978226, 0.207325,
		0.966721, 0.061950, 0.248221,
		32.860519, 35.812946, 24.113256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308502, 35.235142, 24.454344>,  <32.183815, 35.769581, 23.939501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308502, 35.235142, 24.454344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.608677, 35.497509, 24.486866>,  <32.788780, 35.654930, 24.506380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.608677, 35.497509, 24.486866>,  <32.308502, 35.235142, 24.454344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608677, 35.497509, 24.486866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158774, 0.059491, 0.985521,
		0.641587, -0.752481, 0.148787,
		0.750438, 0.655921, 0.081306,
		32.833809, 35.694286, 24.511257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760735, 34.943810, 24.882162>,  <32.308502, 35.235142, 24.454344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760735, 34.943810, 24.882162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.846905, 35.333832, 24.903559>,  <32.898609, 35.567844, 24.916397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.846905, 35.333832, 24.903559>,  <32.760735, 34.943810, 24.882162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846905, 35.333832, 24.903559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163919, -0.017891, 0.986311,
		0.962664, -0.221247, 0.155976,
		0.215428, 0.975054, 0.053489,
		32.911533, 35.626347, 24.919605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029453, 34.948940, 25.500996>,  <32.760735, 34.943810, 24.882162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029453, 34.948940, 25.500996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.981323, 35.338520, 25.424112>,  <32.952446, 35.572269, 25.377981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.981323, 35.338520, 25.424112>,  <33.029453, 34.948940, 25.500996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981323, 35.338520, 25.424112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311455, 0.146806, 0.938852,
		0.942612, 0.172830, 0.285677,
		-0.120323, 0.973949, -0.192210,
		32.945225, 35.630707, 25.366449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323772, 35.182293, 26.043005>,  <33.029453, 34.948940, 25.500996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323772, 35.182293, 26.043005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.098122, 35.491310, 25.926432>,  <32.962730, 35.676720, 25.856487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.098122, 35.491310, 25.926432>,  <33.323772, 35.182293, 26.043005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098122, 35.491310, 25.926432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382080, 0.068651, 0.921576,
		0.731966, 0.631239, 0.256445,
		-0.564129, 0.772544, -0.291434,
		32.928883, 35.723072, 25.839001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366440, 35.729443, 26.587210>,  <33.323772, 35.182293, 26.043005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366440, 35.729443, 26.587210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.039150, 35.809959, 26.371807>,  <32.842777, 35.858269, 26.242565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.039150, 35.809959, 26.371807>,  <33.366440, 35.729443, 26.587210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039150, 35.809959, 26.371807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533451, 0.083386, 0.841710,
		0.214336, 0.975975, 0.039152,
		-0.818223, 0.201295, -0.538508,
		32.793682, 35.870346, 26.210255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110256, 36.347454, 26.850817>,  <33.366440, 35.729443, 26.587210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110256, 36.347454, 26.850817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.824287, 36.126118, 26.679848>,  <32.652706, 35.993317, 26.577267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.824287, 36.126118, 26.679848>,  <33.110256, 36.347454, 26.850817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824287, 36.126118, 26.679848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580702, 0.129416, 0.803764,
		-0.389442, 0.822838, -0.413850,
		-0.714927, -0.553344, -0.427423,
		32.609810, 35.960114, 26.551620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509830, 36.666759, 27.166172>,  <33.110256, 36.347454, 26.850817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509830, 36.666759, 27.166172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.382282, 36.324501, 27.003103>,  <32.305756, 36.119148, 26.905262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.382282, 36.324501, 27.003103>,  <32.509830, 36.666759, 27.166172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382282, 36.324501, 27.003103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561976, -0.175678, 0.808282,
		-0.763221, 0.486837, -0.424833,
		-0.318868, -0.855644, -0.407672,
		32.286621, 36.067806, 26.880802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713879, 36.676399, 27.232750>,  <32.509830, 36.666759, 27.166172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713879, 36.676399, 27.232750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.826612, 36.292778, 27.221533>,  <31.894253, 36.062607, 27.214802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.826612, 36.292778, 27.221533>,  <31.713879, 36.676399, 27.232750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826612, 36.292778, 27.221533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505033, -0.173137, 0.845557,
		-0.815789, -0.224144, -0.533149,
		0.281834, -0.959054, -0.028044,
		31.911163, 36.005062, 27.213120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405035, 36.377342, 27.876753>,  <31.713879, 36.676399, 27.232750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405035, 36.377342, 27.876753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.250925, 36.078266, 27.660410>,  <31.158459, 35.898823, 27.530603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.250925, 36.078266, 27.660410>,  <31.405035, 36.377342, 27.876753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250925, 36.078266, 27.660410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495699, 0.326681, -0.804712,
		0.778361, -0.578139, 0.244765,
		-0.385275, -0.747687, -0.540859,
		31.135342, 35.853962, 27.498152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265852, 35.639503, 28.034258>,  <31.405035, 36.377342, 27.876753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265852, 35.639503, 28.034258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.020731, 35.595085, 28.347216>,  <30.873659, 35.568432, 28.534990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.020731, 35.595085, 28.347216>,  <31.265852, 35.639503, 28.034258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020731, 35.595085, 28.347216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653703, -0.485062, -0.580851,
		0.444014, -0.867400, 0.224653,
		-0.612800, -0.111050, 0.782396,
		30.836891, 35.561771, 28.581934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061558, 34.940605, 28.043791>,  <31.265852, 35.639503, 28.034258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061558, 34.940605, 28.043791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.784307, 35.180340, 28.203976>,  <30.617958, 35.324181, 28.300087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.784307, 35.180340, 28.203976>,  <31.061558, 34.940605, 28.043791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784307, 35.180340, 28.203976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679287, -0.357248, -0.641048,
		-0.241139, -0.716357, 0.654740,
		-0.693124, 0.599338, 0.400465,
		30.576370, 35.360142, 28.324114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501549, 34.537220, 28.046587>,  <31.061558, 34.940605, 28.043791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501549, 34.537220, 28.046587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.348347, 34.905880, 28.071497>,  <30.256426, 35.127075, 28.086443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.348347, 34.905880, 28.071497>,  <30.501549, 34.537220, 28.046587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348347, 34.905880, 28.071497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679454, -0.235400, -0.694931,
		-0.625820, -0.308475, 0.716374,
		-0.383003, 0.921645, 0.062277,
		30.233446, 35.182373, 28.090179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744486, 34.473606, 28.153063>,  <30.501549, 34.537220, 28.046587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744486, 34.473606, 28.153063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.823774, 34.829472, 27.988527>,  <29.871347, 35.042992, 27.889805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.823774, 34.829472, 27.988527>,  <29.744486, 34.473606, 28.153063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823774, 34.829472, 27.988527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560378, -0.241450, -0.792261,
		-0.804167, 0.387550, 0.450689,
		0.198221, 0.889667, -0.411341,
		29.883242, 35.096371, 27.865126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075207, 34.691200, 27.970009>,  <29.744486, 34.473606, 28.153063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075207, 34.691200, 27.970009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.349731, 34.871315, 27.741547>,  <29.514446, 34.979385, 27.604469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.349731, 34.871315, 27.741547>,  <29.075207, 34.691200, 27.970009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349731, 34.871315, 27.741547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552166, -0.188543, -0.812135,
		-0.473383, 0.872749, 0.119235,
		0.686310, 0.450288, -0.571156,
		29.555624, 35.006401, 27.570200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659544, 35.139328, 27.418716>,  <29.075207, 34.691200, 27.970009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659544, 35.139328, 27.418716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.030098, 35.062130, 27.289370>,  <29.252430, 35.015812, 27.211761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.030098, 35.062130, 27.289370>,  <28.659544, 35.139328, 27.418716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030098, 35.062130, 27.289370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355731, -0.166733, -0.919595,
		0.123562, 0.966930, -0.223113,
		0.926384, -0.192995, -0.323365,
		29.308014, 35.004230, 27.192360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662615, 35.429127, 26.713671>,  <28.659544, 35.139328, 27.418716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662615, 35.429127, 26.713671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.986063, 35.194000, 26.723513>,  <29.180132, 35.052925, 26.729418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.986063, 35.194000, 26.723513>,  <28.662615, 35.429127, 26.713671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986063, 35.194000, 26.723513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060201, -0.124267, -0.990421,
		0.585243, 0.799394, -0.135872,
		0.808621, -0.587816, 0.024603,
		29.228649, 35.017654, 26.730894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146793, 35.700188, 26.247917>,  <28.662615, 35.429127, 26.713671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146793, 35.700188, 26.247917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.234005, 35.314610, 26.308935>,  <29.286331, 35.083263, 26.345545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.234005, 35.314610, 26.308935>,  <29.146793, 35.700188, 26.247917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234005, 35.314610, 26.308935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043946, -0.146448, -0.988242,
		0.974953, 0.222167, 0.010431,
		0.218027, -0.963948, 0.152543,
		29.299414, 35.025425, 26.354698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385450, 35.486504, 25.652172>,  <29.146793, 35.700188, 26.247917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385450, 35.486504, 25.652172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.377708, 35.114170, 25.798140>,  <29.373064, 34.890770, 25.885719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.377708, 35.114170, 25.798140>,  <29.385450, 35.486504, 25.652172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377708, 35.114170, 25.798140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115307, -0.364629, -0.923986,
		0.993141, 0.024196, 0.114389,
		-0.019353, -0.930838, 0.364918,
		29.371902, 34.834919, 25.907616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884020, 35.130188, 25.257330>,  <29.385450, 35.486504, 25.652172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884020, 35.130188, 25.257330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.631691, 34.859364, 25.408936>,  <29.480293, 34.696869, 25.499899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.631691, 34.859364, 25.408936>,  <29.884020, 35.130188, 25.257330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631691, 34.859364, 25.408936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064745, -0.440834, -0.895250,
		0.773221, -0.589284, 0.234252,
		-0.630823, -0.677060, 0.379016,
		29.442444, 34.656246, 25.522640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159124, 34.526661, 25.090717>,  <29.884020, 35.130188, 25.257330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159124, 34.526661, 25.090717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.769335, 34.445927, 25.130035>,  <29.535461, 34.397488, 25.153625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.769335, 34.445927, 25.130035>,  <30.159124, 34.526661, 25.090717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769335, 34.445927, 25.130035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023056, -0.525497, -0.850483,
		0.223312, -0.826508, 0.516737,
		-0.974474, -0.201837, 0.098294,
		29.476992, 34.385376, 25.159523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191151, 33.819561, 25.040552>,  <30.159124, 34.526661, 25.090717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191151, 33.819561, 25.040552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.817263, 33.936134, 24.959200>,  <29.592930, 34.006081, 24.910389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.817263, 33.936134, 24.959200>,  <30.191151, 33.819561, 25.040552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817263, 33.936134, 24.959200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018964, -0.612371, -0.790343,
		-0.354878, -0.734893, 0.577922,
		-0.934720, 0.291435, -0.203380,
		29.536846, 34.023563, 24.898186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887856, 33.277672, 24.825649>,  <30.191151, 33.819561, 25.040552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887856, 33.277672, 24.825649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.631010, 33.552170, 24.688967>,  <29.476902, 33.716869, 24.606958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.631010, 33.552170, 24.688967>,  <29.887856, 33.277672, 24.825649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631010, 33.552170, 24.688967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029016, -0.467172, -0.883690,
		-0.766060, -0.557514, 0.319889,
		-0.642113, 0.686242, -0.341705,
		29.438375, 33.758041, 24.586454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596411, 32.907726, 24.280882>,  <29.887856, 33.277672, 24.825649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596411, 32.907726, 24.280882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.508842, 33.284668, 24.179661>,  <29.456303, 33.510834, 24.118929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.508842, 33.284668, 24.179661>,  <29.596411, 32.907726, 24.280882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508842, 33.284668, 24.179661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072681, -0.242872, -0.967332,
		-0.973032, -0.230159, -0.015322,
		-0.218919, 0.942359, -0.253051,
		29.443167, 33.567375, 24.103746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088942, 32.900425, 23.706316>,  <29.596411, 32.907726, 24.280882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088942, 32.900425, 23.706316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.248367, 33.267067, 23.693792>,  <29.344023, 33.487053, 23.686277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.248367, 33.267067, 23.693792>,  <29.088942, 32.900425, 23.706316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248367, 33.267067, 23.693792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043875, -0.015044, -0.998924,
		-0.916089, 0.399512, 0.034220,
		0.398567, 0.916605, -0.031310,
		29.367937, 33.542049, 23.684399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392839, 32.838608, 23.723900>,  <29.088942, 32.900425, 23.706316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392839, 32.838608, 23.723900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.292673, 32.455070, 23.777435>,  <28.232573, 32.224949, 23.809557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.292673, 32.455070, 23.777435>,  <28.392839, 32.838608, 23.723900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292673, 32.455070, 23.777435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249567, 0.069637, 0.965850,
		-0.935418, 0.275267, 0.221857,
		-0.250417, -0.958842, 0.133837,
		28.217548, 32.167419, 23.817587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173288, 32.811829, 24.341829>,  <28.392839, 32.838608, 23.723900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173288, 32.811829, 24.341829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.182474, 32.413155, 24.310587>,  <28.187986, 32.173950, 24.291842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.182474, 32.413155, 24.310587>,  <28.173288, 32.811829, 24.341829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182474, 32.413155, 24.310587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043495, -0.077059, 0.996077,
		-0.998790, -0.026271, 0.041581,
		0.022964, -0.996681, -0.078108,
		28.189363, 32.114151, 24.287155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769083, 32.580437, 24.786238>,  <28.173288, 32.811829, 24.341829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769083, 32.580437, 24.786238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.024370, 32.281300, 24.713125>,  <28.177544, 32.101818, 24.669258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.024370, 32.281300, 24.713125>,  <27.769083, 32.580437, 24.786238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024370, 32.281300, 24.713125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232634, -0.038979, 0.971783,
		-0.733865, -0.662731, 0.149096,
		0.638219, -0.747842, -0.182779,
		28.215836, 32.056946, 24.658291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795841, 32.246563, 25.351988>,  <27.769083, 32.580437, 24.786238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795841, 32.246563, 25.351988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.106009, 32.055733, 25.186516>,  <28.292109, 31.941235, 25.087233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.106009, 32.055733, 25.186516>,  <27.795841, 32.246563, 25.351988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106009, 32.055733, 25.186516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329445, -0.253243, 0.909579,
		-0.538697, -0.841587, -0.039199,
		0.775417, -0.477073, -0.413678,
		28.338634, 31.912611, 25.062412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860193, 31.577566, 25.630245>,  <27.795841, 32.246563, 25.351988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860193, 31.577566, 25.630245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.231152, 31.675594, 25.517195>,  <28.453726, 31.734411, 25.449364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.231152, 31.675594, 25.517195>,  <27.860193, 31.577566, 25.630245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231152, 31.675594, 25.517195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319091, -0.123918, 0.939588,
		0.195244, -0.961553, -0.193122,
		0.927395, 0.245072, -0.282628,
		28.509371, 31.749115, 25.432405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302036, 31.163992, 26.015911>,  <27.860193, 31.577566, 25.630245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302036, 31.163992, 26.015911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.540068, 31.458029, 25.885977>,  <28.682886, 31.634451, 25.808016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.540068, 31.458029, 25.885977>,  <28.302036, 31.163992, 26.015911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540068, 31.458029, 25.885977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458276, 0.021656, 0.888546,
		0.660199, -0.677620, -0.323988,
		0.595080, 0.735093, -0.324834,
		28.718592, 31.678556, 25.788527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963306, 30.894238, 26.225121>,  <28.302036, 31.163992, 26.015911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963306, 30.894238, 26.225121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.994720, 31.288416, 26.164820>,  <29.013569, 31.524923, 26.128639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.994720, 31.288416, 26.164820>,  <28.963306, 30.894238, 26.225121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994720, 31.288416, 26.164820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276930, 0.123702, 0.952894,
		0.957675, -0.116583, -0.263185,
		0.078535, 0.985447, -0.150752,
		29.018282, 31.584049, 26.119595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641741, 31.149130, 26.535051>,  <28.963306, 30.894238, 26.225121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641741, 31.149130, 26.535051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.407612, 31.472855, 26.515398>,  <29.267134, 31.667089, 26.503605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.407612, 31.472855, 26.515398>,  <29.641741, 31.149130, 26.535051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407612, 31.472855, 26.515398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151953, 0.169022, 0.973828,
		0.796434, 0.562537, -0.221910,
		-0.585323, 0.809310, -0.049135,
		29.232016, 31.715649, 26.500658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006748, 31.740057, 26.761820>,  <29.641741, 31.149130, 26.535051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006748, 31.740057, 26.761820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.632570, 31.862928, 26.831772>,  <29.408064, 31.936651, 26.873743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.632570, 31.862928, 26.831772>,  <30.006748, 31.740057, 26.761820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632570, 31.862928, 26.831772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285583, 0.365262, 0.886017,
		0.208286, 0.878764, -0.429407,
		-0.935446, 0.307177, 0.174881,
		29.351936, 31.955082, 26.884235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093740, 32.466457, 27.153704>,  <30.006748, 31.740057, 26.761820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093740, 32.466457, 27.153704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.726814, 32.314266, 27.200642>,  <29.506659, 32.222950, 27.228806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.726814, 32.314266, 27.200642>,  <30.093740, 32.466457, 27.153704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726814, 32.314266, 27.200642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018055, 0.334163, 0.942342,
		-0.397756, 0.862305, -0.313402,
		-0.917314, -0.380481, 0.117346,
		29.451620, 32.200123, 27.235846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834980, 32.943504, 27.720234>,  <30.093740, 32.466457, 27.153704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834980, 32.943504, 27.720234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.599411, 32.621330, 27.693537>,  <29.458071, 32.428028, 27.677519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.599411, 32.621330, 27.693537>,  <29.834980, 32.943504, 27.720234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599411, 32.621330, 27.693537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238742, 0.094478, 0.966476,
		-0.772124, 0.585112, -0.247930,
		-0.588920, -0.805430, -0.066742,
		29.422735, 32.379700, 27.673513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106380, 33.123981, 28.056641>,  <29.834980, 32.943504, 27.720234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106380, 33.123981, 28.056641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.133192, 32.726395, 28.021931>,  <29.149279, 32.487843, 28.001104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.133192, 32.726395, 28.021931>,  <29.106380, 33.123981, 28.056641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133192, 32.726395, 28.021931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289174, -0.102593, 0.951763,
		-0.954927, -0.038703, -0.294307,
		0.067030, -0.993970, -0.086777,
		29.153301, 32.428204, 27.995897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.869717, 32.728844, 20.344139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020470, 32.358482, 20.333889>,  <27.110922, 32.136265, 20.327740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020470, 32.358482, 20.333889>,  <26.869717, 32.728844, 20.344139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020470, 32.358482, 20.333889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147369, -0.087251, 0.985226,
		-0.914463, -0.367537, -0.169333,
		0.376881, -0.925907, -0.025625,
		27.133533, 32.080711, 20.326202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411160, 32.304527, 20.821888>,  <26.869717, 32.728844, 20.344139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411160, 32.304527, 20.821888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769871, 32.130680, 20.788681>,  <26.985098, 32.026371, 20.768757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769871, 32.130680, 20.788681>,  <26.411160, 32.304527, 20.821888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769871, 32.130680, 20.788681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005707, -0.198964, 0.979990,
		-0.442442, -0.878361, -0.180907,
		0.896779, -0.434621, -0.083017,
		27.038904, 32.000294, 20.763777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300270, 31.710936, 21.177015>,  <26.411160, 32.304527, 20.821888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300270, 31.710936, 21.177015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696766, 31.762384, 21.165041>,  <26.934664, 31.793253, 21.157856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696766, 31.762384, 21.165041>,  <26.300270, 31.710936, 21.177015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696766, 31.762384, 21.165041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076575, -0.375125, 0.923806,
		0.107592, -0.918008, -0.381688,
		0.991242, 0.128622, -0.029936,
		26.994139, 31.800970, 21.156059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604071, 31.269901, 21.681726>,  <26.300270, 31.710936, 21.177015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604071, 31.269901, 21.681726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900469, 31.528736, 21.609943>,  <27.078308, 31.684038, 21.566874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900469, 31.528736, 21.609943>,  <26.604071, 31.269901, 21.681726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900469, 31.528736, 21.609943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291947, -0.069773, 0.953886,
		0.604728, -0.759215, -0.240617,
		0.740993, 0.647089, -0.179456,
		27.122766, 31.722862, 21.556107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098372, 31.018442, 22.062752>,  <26.604071, 31.269901, 21.681726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098372, 31.018442, 22.062752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221952, 31.390547, 21.983599>,  <27.296101, 31.613810, 21.936106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221952, 31.390547, 21.983599>,  <27.098372, 31.018442, 22.062752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221952, 31.390547, 21.983599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511546, 0.012868, 0.859159,
		0.801791, -0.366666, -0.471897,
		0.308952, 0.930264, -0.197884,
		27.314638, 31.669626, 21.924234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898163, 31.089865, 22.082125>,  <27.098372, 31.018442, 22.062752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898163, 31.089865, 22.082125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728853, 31.443941, 22.159353>,  <27.627268, 31.656387, 22.205690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728853, 31.443941, 22.159353>,  <27.898163, 31.089865, 22.082125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728853, 31.443941, 22.159353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468090, 0.031208, 0.883130,
		0.775713, 0.464180, -0.427558,
		-0.423274, 0.885191, 0.193069,
		27.601871, 31.709499, 22.217274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475727, 31.264137, 22.393421>,  <27.898163, 31.089865, 22.082125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475727, 31.264137, 22.393421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191572, 31.533291, 22.475960>,  <28.021080, 31.694784, 22.525482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191572, 31.533291, 22.475960>,  <28.475727, 31.264137, 22.393421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191572, 31.533291, 22.475960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299826, 0.024080, 0.953690,
		0.636755, 0.739355, -0.218855,
		-0.710386, 0.672885, 0.206345,
		27.978456, 31.735157, 22.537863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763287, 31.874170, 22.691259>,  <28.475727, 31.264137, 22.393421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763287, 31.874170, 22.691259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389349, 31.872271, 22.833271>,  <28.164988, 31.871130, 22.918478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389349, 31.872271, 22.833271>,  <28.763287, 31.874170, 22.691259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389349, 31.872271, 22.833271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347634, 0.191220, 0.917925,
		-0.072248, 0.981536, -0.177109,
		-0.934843, -0.004749, 0.355030,
		28.108896, 31.870846, 22.939779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690493, 32.447254, 23.101509>,  <28.763287, 31.874170, 22.691259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690493, 32.447254, 23.101509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401058, 32.201942, 23.228199>,  <28.227398, 32.054756, 23.304213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401058, 32.201942, 23.228199>,  <28.690493, 32.447254, 23.101509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401058, 32.201942, 23.228199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261110, 0.181556, 0.948082,
		-0.638938, 0.768720, 0.028761,
		-0.723588, -0.613275, 0.316724,
		28.183981, 32.017960, 23.323215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685806, 33.330914, 23.154886>,  <28.690493, 32.447254, 23.101509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685806, 33.330914, 23.154886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035954, 33.507046, 23.234718>,  <29.246042, 33.612724, 23.282618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035954, 33.507046, 23.234718>,  <28.685806, 33.330914, 23.154886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035954, 33.507046, 23.234718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119747, 0.202478, -0.971938,
		-0.468389, 0.874704, 0.124514,
		0.875370, 0.440335, 0.199582,
		29.298565, 33.639145, 23.294594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580318, 33.928162, 22.851933>,  <28.685806, 33.330914, 23.154886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580318, 33.928162, 22.851933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975815, 33.868942, 22.860600>,  <29.213114, 33.833412, 22.865799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975815, 33.868942, 22.860600>,  <28.580318, 33.928162, 22.851933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975815, 33.868942, 22.860600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070007, 0.329764, -0.941464,
		0.132238, 0.932382, 0.336416,
		0.988743, -0.148049, 0.021666,
		29.272438, 33.824528, 22.867100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833763, 34.392647, 22.405972>,  <28.580318, 33.928162, 22.851933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833763, 34.392647, 22.405972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157700, 34.160267, 22.438616>,  <29.352060, 34.020840, 22.458202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157700, 34.160267, 22.438616>,  <28.833763, 34.392647, 22.405972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157700, 34.160267, 22.438616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199990, 0.142611, -0.969364,
		0.551511, 0.801350, 0.231675,
		0.809839, -0.580948, 0.081611,
		29.400652, 33.985981, 22.463099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332195, 34.714558, 22.043301>,  <28.833763, 34.392647, 22.405972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332195, 34.714558, 22.043301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499744, 34.351341, 22.042784>,  <29.600275, 34.133411, 22.042473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499744, 34.351341, 22.042784>,  <29.332195, 34.714558, 22.043301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499744, 34.351341, 22.042784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206699, 0.096736, -0.973611,
		0.884206, 0.407552, 0.228212,
		0.418874, -0.908044, -0.001294,
		29.625406, 34.078930, 22.042395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847950, 34.805836, 21.547571>,  <29.332195, 34.714558, 22.043301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847950, 34.805836, 21.547571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784506, 34.411900, 21.575651>,  <29.746439, 34.175537, 21.592499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784506, 34.411900, 21.575651>,  <29.847950, 34.805836, 21.547571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784506, 34.411900, 21.575651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098473, -0.086524, -0.991371,
		0.982418, -0.150330, 0.110705,
		-0.158612, -0.984842, 0.070199,
		29.736923, 34.116447, 21.596710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379036, 34.459099, 21.174673>,  <29.847950, 34.805836, 21.547571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379036, 34.459099, 21.174673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059780, 34.218227, 21.182161>,  <29.868227, 34.073704, 21.186655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059780, 34.218227, 21.182161>,  <30.379036, 34.459099, 21.174673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059780, 34.218227, 21.182161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100656, -0.163920, -0.981325,
		0.594002, -0.781352, 0.191444,
		-0.798141, -0.602179, 0.018721,
		29.820337, 34.037575, 21.187778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547539, 33.857796, 20.696789>,  <30.379036, 34.459099, 21.174673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547539, 33.857796, 20.696789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150904, 33.889236, 20.737930>,  <29.912924, 33.908100, 20.762615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150904, 33.889236, 20.737930>,  <30.547539, 33.857796, 20.696789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150904, 33.889236, 20.737930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107367, -0.055495, -0.992669,
		-0.072342, -0.995358, 0.063470,
		-0.991584, 0.078626, 0.102854,
		29.853428, 33.912819, 20.768787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352844, 33.422077, 20.276896>,  <30.547539, 33.857796, 20.696789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352844, 33.422077, 20.276896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017500, 33.636684, 20.315474>,  <29.816294, 33.765450, 20.338619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017500, 33.636684, 20.315474>,  <30.352844, 33.422077, 20.276896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017500, 33.636684, 20.315474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208137, -0.151534, -0.966290,
		-0.503819, -0.830171, 0.238710,
		-0.838358, 0.536520, 0.096444,
		29.765993, 33.797642, 20.344406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886419, 33.109264, 19.837395>,  <30.352844, 33.422077, 20.276896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886419, 33.109264, 19.837395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706842, 33.463089, 19.887991>,  <29.599096, 33.675385, 19.918348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706842, 33.463089, 19.887991>,  <29.886419, 33.109264, 19.837395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706842, 33.463089, 19.887991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380378, -0.061093, -0.922811,
		-0.808558, -0.462402, 0.363895,
		-0.448941, 0.884564, 0.126491,
		29.572161, 33.728458, 19.925938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166639, 33.147419, 19.595356>,  <29.886419, 33.109264, 19.837395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166639, 33.147419, 19.595356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272579, 33.532978, 19.606400>,  <29.336143, 33.764313, 19.613026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272579, 33.532978, 19.606400>,  <29.166639, 33.147419, 19.595356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272579, 33.532978, 19.606400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390537, 0.133396, -0.910871,
		-0.881666, 0.230462, 0.411766,
		0.264850, 0.963894, 0.027607,
		29.352034, 33.822147, 19.614681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547386, 33.557457, 19.461962>,  <29.166639, 33.147419, 19.595356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547386, 33.557457, 19.461962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863720, 33.784187, 19.369623>,  <29.053520, 33.920227, 19.314220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863720, 33.784187, 19.369623>,  <28.547386, 33.557457, 19.461962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863720, 33.784187, 19.369623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395329, 0.185154, -0.899685,
		-0.467225, 0.802760, 0.370509,
		0.790833, 0.566828, -0.230846,
		29.100969, 33.954235, 19.300369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259853, 34.140297, 19.059376>,  <28.547386, 33.557457, 19.461962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259853, 34.140297, 19.059376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651316, 34.186153, 18.991152>,  <28.886192, 34.213665, 18.950218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651316, 34.186153, 18.991152>,  <28.259853, 34.140297, 19.059376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651316, 34.186153, 18.991152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190884, 0.199631, -0.961099,
		-0.076130, 0.973142, 0.217253,
		0.978656, 0.114639, -0.170559,
		28.944912, 34.220547, 18.939983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279480, 34.660435, 18.554575>,  <28.259853, 34.140297, 19.059376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279480, 34.660435, 18.554575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629808, 34.469818, 18.523998>,  <28.840006, 34.355446, 18.505653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629808, 34.469818, 18.523998>,  <28.279480, 34.660435, 18.554575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629808, 34.469818, 18.523998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057426, 0.054361, -0.996869,
		0.479208, 0.877468, 0.020245,
		0.875821, -0.476545, -0.076440,
		28.892555, 34.326855, 18.501066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722643, 35.077072, 18.169979>,  <28.279480, 34.660435, 18.554575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722643, 35.077072, 18.169979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871416, 34.708572, 18.124432>,  <28.960680, 34.487473, 18.097103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871416, 34.708572, 18.124432>,  <28.722643, 35.077072, 18.169979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871416, 34.708572, 18.124432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179429, 0.049005, -0.982550,
		0.910753, 0.385875, -0.147072,
		0.371934, -0.921248, -0.113869,
		28.982996, 34.432198, 18.090271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.404346, 28.381998, 18.717142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.057091, 28.565279, 18.793436>,  <32.848736, 28.675247, 18.839212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.057091, 28.565279, 18.793436>,  <33.404346, 28.381998, 18.717142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057091, 28.565279, 18.793436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352350, 0.298338, 0.887042,
		0.349543, 0.837283, -0.420448,
		-0.868141, 0.458204, 0.190735,
		32.796650, 28.702740, 18.850657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595970, 29.051069, 19.046242>,  <33.404346, 28.381998, 18.717142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595970, 29.051069, 19.046242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.205891, 29.038166, 19.133825>,  <32.971844, 29.030424, 19.186375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.205891, 29.038166, 19.133825>,  <33.595970, 29.051069, 19.046242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205891, 29.038166, 19.133825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202570, 0.268434, 0.941758,
		-0.089155, 0.962758, -0.255243,
		-0.975201, -0.032258, 0.218958,
		32.913330, 29.028488, 19.199512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504715, 29.563425, 19.439735>,  <33.595970, 29.051069, 19.046242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504715, 29.563425, 19.439735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.184048, 29.343281, 19.533062>,  <32.991650, 29.211195, 19.589058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.184048, 29.343281, 19.533062>,  <33.504715, 29.563425, 19.439735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184048, 29.343281, 19.533062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130770, 0.219394, 0.966833,
		-0.583294, 0.805587, -0.103910,
		-0.801665, -0.550359, 0.233318,
		32.943546, 29.178173, 19.603058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088215, 29.980131, 19.788574>,  <33.504715, 29.563425, 19.439735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088215, 29.980131, 19.788574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.965168, 29.613245, 19.889837>,  <32.891342, 29.393114, 19.950596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.965168, 29.613245, 19.889837>,  <33.088215, 29.980131, 19.788574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965168, 29.613245, 19.889837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089495, 0.292769, 0.951986,
		-0.947293, 0.270188, -0.172146,
		-0.307614, -0.917216, 0.253157,
		32.872883, 29.338079, 19.965784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532955, 30.081919, 20.257597>,  <33.088215, 29.980131, 19.788574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532955, 30.081919, 20.257597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.656483, 29.706419, 20.318766>,  <32.730598, 29.481119, 20.355467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.656483, 29.706419, 20.318766>,  <32.532955, 30.081919, 20.257597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656483, 29.706419, 20.318766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001026, 0.161107, 0.986936,
		-0.951120, -0.304628, 0.050716,
		0.308819, -0.938747, 0.152920,
		32.749130, 29.424795, 20.364641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185482, 29.935957, 20.791269>,  <32.532955, 30.081919, 20.257597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185482, 29.935957, 20.791269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.474682, 29.659616, 20.791739>,  <32.648201, 29.493813, 20.792019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.474682, 29.659616, 20.791739>,  <32.185482, 29.935957, 20.791269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474682, 29.659616, 20.791739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155116, 0.163984, 0.974191,
		-0.673214, -0.704154, 0.225722,
		0.722995, -0.690852, 0.001171,
		32.691582, 29.452360, 20.792089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026321, 29.518955, 21.241669>,  <32.185482, 29.935957, 20.791269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026321, 29.518955, 21.241669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.423340, 29.474365, 21.222006>,  <32.661552, 29.447611, 21.210209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.423340, 29.474365, 21.222006>,  <32.026321, 29.518955, 21.241669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423340, 29.474365, 21.222006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056868, 0.067089, 0.996125,
		-0.107747, -0.991500, 0.072929,
		0.992551, -0.111477, -0.049155,
		32.721104, 29.440922, 21.207260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182388, 29.209991, 21.931757>,  <32.026321, 29.518955, 21.241669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182388, 29.209991, 21.931757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.543541, 29.322224, 21.801479>,  <32.760231, 29.389563, 21.723312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.543541, 29.322224, 21.801479>,  <32.182388, 29.209991, 21.931757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543541, 29.322224, 21.801479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359994, -0.079392, 0.929570,
		0.234964, -0.956541, -0.172690,
		0.902882, 0.280583, -0.325695,
		32.814407, 29.406399, 21.703772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695492, 28.777767, 22.241018>,  <32.182388, 29.209991, 21.931757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695492, 28.777767, 22.241018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.841610, 29.136377, 22.140776>,  <32.929279, 29.351543, 22.080629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.841610, 29.136377, 22.140776>,  <32.695492, 28.777767, 22.241018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841610, 29.136377, 22.140776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265082, 0.157884, 0.951212,
		0.892351, -0.413904, -0.179978,
		0.365295, 0.896524, -0.250606,
		32.951199, 29.405334, 22.065594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240971, 28.831583, 22.647795>,  <32.695492, 28.777767, 22.241018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240971, 28.831583, 22.647795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.200932, 29.207462, 22.516983>,  <33.176907, 29.432989, 22.438496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.200932, 29.207462, 22.516983>,  <33.240971, 28.831583, 22.647795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200932, 29.207462, 22.516983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347590, 0.340996, 0.873443,
		0.932288, -0.026243, -0.360763,
		-0.100097, 0.939698, -0.327029,
		33.170902, 29.489372, 22.418875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799717, 29.105886, 22.899570>,  <33.240971, 28.831583, 22.647795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799717, 29.105886, 22.899570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.560795, 29.410009, 22.797466>,  <33.417442, 29.592484, 22.736204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.560795, 29.410009, 22.797466>,  <33.799717, 29.105886, 22.899570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560795, 29.410009, 22.797466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139320, 0.411799, 0.900562,
		0.789819, 0.502350, -0.351896,
		-0.597308, 0.760307, -0.255259,
		33.381603, 29.638102, 22.720888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174599, 29.771461, 22.883995>,  <33.799717, 29.105886, 22.899570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174599, 29.771461, 22.883995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787048, 29.845030, 22.950268>,  <33.554520, 29.889170, 22.990032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787048, 29.845030, 22.950268>,  <34.174599, 29.771461, 22.883995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787048, 29.845030, 22.950268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233028, 0.451830, 0.861132,
		0.083517, 0.872940, -0.480626,
		-0.968877, 0.183919, 0.165683,
		33.496384, 29.900206, 22.999973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016853, 30.526312, 23.029556>,  <34.174599, 29.771461, 22.883995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016853, 30.526312, 23.029556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.697998, 30.355959, 23.200760>,  <33.506683, 30.253748, 23.303482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.697998, 30.355959, 23.200760>,  <34.016853, 30.526312, 23.029556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697998, 30.355959, 23.200760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217098, 0.459295, 0.861346,
		-0.563413, 0.779534, -0.273665,
		-0.797141, -0.425881, 0.428008,
		33.458855, 30.228195, 23.329163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695019, 31.050034, 23.458408>,  <34.016853, 30.526312, 23.029556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695019, 31.050034, 23.458408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.547981, 30.717339, 23.624823>,  <33.459759, 30.517721, 23.724670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.547981, 30.717339, 23.624823>,  <33.695019, 31.050034, 23.458408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547981, 30.717339, 23.624823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102621, 0.408348, 0.907040,
		-0.924308, 0.376114, -0.064752,
		-0.367592, -0.831739, 0.416036,
		33.437702, 30.467817, 23.749634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251751, 31.736349, 23.414562>,  <33.695019, 31.050034, 23.458408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251751, 31.736349, 23.414562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.391224, 32.109566, 23.450014>,  <33.474907, 32.333496, 23.471285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.391224, 32.109566, 23.450014>,  <33.251751, 31.736349, 23.414562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391224, 32.109566, 23.450014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151306, 0.149360, -0.977138,
		-0.924947, 0.327300, 0.193254,
		0.348681, 0.933041, 0.088628,
		33.495827, 32.389477, 23.476603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741863, 32.253117, 23.054937>,  <33.251751, 31.736349, 23.414562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741863, 32.253117, 23.054937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.114540, 32.396328, 23.079491>,  <33.338146, 32.482254, 23.094223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.114540, 32.396328, 23.079491>,  <32.741863, 32.253117, 23.054937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114540, 32.396328, 23.079491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003932, 0.178914, -0.983857,
		-0.363235, 0.916408, 0.168100,
		0.931690, 0.358032, 0.061384,
		33.394047, 32.503738, 23.097906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792973, 32.700539, 22.608936>,  <32.741863, 32.253117, 23.054937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792973, 32.700539, 22.608936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.191093, 32.707691, 22.646992>,  <33.429966, 32.711983, 22.669825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.191093, 32.707691, 22.646992>,  <32.792973, 32.700539, 22.608936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191093, 32.707691, 22.646992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092011, 0.130718, -0.987141,
		-0.030089, 0.991258, 0.128459,
		0.995303, 0.017882, 0.095140,
		33.489685, 32.713055, 22.675533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015137, 33.298199, 22.219225>,  <32.792973, 32.700539, 22.608936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015137, 33.298199, 22.219225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.311871, 33.031548, 22.248327>,  <33.489910, 32.871559, 22.265789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.311871, 33.031548, 22.248327>,  <33.015137, 33.298199, 22.219225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311871, 33.031548, 22.248327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098958, 0.001521, -0.995090,
		0.663243, 0.745391, 0.067096,
		0.741833, -0.666626, 0.072754,
		33.534420, 32.831558, 22.270153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548862, 33.566437, 21.804749>,  <33.015137, 33.298199, 22.219225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548862, 33.566437, 21.804749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645267, 33.179058, 21.830112>,  <33.703110, 32.946629, 21.845331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645267, 33.179058, 21.830112>,  <33.548862, 33.566437, 21.804749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645267, 33.179058, 21.830112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078321, -0.045715, -0.995880,
		0.967357, 0.244985, 0.064832,
		0.241012, -0.968448, 0.063410,
		33.717571, 32.888523, 21.849136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085663, 33.531059, 21.249374>,  <33.548862, 33.566437, 21.804749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085663, 33.531059, 21.249374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.956722, 33.160828, 21.328764>,  <33.879360, 32.938686, 21.376398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.956722, 33.160828, 21.328764>,  <34.085663, 33.531059, 21.249374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956722, 33.160828, 21.328764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129797, -0.250900, -0.959271,
		0.937680, -0.283459, 0.201015,
		-0.322349, -0.925581, 0.198472,
		33.860016, 32.883152, 21.388306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549198, 33.042904, 20.794579>,  <34.085663, 33.531059, 21.249374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549198, 33.042904, 20.794579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.246902, 32.798042, 20.887629>,  <34.065525, 32.651123, 20.943459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.246902, 32.798042, 20.887629>,  <34.549198, 33.042904, 20.794579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246902, 32.798042, 20.887629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101194, -0.241793, -0.965037,
		0.647003, -0.752860, 0.120786,
		-0.755743, -0.612158, 0.232626,
		34.020180, 32.614395, 20.957417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691647, 32.408417, 20.473034>,  <34.549198, 33.042904, 20.794579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691647, 32.408417, 20.473034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.301804, 32.452213, 20.551157>,  <34.067898, 32.478493, 20.598030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.301804, 32.452213, 20.551157>,  <34.691647, 32.408417, 20.473034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301804, 32.452213, 20.551157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212155, -0.172728, -0.961850,
		-0.071580, -0.978865, 0.191572,
		-0.974611, 0.109492, 0.195307,
		34.009418, 32.485062, 20.609749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332226, 31.803112, 20.197849>,  <34.691647, 32.408417, 20.473034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332226, 31.803112, 20.197849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.042522, 32.078110, 20.219009>,  <33.868698, 32.243107, 20.231705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.042522, 32.078110, 20.219009>,  <34.332226, 31.803112, 20.197849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042522, 32.078110, 20.219009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256435, -0.197346, -0.946201,
		-0.640067, -0.698862, 0.319227,
		-0.724262, 0.687492, 0.052898,
		33.825245, 32.284359, 20.234879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695122, 31.453945, 20.004288>,  <34.332226, 31.803112, 20.197849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695122, 31.453945, 20.004288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.623428, 31.842009, 19.938972>,  <33.580410, 32.074848, 19.899782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.623428, 31.842009, 19.938972>,  <33.695122, 31.453945, 20.004288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623428, 31.842009, 19.938972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390248, -0.222472, -0.893428,
		-0.903095, -0.096411, 0.418478,
		-0.179236, 0.970160, -0.163289,
		33.569656, 32.133057, 19.889986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072113, 31.482555, 19.678713>,  <33.695122, 31.453945, 20.004288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072113, 31.482555, 19.678713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.208366, 31.846432, 19.583696>,  <33.290119, 32.064758, 19.526686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.208366, 31.846432, 19.583696>,  <33.072113, 31.482555, 19.678713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208366, 31.846432, 19.583696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459060, -0.059564, -0.886406,
		-0.820506, 0.410988, 0.397314,
		0.340637, 0.909693, -0.237540,
		33.310558, 32.119339, 19.512434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580219, 31.840498, 19.378653>,  <33.072113, 31.482555, 19.678713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580219, 31.840498, 19.378653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.908775, 32.027073, 19.247355>,  <33.105911, 32.139019, 19.168575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.908775, 32.027073, 19.247355>,  <32.580219, 31.840498, 19.378653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908775, 32.027073, 19.247355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460977, 0.204003, -0.863645,
		-0.335875, 0.860707, 0.382585,
		0.821394, 0.466439, -0.328246,
		33.155193, 32.167004, 19.148880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287880, 32.255558, 18.840878>,  <32.580219, 31.840498, 19.378653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287880, 32.255558, 18.840878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.680820, 32.279739, 18.770075>,  <32.916584, 32.294247, 18.727592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.680820, 32.279739, 18.770075>,  <32.287880, 32.255558, 18.840878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680820, 32.279739, 18.770075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180364, 0.055506, -0.982032,
		-0.049540, 0.996627, 0.065429,
		0.982352, 0.060451, -0.177006,
		32.975525, 32.297874, 18.716972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452732, 32.879368, 18.366781>,  <32.287880, 32.255558, 18.840878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452732, 32.879368, 18.366781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.731754, 32.594013, 18.339991>,  <32.899170, 32.422798, 18.323917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.731754, 32.594013, 18.339991>,  <32.452732, 32.879368, 18.366781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731754, 32.594013, 18.339991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290623, -0.196252, -0.936495,
		0.654943, 0.672724, -0.344225,
		0.697558, -0.713391, -0.066975,
		32.941021, 32.379997, 18.319899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730747, 33.567524, 18.285677>,  <32.452732, 32.879368, 18.366781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730747, 33.567524, 18.285677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.622433, 33.916553, 18.123055>,  <32.557442, 34.125973, 18.025480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.622433, 33.916553, 18.123055>,  <32.730747, 33.567524, 18.285677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622433, 33.916553, 18.123055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013433, 0.425718, 0.904756,
		0.962545, 0.239536, -0.127000,
		-0.270788, 0.872575, -0.406556,
		32.541195, 34.178326, 18.001087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246479, 34.084225, 18.484791>,  <32.730747, 33.567524, 18.285677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246479, 34.084225, 18.484791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.908043, 34.270504, 18.381060>,  <32.704979, 34.382271, 18.318821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.908043, 34.270504, 18.381060>,  <33.246479, 34.084225, 18.484791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908043, 34.270504, 18.381060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026985, 0.523309, 0.851715,
		0.532350, 0.713633, -0.455336,
		-0.846094, 0.465698, -0.259326,
		32.654213, 34.410213, 18.303261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327248, 34.823730, 18.580563>,  <33.246479, 34.084225, 18.484791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327248, 34.823730, 18.580563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.930725, 34.771820, 18.571939>,  <32.692810, 34.740673, 18.566765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.930725, 34.771820, 18.571939>,  <33.327248, 34.823730, 18.580563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930725, 34.771820, 18.571939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095118, 0.593867, 0.798921,
		-0.090875, 0.794028, -0.601049,
		-0.991309, -0.129772, -0.021559,
		32.633331, 34.732887, 18.565472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080898, 35.490707, 18.773724>,  <33.327248, 34.823730, 18.580563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080898, 35.490707, 18.773724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.779068, 35.245285, 18.866821>,  <32.597969, 35.098034, 18.922680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.779068, 35.245285, 18.866821>,  <33.080898, 35.490707, 18.773724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779068, 35.245285, 18.866821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095031, 0.453113, 0.886373,
		-0.649297, 0.646717, -0.400214,
		-0.754575, -0.613552, 0.232747,
		32.552696, 35.061218, 18.936646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644924, 35.857498, 19.205315>,  <33.080898, 35.490707, 18.773724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644924, 35.857498, 19.205315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.537285, 35.478741, 19.275723>,  <32.472702, 35.251488, 19.317966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.537285, 35.478741, 19.275723>,  <32.644924, 35.857498, 19.205315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537285, 35.478741, 19.275723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176528, 0.228155, 0.957488,
		-0.946796, 0.226587, -0.228549,
		-0.269099, -0.946891, 0.176018,
		32.456554, 35.194672, 19.328527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082806, 35.938900, 19.559952>,  <32.644924, 35.857498, 19.205315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082806, 35.938900, 19.559952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.193493, 35.562386, 19.637321>,  <32.259907, 35.336479, 19.683743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.193493, 35.562386, 19.637321>,  <32.082806, 35.938900, 19.559952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193493, 35.562386, 19.637321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107103, 0.169818, 0.979638,
		-0.954963, -0.291804, -0.053822,
		0.276723, -0.941282, 0.193423,
		32.276508, 35.280003, 19.695349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820047, 35.827385, 20.253555>,  <32.082806, 35.938900, 19.559952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820047, 35.827385, 20.253555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.077217, 35.524147, 20.209858>,  <32.231518, 35.342205, 20.183640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.077217, 35.524147, 20.209858>,  <31.820047, 35.827385, 20.253555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077217, 35.524147, 20.209858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110455, -0.049369, 0.992654,
		-0.757923, -0.650269, 0.051995,
		0.642925, -0.758098, -0.109243,
		32.270096, 35.296719, 20.177084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614443, 35.220760, 20.726984>,  <31.820047, 35.827385, 20.253555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614443, 35.220760, 20.726984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.002285, 35.224457, 20.629187>,  <32.234989, 35.226673, 20.570509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.002285, 35.224457, 20.629187>,  <31.614443, 35.220760, 20.726984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002285, 35.224457, 20.629187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244587, -0.011150, 0.969563,
		0.006239, -0.999895, -0.013073,
		0.969607, 0.009246, -0.244492,
		32.293167, 35.227230, 20.555840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832855, 34.781261, 21.141663>,  <31.614443, 35.220760, 20.726984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832855, 34.781261, 21.141663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.153603, 34.981548, 21.011250>,  <32.346050, 35.101719, 20.933002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.153603, 34.981548, 21.011250>,  <31.832855, 34.781261, 21.141663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153603, 34.981548, 21.011250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198490, 0.291442, 0.935769,
		0.563571, -0.815076, 0.134311,
		0.801866, 0.500713, -0.326032,
		32.394161, 35.131763, 20.913441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469429, 34.497669, 21.458658>,  <31.832855, 34.781261, 21.141663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469429, 34.497669, 21.458658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.579136, 34.866482, 21.349386>,  <32.644962, 35.087769, 21.283823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.579136, 34.866482, 21.349386>,  <32.469429, 34.497669, 21.458658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579136, 34.866482, 21.349386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530845, 0.091705, 0.842493,
		0.801860, -0.376086, -0.464306,
		0.274270, 0.922036, -0.273178,
		32.661419, 35.143093, 21.267433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250675, 34.484596, 21.550261>,  <32.469429, 34.497669, 21.458658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250675, 34.484596, 21.550261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.104076, 34.856709, 21.543776>,  <33.016117, 35.079975, 21.539885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.104076, 34.856709, 21.543776>,  <33.250675, 34.484596, 21.550261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104076, 34.856709, 21.543776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600702, 0.249892, 0.759415,
		0.710518, 0.268586, -0.650404,
		-0.366499, 0.930277, -0.016213,
		32.994125, 35.135792, 21.538912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819553, 34.852558, 21.588060>,  <33.250675, 34.484596, 21.550261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819553, 34.852558, 21.588060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.526924, 35.101017, 21.700468>,  <33.351345, 35.250092, 21.767914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.526924, 35.101017, 21.700468>,  <33.819553, 34.852558, 21.588060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526924, 35.101017, 21.700468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527346, 0.254319, 0.810696,
		0.432093, 0.741280, -0.513614,
		-0.731575, 0.621148, 0.281021,
		33.307453, 35.287361, 21.784775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159096, 35.536205, 21.756094>,  <33.819553, 34.852558, 21.588060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159096, 35.536205, 21.756094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.796078, 35.512711, 21.922428>,  <33.578266, 35.498615, 22.022228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.796078, 35.512711, 21.922428>,  <34.159096, 35.536205, 21.756094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796078, 35.512711, 21.922428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392516, 0.233449, 0.889625,
		-0.149328, 0.970594, -0.188810,
		-0.907542, -0.058735, 0.415834,
		33.523815, 35.495090, 22.047178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134415, 35.968758, 22.235653>,  <34.159096, 35.536205, 21.756094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134415, 35.968758, 22.235653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.796913, 35.793610, 22.359812>,  <33.594410, 35.688522, 22.434307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.796913, 35.793610, 22.359812>,  <34.134415, 35.968758, 22.235653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796913, 35.793610, 22.359812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195725, 0.287473, 0.937577,
		-0.499768, 0.851838, -0.156855,
		-0.843756, -0.437871, 0.310396,
		33.543785, 35.662247, 22.452930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.228661, 35.035789, 17.558172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.158741, 34.645161, 17.608366>,  <29.116789, 34.410782, 17.638481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.158741, 34.645161, 17.608366>,  <29.228661, 35.035789, 17.558172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158741, 34.645161, 17.608366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202570, -0.089050, -0.975211,
		0.963541, -0.195883, -0.182259,
		-0.174797, -0.976576, 0.125483,
		29.106302, 34.352188, 17.646011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716761, 34.593655, 17.120312>,  <29.228661, 35.035789, 17.558172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716761, 34.593655, 17.120312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.390131, 34.373566, 17.190123>,  <29.194153, 34.241512, 17.232010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.390131, 34.373566, 17.190123>,  <29.716761, 34.593655, 17.120312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390131, 34.373566, 17.190123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173013, -0.055157, -0.983374,
		0.550701, -0.833195, -0.050155,
		-0.816576, -0.550222, 0.174528,
		29.145159, 34.208500, 17.242481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755854, 33.999767, 16.672092>,  <29.716761, 34.593655, 17.120312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755854, 33.999767, 16.672092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.368298, 34.033260, 16.765253>,  <29.135765, 34.053356, 16.821150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.368298, 34.033260, 16.765253>,  <29.755854, 33.999767, 16.672092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368298, 34.033260, 16.765253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246569, -0.245163, -0.937603,
		-0.021403, -0.965860, 0.258180,
		-0.968889, 0.083727, 0.232904,
		29.077631, 34.058380, 16.835125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513071, 33.455971, 16.392059>,  <29.755854, 33.999767, 16.672092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513071, 33.455971, 16.392059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.191254, 33.685787, 16.452206>,  <28.998163, 33.823677, 16.488295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.191254, 33.685787, 16.452206>,  <29.513071, 33.455971, 16.392059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191254, 33.685787, 16.452206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251667, -0.100490, -0.962583,
		-0.537938, -0.812280, 0.225442,
		-0.804541, 0.574546, 0.150367,
		28.949892, 33.858150, 16.497316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905254, 33.123646, 16.180922>,  <29.513071, 33.455971, 16.392059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905254, 33.123646, 16.180922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.835218, 33.516960, 16.160969>,  <28.793198, 33.752949, 16.148998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.835218, 33.516960, 16.160969>,  <28.905254, 33.123646, 16.180922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835218, 33.516960, 16.160969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375920, -0.113591, -0.919664,
		-0.909960, -0.142274, 0.389527,
		-0.175091, 0.983288, -0.049880,
		28.782692, 33.811947, 16.146006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193506, 33.206116, 15.965078>,  <28.905254, 33.123646, 16.180922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193506, 33.206116, 15.965078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.296562, 33.582973, 15.879307>,  <28.358397, 33.809090, 15.827844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.296562, 33.582973, 15.879307>,  <28.193506, 33.206116, 15.965078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296562, 33.582973, 15.879307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440798, -0.082878, -0.893772,
		-0.859836, 0.324792, 0.393944,
		0.257640, 0.942147, -0.214429,
		28.373854, 33.865616, 15.814978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518633, 33.446613, 15.630863>,  <28.193506, 33.206116, 15.965078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518633, 33.446613, 15.630863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.844961, 33.653336, 15.527058>,  <28.040758, 33.777370, 15.464774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.844961, 33.653336, 15.527058>,  <27.518633, 33.446613, 15.630863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844961, 33.653336, 15.527058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360768, 0.104098, -0.926828,
		-0.451975, 0.849750, 0.271373,
		0.815822, 0.516805, -0.259513,
		28.089708, 33.808376, 15.449203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300461, 34.053623, 15.210414>,  <27.518633, 33.446613, 15.630863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300461, 34.053623, 15.210414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.685717, 34.061649, 15.103113>,  <27.916870, 34.066467, 15.038733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.685717, 34.061649, 15.103113>,  <27.300461, 34.053623, 15.210414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685717, 34.061649, 15.103113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264172, 0.258689, -0.929136,
		0.050746, 0.965752, 0.254455,
		0.963140, 0.020070, -0.268252,
		27.974659, 34.067669, 15.022637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337780, 34.690411, 14.743206>,  <27.300461, 34.053623, 15.210414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337780, 34.690411, 14.743206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.659636, 34.459538, 14.687458>,  <27.852749, 34.321014, 14.654010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.659636, 34.459538, 14.687458>,  <27.337780, 34.690411, 14.743206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659636, 34.459538, 14.687458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086133, 0.118776, -0.989178,
		0.587486, 0.807934, 0.045858,
		0.804637, -0.577179, -0.139369,
		27.901026, 34.286385, 14.645647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771608, 35.059723, 14.258599>,  <27.337780, 34.690411, 14.743206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771608, 35.059723, 14.258599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.865137, 34.674068, 14.208382>,  <27.921255, 34.442677, 14.178251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.865137, 34.674068, 14.208382>,  <27.771608, 35.059723, 14.258599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865137, 34.674068, 14.208382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162073, 0.088667, -0.982787,
		0.958676, 0.250147, -0.135528,
		0.233824, -0.964139, -0.125545,
		27.935284, 34.384827, 14.170718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972460, 35.057568, 13.559770>,  <27.771608, 35.059723, 14.258599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972460, 35.057568, 13.559770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.976404, 34.664085, 13.631584>,  <27.978771, 34.427998, 13.674673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.976404, 34.664085, 13.631584>,  <27.972460, 35.057568, 13.559770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976404, 34.664085, 13.631584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090696, -0.177925, -0.979856,
		0.995830, 0.025944, 0.087464,
		0.009859, -0.983702, 0.179536,
		27.979362, 34.368977, 13.685445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539747, 34.831367, 13.326456>,  <27.972460, 35.057568, 13.559770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539747, 34.831367, 13.326456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.266615, 34.539169, 13.322230>,  <28.102736, 34.363850, 13.319695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.266615, 34.539169, 13.322230>,  <28.539747, 34.831367, 13.326456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266615, 34.539169, 13.322230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119271, -0.097197, -0.988093,
		0.720774, -0.675962, 0.153497,
		-0.682832, -0.730499, -0.010565,
		28.061766, 34.320019, 13.319060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865002, 34.254105, 12.907786>,  <28.539747, 34.831367, 13.326456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865002, 34.254105, 12.907786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.466347, 34.231495, 12.931503>,  <28.227154, 34.217930, 12.945734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.466347, 34.231495, 12.931503>,  <28.865002, 34.254105, 12.907786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466347, 34.231495, 12.931503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053032, -0.106471, -0.992900,
		0.062437, -0.992708, 0.103115,
		-0.996639, -0.056525, 0.059293,
		28.167355, 34.214539, 12.949291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011215, 33.403973, 12.821941>,  <28.865002, 34.254105, 12.907786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011215, 33.403973, 12.821941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.814859, 33.616859, 13.097846>,  <28.697046, 33.744591, 13.263389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.814859, 33.616859, 13.097846>,  <29.011215, 33.403973, 12.821941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814859, 33.616859, 13.097846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153415, 0.726539, -0.669779,
		-0.857607, -0.434609, -0.275001,
		-0.490891, 0.532218, 0.689761,
		28.667591, 33.776524, 13.304774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660639, 33.213558, 12.604145>,  <29.011215, 33.403973, 12.821941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660639, 33.213558, 12.604145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.057184, 33.224113, 12.552758>,  <30.295111, 33.230446, 12.521926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.057184, 33.224113, 12.552758>,  <29.660639, 33.213558, 12.604145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057184, 33.224113, 12.552758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128118, 0.014537, 0.991652,
		0.028045, -0.999546, 0.011030,
		0.991363, 0.026398, -0.128468,
		30.354593, 33.232029, 12.514218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929594, 32.765835, 13.130220>,  <29.660639, 33.213558, 12.604145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929594, 32.765835, 13.130220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.277512, 32.942677, 13.042583>,  <30.486261, 33.048782, 12.990000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.277512, 32.942677, 13.042583>,  <29.929594, 32.765835, 13.130220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277512, 32.942677, 13.042583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268085, -0.050655, 0.962063,
		0.414233, -0.895533, -0.162581,
		0.869794, 0.442104, -0.219095,
		30.538450, 33.075306, 12.976854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472099, 32.408920, 13.491913>,  <29.929594, 32.765835, 13.130220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472099, 32.408920, 13.491913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.583759, 32.788013, 13.430108>,  <30.650755, 33.015469, 13.393025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.583759, 32.788013, 13.430108>,  <30.472099, 32.408920, 13.491913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583759, 32.788013, 13.430108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330108, 0.056386, 0.942258,
		0.901722, -0.314038, -0.297115,
		0.279152, 0.947735, -0.154511,
		30.667505, 33.072334, 13.383755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089680, 32.482166, 13.925340>,  <30.472099, 32.408920, 13.491913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089680, 32.482166, 13.925340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.027805, 32.869286, 13.845901>,  <30.990681, 33.101559, 13.798239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.027805, 32.869286, 13.845901>,  <31.089680, 32.482166, 13.925340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027805, 32.869286, 13.845901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322954, 0.239504, 0.915609,
		0.933688, 0.077495, -0.349602,
		-0.154686, 0.967798, -0.198595,
		30.981400, 33.159626, 13.786323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544697, 32.827969, 14.264978>,  <31.089680, 32.482166, 13.925340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544697, 32.827969, 14.264978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.290895, 33.128754, 14.193466>,  <31.138615, 33.309223, 14.150559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.290895, 33.128754, 14.193466>,  <31.544697, 32.827969, 14.264978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290895, 33.128754, 14.193466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213535, 0.392842, 0.894470,
		0.742839, 0.529367, -0.409830,
		-0.634502, 0.751961, -0.178780,
		31.100544, 33.354343, 14.139832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897127, 33.454605, 14.181477>,  <31.544697, 32.827969, 14.264978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897127, 33.454605, 14.181477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.525406, 33.543251, 14.299650>,  <31.302372, 33.596439, 14.370554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.525406, 33.543251, 14.299650>,  <31.897127, 33.454605, 14.181477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525406, 33.543251, 14.299650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366066, 0.446871, 0.816273,
		0.048874, 0.866715, -0.496404,
		-0.929305, 0.221611, 0.295434,
		31.246614, 33.609734, 14.388281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984678, 34.112389, 14.445394>,  <31.897127, 33.454605, 14.181477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984678, 34.112389, 14.445394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652649, 33.977261, 14.622868>,  <31.453432, 33.896183, 14.729352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652649, 33.977261, 14.622868>,  <31.984678, 34.112389, 14.445394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652649, 33.977261, 14.622868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364735, 0.272962, 0.890202,
		-0.421838, 0.900760, -0.103363,
		-0.830073, -0.337821, 0.443684,
		31.403627, 33.875916, 14.755973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851175, 34.613663, 15.053676>,  <31.984678, 34.112389, 14.445394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851175, 34.613663, 15.053676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.656700, 34.270699, 15.121160>,  <31.540014, 34.064919, 15.161650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.656700, 34.270699, 15.121160>,  <31.851175, 34.613663, 15.053676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656700, 34.270699, 15.121160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211113, 0.072097, 0.974799,
		-0.847968, 0.509555, 0.145958,
		-0.486190, -0.857413, 0.168709,
		31.510843, 34.013474, 15.171772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484957, 34.916210, 15.627130>,  <31.851175, 34.613663, 15.053676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484957, 34.916210, 15.627130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.433531, 34.520226, 15.650616>,  <31.402676, 34.282635, 15.664707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.433531, 34.520226, 15.650616>,  <31.484957, 34.916210, 15.627130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433531, 34.520226, 15.650616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185519, 0.034152, 0.982047,
		-0.974194, 0.137152, 0.179266,
		-0.128567, -0.989961, 0.058714,
		31.394960, 34.223236, 15.668230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980221, 34.756866, 16.165224>,  <31.484957, 34.916210, 15.627130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980221, 34.756866, 16.165224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.230673, 34.447414, 16.126310>,  <31.380943, 34.261745, 16.102962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.230673, 34.447414, 16.126310>,  <30.980221, 34.756866, 16.165224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230673, 34.447414, 16.126310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284240, 0.110285, 0.952389,
		-0.726066, -0.623969, 0.288949,
		0.626128, -0.773628, -0.097283,
		31.418510, 34.215324, 16.097126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996605, 34.409561, 16.769247>,  <30.980221, 34.756866, 16.165224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996605, 34.409561, 16.769247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.334297, 34.262859, 16.612904>,  <31.536913, 34.174839, 16.519096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.334297, 34.262859, 16.612904>,  <30.996605, 34.409561, 16.769247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334297, 34.262859, 16.612904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419492, -0.001799, 0.907757,
		-0.333623, -0.930318, 0.152330,
		0.844229, -0.366750, -0.390861,
		31.587566, 34.152836, 16.495646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132780, 33.829559, 17.188803>,  <30.996605, 34.409561, 16.769247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132780, 33.829559, 17.188803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.483835, 33.916237, 17.017784>,  <31.694469, 33.968243, 16.915173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.483835, 33.916237, 17.017784>,  <31.132780, 33.829559, 17.188803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483835, 33.916237, 17.017784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436143, 0.008961, 0.899833,
		0.198816, -0.976200, -0.086643,
		0.877640, 0.216689, -0.427544,
		31.747128, 33.981243, 16.889521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536226, 33.385181, 17.494715>,  <31.132780, 33.829559, 17.188803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536226, 33.385181, 17.494715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793669, 33.651859, 17.344358>,  <31.948133, 33.811867, 17.254145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793669, 33.651859, 17.344358>,  <31.536226, 33.385181, 17.494715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793669, 33.651859, 17.344358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249047, 0.281975, 0.926534,
		0.723705, -0.689936, 0.015443,
		0.643604, 0.666692, -0.375893,
		31.986750, 33.851868, 17.231590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092888, 33.354374, 17.946455>,  <31.536226, 33.385181, 17.494715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092888, 33.354374, 17.946455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187618, 33.711681, 17.793621>,  <32.244457, 33.926064, 17.701921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187618, 33.711681, 17.793621>,  <32.092888, 33.354374, 17.946455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187618, 33.711681, 17.793621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267194, 0.318224, 0.909583,
		0.934088, -0.317504, -0.163311,
		0.236827, 0.893266, -0.382084,
		32.258667, 33.979660, 17.678995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554592, 32.943886, 17.612785>,  <32.092888, 33.354374, 17.946455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554592, 32.943886, 17.612785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.710964, 32.600662, 17.745993>,  <32.804787, 32.394726, 17.825916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.710964, 32.600662, 17.745993>,  <32.554592, 32.943886, 17.612785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710964, 32.600662, 17.745993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182880, -0.427012, -0.885560,
		0.902068, 0.285293, -0.323855,
		0.390934, -0.858061, 0.333019,
		32.828243, 32.343243, 17.845898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979408, 32.667465, 17.083166>,  <32.554592, 32.943886, 17.612785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979408, 32.667465, 17.083166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917397, 32.335598, 17.297688>,  <32.880188, 32.136478, 17.426401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917397, 32.335598, 17.297688>,  <32.979408, 32.667465, 17.083166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917397, 32.335598, 17.297688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248680, -0.492615, -0.833960,
		0.956099, -0.262655, -0.129952,
		-0.155028, -0.829664, 0.536305,
		32.870888, 32.086700, 17.458580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325035, 32.097683, 16.677011>,  <32.979408, 32.667465, 17.083166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325035, 32.097683, 16.677011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087212, 31.911264, 16.939098>,  <32.944519, 31.799414, 17.096350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087212, 31.911264, 16.939098>,  <33.325035, 32.097683, 16.677011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087212, 31.911264, 16.939098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303176, -0.624803, -0.719517,
		0.744707, -0.626438, 0.230186,
		-0.594555, -0.466043, 0.655216,
		32.908844, 31.771452, 17.135664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557354, 31.542683, 16.614775>,  <33.325035, 32.097683, 16.677011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557354, 31.542683, 16.614775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.183140, 31.501209, 16.749842>,  <32.958611, 31.476326, 16.830881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.183140, 31.501209, 16.749842>,  <33.557354, 31.542683, 16.614775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183140, 31.501209, 16.749842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204261, -0.621103, -0.756643,
		0.288177, -0.776840, 0.559887,
		-0.935538, -0.103684, 0.337665,
		32.902477, 31.470104, 16.851141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552788, 30.842354, 16.753548>,  <33.557354, 31.542683, 16.614775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552788, 30.842354, 16.753548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.182045, 30.988008, 16.717010>,  <32.959599, 31.075401, 16.695087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.182045, 30.988008, 16.717010>,  <33.552788, 30.842354, 16.753548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182045, 30.988008, 16.717010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120097, -0.518118, -0.846835,
		-0.355687, -0.773925, 0.523953,
		-0.926857, 0.364133, -0.091341,
		32.903988, 31.097248, 16.689608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221241, 30.306944, 16.404808>,  <33.552788, 30.842354, 16.753548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221241, 30.306944, 16.404808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977058, 30.613644, 16.325380>,  <32.830547, 30.797665, 16.277723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977058, 30.613644, 16.325380>,  <33.221241, 30.306944, 16.404808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977058, 30.613644, 16.325380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204036, -0.394481, -0.895965,
		-0.765316, -0.506435, 0.397260,
		-0.610460, 0.766752, -0.198572,
		32.793919, 30.843670, 16.265808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582470, 30.042845, 16.149834>,  <33.221241, 30.306944, 16.404808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582470, 30.042845, 16.149834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.583851, 30.418566, 16.012604>,  <32.584679, 30.643997, 15.930265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.583851, 30.418566, 16.012604>,  <32.582470, 30.042845, 16.149834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583851, 30.418566, 16.012604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190765, -0.336159, -0.922283,
		-0.981630, 0.068633, 0.178025,
		0.003454, 0.939301, -0.343077,
		32.584888, 30.700356, 15.909680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966190, 29.617941, 16.207668>,  <32.582470, 30.042845, 16.149834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966190, 29.617941, 16.207668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.876286, 29.228212, 16.202353>,  <31.822342, 28.994375, 16.199163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.876286, 29.228212, 16.202353>,  <31.966190, 29.617941, 16.207668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876286, 29.228212, 16.202353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070201, -0.029792, 0.997088,
		-0.971881, 0.223175, 0.075095,
		-0.224763, -0.974323, -0.013287,
		31.808857, 28.935915, 16.198366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547869, 29.484438, 16.723055>,  <31.966190, 29.617941, 16.207668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547869, 29.484438, 16.723055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.686392, 29.115784, 16.653019>,  <31.769506, 28.894590, 16.610998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.686392, 29.115784, 16.653019>,  <31.547869, 29.484438, 16.723055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686392, 29.115784, 16.653019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236379, -0.094889, 0.967017,
		-0.907852, -0.376274, 0.184994,
		0.346309, -0.921637, -0.175088,
		31.790285, 28.839293, 16.600492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231058, 28.999584, 17.176783>,  <31.547869, 29.484438, 16.723055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231058, 28.999584, 17.176783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577431, 28.825130, 17.078840>,  <31.785254, 28.720459, 17.020075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577431, 28.825130, 17.078840>,  <31.231058, 28.999584, 17.176783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577431, 28.825130, 17.078840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223104, -0.101338, 0.969513,
		-0.447651, -0.894157, 0.009552,
		0.865929, -0.436135, -0.244853,
		31.837210, 28.694290, 17.005384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221443, 28.414003, 17.554361>,  <31.231058, 28.999584, 17.176783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221443, 28.414003, 17.554361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.604210, 28.453175, 17.445019>,  <31.833870, 28.476677, 17.379414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.604210, 28.453175, 17.445019>,  <31.221443, 28.414003, 17.554361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604210, 28.453175, 17.445019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280845, -0.072992, 0.956973,
		0.073764, -0.992513, -0.097350,
		0.956914, 0.097931, -0.273358,
		31.891285, 28.482553, 17.363010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599241, 28.027328, 18.168072>,  <31.221443, 28.414003, 17.554361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599241, 28.027328, 18.168072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898407, 28.201782, 17.967907>,  <32.077908, 28.306454, 17.847809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898407, 28.201782, 17.967907>,  <31.599241, 28.027328, 18.168072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898407, 28.201782, 17.967907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515467, 0.093388, 0.851805,
		0.418234, -0.895022, -0.154967,
		0.747913, 0.436134, -0.500413,
		32.122780, 28.332623, 17.817783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117588, 27.739912, 18.493666>,  <31.599241, 28.027328, 18.168072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117588, 27.739912, 18.493666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.252769, 28.082516, 18.337624>,  <32.333878, 28.288078, 18.243998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.252769, 28.082516, 18.337624>,  <32.117588, 27.739912, 18.493666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252769, 28.082516, 18.337624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306435, 0.291770, 0.906073,
		0.889880, -0.425749, -0.163861,
		0.337950, 0.856509, -0.390104,
		32.354156, 28.339468, 18.220592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926514, 27.786013, 18.591606>,  <32.117588, 27.739912, 18.493666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926514, 27.786013, 18.591606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.736824, 28.136511, 18.557421>,  <32.623009, 28.346809, 18.536909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.736824, 28.136511, 18.557421>,  <32.926514, 27.786013, 18.591606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736824, 28.136511, 18.557421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202339, 0.202948, 0.958056,
		0.856836, 0.437044, -0.273542,
		-0.474227, 0.876245, -0.085462,
		32.594555, 28.399384, 18.531782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.306164, 30.890999, 13.701474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.553976, 31.203257, 13.668552>,  <26.702663, 31.390612, 13.648800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.553976, 31.203257, 13.668552>,  <26.306164, 30.890999, 13.701474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553976, 31.203257, 13.668552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098377, 0.026808, 0.994788,
		0.778783, -0.624399, -0.060189,
		0.619531, 0.780645, -0.082304,
		26.739836, 31.437450, 13.643861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968981, 30.767624, 14.014509>,  <26.306164, 30.890999, 13.701474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968981, 30.767624, 14.014509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.931091, 31.165817, 14.017142>,  <26.908358, 31.404734, 14.018723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.931091, 31.165817, 14.017142>,  <26.968981, 30.767624, 14.014509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931091, 31.165817, 14.017142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121499, 0.004997, 0.992579,
		0.988062, 0.094818, -0.121424,
		-0.094721, 0.995482, 0.006583,
		26.902676, 31.464462, 14.019117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615534, 31.059381, 14.287344>,  <26.968981, 30.767624, 14.014509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615534, 31.059381, 14.287344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.321150, 31.326071, 14.334412>,  <27.144520, 31.486084, 14.362652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.321150, 31.326071, 14.334412>,  <27.615534, 31.059381, 14.287344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321150, 31.326071, 14.334412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244393, 0.099540, 0.964554,
		0.631376, 0.738630, -0.236200,
		-0.735960, 0.666722, 0.117668,
		27.100363, 31.526087, 14.369712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957727, 31.646563, 14.662150>,  <27.615534, 31.059381, 14.287344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957727, 31.646563, 14.662150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.563656, 31.686413, 14.718001>,  <27.327213, 31.710323, 14.751513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.563656, 31.686413, 14.718001>,  <27.957727, 31.646563, 14.662150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563656, 31.686413, 14.718001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147903, 0.081139, 0.985668,
		0.086868, 0.991711, -0.094671,
		-0.985180, 0.099625, 0.139628,
		27.268103, 31.716301, 14.759890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901421, 32.040646, 15.203744>,  <27.957727, 31.646563, 14.662150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901421, 32.040646, 15.203744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.518574, 31.925694, 15.189080>,  <27.288866, 31.856724, 15.180283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.518574, 31.925694, 15.189080>,  <27.901421, 32.040646, 15.203744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518574, 31.925694, 15.189080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069350, 0.104416, 0.992113,
		-0.281282, 0.952109, -0.119867,
		-0.957116, -0.287376, -0.036658,
		27.231440, 31.839481, 15.178082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584616, 32.505562, 15.671405>,  <27.901421, 32.040646, 15.203744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584616, 32.505562, 15.671405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.356792, 32.177021, 15.658834>,  <27.220098, 31.979897, 15.651292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.356792, 32.177021, 15.658834>,  <27.584616, 32.505562, 15.671405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356792, 32.177021, 15.658834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215586, 0.112383, 0.969997,
		-0.793173, 0.559246, -0.241080,
		-0.569560, -0.821349, -0.031426,
		27.185925, 31.930616, 15.649406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049372, 32.691017, 16.179482>,  <27.584616, 32.505562, 15.671405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049372, 32.691017, 16.179482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.043585, 32.293537, 16.135038>,  <27.040112, 32.055050, 16.108374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.043585, 32.293537, 16.135038>,  <27.049372, 32.691017, 16.179482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043585, 32.293537, 16.135038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179553, -0.106729, 0.977942,
		-0.983642, 0.034100, -0.176878,
		-0.014470, -0.993703, -0.111106,
		27.039244, 31.995426, 16.101707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662149, 32.440269, 16.674526>,  <27.049372, 32.691017, 16.179482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662149, 32.440269, 16.674526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.827435, 32.088364, 16.580488>,  <26.926605, 31.877220, 16.524065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.827435, 32.088364, 16.580488>,  <26.662149, 32.440269, 16.674526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827435, 32.088364, 16.580488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028156, -0.245701, 0.968937,
		-0.910199, -0.406997, -0.076756,
		0.413214, -0.879764, -0.235096,
		26.951399, 31.824434, 16.509960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.250597, 31.882927, 17.121326>,  <26.662149, 32.440269, 16.674526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.250597, 31.882927, 17.121326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.619087, 31.769897, 17.014370>,  <26.840181, 31.702080, 16.950195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.619087, 31.769897, 17.014370>,  <26.250597, 31.882927, 17.121326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619087, 31.769897, 17.014370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213825, -0.206420, 0.954814,
		-0.325001, -0.936772, -0.129737,
		0.921224, -0.282575, -0.267392,
		26.895454, 31.685125, 16.934153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423321, 31.238859, 17.496517>,  <26.250597, 31.882927, 17.121326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423321, 31.238859, 17.496517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.784168, 31.367933, 17.381935>,  <27.000677, 31.445377, 17.313187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.784168, 31.367933, 17.381935>,  <26.423321, 31.238859, 17.496517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784168, 31.367933, 17.381935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389983, -0.325660, 0.861312,
		0.184647, -0.888718, -0.419626,
		0.902119, 0.322686, -0.286453,
		27.054804, 31.464739, 17.296000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834044, 30.845490, 17.841448>,  <26.423321, 31.238859, 17.496517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834044, 30.845490, 17.841448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059916, 31.167454, 17.768497>,  <27.195438, 31.360632, 17.724728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059916, 31.167454, 17.768497>,  <26.834044, 30.845490, 17.841448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059916, 31.167454, 17.768497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358241, -0.039977, 0.932773,
		0.743507, -0.592050, -0.310926,
		0.564678, 0.804909, -0.182374,
		27.229319, 31.408926, 17.713785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512476, 30.661081, 18.097729>,  <26.834044, 30.845490, 17.841448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512476, 30.661081, 18.097729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472984, 31.057980, 18.067526>,  <27.449289, 31.296118, 18.049404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472984, 31.057980, 18.067526>,  <27.512476, 30.661081, 18.097729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472984, 31.057980, 18.067526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382250, 0.107870, 0.917741,
		0.918770, 0.061746, -0.389936,
		-0.098729, 0.992246, -0.075505,
		27.443365, 31.355654, 18.044874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264891, 30.690218, 17.876053>,  <27.512476, 30.661081, 18.097729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264891, 30.690218, 17.876053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478792, 30.352945, 17.853842>,  <28.607134, 30.150581, 17.840515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478792, 30.352945, 17.853842>,  <28.264891, 30.690218, 17.876053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478792, 30.352945, 17.853842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069054, 0.109102, -0.991629,
		0.842180, 0.526445, 0.116568,
		0.534756, -0.843180, -0.055530,
		28.639219, 30.099991, 17.837183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880592, 30.766487, 17.358395>,  <28.264891, 30.690218, 17.876053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880592, 30.766487, 17.358395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.788055, 30.377363, 17.362736>,  <28.732533, 30.143888, 17.365341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.788055, 30.377363, 17.362736>,  <28.880592, 30.766487, 17.358395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788055, 30.377363, 17.362736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096691, -0.034092, -0.994731,
		0.968056, -0.229074, 0.101949,
		-0.231342, -0.972812, 0.010853,
		28.718653, 30.085520, 17.365992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402040, 30.459532, 16.878904>,  <28.880592, 30.766487, 17.358395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402040, 30.459532, 16.878904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123346, 30.178011, 16.934362>,  <28.956129, 30.009098, 16.967638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123346, 30.178011, 16.934362>,  <29.402040, 30.459532, 16.878904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123346, 30.178011, 16.934362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060725, -0.250458, -0.966221,
		0.714752, -0.664782, 0.217242,
		-0.696737, -0.703800, 0.138646,
		28.914326, 29.966871, 16.975956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656454, 29.833174, 16.618135>,  <29.402040, 30.459532, 16.878904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656454, 29.833174, 16.618135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262396, 29.765306, 16.628706>,  <29.025961, 29.724586, 16.635048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262396, 29.765306, 16.628706>,  <29.656454, 29.833174, 16.618135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262396, 29.765306, 16.628706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038758, -0.369647, -0.928364,
		0.167284, -0.913550, 0.370733,
		-0.985147, -0.169669, 0.026429,
		28.966852, 29.714405, 16.636635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585117, 29.132917, 16.296206>,  <29.656454, 29.833174, 16.618135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585117, 29.132917, 16.296206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207794, 29.263411, 16.271736>,  <28.981400, 29.341707, 16.257055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207794, 29.263411, 16.271736>,  <29.585117, 29.132917, 16.296206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207794, 29.263411, 16.271736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087900, -0.423247, -0.901740,
		-0.320069, -0.845241, 0.427928,
		-0.943307, 0.326234, -0.061172,
		28.924801, 29.361280, 16.253386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189777, 28.604891, 16.186125>,  <29.585117, 29.132917, 16.296206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189777, 28.604891, 16.186125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.998920, 28.921232, 16.032820>,  <28.884407, 29.111036, 15.940837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.998920, 28.921232, 16.032820>,  <29.189777, 28.604891, 16.186125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998920, 28.921232, 16.032820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055210, -0.462220, -0.885045,
		-0.877091, -0.401131, 0.264207,
		-0.477141, 0.790852, -0.383263,
		28.855778, 29.158487, 15.917841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749027, 28.361696, 15.665205>,  <29.189777, 28.604891, 16.186125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749027, 28.361696, 15.665205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758198, 28.750540, 15.571846>,  <28.763700, 28.983847, 15.515831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758198, 28.750540, 15.571846>,  <28.749027, 28.361696, 15.665205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758198, 28.750540, 15.571846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123026, -0.228941, -0.965635,
		-0.992138, 0.050852, 0.114346,
		0.022926, 0.972111, -0.233397,
		28.765076, 29.042173, 15.501827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172266, 28.477943, 15.282979>,  <28.749027, 28.361696, 15.665205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172266, 28.477943, 15.282979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412157, 28.787603, 15.201966>,  <28.556091, 28.973398, 15.153358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412157, 28.787603, 15.201966>,  <28.172266, 28.477943, 15.282979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412157, 28.787603, 15.201966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142817, -0.352589, -0.924816,
		-0.787355, 0.525715, -0.322019,
		0.599730, 0.774148, -0.202532,
		28.592075, 29.019848, 15.141207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957628, 28.568150, 14.574335>,  <28.172266, 28.477943, 15.282979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957628, 28.568150, 14.574335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305704, 28.752617, 14.643728>,  <28.514549, 28.863298, 14.685364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305704, 28.752617, 14.643728>,  <27.957628, 28.568150, 14.574335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305704, 28.752617, 14.643728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360709, -0.356398, -0.861899,
		-0.335652, 0.812591, -0.476481,
		0.870188, 0.461169, 0.173483,
		28.566761, 28.890968, 14.695773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074594, 28.934649, 14.015315>,  <27.957628, 28.568150, 14.574335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074594, 28.934649, 14.015315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.435190, 28.871811, 14.176628>,  <28.651548, 28.834108, 14.273417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.435190, 28.871811, 14.176628>,  <28.074594, 28.934649, 14.015315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435190, 28.871811, 14.176628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303468, -0.434929, -0.847787,
		0.308582, 0.886656, -0.344412,
		0.901490, -0.157093, 0.403283,
		28.705637, 28.824682, 14.297613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569246, 29.248360, 13.583575>,  <28.074594, 28.934649, 14.015315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569246, 29.248360, 13.583575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.788465, 28.990974, 13.797340>,  <28.919998, 28.836544, 13.925600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.788465, 28.990974, 13.797340>,  <28.569246, 29.248360, 13.583575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788465, 28.990974, 13.797340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548437, -0.205969, -0.810428,
		0.631553, 0.737247, 0.240017,
		0.548050, -0.643463, 0.534413,
		28.952881, 28.797935, 13.957664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270794, 29.445560, 13.537283>,  <28.569246, 29.248360, 13.583575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270794, 29.445560, 13.537283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287542, 29.061567, 13.648044>,  <29.297592, 28.831171, 13.714500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287542, 29.061567, 13.648044>,  <29.270794, 29.445560, 13.537283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287542, 29.061567, 13.648044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563420, -0.206189, -0.800027,
		0.825109, 0.189511, 0.532242,
		0.041871, -0.959985, 0.276903,
		29.300104, 28.773571, 13.731114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902035, 29.176250, 13.259212>,  <29.270794, 29.445560, 13.537283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902035, 29.176250, 13.259212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.733625, 28.825211, 13.350916>,  <29.632580, 28.614588, 13.405938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.733625, 28.825211, 13.350916>,  <29.902035, 29.176250, 13.259212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733625, 28.825211, 13.350916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434276, -0.416934, -0.798480,
		0.796332, -0.236616, 0.556659,
		-0.421023, -0.877598, 0.229261,
		29.607319, 28.561932, 13.419694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408852, 28.713194, 13.268637>,  <29.902035, 29.176250, 13.259212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408852, 28.713194, 13.268637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068419, 28.513037, 13.205050>,  <29.864159, 28.392942, 13.166899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068419, 28.513037, 13.205050>,  <30.408852, 28.713194, 13.268637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068419, 28.513037, 13.205050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448950, -0.536607, -0.714491,
		0.272223, -0.679457, 0.681346,
		-0.851081, -0.500391, -0.158966,
		29.813095, 28.362919, 13.157361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115122, 28.148197, 13.598830>,  <30.408852, 28.713194, 13.268637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115122, 28.148197, 13.598830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489368, 28.254932, 13.506383>,  <30.713917, 28.318974, 13.450914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489368, 28.254932, 13.506383>,  <30.115122, 28.148197, 13.598830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489368, 28.254932, 13.506383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246267, -0.024290, 0.968898,
		0.252927, -0.963435, -0.088440,
		0.935618, 0.266840, -0.231119,
		30.770054, 28.334984, 13.437047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476562, 27.706526, 13.984167>,  <30.115122, 28.148197, 13.598830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476562, 27.706526, 13.984167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.758814, 27.982197, 13.918293>,  <30.928165, 28.147600, 13.878768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.758814, 27.982197, 13.918293>,  <30.476562, 27.706526, 13.984167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758814, 27.982197, 13.918293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194593, 0.035005, 0.980259,
		0.681339, -0.723745, -0.109409,
		0.705628, 0.689179, -0.164686,
		30.970503, 28.188950, 13.868887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106131, 27.513758, 14.368650>,  <30.476562, 27.706526, 13.984167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106131, 27.513758, 14.368650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144619, 27.906404, 14.302722>,  <31.167711, 28.141993, 14.263165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144619, 27.906404, 14.302722>,  <31.106131, 27.513758, 14.368650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144619, 27.906404, 14.302722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220100, 0.140507, 0.965305,
		0.970720, -0.129160, -0.202535,
		0.096221, 0.981619, -0.164821,
		31.173485, 28.200890, 14.253276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771523, 27.659178, 14.618671>,  <31.106131, 27.513758, 14.368650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771523, 27.659178, 14.618671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.600134, 28.019144, 14.586262>,  <31.497301, 28.235123, 14.566816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.600134, 28.019144, 14.586262>,  <31.771523, 27.659178, 14.618671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600134, 28.019144, 14.586262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275885, 0.215689, 0.936678,
		0.860406, 0.378988, -0.340690,
		-0.428472, 0.899915, -0.081023,
		31.471592, 28.289118, 14.561954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315159, 28.083107, 14.915186>,  <31.771523, 27.659178, 14.618671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315159, 28.083107, 14.915186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.970171, 28.285305, 14.925180>,  <31.763180, 28.406624, 14.931177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.970171, 28.285305, 14.925180>,  <32.315159, 28.083107, 14.915186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970171, 28.285305, 14.925180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187831, 0.273848, 0.943253,
		0.469969, 0.818217, -0.331133,
		-0.862466, 0.505497, 0.024987,
		31.711432, 28.436954, 14.932676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516735, 28.758055, 15.077413>,  <32.315159, 28.083107, 14.915186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516735, 28.758055, 15.077413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.143421, 28.700270, 15.208935>,  <31.919434, 28.665598, 15.287848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.143421, 28.700270, 15.208935>,  <32.516735, 28.758055, 15.077413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143421, 28.700270, 15.208935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295926, 0.209425, 0.931971,
		-0.203497, 0.967094, -0.152702,
		-0.933283, -0.144465, 0.328805,
		31.863436, 28.656931, 15.307576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428108, 29.299667, 15.624434>,  <32.516735, 28.758055, 15.077413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428108, 29.299667, 15.624434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.139252, 29.029226, 15.682949>,  <31.965939, 28.866962, 15.718058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.139252, 29.029226, 15.682949>,  <32.428108, 29.299667, 15.624434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139252, 29.029226, 15.682949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117101, 0.088939, 0.989129,
		-0.681763, 0.731420, 0.014945,
		-0.722140, -0.676102, 0.146285,
		31.922609, 28.826395, 15.726834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128212, 30.031488, 15.591309>,  <32.428108, 29.299667, 15.624434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128212, 30.031488, 15.591309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.305996, 30.384832, 15.531814>,  <32.412666, 30.596840, 15.496117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.305996, 30.384832, 15.531814>,  <32.128212, 30.031488, 15.591309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305996, 30.384832, 15.531814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053803, -0.139416, -0.988771,
		-0.894179, 0.447476, -0.014438,
		0.444464, 0.883362, -0.148738,
		32.439335, 30.649841, 15.487192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738285, 30.483988, 15.082393>,  <32.128212, 30.031488, 15.591309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738285, 30.483988, 15.082393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.117344, 30.611694, 15.084869>,  <32.344780, 30.688318, 15.086355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.117344, 30.611694, 15.084869>,  <31.738285, 30.483988, 15.082393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117344, 30.611694, 15.084869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002918, 0.010734, -0.999938,
		-0.319312, 0.947605, 0.009240,
		0.947645, 0.319265, 0.006192,
		32.401638, 30.707474, 15.086727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714321, 31.056004, 14.639497>,  <31.738285, 30.483988, 15.082393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714321, 31.056004, 14.639497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.107449, 30.984749, 14.620153>,  <32.343327, 30.941996, 14.608547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.107449, 30.984749, 14.620153>,  <31.714321, 31.056004, 14.639497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107449, 30.984749, 14.620153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003218, 0.245417, -0.969412,
		0.184554, 0.952911, 0.240626,
		0.982817, -0.178135, -0.048359,
		32.402294, 30.931309, 14.605646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035118, 31.640892, 14.416500>,  <31.714321, 31.056004, 14.639497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035118, 31.640892, 14.416500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.304813, 31.353064, 14.350020>,  <32.466629, 31.180367, 14.310133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.304813, 31.353064, 14.350020>,  <32.035118, 31.640892, 14.416500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304813, 31.353064, 14.350020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034516, 0.194094, -0.980376,
		0.737708, 0.666742, 0.106028,
		0.674236, -0.719572, -0.166198,
		32.507084, 31.137192, 14.300161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566589, 31.971386, 14.059915>,  <32.035118, 31.640892, 14.416500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566589, 31.971386, 14.059915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.654808, 31.588881, 13.983054>,  <32.707741, 31.359377, 13.936938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.654808, 31.588881, 13.983054>,  <32.566589, 31.971386, 14.059915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654808, 31.588881, 13.983054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125599, 0.223205, -0.966646,
		0.967256, 0.189058, 0.169333,
		0.220548, -0.956262, -0.192150,
		32.720974, 31.302002, 13.925409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177959, 32.008286, 13.619558>,  <32.566589, 31.971386, 14.059915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177959, 32.008286, 13.619558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.999043, 31.653870, 13.570791>,  <32.891693, 31.441219, 13.541531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.999043, 31.653870, 13.570791>,  <33.177959, 32.008286, 13.619558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999043, 31.653870, 13.570791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021367, 0.125690, -0.991840,
		0.894133, -0.446247, -0.037288,
		-0.447292, -0.886040, -0.121918,
		32.864857, 31.388058, 13.534216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511566, 31.751970, 13.053598>,  <33.177959, 32.008286, 13.619558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511566, 31.751970, 13.053598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.176651, 31.534374, 13.075588>,  <32.975700, 31.403816, 13.088782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.176651, 31.534374, 13.075588>,  <33.511566, 31.751970, 13.053598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176651, 31.534374, 13.075588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124905, 0.092419, -0.987855,
		0.532305, -0.833985, -0.145329,
		-0.837288, -0.543992, 0.054974,
		32.925465, 31.371176, 13.092080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506500, 31.297831, 12.458203>,  <33.511566, 31.751970, 13.053598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506500, 31.297831, 12.458203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.122890, 31.312498, 12.570579>,  <32.892723, 31.321299, 12.638004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.122890, 31.312498, 12.570579>,  <33.506500, 31.297831, 12.458203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122890, 31.312498, 12.570579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279554, 0.038708, -0.959349,
		-0.046056, -0.998577, -0.026870,
		-0.959025, 0.036673, 0.280939,
		32.835182, 31.323498, 12.654860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179089, 30.916826, 11.837716>,  <33.506500, 31.297831, 12.458203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179089, 30.916826, 11.837716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.890305, 31.121361, 12.024180>,  <32.717033, 31.244081, 12.136059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.890305, 31.121361, 12.024180>,  <33.179089, 30.916826, 11.837716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890305, 31.121361, 12.024180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285154, 0.393964, -0.873773,
		-0.630444, -0.763758, -0.138617,
		-0.721961, 0.511338, 0.466161,
		32.673717, 31.274761, 12.164029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.445221, 32.900204, 28.466965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257259, 33.220909, 28.319254>,  <33.144482, 33.413330, 28.230627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257259, 33.220909, 28.319254>,  <33.445221, 32.900204, 28.466965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257259, 33.220909, 28.319254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031062, -0.403064, -0.914645,
		-0.882169, -0.441268, 0.164498,
		-0.469907, 0.801762, -0.369278,
		33.116287, 33.461437, 28.208471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951496, 32.636604, 28.106350>,  <33.445221, 32.900204, 28.466965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951496, 32.636604, 28.106350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.039459, 33.001419, 27.967886>,  <33.092236, 33.220306, 27.884808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.039459, 33.001419, 27.967886>,  <32.951496, 32.636604, 28.106350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039459, 33.001419, 27.967886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150222, -0.382275, -0.911756,
		-0.963886, 0.148498, -0.221072,
		0.219905, 0.912038, -0.346162,
		33.105431, 33.275032, 27.864037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717232, 32.582363, 27.353483>,  <32.951496, 32.636604, 28.106350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717232, 32.582363, 27.353483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962650, 32.898079, 27.363085>,  <33.109901, 33.087509, 27.368845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962650, 32.898079, 27.363085>,  <32.717232, 32.582363, 27.353483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962650, 32.898079, 27.363085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384448, -0.272017, -0.882160,
		-0.689754, 0.550474, -0.470337,
		0.613546, 0.789294, 0.024004,
		33.146713, 33.134869, 27.370285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405125, 33.098042, 26.910830>,  <32.717232, 32.582363, 27.353483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405125, 33.098042, 26.910830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799980, 33.156418, 26.936958>,  <33.036892, 33.191444, 26.952637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799980, 33.156418, 26.936958>,  <32.405125, 33.098042, 26.910830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799980, 33.156418, 26.936958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052446, 0.090413, -0.994522,
		-0.151043, 0.985154, 0.081596,
		0.987135, 0.145936, 0.065324,
		33.096119, 33.200199, 26.956556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518845, 33.625340, 26.469513>,  <32.405125, 33.098042, 26.910830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518845, 33.625340, 26.469513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862625, 33.427361, 26.520687>,  <33.068893, 33.308571, 26.551392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862625, 33.427361, 26.520687>,  <32.518845, 33.625340, 26.469513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862625, 33.427361, 26.520687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113649, -0.059007, -0.991767,
		0.498425, 0.866915, 0.005537,
		0.859451, -0.494951, 0.127935,
		33.120461, 33.278873, 26.559067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829269, 33.891201, 26.014652>,  <32.518845, 33.625340, 26.469513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829269, 33.891201, 26.014652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040302, 33.562511, 26.100838>,  <33.166924, 33.365299, 26.152550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040302, 33.562511, 26.100838>,  <32.829269, 33.891201, 26.014652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040302, 33.562511, 26.100838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140494, -0.165742, -0.976110,
		0.837803, 0.545255, 0.028004,
		0.527587, -0.821722, 0.215464,
		33.198578, 33.315994, 26.165478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330364, 33.846264, 25.474461>,  <32.829269, 33.891201, 26.014652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330364, 33.846264, 25.474461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371098, 33.479000, 25.627623>,  <33.395538, 33.258644, 25.719521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371098, 33.479000, 25.627623>,  <33.330364, 33.846264, 25.474461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371098, 33.479000, 25.627623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324786, -0.333127, -0.885178,
		0.940289, 0.214506, 0.264280,
		0.101838, -0.918158, 0.382904,
		33.401649, 33.203552, 25.742495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003796, 33.687088, 25.435135>,  <33.330364, 33.846264, 25.474461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003796, 33.687088, 25.435135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758896, 33.370823, 25.435650>,  <33.611958, 33.181065, 25.435959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758896, 33.370823, 25.435650>,  <34.003796, 33.687088, 25.435135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758896, 33.370823, 25.435650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433793, -0.337266, -0.835509,
		0.661039, -0.510983, 0.549476,
		-0.612250, -0.790663, 0.001285,
		33.575222, 33.133625, 25.436035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408394, 33.172764, 25.133724>,  <34.003796, 33.687088, 25.435135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408394, 33.172764, 25.133724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030315, 33.042774, 25.121120>,  <33.803467, 32.964779, 25.113558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030315, 33.042774, 25.121120>,  <34.408394, 33.172764, 25.133724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030315, 33.042774, 25.121120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192514, -0.476774, -0.857686,
		0.263701, -0.816750, 0.513208,
		-0.945199, -0.324973, -0.031510,
		33.746758, 32.945282, 25.111668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549488, 32.574802, 24.787426>,  <34.408394, 33.172764, 25.133724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549488, 32.574802, 24.787426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153629, 32.632149, 24.790142>,  <33.916115, 32.666557, 24.791773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153629, 32.632149, 24.790142>,  <34.549488, 32.574802, 24.787426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153629, 32.632149, 24.790142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052306, -0.316198, -0.947250,
		-0.133651, -0.937799, 0.320423,
		-0.989647, 0.143361, 0.006793,
		33.856735, 32.675156, 24.792179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358532, 32.089584, 24.379999>,  <34.549488, 32.574802, 24.787426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358532, 32.089584, 24.379999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029205, 32.315697, 24.359589>,  <33.831608, 32.451363, 24.347342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029205, 32.315697, 24.359589>,  <34.358532, 32.089584, 24.379999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029205, 32.315697, 24.359589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030546, -0.133904, -0.990523,
		-0.566757, -0.813958, 0.127513,
		-0.823319, 0.565281, -0.051028,
		33.782211, 32.485279, 24.344280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848816, 31.712481, 24.036146>,  <34.358532, 32.089584, 24.379999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848816, 31.712481, 24.036146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765488, 32.099316, 23.977707>,  <33.715492, 32.331417, 23.942642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765488, 32.099316, 23.977707>,  <33.848816, 31.712481, 24.036146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765488, 32.099316, 23.977707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023704, -0.154325, -0.987736,
		-0.977774, -0.202300, 0.055073,
		-0.208318, 0.967088, -0.146100,
		33.702991, 32.389442, 23.933876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290329, 31.305628, 24.138231>,  <33.848816, 31.712481, 24.036146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290329, 31.305628, 24.138231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315655, 30.907288, 24.164383>,  <33.330853, 30.668283, 24.180073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315655, 30.907288, 24.164383>,  <33.290329, 31.305628, 24.138231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315655, 30.907288, 24.164383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051638, 0.062152, 0.996730,
		-0.996656, -0.066487, -0.047489,
		0.063318, -0.995850, 0.065377,
		33.334652, 30.608532, 24.183996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781483, 31.065498, 24.706177>,  <33.290329, 31.305628, 24.138231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781483, 31.065498, 24.706177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051979, 30.776474, 24.648758>,  <33.214275, 30.603060, 24.614307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051979, 30.776474, 24.648758>,  <32.781483, 31.065498, 24.706177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051979, 30.776474, 24.648758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092602, -0.109935, 0.989616,
		-0.730840, -0.682508, -0.007431,
		0.676238, -0.722563, -0.143546,
		33.254852, 30.559706, 24.605694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613705, 30.655846, 25.181383>,  <32.781483, 31.065498, 24.706177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613705, 30.655846, 25.181383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983418, 30.539719, 25.082247>,  <33.205246, 30.470043, 25.022764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983418, 30.539719, 25.082247>,  <32.613705, 30.655846, 25.181383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983418, 30.539719, 25.082247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159636, -0.295794, 0.941819,
		-0.346737, -0.910067, -0.227051,
		0.924278, -0.290318, -0.247842,
		33.260700, 30.452623, 25.007895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620056, 30.078070, 25.524796>,  <32.613705, 30.655846, 25.181383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620056, 30.078070, 25.524796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001675, 30.168737, 25.446386>,  <33.230644, 30.223139, 25.399342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001675, 30.168737, 25.446386>,  <32.620056, 30.078070, 25.524796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001675, 30.168737, 25.446386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250476, -0.244057, 0.936855,
		0.164517, -0.942898, -0.289616,
		0.954042, 0.226670, -0.196022,
		33.287888, 30.236738, 25.387579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127724, 29.552137, 25.821699>,  <32.620056, 30.078070, 25.524796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127724, 29.552137, 25.821699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307991, 29.907900, 25.791073>,  <33.416149, 30.121357, 25.772697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307991, 29.907900, 25.791073>,  <33.127724, 29.552137, 25.821699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307991, 29.907900, 25.791073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259058, -0.048220, 0.964657,
		0.854278, -0.454572, -0.252138,
		0.450664, 0.889404, -0.076567,
		33.443192, 30.174721, 25.768103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672638, 29.579760, 26.287315>,  <33.127724, 29.552137, 25.821699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672638, 29.579760, 26.287315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.656033, 29.972982, 26.215899>,  <33.646069, 30.208916, 26.173048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.656033, 29.972982, 26.215899>,  <33.672638, 29.579760, 26.287315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656033, 29.972982, 26.215899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118012, 0.182268, 0.976141,
		0.992144, 0.019451, -0.123579,
		-0.041511, 0.983056, -0.178541,
		33.643578, 30.267899, 26.162336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316223, 29.829824, 26.564751>,  <33.672638, 29.579760, 26.287315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316223, 29.829824, 26.564751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047462, 30.124788, 26.537121>,  <33.886204, 30.301767, 26.520542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047462, 30.124788, 26.537121>,  <34.316223, 29.829824, 26.564751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047462, 30.124788, 26.537121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183338, 0.255961, 0.949142,
		0.717587, 0.625069, -0.307176,
		-0.671905, 0.737409, -0.069076,
		33.845890, 30.346010, 26.516397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653374, 30.243296, 26.927452>,  <34.316223, 29.829824, 26.564751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653374, 30.243296, 26.927452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286793, 30.403099, 26.918430>,  <34.066845, 30.498981, 26.913017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286793, 30.403099, 26.918430>,  <34.653374, 30.243296, 26.927452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286793, 30.403099, 26.918430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069579, 0.214608, 0.974219,
		0.394047, 0.891256, -0.224475,
		-0.916453, 0.399507, -0.022552,
		34.011856, 30.522951, 26.911665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629589, 30.753448, 27.423332>,  <34.653374, 30.243296, 26.927452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629589, 30.753448, 27.423332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.241325, 30.667448, 27.380251>,  <34.008369, 30.615847, 27.354403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.241325, 30.667448, 27.380251>,  <34.629589, 30.753448, 27.423332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241325, 30.667448, 27.380251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127887, 0.082243, 0.988373,
		-0.203644, 0.973144, -0.107326,
		-0.970656, -0.215002, -0.107704,
		33.950127, 30.602947, 27.347940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222404, 31.403162, 27.622480>,  <34.629589, 30.753448, 27.423332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222404, 31.403162, 27.622480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025604, 31.056501, 27.655596>,  <33.907524, 30.848505, 27.675465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025604, 31.056501, 27.655596>,  <34.222404, 31.403162, 27.622480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025604, 31.056501, 27.655596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245252, 0.229214, 0.941973,
		-0.835336, 0.443148, -0.325321,
		-0.492001, -0.866649, 0.082788,
		33.878002, 30.796507, 27.680431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690228, 31.575876, 28.055178>,  <34.222404, 31.403162, 27.622480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690228, 31.575876, 28.055178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698257, 31.176281, 28.071278>,  <33.703075, 30.936523, 28.080938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698257, 31.176281, 28.071278>,  <33.690228, 31.575876, 28.055178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698257, 31.176281, 28.071278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185585, 0.035835, 0.981975,
		-0.982423, -0.027184, -0.184677,
		0.020076, -0.998988, 0.040250,
		33.704281, 30.876585, 28.083353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046726, 31.346300, 28.354849>,  <33.690228, 31.575876, 28.055178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046726, 31.346300, 28.354849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313919, 31.057810, 28.428207>,  <33.474236, 30.884716, 28.472223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313919, 31.057810, 28.428207>,  <33.046726, 31.346300, 28.354849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313919, 31.057810, 28.428207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198163, 0.065157, 0.978001,
		-0.717307, -0.689631, -0.099396,
		0.667983, -0.721224, 0.183397,
		33.514313, 30.841442, 28.483227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682194, 30.899807, 28.811222>,  <33.046726, 31.346300, 28.354849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682194, 30.899807, 28.811222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073097, 30.827330, 28.855286>,  <33.307640, 30.783842, 28.881723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073097, 30.827330, 28.855286>,  <32.682194, 30.899807, 28.811222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073097, 30.827330, 28.855286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124249, -0.068322, 0.989896,
		-0.171840, -0.981071, -0.089281,
		0.977258, -0.181197, 0.110156,
		33.366276, 30.772970, 28.888332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426369, 30.445650, 28.390688>,  <32.682194, 30.899807, 28.811222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426369, 30.445650, 28.390688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.413013, 30.185459, 28.694204>,  <32.404999, 30.029345, 28.876314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.413013, 30.185459, 28.694204>,  <32.426369, 30.445650, 28.390688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413013, 30.185459, 28.694204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166643, -0.744964, -0.645956,
		0.985452, -0.148016, -0.083523,
		-0.033390, -0.650477, 0.758792,
		32.402996, 29.990316, 28.921843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933624, 30.519053, 27.840395>,  <32.426369, 30.445650, 28.390688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933624, 30.519053, 27.840395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866974, 30.354853, 27.481792>,  <31.826984, 30.256332, 27.266630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866974, 30.354853, 27.481792>,  <31.933624, 30.519053, 27.840395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866974, 30.354853, 27.481792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010606, -0.909913, 0.414665,
		-0.985963, 0.059585, 0.155968,
		-0.166625, -0.410498, -0.896508,
		31.816986, 30.231703, 27.212839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769018, 29.877600, 28.021330>,  <31.933624, 30.519053, 27.840395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769018, 29.877600, 28.021330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.789650, 29.802469, 27.628990>,  <31.802029, 29.757391, 27.393587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.789650, 29.802469, 27.628990>,  <31.769018, 29.877600, 28.021330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789650, 29.802469, 27.628990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260018, -0.950806, 0.168398,
		-0.964225, 0.246353, -0.097878,
		0.051578, -0.187824, -0.980848,
		31.805124, 29.746122, 27.334736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144817, 29.583141, 27.695795>,  <31.769018, 29.877600, 28.021330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144817, 29.583141, 27.695795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.857061, 29.851604, 27.767378>,  <30.684408, 30.012682, 27.810328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.857061, 29.851604, 27.767378>,  <31.144817, 29.583141, 27.695795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857061, 29.851604, 27.767378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526425, -0.358725, -0.770839,
		-0.453160, -0.648739, 0.611378,
		-0.719391, 0.671158, 0.178952,
		30.641243, 30.052952, 27.821064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502052, 29.183966, 27.801622>,  <31.144817, 29.583141, 27.695795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502052, 29.183966, 27.801622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.391472, 29.547743, 27.677372>,  <30.325123, 29.766008, 27.602821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.391472, 29.547743, 27.677372>,  <30.502052, 29.183966, 27.801622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391472, 29.547743, 27.677372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507261, -0.412616, -0.756594,
		-0.816248, -0.051593, 0.575393,
		-0.276452, 0.909443, -0.310626,
		30.308537, 29.820576, 27.584185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902033, 29.097288, 27.506088>,  <30.502052, 29.183966, 27.801622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902033, 29.097288, 27.506088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.982653, 29.462120, 27.363266>,  <30.031025, 29.681019, 27.277573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.982653, 29.462120, 27.363266>,  <29.902033, 29.097288, 27.506088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982653, 29.462120, 27.363266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482712, -0.224699, -0.846463,
		-0.852271, 0.342961, 0.394983,
		0.201551, 0.912079, -0.357055,
		30.043118, 29.735744, 27.256149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301598, 29.270367, 27.084789>,  <29.902033, 29.097288, 27.506088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301598, 29.270367, 27.084789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.589350, 29.526819, 26.977873>,  <29.762001, 29.680691, 26.913723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.589350, 29.526819, 26.977873>,  <29.301598, 29.270367, 27.084789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589350, 29.526819, 26.977873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218148, -0.156803, -0.963236,
		-0.659472, 0.751243, 0.027060,
		0.719381, 0.641130, -0.267289,
		29.805164, 29.719158, 26.897686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955391, 29.754364, 26.721237>,  <29.301598, 29.270367, 27.084789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955391, 29.754364, 26.721237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.337791, 29.756445, 26.603909>,  <29.567232, 29.757692, 26.533510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.337791, 29.756445, 26.603909>,  <28.955391, 29.754364, 26.721237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337791, 29.756445, 26.603909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289674, -0.141451, -0.946615,
		-0.046414, 0.989931, -0.133721,
		0.955999, 0.005201, -0.293323,
		29.624592, 29.758005, 26.515911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925112, 30.194979, 26.080004>,  <28.955391, 29.754364, 26.721237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925112, 30.194979, 26.080004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.261580, 29.978720, 26.075407>,  <29.463461, 29.848965, 26.072649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.261580, 29.978720, 26.075407>,  <28.925112, 30.194979, 26.080004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261580, 29.978720, 26.075407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049041, -0.055101, -0.997276,
		0.538541, 0.839443, -0.072863,
		0.841171, -0.540647, -0.011493,
		29.513931, 29.816526, 26.071959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322346, 30.444937, 25.542526>,  <28.925112, 30.194979, 26.080004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322346, 30.444937, 25.542526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.484352, 30.085512, 25.610111>,  <29.581556, 29.869858, 25.650661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.484352, 30.085512, 25.610111>,  <29.322346, 30.444937, 25.542526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484352, 30.085512, 25.610111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223586, -0.081850, -0.971241,
		0.886549, 0.431148, 0.167755,
		0.405018, -0.898561, 0.168963,
		29.605858, 29.815945, 25.660801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959671, 30.401136, 25.140982>,  <29.322346, 30.444937, 25.542526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959671, 30.401136, 25.140982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.865829, 30.017590, 25.204899>,  <29.809525, 29.787460, 25.243248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.865829, 30.017590, 25.204899>,  <29.959671, 30.401136, 25.140982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865829, 30.017590, 25.204899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065282, -0.179548, -0.981581,
		0.969897, -0.219849, 0.104719,
		-0.234601, -0.958869, 0.159791,
		29.795448, 29.729929, 25.252836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542553, 29.893915, 24.652752>,  <29.959671, 30.401136, 25.140982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542553, 29.893915, 24.652752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.186693, 29.733868, 24.740780>,  <29.973177, 29.637838, 24.793596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.186693, 29.733868, 24.740780>,  <30.542553, 29.893915, 24.652752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186693, 29.733868, 24.740780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129807, -0.240458, -0.961941,
		0.437810, -0.884355, 0.161984,
		-0.889648, -0.400121, 0.220070,
		29.919800, 29.613831, 24.806801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595482, 29.376808, 24.301107>,  <30.542553, 29.893915, 24.652752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595482, 29.376808, 24.301107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.208807, 29.396397, 24.401602>,  <29.976803, 29.408150, 24.461899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.208807, 29.396397, 24.401602>,  <30.595482, 29.376808, 24.301107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208807, 29.396397, 24.401602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255859, -0.213061, -0.942943,
		0.007353, -0.975811, 0.218493,
		-0.966686, 0.048970, 0.251237,
		29.918800, 29.411087, 24.476973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328220, 28.765829, 24.105284>,  <30.595482, 29.376808, 24.301107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328220, 28.765829, 24.105284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.027176, 29.028034, 24.130190>,  <29.846548, 29.185358, 24.145134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.027176, 29.028034, 24.130190>,  <30.328220, 28.765829, 24.105284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027176, 29.028034, 24.130190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250545, -0.197634, -0.947717,
		-0.608936, -0.728864, 0.312977,
		-0.752612, 0.655514, 0.062267,
		29.801392, 29.224688, 24.148870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839413, 28.505795, 23.676891>,  <30.328220, 28.765829, 24.105284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839413, 28.505795, 23.676891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.706676, 28.879883, 23.726286>,  <29.627035, 29.104336, 23.755922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.706676, 28.879883, 23.726286>,  <29.839413, 28.505795, 23.676891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706676, 28.879883, 23.726286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365341, -0.006722, -0.930849,
		-0.869718, -0.354006, 0.343904,
		-0.331838, 0.935219, 0.123487,
		29.607124, 29.160448, 23.763332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211061, 28.541540, 23.344280>,  <29.839413, 28.505795, 23.676891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211061, 28.541540, 23.344280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.318995, 28.926567, 23.354479>,  <29.383755, 29.157583, 23.360598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.318995, 28.926567, 23.354479>,  <29.211061, 28.541540, 23.344280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318995, 28.926567, 23.354479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337599, 0.119371, -0.933690,
		-0.901786, 0.243332, 0.357173,
		0.269833, 0.962569, 0.025498,
		29.399944, 29.215338, 23.362129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591873, 28.927927, 23.168474>,  <29.211061, 28.541540, 23.344280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591873, 28.927927, 23.168474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.901655, 29.171217, 23.098871>,  <29.087524, 29.317190, 23.057110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.901655, 29.171217, 23.098871>,  <28.591873, 28.927927, 23.168474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901655, 29.171217, 23.098871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261344, 0.057108, -0.963555,
		-0.576121, 0.791708, 0.203183,
		0.774457, 0.608225, -0.174007,
		29.133993, 29.353685, 23.046669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279190, 29.395756, 22.713478>,  <28.591873, 28.927927, 23.168474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279190, 29.395756, 22.713478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.675974, 29.430862, 22.677002>,  <28.914043, 29.451927, 22.655117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.675974, 29.430862, 22.677002>,  <28.279190, 29.395756, 22.713478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675974, 29.430862, 22.677002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100099, 0.103139, -0.989617,
		-0.077450, 0.990787, 0.111095,
		0.991959, 0.087767, -0.091188,
		28.973562, 29.457193, 22.649645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388617, 29.942183, 22.297216>,  <28.279190, 29.395756, 22.713478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388617, 29.942183, 22.297216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.727650, 29.735046, 22.250843>,  <28.931070, 29.610764, 22.223019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.727650, 29.735046, 22.250843>,  <28.388617, 29.942183, 22.297216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727650, 29.735046, 22.250843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082972, 0.086456, -0.992795,
		0.524134, 0.851096, 0.030312,
		0.847584, -0.517842, -0.115931,
		28.981926, 29.579693, 22.216064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757566, 30.315231, 21.859835>,  <28.388617, 29.942183, 22.297216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757566, 30.315231, 21.859835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.948477, 29.966055, 21.819473>,  <29.063023, 29.756548, 21.795258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.948477, 29.966055, 21.819473>,  <28.757566, 30.315231, 21.859835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948477, 29.966055, 21.819473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004474, 0.112408, -0.993652,
		0.878743, 0.474696, 0.049744,
		0.477274, -0.872943, -0.100902,
		29.091660, 29.704172, 21.789204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312107, 30.384020, 21.417904>,  <28.757566, 30.315231, 21.859835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312107, 30.384020, 21.417904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.250872, 29.989374, 21.395443>,  <29.214130, 29.752586, 21.381966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.250872, 29.989374, 21.395443>,  <29.312107, 30.384020, 21.417904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250872, 29.989374, 21.395443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045685, 0.063828, -0.996915,
		0.987156, -0.150050, -0.054845,
		-0.153088, -0.986616, -0.056153,
		29.204945, 29.693390, 21.378597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898293, 30.062895, 20.997202>,  <29.312107, 30.384020, 21.417904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898293, 30.062895, 20.997202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.598156, 29.798489, 20.994534>,  <29.418074, 29.639845, 20.992933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.598156, 29.798489, 20.994534>,  <29.898293, 30.062895, 20.997202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598156, 29.798489, 20.994534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012361, -0.003943, -0.999916,
		0.660933, -0.750362, 0.011130,
		-0.750343, -0.661015, -0.006669,
		29.373053, 29.600183, 20.992533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137608, 29.556267, 20.513580>,  <29.898293, 30.062895, 20.997202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137608, 29.556267, 20.513580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.741074, 29.512289, 20.542326>,  <29.503153, 29.485903, 20.559574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.741074, 29.512289, 20.542326>,  <30.137608, 29.556267, 20.513580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741074, 29.512289, 20.542326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063522, -0.077584, -0.994960,
		0.114968, -0.990905, 0.069928,
		-0.991336, -0.109947, 0.071864,
		29.443672, 29.479305, 20.563885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934498, 28.875645, 20.073244>,  <30.137608, 29.556267, 20.513580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934498, 28.875645, 20.073244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.619293, 29.121315, 20.090338>,  <29.430170, 29.268717, 20.100594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.619293, 29.121315, 20.090338>,  <29.934498, 28.875645, 20.073244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619293, 29.121315, 20.090338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094573, -0.052170, -0.994150,
		-0.608353, -0.787444, 0.099195,
		-0.788012, 0.614175, 0.042733,
		29.382889, 29.305567, 20.103157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525391, 28.654711, 19.440205>,  <29.934498, 28.875645, 20.073244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525391, 28.654711, 19.440205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.316912, 28.985489, 19.524599>,  <29.191824, 29.183956, 19.575235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.316912, 28.985489, 19.524599>,  <29.525391, 28.654711, 19.440205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316912, 28.985489, 19.524599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270707, 0.074261, -0.959793,
		-0.809364, -0.557358, 0.185155,
		-0.521199, 0.826945, 0.210985,
		29.160551, 29.233572, 19.587894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708763, 28.646111, 19.222372>,  <29.525391, 28.654711, 19.440205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708763, 28.646111, 19.222372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.857893, 29.017197, 19.229788>,  <28.947371, 29.239849, 19.234238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.857893, 29.017197, 19.229788>,  <28.708763, 28.646111, 19.222372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857893, 29.017197, 19.229788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325620, 0.149517, -0.933604,
		-0.868892, 0.342034, 0.357827,
		0.372825, 0.927716, 0.018541,
		28.969740, 29.295511, 19.235350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186853, 29.017149, 18.990049>,  <28.708763, 28.646111, 19.222372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186853, 29.017149, 18.990049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.507336, 29.255251, 18.965570>,  <28.699625, 29.398111, 18.950884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.507336, 29.255251, 18.965570>,  <28.186853, 29.017149, 18.990049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507336, 29.255251, 18.965570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344720, 0.375542, -0.860312,
		-0.489123, 0.710381, 0.506082,
		0.801204, 0.595254, -0.061196,
		28.747696, 29.433826, 18.947212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899071, 29.635609, 18.841459>,  <28.186853, 29.017149, 18.990049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899071, 29.635609, 18.841459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.284872, 29.635798, 18.735832>,  <28.516354, 29.635910, 18.672457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.284872, 29.635798, 18.735832>,  <27.899071, 29.635609, 18.841459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284872, 29.635798, 18.735832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233942, 0.465370, -0.853640,
		0.122485, 0.885116, 0.448962,
		0.964504, 0.000473, -0.264067,
		28.574223, 29.635939, 18.656612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988115, 30.251060, 18.491713>,  <27.899071, 29.635609, 18.841459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988115, 30.251060, 18.491713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.300617, 30.023586, 18.388769>,  <28.488119, 29.887102, 18.327003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.300617, 30.023586, 18.388769>,  <27.988115, 30.251060, 18.491713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300617, 30.023586, 18.388769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032236, 0.374989, -0.926468,
		0.623378, 0.732105, 0.274630,
		0.781256, -0.568687, -0.257360,
		28.534994, 29.852980, 18.311562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883215, 30.886457, 18.654648>,  <27.988115, 30.251060, 18.491713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883215, 30.886457, 18.654648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.706482, 31.228775, 18.547018>,  <27.600443, 31.434166, 18.482441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.706482, 31.228775, 18.547018>,  <27.883215, 30.886457, 18.654648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706482, 31.228775, 18.547018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048812, 0.276561, 0.959756,
		0.895769, 0.437184, -0.080421,
		-0.441831, 0.855794, -0.269075,
		27.573933, 31.485514, 18.466295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298256, 31.380548, 18.944565>,  <27.883215, 30.886457, 18.654648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298256, 31.380548, 18.944565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.938292, 31.539663, 18.873095>,  <27.722313, 31.635132, 18.830212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.938292, 31.539663, 18.873095>,  <28.298256, 31.380548, 18.944565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938292, 31.539663, 18.873095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046530, 0.319812, 0.946338,
		0.433582, 0.859934, -0.269293,
		-0.899912, 0.397785, -0.178677,
		27.668318, 31.658998, 18.819492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301819, 31.982374, 19.218023>,  <28.298256, 31.380548, 18.944565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301819, 31.982374, 19.218023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.908068, 31.914440, 19.199448>,  <27.671818, 31.873680, 19.188303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.908068, 31.914440, 19.199448>,  <28.301819, 31.982374, 19.218023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908068, 31.914440, 19.199448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090287, 0.260478, 0.961249,
		-0.151157, 0.950425, -0.271742,
		-0.984378, -0.169834, -0.046438,
		27.612755, 31.863489, 19.185516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020975, 32.541039, 19.553032>,  <28.301819, 31.982374, 19.218023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020975, 32.541039, 19.553032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.736658, 32.259754, 19.559647>,  <27.566069, 32.090984, 19.563616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.736658, 32.259754, 19.559647>,  <28.020975, 32.541039, 19.553032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736658, 32.259754, 19.559647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150562, 0.175064, 0.972977,
		-0.687099, 0.689095, -0.230311,
		-0.710792, -0.703207, 0.016535,
		27.523420, 32.048794, 19.564608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433554, 32.871555, 19.855656>,  <28.020975, 32.541039, 19.553032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433554, 32.871555, 19.855656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.377060, 32.477757, 19.897261>,  <27.343164, 32.241478, 19.922224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.377060, 32.477757, 19.897261>,  <27.433554, 32.871555, 19.855656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377060, 32.477757, 19.897261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214610, 0.133014, 0.967600,
		-0.966434, 0.114335, -0.230069,
		-0.141233, -0.984497, 0.104011,
		27.334690, 32.182407, 19.928465>
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
