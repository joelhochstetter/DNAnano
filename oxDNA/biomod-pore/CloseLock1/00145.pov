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
	<24.649576, 35.205547, 35.321510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290403, 35.091507, 35.187386>,  <24.074900, 35.023083, 35.106911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290403, 35.091507, 35.187386>,  <24.649576, 35.205547, 35.321510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.290403, 35.091507, 35.187386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215673, -0.949127, 0.229440,
		-0.383666, 0.133704, 0.913741,
		-0.897934, -0.285098, -0.335311,
		24.021023, 35.005978, 35.086792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.195160, 34.987148, 35.850948>,  <24.649576, 35.205547, 35.321510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.195160, 34.987148, 35.850948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.095106, 34.795456, 35.514431>,  <24.035074, 34.680443, 35.312519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.095106, 34.795456, 35.514431>,  <24.195160, 34.987148, 35.850948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.095106, 34.795456, 35.514431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217522, -0.874517, 0.433479,
		-0.943461, -0.074572, 0.322988,
		-0.250133, -0.479227, -0.841294,
		24.020067, 34.651688, 35.262043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.903475, 35.249649, 36.161846>,  <24.195160, 34.987148, 35.850948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.903475, 35.249649, 36.161846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973816, 35.006657, 35.851997>,  <25.016020, 34.860863, 35.666088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973816, 35.006657, 35.851997>,  <24.903475, 35.249649, 36.161846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.973816, 35.006657, 35.851997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980432, 0.178805, 0.082348,
		0.088482, -0.773948, 0.627037,
		0.175851, -0.607481, -0.774624,
		25.026571, 34.824413, 35.619610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612730, 35.021442, 36.264244>,  <24.903475, 35.249649, 36.161846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612730, 35.021442, 36.264244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526775, 34.945328, 35.881077>,  <25.475203, 34.899658, 35.651176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526775, 34.945328, 35.881077>,  <25.612730, 35.021442, 36.264244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526775, 34.945328, 35.881077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894275, 0.355899, -0.271307,
		0.392550, -0.914946, 0.093689,
		-0.214887, -0.190285, -0.957922,
		25.462309, 34.888241, 35.593700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081699, 34.559837, 35.922642>,  <25.612730, 35.021442, 36.264244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081699, 34.559837, 35.922642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931946, 34.762737, 35.612148>,  <25.842093, 34.884476, 35.425854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931946, 34.762737, 35.612148>,  <26.081699, 34.559837, 35.922642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931946, 34.762737, 35.612148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923592, 0.278509, -0.263461,
		0.082546, -0.815555, -0.572761,
		-0.374386, 0.507250, -0.776230,
		25.819630, 34.914913, 35.379280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242556, 34.270653, 35.203468>,  <26.081699, 34.559837, 35.922642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242556, 34.270653, 35.203468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227476, 34.664875, 35.269516>,  <26.218428, 34.901409, 35.309147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227476, 34.664875, 35.269516>,  <26.242556, 34.270653, 35.203468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227476, 34.664875, 35.269516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874060, 0.112614, -0.472586,
		-0.484353, 0.126512, -0.865677,
		-0.037699, 0.985552, 0.165124,
		26.216166, 34.960541, 35.319054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433794, 34.701370, 34.531582>,  <26.242556, 34.270653, 35.203468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433794, 34.701370, 34.531582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485672, 34.931801, 34.854397>,  <26.516800, 35.070061, 35.048088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485672, 34.931801, 34.854397>,  <26.433794, 34.701370, 34.531582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485672, 34.931801, 34.854397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801278, 0.418537, -0.427528,
		-0.584065, 0.702113, -0.407315,
		0.129697, 0.576076, 0.807041,
		26.524582, 35.104626, 35.096508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369572, 35.347305, 34.352741>,  <26.433794, 34.701370, 34.531582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369572, 35.347305, 34.352741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583464, 35.370586, 34.689949>,  <26.711800, 35.384556, 34.892273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583464, 35.370586, 34.689949>,  <26.369572, 35.347305, 34.352741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583464, 35.370586, 34.689949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706431, 0.516652, -0.483762,
		-0.463700, 0.854215, 0.235157,
		0.534731, 0.058198, 0.843016,
		26.743883, 35.388046, 34.942852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372231, 36.069077, 34.596207>,  <26.369572, 35.347305, 34.352741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372231, 36.069077, 34.596207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696573, 35.878616, 34.732315>,  <26.891180, 35.764339, 34.813980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696573, 35.878616, 34.732315>,  <26.372231, 36.069077, 34.596207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696573, 35.878616, 34.732315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578996, 0.737398, -0.347863,
		-0.085282, 0.479085, 0.873616,
		0.810858, -0.476153, 0.340275,
		26.939831, 35.735771, 34.834396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815542, 36.555370, 34.929363>,  <26.372231, 36.069077, 34.596207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815542, 36.555370, 34.929363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046602, 36.239632, 34.846172>,  <27.185238, 36.050190, 34.796257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046602, 36.239632, 34.846172>,  <26.815542, 36.555370, 34.929363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046602, 36.239632, 34.846172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558516, 0.567999, -0.604514,
		0.595300, 0.233040, 0.768967,
		0.577648, -0.789347, -0.207974,
		27.219896, 36.002827, 34.783779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547541, 36.743942, 34.991867>,  <26.815542, 36.555370, 34.929363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547541, 36.743942, 34.991867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575628, 36.409096, 34.774868>,  <27.592480, 36.208187, 34.644669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575628, 36.409096, 34.774868>,  <27.547541, 36.743942, 34.991867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575628, 36.409096, 34.774868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739517, 0.408670, -0.534887,
		0.669466, -0.363631, 0.647756,
		0.070217, -0.837115, -0.542502,
		27.596693, 36.157963, 34.612118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221235, 36.661201, 34.851727>,  <27.547541, 36.743942, 34.991867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221235, 36.661201, 34.851727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052380, 36.441406, 34.563320>,  <27.951067, 36.309528, 34.390278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052380, 36.441406, 34.563320>,  <28.221235, 36.661201, 34.851727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052380, 36.441406, 34.563320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628902, 0.395322, -0.669480,
		0.652904, -0.736061, 0.178693,
		-0.422137, -0.549486, -0.721017,
		27.925739, 36.276562, 34.347015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804707, 36.476082, 34.457752>,  <28.221235, 36.661201, 34.851727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804707, 36.476082, 34.457752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482023, 36.399891, 34.233986>,  <28.288414, 36.354176, 34.099728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482023, 36.399891, 34.233986>,  <28.804707, 36.476082, 34.457752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482023, 36.399891, 34.233986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489034, 0.316271, -0.812907,
		0.331772, -0.929348, -0.161984,
		-0.806705, -0.190484, -0.559413,
		28.240011, 36.342747, 34.066162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101732, 36.236717, 33.821270>,  <28.804707, 36.476082, 34.457752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101732, 36.236717, 33.821270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730572, 36.361408, 33.739460>,  <28.507875, 36.436222, 33.690376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730572, 36.361408, 33.739460>,  <29.101732, 36.236717, 33.821270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730572, 36.361408, 33.739460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327237, 0.418077, -0.847424,
		-0.178658, -0.853252, -0.489942,
		-0.927899, 0.311726, -0.204523,
		28.452202, 36.454926, 33.678104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024595, 36.017967, 33.162701>,  <29.101732, 36.236717, 33.821270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024595, 36.017967, 33.162701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761082, 36.311035, 33.231056>,  <28.602974, 36.486877, 33.272068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761082, 36.311035, 33.231056>,  <29.024595, 36.017967, 33.162701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761082, 36.311035, 33.231056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303079, 0.466348, -0.831061,
		-0.688586, -0.495696, -0.529278,
		-0.658782, 0.732670, 0.170886,
		28.563448, 36.530834, 33.282322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035461, 36.274673, 32.557396>,  <29.024595, 36.017967, 33.162701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035461, 36.274673, 32.557396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842218, 36.558052, 32.763199>,  <28.726273, 36.728081, 32.886681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842218, 36.558052, 32.763199>,  <29.035461, 36.274673, 32.557396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842218, 36.558052, 32.763199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190373, 0.658561, -0.728049,
		-0.854615, -0.253778, -0.453024,
		-0.483106, 0.708445, 0.514504,
		28.697287, 36.770584, 32.917549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609781, 36.632130, 32.109165>,  <29.035461, 36.274673, 32.557396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609781, 36.632130, 32.109165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685892, 36.896446, 32.399586>,  <28.731558, 37.055035, 32.573837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685892, 36.896446, 32.399586>,  <28.609781, 36.632130, 32.109165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685892, 36.896446, 32.399586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143607, 0.712876, -0.686428,
		-0.971170, 0.234878, 0.040750,
		0.190276, 0.660787, 0.726055,
		28.742975, 37.094681, 32.617401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289902, 37.321308, 31.918274>,  <28.609781, 36.632130, 32.109165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289902, 37.321308, 31.918274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558975, 37.453434, 32.183117>,  <28.720419, 37.532711, 32.342022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558975, 37.453434, 32.183117>,  <28.289902, 37.321308, 31.918274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558975, 37.453434, 32.183117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297269, 0.698790, -0.650633,
		-0.677591, 0.634494, 0.371871,
		0.672683, 0.330318, 0.662109,
		28.760780, 37.552528, 32.381748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248022, 38.078716, 31.746855>,  <28.289902, 37.321308, 31.918274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248022, 38.078716, 31.746855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577036, 38.005455, 31.962221>,  <28.774445, 37.961498, 32.091442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577036, 38.005455, 31.962221>,  <28.248022, 38.078716, 31.746855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577036, 38.005455, 31.962221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545198, 0.523358, -0.654871,
		-0.161845, 0.832197, 0.530334,
		0.822536, -0.183150, 0.538415,
		28.823797, 37.950512, 32.123745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627321, 38.692268, 31.832846>,  <28.248022, 38.078716, 31.746855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627321, 38.692268, 31.832846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926823, 38.434826, 31.896273>,  <29.106524, 38.280361, 31.934328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926823, 38.434826, 31.896273>,  <28.627321, 38.692268, 31.832846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926823, 38.434826, 31.896273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568673, 0.500811, -0.652533,
		0.340562, 0.578758, 0.740984,
		0.748752, -0.643605, 0.158567,
		29.151447, 38.241745, 31.943842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208477, 39.143097, 31.954865>,  <28.627321, 38.692268, 31.832846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208477, 39.143097, 31.954865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359213, 38.784801, 31.860504>,  <29.449654, 38.569824, 31.803888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359213, 38.784801, 31.860504>,  <29.208477, 39.143097, 31.954865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359213, 38.784801, 31.860504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720303, 0.443500, -0.533359,
		0.582371, 0.031069, 0.812329,
		0.376839, -0.895736, -0.235902,
		29.472265, 38.516079, 31.789734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929853, 39.287418, 31.901356>,  <29.208477, 39.143097, 31.954865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929853, 39.287418, 31.901356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869604, 38.946541, 31.700924>,  <29.833454, 38.742016, 31.580666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869604, 38.946541, 31.700924>,  <29.929853, 39.287418, 31.901356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869604, 38.946541, 31.700924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542119, 0.352651, -0.762721,
		0.826691, -0.386529, 0.408872,
		-0.150625, -0.852193, -0.501078,
		29.824417, 38.690884, 31.550600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565735, 39.065197, 31.646708>,  <29.929853, 39.287418, 31.901356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565735, 39.065197, 31.646708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299276, 38.876068, 31.415989>,  <30.139402, 38.762592, 31.277557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299276, 38.876068, 31.415989>,  <30.565735, 39.065197, 31.646708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299276, 38.876068, 31.415989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422713, 0.397806, -0.814287,
		0.614464, -0.786252, -0.065129,
		-0.666144, -0.472819, -0.576797,
		30.099434, 38.734222, 31.242950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971058, 38.765423, 31.059843>,  <30.565735, 39.065197, 31.646708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971058, 38.765423, 31.059843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598722, 38.814640, 30.922207>,  <30.375320, 38.844170, 30.839624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598722, 38.814640, 30.922207>,  <30.971058, 38.765423, 31.059843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598722, 38.814640, 30.922207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365185, 0.278885, -0.888180,
		-0.013322, -0.952410, -0.304530,
		-0.930840, 0.123042, -0.344091,
		30.319471, 38.851551, 30.818979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906986, 38.507526, 30.372404>,  <30.971058, 38.765423, 31.059843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906986, 38.507526, 30.372404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604259, 38.767689, 30.398315>,  <30.422623, 38.923786, 30.413862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604259, 38.767689, 30.398315>,  <30.906986, 38.507526, 30.372404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604259, 38.767689, 30.398315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292934, 0.426109, -0.855933,
		-0.584307, -0.628810, -0.513014,
		-0.756819, 0.650407, 0.064779,
		30.377214, 38.962811, 30.417749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484072, 38.605019, 29.747475>,  <30.906986, 38.507526, 30.372404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484072, 38.605019, 29.747475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475243, 38.972736, 29.904655>,  <30.469946, 39.193367, 29.998964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475243, 38.972736, 29.904655>,  <30.484072, 38.605019, 29.747475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475243, 38.972736, 29.904655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306176, 0.380377, -0.872680,
		-0.951719, 0.101051, -0.289861,
		-0.022071, 0.919294, 0.392951,
		30.468620, 39.248524, 30.022541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308723, 37.886959, 29.538229>,  <30.484072, 38.605019, 29.747475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308723, 37.886959, 29.538229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242050, 37.870308, 29.932281>,  <30.202047, 37.860317, 30.168713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242050, 37.870308, 29.932281>,  <30.308723, 37.886959, 29.538229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242050, 37.870308, 29.932281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562175, 0.816796, 0.129630,
		-0.810047, 0.575423, -0.112744,
		-0.166681, -0.041624, 0.985132,
		30.192045, 37.857822, 30.227821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122370, 37.792850, 28.851149>,  <30.308723, 37.886959, 29.538229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122370, 37.792850, 28.851149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120890, 38.192738, 28.860542>,  <30.120001, 38.432671, 28.866179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120890, 38.192738, 28.860542>,  <30.122370, 37.792850, 28.851149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120890, 38.192738, 28.860542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905691, 0.006605, -0.423888,
		-0.423923, -0.022840, 0.905410,
		-0.003701, 0.999718, 0.023486,
		30.119780, 38.492653, 28.867588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529495, 38.081566, 28.471405>,  <30.122370, 37.792850, 28.851149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529495, 38.081566, 28.471405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888048, 37.977276, 28.328005>,  <30.103180, 37.914703, 28.241964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888048, 37.977276, 28.328005>,  <29.529495, 38.081566, 28.471405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888048, 37.977276, 28.328005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443090, -0.503121, -0.741984,
		0.013085, 0.823949, -0.566513,
		0.896382, -0.260726, -0.358500,
		30.156963, 37.899059, 28.220455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781620, 38.251434, 27.684488>,  <29.529495, 38.081566, 28.471405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781620, 38.251434, 27.684488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894283, 37.901577, 27.842308>,  <29.961882, 37.691662, 27.937000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894283, 37.901577, 27.842308>,  <29.781620, 38.251434, 27.684488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894283, 37.901577, 27.842308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591181, -0.482068, -0.646618,
		0.755759, -0.051124, -0.652851,
		0.281660, -0.874641, 0.394551,
		29.978781, 37.639183, 27.960674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895638, 37.736835, 27.084400>,  <29.781620, 38.251434, 27.684488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895638, 37.736835, 27.084400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830767, 37.533577, 27.422745>,  <29.791843, 37.411621, 27.625751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830767, 37.533577, 27.422745>,  <29.895638, 37.736835, 27.084400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830767, 37.533577, 27.422745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547371, -0.666906, -0.505591,
		0.821026, -0.544995, -0.169991,
		-0.162177, -0.508151, 0.845861,
		29.782114, 37.381130, 27.676502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145407, 36.952534, 27.205288>,  <29.895638, 37.736835, 27.084400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145407, 36.952534, 27.205288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801365, 37.029907, 27.394096>,  <29.594940, 37.076332, 27.507381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801365, 37.029907, 27.394096>,  <30.145407, 36.952534, 27.205288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801365, 37.029907, 27.394096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464066, -0.680910, -0.566573,
		0.211810, -0.706361, 0.675419,
		-0.860104, 0.193433, 0.472021,
		29.543333, 37.087936, 27.535702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679201, 36.440315, 27.060499>,  <30.145407, 36.952534, 27.205288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679201, 36.440315, 27.060499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397963, 36.604885, 27.292494>,  <29.229219, 36.703625, 27.431690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397963, 36.604885, 27.292494>,  <29.679201, 36.440315, 27.060499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397963, 36.604885, 27.292494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663600, -0.672706, -0.327264,
		0.255518, -0.614979, 0.745997,
		-0.703097, 0.411422, 0.579988,
		29.187033, 36.728313, 27.466490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166224, 35.958637, 27.449427>,  <29.679201, 36.440315, 27.060499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166224, 35.958637, 27.449427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011480, 36.315804, 27.357309>,  <28.918634, 36.530106, 27.302038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011480, 36.315804, 27.357309>,  <29.166224, 35.958637, 27.449427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011480, 36.315804, 27.357309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782714, -0.450002, -0.429950,
		-0.487544, 0.013926, 0.872988,
		-0.386859, 0.892919, -0.230296,
		28.895422, 36.583679, 27.288221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418945, 35.335960, 27.900774>,  <29.166224, 35.958637, 27.449427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418945, 35.335960, 27.900774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659422, 35.655533, 27.894186>,  <29.803707, 35.847279, 27.890234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659422, 35.655533, 27.894186>,  <29.418945, 35.335960, 27.900774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659422, 35.655533, 27.894186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285700, -0.195648, 0.938135,
		0.746287, -0.568704, -0.345878,
		0.601191, 0.798935, -0.016469,
		29.839779, 35.895214, 27.889246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193600, 35.193077, 28.103367>,  <29.418945, 35.335960, 27.900774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193600, 35.193077, 28.103367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075119, 35.562389, 28.201200>,  <30.004030, 35.783978, 28.259901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075119, 35.562389, 28.201200>,  <30.193600, 35.193077, 28.103367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075119, 35.562389, 28.201200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062606, -0.236755, 0.969550,
		0.953072, 0.302493, 0.012324,
		-0.296200, 0.923280, 0.244582,
		29.986259, 35.839375, 28.274574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700254, 35.396851, 28.611042>,  <30.193600, 35.193077, 28.103367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700254, 35.396851, 28.611042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364023, 35.608486, 28.657505>,  <30.162285, 35.735466, 28.685383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364023, 35.608486, 28.657505>,  <30.700254, 35.396851, 28.611042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364023, 35.608486, 28.657505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072124, -0.103209, 0.992041,
		0.536864, 0.842268, 0.048596,
		-0.840580, 0.529086, 0.116157,
		30.111849, 35.767212, 28.692352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768026, 35.613075, 29.261093>,  <30.700254, 35.396851, 28.611042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768026, 35.613075, 29.261093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381802, 35.707100, 29.216484>,  <30.150066, 35.763515, 29.189718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381802, 35.707100, 29.216484>,  <30.768026, 35.613075, 29.261093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381802, 35.707100, 29.216484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119881, -0.021521, 0.992555,
		0.230907, 0.971743, 0.048959,
		-0.965562, 0.235057, -0.111524,
		30.092133, 35.777618, 29.183027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623766, 36.237270, 29.681858>,  <30.768026, 35.613075, 29.261093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623766, 36.237270, 29.681858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275011, 36.053162, 29.614975>,  <30.065758, 35.942696, 29.574844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275011, 36.053162, 29.614975>,  <30.623766, 36.237270, 29.681858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275011, 36.053162, 29.614975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158003, -0.058779, 0.985688,
		-0.463515, 0.885828, -0.021475,
		-0.871888, -0.460274, -0.167208,
		30.013445, 35.915081, 29.564812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167831, 36.484165, 30.249884>,  <30.623766, 36.237270, 29.681858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167831, 36.484165, 30.249884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017506, 36.143051, 30.104822>,  <29.927311, 35.938381, 30.017786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017506, 36.143051, 30.104822>,  <30.167831, 36.484165, 30.249884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017506, 36.143051, 30.104822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263761, -0.276720, 0.924044,
		-0.888366, 0.442923, -0.120936,
		-0.375815, -0.852787, -0.362654,
		29.904760, 35.887215, 29.996025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620222, 36.342312, 30.793365>,  <30.167831, 36.484165, 30.249884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620222, 36.342312, 30.793365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711472, 36.006485, 30.596151>,  <29.766222, 35.804989, 30.477823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711472, 36.006485, 30.596151>,  <29.620222, 36.342312, 30.793365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711472, 36.006485, 30.596151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050948, -0.515987, 0.855080,
		-0.972298, -0.169946, -0.160484,
		0.228125, -0.839569, -0.493034,
		29.779909, 35.754616, 30.448240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041151, 35.828671, 30.825817>,  <29.620222, 36.342312, 30.793365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041151, 35.828671, 30.825817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381268, 35.620846, 30.792215>,  <29.585337, 35.496151, 30.772055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381268, 35.620846, 30.792215>,  <29.041151, 35.828671, 30.825817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381268, 35.620846, 30.792215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086414, -0.295258, 0.951501,
		-0.519172, -0.801793, -0.295953,
		0.850290, -0.519567, -0.084003,
		29.636354, 35.464977, 30.767015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912489, 35.086071, 30.954487>,  <29.041151, 35.828671, 30.825817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912489, 35.086071, 30.954487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298082, 35.172131, 31.017033>,  <29.529438, 35.223766, 31.054560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298082, 35.172131, 31.017033>,  <28.912489, 35.086071, 30.954487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298082, 35.172131, 31.017033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005877, -0.570538, 0.821250,
		0.265904, -0.792589, -0.548724,
		0.963982, 0.215149, 0.156367,
		29.587276, 35.236675, 31.063942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146271, 34.578884, 31.302368>,  <28.912489, 35.086071, 30.954487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146271, 34.578884, 31.302368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464066, 34.815338, 31.358004>,  <29.654743, 34.957211, 31.391384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464066, 34.815338, 31.358004>,  <29.146271, 34.578884, 31.302368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464066, 34.815338, 31.358004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201765, -0.472971, 0.857665,
		0.572781, -0.653342, -0.495041,
		0.794489, 0.591136, 0.139088,
		29.702412, 34.992680, 31.399731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616774, 34.106693, 31.562195>,  <29.146271, 34.578884, 31.302368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616774, 34.106693, 31.562195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736488, 34.479305, 31.644825>,  <29.808317, 34.702873, 31.694403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736488, 34.479305, 31.644825>,  <29.616774, 34.106693, 31.562195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736488, 34.479305, 31.644825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409803, -0.321006, 0.853824,
		0.861678, -0.170881, -0.477818,
		0.299285, 0.931533, 0.206577,
		29.826275, 34.758766, 31.706799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352369, 34.130211, 31.666885>,  <29.616774, 34.106693, 31.562195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352369, 34.130211, 31.666885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169382, 34.430958, 31.856794>,  <30.059589, 34.611408, 31.970739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169382, 34.430958, 31.856794>,  <30.352369, 34.130211, 31.666885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169382, 34.430958, 31.856794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392100, -0.308650, 0.866599,
		0.798110, 0.582601, -0.153611,
		-0.457469, 0.751872, 0.474774,
		30.032141, 34.656521, 31.999228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762856, 34.231644, 32.343262>,  <30.352369, 34.130211, 31.666885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762856, 34.231644, 32.343262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460699, 34.478954, 32.430084>,  <30.279406, 34.627342, 32.482178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460699, 34.478954, 32.430084>,  <30.762856, 34.231644, 32.343262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460699, 34.478954, 32.430084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148663, -0.160907, 0.975709,
		0.638188, 0.769310, 0.029632,
		-0.755391, 0.618281, 0.217057,
		30.234081, 34.664440, 32.495201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106129, 34.767555, 32.683437>,  <30.762856, 34.231644, 32.343262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106129, 34.767555, 32.683437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716604, 34.776707, 32.773914>,  <30.482889, 34.782200, 32.828201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716604, 34.776707, 32.773914>,  <31.106129, 34.767555, 32.683437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716604, 34.776707, 32.773914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223528, -0.085252, 0.970962,
		0.041501, 0.996097, 0.077904,
		-0.973814, 0.022882, 0.226194,
		30.424459, 34.783573, 32.841774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035835, 35.268955, 33.139595>,  <31.106129, 34.767555, 32.683437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035835, 35.268955, 33.139595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741947, 35.003864, 33.197536>,  <30.565615, 34.844810, 33.232304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741947, 35.003864, 33.197536>,  <31.035835, 35.268955, 33.139595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741947, 35.003864, 33.197536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235322, -0.048713, 0.970696,
		-0.636246, 0.747278, 0.191744,
		-0.734721, -0.662723, 0.144857,
		30.521530, 34.805046, 33.240993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704948, 35.608936, 33.826801>,  <31.035835, 35.268955, 33.139595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704948, 35.608936, 33.826801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546160, 35.242550, 33.803387>,  <30.450886, 35.022720, 33.789337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546160, 35.242550, 33.803387>,  <30.704948, 35.608936, 33.826801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546160, 35.242550, 33.803387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068998, -0.033815, 0.997044,
		-0.915233, 0.399838, -0.049776,
		-0.396973, -0.915962, -0.058537,
		30.427069, 34.967762, 33.785824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044472, 35.610157, 34.219425>,  <30.704948, 35.608936, 33.826801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044472, 35.610157, 34.219425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160801, 35.228157, 34.196136>,  <30.230598, 34.998955, 34.182163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160801, 35.228157, 34.196136>,  <30.044472, 35.610157, 34.219425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160801, 35.228157, 34.196136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253892, -0.135701, 0.957666,
		-0.922475, -0.263730, -0.281933,
		0.290824, -0.955003, -0.058222,
		30.248049, 34.941654, 34.178669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579824, 35.279762, 34.658573>,  <30.044472, 35.610157, 34.219425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579824, 35.279762, 34.658573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878498, 35.018322, 34.609138>,  <30.057701, 34.861458, 34.579479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878498, 35.018322, 34.609138>,  <29.579824, 35.279762, 34.658573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878498, 35.018322, 34.609138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016393, -0.203818, 0.978872,
		-0.664979, -0.728880, -0.162901,
		0.746682, -0.653600, -0.123586,
		30.102503, 34.822243, 34.572063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379248, 34.599976, 34.977085>,  <29.579824, 35.279762, 34.658573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379248, 34.599976, 34.977085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778141, 34.575630, 34.960007>,  <30.017477, 34.561024, 34.949760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778141, 34.575630, 34.960007>,  <29.379248, 34.599976, 34.977085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778141, 34.575630, 34.960007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030535, -0.188282, 0.981640,
		-0.067782, -0.980227, -0.185902,
		0.997233, -0.060861, -0.042693,
		30.077311, 34.557369, 34.947197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562860, 33.972012, 35.249233>,  <29.379248, 34.599976, 34.977085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562860, 33.972012, 35.249233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897436, 34.190929, 35.260818>,  <30.098181, 34.322281, 35.267769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897436, 34.190929, 35.260818>,  <29.562860, 33.972012, 35.249233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897436, 34.190929, 35.260818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079871, -0.174014, 0.981499,
		0.542209, -0.818650, -0.189266,
		0.836439, 0.547294, 0.028966,
		30.148369, 34.355118, 35.269508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029383, 33.585960, 35.820522>,  <29.562860, 33.972012, 35.249233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029383, 33.585960, 35.820522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162651, 33.960472, 35.776035>,  <30.242613, 34.185181, 35.749344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162651, 33.960472, 35.776035>,  <30.029383, 33.585960, 35.820522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162651, 33.960472, 35.776035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016437, 0.112169, 0.993553,
		0.942723, -0.332852, 0.021982,
		0.333172, 0.936284, -0.111215,
		30.262602, 34.241356, 35.742672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521669, 33.658886, 36.349163>,  <30.029383, 33.585960, 35.820522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521669, 33.658886, 36.349163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468122, 34.050903, 36.290375>,  <30.435995, 34.286114, 36.255104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468122, 34.050903, 36.290375>,  <30.521669, 33.658886, 36.349163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468122, 34.050903, 36.290375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091773, 0.159927, 0.982853,
		0.986741, 0.118083, -0.111351,
		-0.133867, 0.980041, -0.146969,
		30.427963, 34.344917, 36.246284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183741, 34.020733, 36.544018>,  <30.521669, 33.658886, 36.349163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183741, 34.020733, 36.544018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867153, 34.264267, 36.565556>,  <30.677200, 34.410389, 36.578480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867153, 34.264267, 36.565556>,  <31.183741, 34.020733, 36.544018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867153, 34.264267, 36.565556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248028, 0.239407, 0.938705,
		0.558626, 0.756309, -0.340491,
		-0.791466, 0.608836, 0.053847,
		30.629713, 34.446918, 36.581711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374027, 34.769196, 36.540737>,  <31.183741, 34.020733, 36.544018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374027, 34.769196, 36.540737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067051, 34.614223, 36.745064>,  <30.882866, 34.521240, 36.867661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067051, 34.614223, 36.745064>,  <31.374027, 34.769196, 36.540737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067051, 34.614223, 36.745064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457794, 0.226655, 0.859681,
		-0.448843, 0.893604, 0.003417,
		-0.767440, -0.387426, 0.510819,
		30.836819, 34.497997, 36.898308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124407, 35.295620, 36.891190>,  <31.374027, 34.769196, 36.540737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124407, 35.295620, 36.891190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134066, 34.923264, 37.036987>,  <31.139862, 34.699848, 37.124466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134066, 34.923264, 37.036987>,  <31.124407, 35.295620, 36.891190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134066, 34.923264, 37.036987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382619, 0.345442, 0.856897,
		-0.923590, 0.118767, 0.364520,
		0.024149, -0.930894, 0.364490,
		31.141310, 34.643997, 37.146336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662098, 35.356262, 37.529804>,  <31.124407, 35.295620, 36.891190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662098, 35.356262, 37.529804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970377, 35.101765, 37.515839>,  <31.155344, 34.949066, 37.507458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970377, 35.101765, 37.515839>,  <30.662098, 35.356262, 37.529804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970377, 35.101765, 37.515839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562862, 0.654072, 0.505348,
		-0.298686, -0.409125, 0.862209,
		0.770697, -0.636244, -0.034919,
		31.201586, 34.910892, 37.505363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105204, 35.638042, 38.140297>,  <30.662098, 35.356262, 37.529804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105204, 35.638042, 38.140297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309065, 35.421070, 37.873158>,  <31.431381, 35.290886, 37.712875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309065, 35.421070, 37.873158>,  <31.105204, 35.638042, 38.140297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309065, 35.421070, 37.873158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838854, 0.485818, 0.245570,
		0.191247, -0.685382, 0.702621,
		0.509655, -0.542432, -0.667847,
		31.461962, 35.258339, 37.672802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778481, 35.395947, 38.430138>,  <31.105204, 35.638042, 38.140297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778481, 35.395947, 38.430138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814543, 35.456795, 38.036442>,  <31.836180, 35.493301, 37.800224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814543, 35.456795, 38.036442>,  <31.778481, 35.395947, 38.430138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814543, 35.456795, 38.036442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747148, 0.643118, 0.167835,
		0.658515, -0.750506, -0.055674,
		0.090156, 0.152119, -0.984242,
		31.841589, 35.502430, 37.741169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460167, 35.220955, 38.168556>,  <31.778481, 35.395947, 38.430138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460167, 35.220955, 38.168556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304638, 35.534393, 37.974735>,  <32.211323, 35.722458, 37.858440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304638, 35.534393, 37.974735>,  <32.460167, 35.220955, 38.168556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304638, 35.534393, 37.974735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762262, 0.569010, 0.308519,
		0.517472, -0.249400, -0.818549,
		-0.388818, 0.783599, -0.484555,
		32.187992, 35.769474, 37.829369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925987, 35.582886, 37.844994>,  <32.460167, 35.220955, 38.168556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925987, 35.582886, 37.844994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658852, 35.871536, 37.917923>,  <32.498569, 36.044727, 37.961681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658852, 35.871536, 37.917923>,  <32.925987, 35.582886, 37.844994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658852, 35.871536, 37.917923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742048, 0.626452, 0.238585,
		0.057950, 0.294632, -0.953852,
		-0.667838, 0.721630, 0.182328,
		32.458500, 36.088024, 37.972622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985012, 36.157131, 37.345783>,  <32.925987, 35.582886, 37.844994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985012, 36.157131, 37.345783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912430, 36.217999, 37.734406>,  <32.868881, 36.254517, 37.967579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912430, 36.217999, 37.734406>,  <32.985012, 36.157131, 37.345783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912430, 36.217999, 37.734406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874431, 0.476988, 0.088611,
		-0.449936, 0.865637, -0.219612,
		-0.181458, 0.152167, 0.971555,
		32.857994, 36.263649, 38.025871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621040, 35.934284, 37.745144>,  <32.985012, 36.157131, 37.345783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621040, 35.934284, 37.745144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888214, 36.110348, 37.505100>,  <34.048519, 36.215984, 37.361076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888214, 36.110348, 37.505100>,  <33.621040, 35.934284, 37.745144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888214, 36.110348, 37.505100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740916, -0.469222, 0.480494,
		-0.070088, -0.765565, -0.639529,
		0.667930, 0.440160, -0.600106,
		34.088593, 36.242397, 37.325069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102135, 35.355652, 37.600647>,  <33.621040, 35.934284, 37.745144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102135, 35.355652, 37.600647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284302, 35.708672, 37.553837>,  <34.393600, 35.920483, 37.525749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284302, 35.708672, 37.553837>,  <34.102135, 35.355652, 37.600647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284302, 35.708672, 37.553837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732985, -0.297090, 0.611940,
		0.505301, -0.364468, -0.782198,
		0.455416, 0.882553, -0.117029,
		34.420925, 35.973438, 37.518726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695457, 35.123913, 37.388866>,  <34.102135, 35.355652, 37.600647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695457, 35.123913, 37.388866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758747, 35.488892, 37.539814>,  <34.796722, 35.707878, 37.630383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758747, 35.488892, 37.539814>,  <34.695457, 35.123913, 37.388866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758747, 35.488892, 37.539814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768921, -0.353627, 0.532643,
		0.619456, 0.205892, -0.757550,
		0.158223, 0.912445, 0.377371,
		34.806213, 35.762627, 37.653027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437778, 35.166138, 37.350765>,  <34.695457, 35.123913, 37.388866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437778, 35.166138, 37.350765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304840, 35.433208, 37.617226>,  <35.225079, 35.593452, 37.777100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304840, 35.433208, 37.617226>,  <35.437778, 35.166138, 37.350765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304840, 35.433208, 37.617226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735122, -0.259114, 0.626463,
		0.590885, 0.697900, -0.404711,
		-0.332342, 0.667680, 0.666147,
		35.205139, 35.633511, 37.817070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986961, 35.564125, 37.654243>,  <35.437778, 35.166138, 37.350765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986961, 35.564125, 37.654243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712170, 35.614925, 37.940437>,  <35.547295, 35.645405, 38.112156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712170, 35.614925, 37.940437>,  <35.986961, 35.564125, 37.654243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712170, 35.614925, 37.940437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649443, -0.334412, 0.682929,
		0.326004, 0.933830, 0.147253,
		-0.686982, 0.127005, 0.715489,
		35.506077, 35.653027, 38.155083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370052, 35.840244, 38.145695>,  <35.986961, 35.564125, 37.654243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370052, 35.840244, 38.145695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038048, 35.719822, 38.333504>,  <35.838844, 35.647568, 38.446190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038048, 35.719822, 38.333504>,  <36.370052, 35.840244, 38.145695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038048, 35.719822, 38.333504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551301, -0.315239, 0.772458,
		-0.084541, 0.899995, 0.427623,
		-0.830012, -0.301054, 0.469518,
		35.789043, 35.629505, 38.474358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404198, 36.202984, 38.734623>,  <36.370052, 35.840244, 38.145695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404198, 36.202984, 38.734623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168449, 35.886173, 38.798298>,  <36.027000, 35.696087, 38.836502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168449, 35.886173, 38.798298>,  <36.404198, 36.202984, 38.734623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168449, 35.886173, 38.798298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612093, -0.309191, 0.727834,
		-0.527246, 0.526397, 0.667021,
		-0.589367, -0.792027, 0.159184,
		35.991638, 35.648563, 38.846054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491943, 36.202335, 39.435070>,  <36.404198, 36.202984, 38.734623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491943, 36.202335, 39.435070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345875, 35.842903, 39.337746>,  <36.258232, 35.627243, 39.279350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345875, 35.842903, 39.337746>,  <36.491943, 36.202335, 39.435070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345875, 35.842903, 39.337746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687969, -0.436565, 0.579749,
		-0.627174, 0.044317, 0.777618,
		-0.365173, -0.898581, -0.243313,
		36.236324, 35.573330, 39.264751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406937, 35.921398, 40.004608>,  <36.491943, 36.202335, 39.435070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406937, 35.921398, 40.004608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420948, 35.615696, 39.747025>,  <36.429356, 35.432274, 39.592472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420948, 35.615696, 39.747025>,  <36.406937, 35.921398, 40.004608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420948, 35.615696, 39.747025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570766, -0.513637, 0.640627,
		-0.820365, -0.389989, 0.418221,
		0.035024, -0.764255, -0.643963,
		36.431454, 35.386421, 39.553837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194584, 35.401417, 40.404469>,  <36.406937, 35.921398, 40.004608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194584, 35.401417, 40.404469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373589, 35.215961, 40.098587>,  <36.480991, 35.104691, 39.915058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373589, 35.215961, 40.098587>,  <36.194584, 35.401417, 40.404469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373589, 35.215961, 40.098587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483508, -0.593907, 0.643036,
		-0.752297, -0.657509, -0.041611,
		0.447515, -0.463635, -0.764705,
		36.507843, 35.076870, 39.869175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978119, 34.703320, 40.436333>,  <36.194584, 35.401417, 40.404469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978119, 34.703320, 40.436333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306343, 34.702015, 40.207710>,  <36.503277, 34.701233, 40.070538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306343, 34.702015, 40.207710>,  <35.978119, 34.703320, 40.436333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306343, 34.702015, 40.207710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372940, -0.754733, 0.539717,
		-0.433128, -0.656024, -0.618088,
		0.820558, -0.003257, -0.571553,
		36.552509, 34.701038, 40.036243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044739, 33.979950, 40.229565>,  <35.978119, 34.703320, 40.436333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044739, 33.979950, 40.229565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392109, 34.174488, 40.190971>,  <36.600529, 34.291210, 40.167816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392109, 34.174488, 40.190971>,  <36.044739, 33.979950, 40.229565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392109, 34.174488, 40.190971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480692, -0.778112, 0.404323,
		0.121569, -0.397500, -0.909513,
		0.868422, 0.486349, -0.096481,
		36.652634, 34.320393, 40.162025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499725, 33.520630, 39.915001>,  <36.044739, 33.979950, 40.229565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499725, 33.520630, 39.915001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700180, 33.791634, 40.130348>,  <36.820454, 33.954235, 40.259556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700180, 33.791634, 40.130348>,  <36.499725, 33.520630, 39.915001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700180, 33.791634, 40.130348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572760, -0.726041, 0.380540,
		0.648696, 0.117652, -0.751899,
		0.501138, 0.677512, 0.538366,
		36.850521, 33.994888, 40.291859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245041, 33.249329, 39.960175>,  <36.499725, 33.520630, 39.915001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245041, 33.249329, 39.960175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203491, 33.507694, 40.262699>,  <37.178562, 33.662716, 40.444214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203491, 33.507694, 40.262699>,  <37.245041, 33.249329, 39.960175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203491, 33.507694, 40.262699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435140, -0.654267, 0.618537,
		0.894351, 0.393350, -0.213102,
		-0.103876, 0.645918, 0.756307,
		37.172329, 33.701469, 40.489590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900700, 33.322208, 40.257637>,  <37.245041, 33.249329, 39.960175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900700, 33.322208, 40.257637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642075, 33.427608, 40.544003>,  <37.486900, 33.490849, 40.715820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642075, 33.427608, 40.544003>,  <37.900700, 33.322208, 40.257637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642075, 33.427608, 40.544003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540372, -0.504227, 0.673612,
		0.538476, 0.822389, 0.183628,
		-0.646562, 0.263496, 0.715910,
		37.448105, 33.506657, 40.758774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302292, 33.428009, 40.942387>,  <37.900700, 33.322208, 40.257637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302292, 33.428009, 40.942387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934723, 33.382027, 41.093315>,  <37.714184, 33.354439, 41.183872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934723, 33.382027, 41.093315>,  <38.302292, 33.428009, 40.942387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934723, 33.382027, 41.093315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385411, -0.465245, 0.796872,
		0.083945, 0.877686, 0.471826,
		-0.918919, -0.114954, 0.377325,
		37.659046, 33.347542, 41.206512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452087, 33.401051, 41.663311>,  <38.302292, 33.428009, 40.942387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452087, 33.401051, 41.663311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070168, 33.286453, 41.631622>,  <37.841015, 33.217693, 41.612610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070168, 33.286453, 41.631622>,  <38.452087, 33.401051, 41.663311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070168, 33.286453, 41.631622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080607, -0.506101, 0.858699,
		-0.286106, 0.813501, 0.506319,
		-0.954801, -0.286492, -0.079225,
		37.783726, 33.200504, 41.607853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192116, 33.538593, 42.356037>,  <38.452087, 33.401051, 41.663311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192116, 33.538593, 42.356037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933952, 33.290447, 42.177784>,  <37.779053, 33.141560, 42.070831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933952, 33.290447, 42.177784>,  <38.192116, 33.538593, 42.356037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933952, 33.290447, 42.177784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119696, -0.658352, 0.743132,
		-0.754399, 0.426285, 0.499163,
		-0.645411, -0.620366, -0.445635,
		37.740330, 33.104336, 42.044094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845879, 33.295620, 42.892445>,  <38.192116, 33.538593, 42.356037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845879, 33.295620, 42.892445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752274, 33.029072, 42.609264>,  <37.696110, 32.869144, 42.439358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752274, 33.029072, 42.609264>,  <37.845879, 33.295620, 42.892445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752274, 33.029072, 42.609264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136571, -0.743480, 0.654664,
		-0.962594, 0.056513, 0.264989,
		-0.234011, -0.666366, -0.707952,
		37.682072, 32.829163, 42.396877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254574, 32.918186, 43.041798>,  <37.845879, 33.295620, 42.892445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254574, 32.918186, 43.041798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477982, 32.694820, 42.796444>,  <37.612026, 32.560802, 42.649231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477982, 32.694820, 42.796444>,  <37.254574, 32.918186, 43.041798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477982, 32.694820, 42.796444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098757, -0.689441, 0.717578,
		-0.823593, -0.461355, -0.329917,
		0.558517, -0.558411, -0.613381,
		37.645535, 32.527298, 42.612431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016937, 32.195957, 43.109932>,  <37.254574, 32.918186, 43.041798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016937, 32.195957, 43.109932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360767, 32.113819, 42.922760>,  <37.567066, 32.064537, 42.810455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360767, 32.113819, 42.922760>,  <37.016937, 32.195957, 43.109932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360767, 32.113819, 42.922760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137998, -0.788409, 0.599473,
		-0.492018, -0.579867, -0.649362,
		0.859578, -0.205341, -0.467932,
		37.618641, 32.052216, 42.782379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018475, 31.446226, 42.926476>,  <37.016937, 32.195957, 43.109932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018475, 31.446226, 42.926476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392986, 31.586477, 42.934868>,  <37.617695, 31.670628, 42.939903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392986, 31.586477, 42.934868>,  <37.018475, 31.446226, 42.926476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392986, 31.586477, 42.934868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287296, -0.798804, 0.528558,
		0.202090, -0.488849, -0.848638,
		0.936280, 0.350627, 0.020986,
		37.673870, 31.691666, 42.941162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430958, 30.944242, 42.696095>,  <37.018475, 31.446226, 42.926476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430958, 30.944242, 42.696095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672695, 31.174057, 42.916882>,  <37.817738, 31.311947, 43.049355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672695, 31.174057, 42.916882>,  <37.430958, 30.944242, 42.696095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672695, 31.174057, 42.916882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347465, -0.813510, 0.466336,
		0.716961, -0.090039, -0.691274,
		0.604347, 0.574538, 0.551970,
		37.854000, 31.346418, 43.082474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063648, 30.480806, 42.768559>,  <37.430958, 30.944242, 42.696095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063648, 30.480806, 42.768559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097801, 30.754013, 43.058716>,  <38.118294, 30.917938, 43.232811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097801, 30.754013, 43.058716>,  <38.063648, 30.480806, 42.768559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097801, 30.754013, 43.058716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608122, -0.612438, 0.505081,
		0.789238, 0.398001, -0.467652,
		0.085386, 0.683019, 0.725393,
		38.123417, 30.958920, 43.276333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756363, 30.390772, 43.077374>,  <38.063648, 30.480806, 42.768559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756363, 30.390772, 43.077374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577240, 30.617424, 43.354038>,  <38.469765, 30.753416, 43.520039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577240, 30.617424, 43.354038>,  <38.756363, 30.390772, 43.077374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577240, 30.617424, 43.354038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499327, -0.483217, 0.719148,
		0.741715, 0.667406, -0.066545,
		-0.447808, 0.566631, 0.691663,
		38.442898, 30.787413, 43.561539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260956, 30.538979, 43.550114>,  <38.756363, 30.390772, 43.077374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260956, 30.538979, 43.550114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918419, 30.595921, 43.748676>,  <38.712898, 30.630085, 43.867813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918419, 30.595921, 43.748676>,  <39.260956, 30.538979, 43.550114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918419, 30.595921, 43.748676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354724, -0.536441, 0.765769,
		0.375302, 0.831845, 0.408879,
		-0.856340, 0.142356, 0.496403,
		38.661518, 30.638628, 43.897598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470558, 30.752918, 44.242355>,  <39.260956, 30.538979, 43.550114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470558, 30.752918, 44.242355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093380, 30.620050, 44.233345>,  <38.867073, 30.540329, 44.227940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093380, 30.620050, 44.233345>,  <39.470558, 30.752918, 44.242355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093380, 30.620050, 44.233345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142112, -0.462770, 0.875013,
		-0.301080, 0.821892, 0.483574,
		-0.942950, -0.332171, -0.022530,
		38.810493, 30.520399, 44.226585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076656, 30.957701, 44.902370>,  <39.470558, 30.752918, 44.242355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076656, 30.957701, 44.902370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902706, 30.623152, 44.768887>,  <38.798336, 30.422422, 44.688797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902706, 30.623152, 44.768887>,  <39.076656, 30.957701, 44.902370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902706, 30.623152, 44.768887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073210, -0.402194, 0.912623,
		-0.897509, 0.372448, 0.236136,
		-0.434877, -0.836375, -0.333706,
		38.772243, 30.372240, 44.668774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640484, 30.759163, 45.412304>,  <39.076656, 30.957701, 44.902370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640484, 30.759163, 45.412304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674843, 30.412973, 45.214890>,  <38.695457, 30.205259, 45.096443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674843, 30.412973, 45.214890>,  <38.640484, 30.759163, 45.412304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674843, 30.412973, 45.214890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094654, -0.486033, 0.868800,
		-0.991797, -0.121347, 0.040170,
		0.085902, -0.865475, -0.493532,
		38.700615, 30.153332, 45.066830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136017, 30.368061, 45.713314>,  <38.640484, 30.759163, 45.412304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136017, 30.368061, 45.713314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377430, 30.102575, 45.536575>,  <38.522278, 29.943283, 45.430531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377430, 30.102575, 45.536575>,  <38.136017, 30.368061, 45.713314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377430, 30.102575, 45.536575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085009, -0.497435, 0.863326,
		-0.792793, -0.558608, -0.243798,
		0.603534, -0.663714, -0.441850,
		38.558491, 29.903461, 45.404022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010235, 29.817389, 46.100658>,  <38.136017, 30.368061, 45.713314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010235, 29.817389, 46.100658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337238, 29.699453, 45.902771>,  <38.533440, 29.628693, 45.784039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337238, 29.699453, 45.902771>,  <38.010235, 29.817389, 46.100658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337238, 29.699453, 45.902771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159370, -0.709657, 0.686285,
		-0.553426, -0.639888, -0.533163,
		0.817509, -0.294838, -0.494722,
		38.582493, 29.611002, 45.754353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947533, 29.110283, 45.915329>,  <38.010235, 29.817389, 46.100658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947533, 29.110283, 45.915329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336964, 29.200087, 45.932026>,  <38.570621, 29.253969, 45.942043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336964, 29.200087, 45.932026>,  <37.947533, 29.110283, 45.915329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336964, 29.200087, 45.932026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161874, -0.807437, 0.567311,
		0.161072, -0.545564, -0.822445,
		0.973577, 0.224510, 0.041743,
		38.629036, 29.267439, 45.944550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320469, 28.517490, 45.834312>,  <37.947533, 29.110283, 45.915329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320469, 28.517490, 45.834312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580349, 28.740355, 46.041183>,  <38.736275, 28.874073, 46.165306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580349, 28.740355, 46.041183>,  <38.320469, 28.517490, 45.834312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580349, 28.740355, 46.041183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164213, -0.767117, 0.620133,
		0.742247, -0.317971, -0.589885,
		0.649695, 0.557159, 0.517175,
		38.775257, 28.907501, 46.196335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859535, 28.127522, 45.855766>,  <38.320469, 28.517490, 45.834312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859535, 28.127522, 45.855766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902306, 28.393028, 46.151871>,  <38.927967, 28.552332, 46.329533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902306, 28.393028, 46.151871>,  <38.859535, 28.127522, 45.855766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902306, 28.393028, 46.151871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122621, -0.747647, 0.652678,
		0.986677, 0.020982, -0.161335,
		0.106927, 0.663765, 0.740258,
		38.934383, 28.592157, 46.373947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430088, 27.943432, 46.252865>,  <38.859535, 28.127522, 45.855766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430088, 27.943432, 46.252865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200340, 28.169941, 46.489319>,  <39.062492, 28.305845, 46.631191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200340, 28.169941, 46.489319>,  <39.430088, 27.943432, 46.252865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200340, 28.169941, 46.489319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017252, -0.713593, 0.700348,
		0.818414, 0.412457, 0.400097,
		-0.574370, 0.566272, 0.591130,
		39.028030, 28.339823, 46.666656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835655, 28.075312, 46.900520>,  <39.430088, 27.943432, 46.252865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835655, 28.075312, 46.900520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448223, 28.130335, 46.983402>,  <39.215763, 28.163349, 47.033131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448223, 28.130335, 46.983402>,  <39.835655, 28.075312, 46.900520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448223, 28.130335, 46.983402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064241, -0.666486, 0.742745,
		0.240272, 0.732717, 0.636706,
		-0.968577, 0.137558, 0.207209,
		39.157650, 28.171602, 47.045567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841431, 28.001696, 47.587528>,  <39.835655, 28.075312, 46.900520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841431, 28.001696, 47.587528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454540, 28.000891, 47.485962>,  <39.222404, 28.000408, 47.425022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454540, 28.000891, 47.485962>,  <39.841431, 28.001696, 47.587528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454540, 28.000891, 47.485962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208311, -0.565520, 0.797993,
		-0.145200, 0.824732, 0.546566,
		-0.967225, -0.002013, -0.253915,
		39.164371, 28.000286, 47.409786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538952, 28.094536, 48.104359>,  <39.841431, 28.001696, 47.587528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538952, 28.094536, 48.104359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262398, 27.912382, 47.879997>,  <39.096466, 27.803089, 47.745380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262398, 27.912382, 47.879997>,  <39.538952, 28.094536, 48.104359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262398, 27.912382, 47.879997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182378, -0.641203, 0.745384,
		-0.699088, 0.617644, 0.360267,
		-0.691386, -0.455384, -0.560902,
		39.054981, 27.775766, 47.711727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098488, 27.815401, 48.611778>,  <39.538952, 28.094536, 48.104359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098488, 27.815401, 48.611778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949036, 27.645067, 48.282158>,  <38.859364, 27.542868, 48.084385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949036, 27.645067, 48.282158>,  <39.098488, 27.815401, 48.611778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949036, 27.645067, 48.282158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344005, -0.761427, 0.549445,
		-0.861429, 0.488769, 0.138005,
		-0.373632, -0.425834, -0.824054,
		38.836945, 27.517317, 48.034943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309711, 27.722553, 48.706326>,  <39.098488, 27.815401, 48.611778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309711, 27.722553, 48.706326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495495, 27.465172, 48.462936>,  <38.606964, 27.310743, 48.316902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495495, 27.465172, 48.462936>,  <38.309711, 27.722553, 48.706326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495495, 27.465172, 48.462936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305857, -0.761355, 0.571655,
		-0.831101, -0.079403, -0.550423,
		0.464459, -0.643454, -0.608477,
		38.634834, 27.272135, 48.280396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844173, 27.183994, 48.727383>,  <38.309711, 27.722553, 48.706326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844173, 27.183994, 48.727383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186527, 27.040863, 48.578026>,  <38.391941, 26.954985, 48.488411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186527, 27.040863, 48.578026>,  <37.844173, 27.183994, 48.727383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186527, 27.040863, 48.578026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125987, -0.844503, 0.520521,
		-0.501588, -0.398463, -0.767878,
		0.855884, -0.357830, -0.373391,
		38.443291, 26.933514, 48.466007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834690, 26.423349, 48.483711>,  <37.844173, 27.183994, 48.727383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834690, 26.423349, 48.483711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175045, 26.548912, 48.652214>,  <38.379257, 26.624250, 48.753315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175045, 26.548912, 48.652214>,  <37.834690, 26.423349, 48.483711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175045, 26.548912, 48.652214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116271, -0.669452, 0.733699,
		0.512328, -0.673272, -0.533127,
		0.850882, 0.313908, 0.421261,
		38.430309, 26.643084, 48.778591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020672, 25.886196, 48.716122>,  <37.834690, 26.423349, 48.483711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020672, 25.886196, 48.716122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230331, 26.142811, 48.940155>,  <38.356129, 26.296780, 49.074574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230331, 26.142811, 48.940155>,  <38.020672, 25.886196, 48.716122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230331, 26.142811, 48.940155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132279, -0.588350, 0.797713,
		0.841288, -0.492211, -0.223524,
		0.524154, 0.641539, 0.560081,
		38.387577, 26.335272, 49.108181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573498, 25.589649, 49.120518>,  <38.020672, 25.886196, 48.716122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573498, 25.589649, 49.120518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518696, 25.925571, 49.330647>,  <38.485813, 26.127125, 49.456722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518696, 25.925571, 49.330647>,  <38.573498, 25.589649, 49.120518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518696, 25.925571, 49.330647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060708, -0.536441, 0.841752,
		0.988708, 0.083434, 0.124479,
		-0.137006, 0.839804, 0.525318,
		38.477592, 26.177513, 49.488243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088936, 25.879932, 49.664494>,  <38.573498, 25.589649, 49.120518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088936, 25.879932, 49.664494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702377, 25.925797, 49.756519>,  <38.470444, 25.953316, 49.811733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702377, 25.925797, 49.756519>,  <39.088936, 25.879932, 49.664494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702377, 25.925797, 49.756519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083733, -0.705777, 0.703469,
		0.243035, 0.699094, 0.672460,
		-0.966397, 0.114661, 0.230066,
		38.412457, 25.960196, 49.825539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370682, 25.612614, 49.035904>,  <39.088936, 25.879932, 49.664494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370682, 25.612614, 49.035904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758007, 25.574574, 48.943531>,  <39.990402, 25.551750, 48.888107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758007, 25.574574, 48.943531>,  <39.370682, 25.612614, 49.035904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758007, 25.574574, 48.943531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241607, -0.122477, -0.962614,
		0.063261, 0.987904, -0.141572,
		0.968310, -0.095101, -0.230937,
		40.048500, 25.546043, 48.874249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344349, 26.070839, 48.419075>,  <39.370682, 25.612614, 49.035904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344349, 26.070839, 48.419075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659401, 25.825493, 48.442486>,  <39.848431, 25.678286, 48.456532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659401, 25.825493, 48.442486>,  <39.344349, 26.070839, 48.419075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659401, 25.825493, 48.442486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090401, -0.209000, -0.973728,
		0.609485, 0.761643, -0.220063,
		0.787627, -0.613367, 0.058530,
		39.895687, 25.641483, 48.460045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934822, 26.167850, 47.875011>,  <39.344349, 26.070839, 48.419075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934822, 26.167850, 47.875011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885532, 25.785557, 47.981888>,  <39.855961, 25.556181, 48.046013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885532, 25.785557, 47.981888>,  <39.934822, 26.167850, 47.875011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885532, 25.785557, 47.981888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122240, -0.281813, -0.951650,
		0.984822, -0.084601, 0.151554,
		-0.123220, -0.955732, 0.267194,
		39.848568, 25.498837, 48.062046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473526, 25.781532, 47.422558>,  <39.934822, 26.167850, 47.875011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473526, 25.781532, 47.422558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182156, 25.538757, 47.549694>,  <40.007332, 25.393093, 47.625977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182156, 25.538757, 47.549694>,  <40.473526, 25.781532, 47.422558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182156, 25.538757, 47.549694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023132, -0.441866, -0.896783,
		0.684734, -0.660592, 0.307827,
		-0.728426, -0.606936, 0.317842,
		39.963627, 25.356676, 47.645046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642632, 25.047287, 47.385681>,  <40.473526, 25.781532, 47.422558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642632, 25.047287, 47.385681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256237, 25.118399, 47.310574>,  <40.024399, 25.161066, 47.265507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256237, 25.118399, 47.310574>,  <40.642632, 25.047287, 47.385681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256237, 25.118399, 47.310574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106493, -0.388209, -0.915398,
		-0.235632, -0.904262, 0.356074,
		-0.965990, 0.177778, -0.187772,
		39.966438, 25.171732, 47.254242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485912, 24.665161, 46.899120>,  <40.642632, 25.047287, 47.385681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485912, 24.665161, 46.899120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178745, 24.920214, 46.874702>,  <39.994446, 25.073246, 46.860050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178745, 24.920214, 46.874702>,  <40.485912, 24.665161, 46.899120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178745, 24.920214, 46.874702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014842, -0.077568, -0.996877,
		-0.640377, -0.766424, 0.050102,
		-0.767917, 0.637634, -0.061048,
		39.948372, 25.111504, 46.856388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922153, 24.328552, 46.512764>,  <40.485912, 24.665161, 46.899120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922153, 24.328552, 46.512764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858047, 24.722435, 46.485428>,  <39.819584, 24.958765, 46.469025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858047, 24.722435, 46.485428>,  <39.922153, 24.328552, 46.512764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858047, 24.722435, 46.485428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080103, -0.081983, -0.993409,
		-0.983818, -0.153735, 0.092017,
		-0.160265, 0.984705, -0.068342,
		39.809967, 25.017847, 46.464924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390247, 24.380220, 46.009563>,  <39.922153, 24.328552, 46.512764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390247, 24.380220, 46.009563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558250, 24.742952, 45.995403>,  <39.659054, 24.960590, 45.986908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558250, 24.742952, 45.995403>,  <39.390247, 24.380220, 46.009563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558250, 24.742952, 45.995403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171683, 0.041088, -0.984295,
		-0.891132, 0.419493, 0.172945,
		0.420011, 0.906828, -0.035405,
		39.684254, 25.015001, 45.984783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924957, 24.842594, 45.665035>,  <39.390247, 24.380220, 46.009563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924957, 24.842594, 45.665035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274258, 25.029863, 45.610996>,  <39.483837, 25.142225, 45.578575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274258, 25.029863, 45.610996>,  <38.924957, 24.842594, 45.665035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274258, 25.029863, 45.610996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164178, 0.021659, -0.986193,
		-0.458784, 0.883371, 0.095777,
		0.873248, 0.468174, -0.135093,
		39.536232, 25.170315, 45.570469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808670, 25.425983, 45.208424>,  <38.924957, 24.842594, 45.665035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808670, 25.425983, 45.208424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202068, 25.370264, 45.162235>,  <39.438107, 25.336832, 45.134521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202068, 25.370264, 45.162235>,  <38.808670, 25.425983, 45.208424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202068, 25.370264, 45.162235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062419, 0.337785, -0.939151,
		0.169824, 0.930859, 0.323515,
		0.983496, -0.139297, -0.115467,
		39.497116, 25.328474, 45.127594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823673, 25.924368, 44.733501>,  <38.808670, 25.425983, 45.208424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823673, 25.924368, 44.733501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183743, 25.750301, 44.726383>,  <39.399784, 25.645861, 44.722115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183743, 25.750301, 44.726383>,  <38.823673, 25.924368, 44.733501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183743, 25.750301, 44.726383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182683, 0.414345, -0.891597,
		0.395364, 0.799343, 0.452480,
		0.900174, -0.435166, -0.017791,
		39.453796, 25.619751, 44.721046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343479, 26.386747, 44.658596>,  <38.823673, 25.924368, 44.733501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343479, 26.386747, 44.658596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489960, 26.045395, 44.510197>,  <39.577847, 25.840584, 44.421158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489960, 26.045395, 44.510197>,  <39.343479, 26.386747, 44.658596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489960, 26.045395, 44.510197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090231, 0.429375, -0.898608,
		0.926152, 0.295594, 0.234238,
		0.366199, -0.853382, -0.370994,
		39.599819, 25.789381, 44.398899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020672, 26.540541, 44.375668>,  <39.343479, 26.386747, 44.658596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020672, 26.540541, 44.375668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892693, 26.200621, 44.208107>,  <39.815907, 25.996670, 44.107571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892693, 26.200621, 44.208107>,  <40.020672, 26.540541, 44.375668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892693, 26.200621, 44.208107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007890, 0.439735, -0.898093,
		0.947403, -0.290645, -0.133986,
		-0.319945, -0.849799, -0.418900,
		39.796711, 25.945681, 44.082436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235516, 26.755848, 43.777763>,  <40.020672, 26.540541, 44.375668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235516, 26.755848, 43.777763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048214, 26.409313, 43.708256>,  <39.935833, 26.201393, 43.666550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048214, 26.409313, 43.708256>,  <40.235516, 26.755848, 43.777763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048214, 26.409313, 43.708256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010082, 0.201892, -0.979356,
		0.883536, -0.456836, -0.103271,
		-0.468254, -0.866338, -0.173773,
		39.907738, 26.149412, 43.656124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649776, 26.349148, 43.285797>,  <40.235516, 26.755848, 43.777763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649776, 26.349148, 43.285797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273922, 26.223589, 43.231323>,  <40.048409, 26.148254, 43.198639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273922, 26.223589, 43.231323>,  <40.649776, 26.349148, 43.285797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273922, 26.223589, 43.231323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032691, 0.313826, -0.948917,
		0.340603, -0.896091, -0.284622,
		-0.939639, -0.313899, -0.136184,
		39.992031, 26.129419, 43.190468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669346, 25.983578, 42.642384>,  <40.649776, 26.349148, 43.285797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669346, 25.983578, 42.642384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290737, 26.079718, 42.728489>,  <40.063572, 26.137402, 42.780151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290737, 26.079718, 42.728489>,  <40.669346, 25.983578, 42.642384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290737, 26.079718, 42.728489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102290, 0.409214, -0.906687,
		-0.306011, -0.880213, -0.362742,
		-0.946517, 0.240351, 0.215261,
		40.006783, 26.151823, 42.793068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260559, 25.701733, 42.084454>,  <40.669346, 25.983578, 42.642384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260559, 25.701733, 42.084454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067032, 26.004364, 42.260414>,  <39.950916, 26.185942, 42.365990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067032, 26.004364, 42.260414>,  <40.260559, 25.701733, 42.084454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067032, 26.004364, 42.260414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120782, 0.440110, -0.889784,
		-0.866793, -0.483627, -0.121553,
		-0.483820, 0.756576, 0.439897,
		39.921886, 26.231337, 42.392384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729656, 25.815397, 41.652546>,  <40.260559, 25.701733, 42.084454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729656, 25.815397, 41.652546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746006, 26.157572, 41.859062>,  <39.755817, 26.362877, 41.982971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746006, 26.157572, 41.859062>,  <39.729656, 25.815397, 41.652546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746006, 26.157572, 41.859062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295287, 0.503985, -0.811668,
		-0.954534, -0.119274, 0.273201,
		0.040879, 0.855438, 0.516290,
		39.758270, 26.414204, 42.013950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057079, 26.082645, 41.500076>,  <39.729656, 25.815397, 41.652546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057079, 26.082645, 41.500076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319935, 26.349302, 41.640789>,  <39.477650, 26.509296, 41.725216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319935, 26.349302, 41.640789>,  <39.057079, 26.082645, 41.500076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319935, 26.349302, 41.640789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309930, 0.664393, -0.680092,
		-0.687101, 0.337889, 0.643213,
		0.657142, 0.666643, 0.351783,
		39.517078, 26.549295, 41.746323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682858, 26.699444, 41.550102>,  <39.057079, 26.082645, 41.500076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682858, 26.699444, 41.550102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074699, 26.779081, 41.539227>,  <39.309803, 26.826864, 41.532700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074699, 26.779081, 41.539227>,  <38.682858, 26.699444, 41.550102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074699, 26.779081, 41.539227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173079, 0.767275, -0.617522,
		-0.102080, 0.609633, 0.786084,
		0.979604, 0.199092, -0.027191,
		39.368580, 26.838808, 41.531071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809944, 27.430693, 41.663200>,  <38.682858, 26.699444, 41.550102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809944, 27.430693, 41.663200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146286, 27.330742, 41.471149>,  <39.348091, 27.270771, 41.355919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146286, 27.330742, 41.471149>,  <38.809944, 27.430693, 41.663200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146286, 27.330742, 41.471149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048551, 0.848659, -0.526707,
		0.539079, 0.466195, 0.701467,
		0.840855, -0.249879, -0.480129,
		39.398544, 27.255777, 41.327110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302460, 27.989931, 41.725502>,  <38.809944, 27.430693, 41.663200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302460, 27.989931, 41.725502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428307, 27.777910, 41.410526>,  <39.503815, 27.650698, 41.221542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428307, 27.777910, 41.410526>,  <39.302460, 27.989931, 41.725502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428307, 27.777910, 41.410526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043508, 0.820641, -0.569786,
		0.948221, 0.213524, 0.235125,
		0.314616, -0.530054, -0.787439,
		39.522690, 27.618895, 41.174294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945293, 28.445311, 41.364529>,  <39.302460, 27.989931, 41.725502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945293, 28.445311, 41.364529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785927, 28.195581, 41.095757>,  <39.690308, 28.045744, 40.934494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785927, 28.195581, 41.095757>,  <39.945293, 28.445311, 41.364529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785927, 28.195581, 41.095757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108715, 0.759560, -0.641288,
		0.910740, -0.182449, -0.370492,
		-0.398413, -0.624325, -0.671926,
		39.666401, 28.008284, 40.894180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153809, 28.707085, 40.715179>,  <39.945293, 28.445311, 41.364529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153809, 28.707085, 40.715179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869587, 28.449028, 40.602818>,  <39.699055, 28.294195, 40.535400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869587, 28.449028, 40.602818>,  <40.153809, 28.707085, 40.715179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869587, 28.449028, 40.602818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323161, 0.653822, -0.684167,
		0.625039, -0.395365, -0.673062,
		-0.710559, -0.645138, -0.280898,
		39.656422, 28.255486, 40.518547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165001, 28.737114, 40.098347>,  <40.153809, 28.707085, 40.715179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165001, 28.737114, 40.098347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798367, 28.579445, 40.125195>,  <39.578388, 28.484844, 40.141304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798367, 28.579445, 40.125195>,  <40.165001, 28.737114, 40.098347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798367, 28.579445, 40.125195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335184, 0.665917, -0.666488,
		0.218012, -0.633390, -0.742488,
		-0.916582, -0.394172, 0.067124,
		39.523392, 28.461193, 40.145332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946819, 28.564289, 39.388123>,  <40.165001, 28.737114, 40.098347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946819, 28.564289, 39.388123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625088, 28.605837, 39.622139>,  <39.432049, 28.630766, 39.762550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625088, 28.605837, 39.622139>,  <39.946819, 28.564289, 39.388123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625088, 28.605837, 39.622139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391526, 0.647979, -0.653322,
		-0.446955, -0.754542, -0.480518,
		-0.804325, 0.103871, 0.585041,
		39.383789, 28.636997, 39.797649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219891, 28.413647, 38.989922>,  <39.946819, 28.564289, 39.388123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219891, 28.413647, 38.989922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159267, 28.667564, 39.292992>,  <39.122894, 28.819916, 39.474834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159267, 28.667564, 39.292992>,  <39.219891, 28.413647, 38.989922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159267, 28.667564, 39.292992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283234, 0.706493, -0.648573,
		-0.947001, -0.312892, 0.072725,
		-0.151554, 0.634797, 0.757671,
		39.113800, 28.858004, 39.520294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520245, 28.687313, 38.917301>,  <39.219891, 28.413647, 38.989922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520245, 28.687313, 38.917301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726982, 28.951960, 39.134609>,  <38.851025, 29.110746, 39.264996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726982, 28.951960, 39.134609>,  <38.520245, 28.687313, 38.917301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726982, 28.951960, 39.134609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280059, 0.730353, -0.623019,
		-0.808977, 0.169853, 0.562766,
		0.516839, 0.661615, 0.543270,
		38.882034, 29.150444, 39.297588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022579, 29.303812, 38.905914>,  <38.520245, 28.687313, 38.917301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022579, 29.303812, 38.905914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345997, 29.470930, 39.071663>,  <38.540047, 29.571201, 39.171112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345997, 29.470930, 39.071663>,  <38.022579, 29.303812, 38.905914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345997, 29.470930, 39.071663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204984, 0.860062, -0.467198,
		-0.551579, 0.292810, 0.781040,
		0.808543, 0.417798, 0.414371,
		38.588558, 29.596270, 39.195972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745644, 29.913782, 39.129868>,  <38.022579, 29.303812, 38.905914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745644, 29.913782, 39.129868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136753, 29.984921, 39.174297>,  <38.371418, 30.027603, 39.200954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136753, 29.984921, 39.174297>,  <37.745644, 29.913782, 39.129868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136753, 29.984921, 39.174297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113748, 0.894899, -0.431529,
		-0.176148, 0.409301, 0.895234,
		0.977769, 0.177845, 0.111078,
		38.430084, 30.038275, 39.207619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881210, 30.563318, 39.584007>,  <37.745644, 29.913782, 39.129868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881210, 30.563318, 39.584007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201195, 30.518103, 39.348282>,  <38.393185, 30.490973, 39.206848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201195, 30.518103, 39.348282>,  <37.881210, 30.563318, 39.584007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201195, 30.518103, 39.348282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061297, 0.961564, -0.267653,
		0.596913, 0.250235, 0.762284,
		0.799961, -0.113040, -0.589309,
		38.441181, 30.484190, 39.171490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229019, 31.094032, 39.764397>,  <37.881210, 30.563318, 39.584007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229019, 31.094032, 39.764397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340816, 31.003386, 39.391190>,  <38.407894, 30.948997, 39.167263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340816, 31.003386, 39.391190>,  <38.229019, 31.094032, 39.764397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340816, 31.003386, 39.391190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113316, 0.957171, -0.266426,
		0.953438, 0.180190, 0.241842,
		0.279492, -0.226616, -0.933022,
		38.424664, 30.935400, 39.111282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635571, 31.543823, 39.617603>,  <38.229019, 31.094032, 39.764397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635571, 31.543823, 39.617603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510120, 31.425114, 39.256813>,  <38.434849, 31.353888, 39.040337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510120, 31.425114, 39.256813>,  <38.635571, 31.543823, 39.617603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510120, 31.425114, 39.256813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133870, 0.954235, -0.267420,
		0.940061, 0.036876, -0.339006,
		-0.313630, -0.296774, -0.901977,
		38.416031, 31.336082, 38.986221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717430, 32.104309, 39.101166>,  <38.635571, 31.543823, 39.617603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717430, 32.104309, 39.101166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503708, 31.856215, 38.871445>,  <38.375473, 31.707359, 38.733612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503708, 31.856215, 38.871445>,  <38.717430, 32.104309, 39.101166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503708, 31.856215, 38.871445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255344, 0.766107, -0.589812,
		0.805803, -0.168493, -0.567707,
		-0.534303, -0.620233, -0.574308,
		38.343414, 31.670145, 38.699154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885632, 32.172848, 38.445190>,  <38.717430, 32.104309, 39.101166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885632, 32.172848, 38.445190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521179, 32.020233, 38.382870>,  <38.302509, 31.928663, 38.345478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521179, 32.020233, 38.382870>,  <38.885632, 32.172848, 38.445190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521179, 32.020233, 38.382870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206405, 0.749670, -0.628801,
		0.356714, -0.540760, -0.761797,
		-0.911126, -0.381541, -0.155802,
		38.247841, 31.905771, 38.336128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747910, 32.283115, 37.840454>,  <38.885632, 32.172848, 38.445190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747910, 32.283115, 37.840454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376991, 32.227215, 37.979362>,  <38.154442, 32.193676, 38.062710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376991, 32.227215, 37.979362>,  <38.747910, 32.283115, 37.840454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376991, 32.227215, 37.979362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354248, 0.627436, -0.693421,
		-0.120989, -0.766025, -0.631322,
		-0.927292, -0.139749, 0.347276,
		38.098804, 32.185291, 38.083546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261116, 32.041512, 37.244312>,  <38.747910, 32.283115, 37.840454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261116, 32.041512, 37.244312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045769, 32.219391, 37.530640>,  <37.916561, 32.326118, 37.702438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045769, 32.219391, 37.530640>,  <38.261116, 32.041512, 37.244312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045769, 32.219391, 37.530640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366916, 0.640990, -0.674169,
		-0.758639, -0.625598, -0.181920,
		-0.538368, 0.444701, 0.715822,
		37.884258, 32.352802, 37.745384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597950, 32.299374, 36.793133>,  <38.261116, 32.041512, 37.244312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597950, 32.299374, 36.793133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555576, 32.488045, 37.143284>,  <37.530151, 32.601250, 37.353374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555576, 32.488045, 37.143284>,  <37.597950, 32.299374, 36.793133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555576, 32.488045, 37.143284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150179, 0.862649, -0.482994,
		-0.982967, -0.182630, -0.020547,
		-0.105934, 0.471682, 0.875382,
		37.523796, 32.629551, 37.405899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935917, 32.429722, 36.822586>,  <37.597950, 32.299374, 36.793133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935917, 32.429722, 36.822586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108055, 32.701199, 37.060638>,  <37.211338, 32.864082, 37.203472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108055, 32.701199, 37.060638>,  <36.935917, 32.429722, 36.822586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108055, 32.701199, 37.060638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401094, 0.734421, -0.547494,
		-0.808657, -0.003093, 0.588272,
		0.430346, 0.678687, 0.595135,
		37.237160, 32.904804, 37.239178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478374, 32.983150, 36.892567>,  <36.935917, 32.429722, 36.822586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478374, 32.983150, 36.892567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825676, 33.159275, 36.984009>,  <37.034058, 33.264950, 37.038876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825676, 33.159275, 36.984009>,  <36.478374, 32.983150, 36.892567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825676, 33.159275, 36.984009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223554, 0.758590, -0.612017,
		-0.442898, 0.480280, 0.757082,
		0.868254, 0.440310, 0.228610,
		37.086151, 33.291367, 37.052593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288895, 33.585693, 36.835392>,  <36.478374, 32.983150, 36.892567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288895, 33.585693, 36.835392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681236, 33.663502, 36.838913>,  <36.916641, 33.710186, 36.841026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681236, 33.663502, 36.838913>,  <36.288895, 33.585693, 36.835392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681236, 33.663502, 36.838913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123653, 0.657135, -0.743562,
		-0.150423, 0.728241, 0.668610,
		0.980858, 0.194524, 0.008799,
		36.975494, 33.721859, 36.841553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396904, 34.391514, 36.864178>,  <36.288895, 33.585693, 36.835392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396904, 34.391514, 36.864178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772156, 34.294987, 36.764828>,  <36.997307, 34.237072, 36.705219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772156, 34.294987, 36.764828>,  <36.396904, 34.391514, 36.864178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772156, 34.294987, 36.764828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063583, 0.825061, -0.561455,
		0.340408, 0.510923, 0.789354,
		0.938126, -0.241313, -0.248371,
		37.053593, 34.222591, 36.690315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872887, 34.989532, 37.000107>,  <36.396904, 34.391514, 36.864178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872887, 34.989532, 37.000107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985420, 34.735828, 36.712063>,  <37.052940, 34.583607, 36.539238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985420, 34.735828, 36.712063>,  <36.872887, 34.989532, 37.000107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985420, 34.735828, 36.712063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005284, 0.751434, -0.659787,
		0.959595, 0.181816, 0.214757,
		0.281336, -0.634264, -0.720111,
		37.069820, 34.545547, 36.496029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413113, 35.296623, 36.576294>,  <36.872887, 34.989532, 37.000107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413113, 35.296623, 36.576294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236603, 35.017792, 36.350246>,  <37.130695, 34.850494, 36.214619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236603, 35.017792, 36.350246>,  <37.413113, 35.296623, 36.576294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236603, 35.017792, 36.350246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000086, 0.629779, -0.776774,
		0.897373, -0.342722, -0.277965,
		-0.441274, -0.697080, -0.565117,
		37.104221, 34.808666, 36.180710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684891, 35.142231, 35.939301>,  <37.413113, 35.296623, 36.576294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684891, 35.142231, 35.939301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290630, 35.092106, 35.894058>,  <37.054073, 35.062031, 35.866913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290630, 35.092106, 35.894058>,  <37.684891, 35.142231, 35.939301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290630, 35.092106, 35.894058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001483, 0.663566, -0.748116,
		0.168796, -0.737548, -0.653858,
		-0.985650, -0.125309, -0.113101,
		36.994934, 35.054512, 35.860126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164360, 34.563110, 36.236431>,  <37.684891, 35.142231, 35.939301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164360, 34.563110, 36.236431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499454, 34.772919, 36.297203>,  <38.700512, 34.898804, 36.333664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499454, 34.772919, 36.297203>,  <38.164360, 34.563110, 36.236431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499454, 34.772919, 36.297203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524920, -0.850176, 0.040743,
		0.150535, 0.045618, -0.987552,
		0.837734, 0.524519, 0.151927,
		38.750774, 34.930275, 36.342781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725040, 34.228397, 35.937881>,  <38.164360, 34.563110, 36.236431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725040, 34.228397, 35.937881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939610, 34.482040, 36.160648>,  <39.068352, 34.634228, 36.294308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939610, 34.482040, 36.160648>,  <38.725040, 34.228397, 35.937881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939610, 34.482040, 36.160648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627922, -0.740785, 0.238643,
		0.563884, 0.221690, -0.795543,
		0.536422, 0.634106, 0.556921,
		39.100536, 34.672272, 36.327724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478062, 34.083080, 35.827259>,  <38.725040, 34.228397, 35.937881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478062, 34.083080, 35.827259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500290, 34.298309, 36.163685>,  <39.513626, 34.427444, 36.365540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500290, 34.298309, 36.163685>,  <39.478062, 34.083080, 35.827259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500290, 34.298309, 36.163685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634686, -0.669312, 0.386257,
		0.770769, 0.512350, -0.378698,
		0.055569, 0.538069, 0.841067,
		39.516960, 34.459732, 36.416004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201641, 34.213474, 35.982658>,  <39.478062, 34.083080, 35.827259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201641, 34.213474, 35.982658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986771, 34.216164, 36.320034>,  <39.857849, 34.217777, 36.522461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986771, 34.216164, 36.320034>,  <40.201641, 34.213474, 35.982658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986771, 34.216164, 36.320034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656254, -0.624863, 0.422939,
		0.529879, 0.780706, 0.331250,
		-0.537176, 0.006722, 0.843443,
		39.825619, 34.218182, 36.573067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737259, 34.156120, 36.480865>,  <40.201641, 34.213474, 35.982658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737259, 34.156120, 36.480865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418247, 34.043907, 36.694500>,  <40.226841, 33.976578, 36.822681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418247, 34.043907, 36.694500>,  <40.737259, 34.156120, 36.480865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418247, 34.043907, 36.694500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570427, -0.638826, 0.516250,
		0.196360, 0.716380, 0.669509,
		-0.797531, -0.280535, 0.534082,
		40.178989, 33.959747, 36.854725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975807, 33.919895, 37.165062>,  <40.737259, 34.156120, 36.480865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975807, 33.919895, 37.165062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600838, 33.780754, 37.171207>,  <40.375854, 33.697269, 37.174892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600838, 33.780754, 37.171207>,  <40.975807, 33.919895, 37.165062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600838, 33.780754, 37.171207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295604, -0.771762, 0.563029,
		-0.183996, 0.532337, 0.826294,
		-0.937424, -0.347851, 0.015360,
		40.319611, 33.676399, 37.175816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833572, 33.726860, 37.867813>,  <40.975807, 33.919895, 37.165062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833572, 33.726860, 37.867813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587212, 33.516186, 37.633457>,  <40.439396, 33.389782, 37.492844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587212, 33.516186, 37.633457>,  <40.833572, 33.726860, 37.867813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587212, 33.516186, 37.633457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171852, -0.815590, 0.552521,
		-0.768854, 0.239609, 0.592833,
		-0.615897, -0.526688, -0.585893,
		40.402443, 33.358181, 37.457691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365532, 33.387661, 38.326164>,  <40.833572, 33.726860, 37.867813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365532, 33.387661, 38.326164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367588, 33.197838, 37.974083>,  <40.368820, 33.083942, 37.762833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367588, 33.197838, 37.974083>,  <40.365532, 33.387661, 38.326164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367588, 33.197838, 37.974083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225469, -0.857002, 0.463369,
		-0.974237, -0.200841, 0.102593,
		0.005141, -0.474563, -0.880207,
		40.369129, 33.055470, 37.710022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159508, 32.718521, 38.508423>,  <40.365532, 33.387661, 38.326164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159508, 32.718521, 38.508423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306358, 32.660770, 38.140865>,  <40.394470, 32.626122, 37.920330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306358, 32.660770, 38.140865>,  <40.159508, 32.718521, 38.508423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306358, 32.660770, 38.140865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400914, -0.866850, 0.296376,
		-0.839335, -0.477207, -0.260365,
		0.367130, -0.144375, -0.918897,
		40.416496, 32.617458, 37.865196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038193, 32.084579, 38.340645>,  <40.159508, 32.718521, 38.508423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038193, 32.084579, 38.340645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332993, 32.179924, 38.087654>,  <40.509872, 32.237129, 37.935860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332993, 32.179924, 38.087654>,  <40.038193, 32.084579, 38.340645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332993, 32.179924, 38.087654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458211, -0.864094, 0.208288,
		-0.496869, -0.443314, -0.746052,
		0.736996, 0.238357, -0.632473,
		40.554092, 32.251431, 37.897911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166336, 31.519369, 37.935818>,  <40.038193, 32.084579, 38.340645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166336, 31.519369, 37.935818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514107, 31.715076, 37.908325>,  <40.722767, 31.832500, 37.891830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514107, 31.715076, 37.908325>,  <40.166336, 31.519369, 37.935818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514107, 31.715076, 37.908325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493284, -0.851754, 0.176597,
		0.027864, -0.187439, -0.981881,
		0.869422, 0.489267, -0.068728,
		40.774933, 31.861856, 37.887707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651093, 31.070955, 37.518948>,  <40.166336, 31.519369, 37.935818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651093, 31.070955, 37.518948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893478, 31.316038, 37.721886>,  <41.038910, 31.463087, 37.843651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893478, 31.316038, 37.721886>,  <40.651093, 31.070955, 37.518948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893478, 31.316038, 37.721886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562129, -0.781080, 0.271891,
		0.562870, 0.120441, -0.817723,
		0.605961, 0.612705, 0.507350,
		41.075268, 31.499849, 37.874092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250607, 30.707634, 37.487408>,  <40.651093, 31.070955, 37.518948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250607, 30.707634, 37.487408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316097, 30.994448, 37.758423>,  <41.355392, 31.166536, 37.921032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316097, 30.994448, 37.758423>,  <41.250607, 30.707634, 37.487408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316097, 30.994448, 37.758423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641354, -0.599220, 0.479166,
		0.749572, 0.356088, -0.557982,
		0.163728, 0.717033, 0.677537,
		41.365215, 31.209558, 37.961685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842762, 30.678387, 37.557533>,  <41.250607, 30.707634, 37.487408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842762, 30.678387, 37.557533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704819, 30.850613, 37.891163>,  <41.622051, 30.953947, 38.091343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704819, 30.850613, 37.891163>,  <41.842762, 30.678387, 37.557533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704819, 30.850613, 37.891163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537709, -0.637721, 0.551526,
		0.769376, 0.638691, -0.011593,
		-0.344862, 0.430564, 0.834077,
		41.601360, 30.979782, 38.141388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425049, 30.523296, 37.977707>,  <41.842762, 30.678387, 37.557533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425049, 30.523296, 37.977707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125759, 30.658539, 38.206039>,  <41.946186, 30.739685, 38.343040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125759, 30.658539, 38.206039>,  <42.425049, 30.523296, 37.977707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125759, 30.658539, 38.206039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274512, -0.625520, 0.730320,
		0.603991, 0.703142, 0.375214,
		-0.748223, 0.338106, 0.570830,
		41.901291, 30.759970, 38.377289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695824, 30.685240, 38.657139>,  <42.425049, 30.523296, 37.977707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695824, 30.685240, 38.657139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303925, 30.628199, 38.713367>,  <42.068787, 30.593975, 38.747105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303925, 30.628199, 38.713367>,  <42.695824, 30.685240, 38.657139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303925, 30.628199, 38.713367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195462, -0.528741, 0.825971,
		-0.043461, 0.836719, 0.545906,
		-0.979748, -0.142601, 0.140567,
		42.009998, 30.585419, 38.755539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501842, 30.841362, 39.421261>,  <42.695824, 30.685240, 38.657139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501842, 30.841362, 39.421261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236614, 30.575962, 39.282639>,  <42.077477, 30.416721, 39.199463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236614, 30.575962, 39.282639>,  <42.501842, 30.841362, 39.421261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236614, 30.575962, 39.282639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225254, -0.618372, 0.752912,
		-0.713859, 0.421171, 0.559482,
		-0.663073, -0.663499, -0.346560,
		42.037693, 30.376913, 39.178669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159298, 30.667814, 40.110546>,  <42.501842, 30.841362, 39.421261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159298, 30.667814, 40.110546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083256, 30.387390, 39.835629>,  <42.037628, 30.219135, 39.670677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083256, 30.387390, 39.835629>,  <42.159298, 30.667814, 40.110546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083256, 30.387390, 39.835629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012998, -0.701798, 0.712257,
		-0.981677, 0.126473, 0.142530,
		-0.190109, -0.701059, -0.687295,
		42.026222, 30.177073, 39.629440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416298, 30.380499, 40.152122>,  <42.159298, 30.667814, 40.110546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416298, 30.380499, 40.152122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625267, 30.089325, 39.974503>,  <41.750648, 29.914621, 39.867931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625267, 30.089325, 39.974503>,  <41.416298, 30.380499, 40.152122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625267, 30.089325, 39.974503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145858, -0.589383, 0.794577,
		-0.840116, -0.350340, -0.414085,
		0.522427, -0.727935, -0.444050,
		41.781994, 29.870945, 39.841286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133045, 29.724222, 40.389130>,  <41.416298, 30.380499, 40.152122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133045, 29.724222, 40.389130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480328, 29.613260, 40.224560>,  <41.688698, 29.546682, 40.125816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480328, 29.613260, 40.224560>,  <41.133045, 29.724222, 40.389130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480328, 29.613260, 40.224560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029919, -0.798363, 0.601433,
		-0.495308, -0.534475, -0.684841,
		0.868202, -0.277404, -0.411427,
		41.740788, 29.530039, 40.101131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120056, 28.988560, 40.249958>,  <41.133045, 29.724222, 40.389130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120056, 28.988560, 40.249958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506817, 29.079283, 40.296692>,  <41.738873, 29.133717, 40.324734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506817, 29.079283, 40.296692>,  <41.120056, 28.988560, 40.249958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506817, 29.079283, 40.296692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100906, -0.760561, 0.641378,
		0.234329, -0.608363, -0.758277,
		0.966906, 0.226808, 0.116834,
		41.796890, 29.147326, 40.331741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546047, 28.392038, 40.138298>,  <41.120056, 28.988560, 40.249958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546047, 28.392038, 40.138298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735138, 28.643896, 40.384899>,  <41.848591, 28.795012, 40.532860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735138, 28.643896, 40.384899>,  <41.546047, 28.392038, 40.138298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735138, 28.643896, 40.384899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096974, -0.732533, 0.673789,
		0.875857, -0.258733, -0.407347,
		0.472726, 0.629645, 0.616504,
		41.876957, 28.832790, 40.569851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143261, 28.100780, 40.373177>,  <41.546047, 28.392038, 40.138298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143261, 28.100780, 40.373177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074997, 28.371607, 40.659523>,  <42.034039, 28.534101, 40.831329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074997, 28.371607, 40.659523>,  <42.143261, 28.100780, 40.373177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074997, 28.371607, 40.659523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066583, -0.716936, 0.693953,
		0.983077, 0.166096, 0.077272,
		-0.170662, 0.677064, 0.715862,
		42.023800, 28.574726, 40.874283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644119, 27.931767, 40.914997>,  <42.143261, 28.100780, 40.373177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644119, 27.931767, 40.914997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360996, 28.146826, 41.098274>,  <42.191120, 28.275862, 41.208241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360996, 28.146826, 41.098274>,  <42.644119, 27.931767, 40.914997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360996, 28.146826, 41.098274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078256, -0.584951, 0.807284,
		0.702056, 0.607259, 0.371960,
		-0.707809, 0.537650, 0.458190,
		42.148655, 28.308121, 41.235733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825569, 27.786734, 41.625923>,  <42.644119, 27.931767, 40.914997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825569, 27.786734, 41.625923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464420, 27.956097, 41.655720>,  <42.247730, 28.057714, 41.673599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464420, 27.956097, 41.655720>,  <42.825569, 27.786734, 41.625923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464420, 27.956097, 41.655720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102720, -0.380724, 0.918966,
		0.417460, 0.822055, 0.387237,
		-0.902871, 0.423408, 0.074496,
		42.193558, 28.083118, 41.678070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789112, 28.025764, 42.337845>,  <42.825569, 27.786734, 41.625923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789112, 28.025764, 42.337845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408958, 27.993652, 42.217628>,  <42.180866, 27.974384, 42.145500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408958, 27.993652, 42.217628>,  <42.789112, 28.025764, 42.337845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408958, 27.993652, 42.217628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259223, -0.329688, 0.907804,
		-0.171964, 0.940670, 0.292520,
		-0.950385, -0.080282, -0.300538,
		42.123844, 27.969568, 42.127468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370506, 28.453793, 42.821999>,  <42.789112, 28.025764, 42.337845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370506, 28.453793, 42.821999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165924, 28.170692, 42.627060>,  <42.043175, 28.000834, 42.510098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165924, 28.170692, 42.627060>,  <42.370506, 28.453793, 42.821999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165924, 28.170692, 42.627060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383866, -0.319232, 0.866452,
		-0.768807, 0.630225, -0.108408,
		-0.511452, -0.707748, -0.487349,
		42.012489, 27.958368, 42.480854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684284, 28.660507, 43.045212>,  <42.370506, 28.453793, 42.821999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684284, 28.660507, 43.045212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740311, 28.276869, 42.946808>,  <41.773926, 28.046686, 42.887768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740311, 28.276869, 42.946808>,  <41.684284, 28.660507, 43.045212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740311, 28.276869, 42.946808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183615, -0.269307, 0.945388,
		-0.972968, -0.087249, -0.213825,
		0.140069, -0.959094, -0.246007,
		41.782330, 27.989141, 42.873005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102013, 28.316973, 43.410000>,  <41.684284, 28.660507, 43.045212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102013, 28.316973, 43.410000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366039, 28.028055, 43.327435>,  <41.524456, 27.854704, 43.277897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366039, 28.028055, 43.327435>,  <41.102013, 28.316973, 43.410000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366039, 28.028055, 43.327435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110181, -0.364885, 0.924510,
		-0.743086, -0.587492, -0.320430,
		0.660063, -0.722296, -0.206410,
		41.564056, 27.811367, 43.265511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782486, 27.686703, 43.591000>,  <41.102013, 28.316973, 43.410000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782486, 27.686703, 43.591000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176464, 27.619207, 43.575981>,  <41.412849, 27.578711, 43.566971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176464, 27.619207, 43.575981>,  <40.782486, 27.686703, 43.591000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176464, 27.619207, 43.575981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017379, -0.312749, 0.949677,
		-0.171988, -0.934728, -0.310974,
		0.984946, -0.168737, -0.037544,
		41.471947, 27.568586, 43.564716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895359, 27.050346, 43.905010>,  <40.782486, 27.686703, 43.591000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895359, 27.050346, 43.905010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259087, 27.216709, 43.910042>,  <41.477325, 27.316526, 43.913059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259087, 27.216709, 43.910042>,  <40.895359, 27.050346, 43.905010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259087, 27.216709, 43.910042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064366, -0.170457, 0.983260,
		0.411087, -0.893290, -0.181771,
		0.909321, 0.415906, 0.012575,
		41.531883, 27.341480, 43.913815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237965, 26.659685, 44.357037>,  <40.895359, 27.050346, 43.905010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237965, 26.659685, 44.357037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458717, 26.993254, 44.357304>,  <41.591171, 27.193394, 44.357464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458717, 26.993254, 44.357304>,  <41.237965, 26.659685, 44.357037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458717, 26.993254, 44.357304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200703, -0.133604, 0.970499,
		0.809408, -0.535470, -0.241104,
		0.551885, 0.833920, 0.000670,
		41.624283, 27.243429, 44.357506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665871, 26.511417, 44.901577>,  <41.237965, 26.659685, 44.357037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665871, 26.511417, 44.901577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730690, 26.904486, 44.865582>,  <41.769581, 27.140327, 44.843983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730690, 26.904486, 44.865582>,  <41.665871, 26.511417, 44.901577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730690, 26.904486, 44.865582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224790, 0.052037, 0.973017,
		0.960838, -0.177902, -0.212462,
		0.162046, 0.982671, -0.089990,
		41.779305, 27.199287, 44.838585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374737, 26.618967, 45.043575>,  <41.665871, 26.511417, 44.901577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374737, 26.618967, 45.043575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181915, 26.963604, 45.107178>,  <42.066223, 27.170387, 45.145340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181915, 26.963604, 45.107178>,  <42.374737, 26.618967, 45.043575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181915, 26.963604, 45.107178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283046, -0.018606, 0.958926,
		0.829163, 0.507257, -0.234902,
		-0.482052, 0.861594, 0.159004,
		42.037300, 27.222082, 45.154881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812138, 26.913773, 45.495865>,  <42.374737, 26.618967, 45.043575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812138, 26.913773, 45.495865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472767, 27.117849, 45.552265>,  <42.269146, 27.240295, 45.586105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472767, 27.117849, 45.552265>,  <42.812138, 26.913773, 45.495865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472767, 27.117849, 45.552265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215428, 0.089503, 0.972409,
		0.483494, 0.855392, -0.185846,
		-0.848425, 0.510190, 0.141001,
		42.218239, 27.270906, 45.594566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031483, 27.199394, 46.078506>,  <42.812138, 26.913773, 45.495865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031483, 27.199394, 46.078506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.637917, 27.265722, 46.051929>,  <42.401775, 27.305519, 46.035984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.637917, 27.265722, 46.051929>,  <43.031483, 27.199394, 46.078506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637917, 27.265722, 46.051929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034675, 0.187607, 0.981632,
		0.175241, 0.968146, -0.178839,
		-0.983915, 0.165820, -0.066447,
		42.342743, 27.315468, 46.031994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860615, 27.789165, 46.495186>,  <43.031483, 27.199394, 46.078506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860615, 27.789165, 46.495186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517204, 27.585976, 46.467194>,  <42.311157, 27.464062, 46.450397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517204, 27.585976, 46.467194>,  <42.860615, 27.789165, 46.495186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517204, 27.585976, 46.467194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151046, 0.120110, 0.981203,
		-0.490020, 0.852957, -0.179845,
		-0.858525, -0.507974, -0.069980,
		42.259647, 27.433584, 46.446201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307327, 28.190468, 46.782429>,  <42.860615, 27.789165, 46.495186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307327, 28.190468, 46.782429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194382, 27.808010, 46.813560>,  <42.126614, 27.578535, 46.832237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194382, 27.808010, 46.813560>,  <42.307327, 28.190468, 46.782429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194382, 27.808010, 46.813560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357706, 0.180217, 0.916280,
		-0.890122, 0.230887, -0.392906,
		-0.282365, -0.956145, 0.077825,
		42.109673, 27.521166, 46.836906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144234, 28.418148, 47.574619>,  <42.307327, 28.190468, 46.782429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144234, 28.418148, 47.574619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246105, 28.680347, 47.859001>,  <42.307228, 28.837667, 48.029633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246105, 28.680347, 47.859001>,  <42.144234, 28.418148, 47.574619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246105, 28.680347, 47.859001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292630, 0.752971, -0.589409,
		-0.921687, -0.057939, 0.383583,
		0.254677, 0.655499, 0.710958,
		42.322510, 28.876997, 48.072289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555191, 28.932875, 47.594875>,  <42.144234, 28.418148, 47.574619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555191, 28.932875, 47.594875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864853, 29.128462, 47.755669>,  <42.050652, 29.245813, 47.852146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864853, 29.128462, 47.755669>,  <41.555191, 28.932875, 47.594875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864853, 29.128462, 47.755669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323014, 0.851309, -0.413442,
		-0.544372, 0.190223, 0.816991,
		0.774158, 0.488966, 0.401985,
		42.097099, 29.275152, 47.876263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286022, 29.538977, 47.963158>,  <41.555191, 28.932875, 47.594875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286022, 29.538977, 47.963158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668236, 29.616730, 47.874462>,  <41.897564, 29.663382, 47.821243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668236, 29.616730, 47.874462>,  <41.286022, 29.538977, 47.963158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668236, 29.616730, 47.874462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259126, 0.912411, -0.316796,
		0.140735, 0.360167, 0.922211,
		0.955535, 0.194385, -0.221737,
		41.954895, 29.675045, 47.807941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337860, 30.279022, 47.905582>,  <41.286022, 29.538977, 47.963158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337860, 30.279022, 47.905582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679996, 30.223833, 47.705845>,  <41.885281, 30.190720, 47.586002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679996, 30.223833, 47.705845>,  <41.337860, 30.279022, 47.905582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679996, 30.223833, 47.705845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264639, 0.712264, -0.650113,
		0.445366, 0.688218, 0.572718,
		0.855345, -0.137974, -0.499347,
		41.936600, 30.182442, 47.556042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327164, 30.898571, 47.632984>,  <41.337860, 30.279022, 47.905582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327164, 30.898571, 47.632984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616642, 30.690317, 47.451782>,  <41.790329, 30.565365, 47.343063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616642, 30.690317, 47.451782>,  <41.327164, 30.898571, 47.632984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616642, 30.690317, 47.451782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161948, 0.509958, -0.844817,
		0.670852, 0.684749, 0.284737,
		0.723692, -0.520635, -0.453000,
		41.833748, 30.534126, 47.315884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840679, 31.438852, 47.271191>,  <41.327164, 30.898571, 47.632984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840679, 31.438852, 47.271191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889549, 31.084970, 47.091248>,  <41.918873, 30.872641, 46.983284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889549, 31.084970, 47.091248>,  <41.840679, 31.438852, 47.271191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889549, 31.084970, 47.091248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081988, 0.442703, -0.892912,
		0.989116, 0.145975, -0.018448,
		0.122176, -0.884706, -0.449853,
		41.926201, 30.819559, 46.956291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302376, 31.583158, 46.695698>,  <41.840679, 31.438852, 47.271191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302376, 31.583158, 46.695698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128922, 31.240479, 46.583961>,  <42.024849, 31.034870, 46.516922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128922, 31.240479, 46.583961>,  <42.302376, 31.583158, 46.695698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128922, 31.240479, 46.583961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026379, 0.297797, -0.954265,
		0.900703, -0.421170, -0.106536,
		-0.433634, -0.856698, -0.279337,
		41.998833, 30.983469, 46.500160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671719, 31.318264, 46.109066>,  <42.302376, 31.583158, 46.695698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671719, 31.318264, 46.109066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324150, 31.120993, 46.092323>,  <42.115608, 31.002630, 46.082275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324150, 31.120993, 46.092323>,  <42.671719, 31.318264, 46.109066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324150, 31.120993, 46.092323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026737, 0.037679, -0.998932,
		0.494228, -0.869113, -0.019554,
		-0.868921, -0.493177, -0.041860,
		42.063473, 30.973040, 46.079765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752464, 30.719835, 45.587994>,  <42.671719, 31.318264, 46.109066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752464, 30.719835, 45.587994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364101, 30.807617, 45.626320>,  <42.131084, 30.860287, 45.649315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364101, 30.807617, 45.626320>,  <42.752464, 30.719835, 45.587994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364101, 30.807617, 45.626320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095688, 0.011246, -0.995348,
		-0.219511, -0.975558, 0.010080,
		-0.970906, 0.219454, 0.095818,
		42.072830, 30.873453, 45.655064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446796, 30.251383, 45.017155>,  <42.752464, 30.719835, 45.587994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446796, 30.251383, 45.017155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172985, 30.515734, 45.140221>,  <42.008698, 30.674345, 45.214058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172985, 30.515734, 45.140221>,  <42.446796, 30.251383, 45.017155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172985, 30.515734, 45.140221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351873, 0.070075, -0.933421,
		-0.638436, -0.747216, 0.184576,
		-0.684533, 0.660877, 0.307663,
		41.967625, 30.713997, 45.232521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733971, 30.078215, 44.838520>,  <42.446796, 30.251383, 45.017155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733971, 30.078215, 44.838520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741325, 30.478029, 44.848251>,  <41.745739, 30.717918, 44.854092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741325, 30.478029, 44.848251>,  <41.733971, 30.078215, 44.838520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741325, 30.478029, 44.848251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399293, 0.029650, -0.916344,
		-0.916639, 0.007137, 0.399653,
		0.018390, 0.999535, 0.024329,
		41.746841, 30.777889, 44.855549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407749, 30.323086, 44.200829>,  <41.733971, 30.078215, 44.838520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407749, 30.323086, 44.200829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500019, 30.683037, 44.348888>,  <41.555382, 30.899008, 44.437725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500019, 30.683037, 44.348888>,  <41.407749, 30.323086, 44.200829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500019, 30.683037, 44.348888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196448, 0.415646, -0.888058,
		-0.952995, 0.132133, 0.272656,
		0.230670, 0.899877, 0.370152,
		41.569221, 30.952999, 44.459934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849506, 30.754131, 44.112061>,  <41.407749, 30.323086, 44.200829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849506, 30.754131, 44.112061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152420, 31.013496, 44.143276>,  <41.334167, 31.169115, 44.162006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152420, 31.013496, 44.143276>,  <40.849506, 30.754131, 44.112061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152420, 31.013496, 44.143276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265248, 0.414549, -0.870513,
		-0.596801, 0.638522, 0.485919,
		0.757280, 0.648412, 0.078037,
		41.379604, 31.208019, 44.166687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537609, 31.442028, 44.039818>,  <40.849506, 30.754131, 44.112061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537609, 31.442028, 44.039818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928989, 31.463547, 43.960083>,  <41.163818, 31.476458, 43.912243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928989, 31.463547, 43.960083>,  <40.537609, 31.442028, 44.039818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928989, 31.463547, 43.960083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206452, 0.267050, -0.941309,
		0.002593, 0.962180, 0.272403,
		0.978453, 0.053797, -0.199336,
		41.222527, 31.479687, 43.900284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685932, 32.057083, 43.702316>,  <40.537609, 31.442028, 44.039818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685932, 32.057083, 43.702316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974342, 31.796980, 43.606575>,  <41.147388, 31.640919, 43.549129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974342, 31.796980, 43.606575>,  <40.685932, 32.057083, 43.702316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974342, 31.796980, 43.606575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019535, 0.326221, -0.945092,
		0.692634, 0.686110, 0.222511,
		0.721025, -0.650256, -0.239355,
		41.190651, 31.601904, 43.534767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099072, 32.547890, 43.298523>,  <40.685932, 32.057083, 43.702316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099072, 32.547890, 43.298523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248528, 32.187756, 43.209259>,  <41.338200, 31.971676, 43.155701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248528, 32.187756, 43.209259>,  <41.099072, 32.547890, 43.298523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248528, 32.187756, 43.209259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030038, 0.252197, -0.967210,
		0.927089, 0.354681, 0.121273,
		0.373636, -0.900332, -0.223155,
		41.360619, 31.917656, 43.142311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718418, 32.645458, 42.907116>,  <41.099072, 32.547890, 43.298523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718418, 32.645458, 42.907116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596455, 32.274544, 42.820244>,  <41.523277, 32.051994, 42.768120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596455, 32.274544, 42.820244>,  <41.718418, 32.645458, 42.907116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596455, 32.274544, 42.820244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146893, 0.179525, -0.972725,
		0.940985, -0.328495, 0.081474,
		-0.304908, -0.927287, -0.217184,
		41.504982, 31.996357, 42.755089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203941, 32.293385, 42.424431>,  <41.718418, 32.645458, 42.907116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203941, 32.293385, 42.424431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846931, 32.121742, 42.368923>,  <41.632725, 32.018757, 42.335617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846931, 32.121742, 42.368923>,  <42.203941, 32.293385, 42.424431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846931, 32.121742, 42.368923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048508, 0.214581, -0.975501,
		0.448376, -0.877394, -0.170704,
		-0.892528, -0.429110, -0.138774,
		41.579174, 31.993010, 42.327290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286049, 32.131889, 41.767120>,  <42.203941, 32.293385, 42.424431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286049, 32.131889, 41.767120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893871, 32.081326, 41.827454>,  <41.658566, 32.050987, 41.863651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893871, 32.081326, 41.827454>,  <42.286049, 32.131889, 41.767120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893871, 32.081326, 41.827454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149664, -0.018726, -0.988560,
		0.127788, -0.991801, -0.000559,
		-0.980444, -0.126409, 0.150830,
		41.599739, 32.043404, 41.872704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140778, 31.671843, 41.279568>,  <42.286049, 32.131889, 41.767120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140778, 31.671843, 41.279568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812973, 31.874680, 41.386345>,  <41.616291, 31.996382, 41.450413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812973, 31.874680, 41.386345>,  <42.140778, 31.671843, 41.279568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812973, 31.874680, 41.386345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278395, 0.054872, -0.958898,
		-0.500897, -0.860144, 0.096204,
		-0.819511, 0.507092, 0.266945,
		41.567120, 32.026806, 41.466427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546783, 31.379284, 40.920643>,  <42.140778, 31.671843, 41.279568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546783, 31.379284, 40.920643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429806, 31.746511, 41.027695>,  <41.359619, 31.966848, 41.091927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429806, 31.746511, 41.027695>,  <41.546783, 31.379284, 40.920643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429806, 31.746511, 41.027695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082658, 0.254554, -0.963519,
		-0.952703, -0.303901, 0.001442,
		-0.292447, 0.918067, 0.267634,
		41.342072, 32.021931, 41.107986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072002, 31.543587, 40.376247>,  <41.546783, 31.379284, 40.920643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072002, 31.543587, 40.376247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173660, 31.875841, 40.574421>,  <41.234653, 32.075195, 40.693325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173660, 31.875841, 40.574421>,  <41.072002, 31.543587, 40.376247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173660, 31.875841, 40.574421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118178, 0.481745, -0.868306,
		-0.959919, 0.279226, 0.024271,
		0.254146, 0.830635, 0.495434,
		41.249905, 32.125031, 40.723053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659180, 32.143581, 40.103279>,  <41.072002, 31.543587, 40.376247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659180, 32.143581, 40.103279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984528, 32.293274, 40.281437>,  <41.179737, 32.383091, 40.388332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984528, 32.293274, 40.281437>,  <40.659180, 32.143581, 40.103279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984528, 32.293274, 40.281437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159707, 0.592560, -0.789535,
		-0.559393, 0.713319, 0.422205,
		0.813372, 0.374231, 0.445396,
		41.228539, 32.405544, 40.415054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601398, 32.868958, 40.153042>,  <40.659180, 32.143581, 40.103279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601398, 32.868958, 40.153042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991257, 32.780231, 40.141224>,  <41.225170, 32.726997, 40.134132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991257, 32.780231, 40.141224>,  <40.601398, 32.868958, 40.153042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991257, 32.780231, 40.141224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137771, 0.698862, -0.701863,
		0.176333, 0.679993, 0.711699,
		0.974642, -0.221813, -0.029549,
		41.283649, 32.713688, 40.132359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894775, 33.476707, 40.121819>,  <40.601398, 32.868958, 40.153042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894775, 33.476707, 40.121819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210148, 33.262833, 40.000172>,  <41.399372, 33.134506, 39.927185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210148, 33.262833, 40.000172>,  <40.894775, 33.476707, 40.121819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210148, 33.262833, 40.000172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390660, 0.817136, -0.423878,
		0.475148, 0.215392, 0.853136,
		0.788428, -0.534691, -0.304116,
		41.446678, 33.102425, 39.908936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408222, 34.018860, 40.080173>,  <40.894775, 33.476707, 40.121819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408222, 34.018860, 40.080173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602371, 33.726089, 39.888885>,  <41.718861, 33.550426, 39.774113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602371, 33.726089, 39.888885>,  <41.408222, 34.018860, 40.080173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602371, 33.726089, 39.888885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441467, 0.677293, -0.588542,
		0.754664, 0.074546, 0.651863,
		0.485376, -0.731927, -0.478219,
		41.747982, 33.506512, 39.745419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990875, 34.257717, 40.023045>,  <41.408222, 34.018860, 40.080173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990875, 34.257717, 40.023045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014629, 33.967014, 39.749313>,  <42.028881, 33.792595, 39.585075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014629, 33.967014, 39.749313>,  <41.990875, 34.257717, 40.023045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014629, 33.967014, 39.749313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430526, 0.637147, -0.639288,
		0.900622, -0.256657, 0.350723,
		0.059384, -0.726753, -0.684327,
		42.032444, 33.748989, 39.544014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649162, 34.377724, 39.834862>,  <41.990875, 34.257717, 40.023045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649162, 34.377724, 39.834862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471729, 34.157768, 39.551777>,  <42.365269, 34.025795, 39.381924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471729, 34.157768, 39.551777>,  <42.649162, 34.377724, 39.834862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471729, 34.157768, 39.551777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429131, 0.562934, -0.706365,
		0.786819, -0.617031, -0.013731,
		-0.443579, -0.549889, -0.707714,
		42.338657, 33.992802, 39.339462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104332, 34.311787, 39.254890>,  <42.649162, 34.377724, 39.834862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104332, 34.311787, 39.254890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748203, 34.239082, 39.087898>,  <42.534527, 34.195461, 38.987701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748203, 34.239082, 39.087898>,  <43.104332, 34.311787, 39.254890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748203, 34.239082, 39.087898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182258, 0.697967, -0.692549,
		0.417265, -0.692681, -0.588288,
		-0.890321, -0.181757, -0.417484,
		42.481106, 34.184555, 38.962654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275093, 34.302769, 38.545143>,  <43.104332, 34.311787, 39.254890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275093, 34.302769, 38.545143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879440, 34.361465, 38.541557>,  <42.642048, 34.396683, 38.539406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879440, 34.361465, 38.541557>,  <43.275093, 34.302769, 38.545143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879440, 34.361465, 38.541557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107700, 0.681724, -0.723639,
		-0.100077, -0.716742, -0.690121,
		-0.989134, 0.146746, -0.008969,
		42.582699, 34.405491, 38.538868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921585, 34.172035, 37.843563>,  <43.275093, 34.302769, 38.545143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921585, 34.172035, 37.843563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703747, 34.450516, 38.030632>,  <42.573044, 34.617603, 38.142872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703747, 34.450516, 38.030632>,  <42.921585, 34.172035, 37.843563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703747, 34.450516, 38.030632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146833, 0.628144, -0.764117,
		-0.825745, -0.347466, -0.444311,
		-0.544596, 0.696206, 0.467668,
		42.540367, 34.659378, 38.170933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747578, 34.665024, 37.257809>,  <42.921585, 34.172035, 37.843563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747578, 34.665024, 37.257809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584702, 34.854279, 37.570305>,  <42.486977, 34.967831, 37.757801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584702, 34.854279, 37.570305>,  <42.747578, 34.665024, 37.257809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584702, 34.854279, 37.570305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106377, 0.824972, -0.555072,
		-0.907127, -0.309126, -0.285589,
		-0.407190, 0.473141, 0.781238,
		42.462543, 34.996220, 37.804676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180595, 35.009834, 36.923073>,  <42.747578, 34.665024, 37.257809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180595, 35.009834, 36.923073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257374, 35.200905, 37.265999>,  <42.303440, 35.315548, 37.471752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257374, 35.200905, 37.265999>,  <42.180595, 35.009834, 36.923073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257374, 35.200905, 37.265999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163631, 0.845752, -0.507867,
		-0.967669, 0.237764, 0.084173,
		0.191942, 0.477674, 0.857313,
		42.314957, 35.344208, 37.523193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744774, 35.630508, 37.045284>,  <42.180595, 35.009834, 36.923073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744774, 35.630508, 37.045284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091454, 35.689751, 37.235821>,  <42.299461, 35.725296, 37.350143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091454, 35.689751, 37.235821>,  <41.744774, 35.630508, 37.045284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091454, 35.689751, 37.235821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010047, 0.949533, -0.313505,
		-0.498734, 0.276500, 0.821469,
		0.866697, 0.148103, 0.476343,
		42.351463, 35.734180, 37.378723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750729, 36.351818, 37.352226>,  <41.744774, 35.630508, 37.045284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750729, 36.351818, 37.352226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131039, 36.228634, 37.338425>,  <42.359222, 36.154724, 37.330143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131039, 36.228634, 37.338425>,  <41.750729, 36.351818, 37.352226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131039, 36.228634, 37.338425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295113, 0.933777, -0.202406,
		0.094553, 0.182260, 0.978693,
		0.950772, -0.307963, -0.034504,
		42.416271, 36.136246, 37.328072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009010, 36.877705, 37.534443>,  <41.750729, 36.351818, 37.352226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009010, 36.877705, 37.534443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326447, 36.687481, 37.382622>,  <42.516907, 36.573349, 37.291527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326447, 36.687481, 37.382622>,  <42.009010, 36.877705, 37.534443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326447, 36.687481, 37.382622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330512, 0.860669, -0.387312,
		0.510860, 0.181920, 0.840195,
		0.793589, -0.475556, -0.379555,
		42.564522, 36.544815, 37.268757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658398, 37.057320, 37.793701>,  <42.009010, 36.877705, 37.534443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658398, 37.057320, 37.793701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755154, 36.931614, 37.426498>,  <42.813210, 36.856190, 37.206177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755154, 36.931614, 37.426498>,  <42.658398, 37.057320, 37.793701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755154, 36.931614, 37.426498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459551, 0.870364, -0.176862,
		0.854577, -0.379087, 0.354953,
		0.241892, -0.314261, -0.918002,
		42.827721, 36.837337, 37.151096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283611, 37.439522, 37.723919>,  <42.658398, 37.057320, 37.793701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283611, 37.439522, 37.723919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227848, 37.270901, 37.365509>,  <43.194389, 37.169727, 37.150463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227848, 37.270901, 37.365509>,  <43.283611, 37.439522, 37.723919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227848, 37.270901, 37.365509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363491, 0.819908, -0.442296,
		0.921108, -0.387357, 0.038926,
		-0.139411, -0.421552, -0.896024,
		43.186024, 37.144436, 37.096703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911381, 37.596359, 37.360626>,  <43.283611, 37.439522, 37.723919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911381, 37.596359, 37.360626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618683, 37.535664, 37.094837>,  <43.443066, 37.499245, 36.935364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618683, 37.535664, 37.094837>,  <43.911381, 37.596359, 37.360626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618683, 37.535664, 37.094837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274012, 0.827156, -0.490643,
		0.624077, -0.541098, -0.563685,
		-0.731741, -0.151742, -0.664477,
		43.399162, 37.490139, 36.895493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204308, 37.566113, 36.673615>,  <43.911381, 37.596359, 37.360626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204308, 37.566113, 36.673615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819702, 37.660446, 36.617222>,  <43.588940, 37.717045, 36.583385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819702, 37.660446, 36.617222>,  <44.204308, 37.566113, 36.673615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819702, 37.660446, 36.617222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274386, 0.850934, -0.447911,
		0.014331, -0.469355, -0.882893,
		-0.961513, 0.235835, -0.140979,
		43.531250, 37.731197, 36.574928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273060, 37.895721, 35.991669>,  <44.204308, 37.566113, 36.673615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273060, 37.895721, 35.991669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560341, 37.914104, 36.269394>,  <44.732712, 37.925133, 36.436028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560341, 37.914104, 36.269394>,  <44.273060, 37.895721, 35.991669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560341, 37.914104, 36.269394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066083, -0.988802, 0.133804,
		0.692685, -0.141981, -0.707128,
		0.718207, 0.045955, 0.694310,
		44.775803, 37.927891, 36.477688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584038, 37.233444, 36.090889>,  <44.273060, 37.895721, 35.991669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584038, 37.233444, 36.090889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744579, 37.392632, 36.420868>,  <44.840904, 37.488144, 36.618855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744579, 37.392632, 36.420868>,  <44.584038, 37.233444, 36.090889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744579, 37.392632, 36.420868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023445, -0.895913, 0.443611,
		0.915624, -0.197384, -0.350244,
		0.401350, 0.397969, 0.824947,
		44.864983, 37.512024, 36.668354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206955, 36.954632, 36.271366>,  <44.584038, 37.233444, 36.090889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206955, 36.954632, 36.271366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048286, 37.067753, 36.620689>,  <44.953083, 37.135624, 36.830284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048286, 37.067753, 36.620689>,  <45.206955, 36.954632, 36.271366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.048286, 37.067753, 36.620689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144360, -0.920305, 0.363591,
		0.906537, 0.270298, 0.324236,
		-0.396674, 0.282802, 0.873311,
		44.929283, 37.152592, 36.882683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496536, 36.621449, 36.871746>,  <45.206955, 36.954632, 36.271366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496536, 36.621449, 36.871746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143646, 36.736404, 37.020924>,  <44.931911, 36.805378, 37.110432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143646, 36.736404, 37.020924>,  <45.496536, 36.621449, 36.871746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143646, 36.736404, 37.020924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009915, -0.780586, 0.624970,
		0.470730, 0.555060, 0.685801,
		-0.882222, 0.287392, 0.372948,
		44.878979, 36.822620, 37.132809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512054, 36.783970, 37.593510>,  <45.496536, 36.621449, 36.871746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512054, 36.783970, 37.593510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144905, 36.657284, 37.497837>,  <44.924618, 36.581272, 37.440434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144905, 36.657284, 37.497837>,  <45.512054, 36.783970, 37.593510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144905, 36.657284, 37.497837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071660, -0.725002, 0.685009,
		-0.390356, 0.611610, 0.688154,
		-0.917871, -0.316711, -0.239181,
		44.869545, 36.562271, 37.426083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.947647, 36.630409, 38.214607>,  <45.512054, 36.783970, 37.593510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.947647, 36.630409, 38.214607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.871342, 36.407642, 37.891262>,  <44.825558, 36.273983, 37.697254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.871342, 36.407642, 37.891262>,  <44.947647, 36.630409, 38.214607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871342, 36.407642, 37.891262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005830, -0.824117, 0.566389,
		-0.981618, 0.103336, 0.160461,
		-0.190767, -0.556913, -0.808366,
		44.814110, 36.240570, 37.648754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421959, 36.180294, 38.337036>,  <44.947647, 36.630409, 38.214607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421959, 36.180294, 38.337036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645168, 36.014034, 38.049747>,  <44.779095, 35.914276, 37.877377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645168, 36.014034, 38.049747>,  <44.421959, 36.180294, 38.337036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645168, 36.014034, 38.049747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066937, -0.885235, 0.460303,
		-0.827119, -0.208786, -0.521808,
		0.558028, -0.415653, -0.718219,
		44.812576, 35.889339, 37.834282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085709, 35.520012, 38.123695>,  <44.421959, 36.180294, 38.337036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085709, 35.520012, 38.123695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481926, 35.537521, 38.071693>,  <44.719658, 35.548027, 38.040493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481926, 35.537521, 38.071693>,  <44.085709, 35.520012, 38.123695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481926, 35.537521, 38.071693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101908, -0.869230, 0.483791,
		-0.091825, -0.492466, -0.865474,
		0.990547, 0.043775, -0.130003,
		44.779091, 35.550655, 38.032692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352543, 34.916401, 37.946648>,  <44.085709, 35.520012, 38.123695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352543, 34.916401, 37.946648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687798, 35.081440, 38.089363>,  <44.888950, 35.180462, 38.174992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687798, 35.081440, 38.089363>,  <44.352543, 34.916401, 37.946648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687798, 35.081440, 38.089363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143282, -0.797659, 0.585841,
		0.526309, -0.439892, -0.727663,
		0.838134, 0.412595, 0.356787,
		44.939240, 35.205219, 38.196400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761906, 34.419781, 38.013359>,  <44.352543, 34.916401, 37.946648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761906, 34.419781, 38.013359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974628, 34.665333, 38.246712>,  <45.102261, 34.812664, 38.386723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974628, 34.665333, 38.246712>,  <44.761906, 34.419781, 38.013359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974628, 34.665333, 38.246712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277245, -0.777113, 0.565005,
		0.800201, -0.138731, -0.583466,
		0.531803, 0.613880, 0.583384,
		45.134171, 34.849499, 38.421726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320354, 34.043537, 38.227509>,  <44.761906, 34.419781, 38.013359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320354, 34.043537, 38.227509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325115, 34.329964, 38.506683>,  <45.327972, 34.501820, 38.674187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325115, 34.329964, 38.506683>,  <45.320354, 34.043537, 38.227509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325115, 34.329964, 38.506683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093985, -0.695693, 0.712164,
		0.995502, 0.057121, -0.075578,
		0.011900, 0.716064, 0.697933,
		45.328686, 34.544785, 38.716064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795197, 33.758003, 38.609436>,  <45.320354, 34.043537, 38.227509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795197, 33.758003, 38.609436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.627789, 34.023998, 38.856865>,  <45.527344, 34.183594, 39.005322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.627789, 34.023998, 38.856865>,  <45.795197, 33.758003, 38.609436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.627789, 34.023998, 38.856865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104069, -0.641493, 0.760037,
		0.902226, 0.382464, 0.199272,
		-0.418519, 0.664987, 0.618574,
		45.502232, 34.223495, 39.042439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.179420, 33.680103, 39.180416>,  <45.795197, 33.758003, 38.609436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.179420, 33.680103, 39.180416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837597, 33.848839, 39.301594>,  <45.632504, 33.950081, 39.374298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837597, 33.848839, 39.301594>,  <46.179420, 33.680103, 39.180416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837597, 33.848839, 39.301594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087180, -0.691549, 0.717049,
		0.511980, 0.586352, 0.627748,
		-0.854562, 0.421842, 0.302941,
		45.581230, 33.975391, 39.392475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.332314, 33.819622, 39.863392>,  <46.179420, 33.680103, 39.180416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.332314, 33.819622, 39.863392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933083, 33.805111, 39.843296>,  <45.693542, 33.796406, 39.831238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933083, 33.805111, 39.843296>,  <46.332314, 33.819622, 39.863392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.933083, 33.805111, 39.843296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018401, -0.600619, 0.799323,
		-0.059171, 0.798712, 0.598798,
		-0.998078, -0.036278, -0.050236,
		45.633659, 33.794228, 39.828224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045704, 33.996101, 40.574333>,  <46.332314, 33.819622, 39.863392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045704, 33.996101, 40.574333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766605, 33.778614, 40.387772>,  <45.599148, 33.648121, 40.275837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766605, 33.778614, 40.387772>,  <46.045704, 33.996101, 40.574333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766605, 33.778614, 40.387772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034702, -0.624660, 0.780126,
		-0.715508, 0.560511, 0.416984,
		-0.697742, -0.543716, -0.466400,
		45.557281, 33.615498, 40.247852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498451, 33.867970, 41.105644>,  <46.045704, 33.996101, 40.574333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498451, 33.867970, 41.105644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477692, 33.598503, 40.810760>,  <45.465237, 33.436825, 40.633831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477692, 33.598503, 40.810760>,  <45.498451, 33.867970, 41.105644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477692, 33.598503, 40.810760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114834, -0.729284, 0.674506,
		-0.992028, 0.119662, -0.039512,
		-0.051898, -0.673666, -0.737212,
		45.462124, 33.396404, 40.589596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938286, 33.380211, 41.275017>,  <45.498451, 33.867970, 41.105644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938286, 33.380211, 41.275017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143375, 33.193634, 40.986698>,  <45.266430, 33.081688, 40.813705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143375, 33.193634, 40.986698>,  <44.938286, 33.380211, 41.275017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143375, 33.193634, 40.986698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128989, -0.871870, 0.472446,
		-0.848805, -0.149263, -0.507199,
		0.512730, -0.466437, -0.720794,
		45.297192, 33.053703, 40.770458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527664, 32.816761, 41.061314>,  <44.938286, 33.380211, 41.275017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527664, 32.816761, 41.061314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892540, 32.692120, 40.954872>,  <45.111465, 32.617332, 40.891006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892540, 32.692120, 40.954872>,  <44.527664, 32.816761, 41.061314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892540, 32.692120, 40.954872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109002, -0.810530, 0.575465,
		-0.395005, -0.495927, -0.773322,
		0.912189, -0.311606, -0.266106,
		45.166195, 32.598637, 40.875042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515350, 32.050064, 40.839161>,  <44.527664, 32.816761, 41.061314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515350, 32.050064, 40.839161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904736, 32.108173, 40.909885>,  <45.138367, 32.143040, 40.952320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904736, 32.108173, 40.909885>,  <44.515350, 32.050064, 40.839161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904736, 32.108173, 40.909885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059297, -0.906400, 0.418238,
		0.221017, -0.396656, -0.890963,
		0.973466, 0.145269, 0.176809,
		45.196774, 32.151752, 40.962929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857197, 31.463881, 40.628815>,  <44.515350, 32.050064, 40.839161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857197, 31.463881, 40.628815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079311, 31.645779, 40.907345>,  <45.212582, 31.754917, 41.074463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079311, 31.645779, 40.907345>,  <44.857197, 31.463881, 40.628815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079311, 31.645779, 40.907345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168267, -0.881385, 0.441415,
		0.814457, -0.127945, -0.565942,
		0.555289, 0.454743, 0.696321,
		45.245899, 31.782202, 41.116241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397705, 31.067511, 40.657604>,  <44.857197, 31.463881, 40.628815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397705, 31.067511, 40.657604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.438740, 31.275345, 40.996899>,  <45.463360, 31.400045, 41.200474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.438740, 31.275345, 40.996899>,  <45.397705, 31.067511, 40.657604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.438740, 31.275345, 40.996899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233003, -0.841564, 0.487319,
		0.967050, 0.147650, -0.207397,
		0.102586, 0.519586, 0.848237,
		45.469517, 31.431221, 41.251369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.034431, 30.781534, 41.099003>,  <45.397705, 31.067511, 40.657604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.034431, 30.781534, 41.099003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798290, 30.984980, 41.349697>,  <45.656605, 31.107048, 41.500114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798290, 30.984980, 41.349697>,  <46.034431, 30.781534, 41.099003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.798290, 30.984980, 41.349697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201689, -0.658895, 0.724692,
		0.781542, 0.554228, 0.286396,
		-0.590350, 0.508614, 0.626736,
		45.621185, 31.137564, 41.537720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.485085, 30.826492, 41.763741>,  <46.034431, 30.781534, 41.099003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.485085, 30.826492, 41.763741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092865, 30.871307, 41.828213>,  <45.857533, 30.898197, 41.866894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092865, 30.871307, 41.828213>,  <46.485085, 30.826492, 41.763741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092865, 30.871307, 41.828213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028679, -0.730534, 0.682273,
		0.194186, 0.673623, 0.713109,
		-0.980545, 0.112037, 0.161178,
		45.798702, 30.904919, 41.876568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.508095, 30.696712, 42.442650>,  <46.485085, 30.826492, 41.763741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.508095, 30.696712, 42.442650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123135, 30.669422, 42.337482>,  <45.892159, 30.653048, 42.274380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123135, 30.669422, 42.337482>,  <46.508095, 30.696712, 42.442650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.123135, 30.669422, 42.337482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096990, -0.817824, 0.567236,
		-0.253722, 0.571410, 0.780459,
		-0.962402, -0.068224, -0.262921,
		45.834415, 30.648954, 42.258606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.015209, 30.677917, 43.124924>,  <46.508095, 30.696712, 42.442650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.015209, 30.677917, 43.124924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804893, 30.530687, 42.818180>,  <45.678703, 30.442348, 42.634136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804893, 30.530687, 42.818180>,  <46.015209, 30.677917, 43.124924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804893, 30.530687, 42.818180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358894, -0.721360, 0.592313,
		-0.771195, 0.586651, 0.247182,
		-0.525788, -0.368076, -0.766855,
		45.647156, 30.420265, 42.588123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416565, 30.489939, 43.406101>,  <46.015209, 30.677917, 43.124924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416565, 30.489939, 43.406101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400936, 30.275713, 43.068665>,  <45.391560, 30.147179, 42.866203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400936, 30.275713, 43.068665>,  <45.416565, 30.489939, 43.406101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400936, 30.275713, 43.068665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286368, -0.802822, 0.522943,
		-0.957322, 0.262010, -0.122002,
		-0.039071, -0.535563, -0.843591,
		45.389214, 30.115044, 42.815586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747467, 30.037661, 43.354206>,  <45.416565, 30.489939, 43.406101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747467, 30.037661, 43.354206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027679, 29.881552, 43.115227>,  <45.195808, 29.787886, 42.971840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027679, 29.881552, 43.115227>,  <44.747467, 30.037661, 43.354206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027679, 29.881552, 43.115227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270113, -0.919926, 0.284209,
		-0.660525, -0.037720, -0.749856,
		0.700532, -0.390273, -0.597446,
		45.237839, 29.764469, 42.935993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390549, 29.393265, 43.211937>,  <44.747467, 30.037661, 43.354206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390549, 29.393265, 43.211937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778946, 29.341928, 43.131237>,  <45.011986, 29.311127, 43.082817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778946, 29.341928, 43.131237>,  <44.390549, 29.393265, 43.211937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778946, 29.341928, 43.131237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090915, -0.978541, 0.184911,
		-0.221155, -0.161205, -0.961823,
		0.970992, -0.128338, -0.201753,
		45.070244, 29.303427, 43.070709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.425053, 28.863049, 42.780743>,  <44.390549, 29.393265, 43.211937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.425053, 28.863049, 42.780743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776817, 28.875975, 42.970730>,  <44.987877, 28.883730, 43.084721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776817, 28.875975, 42.970730>,  <44.425053, 28.863049, 42.780743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.776817, 28.875975, 42.970730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069475, -0.978301, 0.195194,
		0.470970, -0.204654, -0.858081,
		0.879409, 0.032316, 0.474969,
		45.040642, 28.885670, 43.113220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966129, 28.300737, 42.591671>,  <44.425053, 28.863049, 42.780743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966129, 28.300737, 42.591671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934883, 28.399841, 42.977940>,  <44.916138, 28.459303, 43.209702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934883, 28.399841, 42.977940>,  <44.966129, 28.300737, 42.591671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934883, 28.399841, 42.977940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228720, -0.947245, 0.224530,
		0.970353, -0.203329, 0.130659,
		-0.078112, 0.247758, 0.965668,
		44.911449, 28.474169, 43.267639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470615, 27.948742, 42.927567>,  <44.966129, 28.300737, 42.591671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470615, 27.948742, 42.927567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183590, 28.037750, 43.191563>,  <45.011375, 28.091156, 43.349960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183590, 28.037750, 43.191563>,  <45.470615, 27.948742, 42.927567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183590, 28.037750, 43.191563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079566, -0.967576, 0.239720,
		0.691934, 0.119501, 0.712002,
		-0.717562, 0.222522, 0.659991,
		44.968323, 28.104507, 43.389561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168022, 27.151495, 43.177040>,  <45.470615, 27.948742, 42.927567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168022, 27.151495, 43.177040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501221, 27.369205, 43.216805>,  <45.701138, 27.499832, 43.240665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501221, 27.369205, 43.216805>,  <45.168022, 27.151495, 43.177040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501221, 27.369205, 43.216805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503766, -0.820401, 0.270485,
		0.228778, -0.175231, -0.957577,
		0.832995, 0.544276, 0.099413,
		45.751118, 27.532488, 43.246628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803696, 26.920586, 42.741837>,  <45.168022, 27.151495, 43.177040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803696, 26.920586, 42.741837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921871, 27.108383, 43.074654>,  <45.992779, 27.221062, 43.274342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921871, 27.108383, 43.074654>,  <45.803696, 26.920586, 42.741837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921871, 27.108383, 43.074654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481498, -0.825391, 0.294770,
		0.825151, 0.313539, -0.469914,
		0.295440, 0.469492, 0.832041,
		46.010502, 27.249231, 43.324265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228580, 27.385784, 42.355412>,  <45.803696, 26.920586, 42.741837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228580, 27.385784, 42.355412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321587, 27.148903, 42.046806>,  <46.377388, 27.006775, 41.861645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321587, 27.148903, 42.046806>,  <46.228580, 27.385784, 42.355412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.321587, 27.148903, 42.046806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200471, 0.747038, -0.633834,
		0.951708, 0.302041, 0.054977,
		0.232514, -0.592203, -0.771513,
		46.391342, 26.971241, 41.815353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728294, 27.602190, 41.779652>,  <46.228580, 27.385784, 42.355412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728294, 27.602190, 41.779652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.441372, 27.376242, 41.616489>,  <46.269218, 27.240673, 41.518593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.441372, 27.376242, 41.616489>,  <46.728294, 27.602190, 41.779652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441372, 27.376242, 41.616489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159862, 0.703250, -0.692736,
		0.678165, -0.431699, -0.594751,
		-0.717312, -0.564867, -0.407907,
		46.226177, 27.206781, 41.494118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.956390, 27.603483, 41.169182>,  <46.728294, 27.602190, 41.779652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.956390, 27.603483, 41.169182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564632, 27.523306, 41.159378>,  <46.329578, 27.475199, 41.153496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564632, 27.523306, 41.159378>,  <46.956390, 27.603483, 41.169182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.564632, 27.523306, 41.159378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102049, 0.596008, -0.796467,
		0.174254, -0.777558, -0.604185,
		-0.979398, -0.200444, -0.024508,
		46.270813, 27.463173, 41.152027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.787460, 27.338701, 40.480812>,  <46.956390, 27.603483, 41.169182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.787460, 27.338701, 40.480812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507103, 27.549080, 40.673534>,  <46.338890, 27.675306, 40.789169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507103, 27.549080, 40.673534>,  <46.787460, 27.338701, 40.480812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.507103, 27.549080, 40.673534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167275, 0.535446, -0.827839,
		-0.693378, -0.660817, -0.287311,
		-0.700889, 0.525945, 0.481804,
		46.296837, 27.706863, 40.818077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.140854, 27.254297, 40.192699>,  <46.787460, 27.338701, 40.480812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.140854, 27.254297, 40.192699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109592, 27.606419, 40.379871>,  <46.090836, 27.817692, 40.492172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109592, 27.606419, 40.379871>,  <46.140854, 27.254297, 40.192699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.109592, 27.606419, 40.379871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257367, 0.435638, -0.862544,
		-0.963148, -0.187842, 0.192514,
		-0.078155, 0.880304, 0.467928,
		46.086147, 27.870510, 40.520248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.833977, 27.566114, 39.647205>,  <46.140854, 27.254297, 40.192699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.833977, 27.566114, 39.647205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919643, 27.851585, 39.913979>,  <45.971043, 28.022867, 40.074043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919643, 27.851585, 39.913979>,  <45.833977, 27.566114, 39.647205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919643, 27.851585, 39.913979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325832, 0.695865, -0.640004,
		-0.920852, -0.080243, 0.381567,
		0.214164, 0.713675, 0.666935,
		45.983894, 28.065687, 40.114059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372261, 28.115282, 39.622791>,  <45.833977, 27.566114, 39.647205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372261, 28.115282, 39.622791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693336, 28.280546, 39.794830>,  <45.885983, 28.379705, 39.898052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693336, 28.280546, 39.794830>,  <45.372261, 28.115282, 39.622791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.693336, 28.280546, 39.794830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128634, 0.824127, -0.551605,
		-0.582358, 0.387443, 0.714666,
		0.802691, 0.413162, 0.430099,
		45.934143, 28.404495, 39.923859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268436, 28.818266, 39.532745>,  <45.372261, 28.115282, 39.622791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268436, 28.818266, 39.532745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.650974, 28.839037, 39.647778>,  <45.880497, 28.851500, 39.716797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.650974, 28.839037, 39.647778>,  <45.268436, 28.818266, 39.532745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.650974, 28.839037, 39.647778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089167, 0.885307, -0.456377,
		-0.278296, 0.462098, 0.842031,
		0.956347, 0.051927, 0.287581,
		45.937878, 28.854614, 39.734051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325600, 29.454931, 39.608143>,  <45.268436, 28.818266, 39.532745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325600, 29.454931, 39.608143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709511, 29.342657, 39.605644>,  <45.939857, 29.275291, 39.604145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709511, 29.342657, 39.605644>,  <45.325600, 29.454931, 39.608143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709511, 29.342657, 39.605644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231617, 0.804173, -0.547412,
		0.158676, 0.523948, 0.836840,
		0.959779, -0.280687, -0.006248,
		45.997444, 29.258451, 39.603771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765079, 30.001724, 39.970654>,  <45.325600, 29.454931, 39.608143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765079, 30.001724, 39.970654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977184, 29.798008, 39.699524>,  <46.104446, 29.675777, 39.536846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977184, 29.798008, 39.699524>,  <45.765079, 30.001724, 39.970654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977184, 29.798008, 39.699524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158169, 0.844866, -0.511062,
		0.832952, 0.163783, 0.528551,
		0.530258, -0.509290, -0.677827,
		46.136261, 29.645222, 39.496174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.478539, 30.342266, 39.869972>,  <45.765079, 30.001724, 39.970654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.478539, 30.342266, 39.869972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402939, 30.129484, 39.539806>,  <46.357578, 30.001816, 39.341709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402939, 30.129484, 39.539806>,  <46.478539, 30.342266, 39.869972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.402939, 30.129484, 39.539806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147039, 0.815754, -0.559397,
		0.970906, -0.227094, -0.075961,
		-0.189001, -0.531953, -0.825412,
		46.346237, 29.969898, 39.292183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.024479, 30.570650, 39.390114>,  <46.478539, 30.342266, 39.869972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.024479, 30.570650, 39.390114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777840, 30.383469, 39.136871>,  <46.629856, 30.271160, 38.984924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777840, 30.383469, 39.136871>,  <47.024479, 30.570650, 39.390114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.777840, 30.383469, 39.136871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098029, 0.752280, -0.651510,
		0.781153, -0.463782, -0.417979,
		-0.616596, -0.467955, -0.633110,
		46.592861, 30.243082, 38.946938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.418663, 30.538082, 38.818947>,  <47.024479, 30.570650, 39.390114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.418663, 30.538082, 38.818947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.034267, 30.525602, 38.709019>,  <46.803631, 30.518114, 38.643063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.034267, 30.525602, 38.709019>,  <47.418663, 30.538082, 38.818947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.034267, 30.525602, 38.709019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144153, 0.791495, -0.593932,
		0.236046, -0.610379, -0.756122,
		-0.960990, -0.031198, -0.274817,
		46.745972, 30.516243, 38.626575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.512562, 30.652494, 38.188660>,  <47.418663, 30.538082, 38.818947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.512562, 30.652494, 38.188660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.125095, 30.741907, 38.231953>,  <46.892616, 30.795555, 38.257927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.125095, 30.741907, 38.231953>,  <47.512562, 30.652494, 38.188660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.125095, 30.741907, 38.231953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114597, 0.788908, -0.603731,
		-0.220337, -0.572413, -0.789807,
		-0.968669, 0.223534, 0.108229,
		46.834496, 30.808968, 38.264420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.399830, 31.104898, 37.691860>,  <47.512562, 30.652494, 38.188660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.399830, 31.104898, 37.691860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.053665, 31.123108, 37.891457>,  <46.845966, 31.134033, 38.011215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.053665, 31.123108, 37.891457>,  <47.399830, 31.104898, 37.691860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.053665, 31.123108, 37.891457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193403, 0.888343, -0.416463,
		-0.462236, -0.456918, -0.759976,
		-0.865409, 0.045523, 0.498994,
		46.794041, 31.136765, 38.041153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.922771, 31.197123, 37.158230>,  <47.399830, 31.104898, 37.691860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.922771, 31.197123, 37.158230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787090, 31.324377, 37.512344>,  <46.705681, 31.400730, 37.724812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787090, 31.324377, 37.512344>,  <46.922771, 31.197123, 37.158230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.787090, 31.324377, 37.512344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092988, 0.925131, -0.368084,
		-0.936106, -0.207176, -0.284226,
		-0.339204, 0.318136, 0.885285,
		46.685329, 31.419817, 37.777931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283993, 31.501734, 36.970669>,  <46.922771, 31.197123, 37.158230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283993, 31.501734, 36.970669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443432, 31.655228, 37.303864>,  <46.539093, 31.747324, 37.503780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443432, 31.655228, 37.303864>,  <46.283993, 31.501734, 36.970669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443432, 31.655228, 37.303864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148172, 0.923270, -0.354425,
		-0.905078, 0.017846, 0.424870,
		0.398595, 0.383736, 0.832988,
		46.563011, 31.770348, 37.553761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934799, 32.083576, 37.078705>,  <46.283993, 31.501734, 36.970669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934799, 32.083576, 37.078705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237633, 32.139828, 37.333904>,  <46.419334, 32.173576, 37.487022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237633, 32.139828, 37.333904>,  <45.934799, 32.083576, 37.078705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.237633, 32.139828, 37.333904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016161, 0.980291, -0.196895,
		-0.653112, 0.138756, 0.744440,
		0.757088, 0.140626, 0.637998,
		46.464760, 32.182014, 37.525303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725742, 32.562519, 37.667477>,  <45.934799, 32.083576, 37.078705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725742, 32.562519, 37.667477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124260, 32.570621, 37.634048>,  <46.363373, 32.575481, 37.613991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124260, 32.570621, 37.634048>,  <45.725742, 32.562519, 37.667477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124260, 32.570621, 37.634048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021703, 0.999630, -0.016426,
		0.083207, 0.018179, 0.996367,
		0.996296, 0.020257, -0.083571,
		46.423149, 32.576698, 37.608978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954304, 33.197578, 37.973221>,  <45.725742, 32.562519, 37.667477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954304, 33.197578, 37.973221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.265900, 33.064579, 37.760571>,  <46.452858, 32.984779, 37.632980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.265900, 33.064579, 37.760571>,  <45.954304, 33.197578, 37.973221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.265900, 33.064579, 37.760571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123143, 0.912445, -0.390229,
		0.614829, 0.238518, 0.751728,
		0.778987, -0.332495, -0.531626,
		46.499596, 32.964832, 37.601082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455547, 33.746540, 38.015549>,  <45.954304, 33.197578, 37.973221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455547, 33.746540, 38.015549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588322, 33.549488, 37.693771>,  <46.667988, 33.431255, 37.500706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588322, 33.549488, 37.693771>,  <46.455547, 33.746540, 38.015549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.588322, 33.549488, 37.693771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310473, 0.862339, -0.399972,
		0.890744, -0.116994, 0.439189,
		0.331935, -0.492629, -0.804447,
		46.687901, 33.401699, 37.452438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.090912, 33.894459, 38.018513>,  <46.455547, 33.746540, 38.015549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.090912, 33.894459, 38.018513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995434, 33.797527, 37.642365>,  <46.938148, 33.739368, 37.416676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995434, 33.797527, 37.642365>,  <47.090912, 33.894459, 38.018513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995434, 33.797527, 37.642365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209150, 0.932808, -0.293472,
		0.948304, -0.266729, -0.171973,
		-0.238696, -0.242332, -0.940372,
		46.923824, 33.724827, 37.360252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.582314, 34.156399, 37.699017>,  <47.090912, 33.894459, 38.018513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.582314, 34.156399, 37.699017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.323143, 34.080215, 37.404015>,  <47.167641, 34.034504, 37.227013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.323143, 34.080215, 37.404015>,  <47.582314, 34.156399, 37.699017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.323143, 34.080215, 37.404015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323293, 0.807930, -0.492677,
		0.689687, -0.557650, -0.461907,
		-0.647930, -0.190461, -0.737503,
		47.128765, 34.023079, 37.182762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.898003, 34.305794, 36.971401>,  <47.582314, 34.156399, 37.699017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.898003, 34.305794, 36.971401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.502586, 34.332443, 36.917229>,  <47.265335, 34.348434, 36.884727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.502586, 34.332443, 36.917229>,  <47.898003, 34.305794, 36.971401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.502586, 34.332443, 36.917229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121264, 0.884828, -0.449861,
		0.089860, -0.461131, -0.882771,
		-0.988544, 0.066624, -0.135430,
		47.206024, 34.352428, 36.876598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.764252, 34.441380, 36.240822>,  <47.898003, 34.305794, 36.971401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.764252, 34.441380, 36.240822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.440483, 34.544308, 36.451965>,  <47.246223, 34.606064, 36.578651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.440483, 34.544308, 36.451965>,  <47.764252, 34.441380, 36.240822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.440483, 34.544308, 36.451965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039126, 0.920519, -0.388733,
		-0.585929, -0.293995, -0.755152,
		-0.809417, 0.257316, 0.527856,
		47.197659, 34.621502, 36.610321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.479294, 34.901546, 35.791668>,  <47.764252, 34.441380, 36.240822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.479294, 34.901546, 35.791668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.265305, 34.969368, 36.122742>,  <47.136909, 35.010059, 36.321384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.265305, 34.969368, 36.122742>,  <47.479294, 34.901546, 35.791668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.265305, 34.969368, 36.122742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324719, 0.863145, -0.386702,
		-0.779975, -0.475639, -0.406702,
		-0.534973, 0.169554, 0.827681,
		47.104813, 35.020233, 36.371044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.197277, 34.202557, 35.423428>,  <47.479294, 34.901546, 35.791668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.197277, 34.202557, 35.423428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839211, 34.374992, 35.378113>,  <46.624371, 34.478455, 35.350925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839211, 34.374992, 35.378113>,  <47.197277, 34.202557, 35.423428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.839211, 34.374992, 35.378113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247784, -0.692556, -0.677473,
		-0.370511, -0.578381, 0.726771,
		-0.895168, 0.431094, -0.113287,
		46.570660, 34.504322, 35.344128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.717388, 33.730923, 34.989315>,  <47.197277, 34.202557, 35.423428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.717388, 33.730923, 34.989315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.434021, 33.957516, 34.820915>,  <47.264000, 34.093472, 34.719875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.434021, 33.957516, 34.820915>,  <47.717388, 33.730923, 34.989315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.434021, 33.957516, 34.820915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441937, 0.821106, 0.361215,
		0.550306, 0.069837, -0.832037,
		-0.708417, 0.566487, -0.420997,
		47.221497, 34.127460, 34.694614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.989361, 34.178936, 34.451153>,  <47.717388, 33.730923, 34.989315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.989361, 34.178936, 34.451153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658978, 34.334778, 34.614120>,  <47.460747, 34.428284, 34.711903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658978, 34.334778, 34.614120>,  <47.989361, 34.178936, 34.451153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.658978, 34.334778, 34.614120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545745, 0.733719, 0.404745,
		-0.141242, 0.556652, -0.818651,
		-0.825962, 0.389608, 0.407422,
		47.411190, 34.451660, 34.736347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.933586, 34.930672, 34.281219>,  <47.989361, 34.178936, 34.451153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.933586, 34.930672, 34.281219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730240, 34.885620, 34.622719>,  <47.608234, 34.858589, 34.827618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730240, 34.885620, 34.622719>,  <47.933586, 34.930672, 34.281219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.730240, 34.885620, 34.622719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436150, 0.821171, 0.368039,
		-0.742524, 0.559458, -0.368328,
		-0.508362, -0.112632, 0.853746,
		47.577732, 34.851830, 34.878841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.544838, 34.859112, 44.788601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.243450, 34.624104, 44.670551>,  <39.062618, 34.483097, 44.599720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.243450, 34.624104, 44.670551>,  <39.544838, 34.859112, 44.788601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243450, 34.624104, 44.670551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003504, 0.452452, -0.891782,
		0.657474, -0.670896, -0.342967,
		-0.753470, -0.587525, -0.295125,
		39.017410, 34.447845, 44.582012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813015, 34.542542, 44.163448>,  <39.544838, 34.859112, 44.788601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813015, 34.542542, 44.163448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.413433, 34.546265, 44.145550>,  <39.173683, 34.548500, 44.134811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.413433, 34.546265, 44.145550>,  <39.813015, 34.542542, 44.163448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413433, 34.546265, 44.145550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042671, 0.540599, -0.840198,
		0.016363, -0.841229, -0.540432,
		-0.998955, 0.009312, -0.044742,
		39.113747, 34.549057, 44.132126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655876, 34.526554, 43.362530>,  <39.813015, 34.542542, 44.163448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655876, 34.526554, 43.362530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295261, 34.616489, 43.510406>,  <39.078892, 34.670452, 43.599133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295261, 34.616489, 43.510406>,  <39.655876, 34.526554, 43.362530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295261, 34.616489, 43.510406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223944, 0.488607, -0.843275,
		-0.370235, -0.843036, -0.390148,
		-0.901541, 0.224839, 0.369692,
		39.024799, 34.683941, 43.621315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224644, 34.348572, 42.823223>,  <39.655876, 34.526554, 43.362530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224644, 34.348572, 42.823223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995956, 34.586948, 43.048786>,  <38.858742, 34.729973, 43.184124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995956, 34.586948, 43.048786>,  <39.224644, 34.348572, 42.823223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995956, 34.586948, 43.048786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363472, 0.432211, -0.825277,
		-0.735543, -0.676792, -0.030496,
		-0.571721, 0.595942, 0.563905,
		38.824440, 34.765732, 43.217957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549122, 34.349751, 42.445297>,  <39.224644, 34.348572, 42.823223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549122, 34.349751, 42.445297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520790, 34.661083, 42.694836>,  <38.503792, 34.847881, 42.844559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520790, 34.661083, 42.694836>,  <38.549122, 34.349751, 42.445297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520790, 34.661083, 42.694836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444491, 0.535266, -0.718274,
		-0.892979, -0.328170, 0.308047,
		-0.070829, 0.778328, 0.623850,
		38.499542, 34.894581, 42.881992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893196, 34.565010, 42.433105>,  <38.549122, 34.349751, 42.445297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893196, 34.565010, 42.433105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.103157, 34.888443, 42.539444>,  <38.229134, 35.082504, 42.603245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.103157, 34.888443, 42.539444>,  <37.893196, 34.565010, 42.433105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103157, 34.888443, 42.539444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335909, 0.483764, -0.808170,
		-0.782078, 0.334909, 0.525538,
		0.524900, 0.808584, 0.265842,
		38.260628, 35.131020, 42.619198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446018, 35.205944, 42.398476>,  <37.893196, 34.565010, 42.433105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446018, 35.205944, 42.398476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.826000, 35.322639, 42.353802>,  <38.053989, 35.392658, 42.326996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.826000, 35.322639, 42.353802>,  <37.446018, 35.205944, 42.398476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826000, 35.322639, 42.353802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271752, 0.595429, -0.756052,
		-0.154073, 0.748565, 0.644912,
		0.949954, 0.291743, -0.111685,
		38.110985, 35.410164, 42.320297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330982, 35.922939, 42.295025>,  <37.446018, 35.205944, 42.398476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330982, 35.922939, 42.295025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702271, 35.842430, 42.169872>,  <37.925045, 35.794125, 42.094780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702271, 35.842430, 42.169872>,  <37.330982, 35.922939, 42.295025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702271, 35.842430, 42.169872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129244, 0.614168, -0.778520,
		0.348858, 0.763077, 0.544070,
		0.928221, -0.201275, -0.312880,
		37.980736, 35.782047, 42.076008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648216, 36.565762, 42.013546>,  <37.330982, 35.922939, 42.295025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648216, 36.565762, 42.013546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.890652, 36.307758, 41.827374>,  <38.036114, 36.152958, 41.715672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.890652, 36.307758, 41.827374>,  <37.648216, 36.565762, 42.013546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890652, 36.307758, 41.827374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042657, 0.610670, -0.790736,
		0.794253, 0.459402, 0.397634,
		0.606088, -0.645006, -0.465429,
		38.072479, 36.114258, 41.687744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197338, 36.970966, 41.567001>,  <37.648216, 36.565762, 42.013546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197338, 36.970966, 41.567001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192112, 36.610191, 41.394333>,  <38.188976, 36.393726, 41.290733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192112, 36.610191, 41.394333>,  <38.197338, 36.970966, 41.567001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192112, 36.610191, 41.394333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013054, 0.431820, -0.901865,
		0.999829, -0.006151, -0.017418,
		-0.013069, -0.901939, -0.431666,
		38.188190, 36.339611, 41.264832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751583, 36.920403, 40.979290>,  <38.197338, 36.970966, 41.567001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751583, 36.920403, 40.979290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493343, 36.622967, 40.909698>,  <38.338398, 36.444504, 40.867943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493343, 36.622967, 40.909698>,  <38.751583, 36.920403, 40.979290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493343, 36.622967, 40.909698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079793, 0.160892, -0.983741,
		0.759497, -0.648985, -0.044538,
		-0.645599, -0.743594, -0.173981,
		38.299664, 36.399887, 40.857506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034737, 36.690384, 40.442886>,  <38.751583, 36.920403, 40.979290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034737, 36.690384, 40.442886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.677364, 36.510731, 40.445934>,  <38.462940, 36.402939, 40.447762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.677364, 36.510731, 40.445934>,  <39.034737, 36.690384, 40.442886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677364, 36.510731, 40.445934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049575, -0.115447, -0.992076,
		0.446453, -0.885975, 0.125410,
		-0.893433, -0.449132, 0.007619,
		38.409336, 36.375992, 40.448219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097557, 36.127022, 40.002876>,  <39.034737, 36.690384, 40.442886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097557, 36.127022, 40.002876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718742, 36.253433, 40.025692>,  <38.491455, 36.329281, 40.039379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718742, 36.253433, 40.025692>,  <39.097557, 36.127022, 40.002876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718742, 36.253433, 40.025692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095831, -0.108597, -0.989456,
		-0.306499, -0.942515, 0.133130,
		-0.947035, 0.316026, 0.057037,
		38.434631, 36.348240, 40.042805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705849, 35.675140, 39.621307>,  <39.097557, 36.127022, 40.002876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705849, 35.675140, 39.621307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484760, 36.006729, 39.655487>,  <38.352108, 36.205685, 39.675995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484760, 36.006729, 39.655487>,  <38.705849, 35.675140, 39.621307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484760, 36.006729, 39.655487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127787, 0.017018, -0.991656,
		-0.823513, -0.559025, 0.096526,
		-0.552717, 0.828976, 0.085450,
		38.318947, 36.255421, 39.681122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063274, 35.574310, 39.209866>,  <38.705849, 35.675140, 39.621307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063274, 35.574310, 39.209866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110359, 35.968666, 39.257469>,  <38.138611, 36.205280, 39.286030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110359, 35.968666, 39.257469>,  <38.063274, 35.574310, 39.209866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110359, 35.968666, 39.257469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104454, 0.131468, -0.985802,
		-0.987539, 0.103608, 0.118455,
		0.117710, 0.985891, 0.119008,
		38.145672, 36.264435, 39.293171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613228, 35.850693, 38.675850>,  <38.063274, 35.574310, 39.209866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613228, 35.850693, 38.675850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.836452, 36.161919, 38.791218>,  <37.970387, 36.348656, 38.860439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.836452, 36.161919, 38.791218>,  <37.613228, 35.850693, 38.675850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836452, 36.161919, 38.791218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209202, 0.468269, -0.858463,
		-0.802997, 0.418736, 0.424095,
		0.558060, 0.778064, 0.288418,
		38.003872, 36.395336, 38.877743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166000, 36.495682, 38.686069>,  <37.613228, 35.850693, 38.675850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166000, 36.495682, 38.686069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.546951, 36.610081, 38.643787>,  <37.775524, 36.678722, 38.618420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.546951, 36.610081, 38.643787>,  <37.166000, 36.495682, 38.686069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546951, 36.610081, 38.643787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235452, 0.469551, -0.850931,
		-0.193732, 0.835300, 0.514531,
		0.952381, 0.286000, -0.105706,
		37.832664, 36.695881, 38.612076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174911, 37.131123, 38.600185>,  <37.166000, 36.495682, 38.686069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174911, 37.131123, 38.600185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532951, 37.061275, 38.436089>,  <37.747776, 37.019367, 38.337631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532951, 37.061275, 38.436089>,  <37.174911, 37.131123, 38.600185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532951, 37.061275, 38.436089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279676, 0.496680, -0.821639,
		0.347234, 0.850186, 0.395743,
		0.895104, -0.174621, -0.410241,
		37.801483, 37.008888, 38.313015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380978, 37.719345, 38.186470>,  <37.174911, 37.131123, 38.600185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380978, 37.719345, 38.186470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.625107, 37.434235, 38.048222>,  <37.771584, 37.263168, 37.965271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.625107, 37.434235, 38.048222>,  <37.380978, 37.719345, 38.186470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625107, 37.434235, 38.048222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142771, 0.330189, -0.933055,
		0.779178, 0.618814, 0.099759,
		0.610326, -0.712773, -0.345624,
		37.808205, 37.220402, 37.944534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919712, 38.123432, 37.903679>,  <37.380978, 37.719345, 38.186470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919712, 38.123432, 37.903679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.963631, 37.760826, 37.740620>,  <37.989983, 37.543262, 37.642784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.963631, 37.760826, 37.740620>,  <37.919712, 38.123432, 37.903679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963631, 37.760826, 37.740620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169985, 0.386963, -0.906292,
		0.979311, 0.168798, -0.111609,
		0.109792, -0.906514, -0.407651,
		37.996567, 37.488873, 37.618324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336792, 38.294537, 37.343533>,  <37.919712, 38.123432, 37.903679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336792, 38.294537, 37.343533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.171719, 37.938660, 37.265423>,  <38.072674, 37.725132, 37.218555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.171719, 37.938660, 37.265423>,  <38.336792, 38.294537, 37.343533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171719, 37.938660, 37.265423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106907, 0.260214, -0.959614,
		0.904578, -0.375142, -0.202502,
		-0.412686, -0.889695, -0.195279,
		38.047913, 37.671753, 37.206841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570683, 38.124859, 36.680042>,  <38.336792, 38.294537, 37.343533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570683, 38.124859, 36.680042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.243076, 37.901752, 36.733864>,  <38.046513, 37.767887, 36.766155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.243076, 37.901752, 36.733864>,  <38.570683, 38.124859, 36.680042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243076, 37.901752, 36.733864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260187, 0.152037, -0.953513,
		0.511379, -0.815955, -0.269645,
		-0.819020, -0.557765, 0.134553,
		37.997372, 37.734425, 36.774231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166496, 38.182587, 37.114761>,  <38.570683, 38.124859, 36.680042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166496, 38.182587, 37.114761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.535591, 38.334595, 37.089027>,  <39.757050, 38.425800, 37.073586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.535591, 38.334595, 37.089027>,  <39.166496, 38.182587, 37.114761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535591, 38.334595, 37.089027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246200, -0.452719, 0.856990,
		0.296545, -0.806617, -0.511302,
		0.922739, 0.380019, -0.064338,
		39.812412, 38.448601, 37.069725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601025, 37.646004, 37.203205>,  <39.166496, 38.182587, 37.114761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601025, 37.646004, 37.203205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823231, 37.967720, 37.287601>,  <39.956554, 38.160751, 37.338242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823231, 37.967720, 37.287601>,  <39.601025, 37.646004, 37.203205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823231, 37.967720, 37.287601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267736, -0.413253, 0.870367,
		0.787221, -0.427014, -0.444907,
		0.555518, 0.804289, 0.210995,
		39.989887, 38.209007, 37.350899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274277, 37.398151, 37.539165>,  <39.601025, 37.646004, 37.203205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274277, 37.398151, 37.539165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.236710, 37.780708, 37.649792>,  <40.214169, 38.010242, 37.716167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.236710, 37.780708, 37.649792>,  <40.274277, 37.398151, 37.539165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236710, 37.780708, 37.649792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613698, -0.163120, 0.772506,
		0.783934, 0.242281, -0.571618,
		-0.093921, 0.956395, 0.276563,
		40.208534, 38.067627, 37.732761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860931, 37.535236, 37.820953>,  <40.274277, 37.398151, 37.539165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860931, 37.535236, 37.820953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.655060, 37.848595, 37.960327>,  <40.531536, 38.036610, 38.043953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.655060, 37.848595, 37.960327>,  <40.860931, 37.535236, 37.820953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655060, 37.848595, 37.960327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439096, -0.108215, 0.891899,
		0.736413, 0.612034, -0.288289,
		-0.514675, 0.783393, 0.348433,
		40.500656, 38.083614, 38.064857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324993, 37.878174, 38.246830>,  <40.860931, 37.535236, 37.820953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324993, 37.878174, 38.246830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.958942, 37.986797, 38.366028>,  <40.739311, 38.051971, 38.437546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.958942, 37.986797, 38.366028>,  <41.324993, 37.878174, 38.246830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958942, 37.986797, 38.366028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276338, -0.115726, 0.954067,
		0.293574, 0.955438, 0.030860,
		-0.915124, 0.271562, 0.297998,
		40.684406, 38.068264, 38.455429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486633, 38.408855, 38.700619>,  <41.324993, 37.878174, 38.246830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486633, 38.408855, 38.700619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.114147, 38.290249, 38.785397>,  <40.890656, 38.219086, 38.836262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.114147, 38.290249, 38.785397>,  <41.486633, 38.408855, 38.700619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114147, 38.290249, 38.785397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307615, -0.327500, 0.893374,
		-0.195493, 0.897117, 0.396186,
		-0.931212, -0.296521, 0.211943,
		40.834785, 38.201294, 38.848980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332527, 38.647419, 39.377911>,  <41.486633, 38.408855, 38.700619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332527, 38.647419, 39.377911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.081806, 38.337864, 39.341652>,  <40.931374, 38.152130, 39.319897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.081806, 38.337864, 39.341652>,  <41.332527, 38.647419, 39.377911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081806, 38.337864, 39.341652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285697, -0.336499, 0.897299,
		-0.724912, 0.536531, 0.432015,
		-0.626801, -0.773888, -0.090647,
		40.893764, 38.105698, 39.314457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079178, 38.698780, 40.030155>,  <41.332527, 38.647419, 39.377911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079178, 38.698780, 40.030155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.000057, 38.332119, 39.891228>,  <40.952583, 38.112122, 39.807873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.000057, 38.332119, 39.891228>,  <41.079178, 38.698780, 40.030155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000057, 38.332119, 39.891228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048105, -0.362965, 0.930560,
		-0.979061, 0.167359, 0.115891,
		-0.197803, -0.916650, -0.347314,
		40.940716, 38.057125, 39.787033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538212, 38.407543, 40.531651>,  <41.079178, 38.698780, 40.030155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538212, 38.407543, 40.531651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.700138, 38.091488, 40.347557>,  <40.797295, 37.901855, 40.237103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.700138, 38.091488, 40.347557>,  <40.538212, 38.407543, 40.531651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700138, 38.091488, 40.347557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009467, -0.499668, 0.866165,
		-0.914351, -0.354991, -0.194792,
		0.404812, -0.790135, -0.460233,
		40.821583, 37.854446, 40.209488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110764, 37.756958, 40.708370>,  <40.538212, 38.407543, 40.531651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110764, 37.756958, 40.708370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.456673, 37.607342, 40.574348>,  <40.664219, 37.517570, 40.493935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.456673, 37.607342, 40.574348>,  <40.110764, 37.756958, 40.708370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456673, 37.607342, 40.574348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006517, -0.675526, 0.737307,
		-0.502123, -0.635419, -0.586614,
		0.864772, -0.374041, -0.335056,
		40.716103, 37.495129, 40.473831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073814, 37.046635, 40.824139>,  <40.110764, 37.756958, 40.708370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073814, 37.046635, 40.824139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.465561, 37.101467, 40.764732>,  <40.700607, 37.134365, 40.729088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.465561, 37.101467, 40.764732>,  <40.073814, 37.046635, 40.824139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465561, 37.101467, 40.764732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200017, -0.551997, 0.809501,
		0.028984, -0.822501, -0.568024,
		0.979364, 0.137077, -0.148515,
		40.759369, 37.142590, 40.720177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432034, 36.470436, 40.833958>,  <40.073814, 37.046635, 40.824139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432034, 36.470436, 40.833958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.726540, 36.732304, 40.902454>,  <40.903244, 36.889423, 40.943554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.726540, 36.732304, 40.902454>,  <40.432034, 36.470436, 40.833958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726540, 36.732304, 40.902454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281921, -0.526806, 0.801871,
		0.615168, -0.542114, -0.572434,
		0.736267, 0.654666, 0.171241,
		40.947418, 36.928703, 40.953827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072678, 36.123081, 40.825554>,  <40.432034, 36.470436, 40.833958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072678, 36.123081, 40.825554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.069847, 36.437065, 41.073360>,  <41.068150, 36.625454, 41.222042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.069847, 36.437065, 41.073360>,  <41.072678, 36.123081, 40.825554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069847, 36.437065, 41.073360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218034, -0.603410, 0.767045,
		0.975916, 0.140502, -0.166877,
		-0.007076, 0.784956, 0.619512,
		41.067726, 36.672550, 41.259212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676491, 36.082478, 41.278294>,  <41.072678, 36.123081, 40.825554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676491, 36.082478, 41.278294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.420467, 36.323193, 41.469364>,  <41.266853, 36.467621, 41.584007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.420467, 36.323193, 41.469364>,  <41.676491, 36.082478, 41.278294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420467, 36.323193, 41.469364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273573, -0.402457, 0.873605,
		0.717972, 0.689837, 0.092962,
		-0.640058, 0.601792, 0.477674,
		41.228451, 36.503731, 41.612667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064411, 36.483109, 41.838978>,  <41.676491, 36.082478, 41.278294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064411, 36.483109, 41.838978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.678478, 36.474697, 41.943794>,  <41.446918, 36.469650, 42.006683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.678478, 36.474697, 41.943794>,  <42.064411, 36.483109, 41.838978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678478, 36.474697, 41.943794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225412, -0.579046, 0.783514,
		0.135258, 0.815023, 0.563420,
		-0.964829, -0.021025, 0.262036,
		41.389030, 36.468388, 42.022404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019680, 36.689754, 42.587193>,  <42.064411, 36.483109, 41.838978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019680, 36.689754, 42.587193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.668571, 36.506836, 42.530056>,  <41.457909, 36.397083, 42.495773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.668571, 36.506836, 42.530056>,  <42.019680, 36.689754, 42.587193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668571, 36.506836, 42.530056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071846, -0.420427, 0.904477,
		-0.473671, 0.783657, 0.401892,
		-0.877767, -0.457299, -0.142841,
		41.405243, 36.369648, 42.487206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732552, 36.825478, 43.215984>,  <42.019680, 36.689754, 42.587193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732552, 36.825478, 43.215984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.521259, 36.514034, 43.080494>,  <41.394485, 36.327168, 42.999199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.521259, 36.514034, 43.080494>,  <41.732552, 36.825478, 43.215984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521259, 36.514034, 43.080494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057445, -0.430781, 0.900627,
		-0.847154, 0.456282, 0.272280,
		-0.528232, -0.778611, -0.338726,
		41.362789, 36.280453, 42.978874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285469, 36.665859, 43.698071>,  <41.732552, 36.825478, 43.215984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285469, 36.665859, 43.698071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.301311, 36.317348, 43.502392>,  <41.310818, 36.108242, 43.384987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.301311, 36.317348, 43.502392>,  <41.285469, 36.665859, 43.698071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301311, 36.317348, 43.502392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074501, -0.485640, 0.870978,
		-0.996434, -0.070945, 0.045675,
		0.039610, -0.871275, -0.489194,
		41.313194, 36.055965, 43.355633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.722569, 36.224339, 43.885880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.975719, 35.961082, 43.722748>,  <41.127609, 35.803131, 43.624870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.975719, 35.961082, 43.722748>,  <40.722569, 36.224339, 43.885880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975719, 35.961082, 43.722748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073269, -0.575282, 0.814667,
		-0.770778, -0.485702, -0.412303,
		0.632876, -0.658136, -0.407829,
		41.165581, 35.763641, 43.600399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381859, 35.627464, 43.789646>,  <40.722569, 36.224339, 43.885880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381859, 35.627464, 43.789646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.768642, 35.542404, 43.845898>,  <41.000713, 35.491367, 43.879650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.768642, 35.542404, 43.845898>,  <40.381859, 35.627464, 43.789646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768642, 35.542404, 43.845898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241620, -0.588394, 0.771630,
		-0.081343, -0.780111, -0.620331,
		0.966956, -0.212651, 0.140629,
		41.058727, 35.478607, 43.888084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335667, 35.110977, 44.298904>,  <40.381859, 35.627464, 43.789646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335667, 35.110977, 44.298904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.735130, 35.117786, 44.279327>,  <40.974808, 35.121872, 44.267582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.735130, 35.117786, 44.279327>,  <40.335667, 35.110977, 44.298904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735130, 35.117786, 44.279327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049056, -0.614894, 0.787083,
		-0.016694, -0.788426, -0.614903,
		0.998657, 0.017025, -0.048942,
		41.034729, 35.122894, 44.264645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687908, 34.353985, 44.225773>,  <40.335667, 35.110977, 44.298904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687908, 34.353985, 44.225773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.931751, 34.627544, 44.386105>,  <41.078056, 34.791679, 44.482304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.931751, 34.627544, 44.386105>,  <40.687908, 34.353985, 44.225773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931751, 34.627544, 44.386105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109396, -0.573390, 0.811946,
		0.785118, -0.451121, -0.424358,
		0.609608, 0.683897, 0.400828,
		41.114635, 34.832714, 44.506351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276890, 33.944145, 44.453915>,  <40.687908, 34.353985, 44.225773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276890, 33.944145, 44.453915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.276779, 34.291710, 44.651901>,  <41.276714, 34.500248, 44.770695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.276779, 34.291710, 44.651901>,  <41.276890, 33.944145, 44.453915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276779, 34.291710, 44.651901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117433, -0.491515, 0.862915,
		0.993081, 0.058363, -0.101904,
		-0.000275, 0.868911, 0.494968,
		41.276695, 34.552383, 44.800392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917854, 34.053123, 44.787685>,  <41.276890, 33.944145, 44.453915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917854, 34.053123, 44.787685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668015, 34.289215, 44.992233>,  <41.518108, 34.430870, 45.114964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668015, 34.289215, 44.992233>,  <41.917854, 34.053123, 44.787685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668015, 34.289215, 44.992233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238792, -0.479107, 0.844651,
		0.743538, 0.649684, 0.158311,
		-0.624604, 0.590226, 0.511374,
		41.480633, 34.466282, 45.145645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404835, 34.321049, 45.348934>,  <41.917854, 34.053123, 44.787685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404835, 34.321049, 45.348934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.031292, 34.389355, 45.474636>,  <41.807167, 34.430336, 45.550056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.031292, 34.389355, 45.474636>,  <42.404835, 34.321049, 45.348934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031292, 34.389355, 45.474636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256074, -0.294181, 0.920806,
		0.249687, 0.940371, 0.230994,
		-0.933853, 0.170762, 0.314258,
		41.751137, 34.440582, 45.568913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473473, 34.586403, 46.024632>,  <42.404835, 34.321049, 45.348934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473473, 34.586403, 46.024632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.089760, 34.473679, 46.032265>,  <41.859531, 34.406044, 46.036846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.089760, 34.473679, 46.032265>,  <42.473473, 34.586403, 46.024632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089760, 34.473679, 46.032265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099971, -0.275559, 0.956072,
		-0.264169, 0.919049, 0.292511,
		-0.959281, -0.281807, 0.019084,
		41.801975, 34.389137, 46.037991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268707, 34.801655, 46.733261>,  <42.473473, 34.586403, 46.024632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268707, 34.801655, 46.733261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.999519, 34.534599, 46.605904>,  <41.838009, 34.374367, 46.529491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.999519, 34.534599, 46.605904>,  <42.268707, 34.801655, 46.733261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999519, 34.534599, 46.605904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084546, -0.358194, 0.929812,
		-0.734826, 0.652650, 0.184605,
		-0.672966, -0.667641, -0.318389,
		41.797630, 34.334309, 46.510387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742199, 34.730255, 47.276398>,  <42.268707, 34.801655, 46.733261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742199, 34.730255, 47.276398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.712589, 34.391060, 47.066471>,  <41.694824, 34.187542, 46.940514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.712589, 34.391060, 47.066471>,  <41.742199, 34.730255, 47.276398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712589, 34.391060, 47.066471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028906, -0.524214, 0.851096,
		-0.996837, 0.078176, 0.014294,
		-0.074028, -0.847991, -0.524815,
		41.690380, 34.136662, 46.909027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135208, 34.471962, 47.499531>,  <41.742199, 34.730255, 47.276398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135208, 34.471962, 47.499531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.362289, 34.178482, 47.350185>,  <41.498539, 34.002396, 47.260578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.362289, 34.178482, 47.350185>,  <41.135208, 34.471962, 47.499531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362289, 34.178482, 47.350185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194726, -0.560345, 0.805044,
		-0.799873, -0.384321, -0.460979,
		0.567702, -0.733697, -0.373367,
		41.532600, 33.958374, 47.238174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769432, 33.946064, 47.688324>,  <41.135208, 34.471962, 47.499531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769432, 33.946064, 47.688324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.125721, 33.787861, 47.598721>,  <41.339497, 33.692940, 47.544956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.125721, 33.787861, 47.598721>,  <40.769432, 33.946064, 47.688324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125721, 33.787861, 47.598721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086588, -0.631451, 0.770566,
		-0.446216, -0.666967, -0.596696,
		0.890727, -0.395506, -0.224012,
		41.392941, 33.669209, 47.531517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756077, 33.161514, 47.605984>,  <40.769432, 33.946064, 47.688324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756077, 33.161514, 47.605984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.148338, 33.198269, 47.675121>,  <41.383694, 33.220322, 47.716602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.148338, 33.198269, 47.675121>,  <40.756077, 33.161514, 47.605984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148338, 33.198269, 47.675121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047088, -0.746333, 0.663905,
		0.189999, -0.659200, -0.727568,
		0.980655, 0.091882, 0.172843,
		41.442535, 33.225834, 47.726974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999866, 32.469334, 47.600651>,  <40.756077, 33.161514, 47.605984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999866, 32.469334, 47.600651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.270176, 32.679436, 47.807507>,  <41.432362, 32.805496, 47.931622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.270176, 32.679436, 47.807507>,  <40.999866, 32.469334, 47.600651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270176, 32.679436, 47.807507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031905, -0.680081, 0.732442,
		0.736418, -0.511464, -0.442823,
		0.675774, 0.525256, 0.517142,
		41.472908, 32.837013, 47.962650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508057, 31.925900, 47.881851>,  <40.999866, 32.469334, 47.600651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508057, 31.925900, 47.881851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.605686, 32.243591, 48.104427>,  <41.664265, 32.434204, 48.237972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.605686, 32.243591, 48.104427>,  <41.508057, 31.925900, 47.881851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605686, 32.243591, 48.104427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174795, -0.600430, 0.780339,
		0.953874, -0.093195, -0.285376,
		0.244072, 0.794228, 0.556445,
		41.678909, 32.481861, 48.271362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035969, 31.700788, 48.249172>,  <41.508057, 31.925900, 47.881851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035969, 31.700788, 48.249172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.904819, 32.011665, 48.464012>,  <41.826130, 32.198193, 48.592915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.904819, 32.011665, 48.464012>,  <42.035969, 31.700788, 48.249172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904819, 32.011665, 48.464012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067707, -0.547731, 0.833910,
		0.942291, 0.309785, 0.126967,
		-0.327877, 0.777190, 0.537096,
		41.806458, 32.244823, 48.625141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429829, 31.837677, 48.748291>,  <42.035969, 31.700788, 48.249172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429829, 31.837677, 48.748291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.091045, 31.997770, 48.888275>,  <41.887775, 32.093826, 48.972263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.091045, 31.997770, 48.888275>,  <42.429829, 31.837677, 48.748291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091045, 31.997770, 48.888275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006510, -0.650383, 0.759578,
		0.531614, 0.645612, 0.548244,
		-0.846962, 0.400233, 0.349956,
		41.836956, 32.117840, 48.993263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487804, 32.060741, 49.393841>,  <42.429829, 31.837677, 48.748291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487804, 32.060741, 49.393841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.090919, 32.019390, 49.366039>,  <41.852791, 31.994577, 49.349358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.090919, 32.019390, 49.366039>,  <42.487804, 32.060741, 49.393841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090919, 32.019390, 49.366039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005841, -0.595942, 0.803006,
		-0.124440, 0.796345, 0.591904,
		-0.992210, -0.103383, -0.069508,
		41.793255, 31.988375, 49.345188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278625, 31.927681, 49.977901>,  <42.487804, 32.060741, 49.393841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278625, 31.927681, 49.977901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.942177, 31.813606, 49.794083>,  <41.740307, 31.745161, 49.683792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.942177, 31.813606, 49.794083>,  <42.278625, 31.927681, 49.977901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942177, 31.813606, 49.794083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111639, -0.739830, 0.663467,
		-0.529198, 0.609360, 0.590449,
		-0.841122, -0.285189, -0.459545,
		41.689842, 31.728050, 49.656219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749969, 31.737722, 50.522568>,  <42.278625, 31.927681, 49.977901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749969, 31.737722, 50.522568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.642796, 31.521540, 50.203541>,  <41.578491, 31.391830, 50.012123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.642796, 31.521540, 50.203541>,  <41.749969, 31.737722, 50.522568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642796, 31.521540, 50.203541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012495, -0.829718, 0.558043,
		-0.963357, 0.139551, 0.229060,
		-0.267931, -0.540457, -0.797571,
		41.562416, 31.359402, 49.964272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326744, 31.260946, 50.834652>,  <41.749969, 31.737722, 50.522568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326744, 31.260946, 50.834652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.403545, 31.093996, 50.479362>,  <41.449627, 30.993826, 50.266190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.403545, 31.093996, 50.479362>,  <41.326744, 31.260946, 50.834652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403545, 31.093996, 50.479362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066862, -0.908519, 0.412459,
		-0.979114, -0.019805, -0.202344,
		0.192002, -0.417374, -0.888220,
		41.461147, 30.968784, 50.212898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885658, 30.765875, 50.941208>,  <41.326744, 31.260946, 50.834652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885658, 30.765875, 50.941208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.130665, 30.654560, 50.645267>,  <41.277668, 30.587770, 50.467705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.130665, 30.654560, 50.645267>,  <40.885658, 30.765875, 50.941208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130665, 30.654560, 50.645267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061456, -0.916380, 0.395565,
		-0.788066, -0.287758, -0.544194,
		0.612516, -0.278287, -0.739852,
		41.314419, 30.571074, 50.423313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590939, 30.221655, 50.650833>,  <40.885658, 30.765875, 50.941208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590939, 30.221655, 50.650833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.975937, 30.166988, 50.557095>,  <41.206936, 30.134188, 50.500851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.975937, 30.166988, 50.557095>,  <40.590939, 30.221655, 50.650833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975937, 30.166988, 50.557095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064172, -0.954017, 0.292804,
		-0.263588, -0.266784, -0.927010,
		0.962498, -0.136668, -0.234348,
		41.264687, 30.125988, 50.486790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782986, 29.503790, 50.311306>,  <40.590939, 30.221655, 50.650833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782986, 29.503790, 50.311306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.112839, 29.623718, 50.503178>,  <41.310749, 29.695675, 50.618301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.112839, 29.623718, 50.503178>,  <40.782986, 29.503790, 50.311306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112839, 29.623718, 50.503178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034420, -0.873005, 0.486495,
		0.564621, -0.384669, -0.730228,
		0.824632, 0.299819, 0.479677,
		41.360229, 29.713663, 50.647079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046425, 29.321198, 50.803703>,  <40.782986, 29.503790, 50.311306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046425, 29.321198, 50.803703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.654339, 29.268703, 50.744423>,  <39.419086, 29.237207, 50.708855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.654339, 29.268703, 50.744423>,  <40.046425, 29.321198, 50.803703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654339, 29.268703, 50.744423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089314, 0.374913, -0.922748,
		0.176656, -0.917724, -0.355773,
		-0.980212, -0.131233, -0.148196,
		39.360275, 29.229334, 50.699963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989388, 29.028030, 50.150558>,  <40.046425, 29.321198, 50.803703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989388, 29.028030, 50.150558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.621342, 29.164289, 50.227859>,  <39.400513, 29.246046, 50.274242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.621342, 29.164289, 50.227859>,  <39.989388, 29.028030, 50.150558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621342, 29.164289, 50.227859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036715, 0.416244, -0.908512,
		-0.389926, -0.843029, -0.370484,
		-0.920114, 0.340650, 0.193256,
		39.345306, 29.266485, 50.285835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635395, 28.786880, 49.549210>,  <39.989388, 29.028030, 50.150558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635395, 28.786880, 49.549210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.450199, 29.107012, 49.701584>,  <39.339081, 29.299091, 49.793007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.450199, 29.107012, 49.701584>,  <39.635395, 28.786880, 49.549210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450199, 29.107012, 49.701584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018671, 0.438486, -0.898544,
		-0.886167, -0.408903, -0.217957,
		-0.462989, 0.800330, 0.380937,
		39.311302, 29.347111, 49.815865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468807, 29.122431, 48.908474>,  <39.635395, 28.786880, 49.549210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468807, 29.122431, 48.908474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.353836, 29.410999, 49.160484>,  <39.284855, 29.584141, 49.311691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.353836, 29.410999, 49.160484>,  <39.468807, 29.122431, 48.908474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353836, 29.410999, 49.160484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029987, 0.664242, -0.746916,
		-0.957334, -0.195788, -0.212552,
		-0.287423, 0.721422, 0.630030,
		39.267609, 29.627426, 49.349495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918560, 29.427767, 48.554253>,  <39.468807, 29.122431, 48.908474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918560, 29.427767, 48.554253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.034351, 29.713696, 48.808884>,  <39.103825, 29.885254, 48.961662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.034351, 29.713696, 48.808884>,  <38.918560, 29.427767, 48.554253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034351, 29.713696, 48.808884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162248, 0.618785, -0.768623,
		-0.943334, 0.325781, 0.063145,
		0.289476, 0.714823, 0.636578,
		39.121193, 29.928143, 48.999859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527451, 29.967140, 48.278915>,  <38.918560, 29.427767, 48.554253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527451, 29.967140, 48.278915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836189, 30.119102, 48.482849>,  <39.021431, 30.210279, 48.605209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836189, 30.119102, 48.482849>,  <38.527451, 29.967140, 48.278915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836189, 30.119102, 48.482849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081216, 0.736382, -0.671674,
		-0.630603, 0.559834, 0.537518,
		0.771845, 0.379905, 0.509832,
		39.067741, 30.233074, 48.635799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469051, 30.652500, 48.163185>,  <38.527451, 29.967140, 48.278915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469051, 30.652500, 48.163185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.838177, 30.625666, 48.314934>,  <39.059650, 30.609566, 48.405983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.838177, 30.625666, 48.314934>,  <38.469051, 30.652500, 48.163185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838177, 30.625666, 48.314934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298932, 0.745858, -0.595260,
		-0.243023, 0.662718, 0.708340,
		0.922811, -0.067084, 0.379368,
		39.115021, 30.605541, 48.428745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695080, 31.298952, 48.415401>,  <38.469051, 30.652500, 48.163185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695080, 31.298952, 48.415401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.993515, 31.062099, 48.293594>,  <39.172577, 30.919989, 48.220512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.993515, 31.062099, 48.293594>,  <38.695080, 31.298952, 48.415401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993515, 31.062099, 48.293594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304450, 0.710103, -0.634873,
		0.592164, 0.380964, 0.710076,
		0.746091, -0.592132, -0.304513,
		39.217342, 30.884460, 48.202240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129337, 31.770620, 48.287941>,  <38.695080, 31.298952, 48.415401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129337, 31.770620, 48.287941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.272911, 31.448013, 48.100025>,  <39.359055, 31.254450, 47.987278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.272911, 31.448013, 48.100025>,  <39.129337, 31.770620, 48.287941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272911, 31.448013, 48.100025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363013, 0.584326, -0.725799,
		0.859877, 0.089973, 0.502509,
		0.358932, -0.806516, -0.469787,
		39.380592, 31.206059, 47.959087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829716, 31.965620, 48.053757>,  <39.129337, 31.770620, 48.287941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829716, 31.965620, 48.053757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711697, 31.662851, 47.820515>,  <39.640884, 31.481190, 47.680569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711697, 31.662851, 47.820515>,  <39.829716, 31.965620, 48.053757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711697, 31.662851, 47.820515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392252, 0.460526, -0.796275,
		0.871256, -0.463662, 0.161029,
		-0.295045, -0.756923, -0.583108,
		39.623184, 31.435774, 47.645580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415482, 31.896458, 47.592987>,  <39.829716, 31.965620, 48.053757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415482, 31.896458, 47.592987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.095032, 31.729906, 47.421024>,  <39.902760, 31.629974, 47.317848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.095032, 31.729906, 47.421024>,  <40.415482, 31.896458, 47.592987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095032, 31.729906, 47.421024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122660, 0.588836, -0.798891,
		0.585734, -0.692774, -0.420689,
		-0.801168, -0.416336, -0.429877,
		39.854694, 31.604992, 47.292053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604198, 31.770798, 46.871208>,  <40.415482, 31.896458, 47.592987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604198, 31.770798, 46.871208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.205215, 31.769573, 46.899689>,  <39.965824, 31.768839, 46.916779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.205215, 31.769573, 46.899689>,  <40.604198, 31.770798, 46.871208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205215, 31.769573, 46.899689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061336, 0.545598, -0.835799,
		-0.036290, -0.838042, -0.544398,
		-0.997457, -0.003060, 0.071202,
		39.905979, 31.768656, 46.921051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361420, 31.714367, 46.145409>,  <40.604198, 31.770798, 46.871208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361420, 31.714367, 46.145409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.063732, 31.866846, 46.364799>,  <39.885120, 31.958334, 46.496433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.063732, 31.866846, 46.364799>,  <40.361420, 31.714367, 46.145409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063732, 31.866846, 46.364799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258470, 0.592815, -0.762734,
		-0.615898, -0.709406, -0.342656,
		-0.744220, 0.381200, 0.548474,
		39.840466, 31.981207, 46.529343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948135, 31.800285, 45.697193>,  <40.361420, 31.714367, 46.145409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948135, 31.800285, 45.697193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.792030, 32.017204, 45.994812>,  <39.698368, 32.147358, 46.173382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.792030, 32.017204, 45.994812>,  <39.948135, 31.800285, 45.697193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792030, 32.017204, 45.994812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264687, 0.707932, -0.654807,
		-0.881837, -0.452486, -0.132739,
		-0.390262, 0.542299, 0.744048,
		39.674953, 32.179893, 46.218025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163296, 32.057716, 45.475838>,  <39.948135, 31.800285, 45.697193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163296, 32.057716, 45.475838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285374, 32.292370, 45.775894>,  <39.358620, 32.433163, 45.955929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285374, 32.292370, 45.775894>,  <39.163296, 32.057716, 45.475838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285374, 32.292370, 45.775894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236182, 0.809743, -0.537155,
		-0.922537, -0.013233, 0.385683,
		0.305195, 0.586636, 0.750142,
		39.376934, 32.468361, 46.000938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549110, 32.445465, 45.716515>,  <39.163296, 32.057716, 45.475838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549110, 32.445465, 45.716515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869312, 32.656322, 45.830578>,  <39.061432, 32.782837, 45.899014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869312, 32.656322, 45.830578>,  <38.549110, 32.445465, 45.716515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869312, 32.656322, 45.830578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325615, 0.781980, -0.531490,
		-0.503156, 0.332610, 0.797625,
		0.800506, 0.527141, 0.285155,
		39.109463, 32.814465, 45.916122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316353, 33.088200, 46.020741>,  <38.549110, 32.445465, 45.716515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316353, 33.088200, 46.020741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.690678, 33.161644, 45.900387>,  <38.915272, 33.205711, 45.828175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.690678, 33.161644, 45.900387>,  <38.316353, 33.088200, 46.020741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690678, 33.161644, 45.900387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292906, 0.879955, -0.374012,
		0.196096, 0.438139, 0.877258,
		0.935817, 0.183612, -0.300889,
		38.971424, 33.216728, 45.810120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292221, 33.793102, 46.040470>,  <38.316353, 33.088200, 46.020741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292221, 33.793102, 46.040470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608288, 33.698139, 45.814449>,  <38.797928, 33.641163, 45.678837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608288, 33.698139, 45.814449>,  <38.292221, 33.793102, 46.040470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608288, 33.698139, 45.814449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156400, 0.813307, -0.560420,
		0.592605, 0.531197, 0.605515,
		0.790163, -0.237405, -0.565049,
		38.845337, 33.626919, 45.644936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632328, 34.423191, 45.841942>,  <38.292221, 33.793102, 46.040470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632328, 34.423191, 45.841942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.746685, 34.189316, 45.538258>,  <38.815300, 34.048988, 45.356049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.746685, 34.189316, 45.538258>,  <38.632328, 34.423191, 45.841942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746685, 34.189316, 45.538258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061563, 0.779436, -0.623450,
		0.956281, 0.224980, 0.186842,
		0.285895, -0.584691, -0.759210,
		38.832455, 34.013908, 45.310493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116997, 34.872387, 45.345383>,  <38.632328, 34.423191, 45.841942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116997, 34.872387, 45.345383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.002228, 34.557137, 45.127563>,  <38.933365, 34.367989, 44.996872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.002228, 34.557137, 45.127563>,  <39.116997, 34.872387, 45.345383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002228, 34.557137, 45.127563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034988, 0.576695, -0.816210,
		0.957314, -0.215139, -0.193044,
		-0.286926, -0.788123, -0.544551,
		38.916149, 34.320698, 44.964199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.372635, 29.259960, 42.803539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.975056, 29.252235, 42.846798>,  <45.736507, 29.247601, 42.872753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.975056, 29.252235, 42.846798>,  <46.372635, 29.259960, 42.803539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975056, 29.252235, 42.846798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090867, 0.697742, -0.710563,
		-0.061736, -0.716089, -0.695274,
		-0.993948, -0.019310, 0.108145,
		45.676872, 29.246443, 42.879242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990078, 29.187452, 42.043251>,  <46.372635, 29.259960, 42.803539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990078, 29.187452, 42.043251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.792835, 29.376156, 42.335632>,  <45.674488, 29.489378, 42.511059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.792835, 29.376156, 42.335632>,  <45.990078, 29.187452, 42.043251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792835, 29.376156, 42.335632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035769, 0.828497, -0.558850,
		-0.869233, -0.301718, -0.391664,
		-0.493108, 0.471761, 0.730949,
		45.644901, 29.517685, 42.554916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353271, 29.458263, 41.686867>,  <45.990078, 29.187452, 42.043251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353271, 29.458263, 41.686867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381187, 29.669254, 42.025547>,  <45.397938, 29.795849, 42.228756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381187, 29.669254, 42.025547>,  <45.353271, 29.458263, 41.686867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381187, 29.669254, 42.025547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076535, 0.849097, -0.522663,
		-0.994622, -0.028327, 0.099625,
		0.069786, 0.527477, 0.846698,
		45.402122, 29.827497, 42.279556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896942, 30.047115, 41.534481>,  <45.353271, 29.458263, 41.686867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896942, 30.047115, 41.534481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.116787, 30.138819, 41.855820>,  <45.248692, 30.193840, 42.048622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.116787, 30.138819, 41.855820>,  <44.896942, 30.047115, 41.534481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116787, 30.138819, 41.855820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178694, 0.907094, -0.381116,
		-0.816088, 0.353019, 0.457579,
		0.549608, 0.229257, 0.803350,
		45.281670, 30.207596, 42.096825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542194, 30.615187, 41.871361>,  <44.896942, 30.047115, 41.534481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542194, 30.615187, 41.871361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927719, 30.625254, 41.977516>,  <45.159035, 30.631294, 42.041210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927719, 30.625254, 41.977516>,  <44.542194, 30.615187, 41.871361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927719, 30.625254, 41.977516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101842, 0.885263, -0.453804,
		-0.246360, 0.464410, 0.850664,
		0.963813, 0.025166, 0.265390,
		45.216862, 30.632803, 42.057133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587032, 31.186176, 42.276588>,  <44.542194, 30.615187, 41.871361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587032, 31.186176, 42.276588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.962597, 31.117058, 42.157532>,  <45.187935, 31.075586, 42.086098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.962597, 31.117058, 42.157532>,  <44.587032, 31.186176, 42.276588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962597, 31.117058, 42.157532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060810, 0.934508, -0.350710,
		0.338746, 0.311186, 0.887927,
		0.938911, -0.172796, -0.297638,
		45.244270, 31.065218, 42.068241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.019100, 31.738022, 42.488144>,  <44.587032, 31.186176, 42.276588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.019100, 31.738022, 42.488144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.191021, 31.552132, 42.178486>,  <45.294174, 31.440598, 41.992691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.191021, 31.552132, 42.178486>,  <45.019100, 31.738022, 42.488144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191021, 31.552132, 42.178486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067966, 0.871595, -0.485493,
		0.900361, 0.156052, 0.406200,
		0.429804, -0.464726, -0.774144,
		45.319962, 31.412714, 41.946243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625156, 32.184284, 42.295788>,  <45.019100, 31.738022, 42.488144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625156, 32.184284, 42.295788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598175, 31.946106, 41.975567>,  <45.581985, 31.803198, 41.783432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598175, 31.946106, 41.975567>,  <45.625156, 32.184284, 42.295788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598175, 31.946106, 41.975567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193653, 0.779311, -0.595964,
		0.978749, -0.195227, 0.062747,
		-0.067449, -0.595450, -0.800556,
		45.577942, 31.767471, 41.735401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.062595, 32.457825, 41.860096>,  <45.625156, 32.184284, 42.295788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.062595, 32.457825, 41.860096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.821987, 32.237270, 41.628876>,  <45.677624, 32.104939, 41.490143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.821987, 32.237270, 41.628876>,  <46.062595, 32.457825, 41.860096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.821987, 32.237270, 41.628876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134228, 0.643550, -0.753543,
		0.787500, -0.530862, -0.313097,
		-0.601521, -0.551389, -0.578052,
		45.641529, 32.071854, 41.455460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455357, 32.424473, 41.191376>,  <46.062595, 32.457825, 41.860096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455357, 32.424473, 41.191376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.064335, 32.353283, 41.146294>,  <45.829720, 32.310570, 41.119244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.064335, 32.353283, 41.146294>,  <46.455357, 32.424473, 41.191376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.064335, 32.353283, 41.146294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046137, 0.702894, -0.709797,
		0.205547, -0.688668, -0.695332,
		-0.977559, -0.177978, -0.112705,
		45.771069, 32.299889, 41.112484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.341614, 32.272961, 40.459667>,  <46.455357, 32.424473, 41.191376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.341614, 32.272961, 40.459667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.991673, 32.392315, 40.612293>,  <45.781708, 32.463928, 40.703869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.991673, 32.392315, 40.612293>,  <46.341614, 32.272961, 40.459667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991673, 32.392315, 40.612293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086741, 0.678500, -0.729462,
		-0.476550, -0.671272, -0.567709,
		-0.874858, 0.298382, 0.381566,
		45.729214, 32.481831, 40.726765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876076, 32.357948, 39.898903>,  <46.341614, 32.272961, 40.459667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876076, 32.357948, 39.898903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.717678, 32.593102, 40.181061>,  <45.622639, 32.734196, 40.350353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.717678, 32.593102, 40.181061>,  <45.876076, 32.357948, 39.898903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717678, 32.593102, 40.181061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206336, 0.691576, -0.692205,
		-0.894770, -0.419657, -0.152557,
		-0.395994, 0.587887, 0.705392,
		45.598881, 32.769466, 40.392677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276596, 32.606415, 39.593365>,  <45.876076, 32.357948, 39.898903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276596, 32.606415, 39.593365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.350296, 32.855614, 39.897449>,  <45.394516, 33.005135, 40.079899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.350296, 32.855614, 39.897449>,  <45.276596, 32.606415, 39.593365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350296, 32.855614, 39.897449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355621, 0.763309, -0.539344,
		-0.916288, -0.170972, 0.362194,
		0.184253, 0.622999, 0.760213,
		45.405571, 33.042515, 40.125515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.590374, 33.026909, 39.695591>,  <45.276596, 32.606415, 39.593365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.590374, 33.026909, 39.695591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.920017, 33.203911, 39.837036>,  <45.117802, 33.310112, 39.921902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.920017, 33.203911, 39.837036>,  <44.590374, 33.026909, 39.695591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920017, 33.203911, 39.837036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250647, 0.844709, -0.472909,
		-0.507962, 0.301095, 0.807042,
		0.824106, 0.442502, 0.353611,
		45.167248, 33.336662, 39.943119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344555, 33.710953, 39.604210>,  <44.590374, 33.026909, 39.695591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344555, 33.710953, 39.604210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.734619, 33.732513, 39.690151>,  <44.968658, 33.745449, 39.741714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.734619, 33.732513, 39.690151>,  <44.344555, 33.710953, 39.604210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734619, 33.732513, 39.690151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063470, 0.861285, -0.504142,
		-0.212223, 0.505254, 0.836468,
		0.975158, 0.053900, 0.214853,
		45.027168, 33.748684, 39.754608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463005, 34.450577, 39.841381>,  <44.344555, 33.710953, 39.604210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463005, 34.450577, 39.841381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812778, 34.303123, 39.715221>,  <45.022644, 34.214653, 39.639526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812778, 34.303123, 39.715221>,  <44.463005, 34.450577, 39.841381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812778, 34.303123, 39.715221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134901, 0.809226, -0.571799,
		0.466014, 0.457452, 0.757343,
		0.874433, -0.368633, -0.315400,
		45.075108, 34.192535, 39.620602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876366, 35.033424, 39.846653>,  <44.463005, 34.450577, 39.841381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876366, 35.033424, 39.846653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.063911, 34.785156, 39.595280>,  <45.176437, 34.636196, 39.444454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.063911, 34.785156, 39.595280>,  <44.876366, 35.033424, 39.846653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063911, 34.785156, 39.595280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098421, 0.743767, -0.661153,
		0.877770, 0.248139, 0.409812,
		0.468863, -0.620674, -0.628435,
		45.204571, 34.598953, 39.406750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353466, 35.473541, 39.608303>,  <44.876366, 35.033424, 39.846653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353466, 35.473541, 39.608303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.340435, 35.184948, 39.331638>,  <45.332615, 35.011791, 39.165638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.340435, 35.184948, 39.331638>,  <45.353466, 35.473541, 39.608303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340435, 35.184948, 39.331638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055541, 0.689657, -0.722002,
		0.997925, -0.061937, 0.017605,
		-0.032577, -0.721482, -0.691666,
		45.330662, 34.968502, 39.124138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852951, 35.698177, 39.101479>,  <45.353466, 35.473541, 39.608303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852951, 35.698177, 39.101479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620232, 35.434891, 38.910370>,  <45.480602, 35.276920, 38.795704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620232, 35.434891, 38.910370>,  <45.852951, 35.698177, 39.101479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620232, 35.434891, 38.910370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098270, 0.526228, -0.844646,
		0.807376, -0.538362, -0.241475,
		-0.581796, -0.658217, -0.477769,
		45.445694, 35.237427, 38.767040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124847, 35.662720, 38.401497>,  <45.852951, 35.698177, 39.101479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124847, 35.662720, 38.401497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.743793, 35.548382, 38.359951>,  <45.515163, 35.479778, 38.335022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.743793, 35.548382, 38.359951>,  <46.124847, 35.662720, 38.401497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.743793, 35.548382, 38.359951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052674, 0.491437, -0.869318,
		0.299533, -0.822668, -0.483215,
		-0.952631, -0.285842, -0.103868,
		45.458004, 35.462627, 38.328793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031303, 35.671883, 37.738815>,  <46.124847, 35.662720, 38.401497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031303, 35.671883, 37.738815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.645508, 35.635441, 37.837982>,  <45.414032, 35.613575, 37.897484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.645508, 35.635441, 37.837982>,  <46.031303, 35.671883, 37.738815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.645508, 35.635441, 37.837982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258954, 0.511022, -0.819633,
		-0.052022, -0.854726, -0.516466,
		-0.964488, -0.091102, 0.247920,
		45.356163, 35.608109, 37.912357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649258, 35.283356, 37.540947>,  <46.031303, 35.671883, 37.738815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649258, 35.283356, 37.540947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.739708, 35.212463, 37.157810>,  <46.793980, 35.169926, 36.927929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.739708, 35.212463, 37.157810>,  <46.649258, 35.283356, 37.540947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739708, 35.212463, 37.157810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019644, -0.982279, 0.186393,
		-0.973900, -0.060964, -0.218639,
		0.226128, -0.177233, -0.957838,
		46.807545, 35.159294, 36.870457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.090355, 34.804745, 37.293594>,  <46.649258, 35.283356, 37.540947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.090355, 34.804745, 37.293594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.429920, 34.762360, 37.086472>,  <46.633659, 34.736927, 36.962196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.429920, 34.762360, 37.086472>,  <46.090355, 34.804745, 37.293594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429920, 34.762360, 37.086472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103950, -0.994035, 0.033003,
		-0.518214, 0.025809, -0.854861,
		0.848910, -0.105966, -0.517806,
		46.684593, 34.730572, 36.931129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.935303, 34.343964, 36.789734>,  <46.090355, 34.804745, 37.293594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.935303, 34.343964, 36.789734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.334728, 34.343254, 36.811131>,  <46.574383, 34.342827, 36.823971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.334728, 34.343254, 36.811131>,  <45.935303, 34.343964, 36.789734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.334728, 34.343254, 36.811131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002071, -0.997421, -0.071746,
		0.053483, 0.071754, -0.995987,
		0.998566, -0.001775, 0.053494,
		46.634296, 34.342720, 36.827179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198132, 33.908558, 36.272675>,  <45.935303, 34.343964, 36.789734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198132, 33.908558, 36.272675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.492588, 33.938583, 36.541737>,  <46.669262, 33.956596, 36.703175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.492588, 33.938583, 36.541737>,  <46.198132, 33.908558, 36.272675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.492588, 33.938583, 36.541737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021883, -0.995951, 0.087188,
		0.676474, -0.049463, -0.734803,
		0.736141, 0.075060, 0.672653,
		46.713428, 33.961102, 36.743534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.602249, 33.316765, 36.176178>,  <46.198132, 33.908558, 36.272675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.602249, 33.316765, 36.176178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.730850, 33.462997, 36.525574>,  <46.808010, 33.550735, 36.735210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.730850, 33.462997, 36.525574>,  <46.602249, 33.316765, 36.176178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.730850, 33.462997, 36.525574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080925, -0.929701, 0.359315,
		0.943445, -0.044832, -0.328484,
		0.321501, 0.365577, 0.873493,
		46.827301, 33.572670, 36.787621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075420, 32.832458, 36.370201>,  <46.602249, 33.316765, 36.176178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075420, 32.832458, 36.370201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.980770, 33.001835, 36.719990>,  <46.923981, 33.103462, 36.929863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.980770, 33.001835, 36.719990>,  <47.075420, 32.832458, 36.370201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.980770, 33.001835, 36.719990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208517, -0.856932, 0.471368,
		0.948962, 0.293881, 0.114477,
		-0.236625, 0.423440, 0.874475,
		46.909782, 33.128868, 36.982334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.542290, 32.616524, 36.901520>,  <47.075420, 32.832458, 36.370201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.542290, 32.616524, 36.901520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.209942, 32.730499, 37.092709>,  <47.010532, 32.798885, 37.207420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.209942, 32.730499, 37.092709>,  <47.542290, 32.616524, 36.901520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.209942, 32.730499, 37.092709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105341, -0.762880, 0.637900,
		0.546399, 0.580365, 0.603842,
		-0.830874, 0.284939, 0.477973,
		46.960678, 32.815983, 37.236099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.716202, 32.565907, 37.585884>,  <47.542290, 32.616524, 36.901520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.716202, 32.565907, 37.585884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.316238, 32.562267, 37.581726>,  <47.076260, 32.560081, 37.579231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.316238, 32.562267, 37.581726>,  <47.716202, 32.565907, 37.585884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.316238, 32.562267, 37.581726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002030, -0.841061, 0.540937,
		-0.013668, 0.540864, 0.840999,
		-0.999905, -0.009101, -0.010398,
		47.016266, 32.559536, 37.578606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.492516, 32.420925, 38.300266>,  <47.716202, 32.565907, 37.585884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.492516, 32.420925, 38.300266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.197998, 32.338787, 38.042366>,  <47.021286, 32.289505, 37.887627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.197998, 32.338787, 38.042366>,  <47.492516, 32.420925, 38.300266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.197998, 32.338787, 38.042366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196864, -0.846620, 0.494449,
		-0.647393, 0.490988, 0.582935,
		-0.736292, -0.205344, -0.644754,
		46.977112, 32.277184, 37.848938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.949165, 32.231594, 38.713558>,  <47.492516, 32.420925, 38.300266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.949165, 32.231594, 38.713558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.815716, 32.097969, 38.360947>,  <46.735645, 32.017792, 38.149380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.815716, 32.097969, 38.360947>,  <46.949165, 32.231594, 38.713558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.815716, 32.097969, 38.360947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197378, -0.889627, 0.411832,
		-0.921812, 0.311391, 0.230862,
		-0.333622, -0.334065, -0.881531,
		46.715630, 31.997749, 38.096489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.291512, 31.920982, 38.944782>,  <46.949165, 32.231594, 38.713558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.291512, 31.920982, 38.944782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.398556, 31.787369, 38.583275>,  <46.462784, 31.707201, 38.366371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.398556, 31.787369, 38.583275>,  <46.291512, 31.920982, 38.944782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.398556, 31.787369, 38.583275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172167, -0.939466, 0.296247,
		-0.948021, 0.076322, -0.308919,
		0.267609, -0.334034, -0.903774,
		46.478840, 31.687159, 38.312141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799248, 31.452559, 38.778622>,  <46.291512, 31.920982, 38.944782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799248, 31.452559, 38.778622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.114388, 31.359621, 38.550476>,  <46.303471, 31.303860, 38.413589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.114388, 31.359621, 38.550476>,  <45.799248, 31.452559, 38.778622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114388, 31.359621, 38.550476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231054, -0.969971, 0.075968,
		-0.570885, 0.071934, -0.817873,
		0.787848, -0.232342, -0.570363,
		46.350742, 31.289919, 38.379368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.554710, 31.024553, 38.272102>,  <45.799248, 31.452559, 38.778622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.554710, 31.024553, 38.272102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.949539, 30.965099, 38.296120>,  <46.186436, 30.929428, 38.310532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.949539, 30.965099, 38.296120>,  <45.554710, 31.024553, 38.272102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.949539, 30.965099, 38.296120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154436, -0.982122, 0.107637,
		0.042970, -0.115517, -0.992376,
		0.987068, -0.148633, 0.060042,
		46.245659, 30.920509, 38.314133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562046, 30.347837, 38.116730>,  <45.554710, 31.024553, 38.272102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562046, 30.347837, 38.116730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.923306, 30.396629, 38.281387>,  <46.140060, 30.425905, 38.380180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.923306, 30.396629, 38.281387>,  <45.562046, 30.347837, 38.116730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923306, 30.396629, 38.281387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034290, -0.935234, 0.352366,
		0.427961, -0.332353, -0.840470,
		0.903147, 0.121980, 0.411640,
		46.194248, 30.433224, 38.404881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.841206, 29.691959, 38.022820>,  <45.562046, 30.347837, 38.116730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.841206, 29.691959, 38.022820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.052959, 29.841190, 38.327599>,  <46.180012, 29.930729, 38.510468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.052959, 29.841190, 38.327599>,  <45.841206, 29.691959, 38.022820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.052959, 29.841190, 38.327599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003147, -0.897250, 0.441513,
		0.848378, -0.236127, -0.473814,
		0.529383, 0.373078, 0.761950,
		46.211773, 29.953114, 38.556183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237461, 29.128723, 38.312099>,  <45.841206, 29.691959, 38.022820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237461, 29.128723, 38.312099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.296078, 29.399754, 38.600384>,  <46.331245, 29.562372, 38.773354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.296078, 29.399754, 38.600384>,  <46.237461, 29.128723, 38.312099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296078, 29.399754, 38.600384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176776, -0.734781, 0.654864,
		0.973281, 0.031440, -0.227454,
		0.146540, 0.677576, 0.720706,
		46.340038, 29.603025, 38.816597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.799984, 28.907354, 38.697170>,  <46.237461, 29.128723, 38.312099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.799984, 28.907354, 38.697170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.589668, 29.135279, 38.949791>,  <46.463478, 29.272034, 39.101364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.589668, 29.135279, 38.949791>,  <46.799984, 28.907354, 38.697170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.589668, 29.135279, 38.949791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031607, -0.728869, 0.683923,
		0.850026, 0.379562, 0.365223,
		-0.525791, 0.569809, 0.631554,
		46.431931, 29.306221, 39.139256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.133202, 28.873306, 39.308010>,  <46.799984, 28.907354, 38.697170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.133202, 28.873306, 39.308010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.762447, 28.991285, 39.400867>,  <46.539997, 29.062073, 39.456581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.762447, 28.991285, 39.400867>,  <47.133202, 28.873306, 39.308010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762447, 28.991285, 39.400867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048367, -0.707179, 0.705379,
		0.372219, 0.642576, 0.669738,
		-0.926884, 0.294949, 0.232146,
		46.484383, 29.079769, 39.470512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.187027, 28.906509, 40.055111>,  <47.133202, 28.873306, 39.308010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.187027, 28.906509, 40.055111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.802734, 28.900694, 39.944271>,  <46.572159, 28.897205, 39.877766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.802734, 28.900694, 39.944271>,  <47.187027, 28.906509, 40.055111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.802734, 28.900694, 39.944271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203141, -0.643436, 0.738054,
		-0.189027, 0.765362, 0.615215,
		-0.960730, -0.014537, -0.277104,
		46.514515, 28.896334, 39.861141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.867661, 28.976572, 40.689919>,  <47.187027, 28.906509, 40.055111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.867661, 28.976572, 40.689919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.594486, 28.804564, 40.453720>,  <46.430580, 28.701359, 40.312000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.594486, 28.804564, 40.453720>,  <46.867661, 28.976572, 40.689919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594486, 28.804564, 40.453720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293387, -0.578827, 0.760844,
		-0.668971, 0.692851, 0.269140,
		-0.682936, -0.430020, -0.590492,
		46.389606, 28.675558, 40.276573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187527, 28.948183, 41.070030>,  <46.867661, 28.976572, 40.689919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187527, 28.948183, 41.070030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180519, 28.675863, 40.777126>,  <46.176315, 28.512470, 40.601383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180519, 28.675863, 40.777126>,  <46.187527, 28.948183, 41.070030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180519, 28.675863, 40.777126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309151, -0.692793, 0.651508,
		-0.950852, 0.237794, -0.198332,
		-0.017522, -0.680802, -0.732258,
		46.175262, 28.471622, 40.557449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.887020, 37.742195, 41.193684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595886, 37.476200, 41.126705>,  <41.421204, 37.316601, 41.086517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595886, 37.476200, 41.126705>,  <41.887020, 37.742195, 41.193684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595886, 37.476200, 41.126705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098445, 0.342981, -0.934170,
		0.678646, -0.663439, -0.315099,
		-0.727838, -0.664991, -0.167450,
		41.377537, 37.276703, 41.076469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055882, 37.274445, 40.620243>,  <41.887020, 37.742195, 41.193684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055882, 37.274445, 40.620243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657017, 37.244732, 40.624996>,  <41.417698, 37.226906, 40.627846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657017, 37.244732, 40.624996>,  <42.055882, 37.274445, 40.620243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657017, 37.244732, 40.624996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024909, 0.177058, -0.983885,
		0.070982, -0.981393, -0.178407,
		-0.997167, -0.074282, 0.011878,
		41.357868, 37.222446, 40.628559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883163, 37.078365, 40.004894>,  <42.055882, 37.274445, 40.620243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883163, 37.078365, 40.004894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537640, 37.220570, 40.147690>,  <41.330326, 37.305893, 40.233368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537640, 37.220570, 40.147690>,  <41.883163, 37.078365, 40.004894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537640, 37.220570, 40.147690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241734, 0.329219, -0.912787,
		-0.442034, -0.874772, -0.198443,
		-0.863812, 0.355513, 0.356988,
		41.278496, 37.327225, 40.254787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299809, 36.841362, 39.553059>,  <41.883163, 37.078365, 40.004894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299809, 36.841362, 39.553059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143906, 37.158806, 39.739941>,  <41.050362, 37.349270, 39.852070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143906, 37.158806, 39.739941>,  <41.299809, 36.841362, 39.553059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143906, 37.158806, 39.739941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451055, 0.277793, -0.848163,
		-0.802892, -0.541314, 0.249687,
		-0.389761, 0.793606, 0.467200,
		41.026978, 37.396889, 39.880100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633282, 36.905617, 39.301910>,  <41.299809, 36.841362, 39.553059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633282, 36.905617, 39.301910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739658, 37.263088, 39.446472>,  <40.803486, 37.477570, 39.533211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739658, 37.263088, 39.446472>,  <40.633282, 36.905617, 39.301910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739658, 37.263088, 39.446472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375675, 0.441349, -0.814911,
		-0.887774, 0.080948, 0.453106,
		0.265943, 0.893677, 0.361409,
		40.819443, 37.531193, 39.554893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921886, 37.284348, 39.295898>,  <40.633282, 36.905617, 39.301910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921886, 37.284348, 39.295898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222351, 37.548393, 39.295719>,  <40.402630, 37.706821, 39.295612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222351, 37.548393, 39.295719>,  <39.921886, 37.284348, 39.295898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222351, 37.548393, 39.295719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506716, 0.576169, -0.641302,
		-0.423079, 0.481947, 0.767288,
		0.751161, 0.660119, -0.000446,
		40.447701, 37.746429, 39.295586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608486, 37.826527, 39.185688>,  <39.921886, 37.284348, 39.295898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608486, 37.826527, 39.185688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980370, 37.920288, 39.072056>,  <40.203499, 37.976543, 39.003876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980370, 37.920288, 39.072056>,  <39.608486, 37.826527, 39.185688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980370, 37.920288, 39.072056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356587, 0.379895, -0.853537,
		-0.092150, 0.894839, 0.436775,
		0.929707, 0.234402, -0.284080,
		40.259281, 37.990608, 38.986832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496151, 38.371181, 38.803009>,  <39.608486, 37.826527, 39.185688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496151, 38.371181, 38.803009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876102, 38.290085, 38.707829>,  <40.104073, 38.241425, 38.650719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876102, 38.290085, 38.707829>,  <39.496151, 38.371181, 38.803009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876102, 38.290085, 38.707829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122513, 0.458859, -0.880022,
		0.287605, 0.865069, 0.411023,
		0.949881, -0.202743, -0.237952,
		40.161068, 38.229263, 38.636444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764542, 39.036858, 38.548683>,  <39.496151, 38.371181, 38.803009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764542, 39.036858, 38.548683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993980, 38.751846, 38.387043>,  <40.131641, 38.580841, 38.290058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993980, 38.751846, 38.387043>,  <39.764542, 39.036858, 38.548683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993980, 38.751846, 38.387043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246169, 0.320576, -0.914676,
		0.781276, 0.624129, 0.008478,
		0.573593, -0.712527, -0.404099,
		40.166058, 38.538090, 38.265812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032528, 39.322948, 37.945171>,  <39.764542, 39.036858, 38.548683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032528, 39.322948, 37.945171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101067, 38.933861, 37.882626>,  <40.142189, 38.700409, 37.845097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101067, 38.933861, 37.882626>,  <40.032528, 39.322948, 37.945171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101067, 38.933861, 37.882626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085112, 0.143505, -0.985983,
		0.981528, 0.182251, -0.058201,
		0.171344, -0.972723, -0.156366,
		40.152470, 38.642044, 37.835716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701073, 39.234081, 37.508587>,  <40.032528, 39.322948, 37.945171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701073, 39.234081, 37.508587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484062, 38.899296, 37.479843>,  <40.353855, 38.698425, 37.462597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484062, 38.899296, 37.479843>,  <40.701073, 39.234081, 37.508587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484062, 38.899296, 37.479843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042762, 0.112953, -0.992680,
		0.838951, -0.535480, -0.097070,
		-0.542524, -0.836961, -0.071864,
		40.321304, 38.648209, 37.458282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041531, 38.787758, 36.953400>,  <40.701073, 39.234081, 37.508587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041531, 38.787758, 36.953400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654041, 38.697693, 36.995132>,  <40.421547, 38.643654, 37.020172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654041, 38.697693, 36.995132>,  <41.041531, 38.787758, 36.953400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654041, 38.697693, 36.995132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109001, 0.008376, -0.994006,
		0.222936, -0.974286, -0.032657,
		-0.968719, -0.225160, 0.104331,
		40.363426, 38.630146, 37.026432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855228, 38.931797, 36.767750>,  <41.041531, 38.787758, 36.953400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855228, 38.931797, 36.767750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692593, 38.684429, 37.036747>,  <41.595013, 38.536011, 37.198147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692593, 38.684429, 37.036747>,  <41.855228, 38.931797, 36.767750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692593, 38.684429, 37.036747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050039, -0.750050, -0.659485,
		0.912240, -0.234489, 0.335907,
		-0.406589, -0.618417, 0.672492,
		41.570618, 38.498905, 37.238495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494934, 38.594051, 36.531712>,  <41.855228, 38.931797, 36.767750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494934, 38.594051, 36.531712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838219, 38.420521, 36.421978>,  <43.044189, 38.316402, 36.356136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838219, 38.420521, 36.421978>,  <42.494934, 38.594051, 36.531712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838219, 38.420521, 36.421978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320171, -0.870194, 0.374503,
		-0.401194, -0.233571, -0.885713,
		0.858216, -0.433828, -0.274334,
		43.095684, 38.290371, 36.339676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248009, 37.890125, 36.367836>,  <42.494934, 38.594051, 36.531712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248009, 37.890125, 36.367836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644638, 37.865780, 36.413597>,  <42.882614, 37.851173, 36.441051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644638, 37.865780, 36.413597>,  <42.248009, 37.890125, 36.367836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644638, 37.865780, 36.413597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104966, -0.894942, 0.433659,
		0.075987, -0.442011, -0.893785,
		0.991569, -0.060865, 0.114400,
		42.942108, 37.847519, 36.447918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541077, 37.285946, 35.927048>,  <42.248009, 37.890125, 36.367836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541077, 37.285946, 35.927048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793537, 37.343376, 36.231949>,  <42.945015, 37.377834, 36.414890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793537, 37.343376, 36.231949>,  <42.541077, 37.285946, 35.927048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793537, 37.343376, 36.231949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008518, -0.981378, 0.191898,
		0.775613, -0.127610, -0.618175,
		0.631152, 0.143573, 0.762256,
		42.982883, 37.386448, 36.460625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021832, 36.711208, 35.876080>,  <42.541077, 37.285946, 35.927048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021832, 36.711208, 35.876080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074608, 36.835796, 36.252499>,  <43.106274, 36.910549, 36.478352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074608, 36.835796, 36.252499>,  <43.021832, 36.711208, 35.876080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074608, 36.835796, 36.252499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098757, -0.948758, 0.300177,
		0.986326, 0.053330, -0.155939,
		0.131939, 0.311472, 0.941051,
		43.114189, 36.929237, 36.534813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210030, 36.117115, 36.225838>,  <43.021832, 36.711208, 35.876080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210030, 36.117115, 36.225838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109234, 36.357449, 36.529285>,  <43.048756, 36.501648, 36.711353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109234, 36.357449, 36.529285>,  <43.210030, 36.117115, 36.225838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109234, 36.357449, 36.529285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090324, -0.795094, 0.599723,
		0.963507, 0.082600, 0.254622,
		-0.251985, 0.600835, 0.758617,
		43.033638, 36.537701, 36.756870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665474, 35.962048, 36.816864>,  <43.210030, 36.117115, 36.225838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665474, 35.962048, 36.816864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329605, 36.125000, 36.960518>,  <43.128082, 36.222771, 37.046711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329605, 36.125000, 36.960518>,  <43.665474, 35.962048, 36.816864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329605, 36.125000, 36.960518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094829, -0.761116, 0.641646,
		0.534743, 0.504719, 0.677724,
		-0.839677, 0.407384, 0.359139,
		43.077702, 36.247215, 37.068260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691013, 35.857681, 37.576797>,  <43.665474, 35.962048, 36.816864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691013, 35.857681, 37.576797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310658, 35.939144, 37.483566>,  <43.082443, 35.988022, 37.427628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310658, 35.939144, 37.483566>,  <43.691013, 35.857681, 37.576797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310658, 35.939144, 37.483566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309064, -0.665544, 0.679361,
		-0.016773, 0.718037, 0.695803,
		-0.950893, 0.203653, -0.233082,
		43.025391, 36.000240, 37.413643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311058, 35.830029, 38.192795>,  <43.691013, 35.857681, 37.576797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311058, 35.830029, 38.192795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013935, 35.799763, 37.926712>,  <42.835659, 35.781605, 37.767063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013935, 35.799763, 37.926712>,  <43.311058, 35.830029, 38.192795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013935, 35.799763, 37.926712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519476, -0.561660, 0.643959,
		-0.422345, 0.823901, 0.377903,
		-0.742812, -0.075661, -0.665211,
		42.791092, 35.777065, 37.727150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788734, 35.856468, 38.569805>,  <43.311058, 35.830029, 38.192795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788734, 35.856468, 38.569805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646214, 35.700806, 38.230015>,  <42.560703, 35.607407, 38.026142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646214, 35.700806, 38.230015>,  <42.788734, 35.856468, 38.569805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646214, 35.700806, 38.230015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450163, -0.725177, 0.521030,
		-0.818782, 0.568044, 0.083195,
		-0.356299, -0.389159, -0.849474,
		42.539322, 35.584057, 37.975174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173031, 35.713657, 38.802113>,  <42.788734, 35.856468, 38.569805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173031, 35.713657, 38.802113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275612, 35.472996, 38.499523>,  <42.337162, 35.328598, 38.317970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275612, 35.472996, 38.499523>,  <42.173031, 35.713657, 38.802113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275612, 35.472996, 38.499523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276305, -0.795618, 0.539117,
		-0.926222, 0.070758, -0.370278,
		0.256453, -0.601652, -0.756471,
		42.352547, 35.292500, 38.272583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657619, 35.336475, 38.780239>,  <42.173031, 35.713657, 38.802113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657619, 35.336475, 38.780239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929203, 35.123013, 38.578556>,  <42.092155, 34.994934, 38.457546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929203, 35.123013, 38.578556>,  <41.657619, 35.336475, 38.780239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929203, 35.123013, 38.578556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320350, -0.833285, 0.450568,
		-0.660595, -0.144396, -0.736725,
		0.678962, -0.533653, -0.504207,
		42.132893, 34.962917, 38.427292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324959, 34.741501, 38.386726>,  <41.657619, 35.336475, 38.780239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324959, 34.741501, 38.386726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704838, 34.637711, 38.456867>,  <41.932766, 34.575436, 38.498951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704838, 34.637711, 38.456867>,  <41.324959, 34.741501, 38.386726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704838, 34.637711, 38.456867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311212, -0.844477, 0.435897,
		0.034979, -0.468542, -0.882748,
		0.949697, -0.259474, 0.175355,
		41.989746, 34.559868, 38.509472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308727, 33.977104, 38.355820>,  <41.324959, 34.741501, 38.386726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308727, 33.977104, 38.355820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656139, 34.048092, 38.540932>,  <41.864586, 34.090683, 38.652000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656139, 34.048092, 38.540932>,  <41.308727, 33.977104, 38.355820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656139, 34.048092, 38.540932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100799, -0.850942, 0.515497,
		0.485282, -0.494371, -0.721178,
		0.868528, 0.177468, 0.462779,
		41.916698, 34.101334, 38.679764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706772, 33.331318, 38.355431>,  <41.308727, 33.977104, 38.355820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706772, 33.331318, 38.355431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901463, 33.526058, 38.645554>,  <42.018276, 33.642902, 38.819630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901463, 33.526058, 38.645554>,  <41.706772, 33.331318, 38.355431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901463, 33.526058, 38.645554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097254, -0.794936, 0.598848,
		0.868125, -0.362013, -0.339566,
		0.486724, 0.486851, 0.725311,
		42.047482, 33.672112, 38.863148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333382, 32.984943, 38.595566>,  <41.706772, 33.331318, 38.355431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333382, 32.984943, 38.595566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195568, 33.213871, 38.893223>,  <42.112881, 33.351227, 39.071819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195568, 33.213871, 38.893223>,  <42.333382, 32.984943, 38.595566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195568, 33.213871, 38.893223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143747, -0.815492, 0.560632,
		0.927705, 0.086186, 0.363230,
		-0.344530, 0.572314, 0.744147,
		42.092209, 33.385567, 39.116467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923935, 32.327282, 38.377869>,  <42.333382, 32.984943, 38.595566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923935, 32.327282, 38.377869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660061, 32.061703, 38.237026>,  <41.501736, 31.902355, 38.152519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660061, 32.061703, 38.237026>,  <41.923935, 32.327282, 38.377869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660061, 32.061703, 38.237026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348251, 0.685240, -0.639662,
		0.665980, -0.299358, -0.683268,
		-0.659691, -0.663951, -0.352104,
		41.462154, 31.862518, 38.131393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865818, 32.491257, 37.723774>,  <41.923935, 32.327282, 38.377869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865818, 32.491257, 37.723774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524067, 32.296638, 37.796783>,  <41.319016, 32.179867, 37.840588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524067, 32.296638, 37.796783>,  <41.865818, 32.491257, 37.723774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524067, 32.296638, 37.796783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519418, 0.789077, -0.327968,
		0.015546, -0.375014, -0.926889,
		-0.854379, -0.486541, 0.182522,
		41.267754, 32.150677, 37.851540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541004, 32.758781, 37.116505>,  <41.865818, 32.491257, 37.723774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541004, 32.758781, 37.116505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256222, 32.603161, 37.350346>,  <41.085354, 32.509789, 37.490650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256222, 32.603161, 37.350346>,  <41.541004, 32.758781, 37.116505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256222, 32.603161, 37.350346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620584, 0.738175, -0.264523,
		-0.328623, -0.551121, -0.766989,
		-0.711957, -0.389054, 0.584598,
		41.042633, 32.486446, 37.525726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954132, 32.723122, 36.684231>,  <41.541004, 32.758781, 37.116505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954132, 32.723122, 36.684231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800179, 32.692631, 37.052155>,  <40.707806, 32.674335, 37.272911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800179, 32.692631, 37.052155>,  <40.954132, 32.723122, 36.684231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800179, 32.692631, 37.052155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661449, 0.717826, -0.217284,
		-0.643701, -0.692037, -0.326701,
		-0.384883, -0.076230, 0.919812,
		40.684715, 32.669762, 37.328098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266933, 32.458363, 36.576851>,  <40.954132, 32.723122, 36.684231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266933, 32.458363, 36.576851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296120, 32.644871, 36.929501>,  <40.313633, 32.756775, 37.141090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296120, 32.644871, 36.929501>,  <40.266933, 32.458363, 36.576851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296120, 32.644871, 36.929501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505761, 0.779187, -0.370233,
		-0.859582, -0.418878, 0.292677,
		0.072967, 0.466270, 0.881628,
		40.318008, 32.784752, 37.193989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655132, 32.654289, 36.651051>,  <40.266933, 32.458363, 36.576851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655132, 32.654289, 36.651051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874905, 32.868843, 36.907307>,  <40.006767, 32.997574, 37.061062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874905, 32.868843, 36.907307>,  <39.655132, 32.654289, 36.651051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874905, 32.868843, 36.907307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549944, 0.809392, -0.206025,
		-0.629039, -0.239121, 0.739683,
		0.549429, 0.536382, 0.640642,
		40.039734, 33.029758, 37.099499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224533, 33.044563, 37.199909>,  <39.655132, 32.654289, 36.651051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224533, 33.044563, 37.199909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552090, 33.273983, 37.191341>,  <39.748623, 33.411633, 37.186203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552090, 33.273983, 37.191341>,  <39.224533, 33.044563, 37.199909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552090, 33.273983, 37.191341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573059, 0.819133, 0.024994,
		0.031878, -0.008195, 0.999458,
		0.818894, 0.573545, -0.021416,
		39.797756, 33.446045, 37.184917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960632, 33.650078, 37.393051>,  <39.224533, 33.044563, 37.199909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960632, 33.650078, 37.393051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326939, 33.750854, 37.267891>,  <39.546722, 33.811321, 37.192795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326939, 33.750854, 37.267891>,  <38.960632, 33.650078, 37.393051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326939, 33.750854, 37.267891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341203, 0.898926, -0.274795,
		0.212037, 0.358408, 0.909166,
		0.915762, 0.251944, -0.312896,
		39.601665, 33.826439, 37.174023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118431, 34.363918, 37.605396>,  <38.960632, 33.650078, 37.393051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118431, 34.363918, 37.605396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348232, 34.311852, 37.282162>,  <39.486115, 34.280609, 37.088223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348232, 34.311852, 37.282162>,  <39.118431, 34.363918, 37.605396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348232, 34.311852, 37.282162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300459, 0.884810, -0.356140,
		0.761359, 0.447401, 0.469218,
		0.574506, -0.130170, -0.808083,
		39.520584, 34.272800, 37.039738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425827, 34.950485, 37.577835>,  <39.118431, 34.363918, 37.605396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425827, 34.950485, 37.577835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427914, 34.803013, 37.206020>,  <39.429165, 34.714527, 36.982929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427914, 34.803013, 37.206020>,  <39.425827, 34.950485, 37.577835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427914, 34.803013, 37.206020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297025, 0.887028, -0.353491,
		0.954855, 0.277942, -0.104879,
		0.005220, -0.368685, -0.929540,
		39.429478, 34.692406, 36.927158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825657, 35.423779, 37.195198>,  <39.425827, 34.950485, 37.577835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825657, 35.423779, 37.195198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591606, 35.215603, 36.946434>,  <39.451176, 35.090698, 36.797176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591606, 35.215603, 36.946434>,  <39.825657, 35.423779, 37.195198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591606, 35.215603, 36.946434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302956, 0.851657, -0.427667,
		0.752227, -0.061829, -0.655997,
		-0.585126, -0.520440, -0.621907,
		39.416069, 35.059471, 36.759861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610840, 35.881790, 36.651955>,  <39.825657, 35.423779, 37.195198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610840, 35.881790, 36.651955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368450, 35.571728, 36.580486>,  <39.223015, 35.385689, 36.537605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368450, 35.571728, 36.580486>,  <39.610840, 35.881790, 36.651955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368450, 35.571728, 36.580486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618021, 0.600176, -0.507779,
		0.500839, -0.197284, -0.842757,
		-0.605979, -0.775157, -0.178666,
		39.186657, 35.339180, 36.526886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.974319, 29.644699, 40.244633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.626125, 29.448256, 40.257706>,  <42.417210, 29.330389, 40.265549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.626125, 29.448256, 40.257706>,  <42.974319, 29.644699, 40.244633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626125, 29.448256, 40.257706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334986, 0.542500, -0.770376,
		0.360609, -0.681548, -0.636752,
		-0.870486, -0.491107, 0.032679,
		42.364979, 29.300922, 40.267509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900414, 29.268526, 39.608734>,  <42.974319, 29.644699, 40.244633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900414, 29.268526, 39.608734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.542042, 29.340960, 39.770977>,  <42.327019, 29.384418, 39.868324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.542042, 29.340960, 39.770977>,  <42.900414, 29.268526, 39.608734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542042, 29.340960, 39.770977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208945, 0.633994, -0.744576,
		-0.391981, -0.751838, -0.530179,
		-0.895931, 0.181082, 0.405607,
		42.273262, 29.395285, 39.892658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484917, 29.098799, 39.058029>,  <42.900414, 29.268526, 39.608734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484917, 29.098799, 39.058029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.305649, 29.345814, 39.316578>,  <42.198090, 29.494022, 39.471706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.305649, 29.345814, 39.316578>,  <42.484917, 29.098799, 39.058029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305649, 29.345814, 39.316578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219284, 0.625014, -0.749181,
		-0.866636, -0.477498, -0.144696,
		-0.448169, 0.617538, 0.646367,
		42.171200, 29.531075, 39.510487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834122, 29.255877, 38.784607>,  <42.484917, 29.098799, 39.058029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834122, 29.255877, 38.784607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.906311, 29.547081, 39.049160>,  <41.949627, 29.721804, 39.207893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.906311, 29.547081, 39.049160>,  <41.834122, 29.255877, 38.784607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906311, 29.547081, 39.049160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228919, 0.685049, -0.691596,
		-0.956569, -0.026585, 0.290291,
		0.180478, 0.728012, 0.661382,
		41.960453, 29.765484, 39.247574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116924, 29.630177, 38.733223>,  <41.834122, 29.255877, 38.784607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116924, 29.630177, 38.733223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.405273, 29.865931, 38.879078>,  <41.578285, 30.007383, 38.966591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.405273, 29.865931, 38.879078>,  <41.116924, 29.630177, 38.733223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405273, 29.865931, 38.879078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363276, 0.769389, -0.525425,
		-0.590226, 0.246303, 0.768744,
		0.720877, 0.589386, 0.364638,
		41.621536, 30.042746, 38.988468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728302, 30.269932, 38.941586>,  <41.116924, 29.630177, 38.733223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728302, 30.269932, 38.941586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.112411, 30.367132, 38.886711>,  <41.342876, 30.425453, 38.853786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.112411, 30.367132, 38.886711>,  <40.728302, 30.269932, 38.941586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112411, 30.367132, 38.886711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278171, 0.794542, -0.539744,
		-0.022161, 0.556464, 0.830576,
		0.960276, 0.243003, -0.137184,
		41.400494, 30.440033, 38.845554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902203, 30.834915, 39.199940>,  <40.728302, 30.269932, 38.941586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902203, 30.834915, 39.199940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.213428, 30.841013, 38.948742>,  <41.400166, 30.844671, 38.798023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.213428, 30.841013, 38.948742>,  <40.902203, 30.834915, 39.199940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213428, 30.841013, 38.948742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320156, 0.869750, -0.375547,
		0.540474, 0.493257, 0.681605,
		0.778067, 0.015246, -0.627997,
		41.446850, 30.845587, 38.760342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242050, 31.435024, 39.303173>,  <40.902203, 30.834915, 39.199940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242050, 31.435024, 39.303173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.366470, 31.308849, 38.944565>,  <41.441124, 31.233145, 38.729401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.366470, 31.308849, 38.944565>,  <41.242050, 31.435024, 39.303173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366470, 31.308849, 38.944565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299682, 0.862636, -0.407491,
		0.901909, 0.395421, 0.173791,
		0.311049, -0.315438, -0.896520,
		41.459785, 31.214218, 38.675610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638786, 32.022224, 38.951275>,  <41.242050, 31.435024, 39.303173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638786, 32.022224, 38.951275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.539967, 31.778793, 38.649651>,  <41.480675, 31.632736, 38.468678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.539967, 31.778793, 38.649651>,  <41.638786, 32.022224, 38.951275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539967, 31.778793, 38.649651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287789, 0.789149, -0.542607,
		0.925281, 0.082960, -0.370098,
		-0.247048, -0.608574, -0.754059,
		41.465851, 31.596222, 38.423431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312870, 32.449253, 39.117950>,  <41.638786, 32.022224, 38.951275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312870, 32.449253, 39.117950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.153854, 32.760616, 39.312286>,  <42.058445, 32.947433, 39.428886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.153854, 32.760616, 39.312286>,  <42.312870, 32.449253, 39.117950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153854, 32.760616, 39.312286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233789, -0.597924, 0.766701,
		0.887303, 0.191209, 0.419681,
		-0.397538, 0.778412, 0.485837,
		42.034592, 32.994141, 39.458038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516510, 32.454689, 39.725693>,  <42.312870, 32.449253, 39.117950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516510, 32.454689, 39.725693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.181263, 32.666538, 39.777924>,  <41.980114, 32.793648, 39.809261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.181263, 32.666538, 39.777924>,  <42.516510, 32.454689, 39.725693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181263, 32.666538, 39.777924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232422, -0.563291, 0.792895,
		0.493492, 0.634192, 0.595203,
		-0.838121, 0.529625, 0.130579,
		41.929829, 32.825424, 39.817097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508133, 32.688473, 40.389141>,  <42.516510, 32.454689, 39.725693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508133, 32.688473, 40.389141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.118584, 32.669086, 40.300404>,  <41.884853, 32.657455, 40.247162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.118584, 32.669086, 40.300404>,  <42.508133, 32.688473, 40.389141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118584, 32.669086, 40.300404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192800, -0.339669, 0.920572,
		-0.119968, 0.939295, 0.321452,
		-0.973877, -0.048463, -0.221845,
		41.826420, 32.654549, 40.233849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216507, 32.930275, 40.978439>,  <42.508133, 32.688473, 40.389141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216507, 32.930275, 40.978439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.885071, 32.804138, 40.793400>,  <41.686211, 32.728455, 40.682377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.885071, 32.804138, 40.793400>,  <42.216507, 32.930275, 40.978439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885071, 32.804138, 40.793400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339853, -0.373313, 0.863213,
		-0.444900, 0.872467, 0.202154,
		-0.828591, -0.315341, -0.462597,
		41.636494, 32.709538, 40.654621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673107, 33.202705, 41.363163>,  <42.216507, 32.930275, 40.978439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673107, 33.202705, 41.363163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.547817, 32.872944, 41.174591>,  <41.472641, 32.675087, 41.061447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.547817, 32.872944, 41.174591>,  <41.673107, 33.202705, 41.363163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547817, 32.872944, 41.174591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354867, -0.358850, 0.863305,
		-0.880885, 0.437706, -0.180152,
		-0.313227, -0.824403, -0.471434,
		41.453850, 32.625622, 41.033161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940678, 33.122238, 41.640949>,  <41.673107, 33.202705, 41.363163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940678, 33.122238, 41.640949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.042061, 32.786282, 41.448975>,  <41.102890, 32.584705, 41.333790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.042061, 32.786282, 41.448975>,  <40.940678, 33.122238, 41.640949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042061, 32.786282, 41.448975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397358, -0.542741, 0.739958,
		-0.881966, 0.003155, -0.471303,
		0.253461, -0.839894, -0.479933,
		41.118099, 32.534313, 41.304996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453716, 32.650200, 41.816666>,  <40.940678, 33.122238, 41.640949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453716, 32.650200, 41.816666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.781666, 32.452225, 41.701534>,  <40.978436, 32.333439, 41.632458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.781666, 32.452225, 41.701534>,  <40.453716, 32.650200, 41.816666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781666, 32.452225, 41.701534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068995, -0.584460, 0.808484,
		-0.568365, -0.643001, -0.513333,
		0.819878, -0.494931, -0.287823,
		41.027630, 32.303745, 41.615185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293854, 31.981325, 41.976665>,  <40.453716, 32.650200, 41.816666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293854, 31.981325, 41.976665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.693157, 31.988064, 41.954079>,  <40.932739, 31.992107, 41.940529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.693157, 31.988064, 41.954079>,  <40.293854, 31.981325, 41.976665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693157, 31.988064, 41.954079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057986, -0.451047, 0.890615,
		-0.010465, -0.892341, -0.451240,
		0.998263, 0.016845, -0.056464,
		40.992638, 31.993116, 41.937138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525978, 31.257521, 42.185669>,  <40.293854, 31.981325, 41.976665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525978, 31.257521, 42.185669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.850422, 31.490444, 42.207649>,  <41.045090, 31.630198, 42.220837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.850422, 31.490444, 42.207649>,  <40.525978, 31.257521, 42.185669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850422, 31.490444, 42.207649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212943, -0.381498, 0.899508,
		0.544756, -0.717896, -0.433435,
		0.811108, 0.582309, 0.054952,
		41.093754, 31.665136, 42.224136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033142, 30.801634, 42.500740>,  <40.525978, 31.257521, 42.185669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033142, 30.801634, 42.500740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.173981, 31.169809, 42.568645>,  <41.258484, 31.390715, 42.609390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.173981, 31.169809, 42.568645>,  <41.033142, 30.801634, 42.500740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173981, 31.169809, 42.568645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271117, -0.273903, 0.922753,
		0.895835, -0.278876, -0.345988,
		0.352101, 0.920438, 0.169764,
		41.279610, 31.445940, 42.619576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811150, 30.795292, 42.628517>,  <41.033142, 30.801634, 42.500740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811150, 30.795292, 42.628517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.642742, 31.113008, 42.803715>,  <41.541698, 31.303638, 42.908833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.642742, 31.113008, 42.803715>,  <41.811150, 30.795292, 42.628517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642742, 31.113008, 42.803715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397145, -0.272709, 0.876302,
		0.815486, 0.542889, -0.200633,
		-0.421021, 0.794293, 0.437996,
		41.516438, 31.351295, 42.935112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244114, 30.982449, 43.149254>,  <41.811150, 30.795292, 42.628517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244114, 30.982449, 43.149254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.911045, 31.167858, 43.270454>,  <41.711205, 31.279104, 43.343174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.911045, 31.167858, 43.270454>,  <42.244114, 30.982449, 43.149254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911045, 31.167858, 43.270454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250246, -0.173149, 0.952574,
		0.494003, 0.869003, 0.028182,
		-0.832669, 0.463522, 0.303001,
		41.661243, 31.306915, 43.361355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497677, 31.402155, 43.623814>,  <42.244114, 30.982449, 43.149254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497677, 31.402155, 43.623814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.119473, 31.490732, 43.719296>,  <41.892551, 31.543879, 43.776585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.119473, 31.490732, 43.719296>,  <42.497677, 31.402155, 43.623814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119473, 31.490732, 43.719296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098726, -0.503632, 0.858258,
		0.310276, 0.835055, 0.454325,
		-0.945506, 0.221443, 0.238707,
		41.835819, 31.557165, 43.790909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494701, 31.916498, 44.161415>,  <42.497677, 31.402155, 43.623814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494701, 31.916498, 44.161415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.147629, 31.718071, 44.174339>,  <41.939384, 31.599014, 44.182095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.147629, 31.718071, 44.174339>,  <42.494701, 31.916498, 44.161415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147629, 31.718071, 44.174339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148160, -0.196017, 0.969343,
		-0.474528, 0.845868, 0.243578,
		-0.867682, -0.496069, 0.032309,
		41.887325, 31.569250, 44.184032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.616604, 31.032749, 44.642235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914352, 30.903986, 44.408215>,  <38.093002, 30.826729, 44.267803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914352, 30.903986, 44.408215>,  <37.616604, 31.032749, 44.642235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914352, 30.903986, 44.408215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078499, 0.827875, -0.555393,
		0.663134, 0.459345, 0.590979,
		0.744373, -0.321908, -0.585050,
		38.137665, 30.807413, 44.232700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916145, 31.598333, 44.494629>,  <37.616604, 31.032749, 44.642235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916145, 31.598333, 44.494629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059330, 31.364244, 44.203594>,  <38.145241, 31.223791, 44.028973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059330, 31.364244, 44.203594>,  <37.916145, 31.598333, 44.494629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059330, 31.364244, 44.203594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094485, 0.752516, -0.651761,
		0.928943, 0.302052, 0.214078,
		0.357963, -0.585222, -0.727584,
		38.166718, 31.188679, 43.985317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216019, 32.019299, 44.135124>,  <37.916145, 31.598333, 44.494629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216019, 32.019299, 44.135124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206329, 31.707254, 43.885056>,  <38.200516, 31.520027, 43.735016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206329, 31.707254, 43.885056>,  <38.216019, 32.019299, 44.135124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206329, 31.707254, 43.885056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087094, 0.624620, -0.776057,
		0.995906, 0.035651, -0.083072,
		-0.024221, -0.780114, -0.625168,
		38.199062, 31.473221, 43.697506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686035, 32.163269, 43.664528>,  <38.216019, 32.019299, 44.135124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686035, 32.163269, 43.664528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445171, 31.893593, 43.493473>,  <38.300655, 31.731787, 43.390842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445171, 31.893593, 43.493473>,  <38.686035, 32.163269, 43.664528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445171, 31.893593, 43.493473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025001, 0.551288, -0.833941,
		0.797987, -0.491471, -0.348816,
		-0.602155, -0.674195, -0.427634,
		38.264526, 31.691334, 43.365185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843029, 32.227070, 42.940102>,  <38.686035, 32.163269, 43.664528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843029, 32.227070, 42.940102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.485584, 32.049492, 42.966560>,  <38.271118, 31.942945, 42.982437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.485584, 32.049492, 42.966560>,  <38.843029, 32.227070, 42.940102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485584, 32.049492, 42.966560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270990, 0.416139, -0.867982,
		0.357807, -0.793563, -0.492170,
		-0.893610, -0.443943, 0.066150,
		38.217503, 31.916307, 42.986404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777607, 32.008636, 42.267822>,  <38.843029, 32.227070, 42.940102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777607, 32.008636, 42.267822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413914, 32.006779, 42.434330>,  <38.195698, 32.005665, 42.534233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413914, 32.006779, 42.434330>,  <38.777607, 32.008636, 42.267822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413914, 32.006779, 42.434330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386640, 0.380070, -0.840271,
		-0.154307, -0.924946, -0.347368,
		-0.909230, -0.004647, 0.416268,
		38.141144, 32.005386, 42.559212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361584, 31.920893, 41.707943>,  <38.777607, 32.008636, 42.267822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361584, 31.920893, 41.707943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129932, 32.085320, 41.989548>,  <37.990940, 32.183975, 42.158512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129932, 32.085320, 41.989548>,  <38.361584, 31.920893, 41.707943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129932, 32.085320, 41.989548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454656, 0.553946, -0.697446,
		-0.676683, -0.723994, -0.133911,
		-0.579127, 0.411067, 0.704014,
		37.956196, 32.208641, 42.200752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689339, 31.981617, 41.379318>,  <38.361584, 31.920893, 41.707943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689339, 31.981617, 41.379318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675121, 32.237160, 41.686718>,  <37.666592, 32.390484, 41.871159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675121, 32.237160, 41.686718>,  <37.689339, 31.981617, 41.379318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675121, 32.237160, 41.686718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539399, 0.635095, -0.552905,
		-0.841300, -0.434183, 0.322023,
		-0.035547, 0.638858, 0.768503,
		37.664455, 32.428818, 41.917271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959332, 32.187450, 41.476307>,  <37.689339, 31.981617, 41.379318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959332, 32.187450, 41.476307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215565, 32.458233, 41.621292>,  <37.369305, 32.620705, 41.708282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215565, 32.458233, 41.621292>,  <36.959332, 32.187450, 41.476307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215565, 32.458233, 41.621292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352099, 0.678423, -0.644801,
		-0.682404, 0.285430, 0.672945,
		0.640587, 0.676958, 0.362459,
		37.407742, 32.661320, 41.730030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549702, 32.781212, 41.414646>,  <36.959332, 32.187450, 41.476307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549702, 32.781212, 41.414646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924709, 32.914593, 41.454388>,  <37.149712, 32.994621, 41.478233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924709, 32.914593, 41.454388>,  <36.549702, 32.781212, 41.414646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924709, 32.914593, 41.454388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221259, 0.791730, -0.569393,
		-0.268531, 0.511831, 0.816039,
		0.937516, 0.333456, 0.099357,
		37.205963, 33.014629, 41.484196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412567, 33.375401, 41.538353>,  <36.549702, 32.781212, 41.414646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412567, 33.375401, 41.538353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.805523, 33.394852, 41.466187>,  <37.041294, 33.406521, 41.422886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.805523, 33.394852, 41.466187>,  <36.412567, 33.375401, 41.538353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805523, 33.394852, 41.466187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131028, 0.867642, -0.479614,
		0.133219, 0.494806, 0.858731,
		0.982387, 0.048624, -0.180420,
		37.100239, 33.409439, 41.412060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668186, 34.027641, 41.713547>,  <36.412567, 33.375401, 41.538353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668186, 34.027641, 41.713547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.933655, 33.895668, 41.445015>,  <37.092937, 33.816486, 41.283897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.933655, 33.895668, 41.445015>,  <36.668186, 34.027641, 41.713547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933655, 33.895668, 41.445015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182892, 0.798660, -0.573317,
		0.725317, 0.503277, 0.469709,
		0.663676, -0.329931, -0.671327,
		37.132759, 33.796688, 41.243618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038548, 34.635197, 41.353302>,  <36.668186, 34.027641, 41.713547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038548, 34.635197, 41.353302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.089943, 34.334808, 41.094215>,  <37.120781, 34.154575, 40.938763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.089943, 34.334808, 41.094215>,  <37.038548, 34.635197, 41.353302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089943, 34.334808, 41.094215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021188, 0.650903, -0.758865,
		0.991485, 0.111229, 0.067721,
		0.128488, -0.750968, -0.647717,
		37.128490, 34.109516, 40.899899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504807, 34.882854, 40.988983>,  <37.038548, 34.635197, 41.353302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504807, 34.882854, 40.988983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.318481, 34.605553, 40.769012>,  <37.206688, 34.439171, 40.637032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.318481, 34.605553, 40.769012>,  <37.504807, 34.882854, 40.988983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318481, 34.605553, 40.769012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097589, 0.657922, -0.746737,
		0.879488, -0.294170, -0.374120,
		-0.465808, -0.693255, -0.549926,
		37.178738, 34.397575, 40.604034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121078, 35.087418, 40.880692>,  <37.504807, 34.882854, 40.988983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121078, 35.087418, 40.880692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.139923, 35.466858, 41.005871>,  <38.151230, 35.694523, 41.080978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.139923, 35.466858, 41.005871>,  <38.121078, 35.087418, 40.880692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139923, 35.466858, 41.005871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247362, -0.314621, 0.916420,
		0.967777, 0.034239, -0.249470,
		0.047112, 0.948600, 0.312952,
		38.154057, 35.751438, 41.099758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788574, 35.137272, 41.130493>,  <38.121078, 35.087418, 40.880692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788574, 35.137272, 41.130493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566891, 35.428448, 41.291965>,  <38.433880, 35.603153, 41.388847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566891, 35.428448, 41.291965>,  <38.788574, 35.137272, 41.130493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566891, 35.428448, 41.291965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222734, -0.337591, 0.914561,
		0.802023, 0.596772, 0.024959,
		-0.554210, 0.727939, 0.403677,
		38.400627, 35.646832, 41.413067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135994, 35.539097, 41.640232>,  <38.788574, 35.137272, 41.130493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135994, 35.539097, 41.640232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.767780, 35.629772, 41.767498>,  <38.546852, 35.684177, 41.843857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.767780, 35.629772, 41.767498>,  <39.135994, 35.539097, 41.640232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767780, 35.629772, 41.767498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232090, -0.337791, 0.912158,
		0.314248, 0.913516, 0.258337,
		-0.920534, 0.226686, 0.318167,
		38.491619, 35.697777, 41.862949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286343, 35.850140, 42.294304>,  <39.135994, 35.539097, 41.640232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286343, 35.850140, 42.294304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.905148, 35.729050, 42.299519>,  <38.676430, 35.656395, 42.302647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.905148, 35.729050, 42.299519>,  <39.286343, 35.850140, 42.294304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905148, 35.729050, 42.299519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154617, -0.448837, 0.880136,
		-0.260587, 0.840775, 0.474543,
		-0.952989, -0.302724, 0.013037,
		38.619251, 35.638233, 42.303429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008640, 36.136745, 42.900852>,  <39.286343, 35.850140, 42.294304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008640, 36.136745, 42.900852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.783344, 35.819836, 42.806984>,  <38.648167, 35.629692, 42.750664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.783344, 35.819836, 42.806984>,  <39.008640, 36.136745, 42.900852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783344, 35.819836, 42.806984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011279, -0.276603, 0.960918,
		-0.826219, 0.543871, 0.146856,
		-0.563236, -0.792273, -0.234669,
		38.614372, 35.582153, 42.736584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636742, 35.977165, 43.545418>,  <39.008640, 36.136745, 42.900852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636742, 35.977165, 43.545418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.565796, 35.643017, 43.337303>,  <38.523228, 35.442528, 43.212433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.565796, 35.643017, 43.337303>,  <38.636742, 35.977165, 43.545418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565796, 35.643017, 43.337303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119960, -0.543081, 0.831067,
		-0.976807, 0.084987, 0.196534,
		-0.177364, -0.835368, -0.520290,
		38.512589, 35.392406, 43.181217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121838, 35.588295, 43.893459>,  <38.636742, 35.977165, 43.545418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121838, 35.588295, 43.893459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.324539, 35.313236, 43.685486>,  <38.446159, 35.148201, 43.560703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.324539, 35.313236, 43.685486>,  <38.121838, 35.588295, 43.893459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324539, 35.313236, 43.685486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045392, -0.623558, 0.780458,
		-0.860893, -0.371902, -0.347206,
		0.506757, -0.687651, -0.519935,
		38.476566, 35.106941, 43.529507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836422, 34.984543, 44.029179>,  <38.121838, 35.588295, 43.893459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836422, 34.984543, 44.029179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.204414, 34.880196, 43.912159>,  <38.425209, 34.817589, 43.841949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.204414, 34.880196, 43.912159>,  <37.836422, 34.984543, 44.029179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204414, 34.880196, 43.912159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085575, -0.594676, 0.799398,
		-0.382508, -0.760466, -0.524767,
		0.919981, -0.260869, -0.292545,
		38.480408, 34.801933, 43.824394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832630, 34.257889, 43.897198>,  <37.836422, 34.984543, 44.029179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832630, 34.257889, 43.897198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.205235, 34.362396, 43.998405>,  <38.428799, 34.425102, 44.059132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.205235, 34.362396, 43.998405>,  <37.832630, 34.257889, 43.897198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205235, 34.362396, 43.998405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010609, -0.714891, 0.699156,
		0.363551, -0.648589, -0.668703,
		0.931514, 0.261273, 0.253018,
		38.484688, 34.440777, 44.074310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040794, 33.735420, 44.213932>,  <37.832630, 34.257889, 43.897198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040794, 33.735420, 44.213932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.378422, 33.933136, 44.297104>,  <38.580997, 34.051765, 44.347008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.378422, 33.933136, 44.297104>,  <38.040794, 33.735420, 44.213932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378422, 33.933136, 44.297104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190626, -0.639002, 0.745210,
		0.501213, -0.589370, -0.633584,
		0.844066, 0.494287, 0.207926,
		38.631641, 34.081421, 44.359482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720295, 33.305290, 44.155006>,  <38.040794, 33.735420, 44.213932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720295, 33.305290, 44.155006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.800964, 33.605507, 44.406727>,  <38.849365, 33.785637, 44.557758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.800964, 33.605507, 44.406727>,  <38.720295, 33.305290, 44.155006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800964, 33.605507, 44.406727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347187, -0.655562, 0.670597,
		0.915853, 0.083239, -0.392790,
		0.201678, 0.750540, 0.629298,
		38.861469, 33.830669, 44.595516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293755, 33.158028, 44.460136>,  <38.720295, 33.305290, 44.155006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293755, 33.158028, 44.460136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.138752, 33.405922, 44.733128>,  <39.045750, 33.554657, 44.896923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.138752, 33.405922, 44.733128>,  <39.293755, 33.158028, 44.460136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138752, 33.405922, 44.733128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325277, -0.600782, 0.730243,
		0.862573, 0.504968, 0.031223,
		-0.387508, 0.619732, 0.682473,
		39.022499, 33.591843, 44.937870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874191, 33.417774, 44.889729>,  <39.293755, 33.158028, 44.460136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874191, 33.417774, 44.889729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.551174, 33.478344, 45.117744>,  <39.357365, 33.514687, 45.254555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.551174, 33.478344, 45.117744>,  <39.874191, 33.417774, 44.889729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551174, 33.478344, 45.117744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374197, -0.615534, 0.693610,
		0.455904, 0.773427, 0.440410,
		-0.807545, 0.151420, 0.570039,
		39.308910, 33.523769, 45.288757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201305, 33.467014, 45.521099>,  <39.874191, 33.417774, 44.889729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201305, 33.467014, 45.521099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.825680, 33.346439, 45.587177>,  <39.600304, 33.274094, 45.626823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.825680, 33.346439, 45.587177>,  <40.201305, 33.467014, 45.521099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825680, 33.346439, 45.587177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325561, -0.625732, 0.708851,
		-0.110305, 0.719440, 0.685740,
		-0.939065, -0.301440, 0.165200,
		39.543961, 33.256008, 45.636738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542213, 34.000237, 46.069748>,  <40.201305, 33.467014, 45.521099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542213, 34.000237, 46.069748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.923347, 34.121132, 46.058708>,  <41.152027, 34.193668, 46.052086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.923347, 34.121132, 46.058708>,  <40.542213, 34.000237, 46.069748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923347, 34.121132, 46.058708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221902, 0.631738, -0.742743,
		-0.207052, 0.713833, 0.669008,
		0.952832, 0.302240, -0.027598,
		41.209198, 34.211803, 46.050430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524281, 34.673187, 45.936363>,  <40.542213, 34.000237, 46.069748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524281, 34.673187, 45.936363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.905926, 34.603146, 45.839203>,  <41.134914, 34.561119, 45.780907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.905926, 34.603146, 45.839203>,  <40.524281, 34.673187, 45.936363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905926, 34.603146, 45.839203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114504, 0.536182, -0.836300,
		0.276681, 0.825740, 0.491529,
		0.954116, -0.175106, -0.242902,
		41.192162, 34.550613, 45.766331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678391, 35.289597, 45.671925>,  <40.524281, 34.673187, 45.936363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678391, 35.289597, 45.671925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.956161, 35.037182, 45.533607>,  <41.122822, 34.885735, 45.450619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.956161, 35.037182, 45.533607>,  <40.678391, 35.289597, 45.671925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956161, 35.037182, 45.533607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005082, 0.484842, -0.874587,
		0.719547, 0.605578, 0.339893,
		0.694425, -0.631034, -0.345789,
		41.164490, 34.847870, 45.429871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372513, 35.653942, 45.480373>,  <40.678391, 35.289597, 45.671925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372513, 35.653942, 45.480373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.329929, 35.322628, 45.260334>,  <41.304379, 35.123840, 45.128311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.329929, 35.322628, 45.260334>,  <41.372513, 35.653942, 45.480373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329929, 35.322628, 45.260334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042017, 0.556492, -0.829790,
		0.993428, -0.065228, -0.094048,
		-0.106463, -0.828289, -0.550094,
		41.297989, 35.074142, 45.095306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955158, 35.572887, 45.077675>,  <41.372513, 35.653942, 45.480373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955158, 35.572887, 45.077675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.673935, 35.348515, 44.902832>,  <41.505199, 35.213890, 44.797928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.673935, 35.348515, 44.902832>,  <41.955158, 35.572887, 45.077675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673935, 35.348515, 44.902832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165543, 0.468680, -0.867718,
		0.691594, -0.682418, -0.236651,
		-0.703060, -0.560933, -0.437106,
		41.463017, 35.180233, 44.771702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304729, 35.581993, 44.443195>,  <41.955158, 35.572887, 45.077675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304729, 35.581993, 44.443195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.935654, 35.439758, 44.383595>,  <41.714207, 35.354416, 44.347836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.935654, 35.439758, 44.383595>,  <42.304729, 35.581993, 44.443195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935654, 35.439758, 44.383595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021178, 0.432624, -0.901326,
		0.384957, -0.828490, -0.406709,
		-0.922691, -0.355585, -0.148996,
		41.658848, 35.333080, 44.338894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329910, 35.221546, 43.805584>,  <42.304729, 35.581993, 44.443195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329910, 35.221546, 43.805584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.939713, 35.301029, 43.843388>,  <41.705593, 35.348721, 43.866070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.939713, 35.301029, 43.843388>,  <42.329910, 35.221546, 43.805584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939713, 35.301029, 43.843388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018802, 0.352674, -0.935557,
		-0.219234, -0.914405, -0.340294,
		-0.975491, 0.198708, 0.094511,
		41.647064, 35.360641, 43.871742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050396, 34.951595, 43.112820>,  <42.329910, 35.221546, 43.805584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050396, 34.951595, 43.112820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.777092, 35.200161, 43.266182>,  <41.613110, 35.349300, 43.358200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.777092, 35.200161, 43.266182>,  <42.050396, 34.951595, 43.112820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777092, 35.200161, 43.266182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167064, 0.378119, -0.910558,
		-0.710804, -0.686203, -0.154539,
		-0.683262, 0.621410, 0.383409,
		41.572113, 35.386585, 43.381203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380257, 35.001492, 42.680183>,  <42.050396, 34.951595, 43.112820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380257, 35.001492, 42.680183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.378143, 35.343708, 42.887268>,  <41.376877, 35.549038, 43.011520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.378143, 35.343708, 42.887268>,  <41.380257, 35.001492, 42.680183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378143, 35.343708, 42.887268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225742, 0.503335, -0.834083,
		-0.974173, -0.121273, 0.190474,
		-0.005280, 0.855539, 0.517711,
		41.376560, 35.600368, 43.042580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770119, 35.285877, 42.407700>,  <41.380257, 35.001492, 42.680183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770119, 35.285877, 42.407700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.954731, 35.592506, 42.586292>,  <41.065498, 35.776485, 42.693447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.954731, 35.592506, 42.586292>,  <40.770119, 35.285877, 42.407700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954731, 35.592506, 42.586292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256664, 0.597154, -0.759955,
		-0.849182, 0.236150, 0.472360,
		0.461534, 0.766577, 0.446481,
		41.093193, 35.822479, 42.720238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248745, 35.858562, 42.451214>,  <40.770119, 35.285877, 42.407700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248745, 35.858562, 42.451214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.630589, 35.976665, 42.435486>,  <40.859695, 36.047527, 42.426048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.630589, 35.976665, 42.435486>,  <40.248745, 35.858562, 42.451214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630589, 35.976665, 42.435486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243094, 0.695970, -0.675670,
		-0.172132, 0.654558, 0.736155,
		0.954607, 0.295260, -0.039320,
		40.916969, 36.065243, 42.423691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111797, 36.466923, 42.197803>,  <40.248745, 35.858562, 42.451214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111797, 36.466923, 42.197803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.510700, 36.462837, 42.168503>,  <40.750042, 36.460388, 42.150925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.510700, 36.462837, 42.168503>,  <40.111797, 36.466923, 42.197803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510700, 36.462837, 42.168503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036060, 0.797576, -0.602140,
		0.064571, 0.603132, 0.795023,
		0.997261, -0.010212, -0.073249,
		40.809879, 36.459774, 42.146526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376179, 37.133224, 42.255039>,  <40.111797, 36.466923, 42.197803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376179, 37.133224, 42.255039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.668419, 36.932510, 42.069813>,  <40.843761, 36.812080, 41.958675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.668419, 36.932510, 42.069813>,  <40.376179, 37.133224, 42.255039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668419, 36.932510, 42.069813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110424, 0.756087, -0.645088,
		0.673819, 0.420166, 0.607806,
		0.730598, -0.501790, -0.463069,
		40.887600, 36.781975, 41.930893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817627, 37.589413, 42.154167>,  <40.376179, 37.133224, 42.255039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817627, 37.589413, 42.154167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.895027, 37.317310, 41.871376>,  <40.941467, 37.154049, 41.701702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.895027, 37.317310, 41.871376>,  <40.817627, 37.589413, 42.154167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895027, 37.317310, 41.871376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049293, 0.726426, -0.685475,
		0.979862, 0.097787, 0.174093,
		0.193496, -0.680252, -0.706977,
		40.953075, 37.113235, 41.659283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.273468, 39.571915, 30.510666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.618647, 39.378887, 30.450735>,  <29.825754, 39.263069, 30.414776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.618647, 39.378887, 30.450735>,  <29.273468, 39.571915, 30.510666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618647, 39.378887, 30.450735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246580, -0.660984, 0.708730,
		-0.441048, -0.574651, -0.689386,
		0.862946, -0.482573, -0.149828,
		29.877531, 39.234116, 30.405787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074049, 38.886219, 30.478258>,  <29.273468, 39.571915, 30.510666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074049, 38.886219, 30.478258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461380, 38.891251, 30.578001>,  <29.693779, 38.894268, 30.637848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461380, 38.891251, 30.578001>,  <29.074049, 38.886219, 30.478258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461380, 38.891251, 30.578001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144903, -0.785007, 0.602301,
		0.203326, -0.619359, -0.758323,
		0.968329, 0.012580, 0.249359,
		29.751879, 38.895023, 30.652809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214489, 38.116558, 30.493998>,  <29.074049, 38.886219, 30.478258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214489, 38.116558, 30.493998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.478287, 38.316891, 30.718225>,  <29.636564, 38.437088, 30.852762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.478287, 38.316891, 30.718225>,  <29.214489, 38.116558, 30.493998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478287, 38.316891, 30.718225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174199, -0.623605, 0.762083,
		0.731248, -0.600240, -0.324019,
		0.659493, 0.500828, 0.560571,
		29.676134, 38.467140, 30.886396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663954, 37.593410, 30.869596>,  <29.214489, 38.116558, 30.493998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663954, 37.593410, 30.869596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699614, 37.931606, 31.080196>,  <29.721010, 38.134525, 31.206556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699614, 37.931606, 31.080196>,  <29.663954, 37.593410, 30.869596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699614, 37.931606, 31.080196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263146, -0.489828, 0.831157,
		0.960628, -0.212644, 0.178819,
		0.089150, 0.845489, 0.526499,
		29.726358, 38.185253, 31.238146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090456, 37.433262, 31.434750>,  <29.663954, 37.593410, 30.869596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090456, 37.433262, 31.434750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.863590, 37.749519, 31.527023>,  <29.727470, 37.939274, 31.582388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.863590, 37.749519, 31.527023>,  <30.090456, 37.433262, 31.434750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863590, 37.749519, 31.527023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237220, -0.425039, 0.873538,
		0.788703, 0.440715, 0.428622,
		-0.567163, 0.790640, 0.230683,
		29.693441, 37.986710, 31.596228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055332, 37.346283, 32.139187>,  <30.090456, 37.433262, 31.434750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055332, 37.346283, 32.139187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777344, 37.630535, 32.095333>,  <29.610550, 37.801086, 32.069019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777344, 37.630535, 32.095333>,  <30.055332, 37.346283, 32.139187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777344, 37.630535, 32.095333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460072, -0.322294, 0.827322,
		0.552583, 0.625406, 0.550926,
		-0.694972, 0.710629, -0.109637,
		29.568851, 37.843723, 32.062443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037458, 37.638149, 32.776711>,  <30.055332, 37.346283, 32.139187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037458, 37.638149, 32.776711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689997, 37.722736, 32.597504>,  <29.481520, 37.773491, 32.489979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689997, 37.722736, 32.597504>,  <30.037458, 37.638149, 32.776711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689997, 37.722736, 32.597504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491953, -0.261471, 0.830431,
		0.058470, 0.941760, 0.331162,
		-0.868656, 0.211471, -0.448014,
		29.429399, 37.786179, 32.463100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637302, 38.035027, 33.204372>,  <30.037458, 37.638149, 32.776711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637302, 38.035027, 33.204372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.342842, 37.886715, 32.977886>,  <29.166166, 37.797729, 32.841995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.342842, 37.886715, 32.977886>,  <29.637302, 38.035027, 33.204372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342842, 37.886715, 32.977886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356808, -0.498289, 0.790188,
		-0.575126, 0.783729, 0.234518,
		-0.736151, -0.370779, -0.566220,
		29.121996, 37.775482, 32.808022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044140, 37.863865, 33.599815>,  <29.637302, 38.035027, 33.204372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044140, 37.863865, 33.599815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923529, 37.638832, 33.291901>,  <28.851162, 37.503811, 33.107151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923529, 37.638832, 33.291901>,  <29.044140, 37.863865, 33.599815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923529, 37.638832, 33.291901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577073, -0.535014, 0.617046,
		-0.758990, 0.630284, -0.163330,
		-0.301530, -0.562585, -0.769790,
		28.833069, 37.470055, 33.060963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333002, 37.807049, 33.641010>,  <29.044140, 37.863865, 33.599815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333002, 37.807049, 33.641010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442665, 37.490940, 33.421810>,  <28.508463, 37.301273, 33.290291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442665, 37.490940, 33.421810>,  <28.333002, 37.807049, 33.641010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442665, 37.490940, 33.421810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655862, -0.570404, 0.494454,
		-0.703336, 0.223856, -0.674690,
		0.274159, -0.790271, -0.548004,
		28.524914, 37.253860, 33.257408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682156, 37.509773, 33.604706>,  <28.333002, 37.807049, 33.641010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682156, 37.509773, 33.604706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.939640, 37.221424, 33.501965>,  <28.094130, 37.048412, 33.440319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.939640, 37.221424, 33.501965>,  <27.682156, 37.509773, 33.604706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939640, 37.221424, 33.501965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549808, -0.669109, 0.500004,
		-0.532304, -0.180637, -0.827056,
		0.643711, -0.720876, -0.256854,
		28.132753, 37.005161, 33.424908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260216, 36.879002, 33.402153>,  <27.682156, 37.509773, 33.604706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260216, 36.879002, 33.402153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.629000, 36.758179, 33.499107>,  <27.850271, 36.685684, 33.557278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.629000, 36.758179, 33.499107>,  <27.260216, 36.879002, 33.402153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629000, 36.758179, 33.499107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387245, -0.727642, 0.566196,
		0.005345, -0.615872, -0.787828,
		0.921961, -0.302057, 0.242383,
		27.905588, 36.667561, 33.571823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175323, 36.211025, 33.335155>,  <27.260216, 36.879002, 33.402153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175323, 36.211025, 33.335155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514818, 36.249790, 33.543098>,  <27.718515, 36.273048, 33.667866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514818, 36.249790, 33.543098>,  <27.175323, 36.211025, 33.335155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514818, 36.249790, 33.543098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280485, -0.750886, 0.597911,
		0.448298, -0.653282, -0.610124,
		0.848739, 0.096912, 0.519857,
		27.769440, 36.278862, 33.699055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389353, 35.518890, 33.468357>,  <27.175323, 36.211025, 33.335155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389353, 35.518890, 33.468357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.589224, 35.722996, 33.748344>,  <27.709146, 35.845459, 33.916336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.589224, 35.722996, 33.748344>,  <27.389353, 35.518890, 33.468357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589224, 35.722996, 33.748344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335134, -0.631267, 0.699419,
		0.798755, -0.584066, -0.144423,
		0.499676, 0.510263, 0.699968,
		27.739126, 35.876076, 33.958336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686758, 35.051029, 33.942783>,  <27.389353, 35.518890, 33.468357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686758, 35.051029, 33.942783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.663336, 35.385696, 34.160610>,  <27.649282, 35.586498, 34.291306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.663336, 35.385696, 34.160610>,  <27.686758, 35.051029, 33.942783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663336, 35.385696, 34.160610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319694, -0.532488, 0.783742,
		0.945710, -0.128200, 0.298660,
		-0.058557, 0.836672, 0.544564,
		27.645769, 35.636700, 34.323978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060970, 34.912167, 34.573799>,  <27.686758, 35.051029, 33.942783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060970, 34.912167, 34.573799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.802065, 35.213902, 34.617661>,  <27.646721, 35.394943, 34.643978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.802065, 35.213902, 34.617661>,  <28.060970, 34.912167, 34.573799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802065, 35.213902, 34.617661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323617, -0.402186, 0.856457,
		0.690159, 0.518868, 0.504437,
		-0.647265, 0.754336, 0.109658,
		27.607885, 35.440201, 34.650558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878180, 34.930523, 35.270988>,  <28.060970, 34.912167, 34.573799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878180, 34.930523, 35.270988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.602022, 35.181694, 35.127289>,  <27.436327, 35.332397, 35.041069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.602022, 35.181694, 35.127289>,  <27.878180, 34.930523, 35.270988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602022, 35.181694, 35.127289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577802, -0.179796, 0.796127,
		0.435318, 0.757218, 0.486948,
		-0.690393, 0.627928, -0.359254,
		27.394905, 35.370071, 35.019512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744587, 35.411343, 35.761852>,  <27.878180, 34.930523, 35.270988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744587, 35.411343, 35.761852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430822, 35.376511, 35.516212>,  <27.242563, 35.355610, 35.368828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430822, 35.376511, 35.516212>,  <27.744587, 35.411343, 35.761852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430822, 35.376511, 35.516212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516711, -0.455925, 0.724667,
		-0.343086, 0.885748, 0.312638,
		-0.784411, -0.087080, -0.614098,
		27.195499, 35.350388, 35.331982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557384, 35.337303, 35.757381>,  <27.744587, 35.411343, 35.761852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557384, 35.337303, 35.757381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842031, 35.132629, 35.564808>,  <29.012819, 35.009827, 35.449265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842031, 35.132629, 35.564808>,  <28.557384, 35.337303, 35.757381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842031, 35.132629, 35.564808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566286, 0.823331, -0.038018,
		0.415836, -0.245577, 0.875655,
		0.711618, -0.511681, -0.481438,
		29.055517, 34.979126, 35.420376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255016, 35.571735, 36.148006>,  <28.557384, 35.337303, 35.757381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255016, 35.571735, 36.148006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.233412, 35.449223, 35.767845>,  <29.220449, 35.375713, 35.539749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.233412, 35.449223, 35.767845>,  <29.255016, 35.571735, 36.148006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233412, 35.449223, 35.767845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469277, 0.832351, -0.294908,
		0.881398, -0.461932, 0.098776,
		-0.054011, -0.306285, -0.950407,
		29.217209, 35.357338, 35.482723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652416, 35.328514, 36.657532>,  <29.255016, 35.571735, 36.148006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652416, 35.328514, 36.657532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.964966, 35.081276, 36.623104>,  <30.152496, 34.932934, 36.602448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.964966, 35.081276, 36.623104>,  <29.652416, 35.328514, 36.657532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964966, 35.081276, 36.623104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201977, -0.119986, -0.972013,
		0.590474, 0.776889, -0.218596,
		0.781375, -0.618099, -0.086065,
		30.199379, 34.895847, 36.597286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984364, 35.545300, 35.971485>,  <29.652416, 35.328514, 36.657532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984364, 35.545300, 35.971485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.150972, 35.196434, 36.074123>,  <30.250937, 34.987114, 36.135708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.150972, 35.196434, 36.074123>,  <29.984364, 35.545300, 35.971485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150972, 35.196434, 36.074123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302116, -0.133417, -0.943889,
		0.857459, 0.470671, 0.207923,
		0.416521, -0.872163, 0.256597,
		30.275928, 34.934784, 36.151104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611530, 35.485760, 35.598576>,  <29.984364, 35.545300, 35.971485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611530, 35.485760, 35.598576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.508413, 35.103050, 35.652428>,  <30.446543, 34.873425, 35.684738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.508413, 35.103050, 35.652428>,  <30.611530, 35.485760, 35.598576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508413, 35.103050, 35.652428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288843, -0.209284, -0.934222,
		0.922016, -0.201946, 0.330309,
		-0.257791, -0.956775, 0.134632,
		30.431076, 34.816017, 35.692818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117327, 35.221893, 35.277378>,  <30.611530, 35.485760, 35.598576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117327, 35.221893, 35.277378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.828793, 34.945656, 35.298397>,  <30.655672, 34.779915, 35.311008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.828793, 34.945656, 35.298397>,  <31.117327, 35.221893, 35.277378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828793, 34.945656, 35.298397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024233, -0.100990, -0.994592,
		0.692161, -0.716162, 0.089583,
		-0.721336, -0.690589, 0.052546,
		30.612392, 34.738480, 35.314159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357996, 34.658741, 34.838379>,  <31.117327, 35.221893, 35.277378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357996, 34.658741, 34.838379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.961418, 34.624920, 34.878147>,  <30.723471, 34.604626, 34.902008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.961418, 34.624920, 34.878147>,  <31.357996, 34.658741, 34.838379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961418, 34.624920, 34.878147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082125, -0.187907, -0.978747,
		0.101442, -0.978540, 0.179355,
		-0.991446, -0.084557, 0.099424,
		30.663984, 34.599552, 34.907974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150454, 34.051682, 34.417160>,  <31.357996, 34.658741, 34.838379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150454, 34.051682, 34.417160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.837872, 34.298569, 34.453751>,  <30.650322, 34.446701, 34.475704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.837872, 34.298569, 34.453751>,  <31.150454, 34.051682, 34.417160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837872, 34.298569, 34.453751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265621, -0.196417, -0.943857,
		-0.564598, -0.761880, 0.317438,
		-0.781456, 0.617218, 0.091475,
		30.603436, 34.483734, 34.481194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567320, 33.672276, 34.144032>,  <31.150454, 34.051682, 34.417160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567320, 33.672276, 34.144032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.493465, 34.065384, 34.147404>,  <30.449152, 34.301250, 34.149429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.493465, 34.065384, 34.147404>,  <30.567320, 33.672276, 34.144032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493465, 34.065384, 34.147404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270701, -0.042605, -0.961721,
		-0.944791, -0.179850, 0.273903,
		-0.184635, 0.982771, 0.008433,
		30.438074, 34.360214, 34.149933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064665, 33.722710, 33.671902>,  <30.567320, 33.672276, 34.144032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064665, 33.722710, 33.671902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.169132, 34.106953, 33.709900>,  <30.231813, 34.337498, 33.732700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.169132, 34.106953, 33.709900>,  <30.064665, 33.722710, 33.671902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169132, 34.106953, 33.709900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292466, 0.172534, -0.940583,
		-0.919921, 0.217868, 0.326005,
		0.261170, 0.960607, 0.094999,
		30.247482, 34.395134, 33.738400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452723, 34.092522, 33.484234>,  <30.064665, 33.722710, 33.671902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452723, 34.092522, 33.484234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.764112, 34.336796, 33.426208>,  <29.950947, 34.483360, 33.391392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.764112, 34.336796, 33.426208>,  <29.452723, 34.092522, 33.484234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764112, 34.336796, 33.426208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357742, 0.241771, -0.901980,
		-0.515749, 0.754066, 0.406679,
		0.778476, 0.610681, -0.145068,
		29.997656, 34.520000, 33.382687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177382, 34.709728, 33.140419>,  <29.452723, 34.092522, 33.484234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177382, 34.709728, 33.140419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566742, 34.755344, 33.060940>,  <29.800358, 34.782715, 33.013252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566742, 34.755344, 33.060940>,  <29.177382, 34.709728, 33.140419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566742, 34.755344, 33.060940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224521, 0.302275, -0.926402,
		-0.045585, 0.946374, 0.319839,
		0.973402, 0.114041, -0.198702,
		29.858763, 34.789558, 33.001328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196764, 35.326874, 32.848312>,  <29.177382, 34.709728, 33.140419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196764, 35.326874, 32.848312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.517897, 35.119225, 32.731026>,  <29.710577, 34.994637, 32.660656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.517897, 35.119225, 32.731026>,  <29.196764, 35.326874, 32.848312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517897, 35.119225, 32.731026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077562, 0.396683, -0.914673,
		0.591137, 0.757072, 0.278206,
		0.802833, -0.519119, -0.293214,
		29.758747, 34.963490, 32.643063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810394, 35.745617, 32.657375>,  <29.196764, 35.326874, 32.848312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810394, 35.745617, 32.657375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.831268, 35.403599, 32.451008>,  <29.843792, 35.198387, 32.327187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.831268, 35.403599, 32.451008>,  <29.810394, 35.745617, 32.657375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831268, 35.403599, 32.451008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058459, 0.518354, -0.853165,
		0.996925, 0.014363, 0.077035,
		0.052185, -0.855045, -0.515921,
		29.846924, 35.147087, 32.296230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379921, 35.843773, 32.121838>,  <29.810394, 35.745617, 32.657375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379921, 35.843773, 32.121838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.182072, 35.527885, 31.976679>,  <30.063362, 35.338352, 31.889584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.182072, 35.527885, 31.976679>,  <30.379921, 35.843773, 32.121838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182072, 35.527885, 31.976679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240196, 0.277076, -0.930341,
		0.835258, -0.547332, 0.052639,
		-0.494621, -0.789719, -0.362897,
		30.033686, 35.290970, 31.867809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775682, 35.605759, 31.521397>,  <30.379921, 35.843773, 32.121838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775682, 35.605759, 31.521397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440304, 35.392796, 31.474838>,  <30.239077, 35.265018, 31.446903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440304, 35.392796, 31.474838>,  <30.775682, 35.605759, 31.521397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440304, 35.392796, 31.474838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073805, 0.100685, -0.992177,
		0.539967, -0.840476, -0.045124,
		-0.838444, -0.532412, -0.116398,
		30.188770, 35.233070, 31.439919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938448, 35.078690, 31.002632>,  <30.775682, 35.605759, 31.521397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938448, 35.078690, 31.002632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.545660, 35.152378, 31.019583>,  <30.309986, 35.196590, 31.029753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.545660, 35.152378, 31.019583>,  <30.938448, 35.078690, 31.002632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545660, 35.152378, 31.019583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021032, 0.116306, -0.992991,
		-0.187856, -0.975980, -0.110335,
		-0.981971, 0.184219, 0.042376,
		30.251068, 35.207642, 31.032295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658285, 34.785599, 30.370626>,  <30.938448, 35.078690, 31.002632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658285, 34.785599, 30.370626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.348948, 34.999908, 30.506203>,  <30.163345, 35.128494, 30.587549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.348948, 34.999908, 30.506203>,  <30.658285, 34.785599, 30.370626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348948, 34.999908, 30.506203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191621, 0.312081, -0.930530,
		-0.604335, -0.784568, -0.138680,
		-0.773343, 0.535778, 0.338941,
		30.116945, 35.160641, 30.607885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179960, 34.650959, 29.838264>,  <30.658285, 34.785599, 30.370626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179960, 34.650959, 29.838264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.080008, 34.984272, 30.035522>,  <30.020035, 35.184261, 30.153877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.080008, 34.984272, 30.035522>,  <30.179960, 34.650959, 29.838264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080008, 34.984272, 30.035522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145708, 0.471144, -0.869938,
		-0.957250, -0.289238, 0.003685,
		-0.249883, 0.833285, 0.493147,
		30.005043, 35.234257, 30.183466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562267, 34.698849, 29.637398>,  <30.179960, 34.650959, 29.838264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562267, 34.698849, 29.637398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631056, 35.077217, 29.747423>,  <29.672329, 35.304237, 29.813438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631056, 35.077217, 29.747423>,  <29.562267, 34.698849, 29.637398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631056, 35.077217, 29.747423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249440, 0.311937, -0.916775,
		-0.952999, 0.089046, 0.289594,
		0.171970, 0.945921, 0.275063,
		29.682648, 35.360992, 29.829943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043278, 35.118568, 29.388254>,  <29.562267, 34.698849, 29.637398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043278, 35.118568, 29.388254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.357195, 35.361534, 29.437487>,  <29.545546, 35.507313, 29.467026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.357195, 35.361534, 29.437487>,  <29.043278, 35.118568, 29.388254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357195, 35.361534, 29.437487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108544, 0.330236, -0.937636,
		-0.610177, 0.722492, 0.325099,
		0.784794, 0.607412, 0.123080,
		29.592632, 35.543758, 29.474411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865829, 35.704826, 28.971718>,  <29.043278, 35.118568, 29.388254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865829, 35.704826, 28.971718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252188, 35.774132, 29.048691>,  <29.484003, 35.815716, 29.094873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252188, 35.774132, 29.048691>,  <28.865829, 35.704826, 28.971718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252188, 35.774132, 29.048691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100487, 0.434094, -0.895246,
		-0.238647, 0.884049, 0.401878,
		0.965893, 0.173264, 0.192431,
		29.541956, 35.826111, 29.106421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077686, 36.442921, 28.949831>,  <28.865829, 35.704826, 28.971718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077686, 36.442921, 28.949831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.399927, 36.227749, 28.850529>,  <29.593271, 36.098644, 28.790947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.399927, 36.227749, 28.850529>,  <29.077686, 36.442921, 28.949831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399927, 36.227749, 28.850529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051671, 0.481228, -0.875071,
		0.590198, 0.692132, 0.415474,
		0.805603, -0.537934, -0.248256,
		29.641607, 36.066368, 28.776052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521048, 36.920101, 28.700195>,  <29.077686, 36.442921, 28.949831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521048, 36.920101, 28.700195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.627773, 36.564575, 28.551159>,  <29.691809, 36.351261, 28.461737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.627773, 36.564575, 28.551159>,  <29.521048, 36.920101, 28.700195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627773, 36.564575, 28.551159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140881, 0.418425, -0.897259,
		0.953395, 0.186911, 0.236858,
		0.266815, -0.888811, -0.372592,
		29.707817, 36.297932, 28.439381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.082386, 32.154743, 44.759140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.944588, 31.786768, 44.684265>,  <41.861908, 31.565983, 44.639339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.944588, 31.786768, 44.684265>,  <42.082386, 32.154743, 44.759140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944588, 31.786768, 44.684265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137559, -0.147771, 0.979408,
		-0.928654, 0.363152, -0.075639,
		-0.344497, -0.919937, -0.187183,
		41.841240, 31.510786, 44.628109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523960, 32.052307, 45.137012>,  <42.082386, 32.154743, 44.759140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523960, 32.052307, 45.137012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.642715, 31.679426, 45.054207>,  <41.713970, 31.455698, 45.004524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.642715, 31.679426, 45.054207>,  <41.523960, 32.052307, 45.137012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642715, 31.679426, 45.054207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159914, -0.262266, 0.951653,
		-0.941427, -0.249429, -0.226936,
		0.296887, -0.932202, -0.207018,
		41.731781, 31.399765, 44.992100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024181, 31.726219, 45.516754>,  <41.523960, 32.052307, 45.137012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024181, 31.726219, 45.516754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.296089, 31.440254, 45.451260>,  <41.459236, 31.268675, 45.411961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.296089, 31.440254, 45.451260>,  <41.024181, 31.726219, 45.516754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296089, 31.440254, 45.451260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074054, -0.289019, 0.954455,
		-0.729674, -0.636687, -0.249409,
		0.679773, -0.714911, -0.163741,
		41.500023, 31.225780, 45.402138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804260, 31.133825, 45.837223>,  <41.024181, 31.726219, 45.516754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804260, 31.133825, 45.837223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.188961, 31.041258, 45.778595>,  <41.419781, 30.985718, 45.743420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.188961, 31.041258, 45.778595>,  <40.804260, 31.133825, 45.837223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188961, 31.041258, 45.778595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043022, -0.400813, 0.915149,
		-0.270527, -0.886451, -0.375526,
		0.961751, -0.231416, -0.146568,
		41.477486, 30.971832, 45.734623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828960, 30.468689, 46.110497>,  <40.804260, 31.133825, 45.837223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828960, 30.468689, 46.110497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.207207, 30.598272, 46.098793>,  <41.434155, 30.676022, 46.091770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.207207, 30.598272, 46.098793>,  <40.828960, 30.468689, 46.110497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207207, 30.598272, 46.098793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238765, -0.630208, 0.738802,
		0.220900, -0.705612, -0.673287,
		0.945619, 0.323958, -0.029262,
		41.490891, 30.695459, 46.090015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370495, 29.919878, 46.065590>,  <40.828960, 30.468689, 46.110497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370495, 29.919878, 46.065590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.582058, 30.228785, 46.206367>,  <41.708996, 30.414129, 46.290833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.582058, 30.228785, 46.206367>,  <41.370495, 29.919878, 46.065590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582058, 30.228785, 46.206367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276427, -0.548839, 0.788900,
		0.802400, -0.319969, -0.503760,
		0.528907, 0.772267, 0.351940,
		41.740730, 30.460464, 46.311951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100513, 29.744246, 46.274101>,  <41.370495, 29.919878, 46.065590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100513, 29.744246, 46.274101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.033718, 30.077353, 46.485237>,  <41.993641, 30.277216, 46.611919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.033718, 30.077353, 46.485237>,  <42.100513, 29.744246, 46.274101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033718, 30.077353, 46.485237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461643, -0.407011, 0.788180,
		0.871207, 0.375289, -0.316476,
		-0.166986, 0.832766, 0.527841,
		41.983624, 30.327183, 46.643589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739449, 29.899841, 46.546200>,  <42.100513, 29.744246, 46.274101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739449, 29.899841, 46.546200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.462555, 30.062208, 46.784878>,  <42.296421, 30.159628, 46.928085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.462555, 30.062208, 46.784878>,  <42.739449, 29.899841, 46.546200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462555, 30.062208, 46.784878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453274, -0.398840, 0.797164,
		0.561570, 0.822288, 0.092097,
		-0.692230, 0.405918, 0.596698,
		42.254887, 30.183983, 46.963886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065781, 30.212479, 47.076595>,  <42.739449, 29.899841, 46.546200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065781, 30.212479, 47.076595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.696964, 30.134565, 47.210403>,  <42.475674, 30.087818, 47.290688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.696964, 30.134565, 47.210403>,  <43.065781, 30.212479, 47.076595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696964, 30.134565, 47.210403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385755, -0.390485, 0.835892,
		-0.032192, 0.899768, 0.435180,
		-0.922040, -0.194781, 0.334519,
		42.420353, 30.076132, 47.310760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205921, 29.876579, 47.698948>,  <43.065781, 30.212479, 47.076595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205921, 29.876579, 47.698948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.812153, 29.821478, 47.742657>,  <42.575893, 29.788416, 47.768883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.812153, 29.821478, 47.742657>,  <43.205921, 29.876579, 47.698948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812153, 29.821478, 47.742657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174478, -0.688439, 0.703995,
		-0.021754, 0.712092, 0.701749,
		-0.984421, -0.137754, 0.109269,
		42.516827, 29.780151, 47.775436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028374, 29.928371, 48.377132>,  <43.205921, 29.876579, 47.698948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028374, 29.928371, 48.377132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.738693, 29.684345, 48.248535>,  <42.564884, 29.537930, 48.171375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.738693, 29.684345, 48.248535>,  <43.028374, 29.928371, 48.377132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738693, 29.684345, 48.248535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182350, -0.619030, 0.763905,
		-0.665046, 0.494594, 0.559545,
		-0.724198, -0.610065, -0.321494,
		42.521435, 29.501326, 48.152088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743904, 29.645084, 49.005478>,  <43.028374, 29.928371, 48.377132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743904, 29.645084, 49.005478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.620857, 29.404747, 48.710358>,  <42.547028, 29.260544, 48.533283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.620857, 29.404747, 48.710358>,  <42.743904, 29.645084, 49.005478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620857, 29.404747, 48.710358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119350, -0.793647, 0.596557,
		-0.943994, 0.095457, 0.315853,
		-0.307621, -0.600843, -0.737805,
		42.528572, 29.224495, 48.489017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146065, 29.930536, 49.516754>,  <42.743904, 29.645084, 49.005478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146065, 29.930536, 49.516754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.458229, 30.175850, 49.565498>,  <43.645527, 30.323038, 49.594746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.458229, 30.175850, 49.565498>,  <43.146065, 29.930536, 49.516754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458229, 30.175850, 49.565498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503595, 0.500966, 0.703865,
		0.370617, -0.610671, 0.699803,
		0.780407, 0.613281, 0.121864,
		43.692352, 30.359835, 49.602058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884743, 30.225971, 50.133984>,  <43.146065, 29.930536, 49.516754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884743, 30.225971, 50.133984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.170307, 30.440025, 49.953339>,  <43.341648, 30.568457, 49.844952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.170307, 30.440025, 49.953339>,  <42.884743, 30.225971, 50.133984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170307, 30.440025, 49.953339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493004, 0.842135, 0.218531,
		0.497265, 0.066637, 0.865036,
		0.713915, 0.535133, -0.451617,
		43.384483, 30.600565, 49.817852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335262, 30.300564, 49.594872>,  <42.884743, 30.225971, 50.133984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335262, 30.300564, 49.594872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.995564, 30.338985, 49.802547>,  <41.791744, 30.362038, 49.927155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.995564, 30.338985, 49.802547>,  <42.335262, 30.300564, 49.594872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995564, 30.338985, 49.802547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203392, 0.847919, -0.489556,
		-0.487255, -0.521352, -0.700553,
		-0.849243, 0.096052, 0.519192,
		41.740791, 30.367802, 49.958305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747520, 30.493286, 49.077175>,  <42.335262, 30.300564, 49.594872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747520, 30.493286, 49.077175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.625370, 30.628386, 49.433304>,  <41.552082, 30.709444, 49.646980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.625370, 30.628386, 49.433304>,  <41.747520, 30.493286, 49.077175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625370, 30.628386, 49.433304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244132, 0.875965, -0.416035,
		-0.920406, -0.344402, -0.185040,
		-0.305372, 0.337747, 0.890323,
		41.533760, 30.729710, 49.700401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127110, 30.794121, 48.911419>,  <41.747520, 30.493286, 49.077175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127110, 30.794121, 48.911419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.234135, 30.954561, 49.261852>,  <41.298347, 31.050825, 49.472115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.234135, 30.954561, 49.261852>,  <41.127110, 30.794121, 48.911419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234135, 30.954561, 49.261852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236145, 0.908804, -0.343962,
		-0.934156, -0.114854, 0.337877,
		0.267559, 0.401102, 0.876087,
		41.314404, 31.074892, 49.524677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595108, 31.253229, 49.111881>,  <41.127110, 30.794121, 48.911419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595108, 31.253229, 49.111881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.932232, 31.400499, 49.268909>,  <41.134506, 31.488861, 49.363129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.932232, 31.400499, 49.268909>,  <40.595108, 31.253229, 49.111881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932232, 31.400499, 49.268909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194513, 0.888477, -0.415660,
		-0.501829, 0.273962, 0.820434,
		0.842812, 0.368175, 0.392574,
		41.185074, 31.510952, 49.386681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527431, 31.901802, 49.217396>,  <40.595108, 31.253229, 49.111881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527431, 31.901802, 49.217396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.925602, 31.916353, 49.252731>,  <41.164505, 31.925083, 49.273933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.925602, 31.916353, 49.252731>,  <40.527431, 31.901802, 49.217396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925602, 31.916353, 49.252731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009791, 0.880964, -0.473083,
		-0.095033, 0.471784, 0.876578,
		0.995426, 0.036376, 0.088340,
		41.224228, 31.927265, 49.279232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704899, 32.686871, 49.255337>,  <40.527431, 31.901802, 49.217396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704899, 32.686871, 49.255337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.056580, 32.507946, 49.189709>,  <41.267590, 32.400593, 49.150333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.056580, 32.507946, 49.189709>,  <40.704899, 32.686871, 49.255337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056580, 32.507946, 49.189709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204742, 0.665644, -0.717634,
		0.430216, 0.597353, 0.676819,
		0.879201, -0.447311, -0.164068,
		41.320339, 32.373753, 49.140488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149021, 33.210476, 49.183441>,  <40.704899, 32.686871, 49.255337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149021, 33.210476, 49.183441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.349266, 32.911747, 49.008327>,  <41.469414, 32.732510, 48.903259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.349266, 32.911747, 49.008327>,  <41.149021, 33.210476, 49.183441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349266, 32.911747, 49.008327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357498, 0.638927, -0.681152,
		0.788407, 0.184485, 0.586839,
		0.500609, -0.746818, -0.437781,
		41.499451, 32.687702, 48.876991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742504, 33.605145, 48.906166>,  <41.149021, 33.210476, 49.183441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742504, 33.605145, 48.906166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.736423, 33.248394, 48.725357>,  <41.732777, 33.034344, 48.616871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.736423, 33.248394, 48.725357>,  <41.742504, 33.605145, 48.906166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736423, 33.248394, 48.725357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304733, 0.426433, -0.851641,
		0.952316, -0.150689, 0.265304,
		-0.015199, -0.891879, -0.452019,
		41.731865, 32.980831, 48.589752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375938, 33.602222, 48.526459>,  <41.742504, 33.605145, 48.906166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375938, 33.602222, 48.526459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.091198, 33.371586, 48.366051>,  <41.920353, 33.233204, 48.269806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.091198, 33.371586, 48.366051>,  <42.375938, 33.602222, 48.526459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091198, 33.371586, 48.366051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083081, 0.497848, -0.863275,
		0.697404, -0.647837, -0.306488,
		-0.711847, -0.576588, -0.401024,
		41.877644, 33.198608, 48.245743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693657, 33.400558, 47.913216>,  <42.375938, 33.602222, 48.526459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693657, 33.400558, 47.913216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.303688, 33.342228, 47.845974>,  <42.069706, 33.307232, 47.805630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.303688, 33.342228, 47.845974>,  <42.693657, 33.400558, 47.913216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303688, 33.342228, 47.845974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089445, 0.434931, -0.896010,
		0.203772, -0.888578, -0.410982,
		-0.974924, -0.145821, -0.168105,
		42.011211, 33.298481, 47.795544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625237, 33.115147, 47.173111>,  <42.693657, 33.400558, 47.913216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625237, 33.115147, 47.173111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.266090, 33.263542, 47.267941>,  <42.050602, 33.352581, 47.324837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.266090, 33.263542, 47.267941>,  <42.625237, 33.115147, 47.173111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266090, 33.263542, 47.267941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030995, 0.483866, -0.874593,
		-0.439179, -0.792614, -0.422948,
		-0.897865, 0.370993, 0.237071,
		41.996731, 33.374840, 47.339062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184441, 32.976379, 46.601860>,  <42.625237, 33.115147, 47.173111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184441, 32.976379, 46.601860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.001923, 33.271561, 46.800743>,  <41.892410, 33.448669, 46.920074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.001923, 33.271561, 46.800743>,  <42.184441, 32.976379, 46.601860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001923, 33.271561, 46.800743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236886, 0.437866, -0.867271,
		-0.857718, -0.513513, -0.024985,
		-0.456295, 0.737955, 0.497209,
		41.865032, 33.492947, 46.949905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610573, 33.046635, 46.198151>,  <42.184441, 32.976379, 46.601860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610573, 33.046635, 46.198151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.631313, 33.377464, 46.422028>,  <41.643757, 33.575962, 46.556355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.631313, 33.377464, 46.422028>,  <41.610573, 33.046635, 46.198151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631313, 33.377464, 46.422028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215540, 0.556508, -0.802398,
		-0.975118, -0.079031, 0.207123,
		0.051851, 0.827075, 0.559695,
		41.646870, 33.625587, 46.589935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954212, 33.400372, 46.247478>,  <41.610573, 33.046635, 46.198151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954212, 33.400372, 46.247478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.215179, 33.694721, 46.319962>,  <41.371758, 33.871330, 46.363449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.215179, 33.694721, 46.319962>,  <40.954212, 33.400372, 46.247478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215179, 33.694721, 46.319962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248973, 0.433944, -0.865855,
		-0.715797, 0.519783, 0.466326,
		0.652417, 0.735879, 0.181204,
		41.410904, 33.915485, 46.374321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127991, 33.492718, 46.393684>,  <40.954212, 33.400372, 46.247478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127991, 33.492718, 46.393684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.801159, 33.305069, 46.259640>,  <39.605061, 33.192478, 46.179214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.801159, 33.305069, 46.259640>,  <40.127991, 33.492718, 46.393684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801159, 33.305069, 46.259640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245178, -0.808832, 0.534490,
		-0.521792, 0.354559, 0.775900,
		-0.817080, -0.469126, -0.335112,
		39.556034, 33.164330, 46.159107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770588, 33.279335, 46.960640>,  <40.127991, 33.492718, 46.393684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770588, 33.279335, 46.960640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.641628, 33.028805, 46.676731>,  <39.564251, 32.878487, 46.506386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.641628, 33.028805, 46.676731>,  <39.770588, 33.279335, 46.960640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641628, 33.028805, 46.676731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079128, -0.765015, 0.639133,
		-0.943290, 0.149895, 0.296202,
		-0.322402, -0.626325, -0.709770,
		39.544907, 32.840908, 46.463799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140896, 32.915634, 47.156780>,  <39.770588, 33.279335, 46.960640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140896, 32.915634, 47.156780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.315662, 32.685795, 46.879959>,  <39.420525, 32.547894, 46.713867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.315662, 32.685795, 46.879959>,  <39.140896, 32.915634, 47.156780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315662, 32.685795, 46.879959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087743, -0.792934, 0.602957,
		-0.895212, -0.202719, -0.396863,
		0.436917, -0.574596, -0.692057,
		39.446739, 32.513416, 46.672340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746128, 32.373318, 47.044582>,  <39.140896, 32.915634, 47.156780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746128, 32.373318, 47.044582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.080967, 32.207645, 46.901627>,  <39.281868, 32.108242, 46.815853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.080967, 32.207645, 46.901627>,  <38.746128, 32.373318, 47.044582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080967, 32.207645, 46.901627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180509, -0.825825, 0.534256,
		-0.516419, -0.382711, -0.766057,
		0.837095, -0.414180, -0.357389,
		39.332096, 32.083393, 46.794411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612823, 31.678837, 46.993397>,  <38.746128, 32.373318, 47.044582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612823, 31.678837, 46.993397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.008415, 31.671158, 46.934669>,  <39.245770, 31.666552, 46.899433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.008415, 31.671158, 46.934669>,  <38.612823, 31.678837, 46.993397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008415, 31.671158, 46.934669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067019, -0.826145, 0.559458,
		-0.132034, -0.563131, -0.815751,
		0.988977, -0.019196, -0.146820,
		39.305107, 31.665400, 46.890625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861553, 30.980721, 46.719452>,  <38.612823, 31.678837, 46.993397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861553, 30.980721, 46.719452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.145412, 31.190445, 46.907707>,  <39.315727, 31.316280, 47.020660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.145412, 31.190445, 46.907707>,  <38.861553, 30.980721, 46.719452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145412, 31.190445, 46.907707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053900, -0.706432, 0.705726,
		0.702495, -0.475448, -0.529576,
		0.709645, 0.524313, 0.470637,
		39.358307, 31.347738, 47.048897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274746, 30.454405, 46.904202>,  <38.861553, 30.980721, 46.719452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274746, 30.454405, 46.904202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.388874, 30.755890, 47.141018>,  <39.457352, 30.936781, 47.283108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.388874, 30.755890, 47.141018>,  <39.274746, 30.454405, 46.904202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388874, 30.755890, 47.141018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114453, -0.640089, 0.759728,
		0.951574, -0.149006, -0.268895,
		0.285321, 0.753713, 0.592037,
		39.474472, 30.982004, 47.318630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549953, 29.771347, 46.725529>,  <39.274746, 30.454405, 46.904202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549953, 29.771347, 46.725529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.329460, 29.483107, 46.557301>,  <39.197166, 29.310162, 46.456364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.329460, 29.483107, 46.557301>,  <39.549953, 29.771347, 46.725529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329460, 29.483107, 46.557301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100433, 0.443095, -0.890831,
		0.828287, -0.533292, -0.171875,
		-0.551230, -0.720602, -0.420570,
		39.164093, 29.266926, 46.431129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854801, 29.736244, 45.984558>,  <39.549953, 29.771347, 46.725529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854801, 29.736244, 45.984558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.494720, 29.562183, 45.977970>,  <39.278671, 29.457747, 45.974018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.494720, 29.562183, 45.977970>,  <39.854801, 29.736244, 45.984558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494720, 29.562183, 45.977970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068863, 0.179590, -0.981328,
		0.429985, -0.882264, -0.191634,
		-0.900206, -0.435152, -0.016466,
		39.224659, 29.431639, 45.973030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761677, 29.324184, 45.351452>,  <39.854801, 29.736244, 45.984558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761677, 29.324184, 45.351452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.391663, 29.415823, 45.472664>,  <39.169655, 29.470806, 45.545391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.391663, 29.415823, 45.472664>,  <39.761677, 29.324184, 45.351452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391663, 29.415823, 45.472664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191764, 0.406984, -0.893079,
		-0.327930, -0.884239, -0.332541,
		-0.925034, 0.229098, 0.303028,
		39.114151, 29.484552, 45.563572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263779, 28.964209, 44.845768>,  <39.761677, 29.324184, 45.351452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263779, 28.964209, 44.845768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.059212, 29.265585, 45.011070>,  <38.936474, 29.446411, 45.110252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.059212, 29.265585, 45.011070>,  <39.263779, 28.964209, 44.845768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059212, 29.265585, 45.011070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258498, 0.323749, -0.910146,
		-0.819533, -0.572287, 0.029194,
		-0.511414, 0.753441, 0.413258,
		38.905788, 29.491617, 45.135048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705692, 29.062885, 44.355492>,  <39.263779, 28.964209, 44.845768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705692, 29.062885, 44.355492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.662792, 29.385302, 44.588318>,  <38.637051, 29.578751, 44.728012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.662792, 29.385302, 44.588318>,  <38.705692, 29.062885, 44.355492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662792, 29.385302, 44.588318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319102, 0.526559, -0.787977,
		-0.941631, -0.270252, 0.200733,
		-0.107254, 0.806039, 0.582063,
		38.630615, 29.627113, 44.762936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085533, 29.412260, 44.151695>,  <38.705692, 29.062885, 44.355492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085533, 29.412260, 44.151695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.311646, 29.699467, 44.314133>,  <38.447311, 29.871790, 44.411594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.311646, 29.699467, 44.314133>,  <38.085533, 29.412260, 44.151695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311646, 29.699467, 44.314133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134492, 0.565933, -0.813408,
		-0.813863, 0.405184, 0.416476,
		0.565277, 0.718015, 0.406098,
		38.481228, 29.914871, 44.435963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642387, 29.955404, 44.099674>,  <38.085533, 29.412260, 44.151695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642387, 29.955404, 44.099674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.007164, 30.115866, 44.134151>,  <38.226032, 30.212143, 44.154839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.007164, 30.115866, 44.134151>,  <37.642387, 29.955404, 44.099674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007164, 30.115866, 44.134151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175712, 0.571655, -0.801459,
		-0.370783, 0.715741, 0.591806,
		0.911946, 0.401155, 0.086195,
		38.280746, 30.236212, 44.160011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.451180, 26.403236, 46.829807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.681202, 26.730417, 46.823273>,  <41.819214, 26.926725, 46.819351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.681202, 26.730417, 46.823273>,  <41.451180, 26.403236, 46.829807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681202, 26.730417, 46.823273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166890, 0.097741, -0.981119,
		-0.800912, 0.566922, 0.192715,
		0.575054, 0.817952, -0.016332,
		41.853718, 26.975803, 46.818375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128853, 26.841982, 46.456299>,  <41.451180, 26.403236, 46.829807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128853, 26.841982, 46.456299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.496418, 26.997889, 46.432041>,  <41.716957, 27.091433, 46.417484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.496418, 26.997889, 46.432041>,  <41.128853, 26.841982, 46.456299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496418, 26.997889, 46.432041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104022, 0.091141, -0.990390,
		-0.380492, 0.916393, 0.124295,
		0.918915, 0.389765, -0.060647,
		41.772091, 27.114819, 46.413849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033905, 27.266188, 45.960770>,  <41.128853, 26.841982, 46.456299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033905, 27.266188, 45.960770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.429401, 27.303923, 46.007240>,  <41.666698, 27.326565, 46.035122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.429401, 27.303923, 46.007240>,  <41.033905, 27.266188, 45.960770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429401, 27.303923, 46.007240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083190, 0.298877, -0.950659,
		-0.124408, 0.949617, 0.287663,
		0.988738, 0.094338, 0.116181,
		41.726021, 27.332224, 46.042095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127060, 27.870195, 45.531437>,  <41.033905, 27.266188, 45.960770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127060, 27.870195, 45.531437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.476391, 27.681204, 45.578861>,  <41.685989, 27.567808, 45.607315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.476391, 27.681204, 45.578861>,  <41.127060, 27.870195, 45.531437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476391, 27.681204, 45.578861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221631, 0.168661, -0.960434,
		0.433791, 0.865052, 0.252013,
		0.873330, -0.472481, 0.118559,
		41.738388, 27.539459, 45.614429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577812, 28.425230, 45.324337>,  <41.127060, 27.870195, 45.531437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577812, 28.425230, 45.324337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.715702, 28.052996, 45.275066>,  <41.798435, 27.829655, 45.245502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.715702, 28.052996, 45.275066>,  <41.577812, 28.425230, 45.324337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715702, 28.052996, 45.275066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038178, 0.117212, -0.992373,
		0.937926, 0.346800, 0.004878,
		0.344727, -0.930586, -0.123176,
		41.819118, 27.773819, 45.238113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949623, 28.450102, 44.614639>,  <41.577812, 28.425230, 45.324337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949623, 28.450102, 44.614639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.905499, 28.058447, 44.682903>,  <41.879025, 27.823454, 44.723862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.905499, 28.058447, 44.682903>,  <41.949623, 28.450102, 44.614639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905499, 28.058447, 44.682903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080230, -0.179916, -0.980405,
		0.990653, -0.094459, 0.098403,
		-0.110313, -0.979136, 0.170656,
		41.872406, 27.764706, 44.734100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427895, 28.256828, 44.150673>,  <41.949623, 28.450102, 44.614639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427895, 28.256828, 44.150673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.187344, 27.948322, 44.234097>,  <42.043015, 27.763218, 44.284153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.187344, 27.948322, 44.234097>,  <42.427895, 28.256828, 44.150673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187344, 27.948322, 44.234097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029354, -0.239533, -0.970444,
		0.798429, -0.589722, 0.121409,
		-0.601373, -0.771267, 0.208561,
		42.006931, 27.716942, 44.296665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722836, 27.668625, 44.027378>,  <42.427895, 28.256828, 44.150673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722836, 27.668625, 44.027378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.330204, 27.619596, 43.968761>,  <42.094624, 27.590179, 43.933590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.330204, 27.619596, 43.968761>,  <42.722836, 27.668625, 44.027378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330204, 27.619596, 43.968761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146906, 0.006147, -0.989131,
		0.122143, -0.992440, 0.011973,
		-0.981580, -0.122575, -0.146546,
		42.035728, 27.582825, 43.924797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705673, 27.181787, 43.442577>,  <42.722836, 27.668625, 44.027378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705673, 27.181787, 43.442577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.333336, 27.318491, 43.494312>,  <42.109932, 27.400513, 43.525352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.333336, 27.318491, 43.494312>,  <42.705673, 27.181787, 43.442577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333336, 27.318491, 43.494312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079933, 0.154942, -0.984685,
		-0.356565, -0.926927, -0.116909,
		-0.930845, 0.341760, 0.129339,
		42.054081, 27.421019, 43.533115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268635, 26.752035, 42.974194>,  <42.705673, 27.181787, 43.442577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268635, 26.752035, 42.974194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.088318, 27.095636, 43.071274>,  <41.980129, 27.301798, 43.129520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.088318, 27.095636, 43.071274>,  <42.268635, 26.752035, 42.974194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088318, 27.095636, 43.071274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131052, 0.205256, -0.969895,
		-0.882958, -0.469023, 0.020047,
		-0.450788, 0.859004, 0.242699,
		41.953083, 27.353338, 43.144085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688538, 26.752165, 42.634060>,  <42.268635, 26.752035, 42.974194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688538, 26.752165, 42.634060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.748539, 27.141497, 42.703491>,  <41.784538, 27.375095, 42.745148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.748539, 27.141497, 42.703491>,  <41.688538, 26.752165, 42.634060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748539, 27.141497, 42.703491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101680, 0.189818, -0.976540,
		-0.983444, 0.128831, 0.127441,
		0.149999, 0.973330, 0.173576,
		41.793537, 27.433496, 42.755566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180767, 27.075880, 42.143414>,  <41.688538, 26.752165, 42.634060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180767, 27.075880, 42.143414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.456543, 27.344618, 42.251713>,  <41.622009, 27.505859, 42.316692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.456543, 27.344618, 42.251713>,  <41.180767, 27.075880, 42.143414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456543, 27.344618, 42.251713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033430, 0.402894, -0.914636,
		-0.723574, 0.621533, 0.300230,
		0.689437, 0.671843, 0.270746,
		41.663376, 27.546171, 42.332935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448467, 27.375998, 42.212337>,  <41.180767, 27.075880, 42.143414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448467, 27.375998, 42.212337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.175301, 27.124096, 42.064266>,  <40.011402, 26.972954, 41.975422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.175301, 27.124096, 42.064266>,  <40.448467, 27.375998, 42.212337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175301, 27.124096, 42.064266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187727, -0.338439, 0.922072,
		-0.705964, 0.699191, 0.112903,
		-0.682915, -0.629755, -0.370183,
		39.970425, 26.935169, 41.953213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897068, 27.472057, 42.661598>,  <40.448467, 27.375998, 42.212337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897068, 27.472057, 42.661598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.850533, 27.128284, 42.462463>,  <39.822613, 26.922022, 42.342983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.850533, 27.128284, 42.462463>,  <39.897068, 27.472057, 42.661598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850533, 27.128284, 42.462463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025565, -0.498486, 0.866521,
		-0.992881, 0.113534, 0.036020,
		-0.116335, -0.859431, -0.497840,
		39.815632, 26.870455, 42.313110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240414, 27.142857, 42.992519>,  <39.897068, 27.472057, 42.661598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240414, 27.142857, 42.992519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.486244, 26.885147, 42.810436>,  <39.633743, 26.730522, 42.701187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.486244, 26.885147, 42.810436>,  <39.240414, 27.142857, 42.992519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486244, 26.885147, 42.810436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129066, -0.651390, 0.747685,
		-0.778232, -0.400753, -0.483479,
		0.614570, -0.644273, -0.455209,
		39.670616, 26.691866, 42.673874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800785, 26.498903, 42.993538>,  <39.240414, 27.142857, 42.992519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800785, 26.498903, 42.993538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.184414, 26.396749, 42.944603>,  <39.414589, 26.335457, 42.915241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.184414, 26.396749, 42.944603>,  <38.800785, 26.498903, 42.993538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184414, 26.396749, 42.944603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150360, -0.825362, 0.544214,
		-0.239960, -0.503543, -0.829978,
		0.959068, -0.255386, -0.122341,
		39.472134, 26.320133, 42.907902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778122, 25.839075, 43.239574>,  <38.800785, 26.498903, 42.993538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778122, 25.839075, 43.239574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.169823, 25.919825, 43.232403>,  <39.404842, 25.968273, 43.228100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.169823, 25.919825, 43.232403>,  <38.778122, 25.839075, 43.239574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169823, 25.919825, 43.232403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149765, -0.661189, 0.735119,
		0.136544, -0.722549, -0.677701,
		0.979247, 0.201872, -0.017932,
		39.463596, 25.980387, 43.227024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214897, 25.186722, 43.225140>,  <38.778122, 25.839075, 43.239574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214897, 25.186722, 43.225140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.449841, 25.476482, 43.369507>,  <39.590805, 25.650339, 43.456127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.449841, 25.476482, 43.369507>,  <39.214897, 25.186722, 43.225140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449841, 25.476482, 43.369507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192938, -0.558412, 0.806816,
		0.785996, -0.404253, -0.467750,
		0.587355, 0.724400, 0.360914,
		39.626045, 25.693802, 43.477779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547215, 24.747238, 43.553360>,  <39.214897, 25.186722, 43.225140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547215, 24.747238, 43.553360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.627270, 25.112762, 43.694721>,  <39.675304, 25.332077, 43.779537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.627270, 25.112762, 43.694721>,  <39.547215, 24.747238, 43.553360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627270, 25.112762, 43.694721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138846, -0.383517, 0.913037,
		0.969879, -0.133667, -0.203636,
		0.200140, 0.913810, 0.353406,
		39.687313, 25.386906, 43.800743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067169, 24.627054, 44.038452>,  <39.547215, 24.747238, 43.553360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067169, 24.627054, 44.038452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.917561, 24.984274, 44.138508>,  <39.827797, 25.198605, 44.198544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.917561, 24.984274, 44.138508>,  <40.067169, 24.627054, 44.038452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917561, 24.984274, 44.138508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072934, -0.240560, 0.967890,
		0.924547, 0.380257, 0.024841,
		-0.374023, 0.893048, 0.250143,
		39.805355, 25.252188, 44.213551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487823, 24.796289, 44.511166>,  <40.067169, 24.627054, 44.038452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487823, 24.796289, 44.511166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.164257, 25.021328, 44.579453>,  <39.970119, 25.156351, 44.620426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.164257, 25.021328, 44.579453>,  <40.487823, 24.796289, 44.511166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164257, 25.021328, 44.579453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111919, -0.137713, 0.984129,
		0.577179, 0.815180, 0.048432,
		-0.808912, 0.562598, 0.170720,
		39.921585, 25.190107, 44.630669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811138, 25.179598, 45.068527>,  <40.487823, 24.796289, 44.511166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811138, 25.179598, 45.068527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.415688, 25.236773, 45.087265>,  <40.178417, 25.271078, 45.098507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.415688, 25.236773, 45.087265>,  <40.811138, 25.179598, 45.068527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415688, 25.236773, 45.087265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049143, 0.012600, 0.998712,
		0.142165, 0.989651, -0.019482,
		-0.988622, 0.142939, 0.046843,
		40.119102, 25.279654, 45.101318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653332, 25.811340, 45.333832>,  <40.811138, 25.179598, 45.068527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653332, 25.811340, 45.333832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.338524, 25.574091, 45.401718>,  <40.149639, 25.431742, 45.442451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.338524, 25.574091, 45.401718>,  <40.653332, 25.811340, 45.333832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338524, 25.574091, 45.401718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017919, 0.296962, 0.954721,
		-0.616665, 0.748345, -0.244344,
		-0.787021, -0.593122, 0.169716,
		40.102417, 25.396154, 45.452633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327164, 26.138435, 45.988350>,  <40.653332, 25.811340, 45.333832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327164, 26.138435, 45.988350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.130276, 25.790281, 45.983391>,  <40.012142, 25.581388, 45.980415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.130276, 25.790281, 45.983391>,  <40.327164, 26.138435, 45.988350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130276, 25.790281, 45.983391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143444, 0.067052, 0.987384,
		-0.858572, 0.487787, -0.157855,
		-0.492218, -0.870384, -0.012402,
		39.982609, 25.529165, 45.979671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589760, 26.260899, 46.189087>,  <40.327164, 26.138435, 45.988350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589760, 26.260899, 46.189087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.683456, 25.884005, 46.284855>,  <39.739674, 25.657867, 46.342316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.683456, 25.884005, 46.284855>,  <39.589760, 26.260899, 46.189087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683456, 25.884005, 46.284855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357023, 0.145687, 0.922665,
		-0.904248, -0.301608, -0.302273,
		0.234245, -0.942236, 0.239418,
		39.753731, 25.601334, 46.356682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985027, 26.106472, 46.600418>,  <39.589760, 26.260899, 46.189087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985027, 26.106472, 46.600418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.259380, 25.826176, 46.678932>,  <39.423992, 25.657999, 46.726040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.259380, 25.826176, 46.678932>,  <38.985027, 26.106472, 46.600418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259380, 25.826176, 46.678932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296641, -0.022929, 0.954714,
		-0.664506, -0.713048, -0.223595,
		0.685883, -0.700740, 0.196283,
		39.465145, 25.615953, 46.737816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125114, 26.447098, 47.299938>,  <38.985027, 26.106472, 46.600418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125114, 26.447098, 47.299938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.968353, 26.665857, 47.595860>,  <38.874294, 26.797113, 47.773415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.968353, 26.665857, 47.595860>,  <39.125114, 26.447098, 47.299938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968353, 26.665857, 47.595860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004051, 0.803099, -0.595832,
		-0.919997, -0.236507, -0.312523,
		-0.391905, 0.546897, 0.739807,
		38.850780, 26.829926, 47.817802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520588, 26.810087, 47.046581>,  <39.125114, 26.447098, 47.299938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520588, 26.810087, 47.046581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.620911, 27.026352, 47.367775>,  <38.681107, 27.156111, 47.560490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.620911, 27.026352, 47.367775>,  <38.520588, 26.810087, 47.046581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620911, 27.026352, 47.367775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143029, 0.841087, -0.521646,
		-0.957411, 0.015985, 0.288284,
		0.250810, 0.540663, 0.802980,
		38.696156, 27.188551, 47.608669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974728, 27.250105, 47.126591>,  <38.520588, 26.810087, 47.046581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974728, 27.250105, 47.126591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.302521, 27.413900, 47.286972>,  <38.499195, 27.512178, 47.383202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.302521, 27.413900, 47.286972>,  <37.974728, 27.250105, 47.126591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302521, 27.413900, 47.286972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148933, 0.827749, -0.540971,
		-0.553414, 0.383601, 0.739313,
		0.819483, 0.409489, 0.400957,
		38.548367, 27.536747, 47.407261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803730, 27.948198, 47.290867>,  <37.974728, 27.250105, 47.126591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803730, 27.948198, 47.290867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.202900, 27.961233, 47.313057>,  <38.442402, 27.969055, 47.326370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.202900, 27.961233, 47.313057>,  <37.803730, 27.948198, 47.290867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202900, 27.961233, 47.313057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004455, 0.895152, -0.445738,
		-0.064181, 0.444568, 0.893443,
		0.997928, 0.032588, 0.055472,
		38.502277, 27.971010, 47.329697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978111, 28.594435, 47.309795>,  <37.803730, 27.948198, 47.290867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978111, 28.594435, 47.309795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.340664, 28.443300, 47.234200>,  <38.558193, 28.352619, 47.188843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.340664, 28.443300, 47.234200>,  <37.978111, 28.594435, 47.309795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340664, 28.443300, 47.234200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245066, 0.834628, -0.493294,
		0.344120, 0.400796, 0.849084,
		0.906380, -0.377834, -0.188990,
		38.612579, 28.329950, 47.177502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460705, 29.112591, 47.558098>,  <37.978111, 28.594435, 47.309795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460705, 29.112591, 47.558098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.615967, 28.880816, 47.271439>,  <38.709126, 28.741751, 47.099442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.615967, 28.880816, 47.271439>,  <38.460705, 29.112591, 47.558098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615967, 28.880816, 47.271439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300268, 0.814702, -0.496084,
		0.871307, -0.022630, 0.490216,
		0.388154, -0.579438, -0.716651,
		38.732414, 28.706984, 47.056442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020103, 29.551250, 47.229256>,  <38.460705, 29.112591, 47.558098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020103, 29.551250, 47.229256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.005508, 29.234083, 46.985962>,  <38.996750, 29.043783, 46.839985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.005508, 29.234083, 46.985962>,  <39.020103, 29.551250, 47.229256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005508, 29.234083, 46.985962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253379, 0.581412, -0.773149,
		0.966679, -0.182324, 0.179695,
		-0.036487, -0.792918, -0.608235,
		38.994564, 28.996208, 46.803490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565125, 30.045938, 47.402534>,  <39.020103, 29.551250, 47.229256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565125, 30.045938, 47.402534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.528465, 30.415363, 47.551468>,  <39.506470, 30.637018, 47.640827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.528465, 30.415363, 47.551468>,  <39.565125, 30.045938, 47.402534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528465, 30.415363, 47.551468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104770, -0.380777, 0.918712,
		0.990264, 0.045192, 0.131661,
		-0.091651, 0.923562, 0.372335,
		39.500969, 30.692432, 47.663170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245712, 30.245966, 47.850590>,  <39.565125, 30.045938, 47.402534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245712, 30.245966, 47.850590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.928036, 30.456543, 47.971996>,  <39.737431, 30.582890, 48.044842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.928036, 30.456543, 47.971996>,  <40.245712, 30.245966, 47.850590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928036, 30.456543, 47.971996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053220, -0.437302, 0.897739,
		0.605335, 0.729128, 0.319283,
		-0.794190, 0.526441, 0.303518,
		39.689777, 30.614475, 48.063053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338799, 30.370750, 48.598240>,  <40.245712, 30.245966, 47.850590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338799, 30.370750, 48.598240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.955494, 30.477610, 48.557529>,  <39.725510, 30.541725, 48.533104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.955494, 30.477610, 48.557529>,  <40.338799, 30.370750, 48.598240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955494, 30.477610, 48.557529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201454, -0.378415, 0.903448,
		0.202839, 0.886247, 0.416440,
		-0.958265, 0.267148, -0.101781,
		39.668015, 30.557755, 48.526997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166664, 30.621428, 49.298172>,  <40.338799, 30.370750, 48.598240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166664, 30.621428, 49.298172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.842701, 30.514797, 49.089176>,  <39.648323, 30.450819, 48.963779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.842701, 30.514797, 49.089176>,  <40.166664, 30.621428, 49.298172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842701, 30.514797, 49.089176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377752, -0.444408, 0.812284,
		-0.448732, 0.855243, 0.259228,
		-0.809903, -0.266574, -0.522489,
		39.599731, 30.434826, 48.932430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700066, 30.846245, 49.772167>,  <40.166664, 30.621428, 49.298172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700066, 30.846245, 49.772167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.515656, 30.567968, 49.551815>,  <39.405010, 30.401003, 49.419605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.515656, 30.567968, 49.551815>,  <39.700066, 30.846245, 49.772167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515656, 30.567968, 49.551815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404983, -0.387417, 0.828189,
		-0.789582, 0.604916, -0.103132,
		-0.461030, -0.695690, -0.550879,
		39.377346, 30.359261, 49.386551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251652, 30.596657, 50.198475>,  <39.700066, 30.846245, 49.772167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251652, 30.596657, 50.198475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.205414, 30.307999, 49.925457>,  <39.177670, 30.134804, 49.761646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.205414, 30.307999, 49.925457>,  <39.251652, 30.596657, 50.198475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205414, 30.307999, 49.925457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364340, -0.608450, 0.705014,
		-0.924063, 0.330177, -0.192588,
		-0.115599, -0.721645, -0.682544,
		39.170734, 30.091505, 49.720695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544617, 30.405184, 50.129429>,  <39.251652, 30.596657, 50.198475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544617, 30.405184, 50.129429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.784630, 30.094067, 50.054592>,  <38.928638, 29.907396, 50.009689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.784630, 30.094067, 50.054592>,  <38.544617, 30.405184, 50.129429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784630, 30.094067, 50.054592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300694, -0.436000, 0.848226,
		-0.741314, -0.452705, -0.495491,
		0.600030, -0.777793, -0.187087,
		38.964638, 29.860729, 49.998466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280716, 29.980793, 50.542789>,  <38.544617, 30.405184, 50.129429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280716, 29.980793, 50.542789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.599445, 29.755793, 50.454552>,  <38.790684, 29.620792, 50.401608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.599445, 29.755793, 50.454552>,  <38.280716, 29.980793, 50.542789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599445, 29.755793, 50.454552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204186, -0.594308, 0.777886,
		-0.568660, -0.574799, -0.588415,
		0.796828, -0.562499, -0.220593,
		38.838493, 29.587042, 50.388374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078392, 29.272388, 50.593212>,  <38.280716, 29.980793, 50.542789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078392, 29.272388, 50.593212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.476933, 29.259777, 50.624947>,  <38.716057, 29.252211, 50.643990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.476933, 29.259777, 50.624947>,  <38.078392, 29.272388, 50.593212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476933, 29.259777, 50.624947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083015, -0.574825, 0.814054,
		0.019940, -0.817668, -0.575344,
		0.996349, -0.031529, 0.079341,
		38.775837, 29.250319, 50.648750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.974602, 37.033199, 37.065781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309013, 37.222347, 36.954456>,  <37.509659, 37.335835, 36.887661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309013, 37.222347, 36.954456>,  <36.974602, 37.033199, 37.065781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309013, 37.222347, 36.954456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515370, -0.502670, 0.694058,
		0.188297, -0.723685, -0.663946,
		0.836025, 0.472867, -0.278314,
		37.559822, 37.364208, 36.870960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480553, 36.527813, 36.980339>,  <36.974602, 37.033199, 37.065781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480553, 36.527813, 36.980339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642246, 36.887558, 37.046974>,  <37.739262, 37.103405, 37.086956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642246, 36.887558, 37.046974>,  <37.480553, 36.527813, 36.980339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642246, 36.887558, 37.046974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437346, -0.350012, 0.828384,
		0.803322, -0.262003, -0.534817,
		0.404231, 0.899359, 0.166586,
		37.763515, 37.157364, 37.096951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118118, 36.404713, 36.936554>,  <37.480553, 36.527813, 36.980339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118118, 36.404713, 36.936554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066895, 36.742271, 37.144955>,  <38.036160, 36.944805, 37.269997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066895, 36.742271, 37.144955>,  <38.118118, 36.404713, 36.936554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066895, 36.742271, 37.144955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326042, -0.460307, 0.825720,
		0.936642, 0.275608, -0.216199,
		-0.128057, 0.843894, 0.521003,
		38.028477, 36.995441, 37.301254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606792, 36.406235, 37.356686>,  <38.118118, 36.404713, 36.936554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606792, 36.406235, 37.356686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377541, 36.677509, 37.540680>,  <38.239990, 36.840275, 37.651077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377541, 36.677509, 37.540680>,  <38.606792, 36.406235, 37.356686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377541, 36.677509, 37.540680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483333, -0.173534, 0.858065,
		0.661750, 0.714109, -0.228332,
		-0.573128, 0.678185, 0.459988,
		38.205601, 36.880966, 37.678677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975563, 36.695194, 37.861248>,  <38.606792, 36.406235, 37.356686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975563, 36.695194, 37.861248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614292, 36.797844, 37.998890>,  <38.397530, 36.859432, 38.081474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614292, 36.797844, 37.998890>,  <38.975563, 36.695194, 37.861248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614292, 36.797844, 37.998890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284261, -0.243120, 0.927409,
		0.321654, 0.935434, 0.146633,
		-0.903180, 0.256623, 0.344108,
		38.343338, 36.874832, 38.102123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064232, 37.091000, 38.559490>,  <38.975563, 36.695194, 37.861248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064232, 37.091000, 38.559490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683582, 36.968094, 38.560387>,  <38.455193, 36.894352, 38.560925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683582, 36.968094, 38.560387>,  <39.064232, 37.091000, 38.559490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683582, 36.968094, 38.560387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056312, -0.167213, 0.984311,
		-0.302068, 0.936819, 0.176426,
		-0.951622, -0.307263, 0.002244,
		38.398094, 36.875916, 38.561062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708710, 37.535938, 39.023766>,  <39.064232, 37.091000, 38.559490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708710, 37.535938, 39.023766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530926, 37.179302, 38.989079>,  <38.424255, 36.965321, 38.968266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530926, 37.179302, 38.989079>,  <38.708710, 37.535938, 39.023766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530926, 37.179302, 38.989079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106828, -0.043357, 0.993332,
		-0.889405, 0.450762, -0.075976,
		-0.444462, -0.891591, -0.086715,
		38.397587, 36.911823, 38.963062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214405, 37.548977, 39.435158>,  <38.708710, 37.535938, 39.023766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214405, 37.548977, 39.435158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240219, 37.152008, 39.393326>,  <38.255707, 36.913826, 39.368225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240219, 37.152008, 39.393326>,  <38.214405, 37.548977, 39.435158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240219, 37.152008, 39.393326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139869, -0.112764, 0.983728,
		-0.988065, -0.048856, -0.146086,
		0.064534, -0.992420, -0.104584,
		38.259579, 36.854282, 39.361950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556953, 37.348671, 39.901608>,  <38.214405, 37.548977, 39.435158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556953, 37.348671, 39.901608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756840, 37.011257, 39.822880>,  <37.876774, 36.808811, 39.775642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756840, 37.011257, 39.822880>,  <37.556953, 37.348671, 39.901608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756840, 37.011257, 39.822880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089044, -0.276050, 0.957010,
		-0.861600, -0.460709, -0.213058,
		0.499718, -0.843531, -0.196821,
		37.906754, 36.758198, 39.763832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191998, 36.812428, 40.167645>,  <37.556953, 37.348671, 39.901608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191998, 36.812428, 40.167645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565739, 36.676216, 40.125637>,  <37.789982, 36.594490, 40.100433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565739, 36.676216, 40.125637>,  <37.191998, 36.812428, 40.167645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565739, 36.676216, 40.125637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011545, -0.265610, 0.964011,
		-0.356169, -0.901936, -0.244242,
		0.934350, -0.340532, -0.105015,
		37.846043, 36.574059, 40.094131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134869, 36.123543, 40.353325>,  <37.191998, 36.812428, 40.167645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134869, 36.123543, 40.353325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523670, 36.214233, 40.378006>,  <37.756950, 36.268650, 40.392815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523670, 36.214233, 40.378006>,  <37.134869, 36.123543, 40.353325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523670, 36.214233, 40.378006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042965, -0.429644, 0.901976,
		0.231013, -0.874071, -0.427356,
		0.972001, 0.226729, 0.061699,
		37.815269, 36.282253, 40.396515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502186, 35.444344, 40.529381>,  <37.134869, 36.123543, 40.353325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502186, 35.444344, 40.529381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749420, 35.737534, 40.643028>,  <37.897762, 35.913448, 40.711216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749420, 35.737534, 40.643028>,  <37.502186, 35.444344, 40.529381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749420, 35.737534, 40.643028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048227, -0.396096, 0.916942,
		0.784630, -0.553047, -0.280170,
		0.618086, 0.732972, 0.284117,
		37.934845, 35.957424, 40.728264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816406, 34.971260, 40.036285>,  <37.502186, 35.444344, 40.529381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816406, 34.971260, 40.036285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475407, 34.765285, 40.072266>,  <37.270809, 34.641701, 40.093853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475407, 34.765285, 40.072266>,  <37.816406, 34.971260, 40.036285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475407, 34.765285, 40.072266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322309, 0.382327, -0.865992,
		0.411541, -0.767246, -0.491901,
		-0.852497, -0.514936, 0.089947,
		37.219658, 34.610806, 40.099251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681145, 34.786514, 39.423649>,  <37.816406, 34.971260, 40.036285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681145, 34.786514, 39.423649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326599, 34.742134, 39.603451>,  <37.113873, 34.715508, 39.711334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326599, 34.742134, 39.603451>,  <37.681145, 34.786514, 39.423649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326599, 34.742134, 39.603451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448410, 0.447489, -0.773746,
		-0.115306, -0.887381, -0.446385,
		-0.886359, -0.110946, 0.449509,
		37.060692, 34.708851, 39.738304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178883, 34.414009, 38.997711>,  <37.681145, 34.786514, 39.423649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178883, 34.414009, 38.997711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947418, 34.604095, 39.262836>,  <36.808540, 34.718147, 39.421913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947418, 34.604095, 39.262836>,  <37.178883, 34.414009, 38.997711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947418, 34.604095, 39.262836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569459, 0.346361, -0.745487,
		-0.583841, -0.808828, 0.070193,
		-0.578659, 0.475218, 0.662814,
		36.773819, 34.746662, 39.461681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495514, 34.423618, 38.689610>,  <37.178883, 34.414009, 38.997711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495514, 34.423618, 38.689610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448078, 34.709259, 38.965580>,  <36.419617, 34.880642, 39.131161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448078, 34.709259, 38.965580>,  <36.495514, 34.423618, 38.689610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448078, 34.709259, 38.965580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652724, 0.467541, -0.596118,
		-0.748257, -0.521020, 0.410670,
		-0.118585, 0.714103, 0.689923,
		36.412502, 34.923489, 39.172558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834602, 34.401527, 38.897514>,  <36.495514, 34.423618, 38.689610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834602, 34.401527, 38.897514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927650, 34.764614, 39.037186>,  <35.983479, 34.982468, 39.120991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927650, 34.764614, 39.037186>,  <35.834602, 34.401527, 38.897514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927650, 34.764614, 39.037186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687760, 0.407389, -0.600850,
		-0.687657, -0.100382, 0.719063,
		0.232624, 0.907721, 0.349183,
		35.997437, 35.036930, 39.141941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200237, 34.667397, 39.203953>,  <35.834602, 34.401527, 38.897514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200237, 34.667397, 39.203953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446888, 34.957447, 39.081341>,  <35.594879, 35.131477, 39.007774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446888, 34.957447, 39.081341>,  <35.200237, 34.667397, 39.203953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446888, 34.957447, 39.081341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670793, 0.280145, -0.686699,
		-0.412072, 0.629056, 0.659155,
		0.616631, 0.725126, -0.306527,
		35.631878, 35.174984, 38.989384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763920, 35.217979, 39.139240>,  <35.200237, 34.667397, 39.203953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763920, 35.217979, 39.139240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077930, 35.343987, 38.925888>,  <35.266338, 35.419590, 38.797878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077930, 35.343987, 38.925888>,  <34.763920, 35.217979, 39.139240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077930, 35.343987, 38.925888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611692, 0.530144, -0.587180,
		0.097797, 0.787217, 0.608872,
		0.785028, 0.315018, -0.533381,
		35.313438, 35.438492, 38.765873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586803, 35.887619, 39.040161>,  <34.763920, 35.217979, 39.139240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586803, 35.887619, 39.040161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862988, 35.798042, 38.765030>,  <35.028698, 35.744297, 38.599953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862988, 35.798042, 38.765030>,  <34.586803, 35.887619, 39.040161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862988, 35.798042, 38.765030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511470, 0.521261, -0.683143,
		0.511524, 0.823490, 0.245372,
		0.690465, -0.223943, -0.687828,
		35.070126, 35.730858, 38.558681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721237, 36.572426, 38.607582>,  <34.586803, 35.887619, 39.040161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721237, 36.572426, 38.607582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827835, 36.261303, 38.379898>,  <34.891792, 36.074631, 38.243286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827835, 36.261303, 38.379898>,  <34.721237, 36.572426, 38.607582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827835, 36.261303, 38.379898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553593, 0.359922, -0.750993,
		0.788997, 0.515246, -0.334671,
		0.266491, -0.777803, -0.569214,
		34.907784, 36.027962, 38.209133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940845, 36.964394, 38.025116>,  <34.721237, 36.572426, 38.607582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940845, 36.964394, 38.025116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915932, 36.585129, 37.900467>,  <34.900982, 36.357571, 37.825676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915932, 36.585129, 37.900467>,  <34.940845, 36.964394, 38.025116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915932, 36.585129, 37.900467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641502, 0.277227, -0.715277,
		0.764589, 0.155357, -0.625514,
		-0.062286, -0.948161, -0.311626,
		34.897247, 36.300682, 37.806980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136467, 37.034111, 37.292316>,  <34.940845, 36.964394, 38.025116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136467, 37.034111, 37.292316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917900, 36.708042, 37.369190>,  <34.786762, 36.512402, 37.415314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917900, 36.708042, 37.369190>,  <35.136467, 37.034111, 37.292316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917900, 36.708042, 37.369190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587293, 0.209347, -0.781832,
		0.597092, -0.540069, -0.593132,
		-0.546413, -0.815168, 0.192180,
		34.753975, 36.463493, 37.426846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032475, 36.815037, 36.627171>,  <35.136467, 37.034111, 37.292316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032475, 36.815037, 36.627171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749260, 36.636749, 36.846268>,  <34.579330, 36.529778, 36.977726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749260, 36.636749, 36.846268>,  <35.032475, 36.815037, 36.627171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749260, 36.636749, 36.846268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615448, 0.009125, -0.788125,
		0.346284, -0.895126, -0.280777,
		-0.708034, -0.445719, 0.547744,
		34.536850, 36.503033, 37.010590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608803, 36.527546, 36.482460>,  <35.032475, 36.815037, 36.627171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608803, 36.527546, 36.482460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351856, 36.287319, 36.672905>,  <35.197689, 36.143185, 36.787174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351856, 36.287319, 36.672905>,  <35.608803, 36.527546, 36.482460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351856, 36.287319, 36.672905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094471, -0.554452, -0.826836,
		0.760553, -0.576111, 0.299425,
		-0.642366, -0.600566, 0.476116,
		35.159145, 36.107151, 36.815739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784256, 35.813446, 36.478043>,  <35.608803, 36.527546, 36.482460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784256, 35.813446, 36.478043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385197, 35.838421, 36.489403>,  <35.145763, 35.853405, 36.496220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385197, 35.838421, 36.489403>,  <35.784256, 35.813446, 36.478043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385197, 35.838421, 36.489403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054891, -0.478485, -0.876379,
		-0.041132, -0.875873, 0.480785,
		-0.997645, 0.062438, 0.028397,
		35.085903, 35.857151, 36.497921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562908, 35.485397, 35.852261>,  <35.784256, 35.813446, 36.478043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562908, 35.485397, 35.852261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191647, 35.572468, 35.973019>,  <34.968887, 35.624710, 36.045475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191647, 35.572468, 35.973019>,  <35.562908, 35.485397, 35.852261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191647, 35.572468, 35.973019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371331, -0.486507, -0.790838,
		-0.025269, -0.846126, 0.532384,
		-0.928156, 0.217675, 0.301899,
		34.913200, 35.637772, 36.063587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960209, 34.924740, 35.486916>,  <35.562908, 35.485397, 35.852261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960209, 34.924740, 35.486916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353043, 34.912544, 35.412529>,  <36.588741, 34.905228, 35.367897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353043, 34.912544, 35.412529>,  <35.960209, 34.924740, 35.486916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353043, 34.912544, 35.412529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143906, -0.515811, 0.844529,
		-0.121677, -0.856160, -0.502181,
		0.982082, -0.030493, -0.185969,
		36.647667, 34.903397, 35.356739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247345, 34.272911, 35.381008>,  <35.960209, 34.924740, 35.486916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247345, 34.272911, 35.381008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563290, 34.491734, 35.491898>,  <36.752857, 34.623028, 35.558430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563290, 34.491734, 35.491898>,  <36.247345, 34.272911, 35.381008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563290, 34.491734, 35.491898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116232, -0.577365, 0.808170,
		0.602175, -0.606117, -0.519622,
		0.789857, 0.547057, 0.277225,
		36.800247, 34.655849, 35.575066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849770, 33.822147, 35.389008>,  <36.247345, 34.272911, 35.381008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849770, 33.822147, 35.389008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939129, 34.132999, 35.624348>,  <36.992744, 34.319511, 35.765553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939129, 34.132999, 35.624348>,  <36.849770, 33.822147, 35.389008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939129, 34.132999, 35.624348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137489, -0.622697, 0.770290,
		0.964982, -0.091190, -0.245957,
		0.223399, 0.777132, 0.588353,
		37.006149, 34.366138, 35.800854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469242, 33.631329, 35.649139>,  <36.849770, 33.822147, 35.389008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469242, 33.631329, 35.649139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382790, 33.923508, 35.908287>,  <37.330917, 34.098816, 36.063774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382790, 33.923508, 35.908287>,  <37.469242, 33.631329, 35.649139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382790, 33.923508, 35.908287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201561, -0.615880, 0.761620,
		0.955332, 0.295198, -0.014116,
		-0.216135, 0.730445, 0.647870,
		37.317947, 34.142643, 36.102650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076180, 33.808624, 36.104881>,  <37.469242, 33.631329, 35.649139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076180, 33.808624, 36.104881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751682, 33.918644, 36.311272>,  <37.556984, 33.984657, 36.435104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751682, 33.918644, 36.311272>,  <38.076180, 33.808624, 36.104881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751682, 33.918644, 36.311272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236453, -0.652746, 0.719731,
		0.534762, 0.705882, 0.464501,
		-0.811246, 0.275052, 0.515972,
		37.508308, 34.001160, 36.466064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259392, 33.913834, 36.721676>,  <38.076180, 33.808624, 36.104881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259392, 33.913834, 36.721676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869465, 33.834686, 36.762810>,  <37.635509, 33.787197, 36.787491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869465, 33.834686, 36.762810>,  <38.259392, 33.913834, 36.721676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869465, 33.834686, 36.762810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186222, -0.468665, 0.863524,
		-0.122673, 0.860930, 0.493712,
		-0.974819, -0.197871, 0.102831,
		37.577019, 33.775326, 36.793659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129784, 33.927979, 37.338684>,  <38.259392, 33.913834, 36.721676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129784, 33.927979, 37.338684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799965, 33.720203, 37.248959>,  <37.602074, 33.595539, 37.195126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799965, 33.720203, 37.248959>,  <38.129784, 33.927979, 37.338684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799965, 33.720203, 37.248959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163624, -0.598420, 0.784296,
		-0.541623, 0.609984, 0.578416,
		-0.824543, -0.519435, -0.224310,
		37.552601, 33.564373, 37.181667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850727, 33.721100, 38.042564>,  <38.129784, 33.927979, 37.338684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850727, 33.721100, 38.042564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667019, 33.476952, 37.784416>,  <37.556793, 33.330463, 37.629528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667019, 33.476952, 37.784416>,  <37.850727, 33.721100, 38.042564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667019, 33.476952, 37.784416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214291, -0.781206, 0.586342,
		-0.862059, 0.130995, 0.489586,
		-0.459275, -0.610375, -0.645375,
		37.529236, 33.293839, 37.590805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425663, 33.345989, 38.454105>,  <37.850727, 33.721100, 38.042564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425663, 33.345989, 38.454105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459358, 33.112988, 38.130726>,  <37.479576, 32.973186, 37.936699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459358, 33.112988, 38.130726>,  <37.425663, 33.345989, 38.454105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459358, 33.112988, 38.130726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121326, -0.799305, 0.588551,
		-0.989032, -0.147664, 0.003342,
		0.084236, -0.582501, -0.808454,
		37.484631, 32.938236, 37.888191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037437, 32.735752, 38.652283>,  <37.425663, 33.345989, 38.454105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037437, 32.735752, 38.652283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271511, 32.601849, 38.356853>,  <37.411957, 32.521507, 38.179596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271511, 32.601849, 38.356853>,  <37.037437, 32.735752, 38.652283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271511, 32.601849, 38.356853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044206, -0.896285, 0.441271,
		-0.809691, -0.290876, -0.509698,
		0.585189, -0.334761, -0.738572,
		37.447067, 32.501419, 38.135281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878853, 31.998396, 38.582062>,  <37.037437, 32.735752, 38.652283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878853, 31.998396, 38.582062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243572, 32.059158, 38.429459>,  <37.462402, 32.095615, 38.337894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243572, 32.059158, 38.429459>,  <36.878853, 31.998396, 38.582062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243572, 32.059158, 38.429459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341377, -0.796765, 0.498626,
		-0.228230, -0.584884, -0.778345,
		0.911797, 0.151908, -0.381511,
		37.517113, 32.104733, 38.315006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008263, 31.325155, 38.341187>,  <36.878853, 31.998396, 38.582062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008263, 31.325155, 38.341187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361252, 31.512625, 38.357128>,  <37.573044, 31.625107, 38.366695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361252, 31.512625, 38.357128>,  <37.008263, 31.325155, 38.341187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361252, 31.512625, 38.357128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376795, -0.755096, 0.536522,
		0.281550, -0.458447, -0.842945,
		0.882471, 0.468675, 0.039857,
		37.625992, 31.653227, 38.369083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530472, 30.961863, 38.017292>,  <37.008263, 31.325155, 38.341187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530472, 30.961863, 38.017292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757084, 31.183756, 38.261036>,  <37.893051, 31.316891, 38.407280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757084, 31.183756, 38.261036>,  <37.530472, 30.961863, 38.017292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757084, 31.183756, 38.261036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605255, -0.781938, 0.149125,
		0.559203, 0.284332, -0.778747,
		0.566532, 0.554732, 0.609356,
		37.927044, 31.350176, 38.443844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252293, 30.826393, 37.796425>,  <37.530472, 30.961863, 38.017292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252293, 30.826393, 37.796425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305046, 30.979090, 38.162350>,  <38.336697, 31.070707, 38.381905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305046, 30.979090, 38.162350>,  <38.252293, 30.826393, 37.796425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305046, 30.979090, 38.162350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620518, -0.751481, 0.224127,
		0.773022, 0.538099, -0.335985,
		0.131884, 0.381740, 0.914812,
		38.344612, 31.093613, 38.436794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932140, 30.717505, 37.918362>,  <38.252293, 30.826393, 37.796425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932140, 30.717505, 37.918362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781322, 30.765476, 38.285721>,  <38.690830, 30.794260, 38.506138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781322, 30.765476, 38.285721>,  <38.932140, 30.717505, 37.918362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781322, 30.765476, 38.285721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459752, -0.836558, 0.297992,
		0.804032, 0.534591, 0.260281,
		-0.377044, 0.119930, 0.918398,
		38.668209, 30.801455, 38.561241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319622, 30.243582, 38.270947>,  <38.932140, 30.717505, 37.918362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319622, 30.243582, 38.270947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042892, 30.328289, 38.547073>,  <38.876854, 30.379114, 38.712749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042892, 30.328289, 38.547073>,  <39.319622, 30.243582, 38.270947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042892, 30.328289, 38.547073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400245, -0.683250, 0.610716,
		0.600989, 0.698802, 0.387927,
		-0.691820, 0.211768, 0.690318,
		38.835346, 30.391819, 38.754169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667816, 30.222731, 39.005188>,  <39.319622, 30.243582, 38.270947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667816, 30.222731, 39.005188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277546, 30.169933, 39.075207>,  <39.043385, 30.138254, 39.117218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277546, 30.169933, 39.075207>,  <39.667816, 30.222731, 39.005188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277546, 30.169933, 39.075207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210916, -0.782969, 0.585212,
		0.059809, 0.607895, 0.791762,
		-0.975673, -0.131994, 0.175044,
		38.984844, 30.130335, 39.127720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590729, 30.204830, 39.725197>,  <39.667816, 30.222731, 39.005188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590729, 30.204830, 39.725197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274033, 30.009743, 39.578075>,  <39.084015, 29.892691, 39.489803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274033, 30.009743, 39.578075>,  <39.590729, 30.204830, 39.725197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274033, 30.009743, 39.578075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111401, -0.707295, 0.698085,
		-0.600614, 0.511728, 0.614326,
		-0.791740, -0.487717, -0.367805,
		39.036510, 29.863428, 39.467735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219051, 29.970383, 40.281738>,  <39.590729, 30.204830, 39.725197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219051, 29.970383, 40.281738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118908, 29.731749, 39.976738>,  <39.058823, 29.588568, 39.793739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118908, 29.731749, 39.976738>,  <39.219051, 29.970383, 40.281738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118908, 29.731749, 39.976738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202102, -0.802434, 0.561475,
		-0.946823, -0.013530, 0.321471,
		-0.250363, -0.596587, -0.762497,
		39.043800, 29.552773, 39.747990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891396, 29.472511, 40.628460>,  <39.219051, 29.970383, 40.281738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891396, 29.472511, 40.628460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948864, 29.284956, 40.279861>,  <38.983345, 29.172422, 40.070702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948864, 29.284956, 40.279861>,  <38.891396, 29.472511, 40.628460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948864, 29.284956, 40.279861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055063, -0.875478, 0.480111,
		-0.988093, -0.116964, -0.099960,
		0.143668, -0.468890, -0.871494,
		38.991966, 29.144289, 40.018414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427376, 28.817865, 40.685925>,  <38.891396, 29.472511, 40.628460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427376, 28.817865, 40.685925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706657, 28.761089, 40.405251>,  <38.874226, 28.727024, 40.236847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706657, 28.761089, 40.405251>,  <38.427376, 28.817865, 40.685925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706657, 28.761089, 40.405251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202663, -0.900866, 0.383887,
		-0.686616, -0.410237, -0.600220,
		0.698202, -0.141940, -0.701688,
		38.916119, 28.718508, 40.194744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402367, 28.114319, 40.614338>,  <38.427376, 28.817865, 40.685925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402367, 28.114319, 40.614338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746601, 28.218918, 40.439522>,  <38.953144, 28.281677, 40.334633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746601, 28.218918, 40.439522>,  <38.402367, 28.114319, 40.614338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746601, 28.218918, 40.439522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423283, -0.844448, 0.328236,
		-0.283228, -0.467470, -0.837409,
		0.860589, 0.261495, -0.437043,
		39.004776, 28.297367, 40.308407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628834, 27.525452, 40.203400>,  <38.402367, 28.114319, 40.614338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628834, 27.525452, 40.203400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945847, 27.751623, 40.294769>,  <39.136055, 27.887327, 40.349590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945847, 27.751623, 40.294769>,  <38.628834, 27.525452, 40.203400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945847, 27.751623, 40.294769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469078, -0.804590, 0.364144,
		0.389687, -0.181447, -0.902896,
		0.792534, 0.565431, 0.228426,
		39.183605, 27.921253, 40.363297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292507, 27.172625, 39.961494>,  <38.628834, 27.525452, 40.203400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292507, 27.172625, 39.961494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401299, 27.426067, 40.251202>,  <39.466572, 27.578133, 40.425026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401299, 27.426067, 40.251202>,  <39.292507, 27.172625, 39.961494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401299, 27.426067, 40.251202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440425, -0.751149, 0.491732,
		0.855601, 0.185246, -0.483354,
		0.271979, 0.633608, 0.724271,
		39.482891, 27.616150, 40.468483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046085, 27.014025, 40.170956>,  <39.292507, 27.172625, 39.961494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046085, 27.014025, 40.170956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859810, 27.197872, 40.473450>,  <39.748047, 27.308180, 40.654945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859810, 27.197872, 40.473450>,  <40.046085, 27.014025, 40.170956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859810, 27.197872, 40.473450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317635, -0.710795, 0.627597,
		0.825982, 0.532468, 0.185016,
		-0.465684, 0.459617, 0.756235,
		39.720104, 27.335756, 40.700321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448467, 26.965469, 40.726490>,  <40.046085, 27.014025, 40.170956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448467, 26.965469, 40.726490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123024, 27.066917, 40.935764>,  <39.927757, 27.127787, 41.061329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123024, 27.066917, 40.935764>,  <40.448467, 26.965469, 40.726490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123024, 27.066917, 40.935764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385718, -0.437867, 0.812092,
		0.435050, 0.862524, 0.258424,
		-0.813605, 0.253622, 0.523185,
		39.878944, 27.143003, 41.092720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670742, 27.169790, 41.462555>,  <40.448467, 26.965469, 40.726490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670742, 27.169790, 41.462555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287563, 27.055435, 41.472389>,  <40.057655, 26.986822, 41.478291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287563, 27.055435, 41.472389>,  <40.670742, 27.169790, 41.462555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287563, 27.055435, 41.472389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159324, -0.458680, 0.874202,
		-0.238645, 0.841357, 0.484940,
		-0.957948, -0.285886, 0.024587,
		40.000179, 26.969669, 41.479767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924007, 27.691885, 41.743076>,  <40.670742, 27.169790, 41.462555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924007, 27.691885, 41.743076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295315, 27.790668, 41.854309>,  <41.518101, 27.849937, 41.921047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295315, 27.790668, 41.854309>,  <40.924007, 27.691885, 41.743076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295315, 27.790668, 41.854309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045943, 0.665842, -0.744677,
		-0.369062, 0.704036, 0.606734,
		0.928269, 0.246956, 0.278083,
		41.573795, 27.864756, 41.937733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925800, 28.397556, 41.713081>,  <40.924007, 27.691885, 41.743076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925800, 28.397556, 41.713081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316967, 28.314186, 41.707012>,  <41.551666, 28.264164, 41.703373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316967, 28.314186, 41.707012>,  <40.925800, 28.397556, 41.713081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316967, 28.314186, 41.707012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136639, 0.692642, -0.708221,
		0.158119, 0.690511, 0.705828,
		0.977920, -0.208427, -0.015169,
		41.610344, 28.251657, 41.702461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264423, 29.035465, 41.880981>,  <40.925800, 28.397556, 41.713081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264423, 29.035465, 41.880981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535568, 28.818983, 41.681942>,  <41.698254, 28.689095, 41.562519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535568, 28.818983, 41.681942>,  <41.264423, 29.035465, 41.880981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535568, 28.818983, 41.681942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197008, 0.785789, -0.586279,
		0.708304, 0.299384, 0.639276,
		0.677859, -0.541206, -0.497597,
		41.738926, 28.656622, 41.532661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702316, 29.499830, 41.761467>,  <41.264423, 29.035465, 41.880981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702316, 29.499830, 41.761467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783669, 29.216162, 41.491440>,  <41.832481, 29.045961, 41.329426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783669, 29.216162, 41.491440>,  <41.702316, 29.499830, 41.761467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783669, 29.216162, 41.491440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307525, 0.700853, -0.643610,
		0.929550, -0.076699, 0.360630,
		0.203384, -0.709170, -0.675065,
		41.844685, 29.003410, 41.288921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388981, 29.572384, 41.500900>,  <41.702316, 29.499830, 41.761467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388981, 29.572384, 41.500900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170116, 29.408998, 41.208660>,  <42.038799, 29.310966, 41.033318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170116, 29.408998, 41.208660>,  <42.388981, 29.572384, 41.500900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170116, 29.408998, 41.208660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290209, 0.726130, -0.623309,
		0.785111, -0.553074, -0.278765,
		-0.547156, -0.408466, -0.730599,
		42.005970, 29.286459, 40.989479>
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
