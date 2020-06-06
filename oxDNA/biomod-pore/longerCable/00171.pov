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
	<24.044012, 35.013699, 35.127197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350653, 34.933105, 34.883320>,  <24.534637, 34.884750, 34.736992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350653, 34.933105, 34.883320>,  <24.044012, 35.013699, 35.127197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.350653, 34.933105, 34.883320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577035, 0.200377, -0.791757,
		0.281696, 0.958776, 0.037346,
		0.766602, -0.201485, -0.609693,
		24.580633, 34.872662, 34.700413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.034922, 35.612030, 34.567635>,  <24.044012, 35.013699, 35.127197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.034922, 35.612030, 34.567635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.224031, 35.282845, 34.441639>,  <24.337498, 35.085335, 34.366039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.224031, 35.282845, 34.441639>,  <24.034922, 35.612030, 34.567635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.224031, 35.282845, 34.441639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403858, 0.115349, -0.907520,
		0.783187, 0.556266, -0.277825,
		0.472776, -0.822960, -0.314992,
		24.365864, 35.035957, 34.347141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.449667, 35.747852, 33.870579>,  <24.034922, 35.612030, 34.567635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.449667, 35.747852, 33.870579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.393206, 35.354263, 33.914158>,  <24.359329, 35.118111, 33.940304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.393206, 35.354263, 33.914158>,  <24.449667, 35.747852, 33.870579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.393206, 35.354263, 33.914158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230412, -0.074371, -0.970247,
		0.962801, -0.162054, -0.216222,
		-0.141152, -0.983975, 0.108944,
		24.350861, 35.059071, 33.946842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.541870, 35.936901, 33.176010>,  <24.449667, 35.747852, 33.870579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.541870, 35.936901, 33.176010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.423244, 35.574520, 33.296871>,  <24.352068, 35.357090, 33.369389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.423244, 35.574520, 33.296871>,  <24.541870, 35.936901, 33.176010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.423244, 35.574520, 33.296871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024654, -0.309013, -0.950738,
		0.954694, -0.289406, 0.069308,
		-0.296566, -0.905956, 0.302148,
		24.334274, 35.302734, 33.387516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002419, 35.363281, 33.248898>,  <24.541870, 35.936901, 33.176010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002419, 35.363281, 33.248898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.901253, 34.989624, 33.148170>,  <24.840553, 34.765430, 33.087734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.901253, 34.989624, 33.148170>,  <25.002419, 35.363281, 33.248898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.901253, 34.989624, 33.148170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900208, 0.131852, 0.415018,
		-0.354485, 0.331649, -0.874271,
		-0.252914, -0.934144, -0.251813,
		24.825378, 34.709381, 33.072628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413488, 35.725880, 32.729183>,  <25.002419, 35.363281, 33.248898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413488, 35.725880, 32.729183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694679, 35.475605, 32.864441>,  <25.863394, 35.325439, 32.945595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694679, 35.475605, 32.864441>,  <25.413488, 35.725880, 32.729183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694679, 35.475605, 32.864441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154306, -0.329946, -0.931303,
		0.694271, 0.706863, -0.135398,
		0.702978, -0.625684, 0.338145,
		25.905573, 35.287899, 32.965885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005587, 35.847290, 32.401020>,  <25.413488, 35.725880, 32.729183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005587, 35.847290, 32.401020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082262, 35.478283, 32.535011>,  <26.128267, 35.256878, 32.615406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082262, 35.478283, 32.535011>,  <26.005587, 35.847290, 32.401020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082262, 35.478283, 32.535011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504270, -0.200237, -0.840010,
		0.842002, 0.329940, 0.426816,
		0.191688, -0.922521, 0.334979,
		26.139769, 35.201527, 32.635506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736923, 35.715630, 32.246193>,  <26.005587, 35.847290, 32.401020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736923, 35.715630, 32.246193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538513, 35.368324, 32.242580>,  <26.419468, 35.159943, 32.240414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538513, 35.368324, 32.242580>,  <26.736923, 35.715630, 32.246193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538513, 35.368324, 32.242580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570190, -0.317860, -0.757528,
		0.654862, -0.380901, 0.652740,
		-0.496024, -0.868262, -0.009032,
		26.389706, 35.107845, 32.239872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167326, 35.232075, 32.108711>,  <26.736923, 35.715630, 32.246193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167326, 35.232075, 32.108711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842533, 35.018570, 32.014236>,  <26.647657, 34.890469, 31.957552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842533, 35.018570, 32.014236>,  <27.167326, 35.232075, 32.108711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842533, 35.018570, 32.014236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440636, -0.295186, -0.847764,
		0.382784, -0.792442, 0.474880,
		-0.811983, -0.533760, -0.236186,
		26.598938, 34.858440, 31.943380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340092, 34.540356, 31.947496>,  <27.167326, 35.232075, 32.108711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340092, 34.540356, 31.947496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000015, 34.604984, 31.747070>,  <26.795969, 34.643761, 31.626814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000015, 34.604984, 31.747070>,  <27.340092, 34.540356, 31.947496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000015, 34.604984, 31.747070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433412, -0.325497, -0.840360,
		-0.298873, -0.931636, 0.206709,
		-0.850193, 0.161571, -0.501065,
		26.744957, 34.653458, 31.596750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377447, 34.042881, 31.422476>,  <27.340092, 34.540356, 31.947496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377447, 34.042881, 31.422476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054081, 34.255356, 31.321039>,  <26.860062, 34.382839, 31.260178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054081, 34.255356, 31.321039>,  <27.377447, 34.042881, 31.422476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054081, 34.255356, 31.321039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177133, -0.191315, -0.965413,
		-0.561328, -0.825374, 0.060571,
		-0.808415, 0.531184, -0.253591,
		26.811556, 34.414711, 31.244963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073009, 33.674751, 30.900578>,  <27.377447, 34.042881, 31.422476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073009, 33.674751, 30.900578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964661, 34.056873, 30.853205>,  <26.899651, 34.286144, 30.824781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964661, 34.056873, 30.853205>,  <27.073009, 33.674751, 30.900578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964661, 34.056873, 30.853205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315375, -0.028173, -0.948549,
		-0.909487, -0.294287, -0.293648,
		-0.270872, 0.955302, -0.118434,
		26.883398, 34.343464, 30.817675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664112, 33.782753, 30.310207>,  <27.073009, 33.674751, 30.900578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664112, 33.782753, 30.310207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918341, 34.087509, 30.360121>,  <27.070877, 34.270363, 30.390070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918341, 34.087509, 30.360121>,  <26.664112, 33.782753, 30.310207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918341, 34.087509, 30.360121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312015, -0.105642, -0.944186,
		-0.706183, 0.639033, -0.304864,
		0.635572, 0.761890, 0.124785,
		27.109013, 34.316074, 30.397556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488665, 34.456196, 30.401039>,  <26.664112, 33.782753, 30.310207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488665, 34.456196, 30.401039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273333, 34.535187, 30.073332>,  <26.144133, 34.582581, 29.876707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273333, 34.535187, 30.073332>,  <26.488665, 34.456196, 30.401039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273333, 34.535187, 30.073332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562132, 0.640141, 0.523666,
		0.627859, 0.742444, -0.233602,
		-0.538331, 0.197474, -0.819270,
		26.111834, 34.594429, 29.827551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628735, 35.095295, 30.209898>,  <26.488665, 34.456196, 30.401039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628735, 35.095295, 30.209898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264280, 34.981594, 30.090546>,  <26.045607, 34.913376, 30.018934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264280, 34.981594, 30.090546>,  <26.628735, 35.095295, 30.209898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264280, 34.981594, 30.090546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400531, 0.781193, 0.478866,
		0.096976, 0.555823, -0.825625,
		-0.911137, -0.284250, -0.298381,
		25.990940, 34.896320, 30.001032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084520, 35.607868, 30.050880>,  <26.628735, 35.095295, 30.209898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084520, 35.607868, 30.050880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814550, 35.327877, 30.144270>,  <25.652569, 35.159882, 30.200304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814550, 35.327877, 30.144270>,  <26.084520, 35.607868, 30.050880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814550, 35.327877, 30.144270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543902, 0.685757, 0.483641,
		-0.498643, 0.199435, -0.843552,
		-0.674927, -0.699974, 0.233475,
		25.612072, 35.117886, 30.214312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000648, 35.270432, 30.851574>,  <26.084520, 35.607868, 30.050880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000648, 35.270432, 30.851574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243690, 34.976276, 30.971584>,  <26.389517, 34.799782, 31.043591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243690, 34.976276, 30.971584>,  <26.000648, 35.270432, 30.851574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243690, 34.976276, 30.971584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280588, 0.154642, 0.947289,
		-0.743023, -0.659763, -0.112380,
		0.607607, -0.735390, 0.300024,
		26.425972, 34.755661, 31.061592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.549965, 34.726063, 31.109142>,  <26.000648, 35.270432, 30.851574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.549965, 34.726063, 31.109142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904848, 34.683266, 31.288660>,  <26.117779, 34.657589, 31.396370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904848, 34.683266, 31.288660>,  <25.549965, 34.726063, 31.109142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904848, 34.683266, 31.288660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427034, 0.177815, 0.886580,
		-0.174656, -0.978231, 0.112071,
		0.887207, -0.106989, 0.448794,
		26.171011, 34.651169, 31.423298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490873, 34.231190, 31.704113>,  <25.549965, 34.726063, 31.109142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490873, 34.231190, 31.704113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826269, 34.440609, 31.764553>,  <26.027506, 34.566261, 31.800817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826269, 34.440609, 31.764553>,  <25.490873, 34.231190, 31.704113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826269, 34.440609, 31.764553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333055, 0.272918, 0.902546,
		0.431291, -0.807099, 0.403210,
		0.838488, 0.523552, 0.151101,
		26.077816, 34.597675, 31.809883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750023, 33.963940, 32.352993>,  <25.490873, 34.231190, 31.704113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750023, 33.963940, 32.352993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933868, 34.316135, 32.306541>,  <26.044176, 34.527454, 32.278671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933868, 34.316135, 32.306541>,  <25.750023, 33.963940, 32.352993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933868, 34.316135, 32.306541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174963, 0.217961, 0.960146,
		0.870713, -0.420981, 0.254232,
		0.459616, 0.880493, -0.116126,
		26.071753, 34.580284, 32.271702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165796, 34.004990, 32.846054>,  <25.750023, 33.963940, 32.352993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165796, 34.004990, 32.846054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111080, 34.390614, 32.754948>,  <26.078251, 34.621986, 32.700283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111080, 34.390614, 32.754948>,  <26.165796, 34.004990, 32.846054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111080, 34.390614, 32.754948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251061, 0.188678, 0.949404,
		0.958257, 0.187051, 0.216229,
		-0.136789, 0.964060, -0.227764,
		26.070044, 34.679832, 32.686619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557436, 33.352684, 32.933338>,  <26.165796, 34.004990, 32.846054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557436, 33.352684, 32.933338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686441, 33.711102, 33.055378>,  <26.763844, 33.926151, 33.128601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686441, 33.711102, 33.055378>,  <26.557436, 33.352684, 32.933338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686441, 33.711102, 33.055378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032661, 0.311596, -0.949653,
		-0.946002, 0.316239, 0.071227,
		0.322512, 0.896047, 0.305099,
		26.783195, 33.979916, 33.146908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166801, 33.045609, 32.590626>,  <26.557436, 33.352684, 32.933338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166801, 33.045609, 32.590626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969597, 33.092052, 32.245731>,  <26.851274, 33.119919, 32.038795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969597, 33.092052, 32.245731>,  <27.166801, 33.045609, 32.590626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969597, 33.092052, 32.245731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851254, 0.269115, -0.450492,
		0.179736, -0.956083, -0.231516,
		-0.493012, 0.116109, -0.862240,
		26.821693, 33.126884, 31.987059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.489677, 32.542934, 32.516132>,  <27.166801, 33.045609, 32.590626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.489677, 32.542934, 32.516132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836126, 32.493771, 32.709927>,  <27.043997, 32.464272, 32.826202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836126, 32.493771, 32.709927>,  <26.489677, 32.542934, 32.516132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836126, 32.493771, 32.709927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423774, -0.694542, 0.581401,
		0.265035, -0.708877, -0.653644,
		0.866124, -0.122906, 0.484482,
		27.095964, 32.456898, 32.855270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644876, 31.824543, 32.537476>,  <26.489677, 32.542934, 32.516132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644876, 31.824543, 32.537476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805805, 31.970537, 32.873314>,  <26.902363, 32.058132, 33.074818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805805, 31.970537, 32.873314>,  <26.644876, 31.824543, 32.537476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805805, 31.970537, 32.873314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420536, -0.740935, 0.523608,
		0.813196, -0.563739, -0.144605,
		0.402322, 0.364984, 0.839598,
		26.926502, 32.080032, 33.125195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479660, 31.173090, 32.319443>,  <26.644876, 31.824543, 32.537476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479660, 31.173090, 32.319443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799963, 31.229883, 32.552208>,  <26.992146, 31.263960, 32.691868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799963, 31.229883, 32.552208>,  <26.479660, 31.173090, 32.319443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799963, 31.229883, 32.552208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221523, -0.972818, -0.067471,
		0.556518, 0.182936, -0.810446,
		0.800759, 0.141983, 0.581915,
		27.040192, 31.272478, 32.726784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105949, 31.081886, 31.949728>,  <26.479660, 31.173090, 32.319443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105949, 31.081886, 31.949728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176142, 31.008728, 32.336666>,  <27.218258, 30.964832, 32.568829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176142, 31.008728, 32.336666>,  <27.105949, 31.081886, 31.949728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176142, 31.008728, 32.336666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453558, -0.857082, -0.244327,
		0.873780, 0.481622, -0.067449,
		0.175483, -0.182895, 0.967344,
		27.228786, 30.953859, 32.626869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834999, 30.947042, 32.183193>,  <27.105949, 31.081886, 31.949728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834999, 30.947042, 32.183193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594772, 30.742836, 32.429344>,  <27.450636, 30.620312, 32.577034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594772, 30.742836, 32.429344>,  <27.834999, 30.947042, 32.183193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594772, 30.742836, 32.429344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567487, -0.814332, -0.121740,
		0.563272, 0.276105, 0.778775,
		-0.600569, -0.510518, 0.615377,
		27.414602, 30.589680, 32.613956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248327, 30.558615, 32.696144>,  <27.834999, 30.947042, 32.183193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248327, 30.558615, 32.696144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886744, 30.387651, 32.701519>,  <27.669794, 30.285074, 32.704742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886744, 30.387651, 32.701519>,  <28.248327, 30.558615, 32.696144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886744, 30.387651, 32.701519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424141, -0.900168, -0.099008,
		0.054414, -0.083800, 0.994996,
		-0.903960, -0.427406, 0.013439,
		27.615555, 30.259430, 32.705551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299799, 29.888628, 33.053295>,  <28.248327, 30.558615, 32.696144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299799, 29.888628, 33.053295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948460, 29.860870, 32.864113>,  <27.737656, 29.844215, 32.750603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948460, 29.860870, 32.864113>,  <28.299799, 29.888628, 33.053295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948460, 29.860870, 32.864113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230535, -0.928237, -0.291942,
		-0.418758, -0.365460, 0.831313,
		-0.878348, -0.069394, -0.472958,
		27.684956, 29.840052, 32.722225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027637, 29.174438, 33.071815>,  <28.299799, 29.888628, 33.053295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027637, 29.174438, 33.071815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826374, 29.330591, 32.763416>,  <27.705616, 29.424284, 32.578377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826374, 29.330591, 32.763416>,  <28.027637, 29.174438, 33.071815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826374, 29.330591, 32.763416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235428, -0.796491, -0.556935,
		-0.831509, -0.461740, 0.308853,
		-0.503157, 0.390384, -0.770995,
		27.675426, 29.447706, 32.532116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464436, 28.817848, 32.848080>,  <28.027637, 29.174438, 33.071815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464436, 28.817848, 32.848080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614622, 29.001257, 32.525890>,  <27.704735, 29.111301, 32.332577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614622, 29.001257, 32.525890>,  <27.464436, 28.817848, 32.848080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614622, 29.001257, 32.525890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180795, -0.888594, -0.421561,
		-0.909031, 0.012658, -0.416537,
		0.375469, 0.458519, -0.805471,
		27.727262, 29.138813, 32.284248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145409, 28.518269, 32.166576>,  <27.464436, 28.817848, 32.848080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145409, 28.518269, 32.166576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501957, 28.685690, 32.096981>,  <27.715885, 28.786142, 32.055225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501957, 28.685690, 32.096981>,  <27.145409, 28.518269, 32.166576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501957, 28.685690, 32.096981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229424, -0.747649, -0.623206,
		-0.390927, 0.515590, -0.762459,
		0.891370, 0.418554, -0.173987,
		27.769367, 28.811256, 32.044785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281462, 28.439236, 31.458237>,  <27.145409, 28.518269, 32.166576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281462, 28.439236, 31.458237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634073, 28.485376, 31.641367>,  <27.845640, 28.513062, 31.751245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634073, 28.485376, 31.641367>,  <27.281462, 28.439236, 31.458237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634073, 28.485376, 31.641367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407747, -0.674860, -0.615067,
		0.238019, 0.728875, -0.641941,
		0.881527, 0.115351, 0.457826,
		27.898531, 28.519981, 31.778715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997358, 28.385160, 31.059227>,  <27.281462, 28.439236, 31.458237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997358, 28.385160, 31.059227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154690, 28.332726, 31.423229>,  <28.249088, 28.301264, 31.641630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154690, 28.332726, 31.423229>,  <27.997358, 28.385160, 31.059227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154690, 28.332726, 31.423229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601394, -0.711981, -0.362502,
		0.695426, 0.689854, -0.201208,
		0.393329, -0.131088, 0.910004,
		28.272688, 28.293400, 31.696230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735762, 28.594852, 31.142073>,  <27.997358, 28.385160, 31.059227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735762, 28.594852, 31.142073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620121, 28.284710, 31.366659>,  <28.550735, 28.098625, 31.501411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620121, 28.284710, 31.366659>,  <28.735762, 28.594852, 31.142073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620121, 28.284710, 31.366659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674573, -0.581156, -0.455202,
		0.679242, 0.247150, 0.691047,
		-0.289103, -0.775354, 0.561467,
		28.533390, 28.052103, 31.535099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796610, 29.315434, 31.464041>,  <28.735762, 28.594852, 31.142073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796610, 29.315434, 31.464041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469215, 29.190950, 31.657215>,  <28.272778, 29.116261, 31.773119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469215, 29.190950, 31.657215>,  <28.796610, 29.315434, 31.464041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469215, 29.190950, 31.657215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376484, 0.925485, -0.041678,
		-0.433980, -0.215931, -0.874663,
		-0.818487, -0.311209, 0.482937,
		28.223669, 29.097588, 31.802095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228277, 29.847927, 31.295429>,  <28.796610, 29.315434, 31.464041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228277, 29.847927, 31.295429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111666, 29.633890, 31.612589>,  <28.041698, 29.505468, 31.802885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111666, 29.633890, 31.612589>,  <28.228277, 29.847927, 31.295429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111666, 29.633890, 31.612589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489903, 0.795463, 0.356700,
		-0.821589, -0.284456, -0.494042,
		-0.291527, -0.535093, 0.792899,
		28.024208, 29.473362, 31.850458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657990, 30.020046, 31.698303>,  <28.228277, 29.847927, 31.295429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657990, 30.020046, 31.698303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824348, 29.852915, 32.021400>,  <27.924164, 29.752636, 32.215260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824348, 29.852915, 32.021400>,  <27.657990, 30.020046, 31.698303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824348, 29.852915, 32.021400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520170, 0.619263, 0.588163,
		-0.745956, -0.664780, 0.040209,
		0.415899, -0.417828, 0.807742,
		27.949118, 29.727566, 32.263721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455839, 30.337118, 30.908524>,  <27.657990, 30.020046, 31.698303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455839, 30.337118, 30.908524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729271, 30.554131, 30.713228>,  <27.893330, 30.684338, 30.596050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729271, 30.554131, 30.713228>,  <27.455839, 30.337118, 30.908524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729271, 30.554131, 30.713228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097886, -0.731036, -0.675282,
		-0.723281, 0.413818, -0.552828,
		0.683581, 0.542533, -0.488238,
		27.934345, 30.716890, 30.566757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961416, 29.975582, 31.536959>,  <27.455839, 30.337118, 30.908524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961416, 29.975582, 31.536959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163202, 29.808640, 31.839304>,  <27.284273, 29.708473, 32.020710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163202, 29.808640, 31.839304>,  <26.961416, 29.975582, 31.536959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163202, 29.808640, 31.839304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403086, 0.660331, 0.633629,
		-0.763570, -0.624320, 0.164882,
		0.504464, -0.417358, 0.755863,
		27.314541, 29.683432, 32.066063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496103, 29.915255, 32.085091>,  <26.961416, 29.975582, 31.536959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496103, 29.915255, 32.085091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858089, 29.910482, 32.255215>,  <27.075281, 29.907619, 32.357288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858089, 29.910482, 32.255215>,  <26.496103, 29.915255, 32.085091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858089, 29.910482, 32.255215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266115, 0.764091, 0.587663,
		-0.331989, -0.644998, 0.688303,
		0.904967, -0.011930, 0.425314,
		27.129580, 29.906904, 32.382809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444601, 29.773432, 32.857109>,  <26.496103, 29.915255, 32.085091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444601, 29.773432, 32.857109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767643, 29.997644, 32.783813>,  <26.961468, 30.132172, 32.739834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767643, 29.997644, 32.783813>,  <26.444601, 29.773432, 32.857109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767643, 29.997644, 32.783813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357661, 0.712613, 0.603540,
		0.468884, -0.421883, 0.775991,
		0.807605, 0.560532, -0.183242,
		27.009924, 30.165804, 32.728840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683933, 30.036478, 33.583374>,  <26.444601, 29.773432, 32.857109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683933, 30.036478, 33.583374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743374, 30.242401, 33.245644>,  <26.779037, 30.365955, 33.043007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743374, 30.242401, 33.245644>,  <26.683933, 30.036478, 33.583374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743374, 30.242401, 33.245644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432101, 0.801789, 0.412824,
		0.889498, 0.303489, 0.341596,
		0.148600, 0.514810, -0.844328,
		26.787954, 30.396845, 32.992344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855562, 30.620405, 33.941799>,  <26.683933, 30.036478, 33.583374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855562, 30.620405, 33.941799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072090, 30.353718, 33.736877>,  <27.202007, 30.193705, 33.613922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072090, 30.353718, 33.736877>,  <26.855562, 30.620405, 33.941799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072090, 30.353718, 33.736877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752836, 0.112981, 0.648439,
		-0.374446, -0.736696, 0.563089,
		0.541321, -0.666719, -0.512306,
		27.234486, 30.153702, 33.583187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320816, 30.379814, 34.305275>,  <26.855562, 30.620405, 33.941799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320816, 30.379814, 34.305275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476088, 30.296186, 33.946255>,  <27.569250, 30.246010, 33.730843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476088, 30.296186, 33.946255>,  <27.320816, 30.379814, 34.305275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476088, 30.296186, 33.946255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909767, 0.242391, 0.337001,
		0.147102, -0.947384, 0.284297,
		0.388181, -0.209070, -0.897555,
		27.592543, 30.233465, 33.676987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897381, 29.945299, 34.399509>,  <27.320816, 30.379814, 34.305275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897381, 29.945299, 34.399509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976645, 30.128210, 34.052723>,  <28.024202, 30.237957, 33.844650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976645, 30.128210, 34.052723>,  <27.897381, 29.945299, 34.399509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976645, 30.128210, 34.052723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947001, 0.138835, 0.289680,
		0.252830, -0.878420, -0.405531,
		0.198159, 0.457278, -0.866966,
		28.036093, 30.265394, 33.792633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616798, 29.795856, 34.178181>,  <27.897381, 29.945299, 34.399509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616798, 29.795856, 34.178181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486174, 30.147387, 34.039028>,  <28.407799, 30.358305, 33.955536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486174, 30.147387, 34.039028>,  <28.616798, 29.795856, 34.178181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486174, 30.147387, 34.039028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888316, 0.411106, 0.204664,
		0.322880, -0.242195, -0.914926,
		-0.326563, 0.878825, -0.347884,
		28.388205, 30.411034, 33.934662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007259, 29.979000, 33.538082>,  <28.616798, 29.795856, 34.178181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007259, 29.979000, 33.538082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925646, 30.251146, 33.819641>,  <28.876677, 30.414434, 33.988575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925646, 30.251146, 33.819641>,  <29.007259, 29.979000, 33.538082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925646, 30.251146, 33.819641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952937, -0.026662, 0.301994,
		0.224234, 0.732387, -0.642906,
		-0.204035, 0.680366, 0.703898,
		28.864435, 30.455256, 34.030811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631170, 30.419270, 33.558289>,  <29.007259, 29.979000, 33.538082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631170, 30.419270, 33.558289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467424, 30.442043, 33.922527>,  <29.369177, 30.455708, 34.141071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467424, 30.442043, 33.922527>,  <29.631170, 30.419270, 33.558289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467424, 30.442043, 33.922527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891297, -0.188319, 0.412463,
		0.194966, 0.980456, 0.026345,
		-0.409363, 0.056935, 0.910593,
		29.344616, 30.459124, 34.195705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024052, 30.932827, 33.937336>,  <29.631170, 30.419270, 33.558289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024052, 30.932827, 33.937336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872015, 30.614990, 34.126713>,  <29.780792, 30.424288, 34.240341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872015, 30.614990, 34.126713>,  <30.024052, 30.932827, 33.937336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872015, 30.614990, 34.126713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919258, -0.267827, 0.288501,
		-0.102439, 0.544877, 0.832235,
		-0.380093, -0.794593, 0.473447,
		29.757988, 30.376612, 34.268745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514864, 30.871147, 34.378391>,  <30.024052, 30.932827, 33.937336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514864, 30.871147, 34.378391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334768, 30.514177, 34.366623>,  <30.226711, 30.299995, 34.359562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334768, 30.514177, 34.366623>,  <30.514864, 30.871147, 34.378391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334768, 30.514177, 34.366623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892483, -0.450798, 0.015978,
		-0.027523, -0.019066, 0.999439,
		-0.450241, -0.892422, -0.029424,
		30.199696, 30.246450, 34.357796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855799, 30.401497, 34.743027>,  <30.514864, 30.871147, 34.378391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855799, 30.401497, 34.743027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656994, 30.125751, 34.532215>,  <30.537710, 29.960304, 34.405727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656994, 30.125751, 34.532215>,  <30.855799, 30.401497, 34.743027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656994, 30.125751, 34.532215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786475, -0.614493, 0.062090,
		-0.366656, -0.383634, 0.847578,
		-0.497011, -0.689364, -0.527026,
		30.507891, 29.918941, 34.374107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422489, 29.981657, 34.464508>,  <30.855799, 30.401497, 34.743027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422489, 29.981657, 34.464508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597946, 30.323103, 34.576889>,  <31.703220, 30.527971, 34.644318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597946, 30.323103, 34.576889>,  <31.422489, 29.981657, 34.464508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597946, 30.323103, 34.576889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834470, 0.502930, -0.225216,
		-0.333549, -0.135661, 0.932921,
		0.438640, 0.853615, 0.280957,
		31.729538, 30.579187, 34.661175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453114, 30.299145, 33.789749>,  <31.422489, 29.981657, 34.464508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453114, 30.299145, 33.789749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751852, 30.033642, 33.805984>,  <31.931095, 29.874340, 33.815727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751852, 30.033642, 33.805984>,  <31.453114, 30.299145, 33.789749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751852, 30.033642, 33.805984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249154, -0.222705, 0.942510,
		-0.616556, -0.714024, -0.331704,
		0.746847, -0.663756, 0.040592,
		31.975906, 29.834515, 33.818161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164669, 29.652666, 33.897644>,  <31.453114, 30.299145, 33.789749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164669, 29.652666, 33.897644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538235, 29.667528, 34.039867>,  <31.762375, 29.676445, 34.125202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538235, 29.667528, 34.039867>,  <31.164669, 29.652666, 33.897644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538235, 29.667528, 34.039867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349548, -0.113654, 0.929999,
		0.074967, -0.992825, -0.093155,
		0.933914, 0.037157, 0.355560,
		31.818409, 29.678675, 34.146534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528250, 28.925882, 33.929176>,  <31.164669, 29.652666, 33.897644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528250, 28.925882, 33.929176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685772, 29.183199, 34.191807>,  <31.780285, 29.337589, 34.349384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685772, 29.183199, 34.191807>,  <31.528250, 28.925882, 33.929176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685772, 29.183199, 34.191807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283966, -0.594215, 0.752510,
		0.874231, -0.482789, -0.051334,
		0.393807, 0.643290, 0.656577,
		31.803915, 29.376186, 34.388779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949337, 28.585722, 34.645370>,  <31.528250, 28.925882, 33.929176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949337, 28.585722, 34.645370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833971, 28.960407, 34.724754>,  <31.764751, 29.185219, 34.772385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833971, 28.960407, 34.724754>,  <31.949337, 28.585722, 34.645370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833971, 28.960407, 34.724754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157183, -0.250774, 0.955199,
		0.944515, 0.244301, 0.219563,
		-0.288417, 0.936712, 0.198460,
		31.747446, 29.241421, 34.784294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648855, 28.204103, 35.169113>,  <31.949337, 28.585722, 34.645370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648855, 28.204103, 35.169113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461683, 28.340334, 35.495316>,  <31.349380, 28.422071, 35.691036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461683, 28.340334, 35.495316>,  <31.648855, 28.204103, 35.169113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461683, 28.340334, 35.495316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371287, 0.913137, -0.168306,
		-0.801989, 0.224031, -0.553737,
		-0.467932, 0.340575, 0.815505,
		31.321304, 28.442507, 35.739967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098225, 28.701710, 34.954605>,  <31.648855, 28.204103, 35.169113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098225, 28.701710, 34.954605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235031, 28.766930, 35.324780>,  <31.317114, 28.806061, 35.546886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235031, 28.766930, 35.324780>,  <31.098225, 28.701710, 34.954605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235031, 28.766930, 35.324780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443323, 0.840349, -0.311896,
		-0.828547, 0.516942, 0.215129,
		0.342015, 0.163049, 0.925441,
		31.337635, 28.815844, 35.602413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918537, 29.373457, 35.269993>,  <31.098225, 28.701710, 34.954605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918537, 29.373457, 35.269993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275917, 29.250553, 35.401047>,  <31.490345, 29.176811, 35.479679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275917, 29.250553, 35.401047>,  <30.918537, 29.373457, 35.269993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275917, 29.250553, 35.401047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448271, 0.563903, -0.693590,
		0.028357, 0.766555, 0.641552,
		0.893448, -0.307257, 0.327634,
		31.543951, 29.158377, 35.499336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416441, 29.935415, 35.473106>,  <30.918537, 29.373457, 35.269993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416441, 29.935415, 35.473106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651953, 29.623608, 35.387611>,  <31.793261, 29.436523, 35.336315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651953, 29.623608, 35.387611>,  <31.416441, 29.935415, 35.473106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651953, 29.623608, 35.387611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352412, 0.485547, -0.800031,
		0.727422, 0.395718, 0.560593,
		0.588781, -0.779520, -0.213742,
		31.828587, 29.389751, 35.323490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015461, 30.214027, 35.289108>,  <31.416441, 29.935415, 35.473106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015461, 30.214027, 35.289108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014080, 29.839703, 35.148113>,  <32.013252, 29.615108, 35.063519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014080, 29.839703, 35.148113>,  <32.015461, 30.214027, 35.289108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014080, 29.839703, 35.148113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403905, 0.321150, -0.856576,
		0.914794, -0.145327, 0.376871,
		-0.003451, -0.935811, -0.352484,
		32.013046, 29.558960, 35.042366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629177, 30.228928, 34.974087>,  <32.015461, 30.214027, 35.289108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629177, 30.228928, 34.974087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411148, 29.930046, 34.821991>,  <32.280331, 29.750717, 34.730732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411148, 29.930046, 34.821991>,  <32.629177, 30.228928, 34.974087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411148, 29.930046, 34.821991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413434, 0.155004, -0.897244,
		0.729362, -0.646267, 0.224430,
		-0.545072, -0.747203, -0.380243,
		32.247627, 29.705885, 34.707916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042850, 29.664394, 34.616501>,  <32.629177, 30.228928, 34.974087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042850, 29.664394, 34.616501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675648, 29.643803, 34.459213>,  <32.455326, 29.631449, 34.364841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675648, 29.643803, 34.459213>,  <33.042850, 29.664394, 34.616501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675648, 29.643803, 34.459213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394326, -0.013129, -0.918877,
		0.042145, -0.998588, 0.032354,
		-0.918004, -0.051484, -0.393216,
		32.400246, 29.628359, 34.341248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994347, 29.066908, 34.186310>,  <33.042850, 29.664394, 34.616501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994347, 29.066908, 34.186310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713573, 29.322594, 34.060646>,  <32.545109, 29.476006, 33.985249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713573, 29.322594, 34.060646>,  <32.994347, 29.066908, 34.186310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713573, 29.322594, 34.060646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479858, 0.098472, -0.871803,
		-0.526332, -0.762698, -0.375853,
		-0.701934, 0.639214, -0.314158,
		32.502995, 29.514359, 33.966400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904877, 28.947613, 33.492180>,  <32.994347, 29.066908, 34.186310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904877, 28.947613, 33.492180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736469, 29.306740, 33.543819>,  <32.635426, 29.522217, 33.574802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736469, 29.306740, 33.543819>,  <32.904877, 28.947613, 33.492180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736469, 29.306740, 33.543819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273162, 0.261219, -0.925822,
		-0.864942, -0.354524, -0.355228,
		-0.421019, 0.897818, 0.129097,
		32.610165, 29.576086, 33.582550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657101, 29.002195, 32.877205>,  <32.904877, 28.947613, 33.492180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657101, 29.002195, 32.877205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716484, 29.374340, 33.011303>,  <32.752113, 29.597628, 33.091763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716484, 29.374340, 33.011303>,  <32.657101, 29.002195, 32.877205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716484, 29.374340, 33.011303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395938, 0.254727, -0.882240,
		-0.906198, 0.263709, -0.330550,
		0.148454, 0.930361, 0.335246,
		32.761021, 29.653448, 33.111877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391220, 29.398277, 32.447453>,  <32.657101, 29.002195, 32.877205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391220, 29.398277, 32.447453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643749, 29.660736, 32.612812>,  <32.795265, 29.818213, 32.712029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643749, 29.660736, 32.612812>,  <32.391220, 29.398277, 32.447453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643749, 29.660736, 32.612812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398343, 0.183009, -0.898794,
		-0.665399, 0.732104, -0.145835,
		0.631321, 0.656149, 0.413403,
		32.833145, 29.857580, 32.736832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340271, 29.971411, 32.012863>,  <32.391220, 29.398277, 32.447453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340271, 29.971411, 32.012863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682919, 30.026253, 32.211819>,  <32.888508, 30.059158, 32.331192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682919, 30.026253, 32.211819>,  <32.340271, 29.971411, 32.012863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682919, 30.026253, 32.211819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412235, 0.397838, -0.819627,
		-0.310258, 0.907153, 0.284276,
		0.856623, 0.137107, 0.497392,
		32.939907, 30.067385, 32.361038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537506, 30.622726, 31.949903>,  <32.340271, 29.971411, 32.012863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537506, 30.622726, 31.949903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883160, 30.434555, 32.021427>,  <33.090549, 30.321651, 32.064342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883160, 30.434555, 32.021427>,  <32.537506, 30.622726, 31.949903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883160, 30.434555, 32.021427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424013, 0.489156, -0.762194,
		0.271093, 0.734453, 0.622163,
		0.864131, -0.470431, 0.178811,
		33.142399, 30.293427, 32.075069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088909, 31.119394, 31.787781>,  <32.537506, 30.622726, 31.949903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088909, 31.119394, 31.787781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315575, 30.791296, 31.818985>,  <33.451572, 30.594437, 31.837708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315575, 30.791296, 31.818985>,  <33.088909, 31.119394, 31.787781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315575, 30.791296, 31.818985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541876, 0.299675, -0.785217,
		0.620695, 0.487226, 0.614287,
		0.566665, -0.820248, 0.078009,
		33.485573, 30.545221, 31.842388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719036, 31.343084, 31.691442>,  <33.088909, 31.119394, 31.787781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719036, 31.343084, 31.691442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741421, 30.956953, 31.589451>,  <33.754852, 30.725275, 31.528255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741421, 30.956953, 31.589451>,  <33.719036, 31.343084, 31.691442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741421, 30.956953, 31.589451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513062, 0.246885, -0.822080,
		0.856525, -0.084813, 0.509089,
		0.055964, -0.965326, -0.254978,
		33.758209, 30.667355, 31.512957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424290, 31.144276, 31.674294>,  <33.719036, 31.343084, 31.691442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424290, 31.144276, 31.674294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244999, 30.871214, 31.443441>,  <34.137424, 30.707376, 31.304930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244999, 30.871214, 31.443441>,  <34.424290, 31.144276, 31.674294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244999, 30.871214, 31.443441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533407, 0.313835, -0.785484,
		0.717337, -0.659918, 0.223464,
		-0.448224, -0.682654, -0.577130,
		34.110531, 30.666418, 31.270302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930843, 30.841194, 31.281727>,  <34.424290, 31.144276, 31.674294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930843, 30.841194, 31.281727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602219, 30.758377, 31.069246>,  <34.405045, 30.708687, 30.941757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602219, 30.758377, 31.069246>,  <34.930843, 30.841194, 31.281727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602219, 30.758377, 31.069246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507849, 0.157668, -0.846894,
		0.259097, -0.965543, -0.024387,
		-0.821558, -0.207043, -0.531202,
		34.355751, 30.696264, 30.909885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182518, 30.432278, 30.661995>,  <34.930843, 30.841194, 31.281727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182518, 30.432278, 30.661995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823288, 30.578642, 30.564360>,  <34.607750, 30.666460, 30.505777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823288, 30.578642, 30.564360>,  <35.182518, 30.432278, 30.661995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823288, 30.578642, 30.564360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351889, 0.264743, -0.897823,
		-0.263900, -0.892201, -0.366517,
		-0.898071, 0.365908, -0.244090,
		34.553867, 30.688414, 30.491133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169521, 30.199802, 30.009081>,  <35.182518, 30.432278, 30.661995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169521, 30.199802, 30.009081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864330, 30.458359, 30.006435>,  <34.681217, 30.613493, 30.004848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864330, 30.458359, 30.006435>,  <35.169521, 30.199802, 30.009081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864330, 30.458359, 30.006435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280303, 0.321607, -0.904433,
		-0.582491, -0.691916, -0.426564,
		-0.762977, 0.646392, -0.006613,
		34.635437, 30.652277, 30.004452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837776, 30.080692, 29.362413>,  <35.169521, 30.199802, 30.009081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837776, 30.080692, 29.362413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766113, 30.449734, 29.499060>,  <34.723114, 30.671160, 29.581047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766113, 30.449734, 29.499060>,  <34.837776, 30.080692, 29.362413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766113, 30.449734, 29.499060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375504, 0.385075, -0.843039,
		-0.909339, -0.022761, -0.415432,
		-0.179161, 0.922604, 0.341617,
		34.712364, 30.726515, 29.601545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789467, 30.297539, 28.777485>,  <34.837776, 30.080692, 29.362413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789467, 30.297539, 28.777485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794262, 30.648954, 28.968493>,  <34.797138, 30.859804, 29.083097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794262, 30.648954, 28.968493>,  <34.789467, 30.297539, 28.777485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794262, 30.648954, 28.968493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284189, 0.454868, -0.843998,
		-0.958693, 0.145827, -0.244216,
		0.011991, 0.878538, 0.477521,
		34.797859, 30.912516, 29.111750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299759, 30.742512, 28.541527>,  <34.789467, 30.297539, 28.777485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299759, 30.742512, 28.541527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562592, 30.997730, 28.702097>,  <34.720291, 31.150862, 28.798439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562592, 30.997730, 28.702097>,  <34.299759, 30.742512, 28.541527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562592, 30.997730, 28.702097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018899, 0.518411, -0.854923,
		-0.753582, 0.569342, 0.328580,
		0.657083, 0.638044, 0.401425,
		34.759716, 31.189144, 28.822525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179459, 31.342560, 28.235418>,  <34.299759, 30.742512, 28.541527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179459, 31.342560, 28.235418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533607, 31.431011, 28.398987>,  <34.746098, 31.484081, 28.497128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533607, 31.431011, 28.398987>,  <34.179459, 31.342560, 28.235418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533607, 31.431011, 28.398987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115643, 0.747211, -0.654449,
		-0.450266, 0.626720, 0.635989,
		0.885374, 0.221128, 0.408920,
		34.799221, 31.497349, 28.521662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184330, 32.072521, 28.537888>,  <34.179459, 31.342560, 28.235418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184330, 32.072521, 28.537888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564228, 31.974136, 28.460442>,  <34.792168, 31.915106, 28.413975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564228, 31.974136, 28.460442>,  <34.184330, 32.072521, 28.537888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564228, 31.974136, 28.460442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089588, 0.806249, -0.584754,
		0.299926, 0.538022, 0.787767,
		0.949746, -0.245958, -0.193615,
		34.849152, 31.900349, 28.402357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487442, 32.605789, 28.642656>,  <34.184330, 32.072521, 28.537888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487442, 32.605789, 28.642656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731621, 32.397137, 28.404243>,  <34.878128, 32.271946, 28.261196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731621, 32.397137, 28.404243>,  <34.487442, 32.605789, 28.642656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731621, 32.397137, 28.404243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113945, 0.802523, -0.585640,
		0.783815, 0.289589, 0.549338,
		0.610451, -0.521628, -0.596032,
		34.914757, 32.240650, 28.225433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009991, 33.000847, 28.395407>,  <34.487442, 32.605789, 28.642656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009991, 33.000847, 28.395407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025318, 32.720829, 28.110178>,  <35.034515, 32.552818, 27.939041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025318, 32.720829, 28.110178>,  <35.009991, 33.000847, 28.395407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025318, 32.720829, 28.110178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336068, 0.681059, -0.650552,
		0.941058, -0.214709, 0.261362,
		0.038323, -0.700042, -0.713073,
		35.036816, 32.510815, 27.896255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538300, 33.215790, 28.008978>,  <35.009991, 33.000847, 28.395407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538300, 33.215790, 28.008978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375015, 32.929764, 27.781982>,  <35.277046, 32.758148, 27.645784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375015, 32.929764, 27.781982>,  <35.538300, 33.215790, 28.008978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375015, 32.929764, 27.781982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264896, 0.502111, -0.823234,
		0.873612, -0.486375, -0.015547,
		-0.408207, -0.715069, -0.567489,
		35.252552, 32.715244, 27.611736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024891, 33.068512, 27.527332>,  <35.538300, 33.215790, 28.008978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024891, 33.068512, 27.527332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680710, 32.965443, 27.351501>,  <35.474201, 32.903603, 27.246002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680710, 32.965443, 27.351501>,  <36.024891, 33.068512, 27.527332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680710, 32.965443, 27.351501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198562, 0.624937, -0.755001,
		0.469249, -0.736926, -0.486565,
		-0.860453, -0.257670, -0.439577,
		35.422573, 32.888142, 27.219629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163311, 32.893295, 26.826826>,  <36.024891, 33.068512, 27.527332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163311, 32.893295, 26.826826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772766, 32.978931, 26.814920>,  <35.538441, 33.030312, 26.807777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772766, 32.978931, 26.814920>,  <36.163311, 32.893295, 26.826826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772766, 32.978931, 26.814920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166115, 0.655109, -0.737047,
		-0.138293, -0.724568, -0.675186,
		-0.976361, 0.214087, -0.029765,
		35.479858, 33.043159, 26.805990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031536, 33.004654, 26.092167>,  <36.163311, 32.893295, 26.826826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031536, 33.004654, 26.092167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730125, 33.184803, 26.283737>,  <35.549278, 33.292892, 26.398680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730125, 33.184803, 26.283737>,  <36.031536, 33.004654, 26.092167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730125, 33.184803, 26.283737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104218, 0.801111, -0.589372,
		-0.649109, -0.394192, -0.650592,
		-0.753522, 0.450371, 0.478926,
		35.504070, 33.319916, 26.427416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644367, 33.380543, 25.580374>,  <36.031536, 33.004654, 26.092167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644367, 33.380543, 25.580374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528625, 33.548237, 25.924585>,  <35.459179, 33.648853, 26.131113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528625, 33.548237, 25.924585>,  <35.644367, 33.380543, 25.580374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528625, 33.548237, 25.924585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086054, 0.883955, -0.459584,
		-0.953345, -0.207036, -0.219702,
		-0.289357, 0.419236, 0.860531,
		35.441818, 33.674007, 26.182745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023762, 33.821392, 25.381414>,  <35.644367, 33.380543, 25.580374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023762, 33.821392, 25.381414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200474, 33.945171, 25.718241>,  <35.306499, 34.019440, 25.920336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200474, 33.945171, 25.718241>,  <35.023762, 33.821392, 25.381414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200474, 33.945171, 25.718241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087785, 0.949033, -0.302705,
		-0.892820, 0.059808, 0.446425,
		0.441777, 0.309450, 0.842065,
		35.333008, 34.038006, 25.970860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543537, 34.159618, 25.676548>,  <35.023762, 33.821392, 25.381414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543537, 34.159618, 25.676548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899624, 34.292667, 25.801046>,  <35.113277, 34.372498, 25.875746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899624, 34.292667, 25.801046>,  <34.543537, 34.159618, 25.676548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899624, 34.292667, 25.801046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189107, 0.891443, -0.411787,
		-0.414429, 0.307721, 0.856479,
		0.890218, 0.332622, 0.311247,
		35.166691, 34.392452, 25.894421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466759, 34.865116, 25.729588>,  <34.543537, 34.159618, 25.676548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466759, 34.865116, 25.729588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863338, 34.821102, 25.701555>,  <35.101288, 34.794693, 25.684736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863338, 34.821102, 25.701555>,  <34.466759, 34.865116, 25.729588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863338, 34.821102, 25.701555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079117, 0.934285, -0.347637,
		0.103728, 0.339122, 0.935007,
		0.991454, -0.110035, -0.070081,
		35.160774, 34.788094, 25.680531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691952, 35.577389, 25.827017>,  <34.466759, 34.865116, 25.729588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691952, 35.577389, 25.827017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025921, 35.415295, 25.678047>,  <35.226303, 35.318039, 25.588665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025921, 35.415295, 25.678047>,  <34.691952, 35.577389, 25.827017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025921, 35.415295, 25.678047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088970, 0.767146, -0.635273,
		0.543135, 0.497267, 0.676557,
		0.834918, -0.405232, -0.372423,
		35.276398, 35.293724, 25.566320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201740, 36.066307, 25.802036>,  <34.691952, 35.577389, 25.827017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201740, 36.066307, 25.802036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292553, 35.785828, 25.531696>,  <35.347042, 35.617538, 25.369493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292553, 35.785828, 25.531696>,  <35.201740, 36.066307, 25.802036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292553, 35.785828, 25.531696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205438, 0.712836, -0.670568,
		0.951972, 0.013396, 0.305890,
		0.227032, -0.701203, -0.675848,
		35.360664, 35.575466, 25.328941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824848, 36.243130, 25.488411>,  <35.201740, 36.066307, 25.802036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824848, 36.243130, 25.488411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681786, 35.978329, 25.224945>,  <35.595947, 35.819447, 25.066866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681786, 35.978329, 25.224945>,  <35.824848, 36.243130, 25.488411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681786, 35.978329, 25.224945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223448, 0.624165, -0.748658,
		0.906728, -0.414937, -0.075311,
		-0.357653, -0.662001, -0.658664,
		35.574490, 35.779728, 25.027346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287712, 36.269291, 24.944492>,  <35.824848, 36.243130, 25.488411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287712, 36.269291, 24.944492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957134, 36.102596, 24.793062>,  <35.758785, 36.002579, 24.702204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957134, 36.102596, 24.793062>,  <36.287712, 36.269291, 24.944492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957134, 36.102596, 24.793062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156722, 0.475550, -0.865616,
		0.540764, -0.774716, -0.327705,
		-0.826446, -0.416735, -0.378575,
		35.709202, 35.977577, 24.679489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461403, 35.935764, 24.268444>,  <36.287712, 36.269291, 24.944492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461403, 35.935764, 24.268444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075733, 36.040829, 24.253567>,  <35.844334, 36.103867, 24.244640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075733, 36.040829, 24.253567>,  <36.461403, 35.935764, 24.268444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075733, 36.040829, 24.253567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173176, 0.516992, -0.838289,
		-0.200959, -0.814695, -0.543956,
		-0.964171, 0.262662, -0.037191,
		35.786480, 36.119629, 24.242409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390957, 36.015572, 23.661232>,  <36.461403, 35.935764, 24.268444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390957, 36.015572, 23.661232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056206, 36.191158, 23.792042>,  <35.855354, 36.296513, 23.870527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056206, 36.191158, 23.792042>,  <36.390957, 36.015572, 23.661232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056206, 36.191158, 23.792042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045380, 0.651005, -0.757716,
		-0.545510, -0.619273, -0.564730,
		-0.836875, 0.438969, 0.327027,
		35.805141, 36.322849, 23.890150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027168, 36.244987, 23.055143>,  <36.390957, 36.015572, 23.661232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027168, 36.244987, 23.055143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847809, 36.456139, 23.343666>,  <35.740192, 36.582829, 23.516781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847809, 36.456139, 23.343666>,  <36.027168, 36.244987, 23.055143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847809, 36.456139, 23.343666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146005, 0.839401, -0.523534,
		-0.881828, -0.129438, -0.453460,
		-0.448400, 0.527875, 0.721309,
		35.713287, 36.614502, 23.560059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562454, 36.794380, 22.677790>,  <36.027168, 36.244987, 23.055143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562454, 36.794380, 22.677790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622086, 36.938454, 23.046146>,  <35.657864, 37.024899, 23.267160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622086, 36.938454, 23.046146>,  <35.562454, 36.794380, 22.677790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622086, 36.938454, 23.046146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153532, 0.911574, -0.381393,
		-0.976834, 0.198244, 0.080595,
		0.149077, 0.360184, 0.920893,
		35.666809, 37.046509, 23.322414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075195, 37.469944, 22.797777>,  <35.562454, 36.794380, 22.677790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075195, 37.469944, 22.797777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385418, 37.475082, 23.050238>,  <35.571552, 37.478165, 23.201714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385418, 37.475082, 23.050238>,  <35.075195, 37.469944, 22.797777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385418, 37.475082, 23.050238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224128, 0.929056, -0.294315,
		-0.590153, 0.369715, 0.717656,
		0.775555, 0.012844, 0.631149,
		35.618084, 37.478935, 23.239582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992157, 38.122334, 23.073301>,  <35.075195, 37.469944, 22.797777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992157, 38.122334, 23.073301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369892, 38.026749, 23.163736>,  <35.596535, 37.969398, 23.217997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369892, 38.026749, 23.163736>,  <34.992157, 38.122334, 23.073301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369892, 38.026749, 23.163736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297279, 0.914193, -0.275455,
		-0.140863, 0.327335, 0.934350,
		0.944342, -0.238961, 0.226086,
		35.653194, 37.955059, 23.231562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207088, 38.641487, 23.402529>,  <34.992157, 38.122334, 23.073301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207088, 38.641487, 23.402529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561726, 38.479092, 23.313866>,  <35.774506, 38.381653, 23.260668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561726, 38.479092, 23.313866>,  <35.207088, 38.641487, 23.402529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561726, 38.479092, 23.313866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396198, 0.913835, -0.089069,
		0.238720, -0.008853, 0.971048,
		0.886589, -0.405990, -0.221658,
		35.827702, 38.357296, 23.247368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692604, 38.980381, 23.792875>,  <35.207088, 38.641487, 23.402529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692604, 38.980381, 23.792875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893013, 38.832851, 23.479713>,  <36.013260, 38.744335, 23.291817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893013, 38.832851, 23.479713>,  <35.692604, 38.980381, 23.792875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893013, 38.832851, 23.479713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449938, 0.883781, -0.128405,
		0.739276, -0.287925, 0.608744,
		0.501025, -0.368824, -0.782906,
		36.043320, 38.722206, 23.244841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363846, 39.243862, 23.931208>,  <35.692604, 38.980381, 23.792875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363846, 39.243862, 23.931208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381264, 39.134785, 23.546761>,  <36.391716, 39.069340, 23.316093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381264, 39.134785, 23.546761>,  <36.363846, 39.243862, 23.931208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381264, 39.134785, 23.546761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405736, 0.883947, -0.232412,
		0.912952, -0.379838, 0.149135,
		0.043549, -0.272691, -0.961116,
		36.394329, 39.052979, 23.258427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082684, 39.450489, 23.720949>,  <36.363846, 39.243862, 23.931208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082684, 39.450489, 23.720949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875435, 39.411659, 23.381039>,  <36.751083, 39.388359, 23.177092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875435, 39.411659, 23.381039>,  <37.082684, 39.450489, 23.720949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875435, 39.411659, 23.381039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394947, 0.854117, -0.338380,
		0.758659, -0.510941, -0.404199,
		-0.518125, -0.097078, -0.849777,
		36.719997, 39.382538, 23.126106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593979, 39.583363, 23.139723>,  <37.082684, 39.450489, 23.720949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593979, 39.583363, 23.139723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224751, 39.628242, 22.992561>,  <37.003212, 39.655170, 22.904264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224751, 39.628242, 22.992561>,  <37.593979, 39.583363, 23.139723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224751, 39.628242, 22.992561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227064, 0.931007, -0.285776,
		0.310455, -0.347328, -0.884862,
		-0.923071, 0.112199, -0.367902,
		36.947830, 39.661903, 22.882191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708099, 39.806419, 22.545786>,  <37.593979, 39.583363, 23.139723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708099, 39.806419, 22.545786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341362, 39.938736, 22.635206>,  <37.121319, 40.018127, 22.688858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341362, 39.938736, 22.635206>,  <37.708099, 39.806419, 22.545786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341362, 39.938736, 22.635206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270751, 0.926656, -0.260774,
		-0.293417, -0.178563, -0.939160,
		-0.916843, 0.330794, 0.223550,
		37.066311, 40.037975, 22.702271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676613, 40.304661, 22.151340>,  <37.708099, 39.806419, 22.545786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676613, 40.304661, 22.151340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353306, 40.415131, 22.359350>,  <37.159321, 40.481411, 22.484156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353306, 40.415131, 22.359350>,  <37.676613, 40.304661, 22.151340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353306, 40.415131, 22.359350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215744, 0.960666, -0.174861,
		-0.547861, -0.029143, -0.836061,
		-0.808271, 0.276174, 0.520024,
		37.110825, 40.497982, 22.515358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192093, 40.775433, 21.700514>,  <37.676613, 40.304661, 22.151340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192093, 40.775433, 21.700514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133297, 40.837051, 22.091341>,  <37.098019, 40.874023, 22.325838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133297, 40.837051, 22.091341>,  <37.192093, 40.775433, 21.700514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133297, 40.837051, 22.091341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134843, 0.981698, -0.134488,
		-0.979903, 0.111982, -0.165074,
		-0.146993, 0.154044, 0.977069,
		37.089199, 40.883266, 22.384462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494556, 41.255692, 21.805202>,  <37.192093, 40.775433, 21.700514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494556, 41.255692, 21.805202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766804, 41.289986, 22.096243>,  <36.930153, 41.310562, 22.270866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766804, 41.289986, 22.096243>,  <36.494556, 41.255692, 21.805202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766804, 41.289986, 22.096243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049216, 0.985536, -0.162164,
		-0.730979, 0.146182, 0.666559,
		0.680623, 0.085734, 0.727600,
		36.970989, 41.315704, 22.314524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434109, 41.891785, 22.120800>,  <36.494556, 41.255692, 21.805202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434109, 41.891785, 22.120800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808773, 41.763027, 22.176020>,  <37.033569, 41.685772, 22.209150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808773, 41.763027, 22.176020>,  <36.434109, 41.891785, 22.120800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808773, 41.763027, 22.176020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345706, 0.912942, -0.216852,
		-0.056226, 0.250840, 0.966394,
		0.936657, -0.321895, 0.138048,
		37.089771, 41.666458, 22.217434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802334, 41.944370, 21.757263>,  <36.434109, 41.891785, 22.120800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802334, 41.944370, 21.757263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795349, 42.037682, 22.146164>,  <35.791161, 42.093670, 22.379505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795349, 42.037682, 22.146164>,  <35.802334, 41.944370, 21.757263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795349, 42.037682, 22.146164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819340, 0.560650, -0.119808,
		-0.573042, 0.794514, -0.200923,
		-0.017459, 0.233279, 0.972253,
		35.790112, 42.107666, 22.437840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867069, 42.615955, 21.671579>,  <35.802334, 41.944370, 21.757263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867069, 42.615955, 21.671579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005703, 42.459560, 22.012638>,  <36.088882, 42.365723, 22.217274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005703, 42.459560, 22.012638>,  <35.867069, 42.615955, 21.671579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005703, 42.459560, 22.012638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905216, 0.377693, -0.194764,
		-0.245889, 0.839333, 0.484829,
		0.346588, -0.390985, 0.852647,
		36.109680, 42.342266, 22.268433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247902, 43.174610, 21.895651>,  <35.867069, 42.615955, 21.671579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247902, 43.174610, 21.895651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360142, 42.860943, 22.117044>,  <36.427486, 42.672741, 22.249880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360142, 42.860943, 22.117044>,  <36.247902, 43.174610, 21.895651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360142, 42.860943, 22.117044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943504, 0.331237, -0.009029,
		-0.176254, 0.524748, 0.832811,
		0.280596, -0.784170, 0.553483,
		36.444321, 42.625690, 22.283089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664677, 43.441883, 22.486324>,  <36.247902, 43.174610, 21.895651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664677, 43.441883, 22.486324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738083, 43.056229, 22.409634>,  <36.782127, 42.824837, 22.363619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738083, 43.056229, 22.409634>,  <36.664677, 43.441883, 22.486324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738083, 43.056229, 22.409634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963037, 0.215458, -0.161672,
		0.197183, -0.154968, 0.968041,
		0.183519, -0.964138, -0.191724,
		36.793137, 42.766987, 22.352116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230915, 43.303169, 22.962017>,  <36.664677, 43.441883, 22.486324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230915, 43.303169, 22.962017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237812, 43.073483, 22.634609>,  <37.241951, 42.935669, 22.438164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237812, 43.073483, 22.634609>,  <37.230915, 43.303169, 22.962017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237812, 43.073483, 22.634609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997291, 0.068430, -0.026994,
		0.071512, -0.815839, 0.573841,
		0.017245, -0.574216, -0.818522,
		37.242985, 42.901218, 22.389053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871082, 42.865356, 23.248461>,  <37.230915, 43.303169, 22.962017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871082, 42.865356, 23.248461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572464, 42.980061, 23.488609>,  <36.393295, 43.048882, 23.632698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572464, 42.980061, 23.488609>,  <36.871082, 42.865356, 23.248461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572464, 42.980061, 23.488609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145222, -0.950826, 0.273570,
		0.649296, 0.117044, 0.751476,
		-0.746542, 0.286759, 0.600370,
		36.348503, 43.066090, 23.668720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995247, 42.779049, 23.997534>,  <36.871082, 42.865356, 23.248461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995247, 42.779049, 23.997534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602219, 42.759949, 23.925676>,  <36.366402, 42.748489, 23.882563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602219, 42.759949, 23.925676>,  <36.995247, 42.779049, 23.997534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602219, 42.759949, 23.925676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016096, -0.940954, 0.338152,
		-0.185184, 0.335151, 0.923786,
		-0.982572, -0.047751, -0.179644,
		36.307446, 42.745625, 23.871782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441620, 42.650318, 24.606003>,  <36.995247, 42.779049, 23.997534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441620, 42.650318, 24.606003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339272, 42.478642, 24.259518>,  <36.277863, 42.375637, 24.051626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339272, 42.478642, 24.259518>,  <36.441620, 42.650318, 24.606003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339272, 42.478642, 24.259518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186621, -0.857255, 0.479881,
		-0.948526, 0.284443, 0.139253,
		-0.255874, -0.429192, -0.866212,
		36.262508, 42.349884, 23.999655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750046, 42.156803, 24.515116>,  <36.441620, 42.650318, 24.606003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750046, 42.156803, 24.515116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060390, 42.044594, 24.289076>,  <36.246597, 41.977268, 24.153452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060390, 42.044594, 24.289076>,  <35.750046, 42.156803, 24.515116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060390, 42.044594, 24.289076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023522, -0.907945, 0.418428,
		-0.630461, -0.311351, -0.711041,
		0.775864, -0.280528, -0.565101,
		36.293148, 41.960434, 24.119545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597008, 41.603680, 24.099602>,  <35.750046, 42.156803, 24.515116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597008, 41.603680, 24.099602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990559, 41.595566, 24.170677>,  <36.226688, 41.590698, 24.213322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990559, 41.595566, 24.170677>,  <35.597008, 41.603680, 24.099602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990559, 41.595566, 24.170677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119354, -0.814403, 0.567894,
		0.133189, -0.579946, -0.803694,
		0.983878, -0.020286, 0.177688,
		36.285721, 41.589481, 24.223984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812630, 40.975822, 23.908949>,  <35.597008, 41.603680, 24.099602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812630, 40.975822, 23.908949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063030, 41.095509, 24.197002>,  <36.213272, 41.167320, 24.369835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063030, 41.095509, 24.197002>,  <35.812630, 40.975822, 23.908949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063030, 41.095509, 24.197002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064191, -0.900553, 0.429981,
		0.777177, -0.315394, -0.544539,
		0.626000, 0.299217, 0.720134,
		36.250832, 41.185272, 24.413042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954109, 40.320282, 24.115221>,  <35.812630, 40.975822, 23.908949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954109, 40.320282, 24.115221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121250, 40.575909, 24.373520>,  <36.221535, 40.729286, 24.528500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121250, 40.575909, 24.373520>,  <35.954109, 40.320282, 24.115221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121250, 40.575909, 24.373520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180252, -0.754957, 0.630514,
		0.890456, -0.147062, -0.430652,
		0.417848, 0.639071, 0.645748,
		36.246605, 40.767632, 24.567244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474770, 39.924244, 24.258322>,  <35.954109, 40.320282, 24.115221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474770, 39.924244, 24.258322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448193, 40.196636, 24.550034>,  <36.432247, 40.360073, 24.725061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448193, 40.196636, 24.550034>,  <36.474770, 39.924244, 24.258322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448193, 40.196636, 24.550034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059737, -0.726869, 0.684174,
		0.996000, 0.089026, 0.007618,
		-0.066447, 0.680982, 0.729279,
		36.428257, 40.400932, 24.768818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047375, 39.751320, 24.651432>,  <36.474770, 39.924244, 24.258322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047375, 39.751320, 24.651432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764919, 39.945141, 24.857954>,  <36.595444, 40.061436, 24.981867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764919, 39.945141, 24.857954>,  <37.047375, 39.751320, 24.651432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764919, 39.945141, 24.857954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042080, -0.699163, 0.713723,
		0.706819, 0.525716, 0.473318,
		-0.706142, 0.484556, 0.516304,
		36.553078, 40.090508, 25.012846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394363, 39.886719, 25.441639>,  <37.047375, 39.751320, 24.651432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394363, 39.886719, 25.441639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995045, 39.891125, 25.464571>,  <36.755455, 39.893768, 25.478331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995045, 39.891125, 25.464571>,  <37.394363, 39.886719, 25.441639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995045, 39.891125, 25.464571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032926, -0.704703, 0.708738,
		0.048210, 0.709417, 0.703139,
		-0.998294, 0.011017, 0.057332,
		36.695557, 39.894428, 25.481771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319489, 39.904068, 26.108164>,  <37.394363, 39.886719, 25.441639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319489, 39.904068, 26.108164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974659, 39.758430, 25.967157>,  <36.767761, 39.671047, 25.882553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974659, 39.758430, 25.967157>,  <37.319489, 39.904068, 26.108164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974659, 39.758430, 25.967157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071060, -0.775559, 0.627262,
		-0.501780, 0.515695, 0.694460,
		-0.862071, -0.364096, -0.352515,
		36.716038, 39.649200, 25.861403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822109, 39.795643, 26.638969>,  <37.319489, 39.904068, 26.108164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822109, 39.795643, 26.638969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702522, 39.555447, 26.342314>,  <36.630772, 39.411327, 26.164320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702522, 39.555447, 26.342314>,  <36.822109, 39.795643, 26.638969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702522, 39.555447, 26.342314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233948, -0.707346, 0.667031,
		-0.925142, 0.372925, 0.070988,
		-0.298965, -0.600491, -0.741640,
		36.612831, 39.375298, 26.119822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234844, 39.555496, 26.928722>,  <36.822109, 39.795643, 26.638969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234844, 39.555496, 26.928722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331463, 39.305511, 26.631784>,  <36.389435, 39.155521, 26.453623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331463, 39.305511, 26.631784>,  <36.234844, 39.555496, 26.928722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331463, 39.305511, 26.631784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263062, -0.778523, 0.569825,
		-0.934051, 0.057642, -0.352456,
		0.241550, -0.624964, -0.742344,
		36.403927, 39.118023, 26.409081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680584, 39.078701, 26.962341>,  <36.234844, 39.555496, 26.928722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680584, 39.078701, 26.962341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994144, 38.913193, 26.777176>,  <36.182281, 38.813889, 26.666077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994144, 38.913193, 26.777176>,  <35.680584, 39.078701, 26.962341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994144, 38.913193, 26.777176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120735, -0.832926, 0.540052,
		-0.609030, -0.367460, -0.702891,
		0.783904, -0.413771, -0.462912,
		36.229317, 38.789062, 26.638302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463722, 38.462555, 26.894014>,  <35.680584, 39.078701, 26.962341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463722, 38.462555, 26.894014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855652, 38.397331, 26.847775>,  <36.090809, 38.358196, 26.820030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855652, 38.397331, 26.847775>,  <35.463722, 38.462555, 26.894014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855652, 38.397331, 26.847775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111892, -0.926696, 0.358768,
		-0.165627, -0.338594, -0.926241,
		0.979821, -0.163061, -0.115600,
		36.149597, 38.348412, 26.813095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618317, 37.900681, 26.463161>,  <35.463722, 38.462555, 26.894014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618317, 37.900681, 26.463161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935738, 37.929405, 26.704861>,  <36.126190, 37.946640, 26.849880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935738, 37.929405, 26.704861>,  <35.618317, 37.900681, 26.463161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935738, 37.929405, 26.704861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147880, -0.940483, 0.305978,
		0.590260, -0.332166, -0.735703,
		0.793552, 0.071811, 0.604250,
		36.173801, 37.950947, 26.886135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032707, 37.249001, 26.428480>,  <35.618317, 37.900681, 26.463161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032707, 37.249001, 26.428480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151867, 37.418884, 26.770447>,  <36.223362, 37.520813, 26.975626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151867, 37.418884, 26.770447>,  <36.032707, 37.249001, 26.428480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151867, 37.418884, 26.770447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121486, -0.871429, 0.475240,
		0.946836, -0.245432, -0.208000,
		0.297897, 0.424706, 0.854917,
		36.241238, 37.546295, 27.026922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257866, 36.642857, 26.835764>,  <36.032707, 37.249001, 26.428480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257866, 36.642857, 26.835764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220154, 36.944138, 27.096165>,  <36.197529, 37.124905, 27.252405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220154, 36.944138, 27.096165>,  <36.257866, 36.642857, 26.835764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220154, 36.944138, 27.096165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305266, -0.644286, 0.701219,
		0.947589, -0.132620, 0.290667,
		-0.094277, 0.753198, 0.651002,
		36.191872, 37.170097, 27.291466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743782, 36.520748, 27.406958>,  <36.257866, 36.642857, 26.835764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743782, 36.520748, 27.406958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427990, 36.737816, 27.521658>,  <36.238514, 36.868057, 27.590479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427990, 36.737816, 27.521658>,  <36.743782, 36.520748, 27.406958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427990, 36.737816, 27.521658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044972, -0.517081, 0.854754,
		0.612126, 0.661916, 0.432631,
		-0.789480, 0.542674, 0.286751,
		36.191147, 36.900620, 27.607683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835136, 36.607697, 28.131376>,  <36.743782, 36.520748, 27.406958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835136, 36.607697, 28.131376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452763, 36.710602, 28.074802>,  <36.223339, 36.772346, 28.040859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452763, 36.710602, 28.074802>,  <36.835136, 36.607697, 28.131376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452763, 36.710602, 28.074802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236002, -0.386853, 0.891430,
		0.174621, 0.885527, 0.430522,
		-0.955934, 0.257266, -0.141433,
		36.165981, 36.787781, 28.032373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642136, 36.730938, 28.765198>,  <36.835136, 36.607697, 28.131376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642136, 36.730938, 28.765198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305027, 36.694160, 28.553053>,  <36.102760, 36.672092, 28.425766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305027, 36.694160, 28.553053>,  <36.642136, 36.730938, 28.765198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305027, 36.694160, 28.553053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413894, -0.519240, 0.747717,
		-0.344136, 0.849668, 0.399544,
		-0.842770, -0.091947, -0.530362,
		36.052197, 36.666576, 28.393944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207043, 36.962421, 29.234228>,  <36.642136, 36.730938, 28.765198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207043, 36.962421, 29.234228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012886, 36.730083, 28.972843>,  <35.896393, 36.590683, 28.816011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012886, 36.730083, 28.972843>,  <36.207043, 36.962421, 29.234228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012886, 36.730083, 28.972843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341662, -0.561966, 0.753300,
		-0.804772, 0.588912, 0.074324,
		-0.485395, -0.580842, -0.653464,
		35.867268, 36.555832, 28.776804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390736, 37.028473, 29.406088>,  <36.207043, 36.962421, 29.234228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390736, 37.028473, 29.406088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464237, 36.692001, 29.202654>,  <35.508339, 36.490120, 29.080593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464237, 36.692001, 29.202654>,  <35.390736, 37.028473, 29.406088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464237, 36.692001, 29.202654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518743, -0.522467, 0.676708,
		-0.834948, 0.139476, -0.532360,
		0.183756, -0.841174, -0.508586,
		35.519363, 36.439648, 29.050077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771408, 36.677956, 29.388998>,  <35.390736, 37.028473, 29.406088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771408, 36.677956, 29.388998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045971, 36.392704, 29.332027>,  <35.210709, 36.221554, 29.297844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045971, 36.392704, 29.332027>,  <34.771408, 36.677956, 29.388998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045971, 36.392704, 29.332027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521891, -0.619457, 0.586432,
		-0.506432, -0.328200, -0.797378,
		0.686408, -0.713132, -0.142428,
		35.251892, 36.178764, 29.289299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373886, 36.158958, 29.336327>,  <34.771408, 36.677956, 29.388998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373886, 36.158958, 29.336327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728306, 35.983250, 29.395601>,  <34.940956, 35.877823, 29.431166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728306, 35.983250, 29.395601>,  <34.373886, 36.158958, 29.336327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728306, 35.983250, 29.395601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454656, -0.760893, 0.462957,
		-0.090611, -0.477575, -0.873906,
		0.886046, -0.439275, 0.148187,
		34.994118, 35.851467, 29.440058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206593, 35.580784, 29.644897>,  <34.373886, 36.158958, 29.336327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206593, 35.580784, 29.644897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603489, 35.531319, 29.650188>,  <34.841625, 35.501640, 29.653362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603489, 35.531319, 29.650188>,  <34.206593, 35.580784, 29.644897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603489, 35.531319, 29.650188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103775, -0.764633, 0.636056,
		-0.068541, -0.632491, -0.771529,
		0.992237, -0.123661, 0.013228,
		34.901161, 35.494221, 29.654158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399010, 34.864384, 29.511776>,  <34.206593, 35.580784, 29.644897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399010, 34.864384, 29.511776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670883, 35.037975, 29.748314>,  <34.834007, 35.142132, 29.890236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670883, 35.037975, 29.748314>,  <34.399010, 34.864384, 29.511776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670883, 35.037975, 29.748314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236727, -0.633267, 0.736840,
		0.694251, -0.640808, -0.327689,
		0.679688, 0.433979, 0.591343,
		34.874790, 35.168171, 29.925716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818592, 34.340599, 29.731903>,  <34.399010, 34.864384, 29.511776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818592, 34.340599, 29.731903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898243, 34.627148, 29.999382>,  <34.946033, 34.799076, 30.159870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898243, 34.627148, 29.999382>,  <34.818592, 34.340599, 29.731903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898243, 34.627148, 29.999382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194828, -0.639803, 0.743433,
		0.960412, -0.278316, 0.012171,
		0.199123, 0.716374, 0.668699,
		34.957981, 34.842060, 30.199991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117813, 34.032784, 30.259169>,  <34.818592, 34.340599, 29.731903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117813, 34.032784, 30.259169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987446, 34.359570, 30.449472>,  <34.909225, 34.555641, 30.563656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987446, 34.359570, 30.449472>,  <35.117813, 34.032784, 30.259169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987446, 34.359570, 30.449472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210633, -0.553341, 0.805883,
		0.921634, 0.162443, 0.352424,
		-0.325921, 0.816961, 0.475762,
		34.889671, 34.604656, 30.592201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510189, 34.083797, 30.880928>,  <35.117813, 34.032784, 30.259169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510189, 34.083797, 30.880928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150063, 34.256554, 30.902500>,  <34.933987, 34.360207, 30.915443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150063, 34.256554, 30.902500>,  <35.510189, 34.083797, 30.880928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150063, 34.256554, 30.902500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263728, -0.639899, 0.721787,
		0.346242, 0.635611, 0.690011,
		-0.900313, 0.431888, 0.053932,
		34.879967, 34.386120, 30.918680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274117, 33.925659, 31.518555>,  <35.510189, 34.083797, 30.880928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274117, 33.925659, 31.518555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928699, 34.090073, 31.401699>,  <34.721451, 34.188721, 31.331585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928699, 34.090073, 31.401699>,  <35.274117, 33.925659, 31.518555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928699, 34.090073, 31.401699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488556, -0.538385, 0.686626,
		0.124944, 0.735657, 0.665732,
		-0.863541, 0.411036, -0.292141,
		34.669636, 34.213383, 31.314056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960854, 34.069691, 32.137871>,  <35.274117, 33.925659, 31.518555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960854, 34.069691, 32.137871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663620, 34.059475, 31.870390>,  <34.485279, 34.053345, 31.709900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663620, 34.059475, 31.870390>,  <34.960854, 34.069691, 32.137871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663620, 34.059475, 31.870390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544537, -0.557757, 0.626407,
		-0.388971, 0.829611, 0.400558,
		-0.743089, -0.025535, -0.668706,
		34.440693, 34.051815, 31.669779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454575, 34.486759, 32.456497>,  <34.960854, 34.069691, 32.137871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454575, 34.486759, 32.456497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335392, 34.211849, 32.191505>,  <34.263882, 34.046906, 32.032509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335392, 34.211849, 32.191505>,  <34.454575, 34.486759, 32.456497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335392, 34.211849, 32.191505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296173, -0.593192, 0.748602,
		-0.907470, 0.419260, -0.026805,
		-0.297958, -0.687273, -0.662478,
		34.246006, 34.005669, 31.992762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764072, 34.367931, 32.582268>,  <34.454575, 34.486759, 32.456497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764072, 34.367931, 32.582268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944664, 34.051579, 32.417019>,  <34.053020, 33.861767, 32.317871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944664, 34.051579, 32.417019>,  <33.764072, 34.367931, 32.582268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944664, 34.051579, 32.417019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333195, -0.578939, 0.744185,
		-0.827734, -0.198337, -0.524899,
		0.451483, -0.790881, -0.413123,
		34.080109, 33.814316, 32.293083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245354, 33.940495, 32.601009>,  <33.764072, 34.367931, 32.582268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245354, 33.940495, 32.601009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570679, 33.714691, 32.544666>,  <33.765873, 33.579208, 32.510860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570679, 33.714691, 32.544666>,  <33.245354, 33.940495, 32.601009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570679, 33.714691, 32.544666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282867, -0.595215, 0.752134,
		-0.508431, -0.571879, -0.643780,
		0.813317, -0.564512, -0.140860,
		33.814674, 33.545338, 32.502407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931835, 33.302837, 32.573021>,  <33.245354, 33.940495, 32.601009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931835, 33.302837, 32.573021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321579, 33.248749, 32.644947>,  <33.555428, 33.216293, 32.688103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321579, 33.248749, 32.644947>,  <32.931835, 33.302837, 32.573021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321579, 33.248749, 32.644947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218115, -0.763753, 0.607542,
		0.055180, -0.631186, -0.773667,
		0.974362, -0.135225, 0.179815,
		33.613888, 33.208179, 32.698891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928825, 32.646286, 32.593666>,  <32.931835, 33.302837, 32.573021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928825, 32.646286, 32.593666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268303, 32.754875, 32.775223>,  <33.471989, 32.820026, 32.884155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268303, 32.754875, 32.775223>,  <32.928825, 32.646286, 32.593666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268303, 32.754875, 32.775223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083954, -0.778181, 0.622404,
		0.522173, -0.566338, -0.637649,
		0.848697, 0.271469, 0.453891,
		33.522911, 32.836315, 32.911388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274101, 32.069695, 32.758499>,  <32.928825, 32.646286, 32.593666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274101, 32.069695, 32.758499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449318, 32.332390, 33.004044>,  <33.554447, 32.490005, 33.151367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449318, 32.332390, 33.004044>,  <33.274101, 32.069695, 32.758499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449318, 32.332390, 33.004044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138313, -0.723962, 0.675832,
		0.888250, -0.211139, -0.407960,
		0.438042, 0.656734, 0.613856,
		33.580730, 32.529411, 33.188202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932884, 31.764030, 33.044804>,  <33.274101, 32.069695, 32.758499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932884, 31.764030, 33.044804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857716, 32.063614, 33.298969>,  <33.812614, 32.243362, 33.451469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857716, 32.063614, 33.298969>,  <33.932884, 31.764030, 33.044804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857716, 32.063614, 33.298969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229162, -0.595648, 0.769863,
		0.955076, 0.290286, -0.059697,
		-0.187922, 0.748958, 0.635411,
		33.801338, 32.288300, 33.489594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471264, 31.747141, 33.436916>,  <33.932884, 31.764030, 33.044804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471264, 31.747141, 33.436916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170315, 31.914215, 33.640671>,  <33.989746, 32.014462, 33.762924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170315, 31.914215, 33.640671>,  <34.471264, 31.747141, 33.436916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170315, 31.914215, 33.640671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211076, -0.579646, 0.787056,
		0.624009, 0.699677, 0.347944,
		-0.752370, 0.417687, 0.509389,
		33.944603, 32.039520, 33.793488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651161, 31.705324, 34.188408>,  <34.471264, 31.747141, 33.436916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651161, 31.705324, 34.188408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260334, 31.789417, 34.174900>,  <34.025837, 31.839874, 34.166794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260334, 31.789417, 34.174900>,  <34.651161, 31.705324, 34.188408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260334, 31.789417, 34.174900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166899, -0.657652, 0.734601,
		0.132227, 0.723392, 0.677658,
		-0.977067, 0.210235, -0.033774,
		33.967213, 31.852488, 34.164768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507252, 31.933172, 34.848896>,  <34.651161, 31.705324, 34.188408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507252, 31.933172, 34.848896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167934, 31.803347, 34.681541>,  <33.964344, 31.725451, 34.581127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167934, 31.803347, 34.681541>,  <34.507252, 31.933172, 34.848896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167934, 31.803347, 34.681541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130292, -0.637900, 0.759018,
		-0.513241, 0.698385, 0.498840,
		-0.848297, -0.324565, -0.418390,
		33.913445, 31.705976, 34.556023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074093, 31.562748, 35.224842>,  <34.507252, 31.933172, 34.848896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074093, 31.562748, 35.224842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455753, 31.559395, 35.344528>,  <35.684750, 31.557383, 35.416340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455753, 31.559395, 35.344528>,  <35.074093, 31.562748, 35.224842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455753, 31.559395, 35.344528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231875, 0.652834, -0.721139,
		-0.189291, 0.757455, 0.624845,
		0.954150, -0.008381, 0.299211,
		35.741997, 31.556881, 35.434292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372616, 32.322517, 35.154037>,  <35.074093, 31.562748, 35.224842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372616, 32.322517, 35.154037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678055, 32.064316, 35.160267>,  <35.861320, 31.909395, 35.164005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678055, 32.064316, 35.160267>,  <35.372616, 32.322517, 35.154037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678055, 32.064316, 35.160267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451862, 0.516996, -0.727005,
		0.461235, 0.562176, 0.686455,
		0.763599, -0.645503, 0.015569,
		35.907135, 31.870665, 35.164936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860420, 32.823254, 35.051277>,  <35.372616, 32.322517, 35.154037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860420, 32.823254, 35.051277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041130, 32.469448, 35.004753>,  <36.149555, 32.257164, 34.976841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041130, 32.469448, 35.004753>,  <35.860420, 32.823254, 35.051277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041130, 32.469448, 35.004753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644736, 0.413815, -0.642707,
		0.616616, 0.215371, 0.757232,
		0.451775, -0.884518, -0.116307,
		36.176662, 32.204094, 34.969860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580215, 32.857826, 35.212643>,  <35.860420, 32.823254, 35.051277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580215, 32.857826, 35.212643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597446, 32.545429, 34.963421>,  <36.607784, 32.357990, 34.813889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597446, 32.545429, 34.963421>,  <36.580215, 32.857826, 35.212643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597446, 32.545429, 34.963421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668244, 0.486121, -0.563149,
		0.742694, -0.392094, 0.542833,
		0.043075, -0.780992, -0.623053,
		36.610371, 32.311131, 34.776505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297894, 32.841480, 34.970013>,  <36.580215, 32.857826, 35.212643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297894, 32.841480, 34.970013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064877, 32.665276, 34.696781>,  <36.925068, 32.559551, 34.532841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064877, 32.665276, 34.696781>,  <37.297894, 32.841480, 34.970013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064877, 32.665276, 34.696781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384249, 0.591305, -0.709021,
		0.716241, -0.675505, -0.175191,
		-0.582539, -0.440513, -0.683079,
		36.890114, 32.533123, 34.491856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660698, 32.865513, 34.416916>,  <37.297894, 32.841480, 34.970013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660698, 32.865513, 34.416916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303944, 32.797379, 34.249336>,  <37.089890, 32.756496, 34.148788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303944, 32.797379, 34.249336>,  <37.660698, 32.865513, 34.416916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303944, 32.797379, 34.249336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284097, 0.509755, -0.812058,
		0.351889, -0.843287, -0.406251,
		-0.891887, -0.170340, -0.418953,
		37.036377, 32.746277, 34.123650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808105, 32.633812, 33.739449>,  <37.660698, 32.865513, 34.416916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808105, 32.633812, 33.739449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441860, 32.794563, 33.744198>,  <37.222111, 32.891014, 33.747047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441860, 32.794563, 33.744198>,  <37.808105, 32.633812, 33.739449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441860, 32.794563, 33.744198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150555, 0.370108, -0.916708,
		-0.372802, -0.837564, -0.399382,
		-0.915616, 0.401879, 0.011878,
		37.167175, 32.915127, 33.747761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551167, 32.619160, 32.985168>,  <37.808105, 32.633812, 33.739449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551167, 32.619160, 32.985168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282982, 32.860676, 33.157642>,  <37.122070, 33.005585, 33.261127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282982, 32.860676, 33.157642>,  <37.551167, 32.619160, 32.985168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282982, 32.860676, 33.157642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031266, 0.557644, -0.829491,
		-0.741284, -0.569624, -0.355001,
		-0.670462, 0.603790, 0.431183,
		37.081844, 33.041813, 33.286999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018555, 32.777191, 32.510651>,  <37.551167, 32.619160, 32.985168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018555, 32.777191, 32.510651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977516, 33.077492, 32.771679>,  <36.952892, 33.257671, 32.928295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977516, 33.077492, 32.771679>,  <37.018555, 32.777191, 32.510651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977516, 33.077492, 32.771679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220775, 0.622480, -0.750851,
		-0.969914, -0.221102, 0.101886,
		-0.102593, 0.750755, 0.652566,
		36.946739, 33.302719, 32.967449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436592, 33.214336, 32.284920>,  <37.018555, 32.777191, 32.510651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436592, 33.214336, 32.284920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652908, 33.450150, 32.524918>,  <36.782700, 33.591637, 32.668919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652908, 33.450150, 32.524918>,  <36.436592, 33.214336, 32.284920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652908, 33.450150, 32.524918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036983, 0.729276, -0.683220,
		-0.840343, 0.347290, 0.416190,
		0.540793, 0.589531, 0.599997,
		36.815147, 33.627010, 32.704918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072308, 33.821640, 32.298088>,  <36.436592, 33.214336, 32.284920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072308, 33.821640, 32.298088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443233, 33.898647, 32.426479>,  <36.665787, 33.944851, 32.503513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443233, 33.898647, 32.426479>,  <36.072308, 33.821640, 32.298088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443233, 33.898647, 32.426479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087171, 0.722897, -0.685435,
		-0.363995, 0.663593, 0.653569,
		0.927313, 0.192523, 0.320978,
		36.721428, 33.956406, 32.522774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107159, 34.460571, 32.497787>,  <36.072308, 33.821640, 32.298088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107159, 34.460571, 32.497787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486187, 34.367271, 32.410427>,  <36.713604, 34.311291, 32.358009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486187, 34.367271, 32.410427>,  <36.107159, 34.460571, 32.497787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486187, 34.367271, 32.410427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134668, 0.911334, -0.389018,
		0.289777, 0.339210, 0.894966,
		0.947572, -0.233252, -0.218403,
		36.770458, 34.297295, 32.344906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494801, 35.129444, 32.520966>,  <36.107159, 34.460571, 32.497787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494801, 35.129444, 32.520966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785301, 34.926418, 32.335522>,  <36.959602, 34.804604, 32.224255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785301, 34.926418, 32.335522>,  <36.494801, 35.129444, 32.520966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785301, 34.926418, 32.335522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351767, 0.853826, -0.383719,
		0.590605, 0.115595, 0.798639,
		0.726255, -0.507562, -0.463611,
		37.003178, 34.774151, 32.196438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134998, 35.436111, 32.656731>,  <36.494801, 35.129444, 32.520966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134998, 35.436111, 32.656731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218742, 35.225761, 32.326973>,  <37.268990, 35.099552, 32.129120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218742, 35.225761, 32.326973>,  <37.134998, 35.436111, 32.656731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218742, 35.225761, 32.326973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329219, 0.831765, -0.446969,
		0.920752, -0.177831, 0.347263,
		0.209356, -0.525874, -0.824395,
		37.281548, 35.068001, 32.079655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805946, 35.751488, 32.500340>,  <37.134998, 35.436111, 32.656731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805946, 35.751488, 32.500340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663322, 35.562885, 32.177715>,  <37.577747, 35.449722, 31.984140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663322, 35.562885, 32.177715>,  <37.805946, 35.751488, 32.500340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663322, 35.562885, 32.177715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207998, 0.801577, -0.560545,
		0.910825, -0.367631, -0.187738,
		-0.356561, -0.471509, -0.806563,
		37.556355, 35.421432, 31.935747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303062, 35.728073, 31.981821>,  <37.805946, 35.751488, 32.500340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303062, 35.728073, 31.981821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955936, 35.697617, 31.785414>,  <37.747662, 35.679344, 31.667570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955936, 35.697617, 31.785414>,  <38.303062, 35.728073, 31.981821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955936, 35.697617, 31.785414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157020, 0.895531, -0.416377,
		0.471424, -0.438438, -0.765201,
		-0.867816, -0.076138, -0.491018,
		37.695591, 35.674774, 31.638109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414886, 36.211487, 31.438238>,  <38.303062, 35.728073, 31.981821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414886, 36.211487, 31.438238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027008, 36.118698, 31.407568>,  <37.794281, 36.063026, 31.389166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027008, 36.118698, 31.407568>,  <38.414886, 36.211487, 31.438238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027008, 36.118698, 31.407568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100212, 0.663879, -0.741095,
		0.222815, -0.710953, -0.667007,
		-0.969696, -0.231969, -0.076676,
		37.736099, 36.049107, 31.384565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248287, 35.850201, 30.736599>,  <38.414886, 36.211487, 31.438238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248287, 35.850201, 30.736599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942879, 36.048382, 30.902281>,  <37.759632, 36.167290, 31.001690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942879, 36.048382, 30.902281>,  <38.248287, 35.850201, 30.736599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942879, 36.048382, 30.902281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062015, 0.582180, -0.810692,
		-0.642800, -0.644666, -0.413780,
		-0.763520, 0.495452, 0.414204,
		37.713821, 36.197018, 31.026543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850792, 35.745007, 30.183441>,  <38.248287, 35.850201, 30.736599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850792, 35.745007, 30.183441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738518, 36.063770, 30.397415>,  <37.671154, 36.255028, 30.525799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738518, 36.063770, 30.397415>,  <37.850792, 35.745007, 30.183441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738518, 36.063770, 30.397415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167761, 0.508024, -0.844848,
		-0.945024, -0.326879, -0.008906,
		-0.280687, 0.796907, 0.534933,
		37.654312, 36.302841, 30.557896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306259, 36.021744, 29.737158>,  <37.850792, 35.745007, 30.183441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306259, 36.021744, 29.737158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407436, 36.316208, 29.988264>,  <37.468143, 36.492886, 30.138927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407436, 36.316208, 29.988264>,  <37.306259, 36.021744, 29.737158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407436, 36.316208, 29.988264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057818, 0.659205, -0.749737,
		-0.965753, 0.153341, 0.209302,
		0.252938, 0.736162, 0.627764,
		37.483318, 36.537056, 30.176594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893303, 36.552826, 29.545336>,  <37.306259, 36.021744, 29.737158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893303, 36.552826, 29.545336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190918, 36.734203, 29.741617>,  <37.369488, 36.843029, 29.859386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190918, 36.734203, 29.741617>,  <36.893303, 36.552826, 29.545336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190918, 36.734203, 29.741617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059023, 0.686957, -0.724297,
		-0.665521, 0.567870, 0.484361,
		0.744042, 0.453446, 0.490702,
		37.414131, 36.870235, 29.888828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870430, 37.204502, 29.337326>,  <36.893303, 36.552826, 29.545336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870430, 37.204502, 29.337326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254448, 37.173683, 29.444941>,  <37.484859, 37.155193, 29.509510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254448, 37.173683, 29.444941>,  <36.870430, 37.204502, 29.337326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254448, 37.173683, 29.444941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245748, 0.692021, -0.678760,
		-0.133883, 0.717755, 0.683303,
		0.960043, -0.077046, 0.269036,
		37.542461, 37.150570, 29.525652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306652, 37.934593, 29.547611>,  <36.870430, 37.204502, 29.337326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306652, 37.934593, 29.547611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550877, 37.656551, 29.395796>,  <37.697411, 37.489727, 29.304707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550877, 37.656551, 29.395796>,  <37.306652, 37.934593, 29.547611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550877, 37.656551, 29.395796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504684, 0.710817, -0.489932,
		0.610335, 0.107585, 0.784803,
		0.610561, -0.695100, -0.379540,
		37.734043, 37.448021, 29.281933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899712, 38.344292, 29.351879>,  <37.306652, 37.934593, 29.547611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899712, 38.344292, 29.351879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967625, 37.988281, 29.182631>,  <38.008373, 37.774677, 29.081081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967625, 37.988281, 29.182631>,  <37.899712, 38.344292, 29.351879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967625, 37.988281, 29.182631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559507, 0.440501, -0.702076,
		0.811250, -0.117542, 0.572763,
		0.169779, -0.890024, -0.423122,
		38.018559, 37.721275, 29.055695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721363, 38.222755, 29.188227>,  <37.899712, 38.344292, 29.351879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721363, 38.222755, 29.188227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491989, 37.991051, 28.956491>,  <38.354366, 37.852028, 28.817451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491989, 37.991051, 28.956491>,  <38.721363, 38.222755, 29.188227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491989, 37.991051, 28.956491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527668, 0.279794, -0.802048,
		0.626690, -0.765619, 0.145214,
		-0.573434, -0.579260, -0.579337,
		38.319958, 37.817272, 28.782690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239777, 37.998096, 28.675247>,  <38.721363, 38.222755, 29.188227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239777, 37.998096, 28.675247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881104, 37.941624, 28.507427>,  <38.665897, 37.907742, 28.406736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881104, 37.941624, 28.507427>,  <39.239777, 37.998096, 28.675247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881104, 37.941624, 28.507427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418588, 0.037899, -0.907385,
		0.144006, -0.989258, 0.025114,
		-0.896686, -0.141181, -0.419549,
		38.612099, 37.899269, 28.381563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484642, 37.985859, 28.016987>,  <39.239777, 37.998096, 28.675247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484642, 37.985859, 28.016987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086952, 38.017048, 27.987471>,  <38.848339, 38.035763, 27.969761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086952, 38.017048, 27.987471>,  <39.484642, 37.985859, 28.016987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086952, 38.017048, 27.987471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097867, 0.375768, -0.921532,
		-0.044125, -0.923428, -0.381227,
		-0.994221, 0.077972, -0.073793,
		38.788685, 38.040440, 27.965332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191517, 37.689121, 27.358677>,  <39.484642, 37.985859, 28.016987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191517, 37.689121, 27.358677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926914, 37.969978, 27.464056>,  <38.768150, 38.138493, 27.527283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926914, 37.969978, 27.464056>,  <39.191517, 37.689121, 27.358677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926914, 37.969978, 27.464056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102872, 0.432928, -0.895539,
		-0.742848, -0.565306, -0.358616,
		-0.661508, 0.702141, 0.263446,
		38.728462, 38.180622, 27.543089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766850, 37.571136, 26.818882>,  <39.191517, 37.689121, 27.358677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766850, 37.571136, 26.818882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724056, 37.928883, 26.992622>,  <38.698380, 38.143532, 27.096867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724056, 37.928883, 26.992622>,  <38.766850, 37.571136, 26.818882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724056, 37.928883, 26.992622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165827, 0.446792, -0.879135,
		-0.980334, -0.022028, -0.196111,
		-0.106986, 0.894367, 0.434352,
		38.691959, 38.197193, 27.122929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304302, 37.910217, 26.358418>,  <38.766850, 37.571136, 26.818882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304302, 37.910217, 26.358418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469131, 38.196682, 26.583736>,  <38.568031, 38.368561, 26.718927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469131, 38.196682, 26.583736>,  <38.304302, 37.910217, 26.358418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469131, 38.196682, 26.583736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037261, 0.604463, -0.795761,
		-0.910387, 0.348904, 0.222400,
		0.412077, 0.716164, 0.563296,
		38.592754, 38.411530, 26.752726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017769, 38.445805, 26.031416>,  <38.304302, 37.910217, 26.358418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017769, 38.445805, 26.031416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320812, 38.597824, 26.243679>,  <38.502636, 38.689037, 26.371037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320812, 38.597824, 26.243679>,  <38.017769, 38.445805, 26.031416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320812, 38.597824, 26.243679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328448, 0.480592, -0.813113,
		-0.564055, 0.790311, 0.239271,
		0.757604, 0.380052, 0.530657,
		38.548092, 38.711842, 26.402876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948853, 39.188633, 26.107815>,  <38.017769, 38.445805, 26.031416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948853, 39.188633, 26.107815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341591, 39.120533, 26.141260>,  <38.577232, 39.079674, 26.161327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341591, 39.120533, 26.141260>,  <37.948853, 39.188633, 26.107815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341591, 39.120533, 26.141260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171681, 0.610305, -0.773339,
		0.080632, 0.773655, 0.628455,
		0.981847, -0.170250, 0.083612,
		38.636147, 39.069458, 26.166344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246502, 39.871796, 25.952143>,  <37.948853, 39.188633, 26.107815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246502, 39.871796, 25.952143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535099, 39.595673, 25.930510>,  <38.708256, 39.429996, 25.917530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535099, 39.595673, 25.930510>,  <38.246502, 39.871796, 25.952143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535099, 39.595673, 25.930510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435971, 0.513563, -0.739041,
		0.537942, 0.509633, 0.671485,
		0.721490, -0.690310, -0.054082,
		38.751545, 39.388580, 25.914286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715614, 40.231678, 25.921661>,  <38.246502, 39.871796, 25.952143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715614, 40.231678, 25.921661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854843, 39.887596, 25.772593>,  <38.938381, 39.681145, 25.683151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854843, 39.887596, 25.772593>,  <38.715614, 40.231678, 25.921661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854843, 39.887596, 25.772593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496695, 0.506372, -0.704898,
		0.795070, 0.060254, 0.603517,
		0.348077, -0.860207, -0.372674,
		38.959267, 39.629536, 25.660789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448528, 40.293415, 25.902531>,  <38.715614, 40.231678, 25.921661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448528, 40.293415, 25.902531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370827, 39.987473, 25.656843>,  <39.324203, 39.803909, 25.509432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370827, 39.987473, 25.656843>,  <39.448528, 40.293415, 25.902531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370827, 39.987473, 25.656843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505605, 0.458498, -0.730852,
		0.840612, -0.452523, 0.297648,
		-0.194257, -0.764855, -0.614216,
		39.312550, 39.758015, 25.472578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037094, 40.179588, 25.601999>,  <39.448528, 40.293415, 25.902531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037094, 40.179588, 25.601999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761635, 40.029278, 25.353947>,  <39.596359, 39.939091, 25.205116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761635, 40.029278, 25.353947>,  <40.037094, 40.179588, 25.601999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761635, 40.029278, 25.353947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418705, 0.492157, -0.763196,
		0.591993, -0.785222, -0.181580,
		-0.688644, -0.375778, -0.620130,
		39.555042, 39.916546, 25.167908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413990, 40.104462, 24.975239>,  <40.037094, 40.179588, 25.601999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413990, 40.104462, 24.975239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029789, 40.073875, 24.868221>,  <39.799267, 40.055523, 24.804010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029789, 40.073875, 24.868221>,  <40.413990, 40.104462, 24.975239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029789, 40.073875, 24.868221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183567, 0.548473, -0.815770,
		0.209115, -0.832665, -0.512776,
		-0.960507, -0.076461, -0.267544,
		39.741638, 40.050938, 24.787958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378460, 39.957760, 24.365406>,  <40.413990, 40.104462, 24.975239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378460, 39.957760, 24.365406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004234, 40.096760, 24.390583>,  <39.779697, 40.180161, 24.405689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004234, 40.096760, 24.390583>,  <40.378460, 39.957760, 24.365406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004234, 40.096760, 24.390583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160674, 0.577555, -0.800384,
		-0.314487, -0.738698, -0.596174,
		-0.935565, 0.347499, 0.062944,
		39.723564, 40.201008, 24.409466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839680, 40.539780, 24.033669>,  <40.378460, 39.957760, 24.365406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839680, 40.539780, 24.033669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193054, 40.371033, 23.952110>,  <41.405079, 40.269783, 23.903175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193054, 40.371033, 23.952110>,  <40.839680, 40.539780, 24.033669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193054, 40.371033, 23.952110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349515, -0.883141, 0.312891,
		-0.312069, -0.205153, -0.927645,
		0.883432, -0.421869, -0.203897,
		41.458084, 40.244473, 23.890942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745640, 39.855122, 23.652330>,  <40.839680, 40.539780, 24.033669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745640, 39.855122, 23.652330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102070, 39.854012, 23.833872>,  <41.315926, 39.853344, 23.942797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102070, 39.854012, 23.833872>,  <40.745640, 39.855122, 23.652330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102070, 39.854012, 23.833872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247834, -0.840709, 0.481441,
		0.380222, -0.541479, -0.749821,
		0.891072, -0.002776, 0.453854,
		41.369392, 39.853180, 23.970028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915306, 39.132042, 23.721762>,  <40.745640, 39.855122, 23.652330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915306, 39.132042, 23.721762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186966, 39.284180, 23.972870>,  <41.349964, 39.375462, 24.123535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186966, 39.284180, 23.972870>,  <40.915306, 39.132042, 23.721762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186966, 39.284180, 23.972870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008468, -0.851157, 0.524844,
		0.733949, -0.361765, -0.574844,
		0.679152, 0.380340, 0.627769,
		41.390713, 39.398281, 24.161200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435093, 38.590141, 23.829456>,  <40.915306, 39.132042, 23.721762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435093, 38.590141, 23.829456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461376, 38.833454, 24.145853>,  <41.477146, 38.979443, 24.335691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461376, 38.833454, 24.145853>,  <41.435093, 38.590141, 23.829456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461376, 38.833454, 24.145853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074597, -0.793483, 0.604004,
		0.995047, 0.019320, -0.097512,
		0.065705, 0.608286, 0.790994,
		41.481087, 39.015942, 24.383152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875679, 38.277454, 24.217842>,  <41.435093, 38.590141, 23.829456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875679, 38.277454, 24.217842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686592, 38.519032, 24.474527>,  <41.573139, 38.663979, 24.628538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686592, 38.519032, 24.474527>,  <41.875679, 38.277454, 24.217842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686592, 38.519032, 24.474527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115503, -0.679464, 0.724560,
		0.873613, 0.416629, 0.251435,
		-0.472714, 0.603944, 0.641711,
		41.544777, 38.700214, 24.667040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217880, 38.261082, 24.848564>,  <41.875679, 38.277454, 24.217842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217880, 38.261082, 24.848564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875519, 38.422798, 24.977551>,  <41.670101, 38.519829, 25.054943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875519, 38.422798, 24.977551>,  <42.217880, 38.261082, 24.848564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875519, 38.422798, 24.977551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103788, -0.476575, 0.872986,
		0.506621, 0.780656, 0.365940,
		-0.855899, 0.404293, 0.322466,
		41.618748, 38.544086, 25.074289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401138, 38.527397, 25.554424>,  <42.217880, 38.261082, 24.848564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401138, 38.527397, 25.554424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005505, 38.486835, 25.511648>,  <41.768124, 38.462498, 25.485983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005505, 38.486835, 25.511648>,  <42.401138, 38.527397, 25.554424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005505, 38.486835, 25.511648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023933, -0.605466, 0.795511,
		-0.145419, 0.789384, 0.596428,
		-0.989081, -0.101408, -0.106939,
		41.708782, 38.456413, 25.479567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324711, 38.387337, 26.212862>,  <42.401138, 38.527397, 25.554424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324711, 38.387337, 26.212862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955658, 38.293476, 26.090433>,  <41.734226, 38.237160, 26.016975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955658, 38.293476, 26.090433>,  <42.324711, 38.387337, 26.212862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955658, 38.293476, 26.090433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208706, -0.363590, 0.907879,
		-0.324319, 0.901522, 0.286488,
		-0.922637, -0.234651, -0.306072,
		41.678867, 38.223080, 25.998611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896893, 38.571281, 26.755442>,  <42.324711, 38.387337, 26.212862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896893, 38.571281, 26.755442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682205, 38.309181, 26.542807>,  <41.553394, 38.151920, 26.415226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682205, 38.309181, 26.542807>,  <41.896893, 38.571281, 26.755442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682205, 38.309181, 26.542807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335881, -0.412032, 0.847002,
		-0.774028, 0.633151, 0.001059,
		-0.536717, -0.655247, -0.531588,
		41.521191, 38.112606, 26.383329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128151, 38.566887, 26.946617>,  <41.896893, 38.571281, 26.755442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128151, 38.566887, 26.946617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231407, 38.213478, 26.790281>,  <41.293362, 38.001434, 26.696480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231407, 38.213478, 26.790281>,  <41.128151, 38.566887, 26.946617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231407, 38.213478, 26.790281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401392, -0.466063, 0.788460,
		-0.878776, -0.046653, -0.474948,
		0.258140, -0.883521, -0.390839,
		41.308849, 37.948421, 26.673029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551739, 38.144093, 26.877886>,  <41.128151, 38.566887, 26.946617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551739, 38.144093, 26.877886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849243, 37.876717, 26.877090>,  <41.027744, 37.716290, 26.876614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849243, 37.876717, 26.877090>,  <40.551739, 38.144093, 26.877886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849243, 37.876717, 26.877090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427539, -0.477994, 0.767289,
		-0.513847, -0.569823, -0.641299,
		0.743755, -0.668449, -0.001994,
		41.072372, 37.676182, 26.876493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161148, 37.495022, 26.901241>,  <40.551739, 38.144093, 26.877886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161148, 37.495022, 26.901241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538620, 37.426495, 27.014460>,  <40.765102, 37.385376, 27.082390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538620, 37.426495, 27.014460>,  <40.161148, 37.495022, 26.901241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538620, 37.426495, 27.014460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329948, -0.550597, 0.766797,
		0.024476, -0.817002, -0.576115,
		0.943682, -0.171320, 0.283044,
		40.821724, 37.375099, 27.099373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263294, 36.715237, 26.989914>,  <40.161148, 37.495022, 26.901241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263294, 36.715237, 26.989914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506908, 36.919155, 27.232956>,  <40.653076, 37.041504, 27.378782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506908, 36.919155, 27.232956>,  <40.263294, 36.715237, 26.989914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506908, 36.919155, 27.232956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279206, -0.579236, 0.765852,
		0.742374, -0.636079, -0.210438,
		0.609036, 0.509793, 0.607607,
		40.689621, 37.072094, 27.415237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662407, 36.110680, 27.441048>,  <40.263294, 36.715237, 26.989914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662407, 36.110680, 27.441048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718056, 36.468536, 27.610872>,  <40.751446, 36.683250, 27.712767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718056, 36.468536, 27.610872>,  <40.662407, 36.110680, 27.441048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718056, 36.468536, 27.610872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033471, -0.424237, 0.904932,
		0.989709, -0.140109, -0.029077,
		0.139125, 0.894647, 0.424561,
		40.759792, 36.736931, 27.738241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168087, 36.012123, 27.948177>,  <40.662407, 36.110680, 27.441048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168087, 36.012123, 27.948177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927761, 36.324238, 28.017660>,  <40.783566, 36.511505, 28.059351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927761, 36.324238, 28.017660>,  <41.168087, 36.012123, 27.948177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927761, 36.324238, 28.017660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216723, -0.368159, 0.904152,
		0.769449, 0.505583, 0.390301,
		-0.600816, 0.780285, 0.173708,
		40.747517, 36.558323, 28.069773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291939, 36.220177, 28.631279>,  <41.168087, 36.012123, 27.948177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291939, 36.220177, 28.631279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930969, 36.383430, 28.576075>,  <40.714386, 36.481384, 28.542952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930969, 36.383430, 28.576075>,  <41.291939, 36.220177, 28.631279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930969, 36.383430, 28.576075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281152, -0.315142, 0.906443,
		0.326462, 0.856801, 0.399142,
		-0.902428, 0.408139, -0.138009,
		40.660240, 36.505871, 28.534672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112171, 36.503475, 29.247705>,  <41.291939, 36.220177, 28.631279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112171, 36.503475, 29.247705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756073, 36.481358, 29.066856>,  <40.542416, 36.468086, 28.958347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756073, 36.481358, 29.066856>,  <41.112171, 36.503475, 29.247705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756073, 36.481358, 29.066856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399605, -0.381566, 0.833501,
		-0.218603, 0.922686, 0.317589,
		-0.890241, -0.055295, -0.452121,
		40.489002, 36.464767, 28.931219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666458, 36.883102, 29.694296>,  <41.112171, 36.503475, 29.247705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666458, 36.883102, 29.694296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438934, 36.631943, 29.481804>,  <40.302422, 36.481247, 29.354309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438934, 36.631943, 29.481804>,  <40.666458, 36.883102, 29.694296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438934, 36.631943, 29.481804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262687, -0.473372, 0.840782,
		-0.779393, 0.617790, 0.104317,
		-0.568807, -0.627897, -0.531228,
		40.268291, 36.443573, 29.322435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948402, 36.877712, 29.943989>,  <40.666458, 36.883102, 29.694296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948402, 36.877712, 29.943989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989483, 36.517323, 29.775373>,  <40.014130, 36.301086, 29.674204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989483, 36.517323, 29.775373>,  <39.948402, 36.877712, 29.943989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989483, 36.517323, 29.775373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410912, -0.424357, 0.806890,
		-0.905872, 0.090348, -0.413804,
		0.102700, -0.900976, -0.421538,
		40.020294, 36.247028, 29.648912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295826, 36.529613, 30.142593>,  <39.948402, 36.877712, 29.943989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295826, 36.529613, 30.142593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544949, 36.235100, 30.036764>,  <39.694420, 36.058392, 29.973267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544949, 36.235100, 30.036764>,  <39.295826, 36.529613, 30.142593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544949, 36.235100, 30.036764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359618, -0.569727, 0.738976,
		-0.694832, -0.365092, -0.619609,
		0.622803, -0.736287, -0.264572,
		39.731789, 36.014214, 29.957394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873932, 35.960835, 30.040659>,  <39.295826, 36.529613, 30.142593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873932, 35.960835, 30.040659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240215, 35.806793, 30.086571>,  <39.459984, 35.714371, 30.114119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240215, 35.806793, 30.086571>,  <38.873932, 35.960835, 30.040659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240215, 35.806793, 30.086571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363440, -0.671846, 0.645395,
		-0.171426, -0.632710, -0.755176,
		0.915709, -0.385099, 0.114781,
		39.514927, 35.691265, 30.121004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758648, 35.246449, 30.073051>,  <38.873932, 35.960835, 30.040659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758648, 35.246449, 30.073051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121704, 35.300808, 30.231905>,  <39.339539, 35.333424, 30.327217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121704, 35.300808, 30.231905>,  <38.758648, 35.246449, 30.073051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121704, 35.300808, 30.231905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146134, -0.784631, 0.602494,
		0.393481, -0.604885, -0.692306,
		0.907644, 0.135900, 0.397132,
		39.393997, 35.341579, 30.351044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133682, 34.625832, 30.099039>,  <38.758648, 35.246449, 30.073051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133682, 34.625832, 30.099039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301674, 34.845409, 30.388113>,  <39.402470, 34.977158, 30.561558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301674, 34.845409, 30.388113>,  <39.133682, 34.625832, 30.099039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301674, 34.845409, 30.388113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153395, -0.827798, 0.539648,
		0.894476, -0.115784, -0.431864,
		0.419979, 0.548948, 0.722685,
		39.427670, 35.010094, 30.604919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763134, 34.311329, 30.197983>,  <39.133682, 34.625832, 30.099039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763134, 34.311329, 30.197983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675758, 34.513859, 30.531670>,  <39.623333, 34.635376, 30.731882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675758, 34.513859, 30.531670>,  <39.763134, 34.311329, 30.197983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675758, 34.513859, 30.531670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096356, -0.839493, 0.534760,
		0.971082, 0.197194, 0.134591,
		-0.218439, 0.506327, 0.834217,
		39.610226, 34.665756, 30.781935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022541, 33.937584, 30.685909>,  <39.763134, 34.311329, 30.197983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022541, 33.937584, 30.685909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814476, 34.172565, 30.933886>,  <39.689636, 34.313553, 31.082672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814476, 34.172565, 30.933886>,  <40.022541, 33.937584, 30.685909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814476, 34.172565, 30.933886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010343, -0.721485, 0.692353,
		0.854004, 0.366549, 0.369214,
		-0.520164, 0.587454, 0.619942,
		39.658428, 34.348801, 31.119867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421177, 33.962467, 31.290245>,  <40.022541, 33.937584, 30.685909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421177, 33.962467, 31.290245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061325, 34.083096, 31.416559>,  <39.845413, 34.155472, 31.492348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061325, 34.083096, 31.416559>,  <40.421177, 33.962467, 31.290245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061325, 34.083096, 31.416559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029702, -0.679263, 0.733294,
		0.435640, 0.669073, 0.602129,
		-0.899631, 0.301568, 0.315787,
		39.791435, 34.173565, 31.511295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474041, 33.966301, 32.009750>,  <40.421177, 33.962467, 31.290245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474041, 33.966301, 32.009750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077114, 33.980457, 31.962337>,  <39.838959, 33.988949, 31.933889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077114, 33.980457, 31.962337>,  <40.474041, 33.966301, 32.009750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077114, 33.980457, 31.962337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107553, -0.720164, 0.685417,
		-0.061107, 0.692901, 0.718439,
		-0.992320, 0.035387, -0.118530,
		39.779419, 33.991074, 31.926779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203159, 34.088951, 32.644718>,  <40.474041, 33.966301, 32.009750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203159, 34.088951, 32.644718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940880, 33.879383, 32.427258>,  <39.783512, 33.753643, 32.296780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940880, 33.879383, 32.427258>,  <40.203159, 34.088951, 32.644718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940880, 33.879383, 32.427258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085751, -0.663718, 0.743051,
		-0.750135, 0.533838, 0.390274,
		-0.655701, -0.523922, -0.543656,
		39.744171, 33.722206, 32.264160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689404, 33.988808, 33.135738>,  <40.203159, 34.088951, 32.644718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689404, 33.988808, 33.135738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631496, 33.729149, 32.837036>,  <39.596752, 33.573353, 32.657814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631496, 33.729149, 32.837036>,  <39.689404, 33.988808, 33.135738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631496, 33.729149, 32.837036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151356, -0.731297, 0.665053,
		-0.977821, 0.209303, 0.007613,
		-0.144765, -0.649150, -0.746757,
		39.588066, 33.534405, 32.613010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104675, 33.515659, 33.388935>,  <39.689404, 33.988808, 33.135738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104675, 33.515659, 33.388935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231297, 33.270279, 33.099529>,  <39.307270, 33.123051, 32.925884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231297, 33.270279, 33.099529>,  <39.104675, 33.515659, 33.388935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231297, 33.270279, 33.099529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205773, -0.788985, 0.578929,
		-0.925987, -0.034382, -0.375987,
		0.316553, -0.613449, -0.723515,
		39.326263, 33.086243, 32.882473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684410, 32.842030, 33.418030>,  <39.104675, 33.515659, 33.388935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684410, 32.842030, 33.418030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027756, 32.748672, 33.235279>,  <39.233765, 32.692657, 33.125629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027756, 32.748672, 33.235279>,  <38.684410, 32.842030, 33.418030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027756, 32.748672, 33.235279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098763, -0.798701, 0.593567,
		-0.503442, -0.554620, -0.662528,
		0.858366, -0.233394, -0.456875,
		39.285267, 32.678654, 33.098217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679989, 32.142910, 33.433125>,  <38.684410, 32.842030, 33.418030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679989, 32.142910, 33.433125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067356, 32.216862, 33.366215>,  <39.299778, 32.261234, 33.326069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067356, 32.216862, 33.366215>,  <38.679989, 32.142910, 33.433125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067356, 32.216862, 33.366215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248379, -0.773835, 0.582655,
		-0.021723, -0.605803, -0.795318,
		0.968419, 0.184883, -0.167279,
		39.357883, 32.272327, 33.316032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022915, 31.605413, 33.096313>,  <38.679989, 32.142910, 33.433125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022915, 31.605413, 33.096313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325596, 31.795359, 33.276047>,  <39.507206, 31.909327, 33.383888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325596, 31.795359, 33.276047>,  <39.022915, 31.605413, 33.096313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325596, 31.795359, 33.276047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168449, -0.805728, 0.567827,
		0.631682, -0.353988, -0.689689,
		0.756706, 0.474863, 0.449335,
		39.552608, 31.937817, 33.410847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529434, 31.015234, 33.350784>,  <39.022915, 31.605413, 33.096313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529434, 31.015234, 33.350784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651794, 31.341715, 33.546841>,  <39.725212, 31.537603, 33.664474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651794, 31.341715, 33.546841>,  <39.529434, 31.015234, 33.350784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651794, 31.341715, 33.546841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338276, -0.574407, 0.745404,
		0.889941, -0.062217, -0.451813,
		0.305901, 0.816202, 0.490141,
		39.743565, 31.586576, 33.693882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195572, 30.936247, 33.528328>,  <39.529434, 31.015234, 33.350784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195572, 30.936247, 33.528328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096848, 31.207714, 33.805019>,  <40.037613, 31.370594, 33.971035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096848, 31.207714, 33.805019>,  <40.195572, 30.936247, 33.528328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096848, 31.207714, 33.805019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223129, -0.654836, 0.722082,
		0.943026, 0.332563, 0.010189,
		-0.246810, 0.678669, 0.691732,
		40.022804, 31.411314, 34.012539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766685, 30.938971, 34.043633>,  <40.195572, 30.936247, 33.528328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766685, 30.938971, 34.043633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433971, 31.070044, 34.222855>,  <40.234341, 31.148687, 34.330387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433971, 31.070044, 34.222855>,  <40.766685, 30.938971, 34.043633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433971, 31.070044, 34.222855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114775, -0.688197, 0.716388,
		0.543096, 0.647309, 0.534824,
		-0.831789, 0.327683, 0.448052,
		40.184433, 31.168348, 34.357269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948448, 30.996040, 34.682426>,  <40.766685, 30.938971, 34.043633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948448, 30.996040, 34.682426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549946, 30.977261, 34.711475>,  <40.310844, 30.965992, 34.728905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549946, 30.977261, 34.711475>,  <40.948448, 30.996040, 34.682426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549946, 30.977261, 34.711475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081017, -0.800479, 0.593861,
		0.030254, 0.597520, 0.801284,
		-0.996254, -0.046951, 0.072627,
		40.251068, 30.963175, 34.733265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795444, 30.937664, 35.408192>,  <40.948448, 30.996040, 34.682426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795444, 30.937664, 35.408192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482376, 30.793276, 35.205360>,  <40.294537, 30.706642, 35.083660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482376, 30.793276, 35.205360>,  <40.795444, 30.937664, 35.408192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482376, 30.793276, 35.205360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050802, -0.774899, 0.630040,
		-0.620360, 0.518874, 0.588152,
		-0.782670, -0.360972, -0.507077,
		40.247574, 30.684984, 35.053238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185856, 30.861307, 35.919010>,  <40.795444, 30.937664, 35.408192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185856, 30.861307, 35.919010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108395, 30.620636, 35.609047>,  <40.061920, 30.476233, 35.423069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108395, 30.620636, 35.609047>,  <40.185856, 30.861307, 35.919010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108395, 30.620636, 35.609047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288190, -0.720126, 0.631162,
		-0.937788, 0.345545, -0.033947,
		-0.193648, -0.601679, -0.774908,
		40.050301, 30.440132, 35.376575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657944, 30.468788, 36.086140>,  <40.185856, 30.861307, 35.919010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657944, 30.468788, 36.086140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723503, 30.252619, 35.756031>,  <39.762836, 30.122917, 35.557964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723503, 30.252619, 35.756031>,  <39.657944, 30.468788, 36.086140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723503, 30.252619, 35.756031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413059, -0.797314, 0.440083,
		-0.895836, 0.268761, -0.353902,
		0.163894, -0.540424, -0.825276,
		39.772671, 30.090492, 35.508450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098518, 30.149466, 36.052536>,  <39.657944, 30.468788, 36.086140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098518, 30.149466, 36.052536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365059, 29.930885, 35.849609>,  <39.524982, 29.799736, 35.727852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365059, 29.930885, 35.849609>,  <39.098518, 30.149466, 36.052536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365059, 29.930885, 35.849609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343179, -0.828791, 0.441966,
		-0.661972, -0.120403, -0.739794,
		0.666349, -0.546451, -0.507316,
		39.564964, 29.766951, 35.697414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749092, 29.420223, 35.846764>,  <39.098518, 30.149466, 36.052536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749092, 29.420223, 35.846764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142967, 29.354176, 35.824413>,  <39.379292, 29.314547, 35.811001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142967, 29.354176, 35.824413>,  <38.749092, 29.420223, 35.846764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142967, 29.354176, 35.824413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115304, -0.857364, 0.501629,
		-0.130737, -0.487506, -0.863276,
		0.984689, -0.165121, -0.055878,
		39.438374, 29.304640, 35.807652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838245, 28.786291, 35.532207>,  <38.749092, 29.420223, 35.846764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838245, 28.786291, 35.532207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151890, 28.882837, 35.760914>,  <39.340076, 28.940765, 35.898140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151890, 28.882837, 35.760914>,  <38.838245, 28.786291, 35.532207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151890, 28.882837, 35.760914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148743, -0.821345, 0.550698,
		0.602539, -0.516852, -0.608121,
		0.784106, 0.241363, 0.571770,
		39.387123, 28.955246, 35.932446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437386, 28.221443, 35.612305>,  <38.838245, 28.786291, 35.532207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437386, 28.221443, 35.612305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446430, 28.454502, 35.937267>,  <39.451859, 28.594337, 36.132244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446430, 28.454502, 35.937267>,  <39.437386, 28.221443, 35.612305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446430, 28.454502, 35.937267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003858, -0.812560, 0.582865,
		0.999737, -0.016315, -0.016127,
		0.022613, 0.582649, 0.812409,
		39.453213, 28.629297, 36.180988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522480, 27.772703, 36.129570>,  <39.437386, 28.221443, 35.612305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522480, 27.772703, 36.129570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460472, 28.097511, 36.354637>,  <39.423267, 28.292397, 36.489677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460472, 28.097511, 36.354637>,  <39.522480, 27.772703, 36.129570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460472, 28.097511, 36.354637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021604, -0.572200, 0.819829,
		0.987675, 0.114933, 0.106245,
		-0.155019, 0.812020, 0.562665,
		39.413967, 28.341118, 36.523438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892315, 27.702435, 36.846294>,  <39.522480, 27.772703, 36.129570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892315, 27.702435, 36.846294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624481, 27.994335, 36.901608>,  <39.463783, 28.169476, 36.934795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624481, 27.994335, 36.901608>,  <39.892315, 27.702435, 36.846294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624481, 27.994335, 36.901608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248005, -0.395163, 0.884500,
		0.700110, 0.557950, 0.445576,
		-0.669582, 0.729752, 0.138283,
		39.423607, 28.213261, 36.943092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973228, 27.959860, 37.588314>,  <39.892315, 27.702435, 36.846294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973228, 27.959860, 37.588314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611282, 28.032303, 37.434208>,  <39.394115, 28.075768, 37.341743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611282, 28.032303, 37.434208>,  <39.973228, 27.959860, 37.588314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611282, 28.032303, 37.434208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415672, -0.571207, 0.707771,
		-0.091883, 0.800577, 0.592144,
		-0.904862, 0.181105, -0.385262,
		39.339825, 28.086634, 37.318630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469334, 28.299662, 38.095966>,  <39.973228, 27.959860, 37.588314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469334, 28.299662, 38.095966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265816, 28.110229, 37.808395>,  <39.143703, 27.996571, 37.635853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265816, 28.110229, 37.808395>,  <39.469334, 28.299662, 38.095966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265816, 28.110229, 37.808395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250262, -0.717667, 0.649865,
		-0.823710, 0.510566, 0.246626,
		-0.508794, -0.473579, -0.718924,
		39.113178, 27.968155, 37.592720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873920, 28.160549, 38.371624>,  <39.469334, 28.299662, 38.095966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873920, 28.160549, 38.371624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925453, 27.894421, 38.077480>,  <38.956371, 27.734743, 37.900993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925453, 27.894421, 38.077480>,  <38.873920, 28.160549, 38.371624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925453, 27.894421, 38.077480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161328, -0.745719, 0.646434,
		-0.978456, 0.035352, -0.203409,
		0.128833, -0.665323, -0.735356,
		38.964104, 27.694824, 37.856873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190575, 27.865473, 38.069084>,  <38.873920, 28.160549, 38.371624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190575, 27.865473, 38.069084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491425, 27.611748, 37.997574>,  <38.671932, 27.459513, 37.954666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491425, 27.611748, 37.997574>,  <38.190575, 27.865473, 38.069084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491425, 27.611748, 37.997574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526781, -0.741659, 0.415264,
		-0.395997, -0.218153, -0.891962,
		0.752123, -0.634312, -0.178776,
		38.717060, 27.421453, 37.943939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911266, 27.335215, 37.608002>,  <38.190575, 27.865473, 38.069084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911266, 27.335215, 37.608002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235966, 27.191349, 37.792046>,  <38.430786, 27.105030, 37.902473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235966, 27.191349, 37.792046>,  <37.911266, 27.335215, 37.608002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235966, 27.191349, 37.792046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574898, -0.630731, 0.521221,
		0.102743, -0.687619, -0.718766,
		0.811749, -0.359665, 0.460113,
		38.479492, 27.083448, 37.930080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848808, 26.556128, 37.515160>,  <37.911266, 27.335215, 37.608002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848808, 26.556128, 37.515160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100403, 26.652369, 37.810856>,  <38.251362, 26.710114, 37.988274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100403, 26.652369, 37.810856>,  <37.848808, 26.556128, 37.515160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100403, 26.652369, 37.810856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372130, -0.741702, 0.558030,
		0.682561, -0.626091, -0.376989,
		0.628991, 0.240600, 0.739244,
		38.289101, 26.724548, 38.032631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104420, 25.884064, 37.631214>,  <37.848808, 26.556128, 37.515160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104420, 25.884064, 37.631214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168846, 26.154951, 37.918388>,  <38.207500, 26.317484, 38.090694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168846, 26.154951, 37.918388>,  <38.104420, 25.884064, 37.631214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168846, 26.154951, 37.918388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484533, -0.579476, 0.655314,
		0.859818, -0.453409, 0.234804,
		0.161062, 0.677220, 0.717936,
		38.217163, 26.358118, 38.133770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995682, 25.493202, 38.202023>,  <38.104420, 25.884064, 37.631214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995682, 25.493202, 38.202023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975548, 25.837233, 38.405094>,  <37.963467, 26.043652, 38.526936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975548, 25.837233, 38.405094>,  <37.995682, 25.493202, 38.202023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975548, 25.837233, 38.405094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595513, -0.433921, 0.676075,
		0.801767, -0.268297, 0.534028,
		-0.050337, 0.860075, 0.507678,
		37.960445, 26.095255, 38.557396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318275, 25.364796, 38.909050>,  <37.995682, 25.493202, 38.202023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318275, 25.364796, 38.909050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084949, 25.687981, 38.942371>,  <37.944954, 25.881891, 38.962364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084949, 25.687981, 38.942371>,  <38.318275, 25.364796, 38.909050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084949, 25.687981, 38.942371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379576, -0.361830, 0.851470,
		0.718101, 0.465052, 0.517744,
		-0.583313, 0.807964, 0.083308,
		37.909954, 25.930370, 38.967365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202946, 25.435617, 39.634766>,  <38.318275, 25.364796, 38.909050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202946, 25.435617, 39.634766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909164, 25.655355, 39.475368>,  <37.732895, 25.787197, 39.379730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909164, 25.655355, 39.475368>,  <38.202946, 25.435617, 39.634766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909164, 25.655355, 39.475368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661787, -0.449619, 0.599900,
		0.150380, 0.704319, 0.693773,
		-0.734454, 0.549343, -0.398495,
		37.688828, 25.820158, 39.355820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819111, 25.738153, 40.184105>,  <38.202946, 25.435617, 39.634766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819111, 25.738153, 40.184105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554199, 25.716169, 39.885208>,  <37.395252, 25.702978, 39.705872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554199, 25.716169, 39.885208>,  <37.819111, 25.738153, 40.184105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554199, 25.716169, 39.885208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622005, -0.515692, 0.589212,
		-0.417730, 0.855009, 0.307344,
		-0.662277, -0.054962, -0.747240,
		37.355515, 25.699680, 39.661037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267994, 25.905691, 40.406807>,  <37.819111, 25.738153, 40.184105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267994, 25.905691, 40.406807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090542, 25.706715, 40.108612>,  <36.984070, 25.587328, 39.929695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090542, 25.706715, 40.108612>,  <37.267994, 25.905691, 40.406807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090542, 25.706715, 40.108612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735139, -0.273796, 0.620166,
		-0.512607, 0.823157, -0.244226,
		-0.443626, -0.497442, -0.745484,
		36.957455, 25.557482, 39.884968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573376, 26.183846, 40.466118>,  <37.267994, 25.905691, 40.406807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573376, 26.183846, 40.466118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565193, 25.842072, 40.258457>,  <36.560284, 25.637007, 40.133862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565193, 25.842072, 40.258457>,  <36.573376, 26.183846, 40.466118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565193, 25.842072, 40.258457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629668, -0.392328, 0.670520,
		-0.776595, 0.340610, -0.529986,
		-0.020458, -0.854438, -0.519152,
		36.559055, 25.585741, 40.102711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932220, 25.892679, 40.362110>,  <36.573376, 26.183846, 40.466118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932220, 25.892679, 40.362110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156227, 25.564962, 40.411335>,  <36.290630, 25.368332, 40.440872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156227, 25.564962, 40.411335>,  <35.932220, 25.892679, 40.362110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156227, 25.564962, 40.411335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668970, -0.359545, 0.650543,
		-0.488738, -0.446640, -0.749432,
		0.560013, -0.819292, 0.123065,
		36.324230, 25.319176, 40.448254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552444, 25.240358, 40.279480>,  <35.932220, 25.892679, 40.362110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552444, 25.240358, 40.279480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858418, 25.176863, 40.529179>,  <36.042000, 25.138765, 40.678997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858418, 25.176863, 40.529179>,  <35.552444, 25.240358, 40.279480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858418, 25.176863, 40.529179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643609, -0.226534, 0.731061,
		0.025367, -0.960981, -0.275447,
		0.764934, -0.158736, 0.624243,
		36.087898, 25.129242, 40.716450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509464, 24.550842, 40.672508>,  <35.552444, 25.240358, 40.279480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509464, 24.550842, 40.672508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700951, 24.836792, 40.876385>,  <35.815842, 25.008362, 40.998711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700951, 24.836792, 40.876385>,  <35.509464, 24.550842, 40.672508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700951, 24.836792, 40.876385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490061, -0.264108, 0.830715,
		0.728471, -0.647456, 0.223900,
		0.478718, 0.714876, 0.509687,
		35.844566, 25.051254, 41.029289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895641, 24.351582, 41.293789>,  <35.509464, 24.550842, 40.672508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895641, 24.351582, 41.293789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828888, 24.733236, 41.393208>,  <35.788837, 24.962229, 41.452858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828888, 24.733236, 41.393208>,  <35.895641, 24.351582, 41.293789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828888, 24.733236, 41.393208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253610, -0.285143, 0.924324,
		0.952802, 0.091217, 0.289563,
		-0.166881, 0.954135, 0.248551,
		35.778824, 25.019476, 41.467773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490669, 24.811462, 41.241325>,  <35.895641, 24.351582, 41.293789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490669, 24.811462, 41.241325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350933, 24.573404, 40.951839>,  <36.267090, 24.430571, 40.778149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350933, 24.573404, 40.951839>,  <36.490669, 24.811462, 41.241325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350933, 24.573404, 40.951839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265783, 0.677715, -0.685611,
		0.898509, -0.431865, -0.078576,
		-0.349343, -0.595144, -0.723715,
		36.246132, 24.394861, 40.734726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995617, 24.774471, 40.636070>,  <36.490669, 24.811462, 41.241325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995617, 24.774471, 40.636070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627262, 24.685307, 40.508144>,  <36.406250, 24.631807, 40.431389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627262, 24.685307, 40.508144>,  <36.995617, 24.774471, 40.636070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627262, 24.685307, 40.508144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153969, 0.545712, -0.823706,
		0.358138, -0.807781, -0.468218,
		-0.920886, -0.222909, -0.319813,
		36.350998, 24.618433, 40.412201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065449, 24.643000, 39.898384>,  <36.995617, 24.774471, 40.636070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065449, 24.643000, 39.898384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716232, 24.821905, 39.976101>,  <36.506702, 24.929249, 40.022732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716232, 24.821905, 39.976101>,  <37.065449, 24.643000, 39.898384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716232, 24.821905, 39.976101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118670, 0.581326, -0.804971,
		-0.472985, -0.679716, -0.560599,
		-0.873042, 0.447265, 0.194297,
		36.454319, 24.956085, 40.034389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681160, 24.578371, 39.307388>,  <37.065449, 24.643000, 39.898384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681160, 24.578371, 39.307388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613720, 24.898573, 39.537437>,  <36.573257, 25.090694, 39.675468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613720, 24.898573, 39.537437>,  <36.681160, 24.578371, 39.307388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613720, 24.898573, 39.537437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434932, 0.584019, -0.685387,
		-0.884539, 0.134584, -0.446630,
		-0.168598, 0.800505, 0.575123,
		36.563141, 25.138725, 39.709972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461086, 25.121086, 38.815735>,  <36.681160, 24.578371, 39.307388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461086, 25.121086, 38.815735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611938, 25.287426, 39.146755>,  <36.702450, 25.387230, 39.345367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611938, 25.287426, 39.146755>,  <36.461086, 25.121086, 38.815735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611938, 25.287426, 39.146755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420482, 0.719256, -0.553051,
		-0.825208, 0.556543, 0.096396,
		0.377130, 0.415849, 0.827552,
		36.725079, 25.412180, 39.395020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513615, 25.740788, 38.616875>,  <36.461086, 25.121086, 38.815735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513615, 25.740788, 38.616875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763145, 25.735937, 38.929462>,  <36.912865, 25.733027, 39.117016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763145, 25.735937, 38.929462>,  <36.513615, 25.740788, 38.616875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763145, 25.735937, 38.929462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572883, 0.687245, -0.446654,
		-0.531644, 0.726325, 0.435668,
		0.623827, -0.012126, 0.781469,
		36.950294, 25.732300, 39.163902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628361, 26.517511, 38.987732>,  <36.513615, 25.740788, 38.616875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628361, 26.517511, 38.987732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939384, 26.279428, 39.068851>,  <37.125999, 26.136580, 39.117523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939384, 26.279428, 39.068851>,  <36.628361, 26.517511, 38.987732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939384, 26.279428, 39.068851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625610, 0.699796, -0.344816,
		0.063323, 0.394986, 0.916502,
		0.777562, -0.595208, 0.202794,
		37.172653, 26.100866, 39.129688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139534, 27.010801, 38.994549>,  <36.628361, 26.517511, 38.987732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139534, 27.010801, 38.994549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366219, 26.681534, 39.008549>,  <37.502232, 26.483973, 39.016949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366219, 26.681534, 39.008549>,  <37.139534, 27.010801, 38.994549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366219, 26.681534, 39.008549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808274, 0.547218, -0.217362,
		0.159772, 0.151475, 0.975463,
		0.566716, -0.823170, 0.035003,
		37.536232, 26.434584, 39.019051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806580, 27.229422, 39.197105>,  <37.139534, 27.010801, 38.994549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806580, 27.229422, 39.197105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872356, 26.882357, 39.009438>,  <37.911823, 26.674118, 38.896839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872356, 26.882357, 39.009438>,  <37.806580, 27.229422, 39.197105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872356, 26.882357, 39.009438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817727, 0.385910, -0.427079,
		0.551617, -0.313421, 0.772972,
		0.164443, -0.867664, -0.469167,
		37.921688, 26.622057, 38.868687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504021, 27.113234, 39.234913>,  <37.806580, 27.229422, 39.197105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504021, 27.113234, 39.234913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421043, 26.888931, 38.914284>,  <38.371258, 26.754351, 38.721905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421043, 26.888931, 38.914284>,  <38.504021, 27.113234, 39.234913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421043, 26.888931, 38.914284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824986, 0.340058, -0.451397,
		0.525705, -0.754926, 0.392072,
		-0.207445, -0.560755, -0.801574,
		38.358810, 26.720705, 38.673813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169754, 26.800961, 39.094116>,  <38.504021, 27.113234, 39.234913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169754, 26.800961, 39.094116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929684, 26.749582, 38.778320>,  <38.785641, 26.718756, 38.588844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929684, 26.749582, 38.778320>,  <39.169754, 26.800961, 39.094116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929684, 26.749582, 38.778320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697147, 0.399892, -0.595040,
		0.392128, -0.907520, -0.150476,
		-0.600185, -0.128428, -0.789483,
		38.749630, 26.711048, 38.541473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572220, 26.479992, 38.496689>,  <39.169754, 26.800961, 39.094116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572220, 26.479992, 38.496689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255405, 26.675991, 38.351048>,  <39.065315, 26.793591, 38.263664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255405, 26.675991, 38.351048>,  <39.572220, 26.479992, 38.496689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255405, 26.675991, 38.351048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586458, 0.445109, -0.676716,
		-0.169524, -0.749519, -0.639909,
		-0.792040, 0.490000, -0.364105,
		39.017792, 26.822990, 38.241817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701859, 26.667057, 37.775784>,  <39.572220, 26.479992, 38.496689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701859, 26.667057, 37.775784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389587, 26.909760, 37.835629>,  <39.202225, 27.055382, 37.871536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389587, 26.909760, 37.835629>,  <39.701859, 26.667057, 37.775784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389587, 26.909760, 37.835629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268317, 0.541662, -0.796623,
		-0.564399, -0.581763, -0.585667,
		-0.780679, 0.606758, 0.149616,
		39.155384, 27.091787, 37.880512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394382, 26.743313, 37.214016>,  <39.701859, 26.667057, 37.775784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394382, 26.743313, 37.214016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312408, 27.075994, 37.420422>,  <39.263222, 27.275602, 37.544266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312408, 27.075994, 37.420422>,  <39.394382, 26.743313, 37.214016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312408, 27.075994, 37.420422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296365, 0.555185, -0.777134,
		-0.932828, -0.006334, -0.360266,
		-0.204937, 0.831703, 0.516015,
		39.250927, 27.325506, 37.575226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832676, 27.173040, 36.881420>,  <39.394382, 26.743313, 37.214016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832676, 27.173040, 36.881420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102562, 27.385611, 37.086296>,  <39.264496, 27.513153, 37.209221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102562, 27.385611, 37.086296>,  <38.832676, 27.173040, 36.881420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102562, 27.385611, 37.086296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075606, 0.640542, -0.764192,
		-0.734193, 0.554339, 0.392006,
		0.674718, 0.531427, 0.512193,
		39.304977, 27.545038, 37.239952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300041, 27.621908, 36.707638>,  <38.832676, 27.173040, 36.881420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300041, 27.621908, 36.707638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504711, 27.762556, 37.021210>,  <38.627514, 27.846945, 37.209354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504711, 27.762556, 37.021210>,  <38.300041, 27.621908, 36.707638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504711, 27.762556, 37.021210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258971, 0.806867, -0.530942,
		-0.819218, 0.474688, 0.321797,
		0.511679, 0.351621, 0.783930,
		38.658215, 27.868042, 37.256390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142345, 28.337982, 36.937473>,  <38.300041, 27.621908, 36.707638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142345, 28.337982, 36.937473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520645, 28.270119, 37.048306>,  <38.747623, 28.229401, 37.114807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520645, 28.270119, 37.048306>,  <38.142345, 28.337982, 36.937473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520645, 28.270119, 37.048306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316591, 0.672846, -0.668617,
		-0.072998, 0.720066, 0.690055,
		0.945749, -0.169657, 0.277082,
		38.804371, 28.219221, 37.131432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436207, 29.035530, 36.977142>,  <38.142345, 28.337982, 36.937473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436207, 29.035530, 36.977142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739616, 28.777802, 37.016121>,  <38.921661, 28.623165, 37.039509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739616, 28.777802, 37.016121>,  <38.436207, 29.035530, 36.977142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739616, 28.777802, 37.016121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551284, 0.554749, -0.623169,
		0.347461, 0.526408, 0.775993,
		0.758523, -0.644320, 0.097447,
		38.967175, 28.584505, 37.045357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112930, 29.361204, 37.242928>,  <38.436207, 29.035530, 36.977142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112930, 29.361204, 37.242928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214577, 29.037949, 37.030388>,  <39.275566, 28.843996, 36.902863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214577, 29.037949, 37.030388>,  <39.112930, 29.361204, 37.242928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214577, 29.037949, 37.030388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598083, 0.563054, -0.570322,
		0.760079, -0.172864, 0.626416,
		0.254118, -0.808139, -0.531353,
		39.290813, 28.795507, 36.870983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861912, 29.342772, 37.192368>,  <39.112930, 29.361204, 37.242928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861912, 29.342772, 37.192368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715488, 29.149971, 36.873951>,  <39.627636, 29.034290, 36.682903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715488, 29.149971, 36.873951>,  <39.861912, 29.342772, 37.192368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715488, 29.149971, 36.873951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593900, 0.537556, -0.598595,
		0.716439, -0.691887, 0.089485,
		-0.366057, -0.482002, -0.796038,
		39.605671, 29.005371, 36.635139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397728, 29.285933, 36.604019>,  <39.861912, 29.342772, 37.192368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397728, 29.285933, 36.604019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076679, 29.169058, 36.396011>,  <39.884048, 29.098934, 36.271206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076679, 29.169058, 36.396011>,  <40.397728, 29.285933, 36.604019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076679, 29.169058, 36.396011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344488, 0.484654, -0.804014,
		0.486974, -0.824454, -0.288326,
		-0.802611, -0.292209, -0.520028,
		39.835892, 29.081402, 36.240005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693501, 29.203476, 36.019596>,  <40.397728, 29.285933, 36.604019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693501, 29.203476, 36.019596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299683, 29.234058, 35.956566>,  <40.063393, 29.252407, 35.918747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299683, 29.234058, 35.956566>,  <40.693501, 29.203476, 36.019596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299683, 29.234058, 35.956566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172823, 0.570080, -0.803207,
		0.028420, -0.818024, -0.574482,
		-0.984543, 0.076457, -0.157575,
		40.004318, 29.256996, 35.909294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603020, 29.067762, 35.296284>,  <40.693501, 29.203476, 36.019596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603020, 29.067762, 35.296284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284973, 29.283957, 35.406315>,  <40.094147, 29.413673, 35.472336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284973, 29.283957, 35.406315>,  <40.603020, 29.067762, 35.296284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284973, 29.283957, 35.406315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214314, 0.674734, -0.706260,
		-0.567327, -0.502605, -0.652325,
		-0.795116, 0.540483, 0.275080,
		40.046440, 29.446102, 35.488838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034504, 28.760473, 34.680130>,  <40.603020, 29.067762, 35.296284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034504, 28.760473, 34.680130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348885, 28.569893, 34.522511>,  <41.537514, 28.455544, 34.427937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348885, 28.569893, 34.522511>,  <41.034504, 28.760473, 34.680130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348885, 28.569893, 34.522511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260083, 0.323429, -0.909808,
		0.560927, 0.817550, 0.130282,
		0.785950, -0.476452, -0.394051,
		41.584671, 28.426958, 34.404297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822803, 28.776047, 34.678822>,  <41.034504, 28.760473, 34.680130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822803, 28.776047, 34.678822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735779, 29.013855, 34.369186>,  <41.683563, 29.156540, 34.183407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735779, 29.013855, 34.369186>,  <41.822803, 28.776047, 34.678822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735779, 29.013855, 34.369186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581405, 0.715967, 0.386470,
		0.783986, -0.365976, -0.501426,
		-0.217566, 0.594519, -0.774088,
		41.670509, 29.192211, 34.136959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486591, 29.167044, 34.370731>,  <41.822803, 28.776047, 34.678822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486591, 29.167044, 34.370731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145802, 29.363155, 34.297222>,  <41.941330, 29.480822, 34.253117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145802, 29.363155, 34.297222>,  <42.486591, 29.167044, 34.370731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145802, 29.363155, 34.297222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431202, 0.856096, 0.284894,
		0.297001, 0.163480, -0.940779,
		-0.851971, 0.490279, -0.183769,
		41.890209, 29.510239, 34.242092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700081, 29.587017, 33.850025>,  <42.486591, 29.167044, 34.370731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700081, 29.587017, 33.850025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416706, 29.696680, 34.110165>,  <42.246681, 29.762478, 34.266251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416706, 29.696680, 34.110165>,  <42.700081, 29.587017, 33.850025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416706, 29.696680, 34.110165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429548, 0.898639, 0.089088,
		-0.560007, 0.342471, -0.754391,
		-0.708435, 0.274157, 0.650352,
		42.204174, 29.778927, 34.305271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496891, 30.261501, 33.682724>,  <42.700081, 29.587017, 33.850025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496891, 30.261501, 33.682724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424580, 30.215958, 34.073490>,  <42.381191, 30.188631, 34.307949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424580, 30.215958, 34.073490>,  <42.496891, 30.261501, 33.682724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424580, 30.215958, 34.073490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653719, 0.728203, 0.205845,
		-0.734826, 0.675838, -0.057213,
		-0.180780, -0.113859, 0.976911,
		42.370346, 30.181801, 34.366562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204185, 30.841892, 34.145763>,  <42.496891, 30.261501, 33.682724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204185, 30.841892, 34.145763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427532, 30.591629, 34.363674>,  <42.561539, 30.441471, 34.494419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427532, 30.591629, 34.363674>,  <42.204185, 30.841892, 34.145763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427532, 30.591629, 34.363674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740747, 0.671674, 0.012167,
		-0.373524, 0.396747, 0.838494,
		0.558367, -0.625656, 0.544776,
		42.595043, 30.403933, 34.527107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488773, 31.101866, 34.858677>,  <42.204185, 30.841892, 34.145763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488773, 31.101866, 34.858677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731800, 30.819317, 34.713402>,  <42.877617, 30.649788, 34.626236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731800, 30.819317, 34.713402>,  <42.488773, 31.101866, 34.858677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731800, 30.819317, 34.713402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750927, 0.659828, -0.027116,
		0.258794, -0.256252, 0.931322,
		0.607564, -0.706372, -0.363186,
		42.914070, 30.607405, 34.604446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133759, 31.055605, 35.267853>,  <42.488773, 31.101866, 34.858677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133759, 31.055605, 35.267853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186069, 30.959045, 34.883224>,  <43.217457, 30.901110, 34.652447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186069, 30.959045, 34.883224>,  <43.133759, 31.055605, 35.267853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186069, 30.959045, 34.883224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770699, 0.634859, -0.054561,
		0.623635, -0.733950, 0.269067,
		0.130774, -0.241396, -0.961575,
		43.225304, 30.886627, 34.594753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818501, 31.104862, 35.127419>,  <43.133759, 31.055605, 35.267853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818501, 31.104862, 35.127419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724491, 31.133364, 34.739670>,  <43.668087, 31.150465, 34.507019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724491, 31.133364, 34.739670>,  <43.818501, 31.104862, 35.127419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724491, 31.133364, 34.739670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802845, 0.576411, -0.152279,
		0.547909, -0.814047, -0.192674,
		-0.235022, 0.071252, -0.969375,
		43.653984, 31.154739, 34.448856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420521, 30.854244, 34.679630>,  <43.818501, 31.104862, 35.127419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.420521, 30.854244, 34.679630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174072, 31.156195, 34.589695>,  <44.026203, 31.337366, 34.535732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174072, 31.156195, 34.589695>,  <44.420521, 30.854244, 34.679630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174072, 31.156195, 34.589695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742431, 0.651915, 0.154282,
		0.263041, -0.071873, -0.962104,
		-0.616121, 0.754878, -0.224842,
		43.989235, 31.382658, 34.522243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681496, 31.303211, 34.125847>,  <44.420521, 30.854244, 34.679630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681496, 31.303211, 34.125847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452854, 31.499493, 34.388901>,  <44.315670, 31.617262, 34.546734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452854, 31.499493, 34.388901>,  <44.681496, 31.303211, 34.125847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452854, 31.499493, 34.388901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754270, 0.629756, 0.185699,
		-0.323024, 0.602179, -0.730093,
		-0.571605, 0.490702, 0.657632,
		44.281372, 31.646704, 34.586189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564262, 32.026348, 34.015167>,  <44.681496, 31.303211, 34.125847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564262, 32.026348, 34.015167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528111, 31.942413, 34.404587>,  <44.506420, 31.892054, 34.638241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528111, 31.942413, 34.404587>,  <44.564262, 32.026348, 34.015167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528111, 31.942413, 34.404587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528601, 0.818381, 0.225462,
		-0.844045, 0.534997, 0.036951,
		-0.090382, -0.209833, 0.973551,
		44.500996, 31.879463, 34.696651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263515, 32.662342, 34.250114>,  <44.564262, 32.026348, 34.015167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263515, 32.662342, 34.250114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516773, 32.450340, 34.475761>,  <44.668728, 32.323139, 34.611149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516773, 32.450340, 34.475761>,  <44.263515, 32.662342, 34.250114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516773, 32.450340, 34.475761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528467, 0.828493, 0.185261,
		-0.565557, 0.180822, 0.804642,
		0.633141, -0.530002, 0.564119,
		44.706715, 32.291340, 34.644997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449715, 33.047092, 34.813698>,  <44.263515, 32.662342, 34.250114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449715, 33.047092, 34.813698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762310, 32.804028, 34.757111>,  <44.949867, 32.658188, 34.723160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762310, 32.804028, 34.757111>,  <44.449715, 33.047092, 34.813698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762310, 32.804028, 34.757111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621894, 0.776912, 0.098266,
		0.050196, -0.164772, 0.985054,
		0.781491, -0.607667, -0.141469,
		44.996758, 32.621727, 34.714668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892525, 32.986843, 35.471123>,  <44.449715, 33.047092, 34.813698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892525, 32.986843, 35.471123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103191, 32.922142, 35.137306>,  <45.229591, 32.883324, 34.937016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103191, 32.922142, 35.137306>,  <44.892525, 32.986843, 35.471123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.103191, 32.922142, 35.137306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591802, 0.774520, 0.223361,
		0.610240, -0.611520, 0.503638,
		0.526667, -0.161750, -0.834541,
		45.261192, 32.873615, 34.886944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672241, 32.877640, 35.709923>,  <44.892525, 32.986843, 35.471123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672241, 32.877640, 35.709923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625988, 33.008820, 35.334885>,  <45.598236, 33.087528, 35.109863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625988, 33.008820, 35.334885>,  <45.672241, 32.877640, 35.709923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625988, 33.008820, 35.334885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465095, 0.851929, 0.240633,
		0.877677, -0.408245, -0.251037,
		-0.115629, 0.327954, -0.937591,
		45.591301, 33.107204, 35.053608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.354324, 33.110817, 35.437592>,  <45.672241, 32.877640, 35.709923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.354324, 33.110817, 35.437592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027145, 33.294945, 35.299568>,  <45.830837, 33.405422, 35.216755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027145, 33.294945, 35.299568>,  <46.354324, 33.110817, 35.437592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.027145, 33.294945, 35.299568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425026, 0.887749, 0.176790,
		0.387704, -0.002052, -0.921782,
		-0.817948, 0.460324, -0.345056,
		45.781761, 33.433041, 35.196053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.073189, 33.341862, 35.539494>,  <46.354324, 33.110817, 35.437592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.073189, 33.341862, 35.539494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461151, 33.294640, 35.624672>,  <47.693928, 33.266308, 35.675777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461151, 33.294640, 35.624672>,  <47.073189, 33.341862, 35.539494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.461151, 33.294640, 35.624672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226121, 0.761054, -0.608002,
		-0.090286, 0.637856, 0.764845,
		0.969906, -0.118054, 0.212945,
		47.752125, 33.259224, 35.688557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.552299, 33.973148, 35.450035>,  <47.073189, 33.341862, 35.539494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.552299, 33.973148, 35.450035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.777668, 34.040684, 35.126541>,  <47.912888, 34.081207, 34.932446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.777668, 34.040684, 35.126541>,  <47.552299, 33.973148, 35.450035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.777668, 34.040684, 35.126541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539636, 0.816433, -0.205500,
		0.625578, 0.552204, 0.551110,
		0.563422, 0.168842, -0.808732,
		47.946693, 34.091335, 34.883923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.702236, 34.702488, 35.478104>,  <47.552299, 33.973148, 35.450035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.702236, 34.702488, 35.478104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751984, 34.563267, 35.106426>,  <47.781834, 34.479736, 34.883419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751984, 34.563267, 35.106426>,  <47.702236, 34.702488, 35.478104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.751984, 34.563267, 35.106426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436531, 0.821771, -0.366243,
		0.891052, 0.451169, -0.049732,
		0.124368, -0.348051, -0.929190,
		47.789295, 34.458851, 34.827671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.918819, 35.291969, 35.029236>,  <47.702236, 34.702488, 35.478104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.918819, 35.291969, 35.029236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750004, 35.004887, 34.807686>,  <47.648716, 34.832638, 34.674755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750004, 35.004887, 34.807686>,  <47.918819, 35.291969, 35.029236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.750004, 35.004887, 34.807686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580958, 0.683128, -0.442519,
		0.695971, 0.135024, -0.705261,
		-0.422033, -0.717708, -0.553881,
		47.623390, 34.789574, 34.641525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.766586, 33.179062, 25.661709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.379192, 33.270878, 25.623020>,  <38.146755, 33.325966, 25.599806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.379192, 33.270878, 25.623020>,  <38.766586, 33.179062, 25.661709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379192, 33.270878, 25.623020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214286, -0.569824, 0.793336,
		0.126988, 0.789058, 0.601051,
		-0.968481, 0.229541, -0.096723,
		38.088650, 33.339741, 25.594004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539047, 33.461704, 26.264891>,  <38.766586, 33.179062, 25.661709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539047, 33.461704, 26.264891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181721, 33.351284, 26.123028>,  <37.967323, 33.285030, 26.037910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181721, 33.351284, 26.123028>,  <38.539047, 33.461704, 26.264891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181721, 33.351284, 26.123028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203430, -0.455301, 0.866786,
		-0.400753, 0.846461, 0.350571,
		-0.893316, -0.276051, -0.354659,
		37.913727, 33.268467, 26.016630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029758, 33.644718, 26.855608>,  <38.539047, 33.461704, 26.264891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029758, 33.644718, 26.855608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841202, 33.369324, 26.635145>,  <37.728065, 33.204086, 26.502867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841202, 33.369324, 26.635145>,  <38.029758, 33.644718, 26.855608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841202, 33.369324, 26.635145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237290, -0.502890, 0.831141,
		-0.849400, 0.522580, 0.073689,
		-0.471395, -0.688486, -0.551158,
		37.699783, 33.162777, 26.469797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367264, 33.489201, 27.185482>,  <38.029758, 33.644718, 26.855608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367264, 33.489201, 27.185482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418293, 33.179729, 26.937239>,  <37.448910, 32.994049, 26.788292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418293, 33.179729, 26.937239>,  <37.367264, 33.489201, 27.185482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418293, 33.179729, 26.937239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205434, -0.632764, 0.746597,
		-0.970321, 0.032251, -0.239660,
		0.127569, -0.773673, -0.620609,
		37.456562, 32.947628, 26.751057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796188, 33.065346, 27.338139>,  <37.367264, 33.489201, 27.185482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796188, 33.065346, 27.338139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082909, 32.838421, 27.175980>,  <37.254940, 32.702267, 27.078684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082909, 32.838421, 27.175980>,  <36.796188, 33.065346, 27.338139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082909, 32.838421, 27.175980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105539, -0.662978, 0.741162,
		-0.689245, -0.488480, -0.535097,
		0.716800, -0.567316, -0.405401,
		37.297951, 32.668228, 27.054359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543556, 32.358757, 27.268253>,  <36.796188, 33.065346, 27.338139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543556, 32.358757, 27.268253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941502, 32.321835, 27.284866>,  <37.180267, 32.299683, 27.294834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941502, 32.321835, 27.284866>,  <36.543556, 32.358757, 27.268253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941502, 32.321835, 27.284866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095714, -0.724485, 0.682613,
		-0.032917, -0.683083, -0.729599,
		0.994865, -0.092302, 0.041533,
		37.239960, 32.294144, 27.297327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637093, 31.632423, 27.332670>,  <36.543556, 32.358757, 27.268253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637093, 31.632423, 27.332670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.986843, 31.788239, 27.448418>,  <37.196693, 31.881727, 27.517866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.986843, 31.788239, 27.448418>,  <36.637093, 31.632423, 27.332670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986843, 31.788239, 27.448418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141705, -0.775298, 0.615494,
		0.464104, -0.497166, -0.733099,
		0.874372, 0.389536, 0.289368,
		37.249153, 31.905100, 27.535229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162895, 31.090797, 27.305256>,  <36.637093, 31.632423, 27.332670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162895, 31.090797, 27.305256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.301033, 31.377705, 27.547335>,  <37.383915, 31.549849, 27.692581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.301033, 31.377705, 27.547335>,  <37.162895, 31.090797, 27.305256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301033, 31.377705, 27.547335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233079, -0.690219, 0.685035,
		0.909072, -0.095513, -0.405542,
		0.345343, 0.717269, 0.605196,
		37.404636, 31.592886, 27.728893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655704, 30.710474, 27.700594>,  <37.162895, 31.090797, 27.305256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655704, 30.710474, 27.700594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598183, 31.060808, 27.884869>,  <37.563671, 31.271009, 27.995434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598183, 31.060808, 27.884869>,  <37.655704, 30.710474, 27.700594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598183, 31.060808, 27.884869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091097, -0.475264, 0.875114,
		0.985405, 0.083876, 0.148130,
		-0.143802, 0.875836, 0.460687,
		37.555042, 31.323559, 28.023075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081638, 30.699484, 28.299234>,  <37.655704, 30.710474, 27.700594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081638, 30.699484, 28.299234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809593, 30.984833, 28.366817>,  <37.646366, 31.156042, 28.407368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809593, 30.984833, 28.366817>,  <38.081638, 30.699484, 28.299234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809593, 30.984833, 28.366817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032144, -0.259265, 0.965271,
		0.732401, 0.651063, 0.199261,
		-0.680114, 0.713371, 0.168958,
		37.605560, 31.198845, 28.417505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352825, 31.118450, 28.945618>,  <38.081638, 30.699484, 28.299234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352825, 31.118450, 28.945618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958260, 31.105049, 28.881292>,  <37.721519, 31.097008, 28.842697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958260, 31.105049, 28.881292>,  <38.352825, 31.118450, 28.945618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958260, 31.105049, 28.881292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132344, -0.417828, 0.898835,
		-0.097306, 0.907908, 0.407719,
		-0.986416, -0.033503, -0.160813,
		37.662334, 31.094997, 28.833048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169109, 31.587542, 29.447618>,  <38.352825, 31.118450, 28.945618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169109, 31.587542, 29.447618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863453, 31.345228, 29.358974>,  <37.680058, 31.199841, 29.305788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863453, 31.345228, 29.358974>,  <38.169109, 31.587542, 29.447618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863453, 31.345228, 29.358974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095067, -0.445570, 0.890185,
		-0.638002, 0.659162, 0.398069,
		-0.764144, -0.605783, -0.221610,
		37.634209, 31.163494, 29.292492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942600, 31.475700, 30.063145>,  <38.169109, 31.587542, 29.447618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942600, 31.475700, 30.063145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734001, 31.200819, 29.860842>,  <37.608841, 31.035891, 29.739460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734001, 31.200819, 29.860842>,  <37.942600, 31.475700, 30.063145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734001, 31.200819, 29.860842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031106, -0.577036, 0.816126,
		-0.852686, 0.441339, 0.279546,
		-0.521497, -0.687204, -0.505759,
		37.577553, 30.994658, 29.709114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528023, 31.210264, 30.596420>,  <37.942600, 31.475700, 30.063145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528023, 31.210264, 30.596420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.477207, 30.940296, 30.305670>,  <37.446716, 30.778316, 30.131220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.477207, 30.940296, 30.305670>,  <37.528023, 31.210264, 30.596420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477207, 30.940296, 30.305670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140157, -0.713245, 0.686759,
		-0.981946, 0.189122, -0.003984,
		-0.127039, -0.674918, -0.726875,
		37.439095, 30.737822, 30.087608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832283, 30.946690, 30.650217>,  <37.528023, 31.210264, 30.596420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832283, 30.946690, 30.650217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.081230, 30.678827, 30.488125>,  <37.230598, 30.518110, 30.390869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.081230, 30.678827, 30.488125>,  <36.832283, 30.946690, 30.650217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081230, 30.678827, 30.488125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068197, -0.562147, 0.824221,
		-0.779745, -0.485337, -0.395533,
		0.622372, -0.669656, -0.405233,
		37.267941, 30.477930, 30.366554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544174, 30.286392, 30.867088>,  <36.832283, 30.946690, 30.650217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544174, 30.286392, 30.867088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931095, 30.245619, 30.774197>,  <37.163250, 30.221155, 30.718462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931095, 30.245619, 30.774197>,  <36.544174, 30.286392, 30.867088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931095, 30.245619, 30.774197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112429, -0.648439, 0.752918,
		-0.227334, -0.754411, -0.615778,
		0.967305, -0.101933, -0.232230,
		37.221287, 30.215038, 30.704527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613129, 29.645948, 30.881592>,  <36.544174, 30.286392, 30.867088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613129, 29.645948, 30.881592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996468, 29.756437, 30.910645>,  <37.226471, 29.822731, 30.928076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996468, 29.756437, 30.910645>,  <36.613129, 29.645948, 30.881592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996468, 29.756437, 30.910645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191907, -0.811099, 0.552531,
		0.211533, -0.515577, -0.830322,
		0.958345, 0.276223, 0.072631,
		37.283970, 29.839304, 30.932434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990768, 29.049765, 30.826351>,  <36.613129, 29.645948, 30.881592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990768, 29.049765, 30.826351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.250687, 29.299923, 30.999161>,  <37.406639, 29.450018, 31.102846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.250687, 29.299923, 30.999161>,  <36.990768, 29.049765, 30.826351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250687, 29.299923, 30.999161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224265, -0.700812, 0.677177,
		0.726272, -0.343138, -0.595639,
		0.649796, 0.625395, 0.432026,
		37.445625, 29.487541, 31.128769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550953, 28.656414, 30.967617>,  <36.990768, 29.049765, 30.826351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550953, 28.656414, 30.967617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.597454, 28.967949, 31.214161>,  <37.625355, 29.154869, 31.362087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.597454, 28.967949, 31.214161>,  <37.550953, 28.656414, 30.967617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597454, 28.967949, 31.214161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100266, -0.626600, 0.772864,
		0.988146, -0.028045, -0.150933,
		0.116250, 0.778836, 0.616360,
		37.632328, 29.201599, 31.399069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080853, 28.378935, 31.392691>,  <37.550953, 28.656414, 30.967617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080853, 28.378935, 31.392691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.936272, 28.688938, 31.600042>,  <37.849525, 28.874941, 31.724453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.936272, 28.688938, 31.600042>,  <38.080853, 28.378935, 31.392691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936272, 28.688938, 31.600042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193265, -0.481618, 0.854806,
		0.912142, 0.409153, 0.024299,
		-0.361449, 0.775008, 0.518379,
		37.827835, 28.921440, 31.755556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563652, 28.454060, 31.999392>,  <38.080853, 28.378935, 31.392691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563652, 28.454060, 31.999392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210178, 28.613224, 32.098003>,  <37.998096, 28.708723, 32.157169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210178, 28.613224, 32.098003>,  <38.563652, 28.454060, 31.999392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210178, 28.613224, 32.098003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007097, -0.538002, 0.842914,
		0.468037, 0.743117, 0.478246,
		-0.883680, 0.397909, 0.246531,
		37.945076, 28.732597, 32.171963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652805, 28.174000, 32.604622>,  <38.563652, 28.454060, 31.999392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652805, 28.174000, 32.604622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906918, 28.339176, 32.865665>,  <39.059387, 28.438282, 33.022289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906918, 28.339176, 32.865665>,  <38.652805, 28.174000, 32.604622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906918, 28.339176, 32.865665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259893, 0.681437, -0.684178,
		-0.727234, 0.604254, 0.325586,
		0.635284, 0.412940, 0.652606,
		39.097504, 28.463058, 33.061447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560146, 28.952038, 32.611557>,  <38.652805, 28.174000, 32.604622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560146, 28.952038, 32.611557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932312, 28.887154, 32.743023>,  <39.155613, 28.848223, 32.821903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932312, 28.887154, 32.743023>,  <38.560146, 28.952038, 32.611557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932312, 28.887154, 32.743023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352815, 0.639242, -0.683295,
		-0.099259, 0.751704, 0.651989,
		0.930413, -0.162208, 0.328663,
		39.211437, 28.838491, 32.841621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868504, 29.668537, 32.811798>,  <38.560146, 28.952038, 32.611557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868504, 29.668537, 32.811798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.141605, 29.391195, 32.719620>,  <39.305466, 29.224791, 32.664314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.141605, 29.391195, 32.719620>,  <38.868504, 29.668537, 32.811798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141605, 29.391195, 32.719620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259264, 0.524778, -0.810796,
		0.683103, 0.493827, 0.538057,
		0.682753, -0.693356, -0.230446,
		39.346432, 29.183189, 32.650486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517849, 29.986465, 32.566689>,  <38.868504, 29.668537, 32.811798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517849, 29.986465, 32.566689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537914, 29.615248, 32.419056>,  <39.549953, 29.392517, 32.330479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537914, 29.615248, 32.419056>,  <39.517849, 29.986465, 32.566689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537914, 29.615248, 32.419056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324355, 0.364652, -0.872825,
		0.944604, -0.075927, 0.319309,
		0.050166, -0.928043, -0.369079,
		39.552963, 29.336834, 32.308331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166351, 30.004885, 32.035328>,  <39.517849, 29.986465, 32.566689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166351, 30.004885, 32.035328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.043262, 29.633671, 31.951368>,  <39.969410, 29.410942, 31.900991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.043262, 29.633671, 31.951368>,  <40.166351, 30.004885, 32.035328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043262, 29.633671, 31.951368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357458, 0.091687, -0.929418,
		0.881777, -0.361034, 0.303519,
		-0.307722, -0.928035, -0.209902,
		39.950947, 29.355261, 31.888397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725704, 29.619181, 31.711308>,  <40.166351, 30.004885, 32.035328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725704, 29.619181, 31.711308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.410728, 29.399952, 31.598490>,  <40.221741, 29.268414, 31.530798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.410728, 29.399952, 31.598490>,  <40.725704, 29.619181, 31.711308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410728, 29.399952, 31.598490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277707, 0.093052, -0.956148,
		0.550285, -0.831238, 0.078931,
		-0.787442, -0.548073, -0.282046,
		40.174496, 29.235531, 31.513876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941444, 29.204634, 31.217571>,  <40.725704, 29.619181, 31.711308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941444, 29.204634, 31.217571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.545536, 29.218750, 31.162275>,  <40.307991, 29.227221, 31.129097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.545536, 29.218750, 31.162275>,  <40.941444, 29.204634, 31.217571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545536, 29.218750, 31.162275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142664, 0.233196, -0.961908,
		-0.001712, -0.971789, -0.235846,
		-0.989770, 0.035294, -0.138240,
		40.248604, 29.229338, 31.120804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794197, 28.756845, 30.681589>,  <40.941444, 29.204634, 31.217571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794197, 28.756845, 30.681589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.475754, 28.997192, 30.710377>,  <40.284687, 29.141399, 30.727650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.475754, 28.997192, 30.710377>,  <40.794197, 28.756845, 30.681589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475754, 28.997192, 30.710377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044723, 0.177018, -0.983191,
		-0.603505, -0.779503, -0.167797,
		-0.796104, 0.600865, 0.071969,
		40.236923, 29.177452, 30.731968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315765, 28.614883, 30.150352>,  <40.794197, 28.756845, 30.681589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315765, 28.614883, 30.150352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.245171, 29.003683, 30.212406>,  <40.202812, 29.236963, 30.249638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.245171, 29.003683, 30.212406>,  <40.315765, 28.614883, 30.150352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245171, 29.003683, 30.212406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062046, 0.168281, -0.983784,
		-0.982345, -0.164004, -0.090009,
		-0.176491, 0.972000, 0.155134,
		40.192223, 29.295282, 30.258945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864933, 28.825153, 29.580570>,  <40.315765, 28.614883, 30.150352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864933, 28.825153, 29.580570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.989525, 29.178423, 29.720844>,  <40.064281, 29.390385, 29.805008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.989525, 29.178423, 29.720844>,  <39.864933, 28.825153, 29.580570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989525, 29.178423, 29.720844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176020, 0.416282, -0.892035,
		-0.933807, 0.216127, 0.285121,
		0.311483, 0.883175, 0.350684,
		40.082970, 29.443375, 29.826050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484085, 29.341410, 29.323400>,  <39.864933, 28.825153, 29.580570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484085, 29.341410, 29.323400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.815960, 29.536680, 29.431698>,  <40.015083, 29.653843, 29.496675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.815960, 29.536680, 29.431698>,  <39.484085, 29.341410, 29.323400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815960, 29.536680, 29.431698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114289, 0.623279, -0.773603,
		-0.546404, 0.610906, 0.572920,
		0.829687, 0.488178, 0.270742,
		40.064865, 29.683134, 29.512920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312832, 30.128347, 29.357319>,  <39.484085, 29.341410, 29.323400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312832, 30.128347, 29.357319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.708134, 30.073788, 29.329758>,  <39.945316, 30.041052, 29.313221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.708134, 30.073788, 29.329758>,  <39.312832, 30.128347, 29.357319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708134, 30.073788, 29.329758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042321, 0.677555, -0.734253,
		0.146836, 0.722713, 0.675370,
		0.988255, -0.136397, -0.068903,
		40.004612, 30.032869, 29.309086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565845, 30.817650, 29.235569>,  <39.312832, 30.128347, 29.357319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565845, 30.817650, 29.235569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.855129, 30.569124, 29.114946>,  <40.028702, 30.420010, 29.042574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.855129, 30.569124, 29.114946>,  <39.565845, 30.817650, 29.235569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855129, 30.569124, 29.114946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212012, 0.615288, -0.759257,
		0.657279, 0.485171, 0.576709,
		0.723212, -0.621313, -0.301554,
		40.072094, 30.382730, 29.024481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090755, 31.206511, 29.215532>,  <39.565845, 30.817650, 29.235569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090755, 31.206511, 29.215532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.157887, 30.893284, 28.975986>,  <40.198166, 30.705347, 28.832258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.157887, 30.893284, 28.975986>,  <40.090755, 31.206511, 29.215532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157887, 30.893284, 28.975986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306111, 0.618848, -0.723411,
		0.937085, -0.061910, 0.343567,
		0.167829, -0.783067, -0.598865,
		40.208237, 30.658363, 28.796328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623497, 31.458227, 28.772976>,  <40.090755, 31.206511, 29.215532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623497, 31.458227, 28.772976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.495560, 31.125534, 28.591461>,  <40.418797, 30.925919, 28.482552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.495560, 31.125534, 28.591461>,  <40.623497, 31.458227, 28.772976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495560, 31.125534, 28.591461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185295, 0.414787, -0.890852,
		0.929174, -0.369019, 0.021448,
		-0.319845, -0.831731, -0.453787,
		40.399605, 30.876015, 28.455326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214779, 31.266947, 28.418756>,  <40.623497, 31.458227, 28.772976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214779, 31.266947, 28.418756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.869984, 31.138472, 28.261883>,  <40.663105, 31.061386, 28.167759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.869984, 31.138472, 28.261883>,  <41.214779, 31.266947, 28.418756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869984, 31.138472, 28.261883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137923, 0.595876, -0.791144,
		0.487799, -0.736051, -0.469341,
		-0.861992, -0.321186, -0.392186,
		40.611385, 31.042116, 28.144226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382553, 31.296276, 27.800373>,  <41.214779, 31.266947, 28.418756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382553, 31.296276, 27.800373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.984707, 31.269806, 27.768484>,  <40.745998, 31.253923, 27.749352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.984707, 31.269806, 27.768484>,  <41.382553, 31.296276, 27.800373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984707, 31.269806, 27.768484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024635, 0.596341, -0.802353,
		0.100635, -0.799999, -0.591502,
		-0.994618, -0.066173, -0.079720,
		40.686321, 31.249954, 27.744568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274639, 31.111294, 27.089701>,  <41.382553, 31.296276, 27.800373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274639, 31.111294, 27.089701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.942772, 31.273176, 27.243513>,  <40.743652, 31.370306, 27.335800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.942772, 31.273176, 27.243513>,  <41.274639, 31.111294, 27.089701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942772, 31.273176, 27.243513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130557, 0.529042, -0.838493,
		-0.542773, -0.745875, -0.386093,
		-0.829670, 0.404705, 0.384529,
		40.693871, 31.394588, 27.358871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857319, 31.119358, 26.473804>,  <41.274639, 31.111294, 27.089701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857319, 31.119358, 26.473804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.766045, 31.368666, 26.772995>,  <40.711281, 31.518250, 26.952509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.766045, 31.368666, 26.772995>,  <40.857319, 31.119358, 26.473804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766045, 31.368666, 26.772995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124804, 0.743180, -0.657348,
		-0.965585, -0.243348, -0.091797,
		-0.228186, 0.623269, 0.747975,
		40.697590, 31.555647, 26.997387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.223904, 31.447001, 26.287243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.339390, 31.702051, 26.572922>,  <40.408680, 31.855082, 26.744329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.339390, 31.702051, 26.572922>,  <40.223904, 31.447001, 26.287243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339390, 31.702051, 26.572922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197210, 0.769574, -0.607342,
		-0.936886, 0.034499, 0.347930,
		0.288711, 0.637626, 0.714199,
		40.426003, 31.893339, 26.787182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742577, 31.944984, 26.241573>,  <40.223904, 31.447001, 26.287243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742577, 31.944984, 26.241573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.052135, 32.126732, 26.418043>,  <40.237869, 32.235779, 26.523926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.052135, 32.126732, 26.418043>,  <39.742577, 31.944984, 26.241573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052135, 32.126732, 26.418043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119985, 0.789190, -0.602315,
		-0.621842, 0.413195, 0.665268,
		0.773896, 0.454367, 0.441175,
		40.284306, 32.263042, 26.550396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437767, 32.575504, 26.412603>,  <39.742577, 31.944984, 26.241573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437767, 32.575504, 26.412603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835075, 32.598064, 26.372128>,  <40.073460, 32.611603, 26.347841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835075, 32.598064, 26.372128>,  <39.437767, 32.575504, 26.412603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835075, 32.598064, 26.372128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100767, 0.851579, -0.514450,
		0.057154, 0.521183, 0.851529,
		0.993267, 0.056403, -0.101189,
		40.133057, 32.614986, 26.341770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450279, 33.282326, 26.223810>,  <39.437767, 32.575504, 26.412603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450279, 33.282326, 26.223810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.822803, 33.153824, 26.155159>,  <40.046318, 33.076721, 26.113968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.822803, 33.153824, 26.155159>,  <39.450279, 33.282326, 26.223810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822803, 33.153824, 26.155159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210024, 0.858649, -0.467559,
		0.297575, 0.399397, 0.867140,
		0.931311, -0.321254, -0.171630,
		40.102196, 33.057449, 26.103670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989033, 33.879501, 26.429510>,  <39.450279, 33.282326, 26.223810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989033, 33.879501, 26.429510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148701, 33.628185, 26.162403>,  <40.244503, 33.477398, 26.002138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148701, 33.628185, 26.162403>,  <39.989033, 33.879501, 26.429510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148701, 33.628185, 26.162403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257647, 0.775828, -0.575942,
		0.879931, 0.057852, 0.471565,
		0.399173, -0.628287, -0.667770,
		40.268452, 33.439697, 25.962072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595367, 34.241146, 26.303900>,  <39.989033, 33.879501, 26.429510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595367, 34.241146, 26.303900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.546074, 33.976776, 26.007795>,  <40.516499, 33.818153, 25.830133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.546074, 33.976776, 26.007795>,  <40.595367, 34.241146, 26.303900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546074, 33.976776, 26.007795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292161, 0.688724, -0.663552,
		0.948396, -0.298047, 0.108224,
		-0.123233, -0.660930, -0.740261,
		40.509106, 33.778496, 25.785717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231716, 34.348270, 25.870102>,  <40.595367, 34.241146, 26.303900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231716, 34.348270, 25.870102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.947163, 34.167198, 25.655064>,  <40.776432, 34.058556, 25.526041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.947163, 34.167198, 25.655064>,  <41.231716, 34.348270, 25.870102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947163, 34.167198, 25.655064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156562, 0.643634, -0.749149,
		0.685146, -0.617098, -0.386995,
		-0.711381, -0.452688, -0.537598,
		40.733749, 34.031391, 25.493784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488220, 34.318047, 25.215296>,  <41.231716, 34.348270, 25.870102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488220, 34.318047, 25.215296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.093273, 34.282211, 25.163015>,  <40.856304, 34.260712, 25.131647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.093273, 34.282211, 25.163015>,  <41.488220, 34.318047, 25.215296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093273, 34.282211, 25.163015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019446, 0.750095, -0.661044,
		0.157260, -0.655234, -0.738876,
		-0.987366, -0.089588, -0.130702,
		40.797062, 34.255337, 25.123804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477142, 34.137169, 24.494625>,  <41.488220, 34.318047, 25.215296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477142, 34.137169, 24.494625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.115932, 34.268093, 24.605925>,  <40.899208, 34.346649, 24.672705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.115932, 34.268093, 24.605925>,  <41.477142, 34.137169, 24.494625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115932, 34.268093, 24.605925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018191, 0.676244, -0.736453,
		-0.429213, -0.659971, -0.616616,
		-0.903021, 0.327312, 0.278247,
		40.845028, 34.366287, 24.689398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015835, 34.059578, 23.885492>,  <41.477142, 34.137169, 24.494625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015835, 34.059578, 23.885492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.877956, 34.348682, 24.125093>,  <40.795231, 34.522144, 24.268854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.877956, 34.348682, 24.125093>,  <41.015835, 34.059578, 23.885492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877956, 34.348682, 24.125093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023036, 0.631406, -0.775110,
		-0.938433, -0.280973, -0.200990,
		-0.344691, 0.722759, 0.599005,
		40.774548, 34.565510, 24.304794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613888, 34.480427, 23.485479>,  <41.015835, 34.059578, 23.885492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613888, 34.480427, 23.485479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.682968, 34.732670, 23.788137>,  <40.724419, 34.884014, 23.969732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.682968, 34.732670, 23.788137>,  <40.613888, 34.480427, 23.485479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682968, 34.732670, 23.788137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092695, 0.754371, -0.649871,
		-0.980602, 0.182373, 0.071829,
		0.172704, 0.630607, 0.756643,
		40.734779, 34.921852, 24.015131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219666, 35.052326, 23.312258>,  <40.613888, 34.480427, 23.485479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219666, 35.052326, 23.312258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.488010, 35.184933, 23.577600>,  <40.649017, 35.264496, 23.736805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.488010, 35.184933, 23.577600>,  <40.219666, 35.052326, 23.312258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488010, 35.184933, 23.577600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261492, 0.731311, -0.629925,
		-0.693947, 0.596057, 0.403923,
		0.670865, 0.331512, 0.663355,
		40.689270, 35.284386, 23.776608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003025, 35.757092, 23.390005>,  <40.219666, 35.052326, 23.312258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003025, 35.757092, 23.390005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.387173, 35.725811, 23.497026>,  <40.617661, 35.707043, 23.561239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.387173, 35.725811, 23.497026>,  <40.003025, 35.757092, 23.390005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387173, 35.725811, 23.497026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255094, 0.633492, -0.730489,
		-0.112367, 0.769787, 0.628332,
		0.960365, -0.078201, 0.267552,
		40.675282, 35.702351, 23.577291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147766, 36.437820, 23.677166>,  <40.003025, 35.757092, 23.390005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147766, 36.437820, 23.677166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.485519, 36.276943, 23.535597>,  <40.688171, 36.180416, 23.450655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.485519, 36.276943, 23.535597>,  <40.147766, 36.437820, 23.677166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485519, 36.276943, 23.535597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244768, 0.877255, -0.412931,
		0.476558, 0.262043, 0.839182,
		0.844382, -0.402190, -0.353923,
		40.738834, 36.156284, 23.429420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707581, 36.810600, 24.094671>,  <40.147766, 36.437820, 23.677166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707581, 36.810600, 24.094671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844433, 36.655903, 23.752121>,  <40.926544, 36.563084, 23.546591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844433, 36.655903, 23.752121>,  <40.707581, 36.810600, 24.094671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844433, 36.655903, 23.752121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311792, 0.906463, -0.284798,
		0.886415, -0.169573, 0.430712,
		0.342131, -0.386742, -0.856374,
		40.947071, 36.539879, 23.495209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205070, 37.222702, 23.990072>,  <40.707581, 36.810600, 24.094671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205070, 37.222702, 23.990072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.151138, 37.042519, 23.637049>,  <41.118778, 36.934410, 23.425234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.151138, 37.042519, 23.637049>,  <41.205070, 37.222702, 23.990072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151138, 37.042519, 23.637049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237628, 0.850001, -0.470139,
		0.961953, -0.273109, -0.007562,
		-0.134827, -0.450455, -0.882560,
		41.110691, 36.907383, 23.372280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889359, 37.376881, 23.575029>,  <41.205070, 37.222702, 23.990072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889359, 37.376881, 23.575029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.607258, 37.284470, 23.306925>,  <41.437996, 37.229023, 23.146063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.607258, 37.284470, 23.306925>,  <41.889359, 37.376881, 23.575029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607258, 37.284470, 23.306925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265423, 0.790618, -0.551791,
		0.657399, -0.567053, -0.496263,
		-0.705250, -0.231027, -0.670260,
		41.395683, 37.215160, 23.105846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086693, 37.809074, 23.011934>,  <41.889359, 37.376881, 23.575029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086693, 37.809074, 23.011934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.713264, 37.694302, 22.926041>,  <41.489208, 37.625439, 22.874504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.713264, 37.694302, 22.926041>,  <42.086693, 37.809074, 23.011934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713264, 37.694302, 22.926041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056052, 0.708689, -0.703290,
		0.353977, -0.644537, -0.677697,
		-0.933573, -0.286935, -0.214732,
		41.433193, 37.608223, 22.861622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997498, 37.668758, 22.306417>,  <42.086693, 37.809074, 23.011934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997498, 37.668758, 22.306417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.623096, 37.760040, 22.413618>,  <41.398457, 37.814808, 22.477940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.623096, 37.760040, 22.413618>,  <41.997498, 37.668758, 22.306417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623096, 37.760040, 22.413618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040392, 0.825984, -0.562245,
		-0.349671, -0.515437, -0.782339,
		-0.936002, 0.228201, 0.268003,
		41.342297, 37.828499, 22.494019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565994, 37.797367, 21.649496>,  <41.997498, 37.668758, 22.306417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565994, 37.797367, 21.649496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.337692, 37.938904, 21.945883>,  <41.200710, 38.023827, 22.123714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.337692, 37.938904, 21.945883>,  <41.565994, 37.797367, 21.649496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337692, 37.938904, 21.945883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132337, 0.850949, -0.508304,
		-0.810384, -0.388176, -0.438859,
		-0.570758, 0.353844, 0.740965,
		41.166466, 38.045055, 22.168173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851704, 38.065441, 21.337864>,  <41.565994, 37.797367, 21.649496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851704, 38.065441, 21.337864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.947849, 38.277641, 21.663021>,  <41.005535, 38.404961, 21.858116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.947849, 38.277641, 21.663021>,  <40.851704, 38.065441, 21.337864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947849, 38.277641, 21.663021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342778, 0.829879, -0.440232,
		-0.908146, -0.172828, 0.381314,
		0.240360, 0.530501, 0.812893,
		41.019958, 38.436790, 21.906889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214352, 38.317318, 21.501139>,  <40.851704, 38.065441, 21.337864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214352, 38.317318, 21.501139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.493122, 38.540428, 21.681442>,  <40.660385, 38.674294, 21.789623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.493122, 38.540428, 21.681442>,  <40.214352, 38.317318, 21.501139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493122, 38.540428, 21.681442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433837, 0.828399, -0.354317,
		-0.571037, 0.051377, 0.819315,
		0.696924, 0.557777, 0.450757,
		40.702198, 38.707760, 21.816669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100082, 38.314205, 20.763918>,  <40.214352, 38.317318, 21.501139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100082, 38.314205, 20.763918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.959538, 38.488728, 21.095263>,  <39.875210, 38.593441, 21.294069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.959538, 38.488728, 21.095263>,  <40.100082, 38.314205, 20.763918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959538, 38.488728, 21.095263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131791, 0.852915, -0.505141,
		-0.926916, -0.286659, -0.242184,
		-0.351365, 0.436306, 0.828360,
		39.854130, 38.619621, 21.343771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143291, 39.135685, 20.581757>,  <40.100082, 38.314205, 20.763918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143291, 39.135685, 20.581757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800907, 39.336945, 20.534142>,  <39.595474, 39.457699, 20.505573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800907, 39.336945, 20.534142>,  <40.143291, 39.135685, 20.581757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800907, 39.336945, 20.534142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443821, -0.596906, 0.668376,
		0.265237, 0.624937, 0.734237,
		-0.855963, 0.503148, -0.119038,
		39.544117, 39.487888, 20.498430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763847, 39.148457, 21.248617>,  <40.143291, 39.135685, 20.581757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763847, 39.148457, 21.248617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483006, 39.231316, 20.976109>,  <39.314499, 39.281033, 20.812603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483006, 39.231316, 20.976109>,  <39.763847, 39.148457, 21.248617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483006, 39.231316, 20.976109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690981, -0.429332, 0.581566,
		-0.172020, 0.879069, 0.444575,
		-0.702107, 0.207152, -0.681274,
		39.272373, 39.293461, 20.771727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259804, 39.522465, 21.555508>,  <39.763847, 39.148457, 21.248617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259804, 39.522465, 21.555508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.079140, 39.354488, 21.240635>,  <38.970741, 39.253700, 21.051712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.079140, 39.354488, 21.240635>,  <39.259804, 39.522465, 21.555508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079140, 39.354488, 21.240635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583775, -0.528112, 0.616688,
		-0.674693, 0.738069, -0.006626,
		-0.451659, -0.419944, -0.787180,
		38.943642, 39.228504, 21.004480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634129, 39.381058, 21.886250>,  <39.259804, 39.522465, 21.555508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634129, 39.381058, 21.886250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.643158, 39.162609, 21.551287>,  <38.648575, 39.031540, 21.350309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.643158, 39.162609, 21.551287>,  <38.634129, 39.381058, 21.886250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643158, 39.162609, 21.551287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525944, -0.718827, 0.454611,
		-0.850220, 0.430168, -0.303450,
		0.022569, -0.546117, -0.837405,
		38.649929, 38.998775, 21.300066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949772, 39.201492, 21.789867>,  <38.634129, 39.381058, 21.886250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949772, 39.201492, 21.789867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.193005, 38.935738, 21.616047>,  <38.338943, 38.776287, 21.511755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.193005, 38.935738, 21.616047>,  <37.949772, 39.201492, 21.789867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193005, 38.935738, 21.616047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403048, -0.729948, 0.552022,
		-0.683953, -0.160529, -0.711646,
		0.608079, -0.664384, -0.434549,
		38.375427, 38.736423, 21.485682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552410, 38.675564, 21.579208>,  <37.949772, 39.201492, 21.789867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552410, 38.675564, 21.579208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916386, 38.509781, 21.573006>,  <38.134769, 38.410313, 21.569284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916386, 38.509781, 21.573006>,  <37.552410, 38.675564, 21.579208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916386, 38.509781, 21.573006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351881, -0.791265, 0.500080,
		-0.219530, -0.449585, -0.865841,
		0.909938, -0.414456, -0.015506,
		38.189365, 38.385445, 21.568354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471256, 37.903130, 21.478840>,  <37.552410, 38.675564, 21.579208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471256, 37.903130, 21.478840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820709, 37.962643, 21.664154>,  <38.030380, 37.998352, 21.775343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820709, 37.962643, 21.664154>,  <37.471256, 37.903130, 21.478840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820709, 37.962643, 21.664154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206998, -0.748022, 0.630567,
		0.440366, -0.646782, -0.622697,
		0.873630, 0.148784, 0.463286,
		38.082798, 38.007278, 21.803141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817253, 37.223518, 21.516308>,  <37.471256, 37.903130, 21.478840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817253, 37.223518, 21.516308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014580, 37.439060, 21.789444>,  <38.132977, 37.568386, 21.953325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014580, 37.439060, 21.789444>,  <37.817253, 37.223518, 21.516308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014580, 37.439060, 21.789444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036333, -0.797090, 0.602767,
		0.869088, -0.272548, -0.412799,
		0.493321, 0.538855, 0.682839,
		38.162575, 37.600716, 21.994295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271141, 36.773487, 21.784882>,  <37.817253, 37.223518, 21.516308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271141, 36.773487, 21.784882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271873, 37.067211, 22.056408>,  <38.272312, 37.243446, 22.219324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271873, 37.067211, 22.056408>,  <38.271141, 36.773487, 21.784882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271873, 37.067211, 22.056408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074805, -0.677014, 0.732158,
		0.997196, 0.049440, -0.056167,
		0.001828, 0.734307, 0.678815,
		38.272423, 37.287502, 22.260052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728653, 36.533184, 22.211229>,  <38.271141, 36.773487, 21.784882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728653, 36.533184, 22.211229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566273, 36.821899, 22.435450>,  <38.468845, 36.995129, 22.569983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566273, 36.821899, 22.435450>,  <38.728653, 36.533184, 22.211229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566273, 36.821899, 22.435450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019442, -0.606408, 0.794916,
		0.913687, 0.333597, 0.232140,
		-0.405953, 0.721792, 0.560553,
		38.444489, 37.038437, 22.603615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235596, 36.859497, 22.623573>,  <38.728653, 36.533184, 22.211229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235596, 36.859497, 22.623573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868725, 36.889587, 22.780096>,  <38.648602, 36.907642, 22.874010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868725, 36.889587, 22.780096>,  <39.235596, 36.859497, 22.623573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868725, 36.889587, 22.780096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277832, -0.583210, 0.763332,
		0.285639, 0.808830, 0.514008,
		-0.917180, 0.075230, 0.391306,
		38.593571, 36.912155, 22.897488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339737, 36.740494, 23.298374>,  <39.235596, 36.859497, 22.623573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339737, 36.740494, 23.298374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945129, 36.677479, 23.280624>,  <38.708366, 36.639671, 23.269974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945129, 36.677479, 23.280624>,  <39.339737, 36.740494, 23.298374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945129, 36.677479, 23.280624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075178, -0.676993, 0.732140,
		-0.145382, 0.718931, 0.679708,
		-0.986515, -0.157539, -0.044375,
		38.649174, 36.630219, 23.267311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049221, 36.754982, 23.992292>,  <39.339737, 36.740494, 23.298374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049221, 36.754982, 23.992292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792614, 36.550812, 23.763233>,  <38.638649, 36.428310, 23.625797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792614, 36.550812, 23.763233>,  <39.049221, 36.754982, 23.992292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792614, 36.550812, 23.763233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075677, -0.700750, 0.709382,
		-0.763370, 0.498414, 0.410913,
		-0.641513, -0.510424, -0.572650,
		38.600159, 36.397686, 23.591438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461201, 36.567963, 24.450096>,  <39.049221, 36.754982, 23.992292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461201, 36.567963, 24.450096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.477776, 36.308620, 24.146011>,  <38.487720, 36.153015, 23.963560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.477776, 36.308620, 24.146011>,  <38.461201, 36.567963, 24.450096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477776, 36.308620, 24.146011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192128, -0.751835, 0.630738,
		-0.980494, 0.119919, -0.155724,
		0.041442, -0.648354, -0.760210,
		38.490208, 36.114113, 23.917948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941223, 36.101112, 24.604725>,  <38.461201, 36.567963, 24.450096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941223, 36.101112, 24.604725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135853, 35.890694, 24.325720>,  <38.252628, 35.764442, 24.158318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135853, 35.890694, 24.325720>,  <37.941223, 36.101112, 24.604725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135853, 35.890694, 24.325720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140665, -0.835153, 0.531726,
		-0.862243, -0.160606, -0.480356,
		0.486569, -0.526047, -0.697514,
		38.281826, 35.732880, 24.116467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467781, 35.576427, 24.508772>,  <37.941223, 36.101112, 24.604725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467781, 35.576427, 24.508772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.825424, 35.456917, 24.375324>,  <38.040009, 35.385208, 24.295256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.825424, 35.456917, 24.375324>,  <37.467781, 35.576427, 24.508772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825424, 35.456917, 24.375324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051178, -0.808217, 0.586657,
		-0.444919, -0.507460, -0.737924,
		0.894107, -0.298780, -0.333621,
		38.093655, 35.367283, 24.275238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338493, 34.954540, 24.423613>,  <37.467781, 35.576427, 24.508772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338493, 34.954540, 24.423613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735863, 34.997791, 24.408564>,  <37.974285, 35.023743, 24.399534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735863, 34.997791, 24.408564>,  <37.338493, 34.954540, 24.423613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735863, 34.997791, 24.408564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110862, -0.826483, 0.551939,
		0.028589, -0.552480, -0.833036,
		0.993425, 0.108131, -0.037620,
		38.033890, 35.030231, 24.397278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465885, 34.358215, 24.153522>,  <37.338493, 34.954540, 24.423613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465885, 34.358215, 24.153522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.808804, 34.473717, 24.324015>,  <38.014553, 34.543018, 24.426310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.808804, 34.473717, 24.324015>,  <37.465885, 34.358215, 24.153522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808804, 34.473717, 24.324015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075347, -0.889361, 0.450954,
		0.509287, -0.354484, -0.784199,
		0.857292, 0.288752, 0.426231,
		38.065990, 34.560341, 24.451883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955601, 33.870220, 23.968899>,  <37.465885, 34.358215, 24.153522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955601, 33.870220, 23.968899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.069851, 34.047550, 24.308754>,  <38.138401, 34.153946, 24.512667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.069851, 34.047550, 24.308754>,  <37.955601, 33.870220, 23.968899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069851, 34.047550, 24.308754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169066, -0.849356, 0.500010,
		0.943309, -0.286462, -0.167650,
		0.285629, 0.443320, 0.849637,
		38.155540, 34.180546, 24.563644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401176, 33.496998, 24.335394>,  <37.955601, 33.870220, 23.968899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401176, 33.496998, 24.335394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.265648, 33.705704, 24.648561>,  <38.184330, 33.830929, 24.836462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.265648, 33.705704, 24.648561>,  <38.401176, 33.496998, 24.335394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265648, 33.705704, 24.648561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120701, -0.801157, 0.586156,
		0.933075, 0.293103, 0.208475,
		-0.338825, 0.521764, 0.782918,
		38.164001, 33.862232, 24.883436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766342, 33.314983, 24.962887>,  <38.401176, 33.496998, 24.335394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766342, 33.314983, 24.962887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419991, 33.470455, 25.088856>,  <38.212177, 33.563736, 25.164438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419991, 33.470455, 25.088856>,  <38.766342, 33.314983, 24.962887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419991, 33.470455, 25.088856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055043, -0.699740, 0.712274,
		0.497209, 0.599412, 0.627287,
		-0.865883, 0.388676, 0.314923,
		38.160225, 33.587059, 25.183332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.134449, 29.716484, 28.530912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.840458, 29.940056, 28.684484>,  <40.664062, 30.074200, 28.776628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.840458, 29.940056, 28.684484>,  <41.134449, 29.716484, 28.530912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840458, 29.940056, 28.684484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138215, -0.430822, 0.891790,
		0.663852, 0.708513, 0.239394,
		-0.734981, 0.558929, 0.383930,
		40.619965, 30.107735, 28.799664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290462, 29.995295, 29.282511>,  <41.134449, 29.716484, 28.530912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290462, 29.995295, 29.282511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.890530, 29.999386, 29.276443>,  <40.650570, 30.001841, 29.272802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.890530, 29.999386, 29.276443>,  <41.290462, 29.995295, 29.282511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890530, 29.999386, 29.276443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017769, -0.345412, 0.938283,
		0.004358, 0.938396, 0.345536,
		-0.999833, 0.010229, -0.015169,
		40.590580, 30.002455, 29.271893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075207, 30.331232, 29.927160>,  <41.290462, 29.995295, 29.282511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075207, 30.331232, 29.927160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.753120, 30.140936, 29.785568>,  <40.559868, 30.026758, 29.700613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.753120, 30.140936, 29.785568>,  <41.075207, 30.331232, 29.927160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753120, 30.140936, 29.785568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329586, -0.137190, 0.934105,
		-0.492954, 0.868821, -0.046330,
		-0.805214, -0.475741, -0.353980,
		40.511555, 29.998213, 29.679375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590012, 30.521799, 30.369164>,  <41.075207, 30.331232, 29.927160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590012, 30.521799, 30.369164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.413212, 30.199528, 30.211420>,  <40.307133, 30.006165, 30.116774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.413212, 30.199528, 30.211420>,  <40.590012, 30.521799, 30.369164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413212, 30.199528, 30.211420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318295, -0.270158, 0.908682,
		-0.838644, 0.527160, -0.137033,
		-0.442000, -0.805678, -0.394359,
		40.280613, 29.957825, 30.093113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888462, 30.443237, 30.679491>,  <40.590012, 30.521799, 30.369164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888462, 30.443237, 30.679491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988033, 30.085299, 30.531282>,  <40.047775, 29.870535, 30.442358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988033, 30.085299, 30.531282>,  <39.888462, 30.443237, 30.679491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988033, 30.085299, 30.531282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281806, -0.432931, 0.856245,
		-0.926617, -0.108733, -0.359943,
		0.248932, -0.894845, -0.370520,
		40.062714, 29.816845, 30.420126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272858, 29.982742, 30.709272>,  <39.888462, 30.443237, 30.679491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272858, 29.982742, 30.709272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595684, 29.748184, 30.736944>,  <39.789379, 29.607449, 30.753548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595684, 29.748184, 30.736944>,  <39.272858, 29.982742, 30.709272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595684, 29.748184, 30.736944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348743, -0.378848, 0.857235,
		-0.476472, -0.715970, -0.510257,
		0.807064, -0.586397, 0.069179,
		39.837803, 29.572266, 30.757698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931084, 29.393217, 30.914013>,  <39.272858, 29.982742, 30.709272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931084, 29.393217, 30.914013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.326416, 29.378124, 30.973055>,  <39.563614, 29.369068, 31.008480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.326416, 29.378124, 30.973055>,  <38.931084, 29.393217, 30.914013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326416, 29.378124, 30.973055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148249, -0.461485, 0.874674,
		0.035115, -0.886345, -0.461691,
		0.988326, -0.037731, 0.147605,
		39.622913, 29.366804, 31.017336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984589, 28.743090, 31.180952>,  <38.931084, 29.393217, 30.914013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984589, 28.743090, 31.180952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.341660, 28.884764, 31.292433>,  <39.555904, 28.969769, 31.359322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.341660, 28.884764, 31.292433>,  <38.984589, 28.743090, 31.180952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341660, 28.884764, 31.292433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125694, -0.398201, 0.908645,
		0.432811, -0.846160, -0.310947,
		0.892679, 0.354188, 0.278704,
		39.609463, 28.991020, 31.376043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302792, 28.297705, 31.615158>,  <38.984589, 28.743090, 31.180952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302792, 28.297705, 31.615158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506100, 28.629478, 31.707851>,  <39.628082, 28.828543, 31.763468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506100, 28.629478, 31.707851>,  <39.302792, 28.297705, 31.615158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506100, 28.629478, 31.707851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097893, -0.211693, 0.972421,
		0.855617, -0.516936, -0.026401,
		0.508268, 0.829436, 0.231733,
		39.658581, 28.878309, 31.777370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959209, 28.113987, 31.968939>,  <39.302792, 28.297705, 31.615158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959209, 28.113987, 31.968939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.819168, 28.476450, 32.063850>,  <39.735142, 28.693928, 32.120796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.819168, 28.476450, 32.063850>,  <39.959209, 28.113987, 31.968939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819168, 28.476450, 32.063850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033690, -0.265328, 0.963569,
		0.936104, 0.329358, 0.123421,
		-0.350106, 0.906159, 0.237278,
		39.714138, 28.748299, 32.135033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371357, 28.359880, 32.604931>,  <39.959209, 28.113987, 31.968939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371357, 28.359880, 32.604931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.049065, 28.596794, 32.605267>,  <39.855690, 28.738941, 32.605469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.049065, 28.596794, 32.605267>,  <40.371357, 28.359880, 32.604931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049065, 28.596794, 32.605267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160221, -0.219324, 0.962406,
		0.570200, 0.775305, 0.271612,
		-0.805730, 0.592283, 0.000838,
		39.807346, 28.774479, 32.605518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427986, 28.582832, 33.255058>,  <40.371357, 28.359880, 32.604931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427986, 28.582832, 33.255058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.057388, 28.637384, 33.114769>,  <39.835030, 28.670115, 33.030594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.057388, 28.637384, 33.114769>,  <40.427986, 28.582832, 33.255058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057388, 28.637384, 33.114769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376299, -0.329076, 0.866088,
		0.002700, 0.934404, 0.356206,
		-0.926494, 0.136379, -0.350727,
		39.779442, 28.678299, 33.009552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151630, 28.848043, 33.885975>,  <40.427986, 28.582832, 33.255058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151630, 28.848043, 33.885975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855038, 28.735546, 33.642303>,  <39.677082, 28.668047, 33.496101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855038, 28.735546, 33.642303>,  <40.151630, 28.848043, 33.885975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855038, 28.735546, 33.642303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537611, -0.294210, 0.790199,
		-0.401465, 0.913424, 0.066953,
		-0.741485, -0.281243, -0.609182,
		39.632591, 28.651173, 33.459549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473007, 29.178865, 34.116680>,  <40.151630, 28.848043, 33.885975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473007, 29.178865, 34.116680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.407440, 28.848230, 33.901318>,  <39.368099, 28.649849, 33.772099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.407440, 28.848230, 33.901318>,  <39.473007, 29.178865, 34.116680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407440, 28.848230, 33.901318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421353, -0.434829, 0.795855,
		-0.891960, 0.357314, -0.277010,
		-0.163918, -0.826589, -0.538406,
		39.358265, 28.600254, 33.739796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054966, 29.378847, 34.495094>,  <39.473007, 29.178865, 34.116680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054966, 29.378847, 34.495094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.948826, 29.600073, 34.810993>,  <39.885139, 29.732809, 35.000534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.948826, 29.600073, 34.810993>,  <40.054966, 29.378847, 34.495094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948826, 29.600073, 34.810993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103890, 0.830748, -0.546868,
		-0.958538, -0.063066, -0.277900,
		-0.265354, 0.553064, 0.789751,
		39.869221, 29.765993, 35.047920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630367, 29.878080, 34.269196>,  <40.054966, 29.378847, 34.495094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630367, 29.878080, 34.269196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.742565, 30.040171, 34.617245>,  <39.809883, 30.137424, 34.826073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.742565, 30.040171, 34.617245>,  <39.630367, 29.878080, 34.269196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742565, 30.040171, 34.617245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072260, 0.895028, -0.440117,
		-0.957131, 0.186327, 0.221772,
		0.280498, 0.405224, 0.870123,
		39.826714, 30.161737, 34.878281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139153, 30.330523, 34.418831>,  <39.630367, 29.878080, 34.269196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139153, 30.330523, 34.418831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.455276, 30.438446, 34.638870>,  <39.644951, 30.503201, 34.770893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.455276, 30.438446, 34.638870>,  <39.139153, 30.330523, 34.418831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455276, 30.438446, 34.638870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073457, 0.933070, -0.352113,
		-0.608288, 0.237870, 0.757234,
		0.790310, 0.269810, 0.550102,
		39.692371, 30.519390, 34.803902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936939, 30.923395, 34.903416>,  <39.139153, 30.330523, 34.418831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936939, 30.923395, 34.903416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328671, 30.936806, 34.823631>,  <39.563709, 30.944853, 34.775761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328671, 30.936806, 34.823631>,  <38.936939, 30.923395, 34.903416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328671, 30.936806, 34.823631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095911, 0.945220, -0.312026,
		0.178077, 0.324708, 0.928899,
		0.979331, 0.033527, -0.199465,
		39.622471, 30.946863, 34.763790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090977, 31.622465, 34.993145>,  <38.936939, 30.923395, 34.903416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090977, 31.622465, 34.993145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403084, 31.465918, 34.797997>,  <39.590347, 31.371988, 34.680908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403084, 31.465918, 34.797997>,  <39.090977, 31.622465, 34.993145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403084, 31.465918, 34.797997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052515, 0.818270, -0.572430,
		0.623241, 0.421026, 0.659020,
		0.780264, -0.391370, -0.487870,
		39.637161, 31.348507, 34.651634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520325, 32.241920, 34.827061>,  <39.090977, 31.622465, 34.993145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520325, 32.241920, 34.827061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.656284, 31.956055, 34.582531>,  <39.737858, 31.784534, 34.435814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.656284, 31.956055, 34.582531>,  <39.520325, 32.241920, 34.827061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656284, 31.956055, 34.582531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036600, 0.639484, -0.767932,
		0.939751, 0.283391, 0.191201,
		0.339895, -0.714667, -0.611328,
		39.758251, 31.741655, 34.399132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052998, 32.581409, 34.530689>,  <39.520325, 32.241920, 34.827061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052998, 32.581409, 34.530689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.964687, 32.292751, 34.268246>,  <39.911701, 32.119556, 34.110779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.964687, 32.292751, 34.268246>,  <40.052998, 32.581409, 34.530689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964687, 32.292751, 34.268246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036642, 0.678373, -0.733803,
		0.974636, -0.137966, -0.176213,
		-0.220778, -0.721648, -0.656112,
		39.898453, 32.076256, 34.071411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548862, 32.668427, 33.868004>,  <40.052998, 32.581409, 34.530689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548862, 32.668427, 33.868004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.236092, 32.451828, 33.744473>,  <40.048431, 32.321869, 33.670353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.236092, 32.451828, 33.744473>,  <40.548862, 32.668427, 33.868004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236092, 32.451828, 33.744473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036168, 0.533992, -0.844715,
		0.622325, -0.649333, -0.437126,
		-0.781923, -0.541497, -0.308832,
		40.001514, 32.289379, 33.651825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652798, 32.523319, 33.186558>,  <40.548862, 32.668427, 33.868004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652798, 32.523319, 33.186558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.256847, 32.481201, 33.224621>,  <40.019276, 32.455933, 33.247459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.256847, 32.481201, 33.224621>,  <40.652798, 32.523319, 33.186558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256847, 32.481201, 33.224621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136900, 0.531688, -0.835803,
		0.037408, -0.840370, -0.540720,
		-0.989878, -0.105290, 0.095157,
		39.959885, 32.449615, 33.253166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461090, 32.513153, 32.510014>,  <40.652798, 32.523319, 33.186558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461090, 32.513153, 32.510014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104229, 32.556995, 32.685303>,  <39.890110, 32.583302, 32.790478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104229, 32.556995, 32.685303>,  <40.461090, 32.513153, 32.510014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104229, 32.556995, 32.685303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299539, 0.582612, -0.755539,
		-0.338130, -0.805325, -0.486950,
		-0.892157, 0.109610, 0.438225,
		39.836582, 32.589878, 32.816769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063786, 32.449474, 32.005802>,  <40.461090, 32.513153, 32.510014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063786, 32.449474, 32.005802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.841484, 32.632732, 32.283287>,  <39.708103, 32.742687, 32.449780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.841484, 32.632732, 32.283287>,  <40.063786, 32.449474, 32.005802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841484, 32.632732, 32.283287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397433, 0.586498, -0.705739,
		-0.730194, -0.667921, -0.143866,
		-0.555755, 0.458150, 0.693711,
		39.674759, 32.770176, 32.491402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367428, 32.624897, 31.676435>,  <40.063786, 32.449474, 32.005802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367428, 32.624897, 31.676435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.427460, 32.883972, 31.975227>,  <39.463478, 33.039417, 32.154503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.427460, 32.883972, 31.975227>,  <39.367428, 32.624897, 31.676435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427460, 32.883972, 31.975227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422437, 0.725107, -0.543845,
		-0.893881, -0.233932, 0.382429,
		0.150079, 0.647685, 0.746981,
		39.472485, 33.078278, 32.199322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806229, 33.046127, 31.656511>,  <39.367428, 32.624897, 31.676435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806229, 33.046127, 31.656511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.089352, 33.260426, 31.840677>,  <39.259224, 33.389004, 31.951178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.089352, 33.260426, 31.840677>,  <38.806229, 33.046127, 31.656511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089352, 33.260426, 31.840677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191023, 0.772652, -0.605409,
		-0.680089, 0.340562, 0.649228,
		0.707806, 0.535749, 0.460416,
		39.301693, 33.421150, 31.978802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538593, 33.754700, 31.774273>,  <38.806229, 33.046127, 31.656511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538593, 33.754700, 31.774273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.928146, 33.837975, 31.810514>,  <39.161877, 33.887939, 31.832260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.928146, 33.837975, 31.810514>,  <38.538593, 33.754700, 31.774273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928146, 33.837975, 31.810514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127641, 0.832029, -0.539848,
		-0.187778, 0.514184, 0.836872,
		0.973882, 0.208191, 0.090605,
		39.220310, 33.900433, 31.837696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030109, 34.011890, 32.288185>,  <38.538593, 33.754700, 31.774273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030109, 34.011890, 32.288185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.642467, 34.110260, 32.295643>,  <37.409882, 34.169281, 32.300117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.642467, 34.110260, 32.295643>,  <38.030109, 34.011890, 32.288185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642467, 34.110260, 32.295643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138470, -0.605088, 0.784025,
		0.204092, 0.757224, 0.620450,
		-0.969109, 0.245927, 0.018641,
		37.351734, 34.184040, 32.301235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912449, 34.266216, 32.916573>,  <38.030109, 34.011890, 32.288185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912449, 34.266216, 32.916573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.548973, 34.157204, 32.790077>,  <37.330887, 34.091797, 32.714180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.548973, 34.157204, 32.790077>,  <37.912449, 34.266216, 32.916573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548973, 34.157204, 32.790077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093532, -0.605343, 0.790450,
		-0.406853, 0.747855, 0.524580,
		-0.908693, -0.272532, -0.316234,
		37.276363, 34.075443, 32.695206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635342, 34.316414, 33.438950>,  <37.912449, 34.266216, 32.916573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635342, 34.316414, 33.438950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371059, 34.106655, 33.224110>,  <37.212490, 33.980801, 33.095207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371059, 34.106655, 33.224110>,  <37.635342, 34.316414, 33.438950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371059, 34.106655, 33.224110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164085, -0.597318, 0.785040,
		-0.732491, 0.606811, 0.308607,
		-0.660707, -0.524396, -0.537098,
		37.172848, 33.949337, 33.062981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101234, 34.196800, 33.836857>,  <37.635342, 34.316414, 33.438950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101234, 34.196800, 33.836857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.056835, 33.918884, 33.552616>,  <37.030193, 33.752136, 33.382072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.056835, 33.918884, 33.552616>,  <37.101234, 34.196800, 33.836857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056835, 33.918884, 33.552616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358112, -0.639021, 0.680741,
		-0.927057, 0.330037, -0.177878,
		-0.111002, -0.694786, -0.710599,
		37.023533, 33.710449, 33.339436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450943, 33.947285, 34.001217>,  <37.101234, 34.196800, 33.836857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450943, 33.947285, 34.001217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.647602, 33.670853, 33.789295>,  <36.765598, 33.504993, 33.662144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.647602, 33.670853, 33.789295>,  <36.450943, 33.947285, 34.001217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647602, 33.670853, 33.789295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344253, -0.713105, 0.610713,
		-0.799857, -0.117869, -0.588503,
		0.491649, -0.691077, -0.529806,
		36.795097, 33.463528, 33.630352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971199, 33.398994, 33.862324>,  <36.450943, 33.947285, 34.001217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971199, 33.398994, 33.862324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.340294, 33.247536, 33.833534>,  <36.561752, 33.156662, 33.816261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.340294, 33.247536, 33.833534>,  <35.971199, 33.398994, 33.862324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340294, 33.247536, 33.833534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268243, -0.764990, 0.585522,
		-0.276760, -0.520980, -0.807455,
		0.922740, -0.378643, -0.071970,
		36.617115, 33.133942, 33.811943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860912, 32.673450, 33.682285>,  <35.971199, 33.398994, 33.862324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860912, 32.673450, 33.682285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.240860, 32.681023, 33.807121>,  <36.468826, 32.685566, 33.882023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.240860, 32.681023, 33.807121>,  <35.860912, 32.673450, 33.682285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240860, 32.681023, 33.807121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154136, -0.840097, 0.520075,
		0.272029, -0.542105, -0.795061,
		0.949864, 0.018928, 0.312089,
		36.525818, 32.686703, 33.900749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255936, 31.964811, 33.526653>,  <35.860912, 32.673450, 33.682285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255936, 31.964811, 33.526653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.428490, 32.145016, 33.839306>,  <36.532021, 32.253139, 34.026897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.428490, 32.145016, 33.839306>,  <36.255936, 31.964811, 33.526653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428490, 32.145016, 33.839306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200332, -0.796925, 0.569893,
		0.879645, -0.402428, -0.253529,
		0.431384, 0.450513, 0.781630,
		36.557903, 32.280170, 34.073795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519562, 31.408939, 33.945541>,  <36.255936, 31.964811, 33.526653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519562, 31.408939, 33.945541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.507347, 31.707949, 34.210957>,  <36.500019, 31.887354, 34.370205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.507347, 31.707949, 34.210957>,  <36.519562, 31.408939, 33.945541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507347, 31.707949, 34.210957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326401, -0.634908, 0.700253,
		0.944738, -0.195198, 0.263378,
		-0.030533, 0.747522, 0.663535,
		36.498188, 31.932205, 34.410019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849907, 31.196915, 34.527023>,  <36.519562, 31.408939, 33.945541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849907, 31.196915, 34.527023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.609135, 31.487467, 34.659718>,  <36.464672, 31.661798, 34.739334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.609135, 31.487467, 34.659718>,  <36.849907, 31.196915, 34.527023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609135, 31.487467, 34.659718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274891, -0.578515, 0.767955,
		0.749740, 0.371068, 0.547904,
		-0.601934, 0.726381, 0.331732,
		36.428555, 31.705381, 34.759235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997444, 31.209755, 35.214420>,  <36.849907, 31.196915, 34.527023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997444, 31.209755, 35.214420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.653267, 31.412956, 35.198532>,  <36.446762, 31.534876, 35.188999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.653267, 31.412956, 35.198532>,  <36.997444, 31.209755, 35.214420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653267, 31.412956, 35.198532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290217, -0.424495, 0.857659,
		0.418828, 0.749493, 0.512683,
		-0.860440, 0.508001, -0.039725,
		36.395134, 31.565357, 35.186615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948944, 31.489727, 35.940517>,  <36.997444, 31.209755, 35.214420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948944, 31.489727, 35.940517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.592281, 31.508087, 35.760365>,  <36.378284, 31.519104, 35.652271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.592281, 31.508087, 35.760365>,  <36.948944, 31.489727, 35.940517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592281, 31.508087, 35.760365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446123, -0.258240, 0.856905,
		-0.076973, 0.964990, 0.250739,
		-0.891656, 0.045902, -0.450381,
		36.324783, 31.521858, 35.625252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.307304, 37.517494, 30.570438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030590, 37.337078, 30.344875>,  <37.864559, 37.228828, 30.209538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030590, 37.337078, 30.344875>,  <38.307304, 37.517494, 30.570438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030590, 37.337078, 30.344875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217709, -0.614312, 0.758434,
		-0.688497, 0.647446, 0.326780,
		-0.691790, -0.451037, -0.563907,
		37.823051, 37.201767, 30.175703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671978, 37.661705, 30.929775>,  <38.307304, 37.517494, 30.570438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671978, 37.661705, 30.929775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650017, 37.322720, 30.718571>,  <37.636841, 37.119328, 30.591848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650017, 37.322720, 30.718571>,  <37.671978, 37.661705, 30.929775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650017, 37.322720, 30.718571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233772, -0.503200, 0.831950,
		-0.970740, 0.169109, -0.170487,
		-0.054902, -0.847462, -0.528009,
		37.633545, 37.068481, 30.560167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154655, 37.279396, 31.321014>,  <37.671978, 37.661705, 30.929775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154655, 37.279396, 31.321014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336151, 37.002666, 31.096336>,  <37.445049, 36.836628, 30.961531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336151, 37.002666, 31.096336>,  <37.154655, 37.279396, 31.321014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336151, 37.002666, 31.096336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210082, -0.695592, 0.687035,
		-0.866016, -0.193735, -0.460958,
		0.453741, -0.691823, -0.561694,
		37.472275, 36.795120, 30.927828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698742, 36.773514, 31.443802>,  <37.154655, 37.279396, 31.321014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698742, 36.773514, 31.443802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035683, 36.596592, 31.320633>,  <37.237846, 36.490440, 31.246733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035683, 36.596592, 31.320633>,  <36.698742, 36.773514, 31.443802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035683, 36.596592, 31.320633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216385, -0.800847, 0.558411,
		-0.493584, -0.403748, -0.770301,
		0.842350, -0.442304, -0.307920,
		37.288387, 36.463902, 31.228256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433163, 36.113739, 31.342377>,  <36.698742, 36.773514, 31.443802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433163, 36.113739, 31.342377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830242, 36.066296, 31.351114>,  <37.068489, 36.037830, 31.356356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830242, 36.066296, 31.351114>,  <36.433163, 36.113739, 31.342377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830242, 36.066296, 31.351114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118916, -0.932488, 0.341064,
		-0.020084, -0.341172, -0.939786,
		0.992701, -0.118606, 0.021843,
		37.128052, 36.030712, 31.357668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633980, 35.509220, 30.860451>,  <36.433163, 36.113739, 31.342377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633980, 35.509220, 30.860451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934364, 35.562035, 31.119257>,  <37.114594, 35.593723, 31.274542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934364, 35.562035, 31.119257>,  <36.633980, 35.509220, 30.860451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934364, 35.562035, 31.119257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014943, -0.976158, 0.216545,
		0.660182, -0.172284, -0.731080,
		0.750957, 0.132035, 0.647017,
		37.159653, 35.601646, 31.313362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895203, 34.849396, 30.897081>,  <36.633980, 35.509220, 30.860451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895203, 34.849396, 30.897081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105206, 35.015259, 31.194382>,  <37.231209, 35.114777, 31.372763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105206, 35.015259, 31.194382>,  <36.895203, 34.849396, 30.897081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105206, 35.015259, 31.194382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127781, -0.901792, 0.412847,
		0.841450, -0.121775, -0.526434,
		0.525008, 0.414659, 0.743253,
		37.262707, 35.139656, 31.417358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496655, 34.348461, 31.043955>,  <36.895203, 34.849396, 30.897081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496655, 34.348461, 31.043955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428177, 34.576084, 31.365667>,  <37.387089, 34.712658, 31.558695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428177, 34.576084, 31.365667>,  <37.496655, 34.348461, 31.043955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428177, 34.576084, 31.365667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080276, -0.821675, 0.564274,
		0.981961, 0.032038, 0.186350,
		-0.171197, 0.569055, 0.804281,
		37.376816, 34.746799, 31.606951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898643, 34.087975, 31.539263>,  <37.496655, 34.348461, 31.043955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898643, 34.087975, 31.539263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625294, 34.301975, 31.737967>,  <37.461285, 34.430378, 31.857189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625294, 34.301975, 31.737967>,  <37.898643, 34.087975, 31.539263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625294, 34.301975, 31.737967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147257, -0.767452, 0.623966,
		0.715064, 0.353250, 0.603239,
		-0.683373, 0.535006, 0.496759,
		37.420280, 34.462479, 31.886993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564423, 34.474865, 31.815838>,  <37.898643, 34.087975, 31.539263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564423, 34.474865, 31.815838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943710, 34.385891, 31.725145>,  <39.171284, 34.332508, 31.670731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943710, 34.385891, 31.725145>,  <38.564423, 34.474865, 31.815838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943710, 34.385891, 31.725145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017024, 0.748405, -0.663024,
		0.317166, 0.624831, 0.713437,
		0.948217, -0.222434, -0.226731,
		39.228176, 34.319160, 31.657125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878666, 35.081234, 31.795269>,  <38.564423, 34.474865, 31.815838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878666, 35.081234, 31.795269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156868, 34.863583, 31.607567>,  <39.323788, 34.732994, 31.494946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156868, 34.863583, 31.607567>,  <38.878666, 35.081234, 31.795269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156868, 34.863583, 31.607567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281551, 0.807242, -0.518737,
		0.661063, 0.228663, 0.714639,
		0.695503, -0.544126, -0.469258,
		39.365520, 34.700344, 31.466789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542934, 35.494297, 31.800432>,  <38.878666, 35.081234, 31.795269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542934, 35.494297, 31.800432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534187, 35.246811, 31.486307>,  <39.528938, 35.098320, 31.297832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534187, 35.246811, 31.486307>,  <39.542934, 35.494297, 31.800432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534187, 35.246811, 31.486307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372072, 0.724041, -0.580798,
		0.927946, -0.304894, 0.214373,
		-0.021867, -0.618711, -0.785314,
		39.527626, 35.061199, 31.250713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941437, 35.842278, 31.387304>,  <39.542934, 35.494297, 31.800432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941437, 35.842278, 31.387304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824726, 35.544327, 31.147295>,  <39.754700, 35.365555, 31.003290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824726, 35.544327, 31.147295>,  <39.941437, 35.842278, 31.387304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824726, 35.544327, 31.147295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358187, 0.496579, -0.790639,
		0.886888, -0.445609, 0.121916,
		-0.291775, -0.744877, -0.600021,
		39.737194, 35.320862, 30.967289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484501, 35.478786, 30.990635>,  <39.941437, 35.842278, 31.387304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484501, 35.478786, 30.990635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142181, 35.449661, 30.785774>,  <39.936790, 35.432186, 30.662857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142181, 35.449661, 30.785774>,  <40.484501, 35.478786, 30.990635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142181, 35.449661, 30.785774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405069, 0.521455, -0.751002,
		0.321745, -0.850166, -0.416770,
		-0.855803, -0.072810, -0.512152,
		39.885441, 35.427818, 30.632130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693470, 35.224621, 30.312483>,  <40.484501, 35.478786, 30.990635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693470, 35.224621, 30.312483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325104, 35.366058, 30.246899>,  <40.104084, 35.450920, 30.207548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325104, 35.366058, 30.246899>,  <40.693470, 35.224621, 30.312483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325104, 35.366058, 30.246899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322071, 0.453459, -0.831051,
		-0.219504, -0.818136, -0.531480,
		-0.920917, 0.353593, -0.163962,
		40.048828, 35.472137, 30.197710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472942, 35.023560, 29.637554>,  <40.693470, 35.224621, 30.312483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472942, 35.023560, 29.637554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256973, 35.345726, 29.735363>,  <40.127392, 35.539024, 29.794048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256973, 35.345726, 29.735363>,  <40.472942, 35.023560, 29.637554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256973, 35.345726, 29.735363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154960, 0.380655, -0.911641,
		-0.827326, -0.454326, -0.330332,
		-0.539925, 0.805413, 0.244524,
		40.094997, 35.587349, 29.808720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979176, 35.094307, 29.084000>,  <40.472942, 35.023560, 29.637554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979176, 35.094307, 29.084000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978600, 35.453976, 29.259037>,  <39.978252, 35.669777, 29.364059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978600, 35.453976, 29.259037>,  <39.979176, 35.094307, 29.084000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978600, 35.453976, 29.259037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092075, 0.435856, -0.895294,
		-0.995751, 0.039004, -0.083419,
		-0.001439, 0.899171, 0.437595,
		39.978168, 35.723728, 29.390316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522087, 35.640381, 28.660759>,  <39.979176, 35.094307, 29.084000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522087, 35.640381, 28.660759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741714, 35.903301, 28.867247>,  <39.873489, 36.061054, 28.991138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741714, 35.903301, 28.867247>,  <39.522087, 35.640381, 28.660759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741714, 35.903301, 28.867247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085879, 0.570011, -0.817137,
		-0.831356, 0.492994, 0.256525,
		0.549066, 0.657301, 0.516219,
		39.906433, 36.100491, 29.022112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296463, 36.320583, 28.521463>,  <39.522087, 35.640381, 28.660759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296463, 36.320583, 28.521463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671268, 36.383362, 28.646284>,  <39.896152, 36.421028, 28.721176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671268, 36.383362, 28.646284>,  <39.296463, 36.320583, 28.521463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671268, 36.383362, 28.646284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107028, 0.721398, -0.684201,
		-0.332492, 0.674503, 0.659162,
		0.937013, 0.156942, 0.312050,
		39.952374, 36.430443, 28.739899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436935, 37.096592, 28.483479>,  <39.296463, 36.320583, 28.521463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436935, 37.096592, 28.483479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791622, 36.912224, 28.469196>,  <40.004436, 36.801601, 28.460627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791622, 36.912224, 28.469196>,  <39.436935, 37.096592, 28.483479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791622, 36.912224, 28.469196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267745, 0.574972, -0.773123,
		0.376879, 0.675986, 0.633250,
		0.886721, -0.460923, -0.035703,
		40.057640, 36.773949, 28.458485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967804, 37.598904, 28.370502>,  <39.436935, 37.096592, 28.483479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967804, 37.598904, 28.370502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175480, 37.272396, 28.269197>,  <40.300083, 37.076492, 28.208414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175480, 37.272396, 28.269197>,  <39.967804, 37.598904, 28.370502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175480, 37.272396, 28.269197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491770, 0.527684, -0.692612,
		0.699004, 0.235049, 0.675386,
		0.519188, -0.816273, -0.253263,
		40.331238, 37.027515, 28.193218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650864, 37.823307, 28.453436>,  <39.967804, 37.598904, 28.370502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650864, 37.823307, 28.453436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681252, 37.504768, 28.213419>,  <40.699486, 37.313644, 28.069408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681252, 37.504768, 28.213419>,  <40.650864, 37.823307, 28.453436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681252, 37.504768, 28.213419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416375, 0.572140, -0.706602,
		0.906014, -0.196163, 0.375046,
		0.075970, -0.796351, -0.600044,
		40.704041, 37.265862, 28.033405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426571, 37.888824, 28.190893>,  <40.650864, 37.823307, 28.453436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426571, 37.888824, 28.190893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206573, 37.649181, 27.958145>,  <41.074574, 37.505394, 27.818497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206573, 37.649181, 27.958145>,  <41.426571, 37.888824, 28.190893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206573, 37.649181, 27.958145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383025, 0.438175, -0.813200,
		0.742155, -0.670129, -0.011522,
		-0.549997, -0.599107, -0.581870,
		41.041573, 37.469448, 27.783585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.051521, 34.876648, 24.295650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218567, 35.167004, 24.514257>,  <35.318794, 35.341217, 24.645422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218567, 35.167004, 24.514257>,  <35.051521, 34.876648, 24.295650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218567, 35.167004, 24.514257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141537, -0.646103, 0.750012,
		0.897534, -0.235861, -0.372561,
		0.417611, 0.725893, 0.546517,
		35.343849, 35.384773, 24.678213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703869, 34.580017, 24.597494>,  <35.051521, 34.876648, 24.295650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703869, 34.580017, 24.597494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596432, 34.900051, 24.812056>,  <35.531971, 35.092072, 24.940792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596432, 34.900051, 24.812056>,  <35.703869, 34.580017, 24.597494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596432, 34.900051, 24.812056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067686, -0.539812, 0.839060,
		0.960873, 0.261670, 0.090834,
		-0.268591, 0.800082, 0.536402,
		35.515854, 35.140076, 24.972977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350925, 34.778236, 25.045507>,  <35.703869, 34.580017, 24.597494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350925, 34.778236, 25.045507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.010983, 34.923157, 25.198601>,  <35.807018, 35.010109, 25.290457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.010983, 34.923157, 25.198601>,  <36.350925, 34.778236, 25.045507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010983, 34.923157, 25.198601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130330, -0.559189, 0.818732,
		0.510644, 0.745687, 0.428012,
		-0.849857, 0.362297, 0.382731,
		35.756027, 35.031845, 25.313419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428562, 34.675671, 25.739290>,  <36.350925, 34.778236, 25.045507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428562, 34.675671, 25.739290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.030674, 34.708035, 25.714045>,  <35.791943, 34.727455, 25.698896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.030674, 34.708035, 25.714045>,  <36.428562, 34.675671, 25.739290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030674, 34.708035, 25.714045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100563, -0.646113, 0.756588,
		0.020438, 0.758941, 0.650839,
		-0.994721, 0.080914, -0.063116,
		35.732258, 34.732307, 25.695110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245636, 34.853104, 26.408701>,  <36.428562, 34.675671, 25.739290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245636, 34.853104, 26.408701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.924034, 34.695133, 26.230890>,  <35.731071, 34.600349, 26.124205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.924034, 34.695133, 26.230890>,  <36.245636, 34.853104, 26.408701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924034, 34.695133, 26.230890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095736, -0.651852, 0.752279,
		-0.586862, 0.647395, 0.486285,
		-0.804007, -0.394930, -0.444526,
		35.682831, 34.576653, 26.097532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860176, 34.595760, 26.957481>,  <36.245636, 34.853104, 26.408701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860176, 34.595760, 26.957481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.695274, 34.405296, 26.646786>,  <35.596333, 34.291019, 26.460369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.695274, 34.405296, 26.646786>,  <35.860176, 34.595760, 26.957481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695274, 34.405296, 26.646786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192992, -0.787568, 0.585227,
		-0.890392, 0.391168, 0.232786,
		-0.412256, -0.476156, -0.776737,
		35.571598, 34.262451, 26.413765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209530, 34.294884, 27.266033>,  <35.860176, 34.595760, 26.957481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209530, 34.294884, 27.266033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.271725, 34.098770, 26.923000>,  <35.309040, 33.981102, 26.717180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.271725, 34.098770, 26.923000>,  <35.209530, 34.294884, 27.266033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271725, 34.098770, 26.923000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178687, -0.867780, 0.463712,
		-0.971542, 0.081138, -0.222535,
		0.155487, -0.490280, -0.857583,
		35.318371, 33.951687, 26.665726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727947, 33.825626, 27.267851>,  <35.209530, 34.294884, 27.266033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727947, 33.825626, 27.267851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939560, 33.665241, 26.968691>,  <35.066528, 33.569012, 26.789194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939560, 33.665241, 26.968691>,  <34.727947, 33.825626, 27.267851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939560, 33.665241, 26.968691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254501, -0.915730, 0.310915,
		-0.809541, 0.025858, -0.586493,
		0.529029, -0.400962, -0.747902,
		35.098270, 33.544952, 26.744320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238422, 33.353046, 26.913284>,  <34.727947, 33.825626, 27.267851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238422, 33.353046, 26.913284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.624432, 33.251621, 26.886621>,  <34.856037, 33.190765, 26.870625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.624432, 33.251621, 26.886621>,  <34.238422, 33.353046, 26.913284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624432, 33.251621, 26.886621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206798, -0.892444, 0.400971,
		-0.161158, -0.373160, -0.913663,
		0.965020, -0.253564, -0.066656,
		34.913937, 33.175552, 26.866625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219482, 32.645638, 26.882959>,  <34.238422, 33.353046, 26.913284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219482, 32.645638, 26.882959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603794, 32.715668, 26.968990>,  <34.834381, 32.757687, 27.020609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603794, 32.715668, 26.968990>,  <34.219482, 32.645638, 26.882959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603794, 32.715668, 26.968990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007191, -0.791000, 0.611773,
		0.277233, -0.586231, -0.761233,
		0.960776, 0.175078, 0.215076,
		34.892025, 32.768192, 27.033512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571472, 31.946171, 26.816692>,  <34.219482, 32.645638, 26.882959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571472, 31.946171, 26.816692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.789318, 32.180691, 27.056574>,  <34.920025, 32.321404, 27.200502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.789318, 32.180691, 27.056574>,  <34.571472, 31.946171, 26.816692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789318, 32.180691, 27.056574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043062, -0.733659, 0.678152,
		0.837579, -0.343508, -0.424810,
		0.544616, 0.586299, 0.599706,
		34.952702, 32.356579, 27.236486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245605, 31.596022, 27.016935>,  <34.571472, 31.946171, 26.816692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245605, 31.596022, 27.016935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.181290, 31.872091, 27.299156>,  <35.142700, 32.037735, 27.468489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.181290, 31.872091, 27.299156>,  <35.245605, 31.596022, 27.016935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181290, 31.872091, 27.299156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164280, -0.686169, 0.708650,
		0.973221, 0.229851, -0.003053,
		-0.160789, 0.690174, 0.705554,
		35.133053, 32.079144, 27.510822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722561, 31.452347, 27.600193>,  <35.245605, 31.596022, 27.016935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722561, 31.452347, 27.600193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.498138, 31.719038, 27.796431>,  <35.363483, 31.879053, 27.914173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.498138, 31.719038, 27.796431>,  <35.722561, 31.452347, 27.600193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498138, 31.719038, 27.796431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073841, -0.549993, 0.831899,
		0.824475, 0.502971, 0.259347,
		-0.561060, 0.666729, 0.490595,
		35.329819, 31.919056, 27.943609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074245, 31.660620, 28.290083>,  <35.722561, 31.452347, 27.600193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074245, 31.660620, 28.290083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.682453, 31.736748, 28.316597>,  <35.447376, 31.782425, 28.332506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.682453, 31.736748, 28.316597>,  <36.074245, 31.660620, 28.290083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682453, 31.736748, 28.316597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016909, -0.405350, 0.914005,
		0.200824, 0.894130, 0.400251,
		-0.979481, 0.190322, 0.066285,
		35.388607, 31.793844, 28.336483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659401, 31.977819, 28.723871>,  <36.074245, 31.660620, 28.290083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659401, 31.977819, 28.723871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.955944, 31.731216, 28.617804>,  <37.133869, 31.583256, 28.554163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.955944, 31.731216, 28.617804>,  <36.659401, 31.977819, 28.723871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955944, 31.731216, 28.617804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280187, 0.643362, -0.712447,
		0.609826, 0.453880, 0.649696,
		0.741355, -0.616506, -0.265167,
		37.178352, 31.546265, 28.538254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261932, 32.379551, 28.723213>,  <36.659401, 31.977819, 28.723871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261932, 32.379551, 28.723213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.319523, 32.060192, 28.489346>,  <37.354076, 31.868578, 28.349024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.319523, 32.060192, 28.489346>,  <37.261932, 32.379551, 28.723213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319523, 32.060192, 28.489346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457353, 0.577626, -0.676148,
		0.877553, -0.170052, 0.448312,
		0.143976, -0.798393, -0.584671,
		37.362717, 31.820675, 28.313944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984303, 32.436897, 28.488392>,  <37.261932, 32.379551, 28.723213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984303, 32.436897, 28.488392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.784615, 32.192741, 28.242397>,  <37.664803, 32.046249, 28.094801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.784615, 32.192741, 28.242397>,  <37.984303, 32.436897, 28.488392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784615, 32.192741, 28.242397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427051, 0.444239, -0.787578,
		0.753929, -0.655804, 0.038894,
		-0.499219, -0.610387, -0.614986,
		37.634850, 32.009624, 28.057901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379658, 32.431061, 27.828922>,  <37.984303, 32.436897, 28.488392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379658, 32.431061, 27.828922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029594, 32.259846, 27.738701>,  <37.819557, 32.157116, 27.684568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029594, 32.259846, 27.738701>,  <38.379658, 32.431061, 27.828922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029594, 32.259846, 27.738701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057618, 0.370658, -0.926980,
		0.480389, -0.824253, -0.299722,
		-0.875161, -0.428042, -0.225552,
		37.767048, 32.131432, 27.671036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479767, 32.077839, 27.146694>,  <38.379658, 32.431061, 27.828922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479767, 32.077839, 27.146694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.094017, 32.161522, 27.211449>,  <37.862568, 32.211731, 27.250301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.094017, 32.161522, 27.211449>,  <38.479767, 32.077839, 27.146694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094017, 32.161522, 27.211449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077594, 0.361330, -0.929204,
		-0.252892, -0.908665, -0.332226,
		-0.964378, 0.209209, 0.161884,
		37.804703, 32.224285, 27.260014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165379, 31.886271, 26.520664>,  <38.479767, 32.077839, 27.146694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165379, 31.886271, 26.520664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.880138, 32.121498, 26.673330>,  <37.708996, 32.262634, 26.764929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.880138, 32.121498, 26.673330>,  <38.165379, 31.886271, 26.520664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880138, 32.121498, 26.673330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096298, 0.457083, -0.884195,
		-0.694418, -0.667272, -0.269316,
		-0.713099, 0.588067, 0.381664,
		37.666210, 32.297916, 26.787830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608868, 31.844667, 26.081425>,  <38.165379, 31.886271, 26.520664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608868, 31.844667, 26.081425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.584232, 32.181999, 26.294968>,  <37.569450, 32.384399, 26.423094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.584232, 32.181999, 26.294968>,  <37.608868, 31.844667, 26.081425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584232, 32.181999, 26.294968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019997, 0.535809, -0.844103,
		-0.997902, -0.041308, -0.049861,
		-0.061584, 0.843328, 0.533858,
		37.565758, 32.434998, 26.455126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127335, 32.301510, 25.649212>,  <37.608868, 31.844667, 26.081425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127335, 32.301510, 25.649212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.295013, 32.559185, 25.905119>,  <37.395618, 32.713791, 26.058662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.295013, 32.559185, 25.905119>,  <37.127335, 32.301510, 25.649212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295013, 32.559185, 25.905119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112315, 0.662461, -0.740628,
		-0.900923, 0.382322, 0.205348,
		0.419194, 0.644185, 0.639767,
		37.420773, 32.752441, 26.097050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805550, 32.862022, 25.536034>,  <37.127335, 32.301510, 25.649212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805550, 32.862022, 25.536034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.146980, 32.981071, 25.707064>,  <37.351841, 33.052502, 25.809683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.146980, 32.981071, 25.707064>,  <36.805550, 32.862022, 25.536034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146980, 32.981071, 25.707064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075599, 0.741290, -0.666914,
		-0.515449, 0.601588, 0.610250,
		0.853579, 0.297626, 0.427576,
		37.403053, 33.070358, 25.835337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852802, 33.645290, 25.343445>,  <36.805550, 32.862022, 25.536034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852802, 33.645290, 25.343445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.229717, 33.541187, 25.427694>,  <37.455864, 33.478725, 25.478245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.229717, 33.541187, 25.427694>,  <36.852802, 33.645290, 25.343445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229717, 33.541187, 25.427694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333463, 0.785922, -0.520701,
		-0.030015, 0.560884, 0.827350,
		0.942285, -0.260262, 0.210624,
		37.512402, 33.463108, 25.490881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156952, 34.239532, 25.583973>,  <36.852802, 33.645290, 25.343445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156952, 34.239532, 25.583973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.485054, 34.030045, 25.491976>,  <37.681915, 33.904350, 25.436777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.485054, 34.030045, 25.491976>,  <37.156952, 34.239532, 25.583973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485054, 34.030045, 25.491976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360293, 0.785360, -0.503387,
		0.444259, 0.330043, 0.832890,
		0.820258, -0.523719, -0.229991,
		37.731133, 33.872929, 25.422977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796906, 34.746246, 25.772903>,  <37.156952, 34.239532, 25.583973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796906, 34.746246, 25.772903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.905766, 34.452545, 25.524126>,  <37.971081, 34.276325, 25.374861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.905766, 34.452545, 25.524126>,  <37.796906, 34.746246, 25.772903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905766, 34.452545, 25.524126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510689, 0.658014, -0.553366,
		0.815555, -0.167019, 0.554053,
		0.272152, -0.734249, -0.621942,
		37.987411, 34.232269, 25.337543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514591, 34.790451, 25.624166>,  <37.796906, 34.746246, 25.772903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514591, 34.790451, 25.624166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.378407, 34.608227, 25.295156>,  <38.296696, 34.498894, 25.097750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.378407, 34.608227, 25.295156>,  <38.514591, 34.790451, 25.624166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378407, 34.608227, 25.295156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472190, 0.673639, -0.568549,
		0.813093, -0.581959, -0.014240,
		-0.340465, -0.455560, -0.822526,
		38.276268, 34.471558, 25.048399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059887, 34.874863, 25.149908>,  <38.514591, 34.790451, 25.624166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059887, 34.874863, 25.149908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.732552, 34.802418, 24.931726>,  <38.536152, 34.758953, 24.800817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.732552, 34.802418, 24.931726>,  <39.059887, 34.874863, 25.149908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732552, 34.802418, 24.931726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287563, 0.692694, -0.661425,
		0.497623, -0.698122, -0.514778,
		-0.818339, -0.181109, -0.545455,
		38.487049, 34.748085, 24.768089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568993, 34.309898, 24.947998>,  <39.059887, 34.874863, 25.149908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568993, 34.309898, 24.947998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.962105, 34.261513, 25.003868>,  <40.197971, 34.232483, 25.037390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.962105, 34.261513, 25.003868>,  <39.568993, 34.309898, 24.947998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962105, 34.261513, 25.003868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177706, -0.825840, 0.535172,
		0.050615, -0.550778, -0.833115,
		0.982781, -0.120962, 0.139677,
		40.256939, 34.225224, 25.045771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814323, 33.548611, 24.768959>,  <39.568993, 34.309898, 24.947998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814323, 33.548611, 24.768959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.105560, 33.694481, 25.001129>,  <40.280304, 33.782001, 25.140432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.105560, 33.694481, 25.001129>,  <39.814323, 33.548611, 24.768959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105560, 33.694481, 25.001129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110735, -0.898198, 0.425415,
		0.676475, -0.245468, -0.694354,
		0.728093, 0.364672, 0.580426,
		40.323990, 33.803883, 25.175257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323837, 32.994671, 24.808054>,  <39.814323, 33.548611, 24.768959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323837, 32.994671, 24.808054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400009, 33.239033, 25.115438>,  <40.445713, 33.385651, 25.299870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400009, 33.239033, 25.115438>,  <40.323837, 32.994671, 24.808054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400009, 33.239033, 25.115438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002071, -0.782535, 0.622603,
		0.981699, -0.120152, -0.147751,
		0.190428, 0.610903, 0.768463,
		40.457138, 33.422302, 25.345978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915520, 32.612431, 25.217165>,  <40.323837, 32.994671, 24.808054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915520, 32.612431, 25.217165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.740601, 32.879654, 25.457987>,  <40.635651, 33.039989, 25.602480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.740601, 32.879654, 25.457987>,  <40.915520, 32.612431, 25.217165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740601, 32.879654, 25.457987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117398, -0.621320, 0.774712,
		0.891623, 0.409457, 0.193271,
		-0.437294, 0.668062, 0.602053,
		40.609413, 33.080070, 25.638603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204712, 32.456169, 25.772829>,  <40.915520, 32.612431, 25.217165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204712, 32.456169, 25.772829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.883556, 32.656513, 25.902143>,  <40.690865, 32.776718, 25.979733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.883556, 32.656513, 25.902143>,  <41.204712, 32.456169, 25.772829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883556, 32.656513, 25.902143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064027, -0.611621, 0.788556,
		0.592680, 0.612424, 0.523132,
		-0.802889, 0.500857, 0.323284,
		40.642689, 32.806770, 25.999128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406986, 32.797997, 26.350283>,  <41.204712, 32.456169, 25.772829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406986, 32.797997, 26.350283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.012993, 32.729439, 26.358606>,  <40.776596, 32.688305, 26.363600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.012993, 32.729439, 26.358606>,  <41.406986, 32.797997, 26.350283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012993, 32.729439, 26.358606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093789, -0.429969, 0.897959,
		-0.144962, 0.886425, 0.439587,
		-0.984982, -0.171399, 0.020808,
		40.717499, 32.678020, 26.364849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297813, 32.907326, 27.077433>,  <41.406986, 32.797997, 26.350283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297813, 32.907326, 27.077433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.000034, 32.685329, 26.928957>,  <40.821365, 32.552132, 26.839872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.000034, 32.685329, 26.928957>,  <41.297813, 32.907326, 27.077433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000034, 32.685329, 26.928957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069355, -0.617204, 0.783741,
		-0.664071, 0.557709, 0.497967,
		-0.744446, -0.554995, -0.371187,
		40.776699, 32.518829, 26.817600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909176, 32.662376, 27.673433>,  <41.297813, 32.907326, 27.077433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909176, 32.662376, 27.673433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.779663, 32.433708, 27.371874>,  <40.701958, 32.296509, 27.190939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.779663, 32.433708, 27.371874>,  <40.909176, 32.662376, 27.673433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779663, 32.433708, 27.371874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126773, -0.763422, 0.633337,
		-0.937601, 0.300635, 0.174708,
		-0.323779, -0.571669, -0.753897,
		40.682529, 32.262207, 27.145704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184250, 32.501797, 27.782906>,  <40.909176, 32.662376, 27.673433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184250, 32.501797, 27.782906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.356033, 32.206985, 27.574154>,  <40.459103, 32.030098, 27.448902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.356033, 32.206985, 27.574154>,  <40.184250, 32.501797, 27.782906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356033, 32.206985, 27.574154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376163, -0.671357, 0.638577,
		-0.821015, -0.077930, -0.565562,
		0.429459, -0.737025, -0.521880,
		40.484871, 31.985878, 27.417589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626575, 31.970774, 27.831682>,  <40.184250, 32.501797, 27.782906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626575, 31.970774, 27.831682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947201, 31.792706, 27.672020>,  <40.139576, 31.685865, 27.576223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947201, 31.792706, 27.672020>,  <39.626575, 31.970774, 27.831682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947201, 31.792706, 27.672020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113462, -0.768701, 0.629465,
		-0.587048, -0.459266, -0.666670,
		0.801561, -0.445168, -0.399155,
		40.187668, 31.659155, 27.552273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376289, 31.244211, 27.671068>,  <39.626575, 31.970774, 27.831682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376289, 31.244211, 27.671068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.774811, 31.254620, 27.703817>,  <40.013924, 31.260864, 27.723467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.774811, 31.254620, 27.703817>,  <39.376289, 31.244211, 27.671068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774811, 31.254620, 27.703817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027778, -0.804253, 0.593638,
		0.081292, -0.593718, -0.800557,
		0.996303, 0.026020, 0.081871,
		40.073700, 31.262426, 27.728378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499203, 30.508764, 27.589712>,  <39.376289, 31.244211, 27.671068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499203, 30.508764, 27.589712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.809853, 30.694344, 27.760172>,  <39.996243, 30.805691, 27.862448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.809853, 30.694344, 27.760172>,  <39.499203, 30.508764, 27.589712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809853, 30.694344, 27.760172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148339, -0.792127, 0.592056,
		0.612247, -0.396592, -0.684009,
		0.776626, 0.463950, 0.426148,
		40.042839, 30.833529, 27.888016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918438, 29.913134, 27.753319>,  <39.499203, 30.508764, 27.589712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918438, 29.913134, 27.753319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050220, 30.214785, 27.980562>,  <40.129288, 30.395775, 28.116909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050220, 30.214785, 27.980562>,  <39.918438, 29.913134, 27.753319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050220, 30.214785, 27.980562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129616, -0.632130, 0.763945,
		0.935232, -0.178049, -0.306005,
		0.329455, 0.754129, 0.568110,
		40.149055, 30.441023, 28.150995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581444, 29.670160, 28.024733>,  <39.918438, 29.913134, 27.753319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581444, 29.670160, 28.024733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.445042, 29.963381, 28.260139>,  <40.363201, 30.139313, 28.401382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.445042, 29.963381, 28.260139>,  <40.581444, 29.670160, 28.024733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445042, 29.963381, 28.260139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191562, -0.558716, 0.806932,
		0.920335, 0.387908, 0.050102,
		-0.341008, 0.733051, 0.588515,
		40.342739, 30.183296, 28.436693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.056824, 37.226082, 27.447807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.677895, 37.202305, 27.321918>,  <41.450539, 37.188038, 27.246386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.677895, 37.202305, 27.321918>,  <42.056824, 37.226082, 27.447807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677895, 37.202305, 27.321918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270438, 0.378025, -0.885415,
		0.171603, -0.923885, -0.342036,
		-0.947320, -0.059440, -0.314724,
		41.393700, 37.184471, 27.227501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072651, 36.951893, 26.698887>,  <42.056824, 37.226082, 27.447807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072651, 36.951893, 26.698887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.718651, 37.131145, 26.749413>,  <41.506252, 37.238697, 26.779728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.718651, 37.131145, 26.749413>,  <42.072651, 36.951893, 26.698887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718651, 37.131145, 26.749413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011977, 0.293125, -0.955999,
		-0.465436, -0.844547, -0.264783,
		-0.885001, 0.448128, 0.126316,
		41.453152, 37.265583, 26.787308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588821, 36.783531, 26.082134>,  <42.072651, 36.951893, 26.698887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588821, 36.783531, 26.082134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.469620, 37.133659, 26.234451>,  <41.398098, 37.343739, 26.325842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.469620, 37.133659, 26.234451>,  <41.588821, 36.783531, 26.082134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469620, 37.133659, 26.234451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081876, 0.374008, -0.923805,
		-0.951048, -0.306472, -0.039787,
		-0.298001, 0.875325, 0.380792,
		41.380219, 37.396255, 26.348688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057400, 37.131248, 25.709557>,  <41.588821, 36.783531, 26.082134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057400, 37.131248, 25.709557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.217571, 37.438198, 25.909874>,  <41.313675, 37.622368, 26.030066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.217571, 37.438198, 25.909874>,  <41.057400, 37.131248, 25.709557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217571, 37.438198, 25.909874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016147, 0.540529, -0.841170,
		-0.916185, 0.344916, 0.204053,
		0.400430, 0.767373, 0.500794,
		41.337700, 37.668411, 26.060112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677715, 37.692322, 25.355036>,  <41.057400, 37.131248, 25.709557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677715, 37.692322, 25.355036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.981266, 37.863876, 25.551064>,  <41.163395, 37.966808, 25.668680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.981266, 37.863876, 25.551064>,  <40.677715, 37.692322, 25.355036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981266, 37.863876, 25.551064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035519, 0.724142, -0.688736,
		-0.650270, 0.540070, 0.534298,
		0.758873, 0.428886, 0.490070,
		41.208927, 37.992542, 25.698084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434853, 38.356602, 25.429617>,  <40.677715, 37.692322, 25.355036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434853, 38.356602, 25.429617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.832542, 38.383694, 25.462894>,  <41.071156, 38.399948, 25.482861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.832542, 38.383694, 25.462894>,  <40.434853, 38.356602, 25.429617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832542, 38.383694, 25.462894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005400, 0.742917, -0.669362,
		-0.107142, 0.665948, 0.738264,
		0.994229, 0.067730, 0.083194,
		41.130810, 38.404015, 25.487852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480053, 39.048859, 25.417803>,  <40.434853, 38.356602, 25.429617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480053, 39.048859, 25.417803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.835621, 38.894257, 25.319473>,  <41.048962, 38.801495, 25.260475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.835621, 38.894257, 25.319473>,  <40.480053, 39.048859, 25.417803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835621, 38.894257, 25.319473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180333, 0.788620, -0.587842,
		0.421068, 0.478215, 0.770721,
		0.888921, -0.386508, -0.245825,
		41.102299, 38.778305, 25.245726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003410, 39.487827, 25.592968>,  <40.480053, 39.048859, 25.417803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003410, 39.487827, 25.592968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.158733, 39.270069, 25.295551>,  <41.251926, 39.139416, 25.117102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.158733, 39.270069, 25.295551>,  <41.003410, 39.487827, 25.592968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158733, 39.270069, 25.295551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252549, 0.838831, -0.482268,
		0.886250, -0.000514, 0.463208,
		0.388305, -0.544392, -0.743543,
		41.275227, 39.106750, 25.072489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657173, 39.817940, 25.391676>,  <41.003410, 39.487827, 25.592968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657173, 39.817940, 25.391676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.584156, 39.576900, 25.080921>,  <41.540344, 39.432278, 24.894468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.584156, 39.576900, 25.080921>,  <41.657173, 39.817940, 25.391676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584156, 39.576900, 25.080921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432293, 0.660498, -0.613894,
		0.883063, -0.447907, 0.139926,
		-0.182547, -0.602596, -0.776888,
		41.529392, 39.396122, 24.847855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268421, 39.849831, 25.016193>,  <41.657173, 39.817940, 25.391676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268421, 39.849831, 25.016193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.981827, 39.739872, 24.759729>,  <41.809872, 39.673897, 24.605852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.981827, 39.739872, 24.759729>,  <42.268421, 39.849831, 25.016193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981827, 39.739872, 24.759729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384585, 0.611156, -0.691797,
		0.582015, -0.742242, -0.332167,
		-0.716487, -0.274889, -0.641157,
		41.766880, 39.657402, 24.567381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573936, 39.758682, 24.435846>,  <42.268421, 39.849831, 25.016193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573936, 39.758682, 24.435846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.196445, 39.788940, 24.307066>,  <41.969952, 39.807095, 24.229797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.196445, 39.788940, 24.307066>,  <42.573936, 39.758682, 24.435846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196445, 39.788940, 24.307066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304056, 0.581377, -0.754686,
		0.130089, -0.810111, -0.571662,
		-0.943730, 0.075641, -0.321950,
		41.913326, 39.811634, 24.210482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647049, 39.752476, 23.736479>,  <42.573936, 39.758682, 24.435846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647049, 39.752476, 23.736479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.290817, 39.917645, 23.812761>,  <42.077080, 40.016747, 23.858530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.290817, 39.917645, 23.812761>,  <42.647049, 39.752476, 23.736479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290817, 39.917645, 23.812761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151244, 0.664275, -0.732027,
		-0.428955, -0.623081, -0.654040,
		-0.890574, 0.412926, 0.190707,
		42.023643, 40.041523, 23.869974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242073, 39.737049, 23.083590>,  <42.647049, 39.752476, 23.736479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242073, 39.737049, 23.083590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.142818, 40.038258, 23.327354>,  <42.083267, 40.218983, 23.473614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.142818, 40.038258, 23.327354>,  <42.242073, 39.737049, 23.083590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142818, 40.038258, 23.327354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179747, 0.653950, -0.734874,
		-0.951904, -0.072807, -0.297621,
		-0.248133, 0.753026, 0.609411,
		42.068378, 40.264164, 23.510178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752762, 40.057095, 22.731026>,  <42.242073, 39.737049, 23.083590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752762, 40.057095, 22.731026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.907627, 40.317074, 22.992611>,  <42.000546, 40.473061, 23.149563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.907627, 40.317074, 22.992611>,  <41.752762, 40.057095, 22.731026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907627, 40.317074, 22.992611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053632, 0.692204, -0.719706,
		-0.920450, 0.313718, 0.233138,
		0.387164, 0.649949, 0.653965,
		42.023777, 40.512058, 23.188801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579212, 39.362991, 22.572935>,  <41.752762, 40.057095, 22.731026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579212, 39.362991, 22.572935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.305885, 39.184986, 22.341406>,  <41.141888, 39.078182, 22.202488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.305885, 39.184986, 22.341406>,  <41.579212, 39.362991, 22.572935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305885, 39.184986, 22.341406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053108, -0.820976, 0.568488,
		-0.728183, 0.357720, 0.584624,
		-0.683322, -0.445012, -0.578823,
		41.100887, 39.051483, 22.167759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111351, 39.090111, 23.019556>,  <41.579212, 39.362991, 22.572935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111351, 39.090111, 23.019556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.079929, 38.881668, 22.679607>,  <41.061077, 38.756603, 22.475639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.079929, 38.881668, 22.679607>,  <41.111351, 39.090111, 23.019556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079929, 38.881668, 22.679607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054071, -0.849023, 0.525582,
		-0.995442, 0.087241, 0.038518,
		-0.078555, -0.521104, -0.849871,
		41.056362, 38.725338, 22.424646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647804, 38.583336, 23.203569>,  <41.111351, 39.090111, 23.019556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647804, 38.583336, 23.203569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.782627, 38.432610, 22.858454>,  <40.863522, 38.342175, 22.651384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.782627, 38.432610, 22.858454>,  <40.647804, 38.583336, 23.203569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782627, 38.432610, 22.858454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257275, -0.918397, 0.300594,
		-0.905648, 0.120655, -0.406501,
		0.337062, -0.376815, -0.862786,
		40.883743, 38.319565, 22.599617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127560, 38.110577, 22.935411>,  <40.647804, 38.583336, 23.203569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127560, 38.110577, 22.935411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.503632, 38.034954, 22.822050>,  <40.729275, 37.989582, 22.754034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.503632, 38.034954, 22.822050>,  <40.127560, 38.110577, 22.935411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503632, 38.034954, 22.822050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104063, -0.951499, 0.289518,
		-0.324391, -0.242708, -0.914255,
		0.940181, -0.189057, -0.283401,
		40.785686, 37.978237, 22.737030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148777, 37.437912, 22.522795>,  <40.127560, 38.110577, 22.935411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148777, 37.437912, 22.522795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.535061, 37.486366, 22.614641>,  <40.766830, 37.515438, 22.669748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.535061, 37.486366, 22.614641>,  <40.148777, 37.437912, 22.522795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535061, 37.486366, 22.614641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100815, -0.990036, 0.098313,
		0.239237, -0.071793, -0.968303,
		0.965713, 0.121140, 0.229616,
		40.824776, 37.522709, 22.683525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585899, 36.864281, 22.153917>,  <40.148777, 37.437912, 22.522795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585899, 36.864281, 22.153917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.822002, 36.992981, 22.450045>,  <40.963665, 37.070202, 22.627722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.822002, 36.992981, 22.450045>,  <40.585899, 36.864281, 22.153917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822002, 36.992981, 22.450045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052508, -0.899882, 0.432962,
		0.805503, -0.294433, -0.514270,
		0.590260, 0.321749, 0.740318,
		40.999081, 37.089504, 22.672140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050419, 36.319817, 22.262419>,  <40.585899, 36.864281, 22.153917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050419, 36.319817, 22.262419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.029381, 36.524773, 22.605276>,  <41.016758, 36.647747, 22.810991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.029381, 36.524773, 22.605276>,  <41.050419, 36.319817, 22.262419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029381, 36.524773, 22.605276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098353, -0.856816, 0.506155,
		0.993761, -0.057680, 0.095462,
		-0.052598, 0.512386, 0.857143,
		41.013603, 36.678490, 22.862419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699303, 36.001316, 22.573143>,  <41.050419, 36.319817, 22.262419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699303, 36.001316, 22.573143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.434887, 36.164825, 22.824835>,  <41.276237, 36.262932, 22.975849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.434887, 36.164825, 22.824835>,  <41.699303, 36.001316, 22.573143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434887, 36.164825, 22.824835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079984, -0.795416, 0.600763,
		0.746076, 0.447456, 0.493106,
		-0.661040, 0.408774, 0.629230,
		41.236576, 36.287457, 23.013603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938885, 35.743057, 23.160604>,  <41.699303, 36.001316, 22.573143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938885, 35.743057, 23.160604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.568680, 35.858181, 23.259069>,  <41.346558, 35.927254, 23.318148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.568680, 35.858181, 23.259069>,  <41.938885, 35.743057, 23.160604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568680, 35.858181, 23.259069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099289, -0.811647, 0.575648,
		0.365472, 0.508327, 0.779765,
		-0.925512, 0.287806, 0.246163,
		41.291027, 35.944523, 23.332918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932976, 35.629375, 23.908833>,  <41.938885, 35.743057, 23.160604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932976, 35.629375, 23.908833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.547611, 35.683979, 23.816566>,  <41.316395, 35.716743, 23.761206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.547611, 35.683979, 23.816566>,  <41.932976, 35.629375, 23.908833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547611, 35.683979, 23.816566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266760, -0.572178, 0.775533,
		-0.026114, 0.808689, 0.587657,
		-0.963409, 0.136511, -0.230667,
		41.258587, 35.724934, 23.747366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544289, 35.873470, 24.553036>,  <41.932976, 35.629375, 23.908833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544289, 35.873470, 24.553036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.286266, 35.680767, 24.315779>,  <41.131454, 35.565144, 24.173426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.286266, 35.680767, 24.315779>,  <41.544289, 35.873470, 24.553036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286266, 35.680767, 24.315779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299518, -0.554703, 0.776269,
		-0.702992, 0.678390, 0.213517,
		-0.645052, -0.481759, -0.593141,
		41.092751, 35.536240, 24.137836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941475, 35.799580, 24.927608>,  <41.544289, 35.873470, 24.553036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941475, 35.799580, 24.927608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.871353, 35.519253, 24.651024>,  <40.829281, 35.351055, 24.485073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.871353, 35.519253, 24.651024>,  <40.941475, 35.799580, 24.927608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871353, 35.519253, 24.651024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382846, -0.598534, 0.703694,
		-0.907026, 0.388087, -0.163377,
		-0.175308, -0.700818, -0.691464,
		40.818760, 35.309006, 24.443584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394951, 35.472969, 25.154842>,  <40.941475, 35.799580, 24.927608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394951, 35.472969, 25.154842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.534683, 35.205044, 24.892752>,  <40.618523, 35.044289, 24.735497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.534683, 35.205044, 24.892752>,  <40.394951, 35.472969, 25.154842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534683, 35.205044, 24.892752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307446, -0.742505, 0.595116,
		-0.885125, -0.006443, -0.465308,
		0.349328, -0.669809, -0.655229,
		40.639481, 35.004101, 24.696182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855946, 35.054493, 25.190639>,  <40.394951, 35.472969, 25.154842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855946, 35.054493, 25.190639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145531, 34.839386, 25.017813>,  <40.319283, 34.710320, 24.914116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145531, 34.839386, 25.017813>,  <39.855946, 35.054493, 25.190639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145531, 34.839386, 25.017813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182794, -0.753488, 0.631540,
		-0.665180, -0.378232, -0.643798,
		0.723963, -0.537770, -0.432067,
		40.362720, 34.678055, 24.888193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360073, 35.102875, 24.542294>,  <39.855946, 35.054493, 25.190639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360073, 35.102875, 24.542294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.962883, 35.063850, 24.515488>,  <38.724571, 35.040436, 24.499403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.962883, 35.063850, 24.515488>,  <39.360073, 35.102875, 24.542294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962883, 35.063850, 24.515488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005707, 0.526090, -0.850410,
		0.118220, -0.844814, -0.521836,
		-0.992971, -0.097557, -0.067015,
		38.664993, 35.034584, 24.495382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253872, 34.880890, 23.847200>,  <39.360073, 35.102875, 24.542294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253872, 34.880890, 23.847200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.907955, 35.037975, 23.972364>,  <38.700405, 35.132229, 24.047462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.907955, 35.037975, 23.972364>,  <39.253872, 34.880890, 23.847200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907955, 35.037975, 23.972364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005488, 0.615731, -0.787938,
		-0.502107, -0.683117, -0.530321,
		-0.864788, 0.392718, 0.312911,
		38.648518, 35.155792, 24.066238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864761, 35.023666, 23.219118>,  <39.253872, 34.880890, 23.847200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864761, 35.023666, 23.219118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.663666, 35.240871, 23.488157>,  <38.543007, 35.371193, 23.649580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.663666, 35.240871, 23.488157>,  <38.864761, 35.023666, 23.219118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663666, 35.240871, 23.488157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178220, 0.696252, -0.695321,
		-0.845865, -0.469438, -0.253260,
		-0.502743, 0.543011, 0.672598,
		38.512844, 35.403774, 23.689938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335720, 35.353954, 22.807501>,  <38.864761, 35.023666, 23.219118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335720, 35.353954, 22.807501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.374668, 35.571785, 23.140717>,  <38.398037, 35.702484, 23.340647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.374668, 35.571785, 23.140717>,  <38.335720, 35.353954, 22.807501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374668, 35.571785, 23.140717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039400, 0.834251, -0.549976,
		-0.994468, 0.086375, 0.059776,
		0.097372, 0.544578, 0.833039,
		38.403881, 35.735157, 23.390629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720951, 35.800877, 22.820084>,  <38.335720, 35.353954, 22.807501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720951, 35.800877, 22.820084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998241, 35.969063, 23.054228>,  <38.164616, 36.069973, 23.194714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998241, 35.969063, 23.054228>,  <37.720951, 35.800877, 22.820084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998241, 35.969063, 23.054228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134110, 0.873258, -0.468439,
		-0.708133, 0.246231, 0.661754,
		0.693226, 0.420465, 0.585361,
		38.206211, 36.095203, 23.229836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378460, 36.497337, 22.959297>,  <37.720951, 35.800877, 22.820084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378460, 36.497337, 22.959297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.759106, 36.533829, 23.076677>,  <37.987492, 36.555725, 23.147106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.759106, 36.533829, 23.076677>,  <37.378460, 36.497337, 22.959297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759106, 36.533829, 23.076677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016377, 0.938507, -0.344873,
		-0.306870, 0.332991, 0.891599,
		0.951611, 0.091229, 0.293453,
		38.044590, 36.561199, 23.164713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400772, 37.033550, 23.346661>,  <37.378460, 36.497337, 22.959297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400772, 37.033550, 23.346661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.761044, 36.981640, 23.180803>,  <37.977207, 36.950493, 23.081289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.761044, 36.981640, 23.180803>,  <37.400772, 37.033550, 23.346661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761044, 36.981640, 23.180803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138172, 0.819241, -0.556554,
		0.411922, 0.558570, 0.719944,
		0.900683, -0.129780, -0.414642,
		38.031250, 36.942707, 23.056410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817753, 37.524712, 23.554594>,  <37.400772, 37.033550, 23.346661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817753, 37.524712, 23.554594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.459129, 37.678951, 23.467419>,  <36.243954, 37.771496, 23.415113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.459129, 37.678951, 23.467419>,  <36.817753, 37.524712, 23.554594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459129, 37.678951, 23.467419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440216, -0.721370, 0.534636,
		0.048941, 0.575272, 0.816497,
		-0.896557, 0.385600, -0.217939,
		36.190163, 37.794632, 23.402037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487003, 37.500320, 24.205475>,  <36.817753, 37.524712, 23.554594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487003, 37.500320, 24.205475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202995, 37.512356, 23.924057>,  <36.032593, 37.519577, 23.755207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202995, 37.512356, 23.924057>,  <36.487003, 37.500320, 24.205475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202995, 37.512356, 23.924057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448538, -0.789519, 0.418896,
		-0.542854, 0.612988, 0.574068,
		-0.710016, 0.030092, -0.703542,
		35.989990, 37.521381, 23.712994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856621, 37.492062, 24.546181>,  <36.487003, 37.500320, 24.205475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856621, 37.492062, 24.546181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.785572, 37.363663, 24.174072>,  <35.742943, 37.286621, 23.950808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.785572, 37.363663, 24.174072>,  <35.856621, 37.492062, 24.546181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785572, 37.363663, 24.174072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500132, -0.784680, 0.366258,
		-0.847535, 0.530317, -0.021163,
		-0.177627, -0.321001, -0.930273,
		35.732285, 37.267361, 23.894991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162724, 37.232590, 24.487259>,  <35.856621, 37.492062, 24.546181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162724, 37.232590, 24.487259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.332363, 37.056499, 24.170692>,  <35.434147, 36.950848, 23.980753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.332363, 37.056499, 24.170692>,  <35.162724, 37.232590, 24.487259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332363, 37.056499, 24.170692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350642, -0.885559, 0.304689,
		-0.834978, 0.148286, -0.529927,
		0.424100, -0.440223, -0.791418,
		35.459595, 36.924431, 23.933268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654648, 36.703697, 24.314037>,  <35.162724, 37.232590, 24.487259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654648, 36.703697, 24.314037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.003685, 36.578281, 24.164225>,  <35.213108, 36.503033, 24.074337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.003685, 36.578281, 24.164225>,  <34.654648, 36.703697, 24.314037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003685, 36.578281, 24.164225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153002, -0.903648, 0.400013,
		-0.463865, -0.291744, -0.836489,
		0.872593, -0.313536, -0.374534,
		35.265465, 36.484222, 24.051865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494358, 36.122467, 24.094210>,  <34.654648, 36.703697, 24.314037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494358, 36.122467, 24.094210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.890526, 36.132252, 24.148581>,  <35.128227, 36.138123, 24.181202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.890526, 36.132252, 24.148581>,  <34.494358, 36.122467, 24.094210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890526, 36.132252, 24.148581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071383, -0.751849, 0.655460,
		0.118232, -0.658882, -0.742897,
		0.990417, 0.024466, 0.135925,
		35.187653, 36.139591, 24.189358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612625, 35.468681, 24.223190>,  <34.494358, 36.122467, 24.094210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612625, 35.468681, 24.223190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936600, 35.645939, 24.376879>,  <35.130985, 35.752293, 24.469091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936600, 35.645939, 24.376879>,  <34.612625, 35.468681, 24.223190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936600, 35.645939, 24.376879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026380, -0.681950, 0.730923,
		0.585925, -0.581865, -0.564025,
		0.809936, 0.443145, 0.384222,
		35.179581, 35.778881, 24.492146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.595428, 40.773205, 24.480240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.950352, 40.591957, 24.445910>,  <39.163307, 40.483208, 24.425310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.950352, 40.591957, 24.445910>,  <38.595428, 40.773205, 24.480240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950352, 40.591957, 24.445910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278338, -0.674560, 0.683737,
		-0.367708, -0.582798, -0.724664,
		0.887309, -0.453117, -0.085827,
		39.216545, 40.456020, 24.420160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487450, 40.102936, 24.542080>,  <38.595428, 40.773205, 24.480240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487450, 40.102936, 24.542080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.882809, 40.098373, 24.602674>,  <39.120022, 40.095638, 24.639032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.882809, 40.098373, 24.602674>,  <38.487450, 40.102936, 24.542080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882809, 40.098373, 24.602674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100982, -0.794295, 0.599081,
		0.113496, -0.607425, -0.786227,
		0.988393, -0.011402, 0.151488,
		39.179325, 40.094952, 24.648121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696739, 39.427765, 24.355005>,  <38.487450, 40.102936, 24.542080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696739, 39.427765, 24.355005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.953365, 39.579769, 24.621534>,  <39.107342, 39.670971, 24.781452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.953365, 39.579769, 24.621534>,  <38.696739, 39.427765, 24.355005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953365, 39.579769, 24.621534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309741, -0.666349, 0.678262,
		0.701752, -0.641536, -0.309799,
		0.641564, 0.380015, 0.666322,
		39.145836, 39.693775, 24.821430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855022, 38.824959, 24.684669>,  <38.696739, 39.427765, 24.355005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855022, 38.824959, 24.684669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.990704, 39.119190, 24.919231>,  <39.072113, 39.295731, 25.059969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.990704, 39.119190, 24.919231>,  <38.855022, 38.824959, 24.684669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990704, 39.119190, 24.919231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360531, -0.474111, 0.803266,
		0.868885, -0.483884, 0.104380,
		0.339200, 0.735578, 0.586403,
		39.092464, 39.339863, 25.095152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288742, 38.429985, 25.184658>,  <38.855022, 38.824959, 24.684669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288742, 38.429985, 25.184658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.182926, 38.788467, 25.327114>,  <39.119438, 39.003555, 25.412588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.182926, 38.788467, 25.327114>,  <39.288742, 38.429985, 25.184658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182926, 38.788467, 25.327114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155400, -0.404086, 0.901424,
		0.951773, 0.183115, 0.246166,
		-0.264537, 0.896205, 0.356142,
		39.103565, 39.057327, 25.433956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658154, 38.472225, 25.835543>,  <39.288742, 38.429985, 25.184658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658154, 38.472225, 25.835543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.393593, 38.770729, 25.865582>,  <39.234856, 38.949833, 25.883604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.393593, 38.770729, 25.865582>,  <39.658154, 38.472225, 25.835543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393593, 38.770729, 25.865582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107260, -0.193204, 0.975278,
		0.742323, 0.636996, 0.207830,
		-0.661402, 0.746263, 0.075095,
		39.195171, 38.994610, 25.888109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807404, 38.602669, 26.511776>,  <39.658154, 38.472225, 25.835543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807404, 38.602669, 26.511776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.478638, 38.804142, 26.405375>,  <39.281376, 38.925026, 26.341534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.478638, 38.804142, 26.405375>,  <39.807404, 38.602669, 26.511776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478638, 38.804142, 26.405375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340124, -0.059379, 0.938504,
		0.456911, 0.861847, 0.220118,
		-0.821918, 0.503680, -0.266004,
		39.232063, 38.955246, 26.325573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663986, 39.054825, 26.998077>,  <39.807404, 38.602669, 26.511776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663986, 39.054825, 26.998077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326263, 38.963810, 26.804016>,  <39.123631, 38.909203, 26.687580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326263, 38.963810, 26.804016>,  <39.663986, 39.054825, 26.998077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326263, 38.963810, 26.804016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455549, -0.171973, 0.873442,
		-0.282174, 0.958463, 0.041543,
		-0.844307, -0.227537, -0.485153,
		39.072971, 38.895550, 26.658470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178940, 39.298424, 27.449242>,  <39.663986, 39.054825, 26.998077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178940, 39.298424, 27.449242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.991146, 39.035686, 27.213226>,  <38.878471, 38.878044, 27.071617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.991146, 39.035686, 27.213226>,  <39.178940, 39.298424, 27.449242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991146, 39.035686, 27.213226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573213, -0.281549, 0.769517,
		-0.671576, 0.699492, -0.244328,
		-0.469481, -0.656842, -0.590040,
		38.850304, 38.838634, 27.036215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407719, 39.352268, 27.581347>,  <39.178940, 39.298424, 27.449242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407719, 39.352268, 27.581347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.491886, 38.991585, 27.430271>,  <38.542389, 38.775177, 27.339626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.491886, 38.991585, 27.430271>,  <38.407719, 39.352268, 27.581347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491886, 38.991585, 27.430271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349980, -0.430216, 0.832123,
		-0.912818, -0.042912, -0.406106,
		0.210422, -0.901705, -0.377690,
		38.555012, 38.721073, 27.316963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841900, 39.020180, 27.794510>,  <38.407719, 39.352268, 27.581347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841900, 39.020180, 27.794510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.121376, 38.746025, 27.712452>,  <38.289062, 38.581532, 27.663218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.121376, 38.746025, 27.712452>,  <37.841900, 39.020180, 27.794510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121376, 38.746025, 27.712452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234646, -0.490417, 0.839305,
		-0.675852, -0.538276, -0.503471,
		0.698688, -0.685383, -0.205145,
		38.330982, 38.540409, 27.650909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551346, 38.380413, 27.959124>,  <37.841900, 39.020180, 27.794510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551346, 38.380413, 27.959124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.937096, 38.274738, 27.964756>,  <38.168545, 38.211334, 27.968136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.937096, 38.274738, 27.964756>,  <37.551346, 38.380413, 27.959124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937096, 38.274738, 27.964756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164976, -0.558916, 0.812648,
		-0.206818, -0.786016, -0.582585,
		0.964370, -0.264183, 0.014080,
		38.226406, 38.195484, 27.968981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409546, 38.071007, 27.306850>,  <37.551346, 38.380413, 27.959124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409546, 38.071007, 27.306850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.044502, 38.023056, 27.150507>,  <36.825474, 37.994286, 27.056702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.044502, 38.023056, 27.150507>,  <37.409546, 38.071007, 27.306850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044502, 38.023056, 27.150507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160307, 0.774553, -0.611857,
		0.376086, -0.621045, -0.687650,
		-0.912612, -0.119876, -0.390857,
		36.770718, 37.987095, 27.033251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387436, 38.102982, 26.529522>,  <37.409546, 38.071007, 27.306850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387436, 38.102982, 26.529522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.998268, 38.160683, 26.601770>,  <36.764767, 38.195305, 26.645119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.998268, 38.160683, 26.601770>,  <37.387436, 38.102982, 26.529522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998268, 38.160683, 26.601770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059896, 0.597372, -0.799725,
		-0.223261, -0.788884, -0.572553,
		-0.972917, 0.144254, 0.180620,
		36.706394, 38.203960, 26.655956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153198, 38.145786, 25.942976>,  <37.387436, 38.102982, 26.529522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153198, 38.145786, 25.942976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.856140, 38.326584, 26.140635>,  <36.677906, 38.435062, 26.259230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.856140, 38.326584, 26.140635>,  <37.153198, 38.145786, 25.942976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856140, 38.326584, 26.140635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083239, 0.669857, -0.737809,
		-0.664491, -0.589064, -0.459844,
		-0.742646, 0.451990, 0.494147,
		36.633347, 38.462181, 26.288879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733620, 38.412994, 25.372854>,  <37.153198, 38.145786, 25.942976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733620, 38.412994, 25.372854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.624180, 38.612511, 25.701817>,  <36.558514, 38.732220, 25.899193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.624180, 38.612511, 25.701817>,  <36.733620, 38.412994, 25.372854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624180, 38.612511, 25.701817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161591, 0.819040, -0.550511,
		-0.948172, -0.283515, -0.143491,
		-0.273603, 0.498792, 0.822404,
		36.542099, 38.762150, 25.948538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977600, 38.626362, 25.308254>,  <36.733620, 38.412994, 25.372854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977600, 38.626362, 25.308254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.188782, 38.869579, 25.545420>,  <36.315491, 39.015511, 25.687719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.188782, 38.869579, 25.545420>,  <35.977600, 38.626362, 25.308254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188782, 38.869579, 25.545420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271518, 0.782349, -0.560543,
		-0.804700, 0.134954, 0.578139,
		0.527954, 0.608044, 0.592914,
		36.347168, 39.051994, 25.723293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545082, 39.198532, 25.435322>,  <35.977600, 38.626362, 25.308254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545082, 39.198532, 25.435322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.902508, 39.330948, 25.556618>,  <36.116962, 39.410397, 25.629395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.902508, 39.330948, 25.556618>,  <35.545082, 39.198532, 25.435322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902508, 39.330948, 25.556618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206858, 0.903095, -0.376337,
		-0.398435, 0.273555, 0.875453,
		0.893566, 0.331040, 0.303238,
		36.170578, 39.430260, 25.647589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406963, 39.967697, 25.570934>,  <35.545082, 39.198532, 25.435322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406963, 39.967697, 25.570934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.805847, 39.947453, 25.549017>,  <36.045177, 39.935307, 25.535868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.805847, 39.947453, 25.549017>,  <35.406963, 39.967697, 25.570934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805847, 39.947453, 25.549017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021460, 0.898165, -0.439134,
		0.071439, 0.436735, 0.896749,
		0.997214, -0.050616, -0.054792,
		36.105011, 39.932266, 25.532579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681278, 40.656479, 25.741156>,  <35.406963, 39.967697, 25.570934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681278, 40.656479, 25.741156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.973030, 40.476429, 25.535089>,  <36.148083, 40.368401, 25.411449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.973030, 40.476429, 25.535089>,  <35.681278, 40.656479, 25.741156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973030, 40.476429, 25.535089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083398, 0.805933, -0.586103,
		0.679006, 0.384529, 0.625371,
		0.729381, -0.450122, -0.515164,
		36.191845, 40.341393, 25.380541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237328, 41.157406, 25.783306>,  <35.681278, 40.656479, 25.741156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237328, 41.157406, 25.783306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.296124, 40.913727, 25.471598>,  <36.331402, 40.767517, 25.284573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.296124, 40.913727, 25.471598>,  <36.237328, 41.157406, 25.783306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296124, 40.913727, 25.471598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128080, 0.792921, -0.595711,
		0.980810, -0.012244, 0.194581,
		0.146994, -0.609201, -0.779273,
		36.340221, 40.730965, 25.237816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775494, 41.462250, 25.472200>,  <36.237328, 41.157406, 25.783306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775494, 41.462250, 25.472200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.632450, 41.222492, 25.185747>,  <36.546623, 41.078640, 25.013874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.632450, 41.222492, 25.185747>,  <36.775494, 41.462250, 25.472200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632450, 41.222492, 25.185747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140238, 0.723681, -0.675736,
		0.923283, -0.342076, -0.174735,
		-0.357605, -0.599391, -0.716134,
		36.525169, 41.042675, 24.970907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350697, 41.504997, 24.995697>,  <36.775494, 41.462250, 25.472200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350697, 41.504997, 24.995697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.015675, 41.391781, 24.808767>,  <36.814663, 41.323853, 24.696609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.015675, 41.391781, 24.808767>,  <37.350697, 41.504997, 24.995697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015675, 41.391781, 24.808767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147173, 0.706851, -0.691883,
		0.526159, -0.648267, -0.550370,
		-0.837554, -0.283041, -0.467324,
		36.764408, 41.306870, 24.668570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570957, 41.413837, 24.257494>,  <37.350697, 41.504997, 24.995697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570957, 41.413837, 24.257494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.176380, 41.478874, 24.266302>,  <36.939632, 41.517899, 24.271587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.176380, 41.478874, 24.266302>,  <37.570957, 41.413837, 24.257494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176380, 41.478874, 24.266302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089881, 0.647750, -0.756532,
		-0.137272, -0.744300, -0.653585,
		-0.986447, 0.162596, 0.022019,
		36.880447, 41.527653, 24.272907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333172, 41.481068, 23.547997>,  <37.570957, 41.413837, 24.257494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333172, 41.481068, 23.547997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.030056, 41.653900, 23.743572>,  <36.848186, 41.757599, 23.860918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.030056, 41.653900, 23.743572>,  <37.333172, 41.481068, 23.547997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030056, 41.653900, 23.743572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185312, 0.575959, -0.796198,
		-0.625634, -0.693955, -0.356384,
		-0.757788, 0.432086, 0.488937,
		36.802719, 41.783527, 23.890253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641602, 41.186913, 23.591982>,  <37.333172, 41.481068, 23.547997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641602, 41.186913, 23.591982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.733894, 41.109718, 23.210506>,  <36.789268, 41.063400, 22.981621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.733894, 41.109718, 23.210506>,  <36.641602, 41.186913, 23.591982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733894, 41.109718, 23.210506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233098, -0.962556, 0.138390,
		-0.944685, 0.190372, -0.267074,
		0.230728, -0.192989, -0.953687,
		36.803112, 41.051823, 22.924400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083675, 40.718895, 23.264639>,  <36.641602, 41.186913, 23.591982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083675, 40.718895, 23.264639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.381435, 40.648109, 23.007095>,  <36.560093, 40.605637, 22.852570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.381435, 40.648109, 23.007095>,  <36.083675, 40.718895, 23.264639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381435, 40.648109, 23.007095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258717, -0.965362, -0.033782,
		-0.615577, 0.191724, -0.764400,
		0.744400, -0.176968, -0.643857,
		36.604755, 40.595020, 22.813938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871204, 40.567478, 22.676723>,  <36.083675, 40.718895, 23.264639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871204, 40.567478, 22.676723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.224785, 40.380493, 22.680876>,  <36.436932, 40.268303, 22.683367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.224785, 40.380493, 22.680876>,  <35.871204, 40.567478, 22.676723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224785, 40.380493, 22.680876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461950, -0.876523, -0.135311,
		0.072353, 0.114812, -0.990749,
		0.883950, -0.467466, 0.010382,
		36.489971, 40.240253, 22.683990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839813, 39.961853, 22.251328>,  <35.871204, 40.567478, 22.676723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839813, 39.961853, 22.251328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.178223, 39.863495, 22.440550>,  <36.381268, 39.804482, 22.554083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.178223, 39.863495, 22.440550>,  <35.839813, 39.961853, 22.251328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178223, 39.863495, 22.440550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289024, -0.957126, 0.019382,
		0.448010, -0.153123, -0.880818,
		0.846021, -0.245894, 0.473058,
		36.432030, 39.789726, 22.582468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038296, 39.218792, 22.049620>,  <35.839813, 39.961853, 22.251328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038296, 39.218792, 22.049620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.266830, 39.254372, 22.375973>,  <36.403950, 39.275719, 22.571785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.266830, 39.254372, 22.375973>,  <36.038296, 39.218792, 22.049620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266830, 39.254372, 22.375973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078340, -0.983661, 0.162094,
		0.816971, -0.156526, -0.555030,
		0.571333, 0.088945, 0.815884,
		36.438229, 39.281055, 22.620737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450932, 38.645523, 22.019287>,  <36.038296, 39.218792, 22.049620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450932, 38.645523, 22.019287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.444435, 38.776085, 22.397324>,  <36.440536, 38.854424, 22.624146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.444435, 38.776085, 22.397324>,  <36.450932, 38.645523, 22.019287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444435, 38.776085, 22.397324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135946, -0.937157, 0.321333,
		0.990583, -0.123262, 0.059595,
		-0.016241, 0.326409, 0.945089,
		36.439564, 38.874008, 22.680851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825245, 38.207935, 22.358194>,  <36.450932, 38.645523, 22.019287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825245, 38.207935, 22.358194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.596497, 38.366203, 22.645641>,  <36.459248, 38.461163, 22.818110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.596497, 38.366203, 22.645641>,  <36.825245, 38.207935, 22.358194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596497, 38.366203, 22.645641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291290, -0.916852, 0.273008,
		0.766886, -0.053201, 0.639575,
		-0.571871, 0.395667, 0.718617,
		36.424934, 38.484905, 22.861227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013771, 37.954502, 22.959610>,  <36.825245, 38.207935, 22.358194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013771, 37.954502, 22.959610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.636841, 38.064255, 23.036287>,  <36.410683, 38.130104, 23.082293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.636841, 38.064255, 23.036287>,  <37.013771, 37.954502, 22.959610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636841, 38.064255, 23.036287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193743, -0.914153, 0.356074,
		0.272935, 0.298397, 0.914585,
		-0.942322, 0.274379, 0.191692,
		36.354145, 38.146568, 23.093796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720577, 37.800903, 23.292412>,  <37.013771, 37.954502, 22.959610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720577, 37.800903, 23.292412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.975468, 37.576649, 23.080891>,  <38.128403, 37.442097, 22.953978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.975468, 37.576649, 23.080891>,  <37.720577, 37.800903, 23.292412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975468, 37.576649, 23.080891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159787, 0.767348, -0.621003,
		0.753934, 0.311222, 0.578554,
		0.637222, -0.560640, -0.528801,
		38.166634, 37.408455, 22.922251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384270, 38.178642, 23.191599>,  <37.720577, 37.800903, 23.292412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384270, 38.178642, 23.191599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.363335, 37.897827, 22.907515>,  <38.350773, 37.729336, 22.737064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.363335, 37.897827, 22.907515>,  <38.384270, 38.178642, 23.191599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363335, 37.897827, 22.907515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120505, 0.701549, -0.702359,
		0.991332, -0.122346, 0.047879,
		-0.052341, -0.702040, -0.710211,
		38.347633, 37.687214, 22.694450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954491, 38.380100, 22.760653>,  <38.384270, 38.178642, 23.191599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954491, 38.380100, 22.760653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.704853, 38.143291, 22.556686>,  <38.555069, 38.001205, 22.434307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.704853, 38.143291, 22.556686>,  <38.954491, 38.380100, 22.760653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704853, 38.143291, 22.556686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222785, 0.490692, -0.842371,
		0.748913, -0.639323, -0.174346,
		-0.624097, -0.592020, -0.509917,
		38.517624, 37.965687, 22.403711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291245, 38.049385, 22.224937>,  <38.954491, 38.380100, 22.760653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291245, 38.049385, 22.224937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.910046, 38.039692, 22.104130>,  <38.681328, 38.033875, 22.031645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.910046, 38.039692, 22.104130>,  <39.291245, 38.049385, 22.224937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910046, 38.039692, 22.104130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259030, 0.451946, -0.853609,
		0.157183, -0.891716, -0.424424,
		-0.952994, -0.024234, -0.302019,
		38.624149, 38.032421, 22.013523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329010, 37.727459, 21.572186>,  <39.291245, 38.049385, 22.224937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329010, 37.727459, 21.572186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.985996, 37.932053, 21.594189>,  <38.780190, 38.054810, 21.607389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.985996, 37.932053, 21.594189>,  <39.329010, 37.727459, 21.572186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985996, 37.932053, 21.594189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243026, 0.497036, -0.833003,
		-0.453404, -0.700959, -0.550528,
		-0.857533, 0.511480, 0.055007,
		38.728737, 38.085495, 21.610691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299107, 37.895947, 20.984119>,  <39.329010, 37.727459, 21.572186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299107, 37.895947, 20.984119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.998505, 38.114807, 21.131561>,  <38.818146, 38.246124, 21.220026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.998505, 38.114807, 21.131561>,  <39.299107, 37.895947, 20.984119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998505, 38.114807, 21.131561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199099, 0.720762, -0.663974,
		-0.628971, -0.425589, -0.650592,
		-0.751502, 0.547153, 0.368604,
		38.773052, 38.278954, 21.242142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755527, 38.025272, 20.387823>,  <39.299107, 37.895947, 20.984119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755527, 38.025272, 20.387823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.735863, 38.328594, 20.647842>,  <38.724064, 38.510586, 20.803854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.735863, 38.328594, 20.647842>,  <38.755527, 38.025272, 20.387823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735863, 38.328594, 20.647842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133044, 0.650007, -0.748192,
		-0.989890, 0.049700, -0.132844,
		-0.049164, 0.758302, 0.650047,
		38.721115, 38.556084, 20.842857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350281, 38.621944, 20.057339>,  <38.755527, 38.025272, 20.387823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350281, 38.621944, 20.057339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.586285, 38.764297, 20.347233>,  <38.727886, 38.849709, 20.521170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.586285, 38.764297, 20.347233>,  <38.350281, 38.621944, 20.057339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586285, 38.764297, 20.347233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317741, 0.722845, -0.613625,
		-0.742248, 0.592321, 0.313406,
		0.590007, 0.355880, 0.724735,
		38.763287, 38.871063, 20.564653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346180, 39.422977, 19.869488>,  <38.350281, 38.621944, 20.057339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346180, 39.422977, 19.869488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.634216, 39.364449, 20.140797>,  <38.807037, 39.329330, 20.303581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.634216, 39.364449, 20.140797>,  <38.346180, 39.422977, 19.869488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634216, 39.364449, 20.140797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558718, 0.701924, -0.441743,
		-0.411458, 0.697060, 0.587205,
		0.720095, -0.146324, 0.678272,
		38.850246, 39.320553, 20.344278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.695572, 28.507181, 32.197327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041367, 28.587624, 32.381596>,  <37.248844, 28.635889, 32.492157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041367, 28.587624, 32.381596>,  <36.695572, 28.507181, 32.197327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041367, 28.587624, 32.381596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135563, 0.789236, -0.598941,
		-0.484030, 0.580227, 0.655021,
		0.864487, 0.201108, 0.460671,
		37.300713, 28.647957, 32.519798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741314, 29.190601, 32.417557>,  <36.695572, 28.507181, 32.197327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741314, 29.190601, 32.417557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107258, 29.043905, 32.349991>,  <37.326824, 28.955889, 32.309452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107258, 29.043905, 32.349991>,  <36.741314, 29.190601, 32.417557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107258, 29.043905, 32.349991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232923, 0.821078, -0.521131,
		0.329814, 0.437417, 0.836594,
		0.914860, -0.366738, -0.168919,
		37.381718, 28.933884, 32.299316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258247, 29.756521, 32.495750>,  <36.741314, 29.190601, 32.417557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258247, 29.756521, 32.495750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424351, 29.487827, 32.250366>,  <37.524014, 29.326611, 32.103138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424351, 29.487827, 32.250366>,  <37.258247, 29.756521, 32.495750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424351, 29.487827, 32.250366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109947, 0.706466, -0.699154,
		0.903033, 0.222885, 0.367225,
		0.415263, -0.671735, -0.613457,
		37.548931, 29.286306, 32.066330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839005, 30.160080, 32.222134>,  <37.258247, 29.756521, 32.495750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839005, 30.160080, 32.222134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.782375, 29.862091, 31.961374>,  <37.748398, 29.683298, 31.804918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.782375, 29.862091, 31.961374>,  <37.839005, 30.160080, 32.222134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782375, 29.862091, 31.961374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038509, 0.662180, -0.748355,
		0.989179, -0.080840, -0.122432,
		-0.141569, -0.744972, -0.651901,
		37.739906, 29.638599, 31.765804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331047, 30.333086, 31.698193>,  <37.839005, 30.160080, 32.222134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331047, 30.333086, 31.698193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.065372, 30.076145, 31.545231>,  <37.905968, 29.921980, 31.453453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.065372, 30.076145, 31.545231>,  <38.331047, 30.333086, 31.698193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065372, 30.076145, 31.545231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072759, 0.564653, -0.822115,
		0.744015, -0.518216, -0.421774,
		-0.664189, -0.642354, -0.382405,
		37.866116, 29.883438, 31.430510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528835, 30.318295, 30.999596>,  <38.331047, 30.333086, 31.698193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528835, 30.318295, 30.999596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162067, 30.159025, 30.988924>,  <37.942005, 30.063463, 30.982521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162067, 30.159025, 30.988924>,  <38.528835, 30.318295, 30.999596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162067, 30.159025, 30.988924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132154, 0.366054, -0.921162,
		0.376561, -0.841103, -0.388263,
		-0.916917, -0.398184, -0.026686,
		37.886990, 30.039574, 30.980921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437637, 29.947098, 30.380577>,  <38.528835, 30.318295, 30.999596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437637, 29.947098, 30.380577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.062260, 30.038744, 30.483976>,  <37.837032, 30.093733, 30.546017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.062260, 30.038744, 30.483976>,  <38.437637, 29.947098, 30.380577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062260, 30.038744, 30.483976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201619, 0.244323, -0.948502,
		-0.280476, -0.942237, -0.183090,
		-0.938447, 0.229117, 0.258500,
		37.780724, 30.107479, 30.561525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033680, 29.653984, 29.838942>,  <38.437637, 29.947098, 30.380577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033680, 29.653984, 29.838942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.807796, 29.937651, 30.007786>,  <37.672264, 30.107851, 30.109093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.807796, 29.937651, 30.007786>,  <38.033680, 29.653984, 29.838942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807796, 29.937651, 30.007786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272523, 0.322543, -0.906475,
		-0.778993, -0.626933, 0.011121,
		-0.564713, 0.709169, 0.422112,
		37.638382, 30.150402, 30.134420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568222, 29.752321, 29.307667>,  <38.033680, 29.653984, 29.838942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568222, 29.752321, 29.307667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.488613, 30.053608, 29.558443>,  <37.440849, 30.234381, 29.708908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.488613, 30.053608, 29.558443>,  <37.568222, 29.752321, 29.307667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488613, 30.053608, 29.558443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251648, 0.579006, -0.775516,
		-0.947135, -0.312112, 0.074312,
		-0.199020, 0.753218, 0.626940,
		37.428905, 30.279573, 29.746525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926804, 30.067749, 29.146946>,  <37.568222, 29.752321, 29.307667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926804, 30.067749, 29.146946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132042, 30.358139, 29.330116>,  <37.255184, 30.532373, 29.440018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132042, 30.358139, 29.330116>,  <36.926804, 30.067749, 29.146946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132042, 30.358139, 29.330116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303474, 0.652483, -0.694384,
		-0.802895, 0.217315, 0.555099,
		0.513092, 0.725976, 0.457926,
		37.285969, 30.575932, 29.467493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458870, 30.605539, 29.181934>,  <36.926804, 30.067749, 29.146946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458870, 30.605539, 29.181934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.833027, 30.746931, 29.185583>,  <37.057522, 30.831766, 29.187773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.833027, 30.746931, 29.185583>,  <36.458870, 30.605539, 29.181934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833027, 30.746931, 29.185583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181865, 0.503062, -0.844899,
		-0.303245, 0.788657, 0.534849,
		0.935397, 0.353482, 0.009122,
		37.113647, 30.852976, 29.188320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389263, 31.118208, 28.716866>,  <36.458870, 30.605539, 29.181934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389263, 31.118208, 28.716866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.787636, 31.110899, 28.752167>,  <37.026661, 31.106514, 28.773348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.787636, 31.110899, 28.752167>,  <36.389263, 31.118208, 28.716866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787636, 31.110899, 28.752167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084621, 0.526558, -0.845917,
		-0.031013, 0.849943, 0.525961,
		0.995930, -0.018273, 0.088253,
		37.086414, 31.105417, 28.778643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979328, 31.658596, 29.001083>,  <36.389263, 31.118208, 28.716866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979328, 31.658596, 29.001083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608501, 31.622316, 28.855577>,  <35.386005, 31.600550, 28.768274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608501, 31.622316, 28.855577>,  <35.979328, 31.658596, 29.001083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608501, 31.622316, 28.855577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329460, -0.265944, 0.905941,
		-0.178909, 0.959712, 0.216666,
		-0.927064, -0.090698, -0.363766,
		35.330383, 31.595106, 28.746449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561199, 31.791927, 29.600935>,  <35.979328, 31.658596, 29.001083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561199, 31.791927, 29.600935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.306805, 31.634527, 29.335402>,  <35.154167, 31.540087, 29.176081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.306805, 31.634527, 29.335402>,  <35.561199, 31.791927, 29.600935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306805, 31.634527, 29.335402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583178, -0.318294, 0.747391,
		-0.505392, 0.862466, -0.027049,
		-0.635990, -0.393499, -0.663834,
		35.116009, 31.516478, 29.136251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900723, 31.906336, 29.912846>,  <35.561199, 31.791927, 29.600935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900723, 31.906336, 29.912846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835621, 31.609947, 29.652239>,  <34.796558, 31.432114, 29.495874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835621, 31.609947, 29.652239>,  <34.900723, 31.906336, 29.912846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835621, 31.609947, 29.652239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624862, -0.433615, 0.649250,
		-0.763582, 0.512777, -0.392431,
		-0.162756, -0.740971, -0.651516,
		34.786793, 31.387655, 29.456783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244072, 31.871052, 29.879528>,  <34.900723, 31.906336, 29.912846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244072, 31.871052, 29.879528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.395550, 31.515905, 29.775007>,  <34.486439, 31.302816, 29.712294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.395550, 31.515905, 29.775007>,  <34.244072, 31.871052, 29.879528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395550, 31.515905, 29.775007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562458, -0.444993, 0.696865,
		-0.735002, -0.116929, -0.667906,
		0.378698, -0.887868, -0.261304,
		34.509159, 31.249546, 29.696617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663025, 31.489323, 29.912796>,  <34.244072, 31.871052, 29.879528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663025, 31.489323, 29.912796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966007, 31.232008, 29.957415>,  <34.147797, 31.077620, 29.984186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966007, 31.232008, 29.957415>,  <33.663025, 31.489323, 29.912796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966007, 31.232008, 29.957415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515529, -0.484471, 0.706765,
		-0.400611, -0.592850, -0.698599,
		0.757457, -0.643286, 0.111547,
		34.193245, 31.039022, 29.990877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359566, 31.013351, 30.156404>,  <33.663025, 31.489323, 29.912796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359566, 31.013351, 30.156404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735905, 30.925550, 30.259653>,  <33.961708, 30.872869, 30.321602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735905, 30.925550, 30.259653>,  <33.359566, 31.013351, 30.156404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735905, 30.925550, 30.259653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334737, -0.484041, 0.808490,
		-0.052523, -0.847068, -0.528883,
		0.940847, -0.219501, 0.258121,
		34.018158, 30.859699, 30.337090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366295, 30.294819, 30.238106>,  <33.359566, 31.013351, 30.156404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366295, 30.294819, 30.238106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670185, 30.452843, 30.444696>,  <33.852520, 30.547657, 30.568651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670185, 30.452843, 30.444696>,  <33.366295, 30.294819, 30.238106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670185, 30.452843, 30.444696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253880, -0.551019, 0.794936,
		0.598635, -0.735055, -0.318325,
		0.759724, 0.395060, 0.516475,
		33.898102, 30.571360, 30.599640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617428, 29.712885, 30.572195>,  <33.366295, 30.294819, 30.238106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617428, 29.712885, 30.572195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751247, 30.027487, 30.779842>,  <33.831539, 30.216248, 30.904430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751247, 30.027487, 30.779842>,  <33.617428, 29.712885, 30.572195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751247, 30.027487, 30.779842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244279, -0.459657, 0.853840,
		0.910169, -0.412459, 0.038351,
		0.334546, 0.786507, 0.519120,
		33.851612, 30.263439, 30.935579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876583, 29.425798, 31.207033>,  <33.617428, 29.712885, 30.572195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876583, 29.425798, 31.207033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.852158, 29.810287, 31.314606>,  <33.837502, 30.040981, 31.379148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.852158, 29.810287, 31.314606>,  <33.876583, 29.425798, 31.207033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852158, 29.810287, 31.314606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338404, -0.273413, 0.900405,
		0.939018, -0.036029, 0.341976,
		-0.061059, 0.961222, 0.268932,
		33.833839, 30.098654, 31.395285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166988, 29.457722, 31.887321>,  <33.876583, 29.425798, 31.207033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166988, 29.457722, 31.887321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.965759, 29.802570, 31.863108>,  <33.845020, 30.009480, 31.848579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.965759, 29.802570, 31.863108>,  <34.166988, 29.457722, 31.887321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965759, 29.802570, 31.863108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409279, -0.175964, 0.895280,
		0.761189, 0.475166, 0.441371,
		-0.503072, 0.862122, -0.060534,
		33.814838, 30.061207, 31.844948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258797, 29.905975, 32.537792>,  <34.166988, 29.457722, 31.887321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258797, 29.905975, 32.537792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909889, 29.975441, 32.354927>,  <33.700546, 30.017120, 32.245209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909889, 29.975441, 32.354927>,  <34.258797, 29.905975, 32.537792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909889, 29.975441, 32.354927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484114, -0.174377, 0.857453,
		0.069191, 0.969244, 0.236176,
		-0.872265, 0.173664, -0.457159,
		33.648209, 30.027540, 32.217781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080025, 30.422522, 32.938622>,  <34.258797, 29.905975, 32.537792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080025, 30.422522, 32.938622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746265, 30.297415, 32.757088>,  <33.546009, 30.222351, 32.648167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746265, 30.297415, 32.757088>,  <34.080025, 30.422522, 32.938622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746265, 30.297415, 32.757088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430949, -0.143116, 0.890955,
		-0.343613, 0.938986, -0.015372,
		-0.834394, -0.312768, -0.453832,
		33.495949, 30.203585, 32.620937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607052, 30.673847, 33.389248>,  <34.080025, 30.422522, 32.938622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607052, 30.673847, 33.389248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.376411, 30.419847, 33.183605>,  <33.238026, 30.267448, 33.060219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.376411, 30.419847, 33.183605>,  <33.607052, 30.673847, 33.389248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376411, 30.419847, 33.183605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568708, -0.139835, 0.810566,
		-0.586598, 0.759752, -0.280499,
		-0.576605, -0.634999, -0.514104,
		33.203430, 30.229347, 33.029373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982906, 30.913551, 33.516598>,  <33.607052, 30.673847, 33.389248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982906, 30.913551, 33.516598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919285, 30.529598, 33.424229>,  <32.881111, 30.299225, 33.368809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919285, 30.529598, 33.424229>,  <32.982906, 30.913551, 33.516598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919285, 30.529598, 33.424229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650996, -0.073877, 0.755478,
		-0.742231, 0.270486, -0.613131,
		-0.159050, -0.959885, -0.230920,
		32.871571, 30.241632, 33.354954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307579, 30.728271, 33.661648>,  <32.982906, 30.913551, 33.516598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307579, 30.728271, 33.661648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.499451, 30.377321, 33.657269>,  <32.614574, 30.166752, 33.654640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.499451, 30.377321, 33.657269>,  <32.307579, 30.728271, 33.661648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499451, 30.377321, 33.657269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350752, -0.203171, 0.914164,
		-0.804288, -0.434668, -0.405198,
		0.479682, -0.877374, -0.010947,
		32.643356, 30.114109, 33.653984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003712, 31.100498, 34.348091>,  <32.307579, 30.728271, 33.661648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003712, 31.100498, 34.348091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.110065, 31.325871, 34.660976>,  <32.173878, 31.461094, 34.848705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.110065, 31.325871, 34.660976>,  <32.003712, 31.100498, 34.348091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110065, 31.325871, 34.660976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963979, -0.161457, -0.211367,
		0.007203, 0.810233, -0.586064,
		0.265880, 0.563431, 0.782210,
		32.189831, 31.494900, 34.895641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740124, 31.447742, 34.095173>,  <32.003712, 31.100498, 34.348091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740124, 31.447742, 34.095173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.098240, 31.535860, 34.250057>,  <33.313110, 31.588732, 34.342987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.098240, 31.535860, 34.250057>,  <32.740124, 31.447742, 34.095173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098240, 31.535860, 34.250057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041881, 0.823707, -0.565467,
		-0.443516, 0.522472, 0.728228,
		0.895287, 0.220295, 0.387209,
		33.366825, 31.601948, 34.366219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727303, 32.149448, 34.339455>,  <32.740124, 31.447742, 34.095173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727303, 32.149448, 34.339455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114944, 32.065659, 34.287365>,  <33.347530, 32.015385, 34.256111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114944, 32.065659, 34.287365>,  <32.727303, 32.149448, 34.339455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114944, 32.065659, 34.287365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138686, 0.899355, -0.414640,
		0.203972, 0.383770, 0.900620,
		0.969103, -0.209478, -0.130220,
		33.405674, 32.002815, 34.248299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066555, 32.769356, 34.434307>,  <32.727303, 32.149448, 34.339455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066555, 32.769356, 34.434307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327457, 32.547752, 34.227375>,  <33.484001, 32.414791, 34.103214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327457, 32.547752, 34.227375>,  <33.066555, 32.769356, 34.434307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327457, 32.547752, 34.227375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123388, 0.750995, -0.648677,
		0.747886, 0.359273, 0.558201,
		0.652259, -0.554012, -0.517329,
		33.523136, 32.381550, 34.072178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657345, 33.224556, 34.390934>,  <33.066555, 32.769356, 34.434307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657345, 33.224556, 34.390934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.697723, 32.944241, 34.108456>,  <33.721951, 32.776051, 33.938969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.697723, 32.944241, 34.108456>,  <33.657345, 33.224556, 34.390934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697723, 32.944241, 34.108456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093396, 0.713359, -0.694547,
		0.990498, 0.004156, 0.137461,
		0.100946, -0.700786, -0.706193,
		33.728008, 32.734005, 33.896599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071850, 33.513348, 33.868893>,  <33.657345, 33.224556, 34.390934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071850, 33.513348, 33.868893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939495, 33.192692, 33.669743>,  <33.860081, 33.000298, 33.550251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939495, 33.192692, 33.669743>,  <34.071850, 33.513348, 33.868893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939495, 33.192692, 33.669743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263263, 0.428230, -0.864472,
		0.906203, -0.417117, 0.069346,
		-0.330890, -0.801643, -0.497875,
		33.840229, 32.952198, 33.520382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594170, 33.343292, 33.528790>,  <34.071850, 33.513348, 33.868893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594170, 33.343292, 33.528790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.270432, 33.202560, 33.340672>,  <34.076187, 33.118122, 33.227798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.270432, 33.202560, 33.340672>,  <34.594170, 33.343292, 33.528790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270432, 33.202560, 33.340672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291244, 0.454944, -0.841548,
		0.510041, -0.818072, -0.265738,
		-0.809343, -0.351829, -0.470298,
		34.027630, 33.097012, 33.199581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863003, 33.076965, 32.940136>,  <34.594170, 33.343292, 33.528790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863003, 33.076965, 32.940136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473328, 33.102634, 32.853565>,  <34.239521, 33.118038, 32.801620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473328, 33.102634, 32.853565>,  <34.863003, 33.076965, 32.940136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473328, 33.102634, 32.853565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225633, 0.306821, -0.924635,
		0.007066, -0.949601, -0.313382,
		-0.974187, 0.064176, -0.216429,
		34.181072, 33.121887, 32.788635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778961, 32.729382, 32.226627>,  <34.863003, 33.076965, 32.940136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778961, 32.729382, 32.226627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486183, 32.990902, 32.303360>,  <34.310516, 33.147816, 32.349400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486183, 32.990902, 32.303360>,  <34.778961, 32.729382, 32.226627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486183, 32.990902, 32.303360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166985, 0.445083, -0.879783,
		-0.660583, -0.611921, -0.434952,
		-0.731947, 0.653800, 0.191833,
		34.266598, 33.187042, 32.360909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296013, 32.727921, 31.623100>,  <34.778961, 32.729382, 32.226627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296013, 32.727921, 31.623100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258671, 33.078499, 31.812042>,  <34.236267, 33.288845, 31.925407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258671, 33.078499, 31.812042>,  <34.296013, 32.727921, 31.623100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258671, 33.078499, 31.812042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112171, 0.462150, -0.879679,
		-0.989294, -0.135108, 0.055169,
		-0.093355, 0.876449, 0.472357,
		34.230663, 33.341434, 31.953749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767033, 33.117489, 31.163660>,  <34.296013, 32.727921, 31.623100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767033, 33.117489, 31.163660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948620, 33.373032, 31.412104>,  <34.057571, 33.526356, 31.561171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948620, 33.373032, 31.412104>,  <33.767033, 33.117489, 31.163660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948620, 33.373032, 31.412104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059563, 0.673762, -0.736544,
		-0.889024, 0.371363, 0.267815,
		0.453969, 0.638854, 0.621111,
		34.084812, 33.564690, 31.598436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482616, 33.751709, 30.900589>,  <33.767033, 33.117489, 31.163660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482616, 33.751709, 30.900589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788834, 33.848495, 31.139051>,  <33.972565, 33.906567, 31.282129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788834, 33.848495, 31.139051>,  <33.482616, 33.751709, 30.900589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788834, 33.848495, 31.139051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222799, 0.769554, -0.598453,
		-0.603580, 0.590963, 0.535214,
		0.765540, 0.241969, 0.596154,
		34.018497, 33.921085, 31.317898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472546, 34.618050, 30.983482>,  <33.482616, 33.751709, 30.900589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472546, 34.618050, 30.983482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.841415, 34.506378, 31.090549>,  <34.062737, 34.439377, 31.154789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.841415, 34.506378, 31.090549>,  <33.472546, 34.618050, 30.983482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841415, 34.506378, 31.090549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386074, 0.705775, -0.593994,
		-0.023081, 0.651108, 0.758634,
		0.922179, -0.279179, 0.267666,
		34.118069, 34.422623, 31.170849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877857, 35.247421, 31.075243>,  <33.472546, 34.618050, 30.983482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877857, 35.247421, 31.075243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186802, 34.994900, 31.047220>,  <34.372169, 34.843388, 31.030407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186802, 34.994900, 31.047220>,  <33.877857, 35.247421, 31.075243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186802, 34.994900, 31.047220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529707, 0.701049, -0.477432,
		0.350517, 0.331642, 0.875872,
		0.772365, -0.631304, -0.070056,
		34.418510, 34.805508, 31.026203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495571, 35.554829, 31.340479>,  <33.877857, 35.247421, 31.075243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495571, 35.554829, 31.340479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618320, 35.267242, 31.091024>,  <34.691971, 35.094692, 30.941351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618320, 35.267242, 31.091024>,  <34.495571, 35.554829, 31.340479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618320, 35.267242, 31.091024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597950, 0.655428, -0.461379,
		0.740463, -0.231319, 0.631035,
		0.306872, -0.718962, -0.623637,
		34.710381, 35.051556, 30.903933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180229, 35.833817, 31.077339>,  <34.495571, 35.554829, 31.340479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180229, 35.833817, 31.077339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117699, 35.536098, 30.817619>,  <35.080181, 35.357468, 30.661787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117699, 35.536098, 30.817619>,  <35.180229, 35.833817, 31.077339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117699, 35.536098, 30.817619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458439, 0.527605, -0.715169,
		0.874869, -0.409466, 0.258732,
		-0.156330, -0.744292, -0.649300,
		35.070801, 35.312813, 30.622829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811432, 35.561832, 30.724033>,  <35.180229, 35.833817, 31.077339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811432, 35.561832, 30.724033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.502834, 35.488083, 30.480461>,  <35.317677, 35.443832, 30.334318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.502834, 35.488083, 30.480461>,  <35.811432, 35.561832, 30.724033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502834, 35.488083, 30.480461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468503, 0.482915, -0.739796,
		0.430459, -0.856038, -0.286189,
		-0.771498, -0.184372, -0.608931,
		35.271385, 35.432770, 30.297781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125179, 35.725433, 30.109798>,  <35.811432, 35.561832, 30.724033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125179, 35.725433, 30.109798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.776222, 35.606232, 29.954817>,  <35.566849, 35.534710, 29.861828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.776222, 35.606232, 29.954817>,  <36.125179, 35.725433, 30.109798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776222, 35.606232, 29.954817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288278, 0.326462, -0.900177,
		0.394746, -0.897004, -0.198896,
		-0.872394, -0.298004, -0.387456,
		35.514503, 35.516830, 29.838581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213787, 35.335285, 29.486824>,  <36.125179, 35.725433, 30.109798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213787, 35.335285, 29.486824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.837658, 35.470985, 29.476170>,  <35.611980, 35.552406, 29.469776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.837658, 35.470985, 29.476170>,  <36.213787, 35.335285, 29.486824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837658, 35.470985, 29.476170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202911, 0.496141, -0.844198,
		-0.273178, -0.799221, -0.535369,
		-0.940320, 0.339249, -0.026636,
		35.555561, 35.572762, 29.468180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055172, 35.266361, 28.795593>,  <36.213787, 35.335285, 29.486824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055172, 35.266361, 28.795593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801556, 35.531490, 28.954924>,  <35.649387, 35.690567, 29.050522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801556, 35.531490, 28.954924>,  <36.055172, 35.266361, 28.795593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801556, 35.531490, 28.954924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040082, 0.542572, -0.839052,
		-0.772260, -0.516028, -0.370580,
		-0.634041, 0.662820, 0.398324,
		35.611343, 35.730335, 29.074421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567719, 35.380394, 28.319666>,  <36.055172, 35.266361, 28.795593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567719, 35.380394, 28.319666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581718, 35.703991, 28.554379>,  <35.590118, 35.898148, 28.695206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581718, 35.703991, 28.554379>,  <35.567719, 35.380394, 28.319666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581718, 35.703991, 28.554379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097543, 0.581571, -0.807627,
		-0.994616, 0.085500, -0.058559,
		0.034996, 0.808990, 0.586779,
		35.592216, 35.946690, 28.730412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305431, 35.830402, 27.896833>,  <35.567719, 35.380394, 28.319666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305431, 35.830402, 27.896833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.501556, 36.047535, 28.169577>,  <35.619232, 36.177814, 28.333223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.501556, 36.047535, 28.169577>,  <35.305431, 35.830402, 27.896833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501556, 36.047535, 28.169577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189289, 0.697355, -0.691278,
		-0.850744, 0.468010, 0.239169,
		0.490310, 0.542828, 0.681860,
		35.648651, 36.210384, 28.374134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944363, 36.522282, 27.806635>,  <35.305431, 35.830402, 27.896833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944363, 36.522282, 27.806635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285599, 36.575722, 28.008383>,  <35.490341, 36.607784, 28.129431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285599, 36.575722, 28.008383>,  <34.944363, 36.522282, 27.806635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285599, 36.575722, 28.008383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134836, 0.877379, -0.460462,
		-0.504040, 0.460823, 0.730469,
		0.853090, 0.133598, 0.504370,
		35.541527, 36.615803, 28.159695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974651, 37.233311, 28.067492>,  <34.944363, 36.522282, 27.806635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974651, 37.233311, 28.067492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348846, 37.092007, 28.064383>,  <35.573364, 37.007225, 28.062517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348846, 37.092007, 28.064383>,  <34.974651, 37.233311, 28.067492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348846, 37.092007, 28.064383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306181, 0.821397, -0.481207,
		0.176378, 0.447786, 0.876572,
		0.935492, -0.353264, -0.007773,
		35.629494, 36.986027, 28.062050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409229, 37.834209, 28.158323>,  <34.974651, 37.233311, 28.067492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409229, 37.834209, 28.158323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633572, 37.534794, 28.016823>,  <35.768177, 37.355145, 27.931923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633572, 37.534794, 28.016823>,  <35.409229, 37.834209, 28.158323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633572, 37.534794, 28.016823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412927, 0.623250, -0.664117,
		0.717591, 0.226397, 0.658641,
		0.560852, -0.748534, -0.353753,
		35.801826, 37.310234, 27.910696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132561, 37.997181, 28.343719>,  <35.409229, 37.834209, 28.158323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132561, 37.997181, 28.343719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140141, 37.763180, 28.019396>,  <36.144688, 37.622780, 27.824800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140141, 37.763180, 28.019396>,  <36.132561, 37.997181, 28.343719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140141, 37.763180, 28.019396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510769, 0.702814, -0.495144,
		0.859509, -0.404754, 0.312119,
		0.018950, -0.585001, -0.810811,
		36.145824, 37.587681, 27.776152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769337, 38.066704, 28.080595>,  <36.132561, 37.997181, 28.343719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769337, 38.066704, 28.080595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.597103, 37.921459, 27.750080>,  <36.493763, 37.834312, 27.551771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.597103, 37.921459, 27.750080>,  <36.769337, 38.066704, 28.080595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597103, 37.921459, 27.750080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453533, 0.704473, -0.545917,
		0.780324, -0.609811, -0.138652,
		-0.430583, -0.363109, -0.826287,
		36.467930, 37.812527, 27.502193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393265, 37.620060, 28.000036>,  <36.769337, 38.066704, 28.080595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393265, 37.620060, 28.000036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769241, 37.701790, 28.109411>,  <37.994827, 37.750828, 28.175035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769241, 37.701790, 28.109411>,  <37.393265, 37.620060, 28.000036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769241, 37.701790, 28.109411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125067, -0.539208, 0.832834,
		0.317607, -0.817011, -0.481268,
		0.939938, 0.204323, 0.273437,
		38.051224, 37.763088, 28.191442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679623, 37.021584, 28.005816>,  <37.393265, 37.620060, 28.000036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679623, 37.021584, 28.005816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.873627, 37.273731, 28.248270>,  <37.990028, 37.425018, 28.393744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.873627, 37.273731, 28.248270>,  <37.679623, 37.021584, 28.005816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873627, 37.273731, 28.248270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245405, -0.567162, 0.786196,
		0.839371, -0.530061, -0.120382,
		0.485007, 0.630368, 0.606139,
		38.019131, 37.462841, 28.430111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105099, 36.582886, 28.485168>,  <37.679623, 37.021584, 28.005816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105099, 36.582886, 28.485168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.096336, 36.935280, 28.674221>,  <38.091080, 37.146717, 28.787653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.096336, 36.935280, 28.674221>,  <38.105099, 36.582886, 28.485168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096336, 36.935280, 28.674221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193562, -0.467537, 0.862522,
		0.980844, -0.072590, 0.180767,
		-0.021905, 0.880988, 0.472631,
		38.089764, 37.199577, 28.816010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615826, 36.554459, 29.079739>,  <38.105099, 36.582886, 28.485168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615826, 36.554459, 29.079739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.336437, 36.831448, 29.151987>,  <38.168804, 36.997643, 29.195335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.336437, 36.831448, 29.151987>,  <38.615826, 36.554459, 29.079739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336437, 36.831448, 29.151987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208594, -0.438426, 0.874226,
		0.684566, 0.572943, 0.450673,
		-0.698468, 0.692473, 0.180619,
		38.126896, 37.039188, 29.206173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657383, 36.729633, 29.844908>,  <38.615826, 36.554459, 29.079739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657383, 36.729633, 29.844908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.299595, 36.841873, 29.705664>,  <38.084923, 36.909218, 29.622116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.299595, 36.841873, 29.705664>,  <38.657383, 36.729633, 29.844908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299595, 36.841873, 29.705664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432077, -0.342200, 0.834391,
		0.115003, 0.896752, 0.427329,
		-0.894474, 0.280596, -0.348112,
		38.031254, 36.926052, 29.601231>
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
