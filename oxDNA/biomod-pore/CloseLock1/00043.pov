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
	<24.124857, 35.422848, 34.992550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.439531, 35.185661, 35.061272>,  <24.628336, 35.043350, 35.102505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.439531, 35.185661, 35.061272>,  <24.124857, 35.422848, 34.992550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.439531, 35.185661, 35.061272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367465, 0.226133, -0.902127,
		0.496076, 0.772826, 0.395789,
		0.786688, -0.592962, 0.171807,
		24.675537, 35.007774, 35.112812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.483561, 35.562473, 34.397877>,  <24.124857, 35.422848, 34.992550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.483561, 35.562473, 34.397877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715414, 35.275833, 34.553055>,  <24.854527, 35.103848, 34.646164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715414, 35.275833, 34.553055>,  <24.483561, 35.562473, 34.397877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715414, 35.275833, 34.553055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562851, 0.007813, -0.826521,
		0.589257, 0.697438, 0.407870,
		0.579634, -0.716603, 0.387950,
		24.889303, 35.060852, 34.669441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208151, 35.709518, 34.351391>,  <24.483561, 35.562473, 34.397877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.208151, 35.709518, 34.351391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.122114, 35.319508, 34.329285>,  <25.070492, 35.085503, 34.316021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.122114, 35.319508, 34.329285>,  <25.208151, 35.709518, 34.351391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.122114, 35.319508, 34.329285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485860, -0.057748, -0.872127,
		0.847157, -0.214441, 0.486148,
		-0.215094, -0.975028, -0.055267,
		25.057587, 35.027000, 34.312706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683016, 36.259712, 34.118977>,  <25.208151, 35.709518, 34.351391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683016, 36.259712, 34.118977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478086, 36.253860, 33.775509>,  <25.355129, 36.250351, 33.569427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478086, 36.253860, 33.775509>,  <25.683016, 36.259712, 34.118977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478086, 36.253860, 33.775509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666851, 0.623252, -0.408494,
		0.541142, -0.781885, -0.309552,
		-0.512324, -0.014629, -0.858668,
		25.324389, 36.249474, 33.517910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270697, 36.674328, 34.114174>,  <25.683016, 36.259712, 34.118977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270697, 36.674328, 34.114174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558088, 36.941357, 34.192291>,  <26.730524, 37.101574, 34.239162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558088, 36.941357, 34.192291>,  <26.270697, 36.674328, 34.114174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558088, 36.941357, 34.192291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088081, 0.365838, -0.926501,
		-0.689948, 0.648471, 0.321647,
		0.718480, 0.667569, 0.195291,
		26.773632, 37.141628, 34.250877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216591, 37.453030, 34.047672>,  <26.270697, 36.674328, 34.114174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216591, 37.453030, 34.047672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588104, 37.360378, 33.931942>,  <26.811012, 37.304787, 33.862503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588104, 37.360378, 33.931942>,  <26.216591, 37.453030, 34.047672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588104, 37.360378, 33.931942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198826, 0.347392, -0.916399,
		0.312776, 0.908661, 0.276597,
		0.928784, -0.231633, -0.289321,
		26.866739, 37.290890, 33.845146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478292, 37.945026, 33.625217>,  <26.216591, 37.453030, 34.047672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478292, 37.945026, 33.625217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699041, 37.622810, 33.538921>,  <26.831490, 37.429482, 33.487144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699041, 37.622810, 33.538921>,  <26.478292, 37.945026, 33.625217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699041, 37.622810, 33.538921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048563, 0.289312, -0.956002,
		0.832514, 0.517113, 0.198782,
		0.551871, -0.805539, -0.215743,
		26.864603, 37.381149, 33.474197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915819, 38.256489, 33.243420>,  <26.478292, 37.945026, 33.625217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915819, 38.256489, 33.243420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911173, 37.862591, 33.173985>,  <26.908386, 37.626251, 33.132324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911173, 37.862591, 33.173985>,  <26.915819, 38.256489, 33.243420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911173, 37.862591, 33.173985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000013, 0.173602, -0.984816,
		0.999933, -0.011435, -0.002029,
		-0.011614, -0.984750, -0.173590,
		26.907688, 37.567165, 33.121906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238117, 38.209488, 32.651604>,  <26.915819, 38.256489, 33.243420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238117, 38.209488, 32.651604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063196, 37.849792, 32.646931>,  <26.958242, 37.633976, 32.644127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063196, 37.849792, 32.646931>,  <27.238117, 38.209488, 32.651604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063196, 37.849792, 32.646931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092355, 0.057831, -0.994045,
		0.894559, -0.433620, -0.108339,
		-0.437303, -0.899238, -0.011686,
		26.932005, 37.580021, 32.643425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602009, 37.824520, 32.251575>,  <27.238117, 38.209488, 32.651604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602009, 37.824520, 32.251575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251562, 37.633175, 32.275547>,  <27.041294, 37.518368, 32.289932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251562, 37.633175, 32.275547>,  <27.602009, 37.824520, 32.251575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251562, 37.633175, 32.275547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123065, 0.101713, -0.987173,
		0.466129, -0.872253, -0.147981,
		-0.876116, -0.478361, 0.059933,
		26.988728, 37.489666, 32.293526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491625, 37.406734, 31.643618>,  <27.602009, 37.824520, 32.251575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491625, 37.406734, 31.643618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109135, 37.361771, 31.751686>,  <26.879641, 37.334793, 31.816528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109135, 37.361771, 31.751686>,  <27.491625, 37.406734, 31.643618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109135, 37.361771, 31.751686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282379, 0.112300, -0.952707,
		0.076755, -0.987296, -0.139127,
		-0.956227, -0.112412, 0.270172,
		26.822266, 37.328049, 31.832737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181950, 36.956093, 31.026905>,  <27.491625, 37.406734, 31.643618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181950, 36.956093, 31.026905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883963, 37.124119, 31.234201>,  <26.705172, 37.224934, 31.358580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883963, 37.124119, 31.234201>,  <27.181950, 36.956093, 31.026905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883963, 37.124119, 31.234201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457980, 0.242814, -0.855158,
		-0.485056, -0.874407, 0.011493,
		-0.744966, 0.420064, 0.518240,
		26.660473, 37.250137, 31.389673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576754, 36.794384, 30.673412>,  <27.181950, 36.956093, 31.026905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576754, 36.794384, 30.673412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457306, 37.106853, 30.892717>,  <26.385637, 37.294334, 31.024300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457306, 37.106853, 30.892717>,  <26.576754, 36.794384, 30.673412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457306, 37.106853, 30.892717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439639, 0.397293, -0.805528,
		-0.847080, -0.481582, 0.224798,
		-0.298617, 0.781177, 0.548262,
		26.367722, 37.341206, 31.057196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834000, 36.968285, 30.549814>,  <26.576754, 36.794384, 30.673412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834000, 36.968285, 30.549814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980743, 37.323200, 30.661617>,  <26.068790, 37.536152, 30.728699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980743, 37.323200, 30.661617>,  <25.834000, 36.968285, 30.549814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980743, 37.323200, 30.661617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307926, 0.399340, -0.863544,
		-0.877835, 0.230734, 0.419723,
		0.366862, 0.887293, 0.279505,
		26.090801, 37.589390, 30.745468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396912, 37.413292, 30.280302>,  <25.834000, 36.968285, 30.549814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396912, 37.413292, 30.280302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705997, 37.649670, 30.372995>,  <25.891449, 37.791496, 30.428612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705997, 37.649670, 30.372995>,  <25.396912, 37.413292, 30.280302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705997, 37.649670, 30.372995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079215, 0.451999, -0.888494,
		-0.629792, 0.668195, 0.396077,
		0.772714, 0.590942, 0.231734,
		25.937811, 37.826954, 30.442516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178806, 38.129162, 30.120838>,  <25.396912, 37.413292, 30.280302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178806, 38.129162, 30.120838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578789, 38.132229, 30.118813>,  <25.818779, 38.134071, 30.117598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578789, 38.132229, 30.118813>,  <25.178806, 38.129162, 30.120838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578789, 38.132229, 30.118813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007868, 0.429528, -0.903019,
		-0.004753, 0.903021, 0.429571,
		0.999958, 0.007672, -0.005064,
		25.878777, 38.134529, 30.117294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379253, 38.786415, 30.170567>,  <25.178806, 38.129162, 30.120838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379253, 38.786415, 30.170567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669119, 38.569965, 29.999897>,  <25.843039, 38.440098, 29.897495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669119, 38.569965, 29.999897>,  <25.379253, 38.786415, 30.170567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669119, 38.569965, 29.999897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280003, 0.334535, -0.899824,
		0.629653, 0.771539, 0.090909,
		0.724662, -0.541122, -0.426675,
		25.886518, 38.407627, 29.871895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726286, 39.256046, 29.704370>,  <25.379253, 38.786415, 30.170567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726286, 39.256046, 29.704370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858604, 38.902321, 29.572571>,  <25.937996, 38.690086, 29.493492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858604, 38.902321, 29.572571>,  <25.726286, 39.256046, 29.704370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858604, 38.902321, 29.572571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071546, 0.324648, -0.943125,
		0.940986, 0.335558, 0.044124,
		0.330798, -0.884310, -0.329497,
		25.957844, 38.637028, 29.473722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272663, 39.424583, 29.189068>,  <25.726286, 39.256046, 29.704370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272663, 39.424583, 29.189068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133118, 39.057209, 29.114475>,  <26.049391, 38.836784, 29.069719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133118, 39.057209, 29.114475>,  <26.272663, 39.424583, 29.189068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133118, 39.057209, 29.114475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032795, 0.210824, -0.976974,
		0.936599, -0.334716, -0.103669,
		-0.348865, -0.918432, -0.186481,
		26.028458, 38.781681, 29.058531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600782, 39.216038, 28.634201>,  <26.272663, 39.424583, 29.189068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600782, 39.216038, 28.634201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298809, 38.953827, 28.641796>,  <26.117626, 38.796501, 28.646353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298809, 38.953827, 28.641796>,  <26.600782, 39.216038, 28.634201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298809, 38.953827, 28.641796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053258, 0.032427, -0.998054,
		0.653638, -0.754474, -0.059393,
		-0.754932, -0.655529, 0.018986,
		26.072330, 38.757168, 28.647491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676548, 38.664459, 28.116375>,  <26.600782, 39.216038, 28.634201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676548, 38.664459, 28.116375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289261, 38.601711, 28.194290>,  <26.056889, 38.564064, 28.241039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289261, 38.601711, 28.194290>,  <26.676548, 38.664459, 28.116375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289261, 38.601711, 28.194290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114457, -0.414572, -0.902790,
		0.222373, -0.896394, 0.383442,
		-0.968220, -0.156868, 0.194788,
		25.998795, 38.554649, 28.252728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501778, 37.989536, 27.892603>,  <26.676548, 38.664459, 28.116375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501778, 37.989536, 27.892603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153725, 38.185234, 27.916300>,  <25.944893, 38.302654, 27.930517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153725, 38.185234, 27.916300>,  <26.501778, 37.989536, 27.892603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153725, 38.185234, 27.916300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211218, -0.261621, -0.941776,
		-0.445260, -0.831982, 0.330982,
		-0.870132, 0.489245, 0.059240,
		25.892685, 38.332008, 27.934072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982126, 37.558140, 27.634108>,  <26.501778, 37.989536, 27.892603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982126, 37.558140, 27.634108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814840, 37.917946, 27.583546>,  <25.714470, 38.133827, 27.553209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814840, 37.917946, 27.583546>,  <25.982126, 37.558140, 27.634108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814840, 37.917946, 27.583546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460489, -0.329903, -0.824084,
		-0.782974, -0.286434, 0.552185,
		-0.418213, 0.899511, -0.126406,
		25.689377, 38.187798, 27.545624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376982, 37.418739, 27.522327>,  <25.982126, 37.558140, 27.634108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376982, 37.418739, 27.522327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405375, 37.785000, 27.364061>,  <25.422409, 38.004757, 27.269102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405375, 37.785000, 27.364061>,  <25.376982, 37.418739, 27.522327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.405375, 37.785000, 27.364061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329322, -0.352910, -0.875786,
		-0.941546, 0.192464, 0.276494,
		0.070980, 0.915649, -0.395663,
		25.426668, 38.059696, 27.245363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708529, 37.491020, 27.231047>,  <25.376982, 37.418739, 27.522327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708529, 37.491020, 27.231047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927862, 37.779949, 27.062485>,  <25.059462, 37.953308, 26.961348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927862, 37.779949, 27.062485>,  <24.708529, 37.491020, 27.231047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.927862, 37.779949, 27.062485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312978, -0.290036, -0.904392,
		-0.775485, 0.627797, 0.067035,
		0.548332, 0.722323, -0.421405,
		25.092361, 37.996647, 26.936064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.241512, 37.968430, 26.958164>,  <24.708529, 37.491020, 27.231047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.241512, 37.968430, 26.958164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598904, 37.935539, 26.781559>,  <24.813339, 37.915806, 26.675596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598904, 37.935539, 26.781559>,  <24.241512, 37.968430, 26.958164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.598904, 37.935539, 26.781559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447547, -0.244870, -0.860082,
		-0.037392, 0.966063, -0.255587,
		0.893479, -0.082227, -0.441514,
		24.866947, 37.910870, 26.649105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.085079, 38.157825, 26.241383>,  <24.241512, 37.968430, 26.958164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.085079, 38.157825, 26.241383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383533, 37.900711, 26.310789>,  <24.562607, 37.746445, 26.352434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383533, 37.900711, 26.310789>,  <24.085079, 38.157825, 26.241383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383533, 37.900711, 26.310789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300730, -0.557892, -0.773510,
		0.594004, 0.524962, -0.609569,
		0.746137, -0.642784, 0.173518,
		24.607374, 37.707874, 26.362844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.518110, 37.951504, 25.640984>,  <24.085079, 38.157825, 26.241383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.518110, 37.951504, 25.640984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507223, 37.667599, 25.922550>,  <24.500690, 37.497257, 26.091490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507223, 37.667599, 25.922550>,  <24.518110, 37.951504, 25.640984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.507223, 37.667599, 25.922550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298651, -0.666240, -0.683324,
		0.953974, -0.228822, -0.193838,
		-0.027217, -0.709763, 0.703914,
		24.499058, 37.454670, 26.133724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.856115, 37.227413, 25.339451>,  <24.518110, 37.951504, 25.640984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.856115, 37.227413, 25.339451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582808, 37.175335, 25.626837>,  <24.418823, 37.144089, 25.799269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582808, 37.175335, 25.626837>,  <24.856115, 37.227413, 25.339451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.582808, 37.175335, 25.626837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368112, -0.788357, -0.492937,
		0.630583, -0.601285, 0.490735,
		-0.683270, -0.130192, 0.718465,
		24.377827, 37.136276, 25.842377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026165, 36.636292, 25.662394>,  <24.856115, 37.227413, 25.339451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026165, 36.636292, 25.662394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.640062, 36.729332, 25.614773>,  <24.408400, 36.785156, 25.586201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.640062, 36.729332, 25.614773>,  <25.026165, 36.636292, 25.662394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.640062, 36.729332, 25.614773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136232, -0.836776, -0.530327,
		-0.222976, -0.495683, 0.839392,
		-0.965258, 0.232602, -0.119053,
		24.350485, 36.799114, 25.579056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526810, 36.393852, 25.370228>,  <25.026165, 36.636292, 25.662394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526810, 36.393852, 25.370228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637035, 36.083485, 25.143240>,  <25.703171, 35.897266, 25.007048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637035, 36.083485, 25.143240>,  <25.526810, 36.393852, 25.370228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637035, 36.083485, 25.143240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952689, 0.141677, 0.268906,
		-0.128251, -0.614722, 0.778247,
		0.275562, -0.775915, -0.567469,
		25.719704, 35.850712, 24.973000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725779, 35.763752, 25.680861>,  <25.526810, 36.393852, 25.370228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725779, 35.763752, 25.680861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905140, 35.844273, 25.332514>,  <26.012756, 35.892586, 25.123505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905140, 35.844273, 25.332514>,  <25.725779, 35.763752, 25.680861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905140, 35.844273, 25.332514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892835, -0.054868, 0.447029,
		0.042207, -0.977991, -0.204336,
		0.448402, 0.201306, -0.870868,
		26.039661, 35.904663, 25.071253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294992, 35.237812, 25.690865>,  <25.725779, 35.763752, 25.680861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294992, 35.237812, 25.690865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397915, 35.530590, 25.438499>,  <26.459669, 35.706257, 25.287081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397915, 35.530590, 25.438499>,  <26.294992, 35.237812, 25.690865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397915, 35.530590, 25.438499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928747, -0.007004, 0.370647,
		0.266874, -0.681329, -0.681593,
		0.257306, 0.731944, -0.630914,
		26.475107, 35.750172, 25.249226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895529, 35.055992, 25.313013>,  <26.294992, 35.237812, 25.690865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895529, 35.055992, 25.313013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890158, 35.455223, 25.337244>,  <26.886934, 35.694759, 25.351782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890158, 35.455223, 25.337244>,  <26.895529, 35.055992, 25.313013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890158, 35.455223, 25.337244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900435, -0.014270, 0.434757,
		0.434784, 0.060383, -0.898508,
		-0.013430, 0.998073, 0.060576,
		26.886129, 35.754646, 25.355417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611366, 34.823116, 25.343487>,  <26.895529, 35.055992, 25.313013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611366, 34.823116, 25.343487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763367, 34.455101, 25.305281>,  <27.854567, 34.234291, 25.282358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763367, 34.455101, 25.305281>,  <27.611366, 34.823116, 25.343487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763367, 34.455101, 25.305281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061989, -0.128358, 0.989789,
		-0.922907, -0.370200, -0.105808,
		0.380001, -0.920041, -0.095514,
		27.877367, 34.179089, 25.276627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194025, 34.390686, 25.750282>,  <27.611366, 34.823116, 25.343487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194025, 34.390686, 25.750282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553028, 34.216553, 25.722111>,  <27.768431, 34.112072, 25.705208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553028, 34.216553, 25.722111>,  <27.194025, 34.390686, 25.750282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553028, 34.216553, 25.722111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058076, -0.274989, 0.959692,
		-0.437157, -0.857241, -0.272088,
		0.897508, -0.435338, -0.070428,
		27.822281, 34.085953, 25.700983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039806, 33.995811, 26.468033>,  <27.194025, 34.390686, 25.750282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039806, 33.995811, 26.468033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740063, 33.905212, 26.716921>,  <26.560217, 33.850853, 26.866253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740063, 33.905212, 26.716921>,  <27.039806, 33.995811, 26.468033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740063, 33.905212, 26.716921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517728, 0.385416, 0.763814,
		-0.412818, 0.894512, -0.171550,
		-0.749359, -0.226500, 0.622220,
		26.515255, 33.837261, 26.903587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086071, 34.597023, 27.007172>,  <27.039806, 33.995811, 26.468033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086071, 34.597023, 27.007172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874422, 34.289360, 27.150520>,  <26.747433, 34.104763, 27.236528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874422, 34.289360, 27.150520>,  <27.086071, 34.597023, 27.007172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874422, 34.289360, 27.150520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331005, 0.201784, 0.921802,
		-0.781322, 0.606369, 0.147825,
		-0.529123, -0.769155, 0.358369,
		26.715685, 34.058613, 27.258032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861246, 34.905769, 27.593243>,  <27.086071, 34.597023, 27.007172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861246, 34.905769, 27.593243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807550, 34.515018, 27.659794>,  <26.775333, 34.280567, 27.699724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807550, 34.515018, 27.659794>,  <26.861246, 34.905769, 27.593243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807550, 34.515018, 27.659794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250588, 0.128975, 0.959464,
		-0.958741, 0.170492, 0.227481,
		-0.134242, -0.976882, 0.166377,
		26.767279, 34.221954, 27.709707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433315, 34.810719, 28.251717>,  <26.861246, 34.905769, 27.593243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433315, 34.810719, 28.251717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644831, 34.478764, 28.180532>,  <26.771740, 34.279591, 28.137821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644831, 34.478764, 28.180532>,  <26.433315, 34.810719, 28.251717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644831, 34.478764, 28.180532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479094, 0.118770, 0.869691,
		-0.700610, -0.545141, 0.460398,
		0.528786, -0.829888, -0.177962,
		26.803467, 34.229797, 28.127144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591139, 34.593605, 28.885984>,  <26.433315, 34.810719, 28.251717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591139, 34.593605, 28.885984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860825, 34.388264, 28.673607>,  <27.022636, 34.265060, 28.546181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860825, 34.388264, 28.673607>,  <26.591139, 34.593605, 28.885984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860825, 34.388264, 28.673607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614051, -0.009784, 0.789205,
		-0.410335, -0.858123, 0.308628,
		0.674215, -0.513352, -0.530946,
		27.063089, 34.234257, 28.514322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733997, 34.003567, 29.217686>,  <26.591139, 34.593605, 28.885984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733997, 34.003567, 29.217686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058228, 34.034599, 28.985497>,  <27.252766, 34.053219, 28.846184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058228, 34.034599, 28.985497>,  <26.733997, 34.003567, 29.217686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058228, 34.034599, 28.985497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585248, -0.143303, 0.798091,
		-0.021263, -0.986633, -0.161564,
		0.810576, 0.077585, -0.580472,
		27.301401, 34.057877, 28.811356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199480, 33.664249, 29.580301>,  <26.733997, 34.003567, 29.217686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199480, 33.664249, 29.580301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451189, 33.868526, 29.345966>,  <27.602215, 33.991093, 29.205366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451189, 33.868526, 29.345966>,  <27.199480, 33.664249, 29.580301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451189, 33.868526, 29.345966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607874, 0.146261, 0.780447,
		0.484256, -0.847229, -0.218401,
		0.629274, 0.510696, -0.585836,
		27.639971, 34.021736, 29.170216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824692, 33.410168, 29.747358>,  <27.199480, 33.664249, 29.580301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824692, 33.410168, 29.747358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886768, 33.769180, 29.582260>,  <27.924015, 33.984589, 29.483200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886768, 33.769180, 29.582260>,  <27.824692, 33.410168, 29.747358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886768, 33.769180, 29.582260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614031, 0.239659, 0.752018,
		0.773875, -0.370147, -0.513916,
		0.155193, 0.897527, -0.412748,
		27.933327, 34.038437, 29.458435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409351, 33.580170, 30.081480>,  <27.824692, 33.410168, 29.747358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409351, 33.580170, 30.081480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292511, 33.930779, 29.928440>,  <28.222406, 34.141144, 29.836617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292511, 33.930779, 29.928440>,  <28.409351, 33.580170, 30.081480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292511, 33.930779, 29.928440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571779, 0.480733, 0.664804,
		0.766645, -0.024573, -0.641600,
		-0.292102, 0.876523, -0.382602,
		28.204880, 34.193737, 29.813660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983727, 33.906307, 29.894308>,  <28.409351, 33.580170, 30.081480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983727, 33.906307, 29.894308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696383, 34.175129, 29.966200>,  <28.523975, 34.336422, 30.009335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696383, 34.175129, 29.966200>,  <28.983727, 33.906307, 29.894308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696383, 34.175129, 29.966200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582878, 0.440425, 0.682846,
		0.379753, 0.595289, -0.708109,
		-0.718360, 0.672054, 0.179728,
		28.480875, 34.376743, 30.020119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347557, 34.626518, 29.986189>,  <28.983727, 33.906307, 29.894308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347557, 34.626518, 29.986189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988079, 34.705505, 30.142830>,  <28.772392, 34.752895, 30.236814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988079, 34.705505, 30.142830>,  <29.347557, 34.626518, 29.986189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988079, 34.705505, 30.142830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426938, 0.598181, 0.678161,
		-0.100334, 0.776651, -0.621890,
		-0.898697, 0.197466, 0.391600,
		28.718470, 34.764744, 30.260309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333527, 35.418655, 30.162561>,  <29.347557, 34.626518, 29.986189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333527, 35.418655, 30.162561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016827, 35.299931, 30.376118>,  <28.826807, 35.228695, 30.504251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016827, 35.299931, 30.376118>,  <29.333527, 35.418655, 30.162561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016827, 35.299931, 30.376118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219190, 0.677766, 0.701847,
		-0.570167, 0.672710, -0.471562,
		-0.791748, -0.296808, 0.533891,
		28.779303, 35.210888, 30.536285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027393, 36.074570, 30.439438>,  <29.333527, 35.418655, 30.162561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027393, 36.074570, 30.439438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896051, 35.771320, 30.664803>,  <28.817245, 35.589371, 30.800022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896051, 35.771320, 30.664803>,  <29.027393, 36.074570, 30.439438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896051, 35.771320, 30.664803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033733, 0.605517, 0.795117,
		-0.943951, 0.242076, -0.224400,
		-0.328357, -0.758122, 0.563412,
		28.797544, 35.543884, 30.833826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422806, 36.301754, 30.728340>,  <29.027393, 36.074570, 30.439438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422806, 36.301754, 30.728340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544374, 36.015972, 30.980429>,  <28.617315, 35.844501, 31.131681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544374, 36.015972, 30.980429>,  <28.422806, 36.301754, 30.728340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544374, 36.015972, 30.980429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057617, 0.646518, 0.760720,
		-0.950953, -0.267510, 0.155326,
		0.303921, -0.714459, 0.630222,
		28.635551, 35.801636, 31.169495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990589, 36.258228, 31.267954>,  <28.422806, 36.301754, 30.728340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990589, 36.258228, 31.267954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327631, 36.093956, 31.407301>,  <28.529856, 35.995392, 31.490910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327631, 36.093956, 31.407301>,  <27.990589, 36.258228, 31.267954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327631, 36.093956, 31.407301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101377, 0.756272, 0.646355,
		-0.528908, -0.509304, 0.678871,
		0.842603, -0.410684, 0.348367,
		28.580412, 35.970749, 31.511810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932884, 36.267223, 32.036446>,  <27.990589, 36.258228, 31.267954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932884, 36.267223, 32.036446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321112, 36.201996, 31.965557>,  <28.554049, 36.162861, 31.923023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321112, 36.201996, 31.965557>,  <27.932884, 36.267223, 32.036446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321112, 36.201996, 31.965557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238165, 0.759042, 0.605915,
		0.035713, -0.630289, 0.775538,
		0.970568, -0.163067, -0.177221,
		28.612282, 36.153076, 31.912392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188379, 36.045841, 32.718945>,  <27.932884, 36.267223, 32.036446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188379, 36.045841, 32.718945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495771, 36.179699, 32.500790>,  <28.680206, 36.260014, 32.369896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495771, 36.179699, 32.500790>,  <28.188379, 36.045841, 32.718945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495771, 36.179699, 32.500790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167246, 0.717665, 0.676007,
		0.617627, -0.610714, 0.495546,
		0.768483, 0.334642, -0.545389,
		28.726316, 36.280090, 32.337173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541750, 36.271305, 33.184296>,  <28.188379, 36.045841, 32.718945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541750, 36.271305, 33.184296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779755, 36.433453, 32.906696>,  <28.922558, 36.530743, 32.740135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779755, 36.433453, 32.906696>,  <28.541750, 36.271305, 33.184296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779755, 36.433453, 32.906696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121715, 0.808080, 0.576361,
		0.794444, -0.427413, 0.431481,
		0.595015, 0.405369, -0.693997,
		28.958258, 36.555065, 32.698498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251183, 36.334873, 33.458736>,  <28.541750, 36.271305, 33.184296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251183, 36.334873, 33.458736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141760, 36.604313, 33.184090>,  <29.076107, 36.765976, 33.019302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141760, 36.604313, 33.184090>,  <29.251183, 36.334873, 33.458736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141760, 36.604313, 33.184090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094137, 0.729164, 0.677834,
		0.957238, 0.120790, -0.262878,
		-0.273556, 0.673595, -0.686612,
		29.059692, 36.806393, 32.978107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838177, 36.753929, 33.343975>,  <29.251183, 36.334873, 33.458736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838177, 36.753929, 33.343975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527470, 36.977726, 33.228321>,  <29.341045, 37.112003, 33.158928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527470, 36.977726, 33.228321>,  <29.838177, 36.753929, 33.343975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527470, 36.977726, 33.228321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291228, 0.726175, 0.622781,
		0.558406, 0.399551, -0.727009,
		-0.776769, 0.559490, -0.289139,
		29.294439, 37.145573, 33.141579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156355, 37.320824, 33.126411>,  <29.838177, 36.753929, 33.343975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156355, 37.320824, 33.126411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778357, 37.395157, 33.234074>,  <29.551558, 37.439758, 33.298672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778357, 37.395157, 33.234074>,  <30.156355, 37.320824, 33.126411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778357, 37.395157, 33.234074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306759, 0.789101, 0.532182,
		-0.113494, 0.585477, -0.802705,
		-0.944996, 0.185837, 0.269159,
		29.494858, 37.450909, 33.314819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174786, 37.971001, 33.336964>,  <30.156355, 37.320824, 33.126411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174786, 37.971001, 33.336964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807295, 37.902409, 33.479252>,  <29.586802, 37.861252, 33.564625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807295, 37.902409, 33.479252>,  <30.174786, 37.971001, 33.336964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807295, 37.902409, 33.479252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006934, 0.907665, 0.419637,
		-0.394836, 0.383065, -0.835084,
		-0.918726, -0.171479, 0.355722,
		29.531677, 37.850964, 33.585968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756802, 38.133667, 32.822178>,  <30.174786, 37.971001, 33.336964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756802, 38.133667, 32.822178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360220, 38.107712, 32.776905>,  <30.122271, 38.092136, 32.749741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360220, 38.107712, 32.776905>,  <30.756802, 38.133667, 32.822178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360220, 38.107712, 32.776905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122439, -0.163139, -0.978976,
		0.045062, -0.984467, 0.169689,
		-0.991453, -0.064891, -0.113186,
		30.062784, 38.088245, 32.742950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058918, 38.112545, 33.483486>,  <30.756802, 38.133667, 32.822178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058918, 38.112545, 33.483486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074497, 37.716022, 33.533768>,  <31.083845, 37.478111, 33.563938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074497, 37.716022, 33.533768>,  <31.058918, 38.112545, 33.483486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074497, 37.716022, 33.533768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951536, -0.001610, -0.307532,
		0.305060, 0.131590, 0.943198,
		0.038950, -0.991303, 0.125704,
		31.086182, 37.418633, 33.571480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673119, 38.107372, 33.974335>,  <31.058918, 38.112545, 33.483486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673119, 38.107372, 33.974335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568415, 37.781612, 33.767166>,  <31.505592, 37.586159, 33.642864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568415, 37.781612, 33.767166>,  <31.673119, 38.107372, 33.974335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568415, 37.781612, 33.767166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914040, -0.036894, -0.403943,
		0.309862, -0.579136, 0.754047,
		-0.261758, -0.814396, -0.517921,
		31.489887, 37.537292, 33.611790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207279, 37.879333, 33.512135>,  <31.673119, 38.107372, 33.974335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207279, 37.879333, 33.512135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996792, 37.572887, 33.364532>,  <31.870499, 37.389019, 33.275970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996792, 37.572887, 33.364532>,  <32.207279, 37.879333, 33.512135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996792, 37.572887, 33.364532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788957, -0.277969, -0.547978,
		0.317240, -0.579486, 0.750703,
		-0.526218, -0.766112, -0.369007,
		31.838926, 37.343052, 33.253830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513847, 37.174259, 33.594101>,  <32.207279, 37.879333, 33.512135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513847, 37.174259, 33.594101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293087, 37.223412, 33.264179>,  <32.160629, 37.252903, 33.066227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293087, 37.223412, 33.264179>,  <32.513847, 37.174259, 33.594101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293087, 37.223412, 33.264179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833579, 0.109024, -0.541534,
		0.023378, -0.986414, -0.162605,
		-0.551905, 0.122884, -0.824803,
		32.127514, 37.260277, 33.016739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944366, 36.716751, 34.100708>,  <32.513847, 37.174259, 33.594101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944366, 36.716751, 34.100708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691734, 36.436069, 34.232597>,  <32.540154, 36.267662, 34.311733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691734, 36.436069, 34.232597>,  <32.944366, 36.716751, 34.100708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691734, 36.436069, 34.232597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206069, 0.258056, 0.943898,
		-0.747420, 0.664097, -0.018386,
		-0.631585, -0.701699, 0.329726,
		32.502258, 36.225559, 34.331516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598892, 36.666424, 34.555622>,  <32.944366, 36.716751, 34.100708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598892, 36.666424, 34.555622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728577, 36.320679, 34.709381>,  <33.806389, 36.113232, 34.801636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728577, 36.320679, 34.709381>,  <33.598892, 36.666424, 34.555622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728577, 36.320679, 34.709381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153452, 0.449016, 0.880248,
		-0.933455, -0.226401, 0.278215,
		0.324212, -0.864365, 0.384395,
		33.825840, 36.061371, 34.824699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255424, 36.571548, 35.197624>,  <33.598892, 36.666424, 34.555622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255424, 36.571548, 35.197624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576096, 36.332668, 35.207985>,  <33.768497, 36.189342, 35.214203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576096, 36.332668, 35.207985>,  <33.255424, 36.571548, 35.197624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576096, 36.332668, 35.207985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262890, 0.391158, 0.881977,
		-0.536846, -0.700251, 0.470579,
		0.801676, -0.597197, 0.025903,
		33.816597, 36.153511, 35.215755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178822, 36.281048, 35.765667>,  <33.255424, 36.571548, 35.197624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178822, 36.281048, 35.765667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569172, 36.223217, 35.700230>,  <33.803383, 36.188519, 35.660969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569172, 36.223217, 35.700230>,  <33.178822, 36.281048, 35.765667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569172, 36.223217, 35.700230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203606, 0.332217, 0.920965,
		-0.078805, -0.932056, 0.353640,
		0.975876, -0.144580, -0.163591,
		33.861935, 36.179844, 35.651154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387897, 35.974766, 36.322372>,  <33.178822, 36.281048, 35.765667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387897, 35.974766, 36.322372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722321, 36.130833, 36.168083>,  <33.922974, 36.224472, 36.075508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722321, 36.130833, 36.168083>,  <33.387897, 35.974766, 36.322372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722321, 36.130833, 36.168083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165847, 0.490429, 0.855555,
		0.522981, -0.779261, 0.345316,
		0.836054, 0.390170, -0.385722,
		33.973137, 36.247883, 36.052368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892490, 35.954834, 36.849220>,  <33.387897, 35.974766, 36.322372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892490, 35.954834, 36.849220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987896, 36.248199, 36.594593>,  <34.045139, 36.424217, 36.441814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987896, 36.248199, 36.594593>,  <33.892490, 35.954834, 36.849220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987896, 36.248199, 36.594593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110969, 0.630612, 0.768124,
		0.964779, -0.253846, 0.069023,
		0.238512, 0.733411, -0.636570,
		34.059448, 36.468224, 36.403622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440598, 36.345875, 37.177799>,  <33.892490, 35.954834, 36.849220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440598, 36.345875, 37.177799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315372, 36.617054, 36.911755>,  <34.240238, 36.779762, 36.752129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315372, 36.617054, 36.911755>,  <34.440598, 36.345875, 37.177799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315372, 36.617054, 36.911755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133925, 0.724831, 0.675784,
		0.940244, 0.122485, -0.317710,
		-0.313059, 0.677951, -0.665114,
		34.221455, 36.820438, 36.712219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869328, 36.912498, 37.226456>,  <34.440598, 36.345875, 37.177799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869328, 36.912498, 37.226456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549992, 37.091404, 37.065159>,  <34.358391, 37.198750, 36.968380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549992, 37.091404, 37.065159>,  <34.869328, 36.912498, 37.226456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549992, 37.091404, 37.065159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118689, 0.773336, 0.622787,
		0.590394, 0.449336, -0.670472,
		-0.798341, 0.447267, -0.403242,
		34.310490, 37.225586, 36.944187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967125, 37.610390, 37.417469>,  <34.869328, 36.912498, 37.226456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967125, 37.610390, 37.417469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586315, 37.645611, 37.300240>,  <34.357830, 37.666744, 37.229904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586315, 37.645611, 37.300240>,  <34.967125, 37.610390, 37.417469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586315, 37.645611, 37.300240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070284, 0.869188, 0.489461,
		0.297833, 0.486578, -0.821302,
		-0.952027, 0.088053, -0.293072,
		34.300709, 37.672028, 37.212318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940746, 38.165218, 37.158382>,  <34.967125, 37.610390, 37.417469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940746, 38.165218, 37.158382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556217, 38.143608, 37.266407>,  <34.325500, 38.130642, 37.331223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556217, 38.143608, 37.266407>,  <34.940746, 38.165218, 37.158382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556217, 38.143608, 37.266407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103452, 0.837928, 0.535887,
		-0.255241, 0.543100, -0.799934,
		-0.961327, -0.054026, 0.270058,
		34.267818, 38.127399, 37.347424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755657, 38.863281, 37.134357>,  <34.940746, 38.165218, 37.158382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755657, 38.863281, 37.134357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489571, 38.674152, 37.365501>,  <34.329918, 38.560677, 37.504189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489571, 38.674152, 37.365501>,  <34.755657, 38.863281, 37.134357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489571, 38.674152, 37.365501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084132, 0.816479, 0.571212,
		-0.741893, 0.331365, -0.582917,
		-0.665219, -0.472820, 0.577862,
		34.290005, 38.532307, 37.538860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161407, 39.328903, 37.231297>,  <34.755657, 38.863281, 37.134357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161407, 39.328903, 37.231297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184322, 39.085430, 37.547832>,  <34.198071, 38.939346, 37.737755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184322, 39.085430, 37.547832>,  <34.161407, 39.328903, 37.231297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184322, 39.085430, 37.547832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184930, 0.772456, 0.607547,
		-0.981081, -0.181145, -0.068315,
		0.057283, -0.608686, 0.791340,
		34.201508, 38.902824, 37.785236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754921, 39.783966, 37.744041>,  <34.161407, 39.328903, 37.231297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754921, 39.783966, 37.744041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884354, 39.466793, 37.950554>,  <33.962013, 39.276489, 38.074463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884354, 39.466793, 37.950554>,  <33.754921, 39.783966, 37.744041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884354, 39.466793, 37.950554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029557, 0.553842, 0.832097,
		-0.945738, -0.253993, 0.202651,
		0.323584, -0.792935, 0.516283,
		33.981430, 39.228912, 38.105438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256233, 39.655739, 38.331654>,  <33.754921, 39.783966, 37.744041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256233, 39.655739, 38.331654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628628, 39.524258, 38.395172>,  <33.852066, 39.445370, 38.433285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628628, 39.524258, 38.395172>,  <33.256233, 39.655739, 38.331654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628628, 39.524258, 38.395172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002522, 0.429207, 0.903203,
		-0.365041, -0.841271, 0.398757,
		0.930988, -0.328700, 0.158799,
		33.907925, 39.425648, 38.442810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325169, 39.465622, 38.958897>,  <33.256233, 39.655739, 38.331654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325169, 39.465622, 38.958897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712151, 39.529316, 38.880226>,  <33.944340, 39.567532, 38.833023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712151, 39.529316, 38.880226>,  <33.325169, 39.465622, 38.958897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712151, 39.529316, 38.880226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121268, 0.390408, 0.912620,
		0.222107, -0.906766, 0.358390,
		0.967452, 0.159238, -0.196674,
		34.002384, 39.577087, 38.821224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572083, 39.194347, 39.561462>,  <33.325169, 39.465622, 38.958897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572083, 39.194347, 39.561462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825607, 39.471470, 39.423882>,  <33.977722, 39.637741, 39.341331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825607, 39.471470, 39.423882>,  <33.572083, 39.194347, 39.561462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825607, 39.471470, 39.423882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227452, 0.258076, 0.938968,
		0.739286, -0.673365, 0.005993,
		0.633815, 0.692803, -0.343951,
		34.015751, 39.679310, 39.320698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028984, 39.118992, 40.033417>,  <33.572083, 39.194347, 39.561462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028984, 39.118992, 40.033417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124657, 39.455547, 39.839573>,  <34.182060, 39.657482, 39.723267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124657, 39.455547, 39.839573>,  <34.028984, 39.118992, 40.033417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124657, 39.455547, 39.839573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360200, 0.386600, 0.848997,
		0.901691, -0.377624, -0.210601,
		0.239183, 0.841392, -0.484614,
		34.196411, 39.707966, 39.694187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671627, 39.336933, 40.248547>,  <34.028984, 39.118992, 40.033417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671627, 39.336933, 40.248547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519775, 39.677998, 40.104961>,  <34.428665, 39.882637, 40.018810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519775, 39.677998, 40.104961>,  <34.671627, 39.336933, 40.248547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519775, 39.677998, 40.104961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284500, 0.476810, 0.831692,
		0.880307, 0.213609, -0.423592,
		-0.379630, 0.852657, -0.358967,
		34.405888, 39.933796, 39.997272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178795, 39.850761, 40.332951>,  <34.671627, 39.336933, 40.248547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178795, 39.850761, 40.332951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860889, 40.086403, 40.274563>,  <34.670147, 40.227787, 40.239529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860889, 40.086403, 40.274563>,  <35.178795, 39.850761, 40.332951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860889, 40.086403, 40.274563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274287, 0.563187, 0.779479,
		0.541406, 0.579461, -0.609183,
		-0.794762, 0.589106, -0.145974,
		34.622459, 40.263134, 40.230770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511711, 40.550961, 40.381081>,  <35.178795, 39.850761, 40.332951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511711, 40.550961, 40.381081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119839, 40.618855, 40.423809>,  <34.884716, 40.659592, 40.449444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119839, 40.618855, 40.423809>,  <35.511711, 40.550961, 40.381081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119839, 40.618855, 40.423809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187368, 0.584717, 0.789303,
		0.071515, 0.793281, -0.604641,
		-0.979683, 0.169737, 0.106820,
		34.825935, 40.669777, 40.455856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404514, 41.152542, 40.595875>,  <35.511711, 40.550961, 40.381081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404514, 41.152542, 40.595875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051365, 41.019039, 40.728016>,  <34.839474, 40.938938, 40.807301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051365, 41.019039, 40.728016>,  <35.404514, 41.152542, 40.595875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051365, 41.019039, 40.728016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088388, 0.572793, 0.814921,
		-0.461211, 0.748674, -0.476205,
		-0.882877, -0.333760, 0.330352,
		34.786503, 40.918911, 40.827122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001240, 41.852886, 40.892780>,  <35.404514, 41.152542, 40.595875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001240, 41.852886, 40.892780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837223, 41.521870, 41.046165>,  <34.738811, 41.323261, 41.138195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837223, 41.521870, 41.046165>,  <35.001240, 41.852886, 40.892780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837223, 41.521870, 41.046165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031816, 0.433152, 0.900759,
		-0.911512, 0.357148, -0.203939,
		-0.410041, -0.827541, 0.383460,
		34.714211, 41.273609, 41.161205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406937, 42.056713, 41.279819>,  <35.001240, 41.852886, 40.892780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406937, 42.056713, 41.279819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483360, 41.686333, 41.410118>,  <34.529213, 41.464104, 41.488297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483360, 41.686333, 41.410118>,  <34.406937, 42.056713, 41.279819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483360, 41.686333, 41.410118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041798, 0.339236, 0.939772,
		-0.980688, -0.165938, 0.103517,
		0.191060, -0.925950, 0.325749,
		34.540680, 41.408546, 41.507843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946617, 42.058903, 41.714348>,  <34.406937, 42.056713, 41.279819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946617, 42.058903, 41.714348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215031, 41.776287, 41.804256>,  <34.376080, 41.606720, 41.858200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215031, 41.776287, 41.804256>,  <33.946617, 42.058903, 41.714348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215031, 41.776287, 41.804256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003856, 0.299826, 0.953986,
		-0.741418, -0.641022, 0.198468,
		0.671032, -0.706537, 0.224768,
		34.416340, 41.564327, 41.871685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770298, 41.756504, 42.361286>,  <33.946617, 42.058903, 41.714348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770298, 41.756504, 42.361286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162445, 41.678749, 42.348022>,  <34.397732, 41.632095, 42.340065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162445, 41.678749, 42.348022>,  <33.770298, 41.756504, 42.361286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162445, 41.678749, 42.348022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085691, 0.268519, 0.959455,
		-0.177603, -0.943457, 0.279904,
		0.980365, -0.194387, -0.033156,
		34.456554, 41.620434, 42.338078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898350, 41.326385, 42.997604>,  <33.770298, 41.756504, 42.361286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898350, 41.326385, 42.997604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240314, 41.490543, 42.870670>,  <34.445492, 41.589039, 42.794510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240314, 41.490543, 42.870670>,  <33.898350, 41.326385, 42.997604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240314, 41.490543, 42.870670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138112, 0.409573, 0.901762,
		0.500055, -0.814753, 0.293467,
		0.854910, 0.410399, -0.317337,
		34.496788, 41.613663, 42.775471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318623, 41.445740, 43.648796>,  <33.898350, 41.326385, 42.997604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318623, 41.445740, 43.648796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502029, 41.663048, 43.367477>,  <34.612072, 41.793430, 43.198689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502029, 41.663048, 43.367477>,  <34.318623, 41.445740, 43.648796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502029, 41.663048, 43.367477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322081, 0.635995, 0.701266,
		0.828267, -0.548060, 0.116638,
		0.458517, 0.543268, -0.703293,
		34.639584, 41.826027, 43.156490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031406, 41.569084, 43.877300>,  <34.318623, 41.445740, 43.648796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031406, 41.569084, 43.877300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959927, 41.845463, 43.597115>,  <34.917038, 42.011292, 43.429001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959927, 41.845463, 43.597115>,  <35.031406, 41.569084, 43.877300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959927, 41.845463, 43.597115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513232, 0.672860, 0.532778,
		0.839439, -0.264294, -0.474859,
		-0.178704, 0.690947, -0.700469,
		34.906315, 42.052746, 43.386974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735744, 41.959431, 43.700115>,  <35.031406, 41.569084, 43.877300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735744, 41.959431, 43.700115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414963, 42.185894, 43.623859>,  <35.222496, 42.321770, 43.578106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414963, 42.185894, 43.623859>,  <35.735744, 41.959431, 43.700115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414963, 42.185894, 43.623859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327844, 0.683870, 0.651798,
		0.499394, 0.460209, -0.734040,
		-0.801951, 0.566154, -0.190644,
		35.174377, 42.355740, 43.566666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914059, 42.744549, 43.612106>,  <35.735744, 41.959431, 43.700115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914059, 42.744549, 43.612106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522701, 42.783253, 43.685188>,  <35.287888, 42.806473, 43.729038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522701, 42.783253, 43.685188>,  <35.914059, 42.744549, 43.612106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522701, 42.783253, 43.685188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196428, 0.710723, 0.675492,
		-0.064497, 0.696786, -0.714373,
		-0.978395, 0.096756, 0.182708,
		35.229183, 42.812279, 43.740002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866192, 43.413536, 43.634357>,  <35.914059, 42.744549, 43.612106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866192, 43.413536, 43.634357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531452, 43.286747, 43.812893>,  <35.330608, 43.210674, 43.920013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531452, 43.286747, 43.812893>,  <35.866192, 43.413536, 43.634357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531452, 43.286747, 43.812893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177425, 0.614273, 0.768888,
		-0.517891, 0.722632, -0.457812,
		-0.836845, -0.316973, 0.446339,
		35.280399, 43.191654, 43.946796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719612, 43.984543, 44.046535>,  <35.866192, 43.413536, 43.634357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719612, 43.984543, 44.046535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479504, 43.710392, 44.211426>,  <35.335438, 43.545902, 44.310360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479504, 43.710392, 44.211426>,  <35.719612, 43.984543, 44.046535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479504, 43.710392, 44.211426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010555, 0.522152, 0.852787,
		-0.799727, 0.507553, -0.320667,
		-0.600272, -0.685381, 0.412222,
		35.299423, 43.504776, 44.335091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094910, 44.328671, 44.431683>,  <35.719612, 43.984543, 44.046535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094910, 44.328671, 44.431683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175034, 43.970390, 44.590473>,  <35.223110, 43.755421, 44.685749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175034, 43.970390, 44.590473>,  <35.094910, 44.328671, 44.431683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175034, 43.970390, 44.590473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029227, 0.410473, 0.911404,
		-0.979296, -0.170965, 0.108402,
		0.200314, -0.895703, 0.396978,
		35.235126, 43.701679, 44.709568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031719, 44.484173, 45.067001>,  <35.094910, 44.328671, 44.431683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031719, 44.484173, 45.067001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157429, 44.109077, 45.126160>,  <35.232853, 43.884018, 45.161655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157429, 44.109077, 45.126160>,  <35.031719, 44.484173, 45.067001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157429, 44.109077, 45.126160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112087, 0.191349, 0.975101,
		-0.942693, -0.289869, 0.165244,
		0.314270, -0.937743, 0.147893,
		35.251709, 43.827755, 45.170528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632469, 44.103542, 45.590878>,  <35.031719, 44.484173, 45.067001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632469, 44.103542, 45.590878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006470, 43.962269, 45.578011>,  <35.230869, 43.877502, 45.570290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006470, 43.962269, 45.578011>,  <34.632469, 44.103542, 45.590878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006470, 43.962269, 45.578011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083780, 0.131835, 0.987725,
		-0.344611, -0.926217, 0.152856,
		0.935000, -0.353187, -0.032166,
		35.286968, 43.856312, 45.568359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656960, 43.858250, 46.200916>,  <34.632469, 44.103542, 45.590878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656960, 43.858250, 46.200916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038467, 43.853275, 46.080803>,  <35.267372, 43.850292, 46.008736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038467, 43.853275, 46.080803>,  <34.656960, 43.858250, 46.200916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038467, 43.853275, 46.080803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300077, 0.094793, 0.949193,
		0.016659, -0.995420, 0.094143,
		0.953769, -0.012437, -0.300282,
		35.324596, 43.849545, 45.990719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881054, 43.313515, 46.583614>,  <34.656960, 43.858250, 46.200916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881054, 43.313515, 46.583614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188751, 43.546146, 46.477760>,  <35.373371, 43.685726, 46.414249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188751, 43.546146, 46.477760>,  <34.881054, 43.313515, 46.583614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188751, 43.546146, 46.477760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324790, 0.000762, 0.945786,
		0.550248, -0.813492, -0.188304,
		0.769245, 0.581576, -0.264633,
		35.419525, 43.720619, 46.398369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593983, 42.968899, 46.868214>,  <34.881054, 43.313515, 46.583614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593983, 42.968899, 46.868214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631054, 43.360172, 46.793839>,  <35.653297, 43.594936, 46.749214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631054, 43.360172, 46.793839>,  <35.593983, 42.968899, 46.868214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631054, 43.360172, 46.793839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367798, 0.139901, 0.919321,
		0.925276, -0.153587, -0.346808,
		0.092677, 0.978181, -0.185936,
		35.658855, 43.653625, 46.738056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180054, 43.031055, 47.137634>,  <35.593983, 42.968899, 46.868214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180054, 43.031055, 47.137634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065273, 43.411835, 47.094822>,  <35.996403, 43.640301, 47.069134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065273, 43.411835, 47.094822>,  <36.180054, 43.031055, 47.137634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065273, 43.411835, 47.094822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281729, 0.190651, 0.940362,
		0.915580, 0.239687, -0.322899,
		-0.286953, 0.951947, -0.107030,
		35.979187, 43.697418, 47.062714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681213, 43.428307, 47.477211>,  <36.180054, 43.031055, 47.137634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681213, 43.428307, 47.477211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344933, 43.644901, 47.478558>,  <36.143166, 43.774860, 47.479366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344933, 43.644901, 47.478558>,  <36.681213, 43.428307, 47.477211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344933, 43.644901, 47.478558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039528, 0.055171, 0.997694,
		0.540057, 0.838894, -0.067786,
		-0.840700, 0.541491, 0.003364,
		36.092724, 43.807350, 47.479568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760262, 44.058167, 47.912701>,  <36.681213, 43.428307, 47.477211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760262, 44.058167, 47.912701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364445, 44.000599, 47.908672>,  <36.126957, 43.966057, 47.906254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364445, 44.000599, 47.908672>,  <36.760262, 44.058167, 47.912701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364445, 44.000599, 47.908672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009743, -0.002981, 0.999948,
		-0.143942, 0.989585, 0.001547,
		-0.989538, -0.143920, -0.010071,
		36.067585, 43.957424, 47.905651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620579, 44.299225, 48.536251>,  <36.760262, 44.058167, 47.912701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620579, 44.299225, 48.536251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279087, 44.117302, 48.434814>,  <36.074192, 44.008148, 48.373955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279087, 44.117302, 48.434814>,  <36.620579, 44.299225, 48.536251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279087, 44.117302, 48.434814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223009, -0.120733, 0.967311,
		-0.470552, 0.882371, 0.001648,
		-0.853726, -0.454803, -0.253588,
		36.022968, 43.980862, 48.358738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091663, 44.587990, 48.943985>,  <36.620579, 44.299225, 48.536251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091663, 44.587990, 48.943985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965122, 44.223888, 48.837132>,  <35.889198, 44.005428, 48.773018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965122, 44.223888, 48.837132>,  <36.091663, 44.587990, 48.943985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965122, 44.223888, 48.837132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414917, -0.120471, 0.901848,
		-0.853092, 0.396140, -0.339569,
		-0.316350, -0.910253, -0.267138,
		35.870216, 43.950813, 48.756989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324081, 44.531921, 49.051727>,  <36.091663, 44.587990, 48.943985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324081, 44.531921, 49.051727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486916, 44.167198, 49.073193>,  <35.584618, 43.948364, 49.086071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486916, 44.167198, 49.073193>,  <35.324081, 44.531921, 49.051727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486916, 44.167198, 49.073193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410761, -0.130276, 0.902388,
		-0.815816, -0.389393, -0.427571,
		0.407086, -0.911812, 0.053666,
		35.609043, 43.893654, 49.089291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830811, 44.040783, 49.206001>,  <35.324081, 44.531921, 49.051727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830811, 44.040783, 49.206001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195499, 43.950184, 49.343098>,  <35.414310, 43.895824, 49.425354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195499, 43.950184, 49.343098>,  <34.830811, 44.040783, 49.206001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195499, 43.950184, 49.343098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381752, -0.158891, 0.910505,
		-0.151697, -0.960983, -0.231302,
		0.911731, -0.226420, 0.342754,
		35.469013, 43.882236, 49.445919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683186, 44.378807, 49.747601>,  <34.830811, 44.040783, 49.206001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683186, 44.378807, 49.747601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343109, 44.587543, 49.719700>,  <34.139065, 44.712784, 49.702957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343109, 44.587543, 49.719700>,  <34.683186, 44.378807, 49.747601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343109, 44.587543, 49.719700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399996, -0.554088, 0.730061,
		0.342324, 0.648590, 0.679813,
		-0.850186, 0.521840, -0.069756,
		34.088055, 44.744095, 49.698772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363667, 44.743340, 50.419334>,  <34.683186, 44.378807, 49.747601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363667, 44.743340, 50.419334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071545, 44.614792, 50.178211>,  <33.896271, 44.537663, 50.033539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071545, 44.614792, 50.178211>,  <34.363667, 44.743340, 50.419334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071545, 44.614792, 50.178211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444538, -0.446445, 0.776578,
		-0.518689, 0.835109, 0.183180,
		-0.730307, -0.321371, -0.602803,
		33.852451, 44.518379, 49.997372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041603, 44.452465, 50.908443>,  <34.363667, 44.743340, 50.419334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041603, 44.452465, 50.908443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798702, 44.345772, 50.609085>,  <33.652962, 44.281757, 50.429470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798702, 44.345772, 50.609085>,  <34.041603, 44.452465, 50.908443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798702, 44.345772, 50.609085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536075, -0.557683, 0.633730,
		-0.586404, 0.786031, 0.195666,
		-0.607251, -0.266730, -0.748399,
		33.616528, 44.265755, 50.384563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758125, 44.243916, 51.001419>,  <34.041603, 44.452465, 50.908443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758125, 44.243916, 51.001419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782078, 44.072742, 51.362148>,  <34.796448, 43.970039, 51.578587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782078, 44.072742, 51.362148>,  <34.758125, 44.243916, 51.001419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782078, 44.072742, 51.362148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106764, 0.901009, 0.420457,
		-0.992480, 0.071105, 0.099641,
		0.059880, -0.427933, 0.901824,
		34.800041, 43.944363, 51.632694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213100, 43.739254, 50.594215>,  <34.758125, 44.243916, 51.001419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213100, 43.739254, 50.594215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961914, 43.436562, 50.666889>,  <34.811203, 43.254944, 50.710495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961914, 43.436562, 50.666889>,  <35.213100, 43.739254, 50.594215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961914, 43.436562, 50.666889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377628, -0.500426, -0.779084,
		0.680479, -0.420630, 0.600015,
		-0.627969, -0.756733, 0.181688,
		34.773521, 43.209541, 50.721394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510811, 43.127731, 50.511280>,  <35.213100, 43.739254, 50.594215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510811, 43.127731, 50.511280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143009, 42.974644, 50.475426>,  <34.922329, 42.882790, 50.453915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143009, 42.974644, 50.475426>,  <35.510811, 43.127731, 50.511280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143009, 42.974644, 50.475426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313688, -0.577055, -0.754060,
		0.236870, -0.721480, 0.650660,
		-0.919506, -0.382718, -0.089633,
		34.867157, 42.859829, 50.448536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506824, 42.335171, 50.508106>,  <35.510811, 43.127731, 50.511280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506824, 42.335171, 50.508106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202873, 42.510925, 50.316471>,  <35.020504, 42.616379, 50.201492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202873, 42.510925, 50.316471>,  <35.506824, 42.335171, 50.508106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202873, 42.510925, 50.316471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196792, -0.546917, -0.813729,
		-0.619561, -0.712616, 0.329124,
		-0.759880, 0.439386, -0.479086,
		34.974911, 42.642742, 50.172745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941311, 41.940331, 50.375126>,  <35.506824, 42.335171, 50.508106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941311, 41.940331, 50.375126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959026, 42.206676, 50.077225>,  <34.969654, 42.366486, 49.898483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959026, 42.206676, 50.077225>,  <34.941311, 41.940331, 50.375126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959026, 42.206676, 50.077225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091666, -0.745049, -0.660681,
		-0.994805, -0.039010, -0.094033,
		0.044286, 0.665868, -0.744754,
		34.972313, 42.406437, 49.853798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580898, 41.598633, 49.783031>,  <34.941311, 41.940331, 50.375126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580898, 41.598633, 49.783031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795319, 41.903431, 49.637699>,  <34.923973, 42.086311, 49.550499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795319, 41.903431, 49.637699>,  <34.580898, 41.598633, 49.783031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795319, 41.903431, 49.637699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174898, -0.521299, -0.835260,
		-0.825867, 0.384201, -0.412716,
		0.536056, 0.761996, -0.363327,
		34.956135, 42.132030, 49.528702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267952, 41.590061, 49.124973>,  <34.580898, 41.598633, 49.783031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267952, 41.590061, 49.124973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627510, 41.763462, 49.099472>,  <34.843246, 41.867504, 49.084171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627510, 41.763462, 49.099472>,  <34.267952, 41.590061, 49.124973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627510, 41.763462, 49.099472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120452, -0.384370, -0.915287,
		-0.421284, 0.815068, -0.397725,
		0.898894, 0.433502, -0.063752,
		34.897179, 41.893513, 49.080345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175091, 41.953201, 48.527641>,  <34.267952, 41.590061, 49.124973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175091, 41.953201, 48.527641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567791, 41.907856, 48.588718>,  <34.803410, 41.880650, 48.625366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567791, 41.907856, 48.588718>,  <34.175091, 41.953201, 48.527641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567791, 41.907856, 48.588718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115859, -0.280181, -0.952930,
		0.150812, 0.953230, -0.261933,
		0.981750, -0.113366, 0.152695,
		34.862316, 41.873848, 48.634525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594105, 42.290703, 48.050964>,  <34.175091, 41.953201, 48.527641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594105, 42.290703, 48.050964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863811, 42.021931, 48.173515>,  <35.025635, 41.860668, 48.247047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863811, 42.021931, 48.173515>,  <34.594105, 42.290703, 48.050964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863811, 42.021931, 48.173515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229182, -0.203993, -0.951768,
		0.702022, 0.711966, 0.016448,
		0.674271, -0.671931, 0.306378,
		35.066093, 41.820351, 48.265430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062408, 42.288994, 47.487877>,  <34.594105, 42.290703, 48.050964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062408, 42.288994, 47.487877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196033, 41.978523, 47.701775>,  <35.276207, 41.792240, 47.830112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196033, 41.978523, 47.701775>,  <35.062408, 42.288994, 47.487877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196033, 41.978523, 47.701775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385744, -0.405069, -0.828927,
		0.860003, 0.483187, 0.164088,
		0.334059, -0.776176, 0.534748,
		35.296253, 41.745670, 47.862198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809834, 42.235420, 47.302399>,  <35.062408, 42.288994, 47.487877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809834, 42.235420, 47.302399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655563, 41.888180, 47.427395>,  <35.563000, 41.679836, 47.502392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655563, 41.888180, 47.427395>,  <35.809834, 42.235420, 47.302399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655563, 41.888180, 47.427395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293399, -0.436514, -0.850513,
		0.874740, -0.236338, 0.423054,
		-0.385677, -0.868102, 0.312495,
		35.539860, 41.627750, 47.521145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275162, 41.722809, 47.113369>,  <35.809834, 42.235420, 47.302399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275162, 41.722809, 47.113369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943325, 41.508007, 47.174572>,  <35.744225, 41.379128, 47.211296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943325, 41.508007, 47.174572>,  <36.275162, 41.722809, 47.113369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943325, 41.508007, 47.174572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284346, -0.642121, -0.711918,
		0.480552, -0.547092, 0.685391,
		-0.829589, -0.537002, 0.153009,
		35.694450, 41.346905, 47.220474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455818, 41.025398, 47.236786>,  <36.275162, 41.722809, 47.113369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455818, 41.025398, 47.236786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074516, 41.003750, 47.117874>,  <35.845734, 40.990761, 47.046528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074516, 41.003750, 47.117874>,  <36.455818, 41.025398, 47.236786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074516, 41.003750, 47.117874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274408, -0.566962, -0.776695,
		-0.126511, -0.821964, 0.555310,
		-0.953255, -0.054121, -0.297280,
		35.788540, 40.987514, 47.028690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372658, 40.320919, 47.079689>,  <36.455818, 41.025398, 47.236786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372658, 40.320919, 47.079689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087940, 40.528549, 46.890411>,  <35.917110, 40.653126, 46.776844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087940, 40.528549, 46.890411>,  <36.372658, 40.320919, 47.079689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087940, 40.528549, 46.890411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209108, -0.486547, -0.848261,
		-0.670544, -0.702733, 0.237776,
		-0.711789, 0.519075, -0.473198,
		35.874405, 40.684273, 46.748451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120892, 39.835033, 46.597687>,  <36.372658, 40.320919, 47.079689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120892, 39.835033, 46.597687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971973, 40.174038, 46.446362>,  <35.882622, 40.377441, 46.355568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971973, 40.174038, 46.446362>,  <36.120892, 39.835033, 46.597687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971973, 40.174038, 46.446362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133596, -0.354430, -0.925490,
		-0.918447, -0.395100, 0.018730,
		-0.372300, 0.847511, -0.378309,
		35.860283, 40.428291, 46.332870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745304, 39.622818, 46.040703>,  <36.120892, 39.835033, 46.597687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745304, 39.622818, 46.040703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785961, 40.014534, 45.970654>,  <35.810356, 40.249561, 45.928623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785961, 40.014534, 45.970654>,  <35.745304, 39.622818, 46.040703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785961, 40.014534, 45.970654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274164, -0.196795, -0.941332,
		-0.956297, 0.047664, -0.288487,
		0.101640, 0.979286, -0.175126,
		35.816452, 40.308319, 45.918118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381157, 39.823528, 45.424198>,  <35.745304, 39.622818, 46.040703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381157, 39.823528, 45.424198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654949, 40.113956, 45.450443>,  <35.819225, 40.288212, 45.466190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654949, 40.113956, 45.450443>,  <35.381157, 39.823528, 45.424198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654949, 40.113956, 45.450443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237812, -0.137299, -0.961558,
		-0.689149, 0.673775, -0.266647,
		0.684485, 0.726069, 0.065612,
		35.860294, 40.331776, 45.470127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348858, 40.197113, 44.832710>,  <35.381157, 39.823528, 45.424198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348858, 40.197113, 44.832710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713257, 40.288410, 44.970112>,  <35.931896, 40.343189, 45.052551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713257, 40.288410, 44.970112>,  <35.348858, 40.197113, 44.832710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713257, 40.288410, 44.970112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357937, -0.023825, -0.933442,
		-0.204871, 0.973312, -0.103403,
		0.910993, 0.228247, 0.343503,
		35.986553, 40.356884, 45.073162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643124, 40.744488, 44.310192>,  <35.348858, 40.197113, 44.832710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643124, 40.744488, 44.310192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934711, 40.565437, 44.517357>,  <36.109665, 40.458008, 44.641655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934711, 40.565437, 44.517357>,  <35.643124, 40.744488, 44.310192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934711, 40.565437, 44.517357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614675, 0.095031, -0.783035,
		0.301288, 0.889157, 0.344419,
		0.728972, -0.447625, 0.517911,
		36.153404, 40.431149, 44.672729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337238, 41.152203, 44.264828>,  <35.643124, 40.744488, 44.310192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337238, 41.152203, 44.264828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401077, 40.766354, 44.348766>,  <36.439381, 40.534843, 44.399132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401077, 40.766354, 44.348766>,  <36.337238, 41.152203, 44.264828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401077, 40.766354, 44.348766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433023, -0.122626, -0.893003,
		0.887142, 0.233391, 0.398132,
		0.159597, -0.964620, 0.209850,
		36.448956, 40.476967, 44.411720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074120, 41.071171, 44.101963>,  <36.337238, 41.152203, 44.264828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074120, 41.071171, 44.101963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894157, 40.714436, 44.083176>,  <36.786179, 40.500393, 44.071903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894157, 40.714436, 44.083176>,  <37.074120, 41.071171, 44.101963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894157, 40.714436, 44.083176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373955, -0.140373, -0.916762,
		0.811013, -0.430019, 0.396662,
		-0.449906, -0.891840, -0.046964,
		36.759186, 40.446884, 44.069088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427780, 40.785130, 43.626724>,  <37.074120, 41.071171, 44.101963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427780, 40.785130, 43.626724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113403, 40.540443, 43.662701>,  <36.924778, 40.393631, 43.684288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113403, 40.540443, 43.662701>,  <37.427780, 40.785130, 43.626724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113403, 40.540443, 43.662701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245616, -0.442390, -0.862533,
		0.567416, -0.655814, 0.497943,
		-0.785946, -0.611718, 0.089941,
		36.877621, 40.356930, 43.689682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669144, 40.054348, 43.514694>,  <37.427780, 40.785130, 43.626724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669144, 40.054348, 43.514694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279858, 40.066841, 43.423595>,  <37.046284, 40.074337, 43.368938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279858, 40.066841, 43.423595>,  <37.669144, 40.054348, 43.514694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279858, 40.066841, 43.423595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164431, -0.597734, -0.784650,
		-0.160641, -0.801085, 0.576591,
		-0.973220, 0.031237, -0.227744,
		36.987892, 40.076214, 43.355270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571213, 39.365246, 43.258430>,  <37.669144, 40.054348, 43.514694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571213, 39.365246, 43.258430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254635, 39.575661, 43.133919>,  <37.064686, 39.701908, 43.059212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254635, 39.575661, 43.133919>,  <37.571213, 39.365246, 43.258430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254635, 39.575661, 43.133919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018563, -0.529716, -0.847972,
		-0.610953, -0.665349, 0.429008,
		-0.791449, 0.526035, -0.311281,
		37.017200, 39.733471, 43.040535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096054, 38.918568, 42.939110>,  <37.571213, 39.365246, 43.258430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096054, 38.918568, 42.939110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945599, 39.256344, 42.786556>,  <36.855328, 39.459007, 42.695026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945599, 39.256344, 42.786556>,  <37.096054, 38.918568, 42.939110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945599, 39.256344, 42.786556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033183, -0.399065, -0.916322,
		-0.925971, -0.357316, 0.122081,
		-0.376135, 0.844436, -0.381379,
		36.832760, 39.509674, 42.672142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508423, 38.710468, 42.541142>,  <37.096054, 38.918568, 42.939110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508423, 38.710468, 42.541142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585941, 39.070992, 42.386177>,  <36.632450, 39.287304, 42.293198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585941, 39.070992, 42.386177>,  <36.508423, 38.710468, 42.541142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585941, 39.070992, 42.386177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175091, -0.356781, -0.917633,
		-0.965291, 0.245664, 0.088669,
		0.193794, 0.901308, -0.387411,
		36.644081, 39.341385, 42.269955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930515, 38.912212, 42.009888>,  <36.508423, 38.710468, 42.541142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930515, 38.912212, 42.009888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256969, 39.126198, 41.922493>,  <36.452843, 39.254589, 41.870056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256969, 39.126198, 41.922493>,  <35.930515, 38.912212, 42.009888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256969, 39.126198, 41.922493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059579, -0.298175, -0.952650,
		-0.574783, 0.790507, -0.211478,
		0.816134, 0.534967, -0.218484,
		36.501808, 39.286690, 41.856949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732712, 39.251598, 41.410271>,  <35.930515, 38.912212, 42.009888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732712, 39.251598, 41.410271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131439, 39.253586, 41.442089>,  <36.370674, 39.254780, 41.461182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131439, 39.253586, 41.442089>,  <35.732712, 39.251598, 41.410271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131439, 39.253586, 41.442089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062480, -0.668397, -0.741176,
		0.049487, 0.743788, -0.666581,
		0.996819, 0.004969, 0.079549,
		36.430485, 39.255077, 41.465954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038754, 39.488125, 40.826256>,  <35.732712, 39.251598, 41.410271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038754, 39.488125, 40.826256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279415, 39.228878, 41.013000>,  <36.423813, 39.073330, 41.125046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279415, 39.228878, 41.013000>,  <36.038754, 39.488125, 40.826256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279415, 39.228878, 41.013000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002312, -0.585898, -0.810382,
		0.798752, 0.486491, -0.354007,
		0.601655, -0.648113, 0.466863,
		36.459911, 39.034443, 41.153061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587246, 39.379261, 40.316277>,  <36.038754, 39.488125, 40.826256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587246, 39.379261, 40.316277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635532, 39.073288, 40.569355>,  <36.664505, 38.889706, 40.721203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635532, 39.073288, 40.569355>,  <36.587246, 39.379261, 40.316277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635532, 39.073288, 40.569355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176722, -0.610618, -0.771955,
		0.976830, 0.204999, 0.061469,
		0.120716, -0.764932, 0.632698,
		36.671745, 38.843807, 40.759163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193020, 39.089020, 40.117958>,  <36.587246, 39.379261, 40.316277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193020, 39.089020, 40.117958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016624, 38.796726, 40.326401>,  <36.910789, 38.621349, 40.451466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016624, 38.796726, 40.326401>,  <37.193020, 39.089020, 40.117958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016624, 38.796726, 40.326401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229127, -0.653036, -0.721834,
		0.867774, -0.198919, 0.455411,
		-0.440986, -0.730736, 0.521110,
		36.884327, 38.577507, 40.482735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649265, 38.476860, 40.101360>,  <37.193020, 39.089020, 40.117958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649265, 38.476860, 40.101360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293095, 38.315678, 40.185997>,  <37.079391, 38.218967, 40.236778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293095, 38.315678, 40.185997>,  <37.649265, 38.476860, 40.101360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293095, 38.315678, 40.185997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172927, -0.729572, -0.661681,
		0.421002, -0.552585, 0.719310,
		-0.890423, -0.402957, 0.211595,
		37.025967, 38.194790, 40.249474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761555, 37.729156, 40.093002>,  <37.649265, 38.476860, 40.101360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761555, 37.729156, 40.093002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361900, 37.745441, 40.096176>,  <37.122108, 37.755215, 40.098080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361900, 37.745441, 40.096176>,  <37.761555, 37.729156, 40.093002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361900, 37.745441, 40.096176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038588, -0.841993, -0.538107,
		-0.015225, -0.537950, 0.842839,
		-0.999139, 0.040716, 0.007939,
		37.062157, 37.757656, 40.098557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512970, 37.015831, 40.236671>,  <37.761555, 37.729156, 40.093002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512970, 37.015831, 40.236671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214054, 37.223286, 40.070503>,  <37.034706, 37.347759, 39.970802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214054, 37.223286, 40.070503>,  <37.512970, 37.015831, 40.236671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214054, 37.223286, 40.070503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292253, -0.817975, -0.495484,
		-0.596782, -0.248862, 0.762837,
		-0.747288, 0.518637, -0.415422,
		36.989868, 37.378876, 39.945877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852531, 36.651993, 40.365345>,  <37.512970, 37.015831, 40.236671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852531, 36.651993, 40.365345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786213, 36.882069, 40.044930>,  <36.746422, 37.020115, 39.852680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786213, 36.882069, 40.044930>,  <36.852531, 36.651993, 40.365345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786213, 36.882069, 40.044930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307500, -0.801938, -0.512189,
		-0.936992, 0.161400, 0.309832,
		-0.165798, 0.575191, -0.801041,
		36.736473, 37.054626, 39.804619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193127, 36.524635, 40.231907>,  <36.852531, 36.651993, 40.365345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193127, 36.524635, 40.231907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348202, 36.684334, 39.899570>,  <36.441246, 36.780151, 39.700169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348202, 36.684334, 39.899570>,  <36.193127, 36.524635, 40.231907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348202, 36.684334, 39.899570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362198, -0.762861, -0.535589,
		-0.847649, 0.508572, -0.151148,
		0.387690, 0.399247, -0.830842,
		36.464508, 36.804108, 39.650318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704090, 36.261131, 39.800514>,  <36.193127, 36.524635, 40.231907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704090, 36.261131, 39.800514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005909, 36.391594, 39.572735>,  <36.187000, 36.469872, 39.436066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005909, 36.391594, 39.572735>,  <35.704090, 36.261131, 39.800514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005909, 36.391594, 39.572735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341937, -0.545234, -0.765375,
		-0.560117, 0.772231, -0.299881,
		0.754551, 0.326159, -0.569449,
		36.232273, 36.489441, 39.401901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456982, 36.442844, 39.106167>,  <35.704090, 36.261131, 39.800514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456982, 36.442844, 39.106167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840363, 36.343208, 39.050560>,  <36.070393, 36.283428, 39.017197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840363, 36.343208, 39.050560>,  <35.456982, 36.442844, 39.106167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840363, 36.343208, 39.050560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266067, -0.604926, -0.750515,
		0.102853, 0.756320, -0.646067,
		0.958452, -0.249090, -0.139013,
		36.127899, 36.268482, 39.008858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442295, 36.484619, 38.385830>,  <35.456982, 36.442844, 39.106167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442295, 36.484619, 38.385830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770550, 36.276848, 38.481113>,  <35.967503, 36.152184, 38.538284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770550, 36.276848, 38.481113>,  <35.442295, 36.484619, 38.385830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770550, 36.276848, 38.481113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273717, -0.723220, -0.634060,
		0.501627, 0.455134, -0.735680,
		0.820640, -0.519430, 0.238208,
		36.016743, 36.121017, 38.552574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573689, 36.158939, 37.824680>,  <35.442295, 36.484619, 38.385830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573689, 36.158939, 37.824680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787712, 35.926586, 38.070053>,  <35.916126, 35.787174, 38.217278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787712, 35.926586, 38.070053>,  <35.573689, 36.158939, 37.824680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787712, 35.926586, 38.070053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210851, -0.794948, -0.568858,
		0.818081, 0.175029, -0.547821,
		0.535056, -0.580881, 0.613427,
		35.948227, 35.752323, 38.254082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135971, 35.961296, 37.453339>,  <35.573689, 36.158939, 37.824680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135971, 35.961296, 37.453339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094803, 35.685390, 37.740013>,  <36.070103, 35.519848, 37.912018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094803, 35.685390, 37.740013>,  <36.135971, 35.961296, 37.453339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094803, 35.685390, 37.740013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268412, -0.713038, -0.647713,
		0.957791, 0.125706, 0.258524,
		-0.102916, -0.689764, 0.716682,
		36.063927, 35.478462, 37.955017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628910, 35.355637, 37.259529>,  <36.135971, 35.961296, 37.453339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628910, 35.355637, 37.259529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383686, 35.205139, 37.537403>,  <36.236549, 35.114841, 37.704128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383686, 35.205139, 37.537403>,  <36.628910, 35.355637, 37.259529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383686, 35.205139, 37.537403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127068, -0.820905, -0.556747,
		0.779748, -0.429594, 0.455459,
		-0.613064, -0.376248, 0.694687,
		36.199768, 35.092266, 37.745808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800117, 34.660862, 37.246960>,  <36.628910, 35.355637, 37.259529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800117, 34.660862, 37.246960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445564, 34.661079, 37.432140>,  <36.232834, 34.661209, 37.543247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445564, 34.661079, 37.432140>,  <36.800117, 34.660862, 37.246960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445564, 34.661079, 37.432140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217933, -0.882756, -0.416230,
		0.408446, -0.469832, 0.782579,
		-0.886384, 0.000542, 0.462950,
		36.179649, 34.661243, 37.571026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683739, 34.017403, 37.750389>,  <36.800117, 34.660862, 37.246960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683739, 34.017403, 37.750389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337021, 34.166119, 37.617455>,  <36.128990, 34.255348, 37.537693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337021, 34.166119, 37.617455>,  <36.683739, 34.017403, 37.750389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337021, 34.166119, 37.617455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259052, -0.905173, -0.336977,
		-0.426105, -0.205996, 0.880909,
		-0.866791, 0.371789, -0.332335,
		36.076984, 34.277657, 37.517754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418922, 34.252041, 37.786510>,  <36.683739, 34.017403, 37.750389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418922, 34.252041, 37.786510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790863, 34.160892, 37.670956>,  <38.014027, 34.106205, 37.601624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790863, 34.160892, 37.670956>,  <37.418922, 34.252041, 37.786510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790863, 34.160892, 37.670956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350124, 0.306648, 0.885088,
		-0.113101, -0.924144, 0.364920,
		0.929850, -0.227872, -0.288882,
		38.069817, 34.092529, 37.584290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820480, 33.897430, 38.361183>,  <37.418922, 34.252041, 37.786510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820480, 33.897430, 38.361183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105576, 34.045353, 38.122772>,  <38.276634, 34.134106, 37.979725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105576, 34.045353, 38.122772>,  <37.820480, 33.897430, 38.361183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105576, 34.045353, 38.122772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553796, 0.224822, 0.801726,
		0.430483, -0.901498, -0.044558,
		0.712737, 0.369805, -0.596029,
		38.319397, 34.156296, 37.943962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456223, 33.691925, 38.626286>,  <37.820480, 33.897430, 38.361183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456223, 33.691925, 38.626286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591663, 34.000980, 38.411484>,  <38.672928, 34.186413, 38.282600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591663, 34.000980, 38.411484>,  <38.456223, 33.691925, 38.626286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591663, 34.000980, 38.411484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358467, 0.421755, 0.832841,
		0.869971, -0.474501, -0.134158,
		0.338603, 0.772639, -0.537007,
		38.693245, 34.232773, 38.250381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142315, 33.865997, 38.848423>,  <38.456223, 33.691925, 38.626286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142315, 33.865997, 38.848423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025860, 34.199745, 38.661201>,  <38.955986, 34.399994, 38.548870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025860, 34.199745, 38.661201>,  <39.142315, 33.865997, 38.848423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025860, 34.199745, 38.661201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357912, 0.548712, 0.755522,
		0.887208, 0.052439, -0.458380,
		-0.291138, 0.834365, -0.468053,
		38.938519, 34.450054, 38.520786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758209, 34.283085, 38.764900>,  <39.142315, 33.865997, 38.848423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758209, 34.283085, 38.764900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434319, 34.517792, 38.767937>,  <39.239986, 34.658615, 38.769760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434319, 34.517792, 38.767937>,  <39.758209, 34.283085, 38.764900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434319, 34.517792, 38.767937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486776, 0.664407, 0.567109,
		0.327715, 0.462896, -0.823608,
		-0.809723, 0.586763, 0.007590,
		39.191402, 34.693821, 38.770214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031521, 34.883465, 38.929832>,  <39.758209, 34.283085, 38.764900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031521, 34.883465, 38.929832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639530, 34.945316, 38.980011>,  <39.404335, 34.982430, 39.010120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639530, 34.945316, 38.980011>,  <40.031521, 34.883465, 38.929832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639530, 34.945316, 38.980011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198184, 0.696422, 0.689724,
		0.019288, 0.700775, -0.713122,
		-0.979975, 0.154633, 0.125450,
		39.345539, 34.991707, 39.017647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947113, 35.639671, 39.025337>,  <40.031521, 34.883465, 38.929832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947113, 35.639671, 39.025337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594173, 35.502129, 39.153847>,  <39.382408, 35.419601, 39.230953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594173, 35.502129, 39.153847>,  <39.947113, 35.639671, 39.025337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594173, 35.502129, 39.153847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093990, 0.540182, 0.836283,
		-0.461110, 0.768092, -0.444311,
		-0.882351, -0.343858, 0.321276,
		39.329468, 35.398972, 39.250229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597816, 36.202019, 39.234070>,  <39.947113, 35.639671, 39.025337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597816, 36.202019, 39.234070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383930, 35.929249, 39.433693>,  <39.255600, 35.765587, 39.553467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383930, 35.929249, 39.433693>,  <39.597816, 36.202019, 39.234070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383930, 35.929249, 39.433693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106178, 0.531679, 0.840264,
		-0.838337, 0.502289, -0.211890,
		-0.534713, -0.681926, 0.499058,
		39.223515, 35.724670, 39.583412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072865, 36.610100, 39.634312>,  <39.597816, 36.202019, 39.234070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072865, 36.610100, 39.634312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120808, 36.265697, 39.832020>,  <39.149574, 36.059055, 39.950645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120808, 36.265697, 39.832020>,  <39.072865, 36.610100, 39.634312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120808, 36.265697, 39.832020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130961, 0.507222, 0.851807,
		-0.984116, -0.037363, 0.173551,
		0.119854, -0.861005, 0.494272,
		39.156765, 36.007397, 39.980301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687614, 36.677082, 40.181671>,  <39.072865, 36.610100, 39.634312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687614, 36.677082, 40.181671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933842, 36.381870, 40.292221>,  <39.081577, 36.204742, 40.358551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933842, 36.381870, 40.292221>,  <38.687614, 36.677082, 40.181671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933842, 36.381870, 40.292221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010039, 0.358004, 0.933666,
		-0.788020, -0.571960, 0.227785,
		0.615568, -0.738034, 0.276373,
		39.118511, 36.160461, 40.375134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364178, 36.289806, 40.836403>,  <38.687614, 36.677082, 40.181671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364178, 36.289806, 40.836403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751709, 36.191765, 40.822014>,  <38.984230, 36.132942, 40.813381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751709, 36.191765, 40.822014>,  <38.364178, 36.289806, 40.836403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751709, 36.191765, 40.822014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111196, 0.300515, 0.947273,
		-0.221367, -0.921747, 0.318402,
		0.968830, -0.245100, -0.035971,
		39.042358, 36.118237, 40.811222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442825, 35.886688, 41.424080>,  <38.364178, 36.289806, 40.836403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442825, 35.886688, 41.424080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801743, 36.030392, 41.321476>,  <39.017094, 36.116615, 41.259914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801743, 36.030392, 41.321476>,  <38.442825, 35.886688, 41.424080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801743, 36.030392, 41.321476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071136, 0.455811, 0.887230,
		0.435661, -0.814354, 0.383441,
		0.897296, 0.359255, -0.256509,
		39.070930, 36.138168, 41.244522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685093, 35.954670, 41.997425>,  <38.442825, 35.886688, 41.424080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685093, 35.954670, 41.997425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962547, 36.149052, 41.784740>,  <39.129021, 36.265682, 41.657131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962547, 36.149052, 41.784740>,  <38.685093, 35.954670, 41.997425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962547, 36.149052, 41.784740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284745, 0.493046, 0.822087,
		0.661656, -0.721630, 0.203620,
		0.693637, 0.485959, -0.531707,
		39.170639, 36.294838, 41.625229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305485, 35.869663, 42.255615>,  <38.685093, 35.954670, 41.997425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305485, 35.869663, 42.255615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316261, 36.217747, 42.058838>,  <39.322727, 36.426598, 41.940773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316261, 36.217747, 42.058838>,  <39.305485, 35.869663, 42.255615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316261, 36.217747, 42.058838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258575, 0.469303, 0.844331,
		0.965616, -0.149949, -0.212372,
		0.026940, 0.870213, -0.491939,
		39.324345, 36.478809, 41.911255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885956, 36.273582, 42.562149>,  <39.305485, 35.869663, 42.255615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885956, 36.273582, 42.562149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640457, 36.526718, 42.373329>,  <39.493156, 36.678600, 42.260036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640457, 36.526718, 42.373329>,  <39.885956, 36.273582, 42.562149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640457, 36.526718, 42.373329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055169, 0.562067, 0.825250,
		0.787572, 0.532538, -0.310054,
		-0.613748, 0.632839, -0.472047,
		39.456333, 36.716568, 42.231716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115273, 36.897831, 42.517078>,  <39.885956, 36.273582, 42.562149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115273, 36.897831, 42.517078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729836, 36.984383, 42.454262>,  <39.498573, 37.036312, 42.416573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729836, 36.984383, 42.454262>,  <40.115273, 36.897831, 42.517078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729836, 36.984383, 42.454262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051126, 0.725655, 0.686157,
		0.262426, 0.653150, -0.710301,
		-0.963597, 0.216380, -0.157037,
		39.440758, 37.049297, 42.407150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141533, 37.563477, 42.657501>,  <40.115273, 36.897831, 42.517078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141533, 37.563477, 42.657501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754116, 37.469303, 42.689758>,  <39.521667, 37.412800, 42.709114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754116, 37.469303, 42.689758>,  <40.141533, 37.563477, 42.657501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754116, 37.469303, 42.689758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106096, 0.683751, 0.721961,
		-0.225116, 0.690691, -0.687218,
		-0.968538, -0.235436, 0.080644,
		39.463554, 37.398674, 42.713951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769161, 38.120735, 42.747826>,  <40.141533, 37.563477, 42.657501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769161, 38.120735, 42.747826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515022, 37.858219, 42.910614>,  <39.362541, 37.700710, 43.008286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515022, 37.858219, 42.910614>,  <39.769161, 38.120735, 42.747826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515022, 37.858219, 42.910614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137427, 0.614685, 0.776709,
		-0.759903, 0.437548, -0.480728,
		-0.635343, -0.656288, 0.406970,
		39.324421, 37.661331, 43.032703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192741, 38.479431, 42.916439>,  <39.769161, 38.120735, 42.747826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192741, 38.479431, 42.916439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122250, 38.162807, 43.150490>,  <39.079956, 37.972832, 43.290920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122250, 38.162807, 43.150490>,  <39.192741, 38.479431, 42.916439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122250, 38.162807, 43.150490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322951, 0.608021, 0.725267,
		-0.929864, -0.061157, -0.362785,
		-0.176226, -0.791562, 0.585128,
		39.069382, 37.925339, 43.326027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576000, 38.573013, 43.117558>,  <39.192741, 38.479431, 42.916439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576000, 38.573013, 43.117558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747574, 38.341728, 43.395172>,  <38.850517, 38.202957, 43.561741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747574, 38.341728, 43.395172>,  <38.576000, 38.573013, 43.117558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747574, 38.341728, 43.395172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234580, 0.670648, 0.703707,
		-0.872345, -0.464653, 0.152029,
		0.428937, -0.578212, 0.694035,
		38.876255, 38.168266, 43.603382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126839, 38.490673, 43.645199>,  <38.576000, 38.573013, 43.117558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126839, 38.490673, 43.645199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482159, 38.401375, 43.805737>,  <38.695351, 38.347794, 43.902061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482159, 38.401375, 43.805737>,  <38.126839, 38.490673, 43.645199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482159, 38.401375, 43.805737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194285, 0.609177, 0.768867,
		-0.416140, -0.760962, 0.497759,
		0.888302, -0.223249, 0.401346,
		38.748650, 38.334400, 43.926140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065235, 38.332722, 44.288349>,  <38.126839, 38.490673, 43.645199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065235, 38.332722, 44.288349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442757, 38.459862, 44.252125>,  <38.669270, 38.536144, 44.230392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442757, 38.459862, 44.252125>,  <38.065235, 38.332722, 44.288349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442757, 38.459862, 44.252125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169838, 0.701507, 0.692130,
		0.283518, -0.637857, 0.716070,
		0.943808, 0.317847, -0.090557,
		38.725899, 38.555214, 44.224957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293552, 38.389980, 44.974239>,  <38.065235, 38.332722, 44.288349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293552, 38.389980, 44.974239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547329, 38.607277, 44.754284>,  <38.699596, 38.737656, 44.622311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547329, 38.607277, 44.754284>,  <38.293552, 38.389980, 44.974239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547329, 38.607277, 44.754284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054388, 0.741004, 0.669294,
		0.771052, -0.394723, 0.499672,
		0.634445, 0.543237, -0.549885,
		38.737663, 38.770248, 44.589317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875912, 38.808414, 45.483986>,  <38.293552, 38.389980, 44.974239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875912, 38.808414, 45.483986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885468, 38.999359, 45.132633>,  <38.891201, 39.113926, 44.921822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885468, 38.999359, 45.132633>,  <38.875912, 38.808414, 45.483986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885468, 38.999359, 45.132633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262232, 0.844872, 0.466290,
		0.964709, -0.241481, -0.104994,
		0.023894, 0.477366, -0.878380,
		38.892635, 39.142570, 44.869118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489479, 39.209415, 45.463074>,  <38.875912, 38.808414, 45.483986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489479, 39.209415, 45.463074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209183, 39.382595, 45.236263>,  <39.041004, 39.486504, 45.100178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209183, 39.382595, 45.236263>,  <39.489479, 39.209415, 45.463074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209183, 39.382595, 45.236263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224635, 0.888279, 0.400624,
		0.677124, 0.153361, -0.719711,
		-0.700744, 0.432944, -0.567025,
		38.998959, 39.512478, 45.066154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763561, 39.763554, 45.218739>,  <39.489479, 39.209415, 45.463074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763561, 39.763554, 45.218739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368679, 39.827332, 45.218243>,  <39.131748, 39.865597, 45.217945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368679, 39.827332, 45.218243>,  <39.763561, 39.763554, 45.218739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368679, 39.827332, 45.218243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141563, 0.880003, 0.453381,
		0.073376, 0.447406, -0.891316,
		-0.987206, 0.159445, -0.001235,
		39.072517, 39.875164, 45.217873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606831, 40.462551, 44.993725>,  <39.763561, 39.763554, 45.218739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606831, 40.462551, 44.993725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257133, 40.395435, 45.175953>,  <39.047314, 40.355164, 45.285290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257133, 40.395435, 45.175953>,  <39.606831, 40.462551, 44.993725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257133, 40.395435, 45.175953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131769, 0.821143, 0.555303,
		-0.467264, 0.545500, -0.695768,
		-0.874243, -0.167792, 0.455571,
		38.994862, 40.345097, 45.312626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340508, 41.185905, 44.932949>,  <39.606831, 40.462551, 44.993725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340508, 41.185905, 44.932949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138912, 40.980530, 45.210762>,  <39.017956, 40.857304, 45.377449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138912, 40.980530, 45.210762>,  <39.340508, 41.185905, 44.932949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138912, 40.980530, 45.210762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066424, 0.824786, 0.561530,
		-0.861155, 0.236868, -0.449784,
		-0.503984, -0.513441, 0.694535,
		38.987717, 40.826496, 45.419121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839375, 41.659481, 45.121517>,  <39.340508, 41.185905, 44.932949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839375, 41.659481, 45.121517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842247, 41.402481, 45.428017>,  <38.843971, 41.248280, 45.611916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842247, 41.402481, 45.428017>,  <38.839375, 41.659481, 45.121517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842247, 41.402481, 45.428017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042215, 0.765784, 0.641711,
		-0.999083, 0.027739, 0.032622,
		0.007180, -0.642499, 0.766253,
		38.844402, 41.209732, 45.657894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377186, 41.924919, 45.556419>,  <38.839375, 41.659481, 45.121517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377186, 41.924919, 45.556419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600266, 41.669426, 45.768456>,  <38.734112, 41.516132, 45.895676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600266, 41.669426, 45.768456>,  <38.377186, 41.924919, 45.556419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600266, 41.669426, 45.768456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000943, 0.638141, 0.769919,
		-0.830043, -0.429883, 0.355288,
		0.557698, -0.638731, 0.530090,
		38.767574, 41.477806, 45.927483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023258, 41.889442, 46.228767>,  <38.377186, 41.924919, 45.556419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023258, 41.889442, 46.228767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382542, 41.736092, 46.314789>,  <38.598110, 41.644081, 46.366402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382542, 41.736092, 46.314789>,  <38.023258, 41.889442, 46.228767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382542, 41.736092, 46.314789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115818, 0.678343, 0.725560,
		-0.424046, -0.626794, 0.653693,
		0.898204, -0.383380, 0.215055,
		38.652004, 41.621078, 46.379307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028488, 41.694599, 46.956161>,  <38.023258, 41.889442, 46.228767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028488, 41.694599, 46.956161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400658, 41.761177, 46.825565>,  <38.623962, 41.801125, 46.747208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400658, 41.761177, 46.825565>,  <38.028488, 41.694599, 46.956161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400658, 41.761177, 46.825565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174172, 0.583012, 0.793575,
		0.322438, -0.795231, 0.513460,
		0.930429, 0.166449, -0.326492,
		38.679787, 41.811111, 46.727619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340359, 41.640255, 47.551678>,  <38.028488, 41.694599, 46.956161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340359, 41.640255, 47.551678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620602, 41.803558, 47.317593>,  <38.788746, 41.901543, 47.177143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620602, 41.803558, 47.317593>,  <38.340359, 41.640255, 47.551678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620602, 41.803558, 47.317593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175864, 0.696047, 0.696125,
		0.691518, -0.590638, 0.415872,
		0.700625, 0.408246, -0.585201,
		38.830784, 41.926037, 47.142029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843250, 41.769920, 48.072826>,  <38.340359, 41.640255, 47.551678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843250, 41.769920, 48.072826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891037, 42.008766, 47.755543>,  <38.919708, 42.152073, 47.565174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891037, 42.008766, 47.755543>,  <38.843250, 41.769920, 48.072826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891037, 42.008766, 47.755543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181450, 0.772345, 0.608735,
		0.976116, -0.216654, -0.016074,
		0.119470, 0.597113, -0.793210,
		38.926880, 42.187901, 47.517578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342514, 42.200626, 48.316849>,  <38.843250, 41.769920, 48.072826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342514, 42.200626, 48.316849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184132, 42.382286, 47.997608>,  <39.089104, 42.491283, 47.806065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184132, 42.382286, 47.997608>,  <39.342514, 42.200626, 48.316849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184132, 42.382286, 47.997608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187606, 0.810795, 0.554451,
		0.898901, 0.369266, -0.235837,
		-0.395955, 0.454152, -0.798101,
		39.065346, 42.518532, 47.758179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603939, 42.985912, 48.391537>,  <39.342514, 42.200626, 48.316849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603939, 42.985912, 48.391537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280731, 42.932537, 48.161999>,  <39.086807, 42.900513, 48.024277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280731, 42.932537, 48.161999>,  <39.603939, 42.985912, 48.391537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280731, 42.932537, 48.161999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430861, 0.798150, 0.421088,
		0.401825, 0.587495, -0.702415,
		-0.808019, -0.133439, -0.573846,
		39.038326, 42.892506, 47.989845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526291, 43.637653, 47.964771>,  <39.603939, 42.985912, 48.391537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526291, 43.637653, 47.964771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186703, 43.435200, 48.025543>,  <38.982948, 43.313728, 48.062004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186703, 43.435200, 48.025543>,  <39.526291, 43.637653, 47.964771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186703, 43.435200, 48.025543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457477, 0.847839, 0.268113,
		-0.264510, 0.158117, -0.951333,
		-0.848970, -0.506131, 0.151927,
		38.932011, 43.283360, 48.071121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242012, 43.833378, 47.971813>,  <39.526291, 43.637653, 47.964771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242012, 43.833378, 47.971813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387184, 43.487225, 47.833599>,  <40.474289, 43.279533, 47.750671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387184, 43.487225, 47.833599>,  <40.242012, 43.833378, 47.971813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387184, 43.487225, 47.833599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887027, -0.434438, 0.156357,
		-0.285423, 0.249753, -0.925288,
		0.362929, -0.865383, -0.345536,
		40.496063, 43.227612, 47.729939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437283, 44.089012, 47.289227>,  <40.242012, 43.833378, 47.971813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437283, 44.089012, 47.289227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739582, 44.345528, 47.236176>,  <40.920963, 44.499435, 47.204346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739582, 44.345528, 47.236176>,  <40.437283, 44.089012, 47.289227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739582, 44.345528, 47.236176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304619, -0.523545, -0.795680,
		-0.579695, 0.560937, -0.591019,
		0.755752, 0.641287, -0.132624,
		40.966309, 44.537914, 47.196388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451561, 44.379539, 46.556374>,  <40.437283, 44.089012, 47.289227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451561, 44.379539, 46.556374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828884, 44.433899, 46.677505>,  <41.055279, 44.466515, 46.750183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828884, 44.433899, 46.677505>,  <40.451561, 44.379539, 46.556374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828884, 44.433899, 46.677505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328707, -0.509170, -0.795423,
		0.046092, 0.849869, -0.524975,
		0.943306, 0.135900, 0.302827,
		41.111877, 44.474670, 46.768353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769146, 44.353580, 45.927677>,  <40.451561, 44.379539, 46.556374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769146, 44.353580, 45.927677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060009, 44.320267, 46.200237>,  <41.234528, 44.300278, 46.363773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060009, 44.320267, 46.200237>,  <40.769146, 44.353580, 45.927677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060009, 44.320267, 46.200237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479374, -0.648900, -0.590872,
		0.491370, 0.756302, -0.431929,
		0.727156, -0.083281, 0.681401,
		41.278156, 44.295284, 46.404659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444469, 44.252735, 45.433193>,  <40.769146, 44.353580, 45.927677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444469, 44.252735, 45.433193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510555, 44.141811, 45.811779>,  <41.550209, 44.075256, 46.038933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510555, 44.141811, 45.811779>,  <41.444469, 44.252735, 45.433193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510555, 44.141811, 45.811779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543085, -0.775478, -0.322014,
		0.823263, 0.567215, 0.022483,
		0.165216, -0.277312, 0.946468,
		41.560120, 44.058617, 46.095718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097645, 43.969494, 45.506084>,  <41.444469, 44.252735, 45.433193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097645, 43.969494, 45.506084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913769, 43.817108, 45.826969>,  <41.803444, 43.725677, 46.019501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913769, 43.817108, 45.826969>,  <42.097645, 43.969494, 45.506084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913769, 43.817108, 45.826969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277950, -0.919651, -0.277464,
		0.843463, 0.095429, 0.528643,
		-0.459689, -0.380967, 0.802216,
		41.775864, 43.702820, 46.067635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551289, 43.499615, 45.904957>,  <42.097645, 43.969494, 45.506084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551289, 43.499615, 45.904957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176369, 43.395962, 45.998177>,  <41.951416, 43.333771, 46.054108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176369, 43.395962, 45.998177>,  <42.551289, 43.499615, 45.904957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176369, 43.395962, 45.998177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188999, -0.939764, -0.284820,
		0.292818, -0.222916, 0.929821,
		-0.937303, -0.259136, 0.233049,
		41.895176, 43.318222, 46.068092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570320, 42.863731, 46.205631>,  <42.551289, 43.499615, 45.904957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570320, 42.863731, 46.205631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181767, 42.889980, 46.114323>,  <41.948635, 42.905727, 46.059536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181767, 42.889980, 46.114323>,  <42.570320, 42.863731, 46.205631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181767, 42.889980, 46.114323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050061, -0.882931, -0.466826,
		-0.232183, -0.464895, 0.854379,
		-0.971383, 0.065617, -0.228275,
		41.890350, 42.909664, 46.045841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302547, 42.208252, 46.292595>,  <42.570320, 42.863731, 46.205631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302547, 42.208252, 46.292595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044624, 42.378014, 46.038319>,  <41.889870, 42.479870, 45.885754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044624, 42.378014, 46.038319>,  <42.302547, 42.208252, 46.292595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044624, 42.378014, 46.038319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008151, -0.827813, -0.560945,
		-0.764298, -0.366885, 0.530324,
		-0.644811, 0.424407, -0.635687,
		41.851181, 42.505337, 45.847610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980049, 41.670757, 46.123581>,  <42.302547, 42.208252, 46.292595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980049, 41.670757, 46.123581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924088, 41.931770, 45.825687>,  <41.890511, 42.088379, 45.646950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924088, 41.931770, 45.825687>,  <41.980049, 41.670757, 46.123581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924088, 41.931770, 45.825687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262049, -0.749714, -0.607668,
		-0.954860, 0.110144, 0.275881,
		-0.139901, 0.652532, -0.744735,
		41.882118, 42.127529, 45.602268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352970, 41.450005, 45.811192>,  <41.980049, 41.670757, 46.123581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352970, 41.450005, 45.811192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492504, 41.690845, 45.523918>,  <41.576225, 41.835350, 45.351555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492504, 41.690845, 45.523918>,  <41.352970, 41.450005, 45.811192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492504, 41.690845, 45.523918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164263, -0.715179, -0.679364,
		-0.922678, 0.354954, -0.150574,
		0.348831, 0.602101, -0.718186,
		41.597153, 41.871475, 45.308464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867210, 41.357307, 45.376408>,  <41.352970, 41.450005, 45.811192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867210, 41.357307, 45.376408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176487, 41.511955, 45.175331>,  <41.362053, 41.604744, 45.054688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176487, 41.511955, 45.175331>,  <40.867210, 41.357307, 45.376408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176487, 41.511955, 45.175331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041092, -0.760461, -0.648082,
		-0.632838, 0.521749, -0.572096,
		0.773193, 0.386622, -0.502689,
		41.408443, 41.627941, 45.024525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675568, 41.260036, 44.696060>,  <40.867210, 41.357307, 45.376408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675568, 41.260036, 44.696060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071472, 41.315350, 44.681942>,  <41.309017, 41.348537, 44.673470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071472, 41.315350, 44.681942>,  <40.675568, 41.260036, 44.696060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071472, 41.315350, 44.681942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045665, -0.541187, -0.839662,
		-0.135212, 0.829455, -0.541962,
		0.989764, 0.138281, -0.035299,
		41.368401, 41.356834, 44.671352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840870, 41.342491, 44.034176>,  <40.675568, 41.260036, 44.696060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840870, 41.342491, 44.034176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218479, 41.252502, 44.130680>,  <41.445045, 41.198509, 44.188583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218479, 41.252502, 44.130680>,  <40.840870, 41.342491, 44.034176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218479, 41.252502, 44.130680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118896, -0.450167, -0.884994,
		0.307709, 0.864139, -0.398219,
		0.944023, -0.224974, 0.241263,
		41.501686, 41.185009, 44.203060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292526, 41.528419, 43.502403>,  <40.840870, 41.342491, 44.034176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292526, 41.528419, 43.502403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465866, 41.236633, 43.714096>,  <41.569870, 41.061562, 43.841110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465866, 41.236633, 43.714096>,  <41.292526, 41.528419, 43.502403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465866, 41.236633, 43.714096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140441, -0.525399, -0.839185,
		0.890216, 0.437987, -0.125235,
		0.433350, -0.729468, 0.529230,
		41.595871, 41.017792, 43.872864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863323, 41.328575, 43.100998>,  <41.292526, 41.528419, 43.502403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863323, 41.328575, 43.100998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780979, 41.028431, 43.352261>,  <41.731571, 40.848343, 43.503017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780979, 41.028431, 43.352261>,  <41.863323, 41.328575, 43.100998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780979, 41.028431, 43.352261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049631, -0.649082, -0.759098,
		0.977321, -0.125096, 0.170864,
		-0.205865, -0.750362, 0.628153,
		41.719219, 40.803322, 43.540707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193382, 40.787231, 42.772266>,  <41.863323, 41.328575, 43.100998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193382, 40.787231, 42.772266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957008, 40.605019, 43.038586>,  <41.815182, 40.495693, 43.198376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957008, 40.605019, 43.038586>,  <42.193382, 40.787231, 42.772266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957008, 40.605019, 43.038586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071574, -0.851667, -0.519173,
		0.803536, -0.259145, 0.535886,
		-0.590937, -0.455529, 0.665797,
		41.779728, 40.468361, 43.238323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582886, 40.135384, 42.944874>,  <42.193382, 40.787231, 42.772266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582886, 40.135384, 42.944874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188339, 40.093723, 42.995831>,  <41.951611, 40.068726, 43.026405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188339, 40.093723, 42.995831>,  <42.582886, 40.135384, 42.944874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188339, 40.093723, 42.995831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027712, -0.868275, -0.495309,
		0.162203, -0.485027, 0.859325,
		-0.986368, -0.104154, 0.127395,
		41.892429, 40.062477, 43.034050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456661, 39.337379, 42.951332>,  <42.582886, 40.135384, 42.944874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456661, 39.337379, 42.951332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087605, 39.485397, 42.907898>,  <41.866169, 39.574207, 42.881840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087605, 39.485397, 42.907898>,  <42.456661, 39.337379, 42.951332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087605, 39.485397, 42.907898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227968, -0.750437, -0.620383,
		-0.311053, -0.547641, 0.776747,
		-0.922647, 0.370046, -0.108581,
		41.810810, 39.596413, 42.875324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984810, 38.763447, 42.884132>,  <42.456661, 39.337379, 42.951332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984810, 38.763447, 42.884132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782822, 39.073074, 42.731388>,  <41.661629, 39.258850, 42.639740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782822, 39.073074, 42.731388>,  <41.984810, 38.763447, 42.884132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782822, 39.073074, 42.731388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364601, -0.592301, -0.718502,
		-0.782351, -0.223593, 0.581320,
		-0.504969, 0.774071, -0.381865,
		41.631332, 39.305294, 42.616829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337410, 38.538311, 42.672451>,  <41.984810, 38.763447, 42.884132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337410, 38.538311, 42.672451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385254, 38.865582, 42.447498>,  <41.413960, 39.061943, 42.312527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385254, 38.865582, 42.447498>,  <41.337410, 38.538311, 42.672451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385254, 38.865582, 42.447498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317042, -0.505319, -0.802582,
		-0.940839, 0.274295, 0.198958,
		0.119607, 0.818178, -0.562386,
		41.421135, 39.111034, 42.278782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786926, 38.448696, 42.257465>,  <41.337410, 38.538311, 42.672451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786926, 38.448696, 42.257465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008945, 38.729412, 42.078842>,  <41.142155, 38.897842, 41.971668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008945, 38.729412, 42.078842>,  <40.786926, 38.448696, 42.257465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008945, 38.729412, 42.078842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161299, -0.435855, -0.885445,
		-0.816032, 0.563492, -0.128721,
		0.555045, 0.701789, -0.446562,
		41.175461, 38.939949, 41.944874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386665, 38.814674, 41.678104>,  <40.786926, 38.448696, 42.257465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386665, 38.814674, 41.678104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781425, 38.814117, 41.613579>,  <41.018280, 38.813782, 41.574863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781425, 38.814117, 41.613579>,  <40.386665, 38.814674, 41.678104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781425, 38.814117, 41.613579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143128, -0.468895, -0.871580,
		-0.074428, 0.883253, -0.462952,
		0.986902, -0.001391, -0.161317,
		41.077496, 38.813702, 41.565186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255787, 38.786526, 41.052753>,  <40.386665, 38.814674, 41.678104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255787, 38.786526, 41.052753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645172, 38.695892, 41.065563>,  <40.878803, 38.641514, 41.073250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645172, 38.695892, 41.065563>,  <40.255787, 38.786526, 41.052753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645172, 38.695892, 41.065563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095249, -0.528460, -0.843598,
		0.208072, 0.818162, -0.536019,
		0.973465, -0.226585, 0.032028,
		40.937210, 38.627918, 41.075172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381271, 38.746338, 40.371910>,  <40.255787, 38.786526, 41.052753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381271, 38.746338, 40.371910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707867, 38.576847, 40.528778>,  <40.903824, 38.475151, 40.622898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707867, 38.576847, 40.528778>,  <40.381271, 38.746338, 40.371910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707867, 38.576847, 40.528778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133054, -0.522868, -0.841965,
		0.561817, 0.739637, -0.370538,
		0.816491, -0.423729, 0.392168,
		40.952812, 38.449730, 40.646427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958912, 38.729588, 39.832115>,  <40.381271, 38.746338, 40.371910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958912, 38.729588, 39.832115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063759, 38.462124, 40.110447>,  <41.126667, 38.301643, 40.277447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063759, 38.462124, 40.110447>,  <40.958912, 38.729588, 39.832115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063759, 38.462124, 40.110447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154084, -0.682796, -0.714176,
		0.952654, 0.294418, -0.075946,
		0.262122, -0.668661, 0.695834,
		41.142395, 38.261524, 40.319199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626816, 38.373253, 39.594070>,  <40.958912, 38.729588, 39.832115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626816, 38.373253, 39.594070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457146, 38.139103, 39.870453>,  <41.355343, 37.998615, 40.036282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457146, 38.139103, 39.870453>,  <41.626816, 38.373253, 39.594070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457146, 38.139103, 39.870453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002722, -0.762166, -0.647376,
		0.905576, -0.276481, 0.321697,
		-0.424174, -0.585373, 0.690952,
		41.329895, 37.963490, 40.077740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014523, 37.807739, 39.622585>,  <41.626816, 38.373253, 39.594070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014523, 37.807739, 39.622585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687523, 37.657791, 39.797478>,  <41.491325, 37.567822, 39.902412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687523, 37.657791, 39.797478>,  <42.014523, 37.807739, 39.622585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687523, 37.657791, 39.797478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041857, -0.718488, -0.694279,
		0.574413, -0.585871, 0.571669,
		-0.817495, -0.374875, 0.437231,
		41.442276, 37.545330, 39.928646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111599, 37.065945, 39.733658>,  <42.014523, 37.807739, 39.622585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111599, 37.065945, 39.733658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713284, 37.097115, 39.752979>,  <41.474293, 37.115814, 39.764572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713284, 37.097115, 39.752979>,  <42.111599, 37.065945, 39.733658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713284, 37.097115, 39.752979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091613, -0.826069, -0.556073,
		-0.003427, -0.558156, 0.829729,
		-0.995789, 0.077920, 0.048304,
		41.414547, 37.120491, 39.767471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922844, 36.450867, 39.976307>,  <42.111599, 37.065945, 39.733658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922844, 36.450867, 39.976307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621895, 36.627670, 39.780933>,  <41.441326, 36.733753, 39.663712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621895, 36.627670, 39.780933>,  <41.922844, 36.450867, 39.976307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621895, 36.627670, 39.780933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019534, -0.756108, -0.654155,
		-0.658449, -0.482627, 0.577509,
		-0.752372, 0.442009, -0.488431,
		41.396183, 36.760273, 39.634403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549446, 35.899746, 39.840981>,  <41.922844, 36.450867, 39.976307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549446, 35.899746, 39.840981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396019, 36.159145, 39.577972>,  <41.303963, 36.314785, 39.420166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396019, 36.159145, 39.577972>,  <41.549446, 35.899746, 39.840981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396019, 36.159145, 39.577972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056353, -0.694215, -0.717558,
		-0.921793, -0.312283, 0.229732,
		-0.383565, 0.648494, -0.657521,
		41.280949, 36.353695, 39.380714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079243, 35.519157, 39.451801>,  <41.549446, 35.899746, 39.840981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079243, 35.519157, 39.451801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180138, 35.844055, 39.241421>,  <41.240677, 36.038994, 39.115192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180138, 35.844055, 39.241421>,  <41.079243, 35.519157, 39.451801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180138, 35.844055, 39.241421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092092, -0.561211, -0.822533,
		-0.963272, 0.159042, -0.216362,
		0.252242, 0.812249, -0.525952,
		41.255810, 36.087730, 39.083633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633102, 35.424175, 38.899757>,  <41.079243, 35.519157, 39.451801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633102, 35.424175, 38.899757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904915, 35.695930, 38.788998>,  <41.068001, 35.858982, 38.722542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904915, 35.695930, 38.788998>,  <40.633102, 35.424175, 38.899757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904915, 35.695930, 38.788998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018494, -0.393170, -0.919280,
		-0.733413, 0.619559, -0.279736,
		0.679532, 0.679385, -0.276898,
		41.108776, 35.899746, 38.705929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449974, 35.659519, 38.257584>,  <40.633102, 35.424175, 38.899757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449974, 35.659519, 38.257584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840122, 35.739674, 38.294449>,  <41.074211, 35.787766, 38.316566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840122, 35.739674, 38.294449>,  <40.449974, 35.659519, 38.257584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840122, 35.739674, 38.294449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164284, -0.381230, -0.909766,
		-0.147175, 0.902501, -0.404762,
		0.975372, 0.200390, 0.092159,
		41.132732, 35.799789, 38.322098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518147, 36.056503, 37.750107>,  <40.449974, 35.659519, 38.257584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518147, 36.056503, 37.750107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886738, 35.913879, 37.811745>,  <41.107891, 35.828304, 37.848728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886738, 35.913879, 37.811745>,  <40.518147, 36.056503, 37.750107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886738, 35.913879, 37.811745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029810, -0.330618, -0.943294,
		0.387285, 0.873818, -0.294028,
		0.921478, -0.356559, 0.154092,
		41.163181, 35.806911, 37.857971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051014, 36.301594, 37.213501>,  <40.518147, 36.056503, 37.750107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051014, 36.301594, 37.213501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260338, 35.996304, 37.365093>,  <41.385933, 35.813129, 37.456051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260338, 35.996304, 37.365093>,  <41.051014, 36.301594, 37.213501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260338, 35.996304, 37.365093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022323, -0.456867, -0.889255,
		0.851850, 0.456896, -0.256121,
		0.523310, -0.763229, 0.378983,
		41.417332, 35.767334, 37.478786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566422, 36.081593, 36.704617>,  <41.051014, 36.301594, 37.213501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566422, 36.081593, 36.704617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555119, 35.754425, 36.934471>,  <41.548336, 35.558125, 37.072384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555119, 35.754425, 36.934471>,  <41.566422, 36.081593, 36.704617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555119, 35.754425, 36.934471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108066, -0.573999, -0.811694,
		0.993742, 0.039160, 0.104611,
		-0.028260, -0.817919, 0.574639,
		41.546642, 35.509048, 37.106861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040348, 35.696697, 36.496696>,  <41.566422, 36.081593, 36.704617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040348, 35.696697, 36.496696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821369, 35.427795, 36.696041>,  <41.689980, 35.266453, 36.815647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821369, 35.427795, 36.696041>,  <42.040348, 35.696697, 36.496696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821369, 35.427795, 36.696041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110442, -0.648366, -0.753275,
		0.829518, -0.357340, 0.429194,
		-0.547450, -0.672257, 0.498366,
		41.657135, 35.226120, 36.845551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405403, 35.081070, 36.554989>,  <42.040348, 35.696697, 36.496696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405403, 35.081070, 36.554989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029911, 34.970306, 36.637062>,  <41.804615, 34.903847, 36.686306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029911, 34.970306, 36.637062>,  <42.405403, 35.081070, 36.554989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029911, 34.970306, 36.637062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111055, -0.806629, -0.580532,
		0.326258, -0.522179, 0.787962,
		-0.938734, -0.276910, 0.205178,
		41.748291, 34.887234, 36.698616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465565, 34.372929, 36.636539>,  <42.405403, 35.081070, 36.554989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465565, 34.372929, 36.636539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074478, 34.423725, 36.569675>,  <41.839825, 34.454201, 36.529556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074478, 34.423725, 36.569675>,  <42.465565, 34.372929, 36.636539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074478, 34.423725, 36.569675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037956, -0.890099, -0.454185,
		-0.206467, -0.437719, 0.875085,
		-0.977717, 0.126989, -0.167162,
		41.781162, 34.461823, 36.519527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116039, 33.839542, 36.816772>,  <42.465565, 34.372929, 36.636539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116039, 33.839542, 36.816772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848591, 33.996536, 36.564140>,  <41.688122, 34.090733, 36.412560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848591, 33.996536, 36.564140>,  <42.116039, 33.839542, 36.816772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848591, 33.996536, 36.564140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090751, -0.886077, -0.454567,
		-0.738042, -0.246619, 0.628071,
		-0.668625, 0.392487, -0.631581,
		41.648003, 34.114281, 36.374664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563644, 33.381191, 36.832024>,  <42.116039, 33.839542, 36.816772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563644, 33.381191, 36.832024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571976, 33.575096, 36.482265>,  <41.576977, 33.691441, 36.272411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571976, 33.575096, 36.482265>,  <41.563644, 33.381191, 36.832024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571976, 33.575096, 36.482265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210865, -0.852785, -0.477802,
		-0.977293, 0.194333, 0.084455,
		0.020831, 0.484761, -0.874398,
		41.578224, 33.720524, 36.219948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263187, 32.908333, 36.483833>,  <41.563644, 33.381191, 36.832024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263187, 32.908333, 36.483833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333595, 33.178711, 36.197586>,  <41.375839, 33.340939, 36.025837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333595, 33.178711, 36.197586>,  <41.263187, 32.908333, 36.483833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333595, 33.178711, 36.197586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025829, -0.723546, -0.689792,
		-0.984048, 0.139900, -0.109899,
		0.176019, 0.675950, -0.715618,
		41.386402, 33.381496, 35.982903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631783, 32.915264, 35.981663>,  <41.263187, 32.908333, 36.483833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631783, 32.915264, 35.981663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002422, 32.985176, 35.848473>,  <41.224804, 33.027122, 35.768559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002422, 32.985176, 35.848473>,  <40.631783, 32.915264, 35.981663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002422, 32.985176, 35.848473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026137, -0.853358, -0.520670,
		-0.375146, 0.491154, -0.786151,
		0.926597, 0.174779, -0.332972,
		41.280403, 33.037609, 35.748581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995770, 32.628792, 35.999172>,  <40.631783, 32.915264, 35.981663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995770, 32.628792, 35.999172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218891, 32.458855, 35.713974>,  <40.352764, 32.356892, 35.542854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218891, 32.458855, 35.713974>,  <39.995770, 32.628792, 35.999172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218891, 32.458855, 35.713974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683881, -0.251494, 0.684878,
		-0.470278, -0.869633, 0.150255,
		0.557805, -0.424840, -0.712997,
		40.386234, 32.331402, 35.500076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180992, 31.930445, 36.323757>,  <39.995770, 32.628792, 35.999172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180992, 31.930445, 36.323757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437405, 32.062057, 36.046394>,  <40.591251, 32.141026, 35.879978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437405, 32.062057, 36.046394>,  <40.180992, 31.930445, 36.323757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437405, 32.062057, 36.046394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763671, -0.363699, 0.533413,
		-0.076681, -0.871470, -0.484417,
		0.641035, 0.329033, -0.693405,
		40.629715, 32.160767, 35.838371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630459, 31.398983, 36.255569>,  <40.180992, 31.930445, 36.323757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630459, 31.398983, 36.255569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836651, 31.708719, 36.108776>,  <40.960365, 31.894560, 36.020702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836651, 31.708719, 36.108776>,  <40.630459, 31.398983, 36.255569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836651, 31.708719, 36.108776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848782, -0.402598, 0.342761,
		0.117667, -0.488175, -0.864777,
		0.515484, 0.774339, -0.366981,
		40.991295, 31.941021, 35.998680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055676, 31.558701, 35.598324>,  <40.630459, 31.398983, 36.255569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055676, 31.558701, 35.598324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192749, 31.775448, 35.291351>,  <41.274994, 31.905495, 35.107166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192749, 31.775448, 35.291351>,  <41.055676, 31.558701, 35.598324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192749, 31.775448, 35.291351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831858, -0.204588, -0.515903,
		-0.436557, 0.815185, 0.380647,
		0.342681, 0.541866, -0.767432,
		41.295551, 31.938007, 35.061123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726162, 31.715485, 35.556931>,  <41.055676, 31.558701, 35.598324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726162, 31.715485, 35.556931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052967, 31.946041, 35.563499>,  <42.249050, 32.084373, 35.567440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052967, 31.946041, 35.563499>,  <41.726162, 31.715485, 35.556931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052967, 31.946041, 35.563499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205909, 0.318234, -0.925380,
		-0.538607, 0.752663, 0.378684,
		0.817009, 0.576391, 0.016423,
		42.298069, 32.118958, 35.568428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585247, 32.456951, 35.317894>,  <41.726162, 31.715485, 35.556931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585247, 32.456951, 35.317894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957153, 32.337578, 35.231655>,  <42.180298, 32.265953, 35.179913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957153, 32.337578, 35.231655>,  <41.585247, 32.456951, 35.317894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957153, 32.337578, 35.231655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129684, 0.282584, -0.950436,
		0.344561, 0.911639, 0.224034,
		0.929763, -0.298430, -0.215593,
		42.236084, 32.248051, 35.166977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715614, 32.896923, 34.804832>,  <41.585247, 32.456951, 35.317894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715614, 32.896923, 34.804832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025318, 32.647453, 34.761848>,  <42.211140, 32.497772, 34.736057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025318, 32.647453, 34.761848>,  <41.715614, 32.896923, 34.804832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025318, 32.647453, 34.761848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034524, 0.127918, -0.991183,
		0.631925, 0.771144, 0.077510,
		0.774260, -0.623678, -0.107458,
		42.257595, 32.460350, 34.729610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101517, 33.288960, 34.319504>,  <41.715614, 32.896923, 34.804832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101517, 33.288960, 34.319504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242840, 32.914848, 34.311180>,  <42.327633, 32.690384, 34.306187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242840, 32.914848, 34.311180>,  <42.101517, 33.288960, 34.319504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242840, 32.914848, 34.311180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066429, 0.047266, -0.996671,
		0.933145, 0.350751, 0.078829,
		0.353309, -0.935275, -0.020805,
		42.348831, 32.634266, 34.304939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672112, 33.252636, 33.808071>,  <42.101517, 33.288960, 34.319504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672112, 33.252636, 33.808071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511215, 32.888000, 33.842022>,  <42.414677, 32.669220, 33.862392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511215, 32.888000, 33.842022>,  <42.672112, 33.252636, 33.808071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511215, 32.888000, 33.842022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214023, 0.003482, -0.976822,
		0.890168, -0.411082, -0.196502,
		-0.402238, -0.911592, 0.084881,
		42.390545, 32.614525, 33.867485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939774, 32.857597, 33.223713>,  <42.672112, 33.252636, 33.808071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939774, 32.857597, 33.223713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620766, 32.641087, 33.330284>,  <42.429359, 32.511181, 33.394226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620766, 32.641087, 33.330284>,  <42.939774, 32.857597, 33.223713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620766, 32.641087, 33.330284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304312, -0.020386, -0.952354,
		0.520919, -0.840597, -0.148459,
		-0.797520, -0.541277, 0.266424,
		42.381508, 32.478703, 33.410210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785469, 32.520081, 32.589264>,  <42.939774, 32.857597, 33.223713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785469, 32.520081, 32.589264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445667, 32.465324, 32.793072>,  <42.241787, 32.432472, 32.915356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445667, 32.465324, 32.793072>,  <42.785469, 32.520081, 32.589264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445667, 32.465324, 32.793072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506609, -0.057990, -0.860223,
		0.147302, -0.988888, -0.020086,
		-0.849499, -0.136888, 0.509522,
		42.190819, 32.424259, 32.945927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579777, 31.941916, 32.339611>,  <42.785469, 32.520081, 32.589264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579777, 31.941916, 32.339611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268734, 32.139503, 32.495213>,  <42.082108, 32.258057, 32.588573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268734, 32.139503, 32.495213>,  <42.579777, 31.941916, 32.339611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268734, 32.139503, 32.495213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453189, -0.011478, -0.891340,
		-0.435831, -0.869402, 0.232788,
		-0.777605, 0.493971, 0.389001,
		42.035454, 32.287693, 32.611912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988091, 31.568497, 32.116394>,  <42.579777, 31.941916, 32.339611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988091, 31.568497, 32.116394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847115, 31.921932, 32.239719>,  <41.762527, 32.133995, 32.313713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847115, 31.921932, 32.239719>,  <41.988091, 31.568497, 32.116394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847115, 31.921932, 32.239719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592477, 0.044341, -0.804366,
		-0.724400, -0.466160, 0.507878,
		-0.352443, 0.883588, 0.308310,
		41.741383, 32.187008, 32.332211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368065, 31.463949, 32.055813>,  <41.988091, 31.568497, 32.116394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368065, 31.463949, 32.055813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407295, 31.862019, 32.057034>,  <41.430832, 32.100861, 32.057766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407295, 31.862019, 32.057034>,  <41.368065, 31.463949, 32.055813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407295, 31.862019, 32.057034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555122, 0.057254, -0.829796,
		-0.825967, 0.079684, 0.558058,
		0.098072, 0.995175, 0.003056,
		41.436718, 32.160572, 32.057949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693291, 31.690685, 31.919220>,  <41.368065, 31.463949, 32.055813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693291, 31.690685, 31.919220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948166, 31.987829, 31.837099>,  <41.101093, 32.166115, 31.787827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948166, 31.987829, 31.837099>,  <40.693291, 31.690685, 31.919220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948166, 31.987829, 31.837099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423881, 0.115311, -0.898348,
		-0.643670, 0.659444, 0.388359,
		0.637192, 0.742858, -0.205303,
		41.139324, 32.210686, 31.775509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293785, 32.213867, 31.587282>,  <40.693291, 31.690685, 31.919220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293785, 32.213867, 31.587282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663380, 32.309986, 31.468285>,  <40.885136, 32.367657, 31.396887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663380, 32.309986, 31.468285>,  <40.293785, 32.213867, 31.587282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663380, 32.309986, 31.468285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282271, -0.096299, -0.954489,
		-0.258012, 0.965910, -0.021149,
		0.923988, 0.240300, -0.297494,
		40.940575, 32.382076, 31.379036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291832, 32.735607, 31.041359>,  <40.293785, 32.213867, 31.587282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291832, 32.735607, 31.041359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643215, 32.549145, 30.999382>,  <40.854046, 32.437267, 30.974195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643215, 32.549145, 30.999382>,  <40.291832, 32.735607, 31.041359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643215, 32.549145, 30.999382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159198, -0.078457, -0.984124,
		0.450519, 0.881218, -0.143132,
		0.878458, -0.466153, -0.104942,
		40.906754, 32.409298, 30.967899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495819, 33.007877, 30.449417>,  <40.291832, 32.735607, 31.041359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495819, 33.007877, 30.449417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725719, 32.686188, 30.509920>,  <40.863659, 32.493176, 30.546221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725719, 32.686188, 30.509920>,  <40.495819, 33.007877, 30.449417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725719, 32.686188, 30.509920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078147, -0.130051, -0.988423,
		0.814586, 0.579921, -0.011900,
		0.574755, -0.804225, 0.151257,
		40.898148, 32.444920, 30.555298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042679, 33.038342, 29.980640>,  <40.495819, 33.007877, 30.449417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042679, 33.038342, 29.980640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046227, 32.647823, 30.067150>,  <41.048355, 32.413513, 30.119057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046227, 32.647823, 30.067150>,  <41.042679, 33.038342, 29.980640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046227, 32.647823, 30.067150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023097, -0.216026, -0.976114,
		0.999694, 0.013651, 0.020634,
		0.008867, -0.976292, 0.216275,
		41.048885, 32.354935, 30.132032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624535, 32.775238, 29.535961>,  <41.042679, 33.038342, 29.980640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624535, 32.775238, 29.535961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374748, 32.475273, 29.623304>,  <41.224876, 32.295296, 29.675711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374748, 32.475273, 29.623304>,  <41.624535, 32.775238, 29.535961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374748, 32.475273, 29.623304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074214, -0.221336, -0.972370,
		0.777521, -0.623414, 0.082562,
		-0.624462, -0.749911, 0.218359,
		41.187408, 32.250301, 29.688812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934139, 32.236382, 29.246593>,  <41.624535, 32.775238, 29.535961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934139, 32.236382, 29.246593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568264, 32.079468, 29.285513>,  <41.348740, 31.985321, 29.308865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568264, 32.079468, 29.285513>,  <41.934139, 32.236382, 29.246593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568264, 32.079468, 29.285513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068537, -0.387796, -0.919194,
		0.398315, -0.834104, 0.381597,
		-0.914685, -0.392282, 0.097298,
		41.293858, 31.961782, 29.314703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924633, 31.444324, 29.138121>,  <41.934139, 32.236382, 29.246593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924633, 31.444324, 29.138121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572258, 31.612444, 29.051128>,  <41.360832, 31.713316, 28.998934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572258, 31.612444, 29.051128>,  <41.924633, 31.444324, 29.138121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572258, 31.612444, 29.051128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039863, -0.523838, -0.850885,
		-0.471543, -0.740911, 0.478225,
		-0.880942, 0.420292, -0.217477,
		41.307976, 31.738533, 28.985884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474495, 30.846880, 29.042294>,  <41.924633, 31.444324, 29.138121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474495, 30.846880, 29.042294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279198, 31.155230, 28.878649>,  <41.162018, 31.340239, 28.780462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279198, 31.155230, 28.878649>,  <41.474495, 30.846880, 29.042294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279198, 31.155230, 28.878649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243813, -0.570605, -0.784197,
		-0.837959, -0.283131, 0.466542,
		-0.488242, 0.770874, -0.409112,
		41.132725, 31.386492, 28.755915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799927, 30.607691, 28.688498>,  <41.474495, 30.846880, 29.042294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799927, 30.607691, 28.688498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866428, 30.965996, 28.523590>,  <40.906330, 31.180979, 28.424646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866428, 30.965996, 28.523590>,  <40.799927, 30.607691, 28.688498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866428, 30.965996, 28.523590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236711, -0.369609, -0.898530,
		-0.957250, 0.246972, 0.150589,
		0.166252, 0.895764, -0.412269,
		40.916306, 31.234726, 28.399910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117149, 30.817530, 28.299234>,  <40.799927, 30.607691, 28.688498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117149, 30.817530, 28.299234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463745, 30.980078, 28.183260>,  <40.671703, 31.077606, 28.113676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463745, 30.980078, 28.183260>,  <40.117149, 30.817530, 28.299234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463745, 30.980078, 28.183260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100991, -0.426092, -0.899025,
		-0.488876, 0.808275, -0.328164,
		0.866488, 0.406370, -0.289935,
		40.723690, 31.101988, 28.096279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996304, 30.847681, 27.677134>,  <40.117149, 30.817530, 28.299234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996304, 30.847681, 27.677134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388264, 30.918207, 27.639793>,  <40.623440, 30.960524, 27.617390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388264, 30.918207, 27.639793>,  <39.996304, 30.847681, 27.677134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388264, 30.918207, 27.639793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063514, -0.167873, -0.983760,
		-0.189124, 0.969913, -0.153300,
		0.979897, 0.176316, -0.093352,
		40.682232, 30.971102, 27.611788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209923, 31.517059, 27.290823>,  <39.996304, 30.847681, 27.677134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209923, 31.517059, 27.290823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459835, 31.209244, 27.237967>,  <40.609783, 31.024555, 27.206253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459835, 31.209244, 27.237967>,  <40.209923, 31.517059, 27.290823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459835, 31.209244, 27.237967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204227, 0.002283, -0.978921,
		0.753619, 0.638596, -0.155735,
		0.624780, -0.769539, -0.132139,
		40.647270, 30.978382, 27.198324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598682, 31.620968, 26.716347>,  <40.209923, 31.517059, 27.290823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598682, 31.620968, 26.716347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571308, 31.222593, 26.739748>,  <40.554882, 30.983568, 26.753788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571308, 31.222593, 26.739748>,  <40.598682, 31.620968, 26.716347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571308, 31.222593, 26.739748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283211, -0.036832, -0.958350,
		0.956613, -0.082157, -0.279539,
		-0.068440, -0.995938, 0.058502,
		40.550777, 30.923811, 26.757299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026310, 31.154669, 26.196676>,  <40.598682, 31.620968, 26.716347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026310, 31.154669, 26.196676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694077, 30.939886, 26.255754>,  <40.494736, 30.811016, 26.291201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694077, 30.939886, 26.255754>,  <41.026310, 31.154669, 26.196676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694077, 30.939886, 26.255754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238912, 0.103997, -0.965456,
		0.503049, -0.837175, -0.214664,
		-0.830580, -0.536957, 0.147696,
		40.444904, 30.778799, 26.300064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787323, 30.596550, 25.643330>,  <41.026310, 31.154669, 26.196676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787323, 30.596550, 25.643330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447590, 30.728477, 25.808186>,  <40.243752, 30.807634, 25.907099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447590, 30.728477, 25.808186>,  <40.787323, 30.596550, 25.643330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447590, 30.728477, 25.808186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393821, 0.123976, -0.910788,
		-0.351490, -0.935869, 0.024593,
		-0.849329, 0.329818, 0.412141,
		40.192791, 30.827423, 25.931828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227051, 30.075750, 25.906542>,  <40.787323, 30.596550, 25.643330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227051, 30.075750, 25.906542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502346, 29.987719, 25.630024>,  <41.667522, 29.934900, 25.464113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502346, 29.987719, 25.630024>,  <41.227051, 30.075750, 25.906542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502346, 29.987719, 25.630024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664564, -0.573458, -0.479062,
		-0.290997, 0.789120, -0.540934,
		0.688240, -0.220080, -0.691296,
		41.708817, 29.921694, 25.422636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807953, 30.453732, 26.192131>,  <41.227051, 30.075750, 25.906542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807953, 30.453732, 26.192131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910778, 30.816082, 26.057489>,  <41.972473, 31.033493, 25.976704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910778, 30.816082, 26.057489>,  <41.807953, 30.453732, 26.192131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910778, 30.816082, 26.057489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044105, 0.336950, 0.940489,
		0.965388, -0.256611, 0.046663,
		0.257062, 0.905878, -0.336606,
		41.987896, 31.087845, 25.956509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418423, 30.703133, 26.609293>,  <41.807953, 30.453732, 26.192131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418423, 30.703133, 26.609293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182762, 30.988493, 26.457527>,  <42.041367, 31.159710, 26.366467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182762, 30.988493, 26.457527>,  <42.418423, 30.703133, 26.609293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182762, 30.988493, 26.457527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027068, 0.451874, 0.891671,
		0.807567, 0.535602, -0.246912,
		-0.589154, 0.713401, -0.379416,
		42.006016, 31.202513, 26.343702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844337, 31.288660, 26.715591>,  <42.418423, 30.703133, 26.609293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844337, 31.288660, 26.715591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450356, 31.340757, 26.670155>,  <42.213966, 31.372015, 26.642893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450356, 31.340757, 26.670155>,  <42.844337, 31.288660, 26.715591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450356, 31.340757, 26.670155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046666, 0.432445, 0.900452,
		0.166400, 0.892204, -0.419860,
		-0.984953, 0.130242, -0.113594,
		42.154869, 31.379829, 26.636076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218502, 31.070831, 27.384920>,  <42.844337, 31.288660, 26.715591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218502, 31.070831, 27.384920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322262, 30.762310, 27.152437>,  <43.384518, 30.577198, 27.012947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322262, 30.762310, 27.152437>,  <43.218502, 31.070831, 27.384920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322262, 30.762310, 27.152437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228461, 0.633735, -0.739044,
		0.938358, 0.058925, 0.340605,
		0.259401, -0.771303, -0.581208,
		43.400082, 30.530920, 26.978075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554733, 30.639217, 28.026451>,  <43.218502, 31.070831, 27.384920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554733, 30.639217, 28.026451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300575, 30.425184, 28.249147>,  <43.148079, 30.296764, 28.382765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300575, 30.425184, 28.249147>,  <43.554733, 30.639217, 28.026451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300575, 30.425184, 28.249147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365087, 0.427150, 0.827197,
		-0.680429, 0.728856, -0.076058,
		-0.635396, -0.535081, 0.556741,
		43.109955, 30.264660, 28.416170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159996, 31.111650, 28.389097>,  <43.554733, 30.639217, 28.026451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159996, 31.111650, 28.389097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207851, 30.769581, 28.590834>,  <43.236565, 30.564339, 28.711876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207851, 30.769581, 28.590834>,  <43.159996, 31.111650, 28.389097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207851, 30.769581, 28.590834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209187, 0.518301, 0.829220,
		-0.970529, 0.006294, 0.240901,
		0.119640, -0.855175, 0.504343,
		43.243744, 30.513029, 28.742136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853844, 31.219151, 28.988895>,  <43.159996, 31.111650, 28.389097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853844, 31.219151, 28.988895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099838, 30.919249, 29.086592>,  <43.247437, 30.739307, 29.145210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099838, 30.919249, 29.086592>,  <42.853844, 31.219151, 28.988895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099838, 30.919249, 29.086592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325671, 0.523595, 0.787265,
		-0.718141, -0.404617, 0.566179,
		0.614989, -0.749756, 0.244243,
		43.284336, 30.694323, 29.159864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698166, 30.996416, 29.596844>,  <42.853844, 31.219151, 28.988895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698166, 30.996416, 29.596844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066105, 30.844952, 29.555851>,  <43.286869, 30.754072, 29.531256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066105, 30.844952, 29.555851>,  <42.698166, 30.996416, 29.596844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066105, 30.844952, 29.555851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268449, 0.417118, 0.868301,
		-0.286046, -0.826213, 0.485335,
		0.919844, -0.378662, -0.102481,
		43.342056, 30.731354, 29.525106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786373, 30.663939, 30.235565>,  <42.698166, 30.996416, 29.596844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786373, 30.663939, 30.235565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154861, 30.723442, 30.091774>,  <43.375954, 30.759144, 30.005499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154861, 30.723442, 30.091774>,  <42.786373, 30.663939, 30.235565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154861, 30.723442, 30.091774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251466, 0.477354, 0.841961,
		0.296847, -0.866028, 0.402341,
		0.921220, 0.148758, -0.359478,
		43.431229, 30.768070, 29.983931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146881, 30.507704, 30.769030>,  <42.786373, 30.663939, 30.235565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146881, 30.507704, 30.769030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419918, 30.683617, 30.535566>,  <43.583740, 30.789164, 30.395489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419918, 30.683617, 30.535566>,  <43.146881, 30.507704, 30.769030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419918, 30.683617, 30.535566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413624, 0.425932, 0.804672,
		0.602479, -0.790679, 0.108834,
		0.682593, 0.439782, -0.583659,
		43.624695, 30.815552, 30.360468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817574, 30.300503, 30.965569>,  <43.146881, 30.507704, 30.769030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817574, 30.300503, 30.965569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860397, 30.654392, 30.784107>,  <43.886089, 30.866726, 30.675230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860397, 30.654392, 30.784107>,  <43.817574, 30.300503, 30.965569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860397, 30.654392, 30.784107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515770, 0.340664, 0.786085,
		0.850012, -0.318137, -0.419844,
		0.107057, 0.884724, -0.453654,
		43.892513, 30.919809, 30.648010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431324, 30.543257, 31.089937>,  <43.817574, 30.300503, 30.965569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431324, 30.543257, 31.089937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251106, 30.884493, 30.984680>,  <44.142975, 31.089235, 30.921526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251106, 30.884493, 30.984680>,  <44.431324, 30.543257, 31.089937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251106, 30.884493, 30.984680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454743, 0.472948, 0.754672,
		0.768256, 0.220352, -0.601022,
		-0.450545, 0.853092, -0.263142,
		44.115944, 31.140421, 30.905737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940250, 30.935160, 31.247763>,  <44.431324, 30.543257, 31.089937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.940250, 30.935160, 31.247763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625336, 31.180685, 31.224375>,  <44.436386, 31.327999, 31.210342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625336, 31.180685, 31.224375>,  <44.940250, 30.935160, 31.247763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625336, 31.180685, 31.224375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347269, 0.519767, 0.780543,
		0.509497, 0.594204, -0.622362,
		-0.787284, 0.613811, -0.058471,
		44.389149, 31.364828, 31.206833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166946, 31.563833, 31.261845>,  <44.940250, 30.935160, 31.247763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166946, 31.563833, 31.261845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784222, 31.626696, 31.359676>,  <44.554588, 31.664413, 31.418375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784222, 31.626696, 31.359676>,  <45.166946, 31.563833, 31.261845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.784222, 31.626696, 31.359676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289222, 0.599870, 0.745994,
		-0.029479, 0.784511, -0.619414,
		-0.956808, 0.157157, 0.244581,
		44.497181, 31.673843, 31.433050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104916, 32.302292, 31.387352>,  <45.166946, 31.563833, 31.261845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104916, 32.302292, 31.387352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782787, 32.181252, 31.591269>,  <44.589508, 32.108627, 31.713617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782787, 32.181252, 31.591269>,  <45.104916, 32.302292, 31.387352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782787, 32.181252, 31.591269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274325, 0.572104, 0.772944,
		-0.525545, 0.762319, -0.377719,
		-0.805325, -0.302599, 0.509790,
		44.541191, 32.090473, 31.744205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.943920, 32.877789, 31.659660>,  <45.104916, 32.302292, 31.387352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.943920, 32.877789, 31.659660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768887, 32.574741, 31.853376>,  <44.663868, 32.392914, 31.969606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768887, 32.574741, 31.853376>,  <44.943920, 32.877789, 31.659660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768887, 32.574741, 31.853376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129071, 0.480091, 0.867671,
		-0.889865, 0.442187, -0.112294,
		-0.437584, -0.757617, 0.484290,
		44.637611, 32.347458, 31.998663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548367, 33.123444, 32.152561>,  <44.943920, 32.877789, 31.659660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548367, 33.123444, 32.152561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560272, 32.750446, 32.296543>,  <44.567417, 32.526649, 32.382935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560272, 32.750446, 32.296543>,  <44.548367, 33.123444, 32.152561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560272, 32.750446, 32.296543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042626, 0.360974, 0.931601,
		-0.998648, -0.012389, 0.050494,
		0.029768, -0.932494, 0.359958,
		44.569202, 32.470699, 32.404530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932384, 32.931541, 32.619240>,  <44.548367, 33.123444, 32.152561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932384, 32.931541, 32.619240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263729, 32.725197, 32.706600>,  <44.462536, 32.601391, 32.759018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263729, 32.725197, 32.706600>,  <43.932384, 32.931541, 32.619240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263729, 32.725197, 32.706600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059057, 0.468114, 0.881692,
		-0.557071, -0.717463, 0.418234,
		0.828363, -0.515865, 0.218401,
		44.512238, 32.570438, 32.772121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684601, 32.478676, 33.201546>,  <43.932384, 32.931541, 32.619240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684601, 32.478676, 33.201546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.083904, 32.500698, 33.209976>,  <44.323486, 32.513912, 33.215034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.083904, 32.500698, 33.209976>,  <43.684601, 32.478676, 33.201546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083904, 32.500698, 33.209976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032974, 0.225154, 0.973765,
		0.048866, -0.972766, 0.226578,
		0.998261, 0.055055, 0.021074,
		44.383381, 32.517216, 33.216297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853554, 32.372269, 33.860500>,  <43.684601, 32.478676, 33.201546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853554, 32.372269, 33.860500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226658, 32.466660, 33.751488>,  <44.450520, 32.523296, 33.686081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226658, 32.466660, 33.751488>,  <43.853554, 32.372269, 33.860500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226658, 32.466660, 33.751488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144821, 0.447018, 0.882724,
		0.330132, -0.862837, 0.382785,
		0.932759, 0.235980, -0.272532,
		44.506485, 32.537453, 33.669727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287663, 32.121597, 34.404575>,  <43.853554, 32.372269, 33.860500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287663, 32.121597, 34.404575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509396, 32.389851, 34.207413>,  <44.642437, 32.550804, 34.089115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509396, 32.389851, 34.207413>,  <44.287663, 32.121597, 34.404575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509396, 32.389851, 34.207413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283009, 0.405060, 0.869386,
		0.782700, -0.621429, 0.034743,
		0.554335, 0.670635, -0.492911,
		44.675697, 32.591042, 34.059540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.070866, 32.116364, 34.612057>,  <44.287663, 32.121597, 34.404575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.070866, 32.116364, 34.612057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004002, 32.475990, 34.450199>,  <44.963882, 32.691765, 34.353085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004002, 32.475990, 34.450199>,  <45.070866, 32.116364, 34.612057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004002, 32.475990, 34.450199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197518, 0.432638, 0.879665,
		0.965943, 0.067117, -0.249900,
		-0.167156, 0.899066, -0.404647,
		44.953854, 32.745708, 34.328804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599602, 32.638721, 34.885715>,  <45.070866, 32.116364, 34.612057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599602, 32.638721, 34.885715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289852, 32.860424, 34.763634>,  <45.104004, 32.993446, 34.690384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289852, 32.860424, 34.763634>,  <45.599602, 32.638721, 34.885715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289852, 32.860424, 34.763634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080980, 0.565212, 0.820962,
		0.627527, 0.611014, -0.482568,
		-0.774372, 0.554254, -0.305205,
		45.057541, 33.026699, 34.672073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838493, 33.329758, 35.012138>,  <45.599602, 32.638721, 34.885715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838493, 33.329758, 35.012138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452988, 33.409847, 34.941631>,  <45.221684, 33.457901, 34.899326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452988, 33.409847, 34.941631>,  <45.838493, 33.329758, 35.012138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452988, 33.409847, 34.941631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072299, 0.832113, 0.549874,
		0.256772, 0.517204, -0.816436,
		-0.963764, 0.200220, -0.176270,
		45.163860, 33.469913, 34.888752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625801, 34.050091, 34.690639>,  <45.838493, 33.329758, 35.012138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625801, 34.050091, 34.690639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303841, 33.929546, 34.895119>,  <45.110664, 33.857220, 35.017807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303841, 33.929546, 34.895119>,  <45.625801, 34.050091, 34.690639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303841, 33.929546, 34.895119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025312, 0.843233, 0.536952,
		-0.592873, 0.445131, -0.671089,
		-0.804898, -0.301358, 0.511198,
		45.062370, 33.839138, 35.048477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.144432, 34.119286, 35.208145>,  <45.625801, 34.050091, 34.690639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.144432, 34.119286, 35.208145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.316853, 33.758808, 35.190071>,  <46.420307, 33.542522, 35.179226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.316853, 33.758808, 35.190071>,  <46.144432, 34.119286, 35.208145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.316853, 33.758808, 35.190071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079415, 0.011990, -0.996770,
		0.898824, 0.433250, -0.066400,
		0.431055, -0.901194, -0.045183,
		46.446167, 33.488449, 35.176517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.692944, 34.184055, 34.734432>,  <46.144432, 34.119286, 35.208145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.692944, 34.184055, 34.734432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.583076, 33.801697, 34.776051>,  <46.517159, 33.572281, 34.801022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.583076, 33.801697, 34.776051>,  <46.692944, 34.184055, 34.734432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583076, 33.801697, 34.776051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061299, -0.090577, -0.994001,
		0.959585, -0.279393, -0.033717,
		-0.274663, -0.955895, 0.104043,
		46.500679, 33.514927, 34.807262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231373, 34.317055, 35.233829>,  <46.692944, 34.184055, 34.734432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231373, 34.317055, 35.233829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.522636, 34.099068, 35.067558>,  <47.697395, 33.968277, 34.967796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.522636, 34.099068, 35.067558>,  <47.231373, 34.317055, 35.233829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.522636, 34.099068, 35.067558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656584, -0.728637, -0.194900,
		-0.196666, 0.414849, -0.888382,
		0.728162, -0.544967, -0.415681,
		47.741085, 33.935577, 34.942856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.780632, 34.780788, 35.068108>,  <47.231373, 34.317055, 35.233829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.780632, 34.780788, 35.068108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.613487, 35.036999, 35.325825>,  <47.513199, 35.190723, 35.480457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.613487, 35.036999, 35.325825>,  <47.780632, 34.780788, 35.068108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.613487, 35.036999, 35.325825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839185, 0.000416, 0.543845,
		0.348079, 0.767937, -0.537693,
		-0.417862, 0.640526, 0.644297,
		47.488129, 35.229156, 35.519115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.069141, 42.276623, 40.479439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679699, 42.227051, 40.556107>,  <37.446033, 42.197308, 40.602108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679699, 42.227051, 40.556107>,  <38.069141, 42.276623, 40.479439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679699, 42.227051, 40.556107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086555, -0.576578, -0.812444,
		0.211198, -0.807589, 0.550632,
		-0.973603, -0.123927, 0.191673,
		37.387619, 42.189873, 40.613609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967484, 41.626102, 40.316135>,  <38.069141, 42.276623, 40.479439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967484, 41.626102, 40.316135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.588902, 41.755219, 40.314373>,  <37.361752, 41.832687, 40.313316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.588902, 41.755219, 40.314373>,  <37.967484, 41.626102, 40.316135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588902, 41.755219, 40.314373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227721, -0.677256, -0.699619,
		-0.228819, -0.661157, 0.714502,
		-0.946459, 0.322793, -0.004410,
		37.304962, 41.852058, 40.313049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489342, 40.998093, 40.357666>,  <37.967484, 41.626102, 40.316135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489342, 40.998093, 40.357666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264946, 41.298454, 40.218281>,  <37.130306, 41.478672, 40.134651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264946, 41.298454, 40.218281>,  <37.489342, 40.998093, 40.357666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264946, 41.298454, 40.218281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396490, -0.613241, -0.683177,
		-0.726694, -0.245095, 0.641751,
		-0.560992, 0.750908, -0.348461,
		37.096649, 41.523727, 40.113743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879936, 40.612865, 40.065891>,  <37.489342, 40.998093, 40.357666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879936, 40.612865, 40.065891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849365, 40.982697, 39.916592>,  <36.831020, 41.204594, 39.827011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849365, 40.982697, 39.916592>,  <36.879936, 40.612865, 40.065891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849365, 40.982697, 39.916592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337868, -0.376214, -0.862733,
		-0.938085, 0.060171, 0.341139,
		-0.076430, 0.924577, -0.373251,
		36.826435, 41.260071, 39.804615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156590, 40.734760, 39.968658>,  <36.879936, 40.612865, 40.065891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156590, 40.734760, 39.968658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.380863, 40.956890, 39.722977>,  <36.515427, 41.090168, 39.575569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.380863, 40.956890, 39.722977>,  <36.156590, 40.734760, 39.968658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380863, 40.956890, 39.722977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443352, -0.425142, -0.789109,
		-0.699334, 0.714752, 0.007832,
		0.560687, 0.555323, -0.614203,
		36.549068, 41.123486, 39.538715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702400, 41.039745, 39.473095>,  <36.156590, 40.734760, 39.968658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702400, 41.039745, 39.473095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055843, 41.040508, 39.285805>,  <36.267910, 41.040966, 39.173431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055843, 41.040508, 39.285805>,  <35.702400, 41.039745, 39.473095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055843, 41.040508, 39.285805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405722, -0.496054, -0.767672,
		-0.233732, 0.868290, -0.437541,
		0.883606, 0.001910, -0.468228,
		36.320927, 41.041080, 39.145336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487923, 41.020992, 38.742905>,  <35.702400, 41.039745, 39.473095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487923, 41.020992, 38.742905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.879742, 40.940586, 38.746597>,  <36.114834, 40.892342, 38.748814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.879742, 40.940586, 38.746597>,  <35.487923, 41.020992, 38.742905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879742, 40.940586, 38.746597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087991, -0.469129, -0.878736,
		0.180974, 0.859948, -0.477220,
		0.979544, -0.201019, 0.009233,
		36.173603, 40.880280, 38.749367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651402, 40.962536, 38.108425>,  <35.487923, 41.020992, 38.742905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651402, 40.962536, 38.108425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984291, 40.787437, 38.244534>,  <36.184025, 40.682377, 38.326199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984291, 40.787437, 38.244534>,  <35.651402, 40.962536, 38.108425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984291, 40.787437, 38.244534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035378, -0.570539, -0.820508,
		0.553316, 0.694881, -0.459327,
		0.832220, -0.437751, 0.340272,
		36.233955, 40.656113, 38.346615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188313, 40.880497, 37.521023>,  <35.651402, 40.962536, 38.108425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188313, 40.880497, 37.521023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276844, 40.621204, 37.812450>,  <36.329964, 40.465630, 37.987305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276844, 40.621204, 37.812450>,  <36.188313, 40.880497, 37.521023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276844, 40.621204, 37.812450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114241, -0.724717, -0.679511,
		0.968485, 0.233626, -0.086344,
		0.221327, -0.648232, 0.728567,
		36.343243, 40.426735, 38.031021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623062, 40.470314, 37.277496>,  <36.188313, 40.880497, 37.521023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623062, 40.470314, 37.277496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.523632, 40.250095, 37.596272>,  <36.463974, 40.117966, 37.787537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.523632, 40.250095, 37.596272>,  <36.623062, 40.470314, 37.277496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523632, 40.250095, 37.596272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077666, -0.831444, -0.550154,
		0.965495, -0.074857, 0.249432,
		-0.248572, -0.550543, 0.796941,
		36.449062, 40.084934, 37.835354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113033, 40.008568, 37.323940>,  <36.623062, 40.470314, 37.277496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113033, 40.008568, 37.323940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798294, 39.833172, 37.497654>,  <36.609451, 39.727936, 37.601883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798294, 39.833172, 37.497654>,  <37.113033, 40.008568, 37.323940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798294, 39.833172, 37.497654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237896, -0.864812, -0.442160,
		0.569454, -0.244599, 0.784789,
		-0.786847, -0.438488, 0.434282,
		36.562241, 39.701626, 37.627937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395195, 39.480255, 37.805996>,  <37.113033, 40.008568, 37.323940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395195, 39.480255, 37.805996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016685, 39.386105, 37.717300>,  <36.789581, 39.329617, 37.664085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016685, 39.386105, 37.717300>,  <37.395195, 39.480255, 37.805996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016685, 39.386105, 37.717300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280715, -0.938303, -0.201956,
		-0.160521, -0.253350, 0.953963,
		-0.946272, -0.235374, -0.221737,
		36.732803, 39.315491, 37.650780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180382, 38.831596, 38.163643>,  <37.395195, 39.480255, 37.805996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180382, 38.831596, 38.163643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925156, 38.846184, 37.855995>,  <36.772022, 38.854935, 37.671406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925156, 38.846184, 37.855995>,  <37.180382, 38.831596, 38.163643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925156, 38.846184, 37.855995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253744, -0.933122, -0.254747,
		-0.726973, -0.357705, 0.586138,
		-0.638063, 0.036465, -0.769120,
		36.733738, 38.857124, 37.625259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801708, 38.174759, 38.133972>,  <37.180382, 38.831596, 38.163643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801708, 38.174759, 38.133972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766743, 38.343868, 37.773167>,  <36.745762, 38.445332, 37.556683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766743, 38.343868, 37.773167>,  <36.801708, 38.174759, 38.133972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766743, 38.343868, 37.773167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336767, -0.839626, -0.426164,
		-0.937522, -0.341020, -0.068981,
		-0.087412, 0.422769, -0.902012,
		36.740520, 38.470699, 37.502563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421825, 37.624924, 37.732990>,  <36.801708, 38.174759, 38.133972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421825, 37.624924, 37.732990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588135, 37.864922, 37.459599>,  <36.687920, 38.008919, 37.295563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588135, 37.864922, 37.459599>,  <36.421825, 37.624924, 37.732990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588135, 37.864922, 37.459599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254955, -0.798273, -0.545672,
		-0.872999, 0.052622, -0.484874,
		0.415776, 0.599992, -0.683476,
		36.712868, 38.044918, 37.254555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067955, 37.444950, 37.085701>,  <36.421825, 37.624924, 37.732990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067955, 37.444950, 37.085701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421597, 37.595200, 36.974514>,  <36.633781, 37.685349, 36.907803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421597, 37.595200, 36.974514>,  <36.067955, 37.444950, 37.085701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421597, 37.595200, 36.974514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184250, -0.826877, -0.531343,
		-0.429425, 0.418549, -0.800257,
		0.884108, 0.375620, -0.277964,
		36.686829, 37.707886, 36.891125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110691, 37.460468, 36.381207>,  <36.067955, 37.444950, 37.085701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110691, 37.460468, 36.381207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495251, 37.463642, 36.491226>,  <36.725986, 37.465546, 36.557240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495251, 37.463642, 36.491226>,  <36.110691, 37.460468, 36.381207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495251, 37.463642, 36.491226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189386, -0.744251, -0.640486,
		0.199624, 0.667852, -0.717024,
		0.961397, 0.007938, 0.275052,
		36.783669, 37.466022, 36.573742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427727, 37.292923, 35.808830>,  <36.110691, 37.460468, 36.381207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427727, 37.292923, 35.808830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727348, 37.243809, 36.069244>,  <36.907120, 37.214340, 36.225494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727348, 37.243809, 36.069244>,  <36.427727, 37.292923, 35.808830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727348, 37.243809, 36.069244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403475, -0.694879, -0.595273,
		0.525484, 0.708566, -0.470958,
		0.749049, -0.122787, 0.651036,
		36.952065, 37.206974, 36.264557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080475, 37.249428, 35.382473>,  <36.427727, 37.292923, 35.808830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080475, 37.249428, 35.382473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167778, 37.088062, 35.737915>,  <37.220161, 36.991241, 35.951180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167778, 37.088062, 35.737915>,  <37.080475, 37.249428, 35.382473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167778, 37.088062, 35.737915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465772, -0.757091, -0.458116,
		0.857565, 0.513876, 0.022656,
		0.218262, -0.403417, 0.888604,
		37.233257, 36.967037, 36.004498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846306, 37.066525, 35.380226>,  <37.080475, 37.249428, 35.382473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846306, 37.066525, 35.380226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641563, 36.820679, 35.620308>,  <37.518719, 36.673172, 35.764359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641563, 36.820679, 35.620308>,  <37.846306, 37.066525, 35.380226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641563, 36.820679, 35.620308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495465, -0.781968, -0.378207,
		0.701795, 0.103794, 0.704777,
		-0.511857, -0.614617, 0.600207,
		37.488007, 36.636295, 35.800369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329590, 36.617954, 35.455296>,  <37.846306, 37.066525, 35.380226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329590, 36.617954, 35.455296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016376, 36.428120, 35.616104>,  <37.828449, 36.314217, 35.712589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016376, 36.428120, 35.616104>,  <38.329590, 36.617954, 35.455296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016376, 36.428120, 35.616104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320003, -0.861649, -0.393901,
		0.533341, -0.179792, 0.826573,
		-0.783036, -0.474589, 0.402019,
		37.781467, 36.285744, 35.736710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587135, 36.006050, 35.928600>,  <38.329590, 36.617954, 35.455296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587135, 36.006050, 35.928600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.218548, 35.963078, 35.779282>,  <37.997395, 35.937294, 35.689690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.218548, 35.963078, 35.779282>,  <38.587135, 36.006050, 35.928600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218548, 35.963078, 35.779282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257685, -0.888163, -0.380479,
		-0.290675, -0.446793, 0.846099,
		-0.921470, -0.107431, -0.373299,
		37.942108, 35.930847, 35.667294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143349, 35.450676, 35.877110>,  <38.587135, 36.006050, 35.928600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143349, 35.450676, 35.877110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377460, 35.472450, 35.553509>,  <39.517925, 35.485516, 35.359348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377460, 35.472450, 35.553509>,  <39.143349, 35.450676, 35.877110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377460, 35.472450, 35.553509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399386, 0.848961, 0.346059,
		0.705650, -0.525645, 0.475137,
		0.585277, 0.054434, -0.809005,
		39.553043, 35.488781, 35.310806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851349, 35.503262, 36.124023>,  <39.143349, 35.450676, 35.877110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851349, 35.503262, 36.124023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.894951, 35.637497, 35.749752>,  <39.921112, 35.718040, 35.525188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.894951, 35.637497, 35.749752>,  <39.851349, 35.503262, 36.124023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894951, 35.637497, 35.749752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503459, 0.792990, 0.343067,
		0.857116, -0.508471, -0.082518,
		0.109004, 0.335593, -0.935679,
		39.927650, 35.738174, 35.469048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534996, 35.546299, 35.971455>,  <39.851349, 35.503262, 36.124023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534996, 35.546299, 35.971455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.334625, 35.816067, 35.754482>,  <40.214405, 35.977928, 35.624298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.334625, 35.816067, 35.754482>,  <40.534996, 35.546299, 35.971455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334625, 35.816067, 35.754482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565229, 0.729539, 0.385084,
		0.655433, -0.113700, -0.746646,
		-0.500923, 0.674422, -0.542430,
		40.184349, 36.018394, 35.591755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038792, 36.087975, 35.820282>,  <40.534996, 35.546299, 35.971455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038792, 36.087975, 35.820282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.693913, 36.270672, 35.732635>,  <40.486984, 36.380291, 35.680050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.693913, 36.270672, 35.732635>,  <41.038792, 36.087975, 35.820282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693913, 36.270672, 35.732635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348781, 0.848909, 0.397122,
		0.367388, 0.265974, -0.891226,
		-0.862194, 0.456740, -0.219112,
		40.435253, 36.407692, 35.666901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259258, 36.718975, 35.766621>,  <41.038792, 36.087975, 35.820282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259258, 36.718975, 35.766621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.868687, 36.802280, 35.789272>,  <40.634342, 36.852264, 35.802864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.868687, 36.802280, 35.789272>,  <41.259258, 36.718975, 35.766621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868687, 36.802280, 35.789272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215251, 0.920673, 0.325621,
		0.015678, 0.330136, -0.943803,
		-0.976433, 0.208260, 0.056627,
		40.575756, 36.864758, 35.806259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191483, 37.289814, 35.374073>,  <41.259258, 36.718975, 35.766621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191483, 37.289814, 35.374073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.910084, 37.267479, 35.657475>,  <40.741245, 37.254078, 35.827515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.910084, 37.267479, 35.657475>,  <41.191483, 37.289814, 35.374073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910084, 37.267479, 35.657475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217440, 0.932194, 0.289370,
		-0.676623, 0.357627, -0.643649,
		-0.703492, -0.055839, 0.708506,
		40.699036, 37.250729, 35.870026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844742, 38.047085, 35.247959>,  <41.191483, 37.289814, 35.374073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844742, 38.047085, 35.247959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.732658, 37.878204, 35.592800>,  <40.665409, 37.776875, 35.799706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.732658, 37.878204, 35.592800>,  <40.844742, 38.047085, 35.247959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732658, 37.878204, 35.592800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126576, 0.906492, 0.402803,
		-0.951559, 0.003745, -0.307444,
		-0.280204, -0.422205, 0.862107,
		40.648598, 37.751541, 35.851433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428558, 38.462746, 35.496616>,  <40.844742, 38.047085, 35.247959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428558, 38.462746, 35.496616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.503052, 38.292709, 35.850929>,  <40.547749, 38.190689, 36.063519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.503052, 38.292709, 35.850929>,  <40.428558, 38.462746, 35.496616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503052, 38.292709, 35.850929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023023, 0.899422, 0.436474,
		-0.982235, -0.101681, 0.157719,
		0.186237, -0.425089, 0.885785,
		40.558922, 38.165184, 36.116665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067570, 38.860481, 35.871918>,  <40.428558, 38.462746, 35.496616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067570, 38.860481, 35.871918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.317879, 38.686581, 36.130959>,  <40.468063, 38.582241, 36.286385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.317879, 38.686581, 36.130959>,  <40.067570, 38.860481, 35.871918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317879, 38.686581, 36.130959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026853, 0.841776, 0.539159,
		-0.779542, -0.320001, 0.538437,
		0.625775, -0.434755, 0.647606,
		40.505611, 38.556152, 36.325241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783916, 38.995506, 36.501217>,  <40.067570, 38.860481, 35.871918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783916, 38.995506, 36.501217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.166035, 38.897858, 36.567928>,  <40.395306, 38.839268, 36.607956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.166035, 38.897858, 36.567928>,  <39.783916, 38.995506, 36.501217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166035, 38.897858, 36.567928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092568, 0.782710, 0.615464,
		-0.280784, -0.572513, 0.770318,
		0.955297, -0.244119, 0.166776,
		40.452625, 38.824623, 36.617962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937019, 39.041904, 37.245735>,  <39.783916, 38.995506, 36.501217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937019, 39.041904, 37.245735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.312092, 39.038815, 37.106773>,  <40.537136, 39.036961, 37.023396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.312092, 39.038815, 37.106773>,  <39.937019, 39.041904, 37.245735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312092, 39.038815, 37.106773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225433, 0.774339, 0.591252,
		0.264441, -0.632724, 0.727827,
		0.937684, -0.007725, -0.347404,
		40.593395, 39.036499, 37.002552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394005, 38.835575, 37.811268>,  <39.937019, 39.041904, 37.245735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394005, 38.835575, 37.811268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.597713, 39.065582, 37.555145>,  <40.719940, 39.203587, 37.401470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.597713, 39.065582, 37.555145>,  <40.394005, 38.835575, 37.811268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597713, 39.065582, 37.555145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135782, 0.681018, 0.719567,
		0.849824, -0.453401, 0.268749,
		0.509275, 0.575015, -0.640310,
		40.750496, 39.238087, 37.363052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884525, 39.065464, 38.230785>,  <40.394005, 38.835575, 37.811268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884525, 39.065464, 38.230785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.877380, 39.339539, 37.939526>,  <40.873093, 39.503983, 37.764771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.877380, 39.339539, 37.939526>,  <40.884525, 39.065464, 38.230785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877380, 39.339539, 37.939526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087840, 0.726528, 0.681499,
		0.995974, -0.051786, -0.073166,
		-0.017865, 0.685183, -0.728152,
		40.872021, 39.545094, 37.721081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460781, 39.469193, 38.214741>,  <40.884525, 39.065464, 38.230785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460781, 39.469193, 38.214741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.206329, 39.711658, 38.023785>,  <41.053658, 39.857140, 37.909210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.206329, 39.711658, 38.023785>,  <41.460781, 39.469193, 38.214741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206329, 39.711658, 38.023785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088173, 0.671768, 0.735495,
		0.766527, 0.425779, -0.480780,
		-0.636131, 0.606168, -0.477386,
		41.015491, 39.893509, 37.880569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650780, 40.109268, 38.461437>,  <41.460781, 39.469193, 38.214741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650780, 40.109268, 38.461437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.288033, 40.172367, 38.305126>,  <41.070385, 40.210224, 38.211338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.288033, 40.172367, 38.305126>,  <41.650780, 40.109268, 38.461437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288033, 40.172367, 38.305126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151751, 0.742851, 0.652030,
		0.393143, 0.650606, -0.649731,
		-0.906868, 0.157744, -0.390777,
		41.015972, 40.219688, 38.187893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638912, 40.773556, 38.507168>,  <41.650780, 40.109268, 38.461437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638912, 40.773556, 38.507168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.254539, 40.688499, 38.436287>,  <41.023918, 40.637466, 38.393757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.254539, 40.688499, 38.436287>,  <41.638912, 40.773556, 38.507168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254539, 40.688499, 38.436287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276800, 0.738857, 0.614388,
		0.000281, 0.639432, -0.768848,
		-0.960927, -0.212644, -0.177202,
		40.966263, 40.624706, 38.383125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266640, 41.473446, 38.405521>,  <41.638912, 40.773556, 38.507168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266640, 41.473446, 38.405521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.979881, 41.208744, 38.493279>,  <40.807827, 41.049923, 38.545933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.979881, 41.208744, 38.493279>,  <41.266640, 41.473446, 38.405521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979881, 41.208744, 38.493279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359238, 0.620328, 0.697238,
		-0.597498, 0.421034, -0.682441,
		-0.716899, -0.661757, 0.219393,
		40.764812, 41.010216, 38.559097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676258, 41.874660, 38.459278>,  <41.266640, 41.473446, 38.405521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676258, 41.874660, 38.459278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.620346, 41.532726, 38.659164>,  <40.586800, 41.327564, 38.779099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.620346, 41.532726, 38.659164>,  <40.676258, 41.874660, 38.459278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620346, 41.532726, 38.659164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434914, 0.506388, 0.744595,
		-0.889557, -0.113255, -0.442562,
		-0.139779, -0.854836, 0.499718,
		40.578411, 41.276276, 38.809078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.824493, 42.071823, 38.941540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960678, 41.714882, 39.060055>,  <40.042389, 41.500717, 39.131165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960678, 41.714882, 39.060055>,  <39.824493, 42.071823, 38.941540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960678, 41.714882, 39.060055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140883, 0.263144, 0.954415,
		-0.929643, -0.366685, -0.036127,
		0.340463, -0.892355, 0.296290,
		40.062817, 41.447174, 39.148941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340446, 41.713757, 39.242985>,  <39.824493, 42.071823, 38.941540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340446, 41.713757, 39.242985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.674915, 41.559517, 39.398998>,  <39.875595, 41.466972, 39.492607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.674915, 41.559517, 39.398998>,  <39.340446, 41.713757, 39.242985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674915, 41.559517, 39.398998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384471, 0.095059, 0.918230,
		-0.391149, -0.917755, -0.068768,
		0.836172, -0.385604, 0.390032,
		39.925766, 41.443836, 39.516006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164467, 41.262039, 39.801464>,  <39.340446, 41.713757, 39.242985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164467, 41.262039, 39.801464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.538933, 41.378025, 39.880985>,  <39.763611, 41.447617, 39.928699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.538933, 41.378025, 39.880985>,  <39.164467, 41.262039, 39.801464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538933, 41.378025, 39.880985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294591, 0.338356, 0.893718,
		0.191878, -0.895230, 0.402176,
		0.936162, 0.289963, 0.198803,
		39.819782, 41.465015, 39.940624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291878, 41.035873, 40.473095>,  <39.164467, 41.262039, 39.801464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291878, 41.035873, 40.473095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553379, 41.334438, 40.423336>,  <39.710278, 41.513577, 40.393482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553379, 41.334438, 40.423336>,  <39.291878, 41.035873, 40.473095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553379, 41.334438, 40.423336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258445, 0.374752, 0.890375,
		0.711208, -0.549932, 0.437902,
		0.653750, 0.746415, -0.124399,
		39.749504, 41.558361, 40.386017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635254, 41.076263, 41.094227>,  <39.291878, 41.035873, 40.473095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635254, 41.076263, 41.094227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.719612, 41.422310, 40.912189>,  <39.770226, 41.629936, 40.802967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.719612, 41.422310, 40.912189>,  <39.635254, 41.076263, 41.094227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719612, 41.422310, 40.912189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174450, 0.491396, 0.853286,
		0.961817, -0.100560, 0.254550,
		0.210891, 0.865112, -0.455090,
		39.782879, 41.681843, 40.775661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128677, 41.458576, 41.526493>,  <39.635254, 41.076263, 41.094227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128677, 41.458576, 41.526493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.958080, 41.723068, 41.279629>,  <39.855724, 41.881763, 41.131512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.958080, 41.723068, 41.279629>,  <40.128677, 41.458576, 41.526493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958080, 41.723068, 41.279629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064753, 0.702893, 0.708342,
		0.902172, 0.262137, -0.342593,
		-0.426489, 0.661230, -0.617157,
		39.830135, 41.921436, 41.094482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475685, 42.052189, 41.599762>,  <40.128677, 41.458576, 41.526493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475685, 42.052189, 41.599762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.147026, 42.177258, 41.409130>,  <39.949829, 42.252300, 41.294750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.147026, 42.177258, 41.409130>,  <40.475685, 42.052189, 41.599762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147026, 42.177258, 41.409130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079857, 0.891012, 0.446901,
		0.564368, 0.329138, -0.757071,
		-0.821651, 0.312674, -0.476575,
		39.900532, 42.271061, 41.266159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693470, 42.620846, 41.225349>,  <40.475685, 42.052189, 41.599762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693470, 42.620846, 41.225349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.300140, 42.666004, 41.282372>,  <40.064140, 42.693100, 41.316586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.300140, 42.666004, 41.282372>,  <40.693470, 42.620846, 41.225349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300140, 42.666004, 41.282372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158441, 0.916618, 0.367025,
		-0.089232, 0.383492, -0.919223,
		-0.983328, 0.112892, 0.142553,
		40.005142, 42.699871, 41.325138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503254, 43.377567, 41.121136>,  <40.693470, 42.620846, 41.225349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503254, 43.377567, 41.121136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.222000, 43.211285, 41.351883>,  <40.053246, 43.111515, 41.490334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.222000, 43.211285, 41.351883>,  <40.503254, 43.377567, 41.121136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222000, 43.211285, 41.351883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067746, 0.768436, 0.636331,
		-0.707818, 0.486510, -0.512154,
		-0.703139, -0.415710, 0.576872,
		40.011059, 43.086571, 41.524944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199158, 43.952702, 41.383438>,  <40.503254, 43.377567, 41.121136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199158, 43.952702, 41.383438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.040680, 43.683849, 41.633644>,  <39.945591, 43.522537, 41.783768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.040680, 43.683849, 41.633644>,  <40.199158, 43.952702, 41.383438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040680, 43.683849, 41.633644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042887, 0.694070, 0.718629,
		-0.917163, 0.257893, -0.303815,
		-0.396199, -0.672129, 0.625515,
		39.921822, 43.482212, 41.821297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630131, 44.236881, 41.701820>,  <40.199158, 43.952702, 41.383438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630131, 44.236881, 41.701820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.768551, 43.957161, 41.952011>,  <39.851604, 43.789330, 42.102127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.768551, 43.957161, 41.952011>,  <39.630131, 44.236881, 41.701820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768551, 43.957161, 41.952011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046021, 0.653215, 0.755772,
		-0.937086, -0.290321, 0.193863,
		0.346051, -0.699302, 0.625480,
		39.872368, 43.747372, 42.139656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312969, 44.313831, 42.399693>,  <39.630131, 44.236881, 41.701820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312969, 44.313831, 42.399693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.620518, 44.085964, 42.515842>,  <39.805046, 43.949245, 42.585533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.620518, 44.085964, 42.515842>,  <39.312969, 44.313831, 42.399693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620518, 44.085964, 42.515842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002866, 0.457202, 0.889358,
		-0.639399, -0.682968, 0.353161,
		0.768869, -0.569667, 0.290378,
		39.851177, 43.915066, 42.602955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197014, 44.184120, 43.091843>,  <39.312969, 44.313831, 42.399693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197014, 44.184120, 43.091843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.587250, 44.106628, 43.050484>,  <39.821392, 44.060131, 43.025669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.587250, 44.106628, 43.050484>,  <39.197014, 44.184120, 43.091843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587250, 44.106628, 43.050484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175682, 0.406077, 0.896793,
		-0.131754, -0.893067, 0.430200,
		0.975590, -0.193734, -0.103394,
		39.879929, 44.048508, 43.019466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381134, 43.871845, 43.729477>,  <39.197014, 44.184120, 43.091843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381134, 43.871845, 43.729477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.704838, 44.024734, 43.551041>,  <39.899063, 44.116467, 43.443977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.704838, 44.024734, 43.551041>,  <39.381134, 43.871845, 43.729477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704838, 44.024734, 43.551041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202655, 0.531118, 0.822706,
		0.551392, -0.756185, 0.352351,
		0.809257, 0.382228, -0.446098,
		39.947617, 44.139400, 43.417213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901154, 43.961273, 44.316715>,  <39.381134, 43.871845, 43.729477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901154, 43.961273, 44.316715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031338, 44.192116, 44.017109>,  <40.109447, 44.330620, 43.837345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031338, 44.192116, 44.017109>,  <39.901154, 43.961273, 44.316715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031338, 44.192116, 44.017109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183811, 0.738420, 0.648806,
		0.927518, -0.348839, 0.134249,
		0.325461, 0.577103, -0.749018,
		40.128975, 44.365246, 43.792404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518452, 44.204597, 44.544243>,  <39.901154, 43.961273, 44.316715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518452, 44.204597, 44.544243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.390785, 44.443130, 44.249619>,  <40.314186, 44.586250, 44.072845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.390785, 44.443130, 44.249619>,  <40.518452, 44.204597, 44.544243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390785, 44.443130, 44.249619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235741, 0.802733, 0.547764,
		0.917911, 0.001190, -0.396785,
		-0.319164, 0.596337, -0.736557,
		40.295036, 44.622032, 44.028652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096317, 44.681358, 44.365208>,  <40.518452, 44.204597, 44.544243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096317, 44.681358, 44.365208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.746819, 44.834114, 44.244728>,  <40.537121, 44.925770, 44.172440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.746819, 44.834114, 44.244728>,  <41.096317, 44.681358, 44.365208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746819, 44.834114, 44.244728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101581, 0.748901, 0.654850,
		0.475653, 0.541578, -0.693144,
		-0.873748, 0.381891, -0.301203,
		40.484695, 44.948681, 44.154366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287270, 45.344444, 44.441135>,  <41.096317, 44.681358, 44.365208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287270, 45.344444, 44.441135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.887394, 45.337921, 44.448734>,  <40.647469, 45.334007, 44.453293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.887394, 45.337921, 44.448734>,  <41.287270, 45.344444, 44.441135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887394, 45.337921, 44.448734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006012, 0.580142, 0.814493,
		-0.024300, 0.814352, -0.579862,
		-0.999687, -0.016306, 0.018994,
		40.587486, 45.333031, 44.454433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107624, 45.921894, 44.734791>,  <41.287270, 45.344444, 44.441135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107624, 45.921894, 44.734791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.758045, 45.733879, 44.784225>,  <40.548298, 45.621071, 44.813885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.758045, 45.733879, 44.784225>,  <41.107624, 45.921894, 44.734791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758045, 45.733879, 44.784225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196196, 0.573851, 0.795112,
		-0.444653, 0.670641, -0.593737,
		-0.873951, -0.470037, 0.123588,
		40.495861, 45.592869, 44.821301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643696, 46.486565, 44.800385>,  <41.107624, 45.921894, 44.734791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643696, 46.486565, 44.800385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.477654, 46.171848, 44.983097>,  <40.378029, 45.983017, 45.092724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.477654, 46.171848, 44.983097>,  <40.643696, 46.486565, 44.800385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477654, 46.171848, 44.983097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121900, 0.545657, 0.829095,
		-0.901571, 0.288479, -0.322414,
		-0.415103, -0.786790, 0.456783,
		40.353123, 45.935810, 45.120132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065197, 46.776806, 45.035233>,  <40.643696, 46.486565, 44.800385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065197, 46.776806, 45.035233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148643, 46.438984, 45.232494>,  <40.198711, 46.236290, 45.350853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148643, 46.438984, 45.232494>,  <40.065197, 46.776806, 45.035233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148643, 46.438984, 45.232494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100050, 0.483174, 0.869789,
		-0.972867, -0.230789, 0.016298,
		0.208612, -0.844559, 0.493155,
		40.211227, 46.185616, 45.380440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639675, 46.883720, 45.588699>,  <40.065197, 46.776806, 45.035233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639675, 46.883720, 45.588699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.901508, 46.595417, 45.679947>,  <40.058609, 46.422436, 45.734695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.901508, 46.595417, 45.679947>,  <39.639675, 46.883720, 45.588699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901508, 46.595417, 45.679947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018654, 0.286253, 0.957972,
		-0.755764, -0.631324, 0.173930,
		0.654579, -0.720756, 0.228116,
		40.097881, 46.379189, 45.748383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366825, 46.458710, 46.133865>,  <39.639675, 46.883720, 45.588699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366825, 46.458710, 46.133865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.766071, 46.474613, 46.152531>,  <40.005619, 46.484158, 46.163731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.766071, 46.474613, 46.152531>,  <39.366825, 46.458710, 46.133865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766071, 46.474613, 46.152531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053595, 0.196262, 0.979086,
		0.029772, -0.979745, 0.198024,
		0.998119, 0.039762, 0.046666,
		40.065506, 46.486542, 46.166531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384148, 47.105156, 46.603081>,  <39.366825, 46.458710, 46.133865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384148, 47.105156, 46.603081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047447, 47.151073, 46.814087>,  <38.845425, 47.178623, 46.940689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047447, 47.151073, 46.814087>,  <39.384148, 47.105156, 46.603081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047447, 47.151073, 46.814087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255597, -0.945418, -0.202124,
		0.475520, -0.304970, 0.825151,
		-0.841754, 0.114792, 0.527515,
		38.794922, 47.185513, 46.972340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403713, 46.545959, 46.964302>,  <39.384148, 47.105156, 46.603081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403713, 46.545959, 46.964302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.024258, 46.671913, 46.952057>,  <38.796585, 46.747486, 46.944710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.024258, 46.671913, 46.952057>,  <39.403713, 46.545959, 46.964302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024258, 46.671913, 46.952057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299202, -0.924385, -0.236622,
		-0.102806, -0.215309, 0.971120,
		-0.948635, 0.314887, -0.030611,
		38.739666, 46.766380, 46.942875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078186, 46.166939, 47.392368>,  <39.403713, 46.545959, 46.964302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078186, 46.166939, 47.392368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834431, 46.308426, 47.108528>,  <38.688179, 46.393318, 46.938225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834431, 46.308426, 47.108528>,  <39.078186, 46.166939, 47.392368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834431, 46.308426, 47.108528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166557, -0.932110, -0.321605,
		-0.775183, -0.077793, 0.626928,
		-0.609385, 0.353722, -0.709599,
		38.651615, 46.414543, 46.895649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553558, 45.791790, 47.532051>,  <39.078186, 46.166939, 47.392368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553558, 45.791790, 47.532051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.504387, 45.916260, 47.155106>,  <38.474884, 45.990940, 46.928936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.504387, 45.916260, 47.155106>,  <38.553558, 45.791790, 47.532051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504387, 45.916260, 47.155106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152543, -0.944211, -0.291884,
		-0.980622, 0.107870, 0.163540,
		-0.122931, 0.311175, -0.942369,
		38.467506, 46.009613, 46.872395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885471, 45.477985, 47.354385>,  <38.553558, 45.791790, 47.532051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885471, 45.477985, 47.354385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030762, 45.599373, 47.002029>,  <38.117935, 45.672207, 46.790615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030762, 45.599373, 47.002029>,  <37.885471, 45.477985, 47.354385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030762, 45.599373, 47.002029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194330, -0.899996, -0.390183,
		-0.911208, 0.312909, -0.267932,
		0.363229, 0.303471, -0.880892,
		38.139732, 45.690414, 46.737762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312523, 45.315643, 46.852238>,  <37.885471, 45.477985, 47.354385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312523, 45.315643, 46.852238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651997, 45.349571, 46.643417>,  <37.855682, 45.369926, 46.518124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651997, 45.349571, 46.643417>,  <37.312523, 45.315643, 46.852238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651997, 45.349571, 46.643417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291614, -0.748428, -0.595666,
		-0.441241, 0.657771, -0.610446,
		0.848686, 0.084817, -0.522052,
		37.906601, 45.375015, 46.486801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139465, 45.462574, 46.274509>,  <37.312523, 45.315643, 46.852238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139465, 45.462574, 46.274509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502720, 45.350910, 46.149700>,  <37.720673, 45.283913, 46.074814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502720, 45.350910, 46.149700>,  <37.139465, 45.462574, 46.274509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502720, 45.350910, 46.149700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410715, -0.449343, -0.793350,
		0.081269, 0.848621, -0.522721,
		0.908134, -0.279164, -0.312024,
		37.775162, 45.267162, 46.056091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197472, 45.622318, 45.600960>,  <37.139465, 45.462574, 46.274509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197472, 45.622318, 45.600960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.484859, 45.345730, 45.631081>,  <37.657291, 45.179775, 45.649155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.484859, 45.345730, 45.631081>,  <37.197472, 45.622318, 45.600960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484859, 45.345730, 45.631081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302738, -0.408340, -0.861166,
		0.626223, 0.595922, -0.502715,
		0.718466, -0.691473, 0.075304,
		37.700401, 45.138287, 45.653671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555035, 45.549938, 44.909821>,  <37.197472, 45.622318, 45.600960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555035, 45.549938, 44.909821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666584, 45.208046, 45.084942>,  <37.733513, 45.002911, 45.190014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666584, 45.208046, 45.084942>,  <37.555035, 45.549938, 44.909821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666584, 45.208046, 45.084942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033972, -0.464381, -0.884984,
		0.959727, 0.231924, -0.158540,
		0.278872, -0.854729, 0.437800,
		37.750244, 44.951626, 45.216282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072258, 45.194424, 44.379902>,  <37.555035, 45.549938, 44.909821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072258, 45.194424, 44.379902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950745, 44.915043, 44.639091>,  <37.877838, 44.747414, 44.794605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950745, 44.915043, 44.639091>,  <38.072258, 45.194424, 44.379902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950745, 44.915043, 44.639091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091490, -0.655590, -0.749554,
		0.948339, -0.286984, 0.135255,
		-0.303782, -0.698456, 0.647978,
		37.859612, 44.705505, 44.833485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459488, 44.668037, 44.254105>,  <38.072258, 45.194424, 44.379902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459488, 44.668037, 44.254105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.134533, 44.501236, 44.417141>,  <37.939560, 44.401154, 44.514965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.134533, 44.501236, 44.417141>,  <38.459488, 44.668037, 44.254105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134533, 44.501236, 44.417141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066371, -0.760572, -0.645852,
		0.579331, -0.497629, 0.645555,
		-0.812386, -0.417008, 0.407595,
		37.890816, 44.376133, 44.539421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702843, 43.977238, 44.245449>,  <38.459488, 44.668037, 44.254105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702843, 43.977238, 44.245449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303467, 43.974262, 44.267555>,  <38.063839, 43.972477, 44.280819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303467, 43.974262, 44.267555>,  <38.702843, 43.977238, 44.245449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303467, 43.974262, 44.267555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039365, -0.607857, -0.793070,
		0.039496, -0.794012, 0.606618,
		-0.998444, -0.007443, 0.055264,
		38.003933, 43.972031, 44.284134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568169, 43.350456, 43.916904>,  <38.702843, 43.977238, 44.245449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568169, 43.350456, 43.916904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201477, 43.505707, 43.954773>,  <37.981461, 43.598858, 43.977493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201477, 43.505707, 43.954773>,  <38.568169, 43.350456, 43.916904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201477, 43.505707, 43.954773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313097, -0.550784, -0.773697,
		-0.248151, -0.738912, 0.626442,
		-0.916729, 0.388131, 0.094673,
		37.926460, 43.622147, 43.983173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148125, 42.763062, 43.965107>,  <38.568169, 43.350456, 43.916904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148125, 42.763062, 43.965107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.939270, 43.078712, 43.835712>,  <37.813957, 43.268105, 43.758076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.939270, 43.078712, 43.835712>,  <38.148125, 42.763062, 43.965107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939270, 43.078712, 43.835712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348484, -0.543597, -0.763584,
		-0.778417, -0.285963, 0.558831,
		-0.522136, 0.789131, -0.323491,
		37.782627, 43.315453, 43.738667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524952, 42.403046, 43.727055>,  <38.148125, 42.763062, 43.965107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524952, 42.403046, 43.727055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521774, 42.774319, 43.578236>,  <37.519867, 42.997082, 43.488945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521774, 42.774319, 43.578236>,  <37.524952, 42.403046, 43.727055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521774, 42.774319, 43.578236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477612, -0.330398, -0.814078,
		-0.878535, 0.171230, 0.445933,
		-0.007941, 0.928180, -0.372048,
		37.519390, 43.052773, 43.466621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864017, 42.423962, 43.422802>,  <37.524952, 42.403046, 43.727055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864017, 42.423962, 43.422802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.086960, 42.693783, 43.229168>,  <37.220726, 42.855675, 43.112988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.086960, 42.693783, 43.229168>,  <36.864017, 42.423962, 43.422802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086960, 42.693783, 43.229168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362152, -0.327147, -0.872823,
		-0.747131, 0.661783, 0.061954,
		0.557352, 0.674550, -0.484088,
		37.254166, 42.896149, 43.083942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502987, 42.659973, 42.888168>,  <36.864017, 42.423962, 43.422802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502987, 42.659973, 42.888168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.881516, 42.740665, 42.787151>,  <37.108631, 42.789082, 42.726540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.881516, 42.740665, 42.787151>,  <36.502987, 42.659973, 42.888168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881516, 42.740665, 42.787151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232193, -0.119259, -0.965331,
		-0.224858, 0.972153, -0.066017,
		0.946322, 0.201734, -0.252543,
		37.165413, 42.801186, 42.711388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466740, 43.010719, 42.341267>,  <36.502987, 42.659973, 42.888168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466740, 43.010719, 42.341267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840546, 42.869320, 42.324661>,  <37.064831, 42.784481, 42.314697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840546, 42.869320, 42.324661>,  <36.466740, 43.010719, 42.341267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840546, 42.869320, 42.324661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065375, -0.055831, -0.996298,
		0.349868, 0.933769, -0.075285,
		0.934515, -0.353494, -0.041512,
		37.120899, 42.763271, 42.312206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846493, 43.361225, 41.729832>,  <36.466740, 43.010719, 42.341267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846493, 43.361225, 41.729832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061874, 43.030094, 41.792789>,  <37.191105, 42.831417, 41.830566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061874, 43.030094, 41.792789>,  <36.846493, 43.361225, 41.729832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061874, 43.030094, 41.792789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180107, -0.295535, -0.938201,
		0.823181, 0.476831, -0.308229,
		0.538456, -0.827823, 0.157399,
		37.223412, 42.781746, 41.840008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289673, 43.298824, 41.170448>,  <36.846493, 43.361225, 41.729832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289673, 43.298824, 41.170448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.283813, 42.920307, 41.299641>,  <37.280296, 42.693195, 41.377155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.283813, 42.920307, 41.299641>,  <37.289673, 43.298824, 41.170448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283813, 42.920307, 41.299641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044555, -0.323308, -0.945244,
		0.998900, 0.000540, 0.046900,
		-0.014652, -0.946294, 0.322976,
		37.279419, 42.636417, 41.396534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692181, 43.060070, 40.742992>,  <37.289673, 43.298824, 41.170448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692181, 43.060070, 40.742992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503090, 42.739506, 40.889557>,  <37.389633, 42.547165, 40.977497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.503090, 42.739506, 40.889557>,  <37.692181, 43.060070, 40.742992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503090, 42.739506, 40.889557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010988, -0.410416, -0.911832,
		0.881138, -0.435078, 0.185210,
		-0.472731, -0.801415, 0.366414,
		37.361271, 42.499081, 40.999481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.633057, 31.892029, 27.660805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321220, 31.668118, 27.773155>,  <41.134121, 31.533770, 27.840565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321220, 31.668118, 27.773155>,  <41.633057, 31.892029, 27.660805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321220, 31.668118, 27.773155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068244, 0.521727, 0.850378,
		-0.622566, 0.643775, -0.444933,
		-0.779586, -0.559781, 0.280876,
		41.087345, 31.500183, 27.857418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094776, 32.357334, 27.857019>,  <41.633057, 31.892029, 27.660805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094776, 32.357334, 27.857019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049297, 32.006851, 28.044355>,  <41.022011, 31.796562, 28.156757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049297, 32.006851, 28.044355>,  <41.094776, 32.357334, 27.857019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049297, 32.006851, 28.044355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098688, 0.459103, 0.882885,
		-0.988602, 0.146598, 0.034273,
		-0.113695, -0.876204, 0.468338,
		41.015190, 31.743990, 28.184856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428150, 32.432068, 28.322418>,  <41.094776, 32.357334, 27.857019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428150, 32.432068, 28.322418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.668003, 32.131756, 28.433252>,  <40.811916, 31.951571, 28.499754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.668003, 32.131756, 28.433252>,  <40.428150, 32.432068, 28.322418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668003, 32.131756, 28.433252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011793, 0.354492, 0.934985,
		-0.800189, -0.557379, 0.221419,
		0.599632, -0.750775, 0.277087,
		40.847893, 31.906523, 28.516378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070324, 32.104500, 28.876192>,  <40.428150, 32.432068, 28.322418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070324, 32.104500, 28.876192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.461452, 32.024353, 28.900572>,  <40.696129, 31.976265, 28.915199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.461452, 32.024353, 28.900572>,  <40.070324, 32.104500, 28.876192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461452, 32.024353, 28.900572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032535, 0.432832, 0.900887,
		-0.206887, -0.878926, 0.429753,
		0.977824, -0.200364, 0.060951,
		40.754799, 31.964245, 28.918858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998756, 31.811348, 29.587948>,  <40.070324, 32.104500, 28.876192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998756, 31.811348, 29.587948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387436, 31.815668, 29.493553>,  <40.620644, 31.818260, 29.436916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387436, 31.815668, 29.493553>,  <39.998756, 31.811348, 29.587948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387436, 31.815668, 29.493553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228822, 0.205244, 0.951586,
		0.058711, -0.978651, 0.196964,
		0.971696, 0.010799, -0.235987,
		40.678944, 31.818909, 29.422756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341961, 31.329613, 30.002794>,  <39.998756, 31.811348, 29.587948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341961, 31.329613, 30.002794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.613277, 31.607256, 29.906349>,  <40.776066, 31.773842, 29.848482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.613277, 31.607256, 29.906349>,  <40.341961, 31.329613, 30.002794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613277, 31.607256, 29.906349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139427, 0.200598, 0.969702,
		0.721444, -0.691358, 0.039287,
		0.678292, 0.694107, -0.241113,
		40.816765, 31.815489, 29.834015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861015, 31.150177, 30.439331>,  <40.341961, 31.329613, 30.002794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861015, 31.150177, 30.439331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.913952, 31.530001, 30.325613>,  <40.945713, 31.757895, 30.257381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.913952, 31.530001, 30.325613>,  <40.861015, 31.150177, 30.439331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913952, 31.530001, 30.325613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156773, 0.263155, 0.951931,
		0.978728, -0.170550, -0.114039,
		0.132342, 0.949559, -0.284294,
		40.953655, 31.814869, 30.240324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533684, 31.315149, 30.578125>,  <40.861015, 31.150177, 30.439331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533684, 31.315149, 30.578125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.331326, 31.659903, 30.592169>,  <41.209911, 31.866755, 30.600595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.331326, 31.659903, 30.592169>,  <41.533684, 31.315149, 30.578125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331326, 31.659903, 30.592169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383715, 0.188398, 0.904029,
		0.772552, 0.470814, -0.426026,
		-0.505892, 0.861882, 0.035111,
		41.179558, 31.918467, 30.602701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049507, 31.890854, 30.774973>,  <41.533684, 31.315149, 30.578125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049507, 31.890854, 30.774973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.684853, 32.038307, 30.847677>,  <41.466061, 32.126778, 30.891300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.684853, 32.038307, 30.847677>,  <42.049507, 31.890854, 30.774973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684853, 32.038307, 30.847677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353887, 0.479109, 0.803255,
		0.209022, 0.796596, -0.567225,
		-0.911633, 0.368631, 0.181761,
		41.411362, 32.148895, 30.902206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122501, 32.557327, 30.975956>,  <42.049507, 31.890854, 30.774973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122501, 32.557327, 30.975956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.751038, 32.476799, 31.100578>,  <41.528160, 32.428482, 31.175352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.751038, 32.476799, 31.100578>,  <42.122501, 32.557327, 30.975956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751038, 32.476799, 31.100578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261532, 0.240278, 0.934809,
		-0.263060, 0.949597, -0.170482,
		-0.928655, -0.201324, 0.311557,
		41.472443, 32.416401, 31.194046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018169, 33.143196, 31.418596>,  <42.122501, 32.557327, 30.975956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018169, 33.143196, 31.418596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768593, 32.852436, 31.533363>,  <41.618847, 32.677982, 31.602222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768593, 32.852436, 31.533363>,  <42.018169, 33.143196, 31.418596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768593, 32.852436, 31.533363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211216, 0.196624, 0.957459,
		-0.752389, 0.657996, 0.030851,
		-0.623938, -0.726898, 0.286917,
		41.581413, 32.634365, 31.619438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775787, 33.410572, 31.992807>,  <42.018169, 33.143196, 31.418596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775787, 33.410572, 31.992807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.659027, 33.028530, 32.013077>,  <41.588970, 32.799305, 32.025238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.659027, 33.028530, 32.013077>,  <41.775787, 33.410572, 31.992807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659027, 33.028530, 32.013077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247016, -0.024100, 0.968711,
		-0.924000, 0.295285, 0.242961,
		-0.291901, -0.955105, 0.050672,
		41.571457, 32.741997, 32.028278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163563, 33.308319, 32.458321>,  <41.775787, 33.410572, 31.992807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163563, 33.308319, 32.458321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.359524, 32.960327, 32.435925>,  <41.477100, 32.751534, 32.422489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.359524, 32.960327, 32.435925>,  <41.163563, 33.308319, 32.458321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359524, 32.960327, 32.435925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267142, 0.088681, 0.959568,
		-0.829836, -0.485055, 0.275852,
		0.489907, -0.869975, -0.055987,
		41.506496, 32.699333, 32.419128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037483, 33.007328, 33.101753>,  <41.163563, 33.308319, 32.458321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037483, 33.007328, 33.101753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.339417, 32.791378, 32.952747>,  <41.520576, 32.661808, 32.863342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.339417, 32.791378, 32.952747>,  <41.037483, 33.007328, 33.101753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339417, 32.791378, 32.952747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375493, -0.110001, 0.920274,
		-0.537810, -0.834527, 0.119687,
		0.754828, -0.539874, -0.372519,
		41.565865, 32.629417, 32.840992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084255, 32.413307, 33.585495>,  <41.037483, 33.007328, 33.101753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084255, 32.413307, 33.585495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433525, 32.382130, 33.393044>,  <41.643089, 32.363422, 33.277573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433525, 32.382130, 33.393044>,  <41.084255, 32.413307, 33.585495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433525, 32.382130, 33.393044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464702, -0.164611, 0.870032,
		-0.147009, -0.983275, -0.107516,
		0.873178, -0.077939, -0.481129,
		41.695477, 32.358746, 33.248703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367283, 31.784153, 33.846798>,  <41.084255, 32.413307, 33.585495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367283, 31.784153, 33.846798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670868, 32.006237, 33.710724>,  <41.853020, 32.139488, 33.629082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670868, 32.006237, 33.710724>,  <41.367283, 31.784153, 33.846798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670868, 32.006237, 33.710724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495608, -0.153723, 0.854835,
		0.422318, -0.817382, -0.391835,
		0.758960, 0.555208, -0.340181,
		41.898556, 32.172798, 33.608669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907745, 31.403183, 33.901134>,  <41.367283, 31.784153, 33.846798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907745, 31.403183, 33.901134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.050987, 31.776606, 33.894985>,  <42.136932, 32.000660, 33.891296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.050987, 31.776606, 33.894985>,  <41.907745, 31.403183, 33.901134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050987, 31.776606, 33.894985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582771, -0.210619, 0.784868,
		0.729481, -0.290020, -0.619473,
		0.358100, 0.933557, -0.015373,
		42.158417, 32.056671, 33.890373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638695, 31.369818, 34.086044>,  <41.907745, 31.403183, 33.901134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638695, 31.369818, 34.086044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.551651, 31.753162, 34.160000>,  <42.499424, 31.983170, 34.204372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.551651, 31.753162, 34.160000>,  <42.638695, 31.369818, 34.086044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551651, 31.753162, 34.160000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321166, -0.108570, 0.940779,
		0.921682, 0.264105, -0.284168,
		-0.217612, 0.958364, 0.184889,
		42.486366, 32.040672, 34.215466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118298, 31.501471, 34.649334>,  <42.638695, 31.369818, 34.086044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118298, 31.501471, 34.649334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898922, 31.835747, 34.660912>,  <42.767296, 32.036312, 34.667858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898922, 31.835747, 34.660912>,  <43.118298, 31.501471, 34.649334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898922, 31.835747, 34.660912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226814, 0.115359, 0.967082,
		0.804844, 0.536947, -0.252813,
		-0.548436, 0.835692, 0.028942,
		42.734390, 32.086452, 34.669594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529240, 32.122345, 34.931271>,  <43.118298, 31.501471, 34.649334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529240, 32.122345, 34.931271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134945, 32.129196, 34.998249>,  <42.898369, 32.133308, 35.038437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134945, 32.129196, 34.998249>,  <43.529240, 32.122345, 34.931271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134945, 32.129196, 34.998249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167226, -0.013552, 0.985825,
		0.019154, 0.999761, 0.010494,
		-0.985732, 0.017128, 0.167446,
		42.839226, 32.134335, 35.048485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474628, 32.702099, 35.505817>,  <43.529240, 32.122345, 34.931271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474628, 32.702099, 35.505817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.116306, 32.524666, 35.516872>,  <42.901314, 32.418205, 35.523506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.116306, 32.524666, 35.516872>,  <43.474628, 32.702099, 35.505817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116306, 32.524666, 35.516872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018989, 0.100318, 0.994774,
		-0.444041, 0.890599, -0.098289,
		-0.895805, -0.443586, 0.027634,
		42.847565, 32.391590, 35.525162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989532, 33.228710, 35.492989>,  <43.474628, 32.702099, 35.505817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989532, 33.228710, 35.492989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.302914, 33.438545, 35.359718>,  <44.490944, 33.564445, 35.279758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.302914, 33.438545, 35.359718>,  <43.989532, 33.228710, 35.492989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302914, 33.438545, 35.359718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130232, -0.385627, -0.913417,
		-0.607647, 0.759013, -0.233804,
		0.783457, 0.524586, -0.333173,
		44.537952, 33.595921, 35.259766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866020, 33.420525, 34.783264>,  <43.989532, 33.228710, 35.492989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866020, 33.420525, 34.783264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262707, 33.463905, 34.810799>,  <44.500717, 33.489933, 34.827320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262707, 33.463905, 34.810799>,  <43.866020, 33.420525, 34.783264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262707, 33.463905, 34.810799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108976, -0.426707, -0.897800,
		-0.067995, 0.897864, -0.434990,
		0.991716, 0.108449, 0.068832,
		44.560223, 33.496441, 34.831448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075974, 33.687031, 34.165253>,  <43.866020, 33.420525, 34.783264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075974, 33.687031, 34.165253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.383648, 33.497925, 34.337227>,  <44.568253, 33.384460, 34.440411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.383648, 33.497925, 34.337227>,  <44.075974, 33.687031, 34.165253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383648, 33.497925, 34.337227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251314, -0.394784, -0.883735,
		0.587533, 0.787804, -0.184848,
		0.769185, -0.472768, 0.429935,
		44.614403, 33.356094, 34.466206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562859, 33.725838, 33.657452>,  <44.075974, 33.687031, 34.165253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562859, 33.725838, 33.657452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710918, 33.430443, 33.882889>,  <44.799755, 33.253208, 34.018150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710918, 33.430443, 33.882889>,  <44.562859, 33.725838, 33.657452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710918, 33.430443, 33.882889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085855, -0.576891, -0.812297,
		0.924998, 0.349056, -0.150132,
		0.370147, -0.738483, 0.563591,
		44.821964, 33.208897, 34.051968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159218, 33.556927, 33.317940>,  <44.562859, 33.725838, 33.657452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159218, 33.556927, 33.317940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.019207, 33.263161, 33.550529>,  <44.935200, 33.086899, 33.690083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.019207, 33.263161, 33.550529>,  <45.159218, 33.556927, 33.317940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019207, 33.263161, 33.550529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124836, -0.651776, -0.748067,
		0.928383, -0.189258, 0.319823,
		-0.350030, -0.734418, 0.581471,
		44.914196, 33.042835, 33.724972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627590, 32.996307, 33.199932>,  <45.159218, 33.556927, 33.317940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627590, 32.996307, 33.199932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284782, 32.851334, 33.346439>,  <45.079098, 32.764347, 33.434341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284782, 32.851334, 33.346439>,  <45.627590, 32.996307, 33.199932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284782, 32.851334, 33.346439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083766, -0.603357, -0.793059,
		0.508424, -0.710351, 0.486731,
		-0.857023, -0.362439, 0.366265,
		45.027676, 32.742603, 33.456318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.704636, 32.326298, 33.281250>,  <45.627590, 32.996307, 33.199932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.704636, 32.326298, 33.281250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.311207, 32.393864, 33.255756>,  <45.075150, 32.434402, 33.240459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.311207, 32.393864, 33.255756>,  <45.704636, 32.326298, 33.281250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.311207, 32.393864, 33.255756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064161, -0.657033, -0.751127,
		-0.168752, -0.734695, 0.657074,
		-0.983568, 0.168913, -0.063736,
		45.016136, 32.444538, 33.236637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389660, 31.658558, 33.156006>,  <45.704636, 32.326298, 33.281250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389660, 31.658558, 33.156006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.138550, 31.951181, 33.049637>,  <44.987885, 32.126755, 32.985813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.138550, 31.951181, 33.049637>,  <45.389660, 31.658558, 33.156006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138550, 31.951181, 33.049637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146970, -0.446890, -0.882434,
		-0.764392, -0.514889, 0.388065,
		-0.627778, 0.731559, -0.265926,
		44.950218, 32.170650, 32.969860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923477, 31.325670, 32.752300>,  <45.389660, 31.658558, 33.156006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923477, 31.325670, 32.752300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820717, 31.698818, 32.651302>,  <44.759060, 31.922707, 32.590702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820717, 31.698818, 32.651302>,  <44.923477, 31.325670, 32.752300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820717, 31.698818, 32.651302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355188, -0.334116, -0.873045,
		-0.898802, -0.134599, 0.417178,
		-0.256897, 0.932872, -0.252496,
		44.743649, 31.978680, 32.575554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149616, 31.354691, 32.668011>,  <44.923477, 31.325670, 32.752300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149616, 31.354691, 32.668011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.278526, 31.665518, 32.451752>,  <44.355873, 31.852015, 32.321995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.278526, 31.665518, 32.451752>,  <44.149616, 31.354691, 32.668011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278526, 31.665518, 32.451752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596732, -0.276597, -0.753264,
		-0.734879, 0.565382, 0.374561,
		0.322279, 0.777070, -0.540646,
		44.375210, 31.898640, 32.289558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534378, 31.502903, 32.274700>,  <44.149616, 31.354691, 32.668011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534378, 31.502903, 32.274700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.850475, 31.690393, 32.116806>,  <44.040134, 31.802887, 32.022072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.850475, 31.690393, 32.116806>,  <43.534378, 31.502903, 32.274700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850475, 31.690393, 32.116806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231973, -0.367399, -0.900670,
		-0.567192, 0.803314, -0.181603,
		0.790242, 0.468726, -0.394733,
		44.087547, 31.831011, 31.998386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236946, 31.817749, 31.738947>,  <43.534378, 31.502903, 32.274700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236946, 31.817749, 31.738947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.627586, 31.790998, 31.657185>,  <43.861969, 31.774948, 31.608128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.627586, 31.790998, 31.657185>,  <43.236946, 31.817749, 31.738947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627586, 31.790998, 31.657185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214061, -0.394172, -0.893760,
		-0.020799, 0.916600, -0.399264,
		0.976599, -0.066878, -0.204406,
		43.920567, 31.770935, 31.595863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405167, 32.216885, 31.172794>,  <43.236946, 31.817749, 31.738947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405167, 32.216885, 31.172794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.703918, 31.950945, 31.177511>,  <43.883171, 31.791380, 31.180342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.703918, 31.950945, 31.177511>,  <43.405167, 32.216885, 31.172794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703918, 31.950945, 31.177511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159990, -0.196887, -0.967284,
		0.645422, 0.720561, -0.253421,
		0.746882, -0.664852, 0.011793,
		43.927982, 31.751490, 31.181049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615852, 32.250618, 30.512053>,  <43.405167, 32.216885, 31.172794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615852, 32.250618, 30.512053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.778748, 31.907448, 30.637348>,  <43.876484, 31.701546, 30.712524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.778748, 31.907448, 30.637348>,  <43.615852, 32.250618, 30.512053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778748, 31.907448, 30.637348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054780, -0.365291, -0.929280,
		0.911679, 0.361276, -0.195757,
		0.407235, -0.857929, 0.313238,
		43.900917, 31.650068, 30.731319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899139, 31.983709, 29.846296>,  <43.615852, 32.250618, 30.512053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899139, 31.983709, 29.846296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.929092, 31.684948, 30.110577>,  <43.947063, 31.505692, 30.269146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.929092, 31.684948, 30.110577>,  <43.899139, 31.983709, 29.846296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929092, 31.684948, 30.110577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250620, -0.655391, -0.712497,
		0.965186, -0.112234, -0.236264,
		0.074879, -0.746904, 0.660702,
		43.951557, 31.460876, 30.308786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420475, 31.582180, 29.666552>,  <43.899139, 31.983709, 29.846296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.420475, 31.582180, 29.666552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.177284, 31.354214, 29.887663>,  <44.031372, 31.217434, 30.020329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.177284, 31.354214, 29.887663>,  <44.420475, 31.582180, 29.666552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177284, 31.354214, 29.887663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068760, -0.655820, -0.751780,
		0.790974, -0.495071, 0.359535,
		-0.607974, -0.569916, 0.552777,
		43.994892, 31.183239, 30.053495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684380, 30.892347, 29.593782>,  <44.420475, 31.582180, 29.666552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684380, 30.892347, 29.593782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.294987, 30.876978, 29.683987>,  <44.061352, 30.867756, 29.738110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.294987, 30.876978, 29.683987>,  <44.684380, 30.892347, 29.593782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294987, 30.876978, 29.683987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134272, -0.702150, -0.699254,
		0.185211, -0.710991, 0.678372,
		-0.973482, -0.038423, 0.225512,
		44.002941, 30.865452, 29.751640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562393, 30.262257, 29.374865>,  <44.684380, 30.892347, 29.593782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562393, 30.262257, 29.374865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192642, 30.404234, 29.430784>,  <43.970791, 30.489420, 29.464336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192642, 30.404234, 29.430784>,  <44.562393, 30.262257, 29.374865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192642, 30.404234, 29.430784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353736, -0.660307, -0.662469,
		-0.142827, -0.661824, 0.735928,
		-0.924376, 0.354943, 0.139801,
		43.915329, 30.510717, 29.472725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051811, 29.741722, 29.484428>,  <44.562393, 30.262257, 29.374865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051811, 29.741722, 29.484428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784267, 30.024370, 29.392067>,  <43.623741, 30.193958, 29.336651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784267, 30.024370, 29.392067>,  <44.051811, 29.741722, 29.484428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784267, 30.024370, 29.392067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483693, -0.649541, -0.586632,
		-0.564505, -0.280690, 0.776239,
		-0.668861, 0.706619, -0.230902,
		43.583611, 30.236357, 29.322796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343418, 29.398193, 29.462814>,  <44.051811, 29.741722, 29.484428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343418, 29.398193, 29.462814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.313618, 29.730724, 29.242506>,  <43.295738, 29.930243, 29.110321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.313618, 29.730724, 29.242506>,  <43.343418, 29.398193, 29.462814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313618, 29.730724, 29.242506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705423, -0.434318, -0.560131,
		-0.704860, 0.346792, 0.618795,
		-0.074505, 0.831326, -0.550768,
		43.291267, 29.980122, 29.077276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655384, 29.496288, 29.298151>,  <43.343418, 29.398193, 29.462814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655384, 29.496288, 29.298151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.774857, 29.742025, 29.006021>,  <42.846539, 29.889467, 28.830744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.774857, 29.742025, 29.006021>,  <42.655384, 29.496288, 29.298151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774857, 29.742025, 29.006021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741297, -0.332620, -0.582960,
		-0.601058, 0.715505, 0.356065,
		0.298677, 0.614343, -0.730325,
		42.864460, 29.926329, 28.786924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.425495, 39.853691, 36.377365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217243, 39.680367, 36.671627>,  <41.092293, 39.576370, 36.848183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217243, 39.680367, 36.671627>,  <41.425495, 39.853691, 36.377365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217243, 39.680367, 36.671627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239527, -0.901166, -0.361285,
		0.819497, -0.011885, 0.572960,
		-0.520626, -0.433311, 0.735656,
		41.061054, 39.550373, 36.892323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773266, 39.219501, 36.500881>,  <41.425495, 39.853691, 36.377365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773266, 39.219501, 36.500881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405811, 39.176273, 36.652897>,  <41.185341, 39.150337, 36.744106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405811, 39.176273, 36.652897>,  <41.773266, 39.219501, 36.500881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405811, 39.176273, 36.652897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042598, -0.929173, -0.367183,
		0.392807, -0.353496, 0.848966,
		-0.918634, -0.108068, 0.380044,
		41.130222, 39.143852, 36.766911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669487, 38.510345, 36.917843>,  <41.773266, 39.219501, 36.500881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669487, 38.510345, 36.917843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296738, 38.621155, 36.824150>,  <41.073086, 38.687641, 36.767937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296738, 38.621155, 36.824150>,  <41.669487, 38.510345, 36.917843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296738, 38.621155, 36.824150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188654, -0.921543, -0.339365,
		-0.309864, -0.272058, 0.911026,
		-0.931876, 0.277026, -0.234228,
		41.017174, 38.704262, 36.753883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313789, 37.969223, 37.161190>,  <41.669487, 38.510345, 36.917843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313789, 37.969223, 37.161190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075455, 38.133343, 36.885033>,  <40.932453, 38.231815, 36.719337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075455, 38.133343, 36.885033>,  <41.313789, 37.969223, 37.161190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075455, 38.133343, 36.885033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274053, -0.911923, -0.305435,
		-0.754903, 0.007216, 0.655797,
		-0.595832, 0.410297, -0.690391,
		40.896706, 38.256432, 36.677914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681873, 37.805187, 37.293755>,  <41.313789, 37.969223, 37.161190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681873, 37.805187, 37.293755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651127, 37.887188, 36.903458>,  <40.632679, 37.936390, 36.669281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651127, 37.887188, 36.903458>,  <40.681873, 37.805187, 37.293755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651127, 37.887188, 36.903458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443094, -0.883707, -0.150761,
		-0.893173, 0.420756, 0.158764,
		-0.076867, 0.205003, -0.975739,
		40.628067, 37.948689, 36.610737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293736, 37.326801, 37.124744>,  <40.681873, 37.805187, 37.293755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293736, 37.326801, 37.124744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411739, 37.454041, 36.764347>,  <40.482540, 37.530384, 36.548111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411739, 37.454041, 36.764347>,  <40.293736, 37.326801, 37.124744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411739, 37.454041, 36.764347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335502, -0.848432, -0.409392,
		-0.894655, 0.423059, -0.143574,
		0.295010, 0.318095, -0.900991,
		40.500244, 37.549469, 36.494049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690735, 37.311993, 36.717220>,  <40.293736, 37.326801, 37.124744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690735, 37.311993, 36.717220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991409, 37.300846, 36.453648>,  <40.171814, 37.294159, 36.295502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991409, 37.300846, 36.453648>,  <39.690735, 37.311993, 36.717220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991409, 37.300846, 36.453648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472929, -0.719146, -0.509085,
		-0.459683, 0.694300, -0.553750,
		0.751685, -0.027867, -0.658933,
		40.216915, 37.292484, 36.255966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383812, 37.231670, 36.073555>,  <39.690735, 37.311993, 36.717220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383812, 37.231670, 36.073555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755756, 37.116077, 35.982475>,  <39.978924, 37.046722, 35.927826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755756, 37.116077, 35.982475>,  <39.383812, 37.231670, 36.073555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755756, 37.116077, 35.982475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362683, -0.823962, -0.435370,
		-0.061801, 0.487416, -0.870980,
		0.929861, -0.288983, -0.227699,
		40.034714, 37.029381, 35.914165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264091, 37.010181, 35.456181>,  <39.383812, 37.231670, 36.073555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264091, 37.010181, 35.456181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620979, 36.833466, 35.493626>,  <39.835114, 36.727436, 35.516094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620979, 36.833466, 35.493626>,  <39.264091, 37.010181, 35.456181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620979, 36.833466, 35.493626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277995, -0.700668, -0.657102,
		0.355893, 0.560256, -0.747966,
		0.892221, -0.441789, 0.093614,
		39.888645, 36.700928, 35.521709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449722, 36.726624, 34.781307>,  <39.264091, 37.010181, 35.456181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449722, 36.726624, 34.781307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680424, 36.523888, 35.037579>,  <39.818844, 36.402248, 35.191341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680424, 36.523888, 35.037579>,  <39.449722, 36.726624, 34.781307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680424, 36.523888, 35.037579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181625, -0.844193, -0.504331,
		0.796471, 0.174513, -0.578947,
		0.576756, -0.506836, 0.640679,
		39.853451, 36.371838, 35.229782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886211, 36.200157, 34.290157>,  <39.449722, 36.726624, 34.781307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886211, 36.200157, 34.290157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901947, 36.065369, 34.666435>,  <39.911388, 35.984497, 34.892200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901947, 36.065369, 34.666435>,  <39.886211, 36.200157, 34.290157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901947, 36.065369, 34.666435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439239, -0.851420, -0.286624,
		0.897508, -0.401913, -0.181506,
		0.039340, -0.336972, 0.940692,
		39.913750, 35.964275, 34.948643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320316, 35.581963, 34.294281>,  <39.886211, 36.200157, 34.290157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320316, 35.581963, 34.294281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077469, 35.567272, 34.611786>,  <39.931763, 35.558456, 34.802288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077469, 35.567272, 34.611786>,  <40.320316, 35.581963, 34.294281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077469, 35.567272, 34.611786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248695, -0.939963, -0.233712,
		0.754693, -0.339295, 0.561532,
		-0.607116, -0.036730, 0.793764,
		39.895332, 35.556252, 34.849915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515991, 35.105480, 34.923546>,  <40.320316, 35.581963, 34.294281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515991, 35.105480, 34.923546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128914, 35.167904, 34.844341>,  <39.896667, 35.205357, 34.796818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128914, 35.167904, 34.844341>,  <40.515991, 35.105480, 34.923546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128914, 35.167904, 34.844341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080839, -0.935991, -0.342617,
		-0.238806, -0.315542, 0.918371,
		-0.967696, 0.156059, -0.198012,
		39.838604, 35.214722, 34.784939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165840, 34.603901, 35.208241>,  <40.515991, 35.105480, 34.923546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165840, 34.603901, 35.208241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900005, 34.748520, 34.946674>,  <39.740505, 34.835293, 34.789734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900005, 34.748520, 34.946674>,  <40.165840, 34.603901, 35.208241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900005, 34.748520, 34.946674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199827, -0.929264, -0.310703,
		-0.719997, -0.075818, 0.689823,
		-0.664585, 0.361551, -0.653917,
		39.700630, 34.856987, 34.750500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893547, 34.698711, 35.561474>,  <40.165840, 34.603901, 35.208241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893547, 34.698711, 35.561474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097923, 34.492458, 35.836590>,  <41.220551, 34.368706, 36.001659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097923, 34.492458, 35.836590>,  <40.893547, 34.698711, 35.561474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097923, 34.492458, 35.836590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172502, 0.722338, 0.669680,
		-0.842128, -0.460814, 0.280127,
		0.510944, -0.515634, 0.687792,
		41.251205, 34.337769, 36.042927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512348, 34.751270, 36.252537>,  <40.893547, 34.698711, 35.561474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512348, 34.751270, 36.252537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890545, 34.656136, 36.341515>,  <41.117462, 34.599056, 36.394901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890545, 34.656136, 36.341515>,  <40.512348, 34.751270, 36.252537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890545, 34.656136, 36.341515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005325, 0.694282, 0.719684,
		-0.325610, -0.679268, 0.657703,
		0.945489, -0.237838, 0.222447,
		41.174191, 34.584785, 36.408249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551132, 34.454941, 36.901665>,  <40.512348, 34.751270, 36.252537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551132, 34.454941, 36.901665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914623, 34.604980, 36.828438>,  <41.132717, 34.695004, 36.784500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914623, 34.604980, 36.828438>,  <40.551132, 34.454941, 36.901665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914623, 34.604980, 36.828438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014504, 0.466709, 0.884292,
		0.417136, -0.800926, 0.429552,
		0.908729, 0.375101, -0.183064,
		41.187241, 34.717510, 36.773518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798603, 34.531399, 37.503063>,  <40.551132, 34.454941, 36.901665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798603, 34.531399, 37.503063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074036, 34.731609, 37.293175>,  <41.239296, 34.851734, 37.167240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074036, 34.731609, 37.293175>,  <40.798603, 34.531399, 37.503063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074036, 34.731609, 37.293175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184600, 0.578769, 0.794323,
		0.701273, -0.643817, 0.306131,
		0.688578, 0.500526, -0.524723,
		41.280609, 34.881767, 37.135757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472061, 34.454727, 37.866302>,  <40.798603, 34.531399, 37.503063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472061, 34.454727, 37.866302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475197, 34.777332, 37.629837>,  <41.477077, 34.970894, 37.487957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475197, 34.777332, 37.629837>,  <41.472061, 34.454727, 37.866302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475197, 34.777332, 37.629837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251559, 0.570582, 0.781764,
		0.967810, -0.154841, -0.198412,
		0.007839, 0.806511, -0.591166,
		41.477551, 35.019287, 37.452488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083900, 34.789570, 37.944721>,  <41.472061, 34.454727, 37.866302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083900, 34.789570, 37.944721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834915, 35.072239, 37.810173>,  <41.685524, 35.241840, 37.729443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834915, 35.072239, 37.810173>,  <42.083900, 34.789570, 37.944721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834915, 35.072239, 37.810173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273070, 0.598879, 0.752845,
		0.733463, 0.376768, -0.565754,
		-0.622466, 0.706675, -0.336372,
		41.648174, 35.284241, 37.709263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414112, 35.388329, 38.151451>,  <42.083900, 34.789570, 37.944721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414112, 35.388329, 38.151451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047939, 35.527061, 38.069775>,  <41.828236, 35.610302, 38.020767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047939, 35.527061, 38.069775>,  <42.414112, 35.388329, 38.151451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047939, 35.527061, 38.069775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105373, 0.696183, 0.710089,
		0.388437, 0.628521, -0.673854,
		-0.915431, 0.346830, -0.204194,
		41.773312, 35.631111, 38.008518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415466, 36.004932, 38.374695>,  <42.414112, 35.388329, 38.151451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415466, 36.004932, 38.374695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018723, 35.966614, 38.341118>,  <41.780678, 35.943623, 38.320972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018723, 35.966614, 38.341118>,  <42.415466, 36.004932, 38.374695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018723, 35.966614, 38.341118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122891, 0.546556, 0.828357,
		-0.033472, 0.831926, -0.553876,
		-0.991856, -0.095793, -0.083941,
		41.721165, 35.937878, 38.315937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147614, 36.721577, 38.385967>,  <42.415466, 36.004932, 38.374695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147614, 36.721577, 38.385967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831554, 36.484619, 38.448868>,  <41.641918, 36.342445, 38.486607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831554, 36.484619, 38.448868>,  <42.147614, 36.721577, 38.385967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831554, 36.484619, 38.448868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366572, 0.662374, 0.653365,
		-0.491207, 0.458615, -0.740532,
		-0.790152, -0.592396, 0.157248,
		41.594509, 36.306900, 38.496040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501545, 37.103905, 38.250031>,  <42.147614, 36.721577, 38.385967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501545, 37.103905, 38.250031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412918, 36.811569, 38.508266>,  <41.359741, 36.636169, 38.663208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412918, 36.811569, 38.508266>,  <41.501545, 37.103905, 38.250031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412918, 36.811569, 38.508266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325052, 0.679534, 0.657704,
		-0.919374, -0.064124, -0.388123,
		-0.221569, -0.730837, 0.645589,
		41.346447, 36.592319, 38.701942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968422, 37.324631, 38.570808>,  <41.501545, 37.103905, 38.250031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968422, 37.324631, 38.570808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076691, 37.023022, 38.810204>,  <41.141651, 36.842056, 38.953838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076691, 37.023022, 38.810204>,  <40.968422, 37.324631, 38.570808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076691, 37.023022, 38.810204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348557, 0.502749, 0.791045,
		-0.897355, -0.422716, -0.126743,
		0.270667, -0.754025, 0.598485,
		41.157890, 36.796814, 38.989750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386070, 37.266376, 38.992619>,  <40.968422, 37.324631, 38.570808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386070, 37.266376, 38.992619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709003, 37.118389, 39.176506>,  <40.902763, 37.029598, 39.286839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709003, 37.118389, 39.176506>,  <40.386070, 37.266376, 38.992619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709003, 37.118389, 39.176506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124059, 0.655231, 0.745172,
		-0.576912, -0.658632, 0.483090,
		0.807330, -0.369967, 0.459720,
		40.951202, 37.007401, 39.314423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167572, 37.357555, 39.715523>,  <40.386070, 37.266376, 38.992619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167572, 37.357555, 39.715523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554199, 37.257904, 39.739799>,  <40.786175, 37.198112, 39.754368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554199, 37.257904, 39.739799>,  <40.167572, 37.357555, 39.715523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554199, 37.257904, 39.739799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134512, 0.694170, 0.707131,
		-0.218297, -0.675326, 0.704472,
		0.966568, -0.249125, 0.060696,
		40.844170, 37.183167, 39.758007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230484, 37.211895, 40.348843>,  <40.167572, 37.357555, 39.715523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230484, 37.211895, 40.348843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600056, 37.305954, 40.228146>,  <40.821800, 37.362389, 40.155727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600056, 37.305954, 40.228146>,  <40.230484, 37.211895, 40.348843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600056, 37.305954, 40.228146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106718, 0.599026, 0.793586,
		0.367365, -0.765423, 0.528366,
		0.923934, 0.235150, -0.301745,
		40.877235, 37.376499, 40.137623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203129, 36.575768, 40.791058>,  <40.230484, 37.211895, 40.348843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203129, 36.575768, 40.791058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852821, 36.442829, 40.931103>,  <39.642639, 36.363068, 41.015129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852821, 36.442829, 40.931103>,  <40.203129, 36.575768, 40.791058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852821, 36.442829, 40.931103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116242, -0.558747, -0.821151,
		0.468532, -0.759835, 0.450699,
		-0.875766, -0.332345, 0.350116,
		39.590092, 36.343124, 41.036137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289814, 35.785553, 40.793102>,  <40.203129, 36.575768, 40.791058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289814, 35.785553, 40.793102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900169, 35.873718, 40.813210>,  <39.666382, 35.926617, 40.825272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900169, 35.873718, 40.813210>,  <40.289814, 35.785553, 40.793102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900169, 35.873718, 40.813210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167580, -0.554762, -0.814958,
		-0.151746, -0.802282, 0.577336,
		-0.974110, 0.220416, 0.050264,
		39.607937, 35.939842, 40.828289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895741, 35.157345, 40.734921>,  <40.289814, 35.785553, 40.793102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895741, 35.157345, 40.734921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669659, 35.466881, 40.620571>,  <39.534012, 35.652603, 40.551960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669659, 35.466881, 40.620571>,  <39.895741, 35.157345, 40.734921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669659, 35.466881, 40.620571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262474, -0.497212, -0.826975,
		-0.782085, -0.392372, 0.484136,
		-0.565200, 0.773837, -0.285875,
		39.500099, 35.699032, 40.534809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274166, 34.843925, 40.516338>,  <39.895741, 35.157345, 40.734921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274166, 34.843925, 40.516338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228436, 35.204693, 40.349739>,  <39.200996, 35.421154, 40.249779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228436, 35.204693, 40.349739>,  <39.274166, 34.843925, 40.516338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228436, 35.204693, 40.349739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355274, -0.428643, -0.830690,
		-0.927744, 0.053001, 0.369434,
		-0.114328, 0.901918, -0.416501,
		39.194138, 35.475269, 40.224789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680698, 34.769184, 40.232418>,  <39.274166, 34.843925, 40.516338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680698, 34.769184, 40.232418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835423, 35.085033, 40.041897>,  <38.928257, 35.274544, 39.927586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835423, 35.085033, 40.041897>,  <38.680698, 34.769184, 40.232418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835423, 35.085033, 40.041897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340164, -0.357906, -0.869593,
		-0.857126, 0.498390, 0.130161,
		0.386811, 0.789627, -0.476305,
		38.951466, 35.321922, 39.899006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180862, 35.048996, 39.819912>,  <38.680698, 34.769184, 40.232418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180862, 35.048996, 39.819912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525005, 35.147419, 39.641365>,  <38.731491, 35.206470, 39.534237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525005, 35.147419, 39.641365>,  <38.180862, 35.048996, 39.819912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525005, 35.147419, 39.641365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340893, -0.373269, -0.862822,
		-0.378917, 0.894498, -0.237266,
		0.860357, 0.246055, -0.446366,
		38.783112, 35.221237, 39.507454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061558, 35.295952, 39.133148>,  <38.180862, 35.048996, 39.819912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061558, 35.295952, 39.133148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451950, 35.214230, 39.102879>,  <38.686184, 35.165195, 39.084717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451950, 35.214230, 39.102879>,  <38.061558, 35.295952, 39.133148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451950, 35.214230, 39.102879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157282, -0.420353, -0.893625,
		0.150765, 0.884060, -0.442389,
		0.975978, -0.204307, -0.075672,
		38.744743, 35.152939, 39.080177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279636, 35.572552, 38.490562>,  <38.061558, 35.295952, 39.133148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279636, 35.572552, 38.490562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552509, 35.297489, 38.589966>,  <38.716232, 35.132450, 38.649609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552509, 35.297489, 38.589966>,  <38.279636, 35.572552, 38.490562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552509, 35.297489, 38.589966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116323, -0.437604, -0.891612,
		0.721871, 0.579334, -0.378516,
		0.682181, -0.687659, 0.248504,
		38.757164, 35.091190, 38.664516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640488, 35.507008, 37.918468>,  <38.279636, 35.572552, 38.490562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640488, 35.507008, 37.918468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770943, 35.185780, 38.117954>,  <38.849216, 34.993042, 38.237644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770943, 35.185780, 38.117954>,  <38.640488, 35.507008, 37.918468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770943, 35.185780, 38.117954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179050, -0.570488, -0.801551,
		0.928212, 0.172119, -0.329846,
		0.326135, -0.803068, 0.498716,
		38.868782, 34.944859, 38.267570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159412, 35.214352, 37.494747>,  <38.640488, 35.507008, 37.918468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159412, 35.214352, 37.494747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036144, 34.909977, 37.723133>,  <38.962181, 34.727352, 37.860165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036144, 34.909977, 37.723133>,  <39.159412, 35.214352, 37.494747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036144, 34.909977, 37.723133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168649, -0.546969, -0.819989,
		0.936262, -0.348992, 0.040229,
		-0.308174, -0.760940, 0.570963,
		38.943691, 34.681694, 37.894421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294994, 34.588131, 37.139126>,  <39.159412, 35.214352, 37.494747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294994, 34.588131, 37.139126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996868, 34.452934, 37.369003>,  <38.817993, 34.371819, 37.506927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996868, 34.452934, 37.369003>,  <39.294994, 34.588131, 37.139126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996868, 34.452934, 37.369003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288710, -0.613348, -0.735154,
		0.600958, -0.713840, 0.359557,
		-0.745315, -0.337989, 0.574690,
		38.773273, 34.351536, 37.541409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290493, 33.776623, 37.203190>,  <39.294994, 34.588131, 37.139126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290493, 33.776623, 37.203190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918476, 33.868866, 37.317616>,  <38.695267, 33.924210, 37.386272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918476, 33.868866, 37.317616>,  <39.290493, 33.776623, 37.203190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918476, 33.868866, 37.317616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360794, -0.720546, -0.592149,
		0.069574, -0.653938, 0.753342,
		-0.930047, 0.230603, 0.286068,
		38.639462, 33.938046, 37.403435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.927990, 38.094704, 44.349548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.539154, 38.141014, 44.267929>,  <39.305851, 38.168800, 44.218956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.539154, 38.141014, 44.267929>,  <39.927990, 38.094704, 44.349548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539154, 38.141014, 44.267929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048936, -0.750548, -0.659001,
		-0.229445, -0.650594, 0.723935,
		-0.972091, 0.115778, -0.204047,
		39.247528, 38.175747, 44.206715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564812, 37.446964, 44.391598>,  <39.927990, 38.094704, 44.349548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564812, 37.446964, 44.391598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334152, 37.673935, 44.156479>,  <39.195759, 37.810116, 44.015408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334152, 37.673935, 44.156479>,  <39.564812, 37.446964, 44.391598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334152, 37.673935, 44.156479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023403, -0.707695, -0.706130,
		-0.816660, -0.420942, 0.394809,
		-0.576644, 0.567428, -0.587798,
		39.161160, 37.844162, 43.980141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105038, 36.891014, 44.075962>,  <39.564812, 37.446964, 44.391598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105038, 36.891014, 44.075962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.083565, 37.220047, 43.849518>,  <39.070683, 37.417465, 43.713650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.083565, 37.220047, 43.849518>,  <39.105038, 36.891014, 44.075962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083565, 37.220047, 43.849518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203245, -0.564061, -0.800329,
		-0.977655, 0.072097, 0.197464,
		-0.053681, 0.822579, -0.566111,
		39.067459, 37.466820, 43.679684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457626, 36.917290, 43.622967>,  <39.105038, 36.891014, 44.075962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457626, 36.917290, 43.622967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.752083, 37.121502, 43.445221>,  <38.928757, 37.244030, 43.338573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.752083, 37.121502, 43.445221>,  <38.457626, 36.917290, 43.622967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752083, 37.121502, 43.445221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313062, -0.325250, -0.892303,
		-0.600076, 0.795972, -0.079602,
		0.736139, 0.510529, -0.444364,
		38.972923, 37.274662, 43.311913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198807, 37.048244, 42.962624>,  <38.457626, 36.917290, 43.622967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198807, 37.048244, 42.962624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571095, 37.176022, 42.891384>,  <38.794468, 37.252686, 42.848640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571095, 37.176022, 42.891384>,  <38.198807, 37.048244, 42.962624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571095, 37.176022, 42.891384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018035, -0.526448, -0.850016,
		-0.365287, 0.787916, -0.495737,
		0.930720, 0.319440, -0.178094,
		38.850311, 37.271854, 42.837955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180614, 37.359581, 42.217361>,  <38.198807, 37.048244, 42.962624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180614, 37.359581, 42.217361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558529, 37.245331, 42.281616>,  <38.785278, 37.176781, 42.320168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558529, 37.245331, 42.281616>,  <38.180614, 37.359581, 42.217361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558529, 37.245331, 42.281616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029564, -0.562489, -0.826276,
		0.326357, 0.775904, -0.539875,
		0.944784, -0.285622, 0.160633,
		38.841965, 37.159645, 42.329807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646530, 37.509315, 41.531494>,  <38.180614, 37.359581, 42.217361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646530, 37.509315, 41.531494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908211, 37.313671, 41.762245>,  <39.065220, 37.196285, 41.900696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908211, 37.313671, 41.762245>,  <38.646530, 37.509315, 41.531494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908211, 37.313671, 41.762245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404925, -0.417712, -0.813359,
		0.638790, 0.765696, -0.075217,
		0.654204, -0.489108, 0.576879,
		39.104473, 37.166939, 41.935310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265823, 37.569553, 41.194286>,  <38.646530, 37.509315, 41.531494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265823, 37.569553, 41.194286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303215, 37.247128, 41.428043>,  <39.325649, 37.053673, 41.568298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303215, 37.247128, 41.428043>,  <39.265823, 37.569553, 41.194286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303215, 37.247128, 41.428043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324494, -0.530251, -0.783287,
		0.941257, 0.262853, 0.211997,
		0.093477, -0.806066, 0.584396,
		39.331257, 37.005306, 41.603363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926926, 37.205036, 41.059181>,  <39.265823, 37.569553, 41.194286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926926, 37.205036, 41.059181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710785, 36.905155, 41.212006>,  <39.581100, 36.725227, 41.303699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710785, 36.905155, 41.212006>,  <39.926926, 37.205036, 41.059181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710785, 36.905155, 41.212006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115766, -0.515973, -0.848746,
		0.833441, -0.414388, 0.365594,
		-0.540347, -0.749703, 0.382061,
		39.548679, 36.680244, 41.326626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720325, 37.180820, 40.990677>,  <39.926926, 37.205036, 41.059181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720325, 37.180820, 40.990677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.897057, 37.411339, 40.715672>,  <41.003094, 37.549648, 40.550671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.897057, 37.411339, 40.715672>,  <40.720325, 37.180820, 40.990677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897057, 37.411339, 40.715672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042875, 0.751928, 0.657849,
		0.896075, -0.320133, 0.307514,
		0.441828, 0.576297, -0.687510,
		41.029606, 37.584229, 40.509418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343178, 37.319366, 41.308914>,  <40.720325, 37.180820, 40.990677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343178, 37.319366, 41.308914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.292660, 37.590668, 41.019356>,  <41.262348, 37.753448, 40.845619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.292660, 37.590668, 41.019356>,  <41.343178, 37.319366, 41.308914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292660, 37.590668, 41.019356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194918, 0.732481, 0.652287,
		0.972654, -0.058718, -0.224713,
		-0.126297, 0.678250, -0.723896,
		41.254772, 37.794144, 40.802185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920731, 37.793579, 41.211185>,  <41.343178, 37.319366, 41.308914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920731, 37.793579, 41.211185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.653065, 38.039764, 41.044609>,  <41.492466, 38.187477, 40.944664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.653065, 38.039764, 41.044609>,  <41.920731, 37.793579, 41.211185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653065, 38.039764, 41.044609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298072, 0.735646, 0.608258,
		0.680714, 0.282895, -0.675721,
		-0.669165, 0.615464, -0.416441,
		41.452316, 38.224403, 40.919678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250896, 38.363430, 41.259392>,  <41.920731, 37.793579, 41.211185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250896, 38.363430, 41.259392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.867805, 38.450485, 41.184139>,  <41.637951, 38.502720, 41.138988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.867805, 38.450485, 41.184139>,  <42.250896, 38.363430, 41.259392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867805, 38.450485, 41.184139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091328, 0.850142, 0.518573,
		0.272797, 0.479470, -0.834081,
		-0.957727, 0.217640, -0.188127,
		41.580486, 38.515778, 41.127701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317009, 39.009567, 41.300133>,  <42.250896, 38.363430, 41.259392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317009, 39.009567, 41.300133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.925804, 38.936180, 41.339787>,  <41.691082, 38.892147, 41.363579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.925804, 38.936180, 41.339787>,  <42.317009, 39.009567, 41.300133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925804, 38.936180, 41.339787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088604, 0.795909, 0.598897,
		-0.188779, 0.576947, -0.794666,
		-0.978014, -0.183470, 0.099132,
		41.632401, 38.881138, 41.369526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986103, 39.666069, 41.199608>,  <42.317009, 39.009567, 41.300133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986103, 39.666069, 41.199608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.753868, 39.435207, 41.429325>,  <41.614525, 39.296692, 41.567154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.753868, 39.435207, 41.429325>,  <41.986103, 39.666069, 41.199608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753868, 39.435207, 41.429325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047973, 0.679876, 0.731757,
		-0.812782, 0.452401, -0.367041,
		-0.580590, -0.577150, 0.574294,
		41.579693, 39.262062, 41.601612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397324, 40.109966, 41.473400>,  <41.986103, 39.666069, 41.199608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397324, 40.109966, 41.473400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.417805, 39.810993, 41.738346>,  <41.430092, 39.631611, 41.897312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.417805, 39.810993, 41.738346>,  <41.397324, 40.109966, 41.473400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417805, 39.810993, 41.738346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071977, 0.658748, 0.748913,
		-0.996091, -0.086021, -0.020068,
		0.051202, -0.747430, 0.662364,
		41.433167, 39.586765, 41.937054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971416, 40.304501, 42.077579>,  <41.397324, 40.109966, 41.473400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971416, 40.304501, 42.077579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.168381, 39.998718, 42.244019>,  <41.286560, 39.815250, 42.343884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.168381, 39.998718, 42.244019>,  <40.971416, 40.304501, 42.077579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168381, 39.998718, 42.244019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029401, 0.492414, 0.869864,
		-0.869865, -0.416099, 0.264947,
		0.492413, -0.764454, 0.416100,
		41.316105, 39.769382, 42.368847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641422, 40.113789, 42.645473>,  <40.971416, 40.304501, 42.077579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641422, 40.113789, 42.645473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.004833, 39.961517, 42.714375>,  <41.222878, 39.870155, 42.755714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.004833, 39.961517, 42.714375>,  <40.641422, 40.113789, 42.645473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004833, 39.961517, 42.714375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061976, 0.530459, 0.845442,
		-0.413213, -0.757428, 0.505527,
		0.908523, -0.380678, 0.172251,
		41.277390, 39.847313, 42.766048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687527, 39.835270, 43.358749>,  <40.641422, 40.113789, 42.645473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687527, 39.835270, 43.358749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.061440, 39.922344, 43.246468>,  <41.285789, 39.974586, 43.179100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.061440, 39.922344, 43.246468>,  <40.687527, 39.835270, 43.358749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061440, 39.922344, 43.246468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128350, 0.529848, 0.838324,
		0.331217, -0.819680, 0.467354,
		0.934785, 0.217682, -0.280700,
		41.341873, 39.987648, 43.162258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935459, 39.840683, 44.003059>,  <40.687527, 39.835270, 43.358749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935459, 39.840683, 44.003059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.197598, 40.030785, 43.768234>,  <41.354881, 40.144848, 43.627338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.197598, 40.030785, 43.768234>,  <40.935459, 39.840683, 44.003059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197598, 40.030785, 43.768234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190964, 0.647735, 0.737545,
		0.730787, -0.595458, 0.333736,
		0.655349, 0.475257, -0.587067,
		41.394203, 40.173363, 43.592113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584133, 39.813854, 44.353001>,  <40.935459, 39.840683, 44.003059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584133, 39.813854, 44.353001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.570297, 40.127377, 44.104984>,  <41.561996, 40.315491, 43.956177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.570297, 40.127377, 44.104984>,  <41.584133, 39.813854, 44.353001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570297, 40.127377, 44.104984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235224, 0.609364, 0.757195,
		0.971326, -0.119659, -0.205447,
		-0.034587, 0.783809, -0.620038,
		41.559921, 40.362518, 43.918972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176605, 40.155247, 44.631561>,  <41.584133, 39.813854, 44.353001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176605, 40.155247, 44.631561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.988914, 40.427334, 44.406303>,  <41.876301, 40.590588, 44.271149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.988914, 40.427334, 44.406303>,  <42.176605, 40.155247, 44.631561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988914, 40.427334, 44.406303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055932, 0.659318, 0.749781,
		0.881304, 0.320321, -0.347417,
		-0.469229, 0.680217, -0.563143,
		41.848145, 40.631397, 44.237362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603767, 40.709366, 44.725788>,  <42.176605, 40.155247, 44.631561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603767, 40.709366, 44.725788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.282326, 40.877304, 44.557049>,  <42.089462, 40.978065, 44.455803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.282326, 40.877304, 44.557049>,  <42.603767, 40.709366, 44.725788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282326, 40.877304, 44.557049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068595, 0.638734, 0.766364,
		0.591203, 0.644787, -0.484488,
		-0.803600, 0.419843, -0.421851,
		42.041245, 41.003258, 44.430492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.663372, 43.005924, 42.555889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765400, 42.718674, 42.814880>,  <34.826614, 42.546322, 42.970276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765400, 42.718674, 42.814880>,  <34.663372, 43.005924, 42.555889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765400, 42.718674, 42.814880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152701, -0.691145, -0.706400,
		0.954789, 0.081308, -0.285948,
		0.255067, -0.718128, 0.647482,
		34.841919, 42.503235, 43.009125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339512, 42.608898, 42.347050>,  <34.663372, 43.005924, 42.555889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339512, 42.608898, 42.347050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.109905, 42.364422, 42.565022>,  <34.972141, 42.217735, 42.695805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.109905, 42.364422, 42.565022>,  <35.339512, 42.608898, 42.347050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109905, 42.364422, 42.565022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022174, -0.653644, -0.756477,
		0.818541, -0.446316, 0.361652,
		-0.574019, -0.611189, 0.544931,
		34.937698, 42.181065, 42.728500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697594, 41.965858, 42.352062>,  <35.339512, 42.608898, 42.347050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697594, 41.965858, 42.352062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.327305, 41.874146, 42.472374>,  <35.105133, 41.819118, 42.544559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.327305, 41.874146, 42.472374>,  <35.697594, 41.965858, 42.352062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327305, 41.874146, 42.472374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027683, -0.752066, -0.658506,
		0.377187, -0.617921, 0.689857,
		-0.925723, -0.229283, 0.300775,
		35.049587, 41.805359, 42.562607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678646, 41.302235, 42.357162>,  <35.697594, 41.965858, 42.352062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678646, 41.302235, 42.357162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.285545, 41.375282, 42.345505>,  <35.049686, 41.419109, 42.338509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.285545, 41.375282, 42.345505>,  <35.678646, 41.302235, 42.357162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285545, 41.375282, 42.345505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046417, -0.396152, -0.917011,
		-0.179005, -0.899842, 0.397796,
		-0.982753, 0.182614, -0.029145,
		34.990719, 41.430065, 42.336761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290409, 40.688908, 42.114990>,  <35.678646, 41.302235, 42.357162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290409, 40.688908, 42.114990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.014229, 40.971947, 42.054890>,  <34.848518, 41.141769, 42.018829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.014229, 40.971947, 42.054890>,  <35.290409, 40.688908, 42.114990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014229, 40.971947, 42.054890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278705, -0.451889, -0.847419,
		-0.667533, -0.543226, 0.509221,
		-0.690452, 0.707602, -0.150251,
		34.807095, 41.184227, 42.009815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734451, 40.193699, 42.005985>,  <35.290409, 40.688908, 42.114990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734451, 40.193699, 42.005985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.650772, 40.557091, 41.861263>,  <34.600563, 40.775127, 41.774429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.650772, 40.557091, 41.861263>,  <34.734451, 40.193699, 42.005985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650772, 40.557091, 41.861263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257249, -0.408088, -0.875950,
		-0.943430, -0.090173, 0.319076,
		-0.209198, 0.908478, -0.361805,
		34.588013, 40.829636, 41.752720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261871, 40.094151, 41.466713>,  <34.734451, 40.193699, 42.005985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261871, 40.094151, 41.466713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361340, 40.476719, 41.405483>,  <34.421021, 40.706261, 41.368744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361340, 40.476719, 41.405483>,  <34.261871, 40.094151, 41.466713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361340, 40.476719, 41.405483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380957, -0.048727, -0.923308,
		-0.890526, 0.287910, 0.352237,
		0.248666, 0.956417, -0.153074,
		34.435940, 40.763645, 41.359562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739967, 40.346088, 41.205406>,  <34.261871, 40.094151, 41.466713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739967, 40.346088, 41.205406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.049099, 40.569916, 41.085659>,  <34.234577, 40.704212, 41.013813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.049099, 40.569916, 41.085659>,  <33.739967, 40.346088, 41.205406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049099, 40.569916, 41.085659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182931, -0.255275, -0.949405,
		-0.607674, 0.788493, -0.094923,
		0.772831, 0.559565, -0.299365,
		34.280949, 40.737785, 40.995850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551384, 40.794689, 40.676838>,  <33.739967, 40.346088, 41.205406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551384, 40.794689, 40.676838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.942863, 40.742077, 40.613781>,  <34.177750, 40.710510, 40.575947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.942863, 40.742077, 40.613781>,  <33.551384, 40.794689, 40.676838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942863, 40.742077, 40.613781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193458, -0.333668, -0.922627,
		0.068750, 0.933470, -0.352005,
		0.978697, -0.131529, -0.157647,
		34.236473, 40.702618, 40.566486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647766, 41.036419, 40.017262>,  <33.551384, 40.794689, 40.676838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647766, 41.036419, 40.017262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978626, 40.816540, 40.064003>,  <34.177143, 40.684612, 40.092049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978626, 40.816540, 40.064003>,  <33.647766, 41.036419, 40.017262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978626, 40.816540, 40.064003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089385, -0.333969, -0.938336,
		0.554824, 0.765702, -0.325378,
		0.827152, -0.549695, 0.116852,
		34.226772, 40.651630, 40.099060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021168, 41.116478, 39.483921>,  <33.647766, 41.036419, 40.017262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021168, 41.116478, 39.483921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116264, 40.758270, 39.634399>,  <34.173321, 40.543346, 39.724686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116264, 40.758270, 39.634399>,  <34.021168, 41.116478, 39.483921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116264, 40.758270, 39.634399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129691, -0.413100, -0.901404,
		0.962632, 0.165509, -0.214350,
		0.237738, -0.895519, 0.376198,
		34.187588, 40.489613, 39.747257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333988, 40.741093, 38.909184>,  <34.021168, 41.116478, 39.483921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333988, 40.741093, 38.909184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.279308, 40.432388, 39.157604>,  <34.246498, 40.247166, 39.306656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.279308, 40.432388, 39.157604>,  <34.333988, 40.741093, 38.909184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279308, 40.432388, 39.157604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048773, -0.631419, -0.773906,
		0.989411, -0.075505, 0.123957,
		-0.136703, -0.771757, 0.621050,
		34.238297, 40.200863, 39.343918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927811, 40.436279, 38.611259>,  <34.333988, 40.741093, 38.909184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927811, 40.436279, 38.611259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.676689, 40.204659, 38.819321>,  <34.526016, 40.065685, 38.944157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.676689, 40.204659, 38.819321>,  <34.927811, 40.436279, 38.611259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676689, 40.204659, 38.819321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028372, -0.684841, -0.728140,
		0.777851, -0.442375, 0.446378,
		-0.627809, -0.579049, 0.520153,
		34.488346, 40.030945, 38.975368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253937, 39.695015, 38.682640>,  <34.927811, 40.436279, 38.611259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253937, 39.695015, 38.682640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857056, 39.659584, 38.717728>,  <34.618927, 39.638325, 38.738781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857056, 39.659584, 38.717728>,  <35.253937, 39.695015, 38.682640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857056, 39.659584, 38.717728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016197, -0.606078, -0.795240,
		0.123606, -0.790458, 0.599915,
		-0.992199, -0.088580, 0.087718,
		34.559395, 39.633011, 38.744041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948635, 39.273148, 38.719025>,  <35.253937, 39.695015, 38.682640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948635, 39.273148, 38.719025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.124996, 39.511913, 38.450905>,  <36.230812, 39.655170, 38.290031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.124996, 39.511913, 38.450905>,  <35.948635, 39.273148, 38.719025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124996, 39.511913, 38.450905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159913, 0.682616, 0.713066,
		0.883195, -0.421582, 0.205512,
		0.440902, 0.596913, -0.670299,
		36.257267, 39.690987, 38.249817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508995, 39.560375, 39.009026>,  <35.948635, 39.273148, 38.719025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508995, 39.560375, 39.009026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.438431, 39.816628, 38.710102>,  <36.396091, 39.970379, 38.530746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.438431, 39.816628, 38.710102>,  <36.508995, 39.560375, 39.009026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438431, 39.816628, 38.710102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214694, 0.765977, 0.605958,
		0.960618, -0.053547, -0.272663,
		-0.176407, 0.640634, -0.747308,
		36.385509, 40.008816, 38.485909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061081, 39.987671, 39.080154>,  <36.508995, 39.560375, 39.009026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061081, 39.987671, 39.080154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.818035, 40.201885, 38.845543>,  <36.672207, 40.330414, 38.704777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.818035, 40.201885, 38.845543>,  <37.061081, 39.987671, 39.080154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818035, 40.201885, 38.845543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252764, 0.830471, 0.496416,
		0.752939, 0.153376, -0.639968,
		-0.607613, 0.535532, -0.586526,
		36.635750, 40.362545, 38.669586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418457, 40.529209, 38.650646>,  <37.061081, 39.987671, 39.080154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418457, 40.529209, 38.650646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.038975, 40.628628, 38.728802>,  <36.811283, 40.688278, 38.775696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.038975, 40.628628, 38.728802>,  <37.418457, 40.529209, 38.650646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038975, 40.628628, 38.728802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314912, 0.797598, 0.514458,
		-0.027978, 0.549602, -0.834958,
		-0.948708, 0.248545, 0.195391,
		36.754364, 40.703190, 38.787418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453865, 41.260715, 38.470070>,  <37.418457, 40.529209, 38.650646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453865, 41.260715, 38.470070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.137074, 41.183064, 38.701614>,  <36.946999, 41.136471, 38.840542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.137074, 41.183064, 38.701614>,  <37.453865, 41.260715, 38.470070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137074, 41.183064, 38.701614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104379, 0.891096, 0.441648,
		-0.601561, 0.410197, -0.685466,
		-0.791979, -0.194130, 0.578864,
		36.899479, 41.124825, 38.875275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288654, 41.985142, 38.788319>,  <37.453865, 41.260715, 38.470070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288654, 41.985142, 38.788319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.084934, 41.727970, 39.017143>,  <36.962700, 41.573666, 39.154438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.084934, 41.727970, 39.017143>,  <37.288654, 41.985142, 38.788319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084934, 41.727970, 39.017143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036761, 0.647868, 0.760865,
		-0.859802, 0.408540, -0.306325,
		-0.509302, -0.642933, 0.572057,
		36.932144, 41.535091, 39.188759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773716, 42.356342, 39.121498>,  <37.288654, 41.985142, 38.788319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773716, 42.356342, 39.121498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.781017, 42.018063, 39.334839>,  <36.785397, 41.815094, 39.462841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.781017, 42.018063, 39.334839>,  <36.773716, 42.356342, 39.121498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781017, 42.018063, 39.334839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216695, 0.524105, 0.823624,
		-0.976069, 0.100541, 0.192825,
		0.018253, -0.845698, 0.533349,
		36.786491, 41.764355, 39.494843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244701, 42.373249, 39.663116>,  <36.773716, 42.356342, 39.121498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244701, 42.373249, 39.663116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524086, 42.114201, 39.784927>,  <36.691719, 41.958771, 39.858013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524086, 42.114201, 39.784927>,  <36.244701, 42.373249, 39.663116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524086, 42.114201, 39.784927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142104, 0.542564, 0.827907,
		-0.701394, -0.534989, 0.470991,
		0.698464, -0.647619, 0.304527,
		36.733624, 41.919914, 39.876286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113979, 42.231087, 40.418583>,  <36.244701, 42.373249, 39.663116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113979, 42.231087, 40.418583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.489613, 42.105404, 40.362869>,  <36.714993, 42.029995, 40.329441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.489613, 42.105404, 40.362869>,  <36.113979, 42.231087, 40.418583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489613, 42.105404, 40.362869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268860, 0.419123, 0.867208,
		-0.214101, -0.851828, 0.478068,
		0.939082, -0.314203, -0.139288,
		36.771336, 42.011143, 40.321083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257782, 41.916065, 41.052464>,  <36.113979, 42.231087, 40.418583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257782, 41.916065, 41.052464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.619450, 41.972401, 40.891144>,  <36.836449, 42.006203, 40.794353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.619450, 41.972401, 40.891144>,  <36.257782, 41.916065, 41.052464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619450, 41.972401, 40.891144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353337, 0.284026, 0.891338,
		0.240078, -0.948417, 0.207044,
		0.904166, 0.140835, -0.403299,
		36.890697, 42.014652, 40.770153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701588, 41.459522, 41.429329>,  <36.257782, 41.916065, 41.052464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701588, 41.459522, 41.429329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.896736, 41.777779, 41.285702>,  <37.013824, 41.968731, 41.199524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.896736, 41.777779, 41.285702>,  <36.701588, 41.459522, 41.429329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896736, 41.777779, 41.285702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262644, 0.258489, 0.929624,
		0.832464, -0.547848, -0.082860,
		0.487875, 0.795642, -0.359072,
		37.043098, 42.016472, 41.177979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300503, 41.412209, 41.892105>,  <36.701588, 41.459522, 41.429329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300503, 41.412209, 41.892105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.305710, 41.779663, 41.734154>,  <37.308834, 42.000137, 41.639381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.305710, 41.779663, 41.734154>,  <37.300503, 41.412209, 41.892105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305710, 41.779663, 41.734154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223729, 0.382227, 0.896576,
		0.974564, -0.100017, -0.200551,
		0.013017, 0.918640, -0.394882,
		37.309616, 42.055256, 41.615688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984341, 41.781494, 42.013039>,  <37.300503, 41.412209, 41.892105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984341, 41.781494, 42.013039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.724228, 42.082275, 41.969772>,  <37.568161, 42.262745, 41.943813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.724228, 42.082275, 41.969772>,  <37.984341, 41.781494, 42.013039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724228, 42.082275, 41.969772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306675, 0.390097, 0.868202,
		0.695046, 0.531400, -0.484278,
		-0.650278, 0.751956, -0.108169,
		37.529144, 42.307861, 41.937321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315758, 42.399967, 42.018700>,  <37.984341, 41.781494, 42.013039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315758, 42.399967, 42.018700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.948250, 42.498669, 42.141979>,  <37.727745, 42.557888, 42.215946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.948250, 42.498669, 42.141979>,  <38.315758, 42.399967, 42.018700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948250, 42.498669, 42.141979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391177, 0.463366, 0.795156,
		0.053399, 0.851120, -0.522249,
		-0.918765, 0.246752, 0.308195,
		37.672619, 42.572693, 42.234436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725971, 42.817093, 41.461086>,  <38.315758, 42.399967, 42.018700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725971, 42.817093, 41.461086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.122871, 42.778511, 41.429760>,  <39.361012, 42.755363, 41.410965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.122871, 42.778511, 41.429760>,  <38.725971, 42.817093, 41.461086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122871, 42.778511, 41.429760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123556, -0.699651, -0.703721,
		0.013081, 0.707945, -0.706147,
		0.992251, -0.096454, -0.078319,
		39.420547, 42.749577, 41.406265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767033, 42.655869, 40.774998>,  <38.725971, 42.817093, 41.461086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767033, 42.655869, 40.774998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.123764, 42.558384, 40.927441>,  <39.337803, 42.499893, 41.018906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.123764, 42.558384, 40.927441>,  <38.767033, 42.655869, 40.774998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123764, 42.558384, 40.927441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110298, -0.699900, -0.705673,
		0.438717, 0.671376, -0.597312,
		0.891831, -0.243708, 0.381109,
		39.391312, 42.485271, 41.041775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391479, 42.860954, 40.307899>,  <38.767033, 42.655869, 40.774998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391479, 42.860954, 40.307899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517185, 42.572067, 40.554359>,  <39.592609, 42.398735, 40.702236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517185, 42.572067, 40.554359>,  <39.391479, 42.860954, 40.307899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517185, 42.572067, 40.554359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327961, -0.526474, -0.784389,
		0.890886, 0.448580, 0.071406,
		0.314268, -0.722219, 0.616145,
		39.611465, 42.355400, 40.739204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967976, 42.803688, 40.116470>,  <39.391479, 42.860954, 40.307899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967976, 42.803688, 40.116470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.896751, 42.462521, 40.312763>,  <39.854019, 42.257820, 40.430538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.896751, 42.462521, 40.312763>,  <39.967976, 42.803688, 40.116470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896751, 42.462521, 40.312763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548407, -0.500087, -0.670196,
		0.817035, 0.149788, 0.556793,
		-0.178058, -0.852922, 0.490733,
		39.843334, 42.206642, 40.459984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691174, 42.427322, 40.157715>,  <39.967976, 42.803688, 40.116470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691174, 42.427322, 40.157715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.390965, 42.170914, 40.221985>,  <40.210838, 42.017071, 40.260548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.390965, 42.170914, 40.221985>,  <40.691174, 42.427322, 40.157715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390965, 42.170914, 40.221985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362933, -0.602997, -0.710404,
		0.552269, -0.474857, 0.685208,
		-0.750519, -0.641019, 0.160675,
		40.165810, 41.978607, 40.270187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052181, 41.763264, 40.114388>,  <40.691174, 42.427322, 40.157715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052181, 41.763264, 40.114388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.662617, 41.680244, 40.077686>,  <40.428879, 41.630432, 40.055664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.662617, 41.680244, 40.077686>,  <41.052181, 41.763264, 40.114388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662617, 41.680244, 40.077686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213588, -0.701832, -0.679567,
		0.076650, -0.681436, 0.727853,
		-0.973912, -0.207550, -0.091751,
		40.370441, 41.617981, 40.050159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035454, 41.032906, 39.937462>,  <41.052181, 41.763264, 40.114388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035454, 41.032906, 39.937462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.672573, 41.139698, 39.807411>,  <40.454845, 41.203773, 39.729382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.672573, 41.139698, 39.807411>,  <41.035454, 41.032906, 39.937462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672573, 41.139698, 39.807411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129085, -0.558902, -0.819125,
		-0.400401, -0.785081, 0.472574,
		-0.907203, 0.266976, -0.325127,
		40.400414, 41.219791, 39.709873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691742, 40.424080, 39.765263>,  <41.035454, 41.032906, 39.937462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691742, 40.424080, 39.765263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.517723, 40.721535, 39.562187>,  <40.413311, 40.900005, 39.440342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.517723, 40.721535, 39.562187>,  <40.691742, 40.424080, 39.765263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517723, 40.721535, 39.562187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086220, -0.595651, -0.798602,
		-0.896271, -0.303655, 0.323251,
		-0.435045, 0.743635, -0.507684,
		40.387211, 40.944626, 39.409882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995556, 40.227734, 39.487091>,  <40.691742, 40.424080, 39.765263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995556, 40.227734, 39.487091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.177288, 40.507793, 39.266777>,  <40.286327, 40.675831, 39.134586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.177288, 40.507793, 39.266777>,  <39.995556, 40.227734, 39.487091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177288, 40.507793, 39.266777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074159, -0.586413, -0.806610,
		-0.887741, 0.407313, -0.214502,
		0.454330, 0.700154, -0.550789,
		40.313587, 40.717838, 39.101540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876411, 40.058086, 38.881859>,  <39.995556, 40.227734, 39.487091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876411, 40.058086, 38.881859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.124622, 40.348637, 38.763653>,  <40.273548, 40.522964, 38.692730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.124622, 40.348637, 38.763653>,  <39.876411, 40.058086, 38.881859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124622, 40.348637, 38.763653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076414, -0.431057, -0.899083,
		-0.780451, 0.535327, -0.322988,
		0.620530, 0.726371, -0.295513,
		40.310780, 40.566547, 38.674999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706940, 40.380554, 38.297710>,  <39.876411, 40.058086, 38.881859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706940, 40.380554, 38.297710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.102043, 40.442772, 38.302551>,  <40.339104, 40.480103, 38.305454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.102043, 40.442772, 38.302551>,  <39.706940, 40.380554, 38.297710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102043, 40.442772, 38.302551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067789, -0.358030, -0.931246,
		-0.140518, 0.920663, -0.364190,
		0.987755, 0.155545, 0.012101,
		40.398369, 40.489437, 38.306183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876980, 40.559357, 37.654400>,  <39.706940, 40.380554, 38.297710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876980, 40.559357, 37.654400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214832, 40.431065, 37.825855>,  <40.417545, 40.354092, 37.928730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214832, 40.431065, 37.825855>,  <39.876980, 40.559357, 37.654400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214832, 40.431065, 37.825855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289413, -0.400031, -0.869607,
		0.450376, 0.858551, -0.245056,
		0.844631, -0.320728, 0.428640,
		40.468220, 40.334846, 37.954449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293472, 40.627373, 37.165405>,  <39.876980, 40.559357, 37.654400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293472, 40.627373, 37.165405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.509872, 40.387611, 37.401382>,  <40.639713, 40.243755, 37.542969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.509872, 40.387611, 37.401382>,  <40.293472, 40.627373, 37.165405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509872, 40.387611, 37.401382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232293, -0.567678, -0.789798,
		0.808307, 0.564320, -0.167875,
		0.540998, -0.599403, 0.589947,
		40.672173, 40.207790, 37.578365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733147, 40.469673, 36.785213>,  <40.293472, 40.627373, 37.165405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733147, 40.469673, 36.785213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.801723, 40.176018, 37.048016>,  <40.842869, 39.999825, 37.205696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.801723, 40.176018, 37.048016>,  <40.733147, 40.469673, 36.785213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801723, 40.176018, 37.048016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222942, -0.620666, -0.751712,
		0.959638, 0.275346, 0.057264,
		0.171439, -0.734138, 0.657001,
		40.853157, 39.955776, 37.245117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.974205, 38.858887, 26.449482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.698627, 38.601109, 26.582174>,  <25.533281, 38.446442, 26.661789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.698627, 38.601109, 26.582174>,  <25.974205, 38.858887, 26.449482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698627, 38.601109, 26.582174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053555, 0.501686, 0.863391,
		-0.722834, 0.577061, -0.380146,
		-0.688943, -0.644447, 0.331731,
		25.491945, 38.407776, 26.681694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571968, 39.284897, 26.825844>,  <25.974205, 38.858887, 26.449482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571968, 39.284897, 26.825844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.495115, 38.909721, 26.941324>,  <25.449003, 38.684616, 27.010612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.495115, 38.909721, 26.941324>,  <25.571968, 39.284897, 26.825844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495115, 38.909721, 26.941324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062190, 0.305230, 0.950246,
		-0.979397, 0.164619, -0.116975,
		-0.192133, -0.937942, 0.288703,
		25.437475, 38.628338, 27.027935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056562, 39.295918, 27.360088>,  <25.571968, 39.284897, 26.825844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056562, 39.295918, 27.360088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.256203, 38.954311, 27.418827>,  <25.375986, 38.749348, 27.454071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.256203, 38.954311, 27.418827>,  <25.056562, 39.295918, 27.360088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256203, 38.954311, 27.418827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136909, 0.245049, 0.959795,
		-0.855660, -0.458929, 0.239226,
		0.499100, -0.854011, 0.146848,
		25.405933, 38.698109, 27.462881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905598, 39.207695, 27.999180>,  <25.056562, 39.295918, 27.360088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905598, 39.207695, 27.999180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.176695, 38.916405, 27.958496>,  <25.339354, 38.741631, 27.934086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.176695, 38.916405, 27.958496>,  <24.905598, 39.207695, 27.999180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.176695, 38.916405, 27.958496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014581, -0.124984, 0.992052,
		-0.735153, -0.673841, -0.074089,
		0.677745, -0.728229, -0.101708,
		25.380018, 38.697937, 27.927984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.779306, 38.711201, 28.599163>,  <24.905598, 39.207695, 27.999180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.779306, 38.711201, 28.599163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.152155, 38.626938, 28.481331>,  <25.375864, 38.576382, 28.410631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.152155, 38.626938, 28.481331>,  <24.779306, 38.711201, 28.599163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.152155, 38.626938, 28.481331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252221, -0.206091, 0.945469,
		-0.259881, -0.955589, -0.138969,
		0.932119, -0.210658, -0.294578,
		25.431791, 38.563740, 28.392958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066010, 37.925480, 28.749769>,  <24.779306, 38.711201, 28.599163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066010, 37.925480, 28.749769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.378727, 38.171101, 28.706427>,  <25.566357, 38.318474, 28.680420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.378727, 38.171101, 28.706427>,  <25.066010, 37.925480, 28.749769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378727, 38.171101, 28.706427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317517, -0.242484, 0.916725,
		0.536642, -0.751093, -0.384544,
		0.781792, 0.614053, -0.108358,
		25.613264, 38.355316, 28.673920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711861, 37.518097, 28.841169>,  <25.066010, 37.925480, 28.749769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711861, 37.518097, 28.841169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.809856, 37.902477, 28.892643>,  <25.868654, 38.133106, 28.923527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.809856, 37.902477, 28.892643>,  <25.711861, 37.518097, 28.841169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809856, 37.902477, 28.892643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437137, -0.227954, 0.870028,
		0.865385, -0.156895, -0.475912,
		0.244989, 0.960948, 0.128683,
		25.883352, 38.190762, 28.931248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417408, 37.576862, 28.949829>,  <25.711861, 37.518097, 28.841169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417408, 37.576862, 28.949829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265577, 37.904961, 29.120998>,  <26.174479, 38.101818, 29.223700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265577, 37.904961, 29.120998>,  <26.417408, 37.576862, 28.949829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265577, 37.904961, 29.120998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197211, -0.380173, 0.903646,
		0.903897, 0.427393, -0.017458,
		-0.379575, 0.820246, 0.427924,
		26.151705, 38.151035, 29.249376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963045, 37.815617, 29.457615>,  <26.417408, 37.576862, 28.949829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963045, 37.815617, 29.457615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.607821, 37.963219, 29.567293>,  <26.394686, 38.051781, 29.633101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.607821, 37.963219, 29.567293>,  <26.963045, 37.815617, 29.457615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.607821, 37.963219, 29.567293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201246, -0.224219, 0.953533,
		0.413335, 0.901978, 0.124860,
		-0.888062, 0.369001, 0.274197,
		26.341402, 38.073917, 29.649551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179909, 38.126354, 30.127909>,  <26.963045, 37.815617, 29.457615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179909, 38.126354, 30.127909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779968, 38.122917, 30.121965>,  <26.540003, 38.120853, 30.118399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779968, 38.122917, 30.121965>,  <27.179909, 38.126354, 30.127909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779968, 38.122917, 30.121965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013349, -0.154985, 0.987827,
		-0.010791, 0.987880, 0.154847,
		-0.999853, -0.008593, -0.014860,
		26.480013, 38.120338, 30.117508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966743, 38.586880, 30.565331>,  <27.179909, 38.126354, 30.127909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966743, 38.586880, 30.565331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.639137, 38.358791, 30.539827>,  <26.442574, 38.221939, 30.524527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.639137, 38.358791, 30.539827>,  <26.966743, 38.586880, 30.565331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.639137, 38.358791, 30.539827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097073, -0.247222, 0.964084,
		-0.565502, 0.783409, 0.257831,
		-0.819014, -0.570220, -0.063756,
		26.393433, 38.187725, 30.520700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619696, 38.722206, 31.162525>,  <26.966743, 38.586880, 30.565331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619696, 38.722206, 31.162525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.462290, 38.378281, 31.032375>,  <26.367847, 38.171925, 30.954287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.462290, 38.378281, 31.032375>,  <26.619696, 38.722206, 31.162525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462290, 38.378281, 31.032375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056854, -0.330490, 0.942095,
		-0.917560, 0.389225, 0.081168,
		-0.393512, -0.859814, -0.325374,
		26.344236, 38.120335, 30.934763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007877, 38.511688, 31.583242>,  <26.619696, 38.722206, 31.162525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007877, 38.511688, 31.583242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.114506, 38.151764, 31.445093>,  <26.178482, 37.935810, 31.362204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.114506, 38.151764, 31.445093>,  <26.007877, 38.511688, 31.583242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114506, 38.151764, 31.445093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081953, -0.335880, 0.938333,
		-0.960325, -0.278434, -0.015793,
		0.266569, -0.899810, -0.345373,
		26.194477, 37.881821, 31.341482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.799984, 37.971981, 32.038525>,  <26.007877, 38.511688, 31.583242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.799984, 37.971981, 32.038525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.055309, 37.746643, 31.828690>,  <26.208506, 37.611439, 31.702787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.055309, 37.746643, 31.828690>,  <25.799984, 37.971981, 32.038525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055309, 37.746643, 31.828690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362482, -0.381226, 0.850455,
		-0.679089, -0.733012, -0.039139,
		0.638315, -0.563347, -0.524590,
		26.246803, 37.577641, 31.671312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618019, 37.233093, 32.136539>,  <25.799984, 37.971981, 32.038525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618019, 37.233093, 32.136539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.003271, 37.298931, 32.051414>,  <26.234423, 37.338432, 32.000340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.003271, 37.298931, 32.051414>,  <25.618019, 37.233093, 32.136539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003271, 37.298931, 32.051414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254566, -0.301665, 0.918801,
		0.087030, -0.939099, -0.332442,
		0.963131, 0.164592, -0.212809,
		26.292210, 37.348309, 31.987572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870979, 36.745411, 32.456436>,  <25.618019, 37.233093, 32.136539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870979, 36.745411, 32.456436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.192320, 36.976418, 32.398338>,  <26.385124, 37.115021, 32.363480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.192320, 36.976418, 32.398338>,  <25.870979, 36.745411, 32.456436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192320, 36.976418, 32.398338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302272, -0.185310, 0.935036,
		0.513085, -0.795067, -0.323437,
		0.803353, 0.577519, -0.145247,
		26.433325, 37.149673, 32.354763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350838, 36.407665, 32.804329>,  <25.870979, 36.745411, 32.456436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350838, 36.407665, 32.804329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.543146, 36.753876, 32.748146>,  <26.658531, 36.961601, 32.714436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.543146, 36.753876, 32.748146>,  <26.350838, 36.407665, 32.804329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543146, 36.753876, 32.748146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473934, -0.121727, 0.872106,
		0.737729, -0.485854, -0.468723,
		0.480773, 0.865522, -0.140462,
		26.687378, 37.013531, 32.706009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044910, 36.206402, 32.962715>,  <26.350838, 36.407665, 32.804329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044910, 36.206402, 32.962715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.002790, 36.602890, 32.994701>,  <26.977518, 36.840782, 33.013893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.002790, 36.602890, 32.994701>,  <27.044910, 36.206402, 32.962715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002790, 36.602890, 32.994701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486639, -0.018769, 0.873402,
		0.867234, 0.130884, -0.480390,
		-0.105298, 0.991220, 0.079970,
		26.971201, 36.900257, 33.018692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632313, 36.445007, 33.099178>,  <27.044910, 36.206402, 32.962715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632313, 36.445007, 33.099178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.422554, 36.766830, 33.210678>,  <27.296700, 36.959923, 33.277576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.422554, 36.766830, 33.210678>,  <27.632313, 36.445007, 33.099178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422554, 36.766830, 33.210678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568354, 0.086977, 0.818174,
		0.634022, 0.587474, -0.502882,
		-0.524395, 0.804555, 0.278748,
		27.265236, 37.008198, 33.294304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121517, 36.969555, 33.331268>,  <27.632313, 36.445007, 33.099178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121517, 36.969555, 33.331268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761774, 37.004120, 33.502701>,  <27.545927, 37.024857, 33.605560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761774, 37.004120, 33.502701>,  <28.121517, 36.969555, 33.331268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761774, 37.004120, 33.502701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420706, -0.095751, 0.902130,
		0.118990, 0.991648, 0.049761,
		-0.899360, 0.086409, 0.428586,
		27.491966, 37.030045, 33.631275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212246, 37.592678, 33.563698>,  <28.121517, 36.969555, 33.331268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212246, 37.592678, 33.563698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.603035, 37.562538, 33.483849>,  <28.837507, 37.544456, 33.435940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.603035, 37.562538, 33.483849>,  <28.212246, 37.592678, 33.563698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603035, 37.562538, 33.483849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203730, -0.607459, -0.767781,
		-0.063415, 0.790770, -0.608820,
		0.976971, -0.075346, -0.199626,
		28.896126, 37.539936, 33.423962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186462, 37.690971, 32.827454>,  <28.212246, 37.592678, 33.563698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186462, 37.690971, 32.827454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.556787, 37.553078, 32.889465>,  <28.778982, 37.470341, 32.926674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.556787, 37.553078, 32.889465>,  <28.186462, 37.690971, 32.827454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556787, 37.553078, 32.889465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120325, -0.657594, -0.743702,
		0.358324, 0.669873, -0.650288,
		0.925811, -0.344732, 0.155029,
		28.834530, 37.449657, 32.935974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651854, 37.673279, 32.109791>,  <28.186462, 37.690971, 32.827454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651854, 37.673279, 32.109791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796120, 37.414101, 32.378143>,  <28.882679, 37.258595, 32.539154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796120, 37.414101, 32.378143>,  <28.651854, 37.673279, 32.109791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796120, 37.414101, 32.378143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008052, -0.717108, -0.696915,
		0.932660, 0.256756, -0.253420,
		0.360666, -0.647945, 0.670886,
		28.904320, 37.219719, 32.579411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247408, 37.359909, 31.820936>,  <28.651854, 37.673279, 32.109791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247408, 37.359909, 31.820936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131506, 37.101250, 32.103180>,  <29.061966, 36.946053, 32.272526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131506, 37.101250, 32.103180>,  <29.247408, 37.359909, 31.820936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131506, 37.101250, 32.103180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122499, -0.756231, -0.642735,
		0.949230, -0.099798, 0.298335,
		-0.289753, -0.646649, 0.705611,
		29.044580, 36.907253, 32.314865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655354, 36.778465, 31.603924>,  <29.247408, 37.359909, 31.820936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655354, 36.778465, 31.603924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.365526, 36.628391, 31.835178>,  <29.191629, 36.538349, 31.973932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.365526, 36.628391, 31.835178>,  <29.655354, 36.778465, 31.603924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365526, 36.628391, 31.835178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014128, -0.846756, -0.531794,
		0.689061, -0.377152, 0.618831,
		-0.724566, -0.375181, 0.578138,
		29.148157, 36.515839, 32.008621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857967, 36.151382, 31.679554>,  <29.655354, 36.778465, 31.603924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857967, 36.151382, 31.679554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466698, 36.149296, 31.762638>,  <29.231936, 36.148045, 31.812489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466698, 36.149296, 31.762638>,  <29.857967, 36.151382, 31.679554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466698, 36.149296, 31.762638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093117, -0.882659, -0.460697,
		0.185743, -0.469984, 0.862910,
		-0.978176, -0.005220, 0.207712,
		29.173244, 36.147732, 31.824951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751348, 35.496174, 31.839758>,  <29.857967, 36.151382, 31.679554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751348, 35.496174, 31.839758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391178, 35.643303, 31.746859>,  <29.175076, 35.731579, 31.691118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391178, 35.643303, 31.746859>,  <29.751348, 35.496174, 31.839758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391178, 35.643303, 31.746859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093354, -0.684849, -0.722680,
		-0.424871, -0.629040, 0.650994,
		-0.900428, 0.367819, -0.232249,
		29.121050, 35.753647, 31.677183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203606, 34.931385, 31.959158>,  <29.751348, 35.496174, 31.839758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203606, 34.931385, 31.959158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022778, 35.202740, 31.727495>,  <28.914280, 35.365551, 31.588497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022778, 35.202740, 31.727495>,  <29.203606, 34.931385, 31.959158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022778, 35.202740, 31.727495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295533, -0.726534, -0.620329,
		-0.841602, -0.109271, 0.528929,
		-0.452069, 0.678387, -0.579159,
		28.887156, 35.406254, 31.553747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604660, 34.467453, 31.566858>,  <29.203606, 34.931385, 31.959158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604660, 34.467453, 31.566858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609844, 34.799881, 31.344452>,  <28.612955, 34.999336, 31.211008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609844, 34.799881, 31.344452>,  <28.604660, 34.467453, 31.566858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609844, 34.799881, 31.344452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429490, -0.497531, -0.753659,
		-0.902978, 0.248571, 0.350489,
		0.012958, 0.831069, -0.556018,
		28.613731, 35.049202, 31.177647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906467, 34.526176, 31.193233>,  <28.604660, 34.467453, 31.566858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906467, 34.526176, 31.193233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.167797, 34.739044, 30.977839>,  <28.324594, 34.866764, 30.848602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.167797, 34.739044, 30.977839>,  <27.906467, 34.526176, 31.193233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167797, 34.739044, 30.977839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365951, -0.400673, -0.839965,
		-0.662756, 0.745830, -0.067024,
		0.653325, 0.532165, -0.538486,
		28.363794, 34.898693, 30.816294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494274, 34.875355, 30.726999>,  <27.906467, 34.526176, 31.193233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494274, 34.875355, 30.726999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.862257, 34.850266, 30.572214>,  <28.083048, 34.835213, 30.479343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.862257, 34.850266, 30.572214>,  <27.494274, 34.875355, 30.726999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862257, 34.850266, 30.572214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366842, -0.485760, -0.793388,
		-0.138211, 0.871839, -0.469888,
		0.919959, -0.062720, -0.386964,
		28.138245, 34.831451, 30.456125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566675, 35.275795, 30.099482>,  <27.494274, 34.875355, 30.726999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566675, 35.275795, 30.099482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856750, 35.000526, 30.090309>,  <28.030796, 34.835365, 30.084805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856750, 35.000526, 30.090309>,  <27.566675, 35.275795, 30.099482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856750, 35.000526, 30.090309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326117, -0.313946, -0.891676,
		0.606424, 0.654111, -0.452094,
		0.725187, -0.688169, -0.022932,
		28.074306, 34.794075, 30.083429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827061, 35.406162, 29.567810>,  <27.566675, 35.275795, 30.099482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827061, 35.406162, 29.567810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.961824, 35.034737, 29.630121>,  <28.042683, 34.811882, 29.667509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.961824, 35.034737, 29.630121>,  <27.827061, 35.406162, 29.567810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961824, 35.034737, 29.630121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107749, -0.202390, -0.973359,
		0.935351, 0.311150, -0.168239,
		0.336911, -0.928560, 0.155780,
		28.062897, 34.756168, 29.676855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088171, 35.237564, 28.907991>,  <27.827061, 35.406162, 29.567810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088171, 35.237564, 28.907991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.068438, 34.877937, 29.081999>,  <28.056599, 34.662159, 29.186403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.068438, 34.877937, 29.081999>,  <28.088171, 35.237564, 28.907991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068438, 34.877937, 29.081999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590061, -0.325180, -0.738977,
		0.805850, -0.293143, -0.514463,
		-0.049332, -0.899069, 0.435018,
		28.053638, 34.608215, 29.212503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404621, 34.711224, 28.427120>,  <28.088171, 35.237564, 28.907991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404621, 34.711224, 28.427120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149199, 34.488373, 28.639481>,  <27.995945, 34.354664, 28.766897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149199, 34.488373, 28.639481>,  <28.404621, 34.711224, 28.427120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149199, 34.488373, 28.639481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390633, -0.359734, -0.847347,
		0.663064, -0.748465, 0.012078,
		-0.638555, -0.557127, 0.530902,
		27.957632, 34.321236, 28.798752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268822, 34.186954, 27.966938>,  <28.404621, 34.711224, 28.427120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268822, 34.186954, 27.966938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.964535, 34.116936, 28.216951>,  <27.781963, 34.074924, 28.366961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.964535, 34.116936, 28.216951>,  <28.268822, 34.186954, 27.966938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964535, 34.116936, 28.216951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586892, -0.225816, -0.777537,
		0.277249, -0.958314, 0.069048,
		-0.760717, -0.175047, 0.625034,
		27.736320, 34.064423, 28.404461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926060, 33.618633, 27.726320>,  <28.268822, 34.186954, 27.966938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926060, 33.618633, 27.726320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658312, 33.770355, 27.981842>,  <27.497663, 33.861389, 28.135155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658312, 33.770355, 27.981842>,  <27.926060, 33.618633, 27.726320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658312, 33.770355, 27.981842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741643, -0.290568, -0.604596,
		-0.043710, -0.878463, 0.475807,
		-0.669369, 0.379306, 0.638805,
		27.457500, 33.884148, 28.173483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413696, 33.068954, 27.938841>,  <27.926060, 33.618633, 27.726320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413696, 33.068954, 27.938841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.234407, 33.424088, 27.980522>,  <27.126835, 33.637165, 28.005531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.234407, 33.424088, 27.980522>,  <27.413696, 33.068954, 27.938841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234407, 33.424088, 27.980522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707156, -0.280850, -0.648887,
		-0.546834, -0.364533, 0.753716,
		-0.448222, 0.887828, 0.104204,
		27.099941, 33.690437, 28.011784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707212, 32.905659, 27.906607>,  <27.413696, 33.068954, 27.938841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707212, 32.905659, 27.906607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.712124, 33.298824, 27.833136>,  <26.715071, 33.534721, 27.789053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.712124, 33.298824, 27.833136>,  <26.707212, 32.905659, 27.906607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712124, 33.298824, 27.833136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689650, -0.124687, -0.713327,
		-0.724038, 0.135433, 0.676333,
		0.012279, 0.982909, -0.183679,
		26.715807, 33.593697, 27.778032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031780, 33.161011, 27.883026>,  <26.707212, 32.905659, 27.906607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031780, 33.161011, 27.883026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.240683, 33.430824, 27.674314>,  <26.366024, 33.592712, 27.549088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.240683, 33.430824, 27.674314>,  <26.031780, 33.161011, 27.883026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240683, 33.430824, 27.674314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772162, 0.114341, -0.625053,
		-0.361959, 0.729336, 0.580565,
		0.522256, 0.674534, -0.521779,
		26.397360, 33.633183, 27.517780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602703, 33.650322, 27.793430>,  <26.031780, 33.161011, 27.883026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602703, 33.650322, 27.793430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.865824, 33.718147, 27.499887>,  <26.023697, 33.758842, 27.323763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.865824, 33.718147, 27.499887>,  <25.602703, 33.650322, 27.793430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.865824, 33.718147, 27.499887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737310, -0.054051, -0.673389,
		-0.153847, 0.984036, 0.089465,
		0.657803, 0.169562, -0.733855,
		26.063166, 33.769016, 27.279732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388771, 34.146271, 27.414669>,  <25.602703, 33.650322, 27.793430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388771, 34.146271, 27.414669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632311, 33.952255, 27.163578>,  <25.778435, 33.835846, 27.012924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632311, 33.952255, 27.163578>,  <25.388771, 34.146271, 27.414669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632311, 33.952255, 27.163578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730517, -0.034320, -0.682031,
		0.309266, 0.873821, -0.375222,
		0.608850, -0.485035, -0.627727,
		25.814966, 33.806744, 26.975260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.688862, 41.469158, 44.565975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.291748, 41.424725, 44.584000>,  <42.053478, 41.398064, 44.594814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.291748, 41.424725, 44.584000>,  <42.688862, 41.469158, 44.565975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291748, 41.424725, 44.584000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062896, 0.802715, 0.593036,
		-0.102049, 0.585926, -0.803914,
		-0.992789, -0.111082, 0.045064,
		41.993912, 41.391399, 44.597519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391575, 42.073418, 44.304939>,  <42.688862, 41.469158, 44.565975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391575, 42.073418, 44.304939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.127880, 41.920353, 44.563854>,  <41.969662, 41.828514, 44.719204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.127880, 41.920353, 44.563854>,  <42.391575, 42.073418, 44.304939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127880, 41.920353, 44.563854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038240, 0.876770, 0.479387,
		-0.750964, 0.291276, -0.592631,
		-0.659236, -0.382664, 0.647284,
		41.930111, 41.805553, 44.758038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039467, 42.667583, 44.356529>,  <42.391575, 42.073418, 44.304939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039467, 42.667583, 44.356529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.930897, 42.424843, 44.655342>,  <41.865753, 42.279198, 44.834629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.930897, 42.424843, 44.655342>,  <42.039467, 42.667583, 44.356529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930897, 42.424843, 44.655342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270822, 0.792966, 0.545766,
		-0.923571, -0.054178, -0.379580,
		-0.271426, -0.606852, 0.747033,
		41.849468, 42.242786, 44.879452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498676, 43.005886, 44.699734>,  <42.039467, 42.667583, 44.356529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498676, 43.005886, 44.699734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.598263, 42.742424, 44.983757>,  <41.658016, 42.584347, 45.154171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.598263, 42.742424, 44.983757>,  <41.498676, 43.005886, 44.699734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598263, 42.742424, 44.983757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335272, 0.629206, 0.701208,
		-0.908630, -0.412641, -0.064178,
		0.248966, -0.658655, 0.710063,
		41.672951, 42.544827, 45.196777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918812, 43.051865, 45.127983>,  <41.498676, 43.005886, 44.699734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918812, 43.051865, 45.127983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.205139, 42.879047, 45.347420>,  <41.376934, 42.775356, 45.479080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.205139, 42.879047, 45.347420>,  <40.918812, 43.051865, 45.127983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205139, 42.879047, 45.347420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296882, 0.522782, 0.799099,
		-0.632036, -0.734873, 0.245950,
		0.715815, -0.432041, 0.548588,
		41.419884, 42.749435, 45.511997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642906, 42.890045, 45.735401>,  <40.918812, 43.051865, 45.127983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642906, 42.890045, 45.735401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.032818, 42.901405, 45.823952>,  <41.266766, 42.908222, 45.877083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.032818, 42.901405, 45.823952>,  <40.642906, 42.890045, 45.735401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032818, 42.901405, 45.823952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193219, 0.603822, 0.773347,
		-0.111709, -0.796613, 0.594078,
		0.974776, 0.028397, 0.221373,
		41.325249, 42.909924, 45.890362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665649, 43.017876, 46.424667>,  <40.642906, 42.890045, 45.735401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665649, 43.017876, 46.424667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.049603, 43.088772, 46.337761>,  <41.279976, 43.131310, 46.285618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.049603, 43.088772, 46.337761>,  <40.665649, 43.017876, 46.424667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049603, 43.088772, 46.337761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011046, 0.798182, 0.602316,
		0.280172, -0.575755, 0.768121,
		0.959886, 0.177237, -0.217268,
		41.337570, 43.141941, 46.272579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082321, 43.116943, 47.042488>,  <40.665649, 43.017876, 46.424667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082321, 43.116943, 47.042488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.290775, 43.296169, 46.751926>,  <41.415848, 43.403706, 46.577591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.290775, 43.296169, 46.751926>,  <41.082321, 43.116943, 47.042488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290775, 43.296169, 46.751926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107166, 0.810020, 0.576526,
		0.846720, -0.378293, 0.374112,
		0.521134, 0.448064, -0.726400,
		41.447117, 43.430588, 46.534008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589462, 43.518440, 47.327579>,  <41.082321, 43.116943, 47.042488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589462, 43.518440, 47.327579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.591904, 43.680710, 46.961979>,  <41.593369, 43.778072, 46.742619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.591904, 43.680710, 46.961979>,  <41.589462, 43.518440, 47.327579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591904, 43.680710, 46.961979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026439, 0.913631, 0.405684,
		0.999632, -0.026641, -0.005151,
		0.006102, 0.405671, -0.913999,
		41.593735, 43.802410, 46.687778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007702, 44.190105, 47.429123>,  <41.589462, 43.518440, 47.327579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007702, 44.190105, 47.429123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.788898, 44.220875, 47.095688>,  <41.657616, 44.239334, 46.895626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.788898, 44.220875, 47.095688>,  <42.007702, 44.190105, 47.429123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788898, 44.220875, 47.095688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174661, 0.963368, 0.203510,
		0.818702, 0.256917, -0.513537,
		-0.547011, 0.076920, -0.833584,
		41.624794, 44.243950, 46.845612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291367, 44.753788, 47.061028>,  <42.007702, 44.190105, 47.429123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291367, 44.753788, 47.061028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.907879, 44.658947, 46.998230>,  <41.677788, 44.602043, 46.960552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.907879, 44.658947, 46.998230>,  <42.291367, 44.753788, 47.061028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907879, 44.658947, 46.998230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283675, 0.835840, 0.470000,
		0.019786, 0.495133, -0.868592,
		-0.958716, -0.237098, -0.156995,
		41.620262, 44.587818, 46.951130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984436, 45.386509, 47.105679>,  <42.291367, 44.753788, 47.061028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984436, 45.386509, 47.105679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.686649, 45.123543, 47.152290>,  <41.507977, 44.965763, 47.180256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.686649, 45.123543, 47.152290>,  <41.984436, 45.386509, 47.105679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686649, 45.123543, 47.152290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419372, 0.596246, 0.684557,
		-0.519514, 0.460762, -0.719585,
		-0.744468, -0.657411, 0.116527,
		41.463310, 44.926319, 47.187248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313015, 45.650146, 46.825771>,  <41.984436, 45.386509, 47.105679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313015, 45.650146, 46.825771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.301586, 45.415443, 47.149475>,  <41.294727, 45.274620, 47.343697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.301586, 45.415443, 47.149475>,  <41.313015, 45.650146, 46.825771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301586, 45.415443, 47.149475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242536, 0.789465, 0.563845,
		-0.969721, -0.180163, -0.164869,
		-0.028574, -0.586759, 0.809258,
		41.293015, 45.239414, 47.392254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186897, 46.157814, 46.367092>,  <41.313015, 45.650146, 46.825771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186897, 46.157814, 46.367092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.792625, 46.222408, 46.347706>,  <40.556061, 46.261166, 46.336075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.792625, 46.222408, 46.347706>,  <41.186897, 46.157814, 46.367092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792625, 46.222408, 46.347706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053629, -0.572820, -0.817925,
		-0.159849, -0.803616, 0.573280,
		-0.985683, 0.161489, -0.048468,
		40.496922, 46.270855, 46.333164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959442, 45.514439, 46.191692>,  <41.186897, 46.157814, 46.367092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959442, 45.514439, 46.191692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.677284, 45.765987, 46.060890>,  <40.507988, 45.916916, 45.982407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.677284, 45.765987, 46.060890>,  <40.959442, 45.514439, 46.191692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677284, 45.765987, 46.060890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178459, -0.604053, -0.776706,
		-0.685979, -0.489529, 0.538325,
		-0.705397, 0.628873, -0.327007,
		40.465664, 45.954651, 45.962788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462479, 45.092072, 46.064087>,  <40.959442, 45.514439, 46.191692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462479, 45.092072, 46.064087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.356419, 45.419010, 45.859486>,  <40.292782, 45.615173, 45.736725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.356419, 45.419010, 45.859486>,  <40.462479, 45.092072, 46.064087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356419, 45.419010, 45.859486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302532, -0.574230, -0.760745,
		-0.915515, -0.046967, 0.399533,
		-0.265153, 0.817345, -0.511508,
		40.276871, 45.664215, 45.706032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748859, 44.965622, 45.729603>,  <40.462479, 45.092072, 46.064087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748859, 44.965622, 45.729603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.917828, 45.260799, 45.519081>,  <40.019211, 45.437904, 45.392769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.917828, 45.260799, 45.519081>,  <39.748859, 44.965622, 45.729603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917828, 45.260799, 45.519081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002056, -0.581438, -0.813588,
		-0.906396, 0.342598, -0.247131,
		0.422425, 0.737941, -0.526309,
		40.044556, 45.482182, 45.361187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375072, 45.036617, 45.089241>,  <39.748859, 44.965622, 45.729603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375072, 45.036617, 45.089241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.725342, 45.202168, 44.989712>,  <39.935501, 45.301498, 44.929993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.725342, 45.202168, 44.989712>,  <39.375072, 45.036617, 45.089241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725342, 45.202168, 44.989712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028058, -0.557992, -0.829372,
		-0.482095, 0.719274, -0.500229,
		0.875670, 0.413872, -0.248823,
		39.988041, 45.326328, 44.915066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243568, 45.300804, 44.355663>,  <39.375072, 45.036617, 45.089241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243568, 45.300804, 44.355663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.642818, 45.315121, 44.375504>,  <39.882370, 45.323711, 44.387405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.642818, 45.315121, 44.375504>,  <39.243568, 45.300804, 44.355663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642818, 45.315121, 44.375504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058743, -0.335006, -0.940383,
		-0.017044, 0.941536, -0.336482,
		0.998128, 0.035794, 0.049599,
		39.942257, 45.325859, 44.390385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583801, 45.768757, 43.771004>,  <39.243568, 45.300804, 44.355663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583801, 45.768757, 43.771004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.862053, 45.509968, 43.895920>,  <40.029003, 45.354694, 43.970871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.862053, 45.509968, 43.895920>,  <39.583801, 45.768757, 43.771004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862053, 45.509968, 43.895920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127790, -0.539206, -0.832422,
		0.706948, 0.539146, -0.457762,
		0.695625, -0.646977, 0.312293,
		40.070740, 45.315876, 43.989609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916641, 45.515446, 43.141102>,  <39.583801, 45.768757, 43.771004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916641, 45.515446, 43.141102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.071957, 45.260139, 43.406990>,  <40.165146, 45.106956, 43.566521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.071957, 45.260139, 43.406990>,  <39.916641, 45.515446, 43.141102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071957, 45.260139, 43.406990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323681, -0.580895, -0.746855,
		0.862822, 0.505153, -0.018962,
		0.388290, -0.638265, 0.664717,
		40.188442, 45.068661, 43.606403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532017, 45.096367, 42.807209>,  <39.916641, 45.515446, 43.141102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532017, 45.096367, 42.807209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.417694, 44.870800, 43.117126>,  <40.349102, 44.735458, 43.303078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.417694, 44.870800, 43.117126>,  <40.532017, 45.096367, 42.807209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417694, 44.870800, 43.117126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015217, -0.811090, -0.584724,
		0.958167, -0.155326, 0.240394,
		-0.285803, -0.563922, 0.774796,
		40.331951, 44.701622, 43.349564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061638, 44.558239, 42.893955>,  <40.532017, 45.096367, 42.807209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061638, 44.558239, 42.893955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.716820, 44.432919, 43.053314>,  <40.509930, 44.357727, 43.148930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.716820, 44.432919, 43.053314>,  <41.061638, 44.558239, 42.893955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716820, 44.432919, 43.053314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064037, -0.847081, -0.527591,
		0.502774, -0.429294, 0.750283,
		-0.862043, -0.313305, 0.398400,
		40.458206, 44.338928, 43.172832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164669, 43.854370, 42.834415>,  <41.061638, 44.558239, 42.893955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164669, 43.854370, 42.834415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.776894, 43.921093, 42.906380>,  <40.544228, 43.961128, 42.949558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.776894, 43.921093, 42.906380>,  <41.164669, 43.854370, 42.834415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776894, 43.921093, 42.906380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240142, -0.795357, -0.556542,
		0.050260, -0.582737, 0.811105,
		-0.969435, 0.166809, 0.179914,
		40.486061, 43.971134, 42.960354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833549, 43.225983, 43.053974>,  <41.164669, 43.854370, 42.834415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833549, 43.225983, 43.053974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.562767, 43.463448, 42.879936>,  <40.400299, 43.605927, 42.775513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.562767, 43.463448, 42.879936>,  <40.833549, 43.225983, 43.053974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562767, 43.463448, 42.879936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221031, -0.727819, -0.649173,
		-0.702053, -0.343293, 0.623917,
		-0.676955, 0.593658, -0.435089,
		40.359680, 43.641544, 42.749409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162071, 42.773609, 42.857559>,  <40.833549, 43.225983, 43.053974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162071, 42.773609, 42.857559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.047298, 43.089211, 42.640247>,  <39.978436, 43.278572, 42.509861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.047298, 43.089211, 42.640247>,  <40.162071, 42.773609, 42.857559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047298, 43.089211, 42.640247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100777, -0.588837, -0.801945,
		-0.952636, -0.175351, 0.248467,
		-0.286929, 0.789001, -0.543276,
		39.961220, 43.325912, 42.477264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467541, 42.524242, 42.565369>,  <40.162071, 42.773609, 42.857559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467541, 42.524242, 42.565369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.603432, 42.832596, 42.349838>,  <39.684967, 43.017609, 42.220520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.603432, 42.832596, 42.349838>,  <39.467541, 42.524242, 42.565369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603432, 42.832596, 42.349838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100398, -0.539898, -0.835721,
		-0.935149, 0.338015, -0.106025,
		0.339729, 0.770879, -0.538822,
		39.705349, 43.063858, 42.188190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959621, 42.684105, 42.172688>,  <39.467541, 42.524242, 42.565369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959621, 42.684105, 42.172688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.278656, 42.816944, 41.971264>,  <39.470078, 42.896648, 41.850410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.278656, 42.816944, 41.971264>,  <38.959621, 42.684105, 42.172688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278656, 42.816944, 41.971264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240501, -0.590505, -0.770366,
		-0.553191, 0.735537, -0.391106,
		0.797583, 0.332098, -0.503560,
		39.517929, 42.916573, 41.820194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370617, 43.097084, 42.434204>,  <38.959621, 42.684105, 42.172688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370617, 43.097084, 42.434204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.993736, 42.989265, 42.513802>,  <37.767609, 42.924576, 42.561558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.993736, 42.989265, 42.513802>,  <38.370617, 43.097084, 42.434204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993736, 42.989265, 42.513802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122855, 0.274603, 0.953677,
		-0.311703, 0.923005, -0.225617,
		-0.942204, -0.269546, 0.198991,
		37.711075, 42.908401, 42.573498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027317, 43.824322, 42.638084>,  <38.370617, 43.097084, 42.434204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027317, 43.824322, 42.638084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.766777, 43.542625, 42.751068>,  <37.610455, 43.373608, 42.818859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.766777, 43.542625, 42.751068>,  <38.027317, 43.824322, 42.638084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766777, 43.542625, 42.751068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068805, 0.425539, 0.902321,
		-0.755651, 0.568292, -0.325630,
		-0.651350, -0.704244, 0.282458,
		37.571373, 43.331352, 42.835804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470879, 44.153362, 42.754230>,  <38.027317, 43.824322, 42.638084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470879, 44.153362, 42.754230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473644, 43.824394, 42.981762>,  <37.475304, 43.627014, 43.118282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473644, 43.824394, 42.981762>,  <37.470879, 44.153362, 42.754230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473644, 43.824394, 42.981762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035213, 0.568693, 0.821795,
		-0.999356, 0.014350, 0.032891,
		0.006912, -0.822424, 0.568832,
		37.475719, 43.577667, 43.152412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931129, 44.243027, 43.380711>,  <37.470879, 44.153362, 42.754230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931129, 44.243027, 43.380711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170284, 43.945183, 43.499432>,  <37.313778, 43.766476, 43.570663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170284, 43.945183, 43.499432>,  <36.931129, 44.243027, 43.380711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170284, 43.945183, 43.499432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100124, 0.436742, 0.893997,
		-0.795301, -0.504794, 0.335676,
		0.597889, -0.744607, 0.296799,
		37.349651, 43.721802, 43.588470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793991, 44.286510, 44.019646>,  <36.931129, 44.243027, 43.380711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793991, 44.286510, 44.019646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.136200, 44.079403, 44.020390>,  <37.341526, 43.955139, 44.020836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.136200, 44.079403, 44.020390>,  <36.793991, 44.286510, 44.019646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136200, 44.079403, 44.020390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195765, 0.326783, 0.924602,
		-0.479336, -0.790651, 0.380930,
		0.855519, -0.517768, 0.001857,
		37.392857, 43.924072, 44.020947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732941, 43.929211, 44.539860>,  <36.793991, 44.286510, 44.019646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732941, 43.929211, 44.539860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125504, 43.946987, 44.465176>,  <37.361042, 43.957653, 44.420364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125504, 43.946987, 44.465176>,  <36.732941, 43.929211, 44.539860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125504, 43.946987, 44.465176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150302, 0.427038, 0.891654,
		0.119357, -0.903141, 0.412420,
		0.981409, 0.044437, -0.186714,
		37.419926, 43.960320, 44.409161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995441, 43.626049, 45.126915>,  <36.732941, 43.929211, 44.539860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995441, 43.626049, 45.126915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.248123, 43.876842, 44.944557>,  <37.399734, 44.027317, 44.835144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.248123, 43.876842, 44.944557>,  <36.995441, 43.626049, 45.126915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248123, 43.876842, 44.944557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169732, 0.461959, 0.870509,
		0.756398, -0.627287, 0.185403,
		0.631707, 0.626982, -0.455895,
		37.437637, 44.064938, 44.807789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429352, 43.316532, 45.400047>,  <36.995441, 43.626049, 45.126915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429352, 43.316532, 45.400047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073402, 43.486774, 45.465767>,  <35.859833, 43.588921, 45.505199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073402, 43.486774, 45.465767>,  <36.429352, 43.316532, 45.400047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073402, 43.486774, 45.465767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400053, -0.554848, -0.729452,
		-0.219293, -0.714848, 0.664006,
		-0.889869, 0.425601, 0.164303,
		35.806442, 43.614456, 45.515057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030552, 42.807083, 45.153854>,  <36.429352, 43.316532, 45.400047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030552, 42.807083, 45.153854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770962, 43.109795, 45.185146>,  <35.615208, 43.291420, 45.203922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770962, 43.109795, 45.185146>,  <36.030552, 42.807083, 45.153854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770962, 43.109795, 45.185146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480041, -0.327540, -0.813805,
		-0.590245, -0.565693, 0.575849,
		-0.648977, 0.756775, 0.078228,
		35.576267, 43.336826, 45.208614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376595, 42.500633, 45.117718>,  <36.030552, 42.807083, 45.153854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376595, 42.500633, 45.117718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324471, 42.883686, 45.014984>,  <35.293194, 43.113518, 44.953342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324471, 42.883686, 45.014984>,  <35.376595, 42.500633, 45.117718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324471, 42.883686, 45.014984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528894, -0.286252, -0.798956,
		-0.838624, 0.031724, 0.543787,
		-0.130314, 0.957629, -0.256836,
		35.285378, 43.170975, 44.937935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608288, 42.612549, 44.883965>,  <35.376595, 42.500633, 45.117718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608288, 42.612549, 44.883965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821884, 42.893543, 44.695766>,  <34.950043, 43.062141, 44.582848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821884, 42.893543, 44.695766>,  <34.608288, 42.612549, 44.883965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821884, 42.893543, 44.695766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257537, -0.394893, -0.881892,
		-0.805316, 0.592089, -0.029951,
		0.533986, 0.702488, -0.470499,
		34.982079, 43.104290, 44.554615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116306, 42.989754, 44.448967>,  <34.608288, 42.612549, 44.883965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116306, 42.989754, 44.448967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486015, 43.012634, 44.297997>,  <34.707840, 43.026363, 44.207417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486015, 43.012634, 44.297997>,  <34.116306, 42.989754, 44.448967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486015, 43.012634, 44.297997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352238, -0.253298, -0.900982,
		-0.147138, 0.965696, -0.213968,
		0.924272, 0.057201, -0.377424,
		34.763298, 43.029793, 44.184769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003544, 42.929115, 43.800892>,  <34.116306, 42.989754, 44.448967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003544, 42.929115, 43.800892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400539, 42.911083, 43.755390>,  <34.638737, 42.900265, 43.728088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400539, 42.911083, 43.755390>,  <34.003544, 42.929115, 43.800892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400539, 42.911083, 43.755390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120544, -0.519587, -0.845872,
		-0.020975, 0.853228, -0.521116,
		0.992486, -0.045076, -0.113750,
		34.698284, 42.897560, 43.721264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213078, 43.124626, 43.162121>,  <34.003544, 42.929115, 43.800892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213078, 43.124626, 43.162121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.484756, 42.864895, 43.298977>,  <34.647766, 42.709057, 43.381092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.484756, 42.864895, 43.298977>,  <34.213078, 43.124626, 43.162121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484756, 42.864895, 43.298977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172574, -0.594376, -0.785452,
		0.713376, 0.474435, -0.515758,
		0.679201, -0.649329, 0.342139,
		34.688519, 42.670097, 43.401619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.193253, 42.778664, 48.532925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.513386, 42.819252, 48.769283>,  <38.705467, 42.843605, 48.911098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.513386, 42.819252, 48.769283>,  <38.193253, 42.778664, 48.532925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513386, 42.819252, 48.769283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292792, 0.793905, -0.532905,
		-0.523195, 0.599515, 0.605681,
		0.800338, 0.101475, 0.590900,
		38.753487, 42.849693, 48.946552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882347, 42.519955, 47.782784>,  <38.193253, 42.778664, 48.532925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882347, 42.519955, 47.782784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.179108, 42.770878, 47.877495>,  <38.357166, 42.921432, 47.934322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.179108, 42.770878, 47.877495>,  <37.882347, 42.519955, 47.782784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179108, 42.770878, 47.877495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403587, -0.135787, -0.904809,
		-0.535440, 0.766844, -0.353913,
		0.741904, 0.627305, 0.236783,
		38.401680, 42.959068, 47.948528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047810, 42.852783, 47.104908>,  <37.882347, 42.519955, 47.782784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047810, 42.852783, 47.104908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.357697, 42.896179, 47.354080>,  <38.543629, 42.922215, 47.503582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.357697, 42.896179, 47.354080>,  <38.047810, 42.852783, 47.104908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357697, 42.896179, 47.354080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613435, -0.367830, -0.698855,
		0.153316, 0.923543, -0.351515,
		0.774721, 0.108486, 0.622928,
		38.590115, 42.928726, 47.540958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606430, 43.220699, 46.780273>,  <38.047810, 42.852783, 47.104908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606430, 43.220699, 46.780273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.740803, 42.976608, 47.067265>,  <38.821426, 42.830154, 47.239460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.740803, 42.976608, 47.067265>,  <38.606430, 43.220699, 46.780273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740803, 42.976608, 47.067265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439368, -0.572261, -0.692440,
		0.833130, 0.547849, 0.075874,
		0.335932, -0.610229, 0.717475,
		38.841583, 42.793541, 47.282509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181744, 42.984509, 46.502483>,  <38.606430, 43.220699, 46.780273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181744, 42.984509, 46.502483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.116100, 42.729671, 46.803730>,  <39.076714, 42.576771, 46.984478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.116100, 42.729671, 46.803730>,  <39.181744, 42.984509, 46.502483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116100, 42.729671, 46.803730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079237, -0.769513, -0.633697,
		0.983254, -0.044321, 0.176767,
		-0.164111, -0.637092, 0.753115,
		39.066868, 42.538544, 47.029663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760830, 42.505169, 46.439407>,  <39.181744, 42.984509, 46.502483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760830, 42.505169, 46.439407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.472904, 42.332653, 46.656979>,  <39.300148, 42.229145, 46.787521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.472904, 42.332653, 46.656979>,  <39.760830, 42.505169, 46.439407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472904, 42.332653, 46.656979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067764, -0.823482, -0.563281,
		0.690850, -0.368600, 0.621982,
		-0.719816, -0.431291, 0.543924,
		39.256958, 42.203266, 46.820156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041321, 41.863075, 46.453335>,  <39.760830, 42.505169, 46.439407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041321, 41.863075, 46.453335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.645565, 41.896973, 46.500530>,  <39.408112, 41.917313, 46.528847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.645565, 41.896973, 46.500530>,  <40.041321, 41.863075, 46.453335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645565, 41.896973, 46.500530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133516, -0.850496, -0.508754,
		0.057232, -0.519111, 0.852789,
		-0.989393, 0.084743, 0.117985,
		39.348747, 41.922398, 46.535927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835907, 41.222286, 46.616364>,  <40.041321, 41.863075, 46.453335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835907, 41.222286, 46.616364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.465076, 41.351616, 46.540489>,  <39.242577, 41.429214, 46.494965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.465076, 41.351616, 46.540489>,  <39.835907, 41.222286, 46.616364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465076, 41.351616, 46.540489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190968, -0.842791, -0.503225,
		-0.322572, -0.430306, 0.843080,
		-0.927081, 0.323327, -0.189686,
		39.186951, 41.448612, 46.483582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499195, 40.653866, 46.560677>,  <39.835907, 41.222286, 46.616364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499195, 40.653866, 46.560677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.254215, 40.916470, 46.384537>,  <39.107227, 41.074032, 46.278854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.254215, 40.916470, 46.384537>,  <39.499195, 40.653866, 46.560677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254215, 40.916470, 46.384537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264402, -0.695075, -0.668552,
		-0.744988, -0.293021, 0.599276,
		-0.612442, 0.656513, -0.440348,
		39.070480, 41.113422, 46.252434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797611, 40.369488, 46.623150>,  <39.499195, 40.653866, 46.560677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797611, 40.369488, 46.623150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.812466, 40.620182, 46.311810>,  <38.821377, 40.770599, 46.125008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.812466, 40.620182, 46.311810>,  <38.797611, 40.369488, 46.623150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812466, 40.620182, 46.311810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240930, -0.750295, -0.615638,
		-0.969832, 0.210389, 0.123137,
		0.037134, 0.626733, -0.778349,
		38.823605, 40.808201, 46.078304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156437, 40.285179, 46.294769>,  <38.797611, 40.369488, 46.623150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156437, 40.285179, 46.294769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.408688, 40.448109, 46.030525>,  <38.560036, 40.545864, 45.871979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.408688, 40.448109, 46.030525>,  <38.156437, 40.285179, 46.294769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408688, 40.448109, 46.030525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231987, -0.713350, -0.661297,
		-0.740606, 0.570281, -0.355361,
		0.630622, 0.407321, -0.660610,
		38.597874, 40.570305, 45.832344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798626, 40.273193, 45.704086>,  <38.156437, 40.285179, 46.294769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798626, 40.273193, 45.704086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.182499, 40.298683, 45.594582>,  <38.412823, 40.313976, 45.528881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.182499, 40.298683, 45.594582>,  <37.798626, 40.273193, 45.704086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182499, 40.298683, 45.594582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134686, -0.750609, -0.646874,
		-0.246707, 0.657667, -0.711765,
		0.959685, 0.063724, -0.273760,
		38.470406, 40.317799, 45.512455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124207, 40.671055, 45.637367>,  <37.798626, 40.273193, 45.704086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124207, 40.671055, 45.637367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.786533, 40.577454, 45.444454>,  <36.583931, 40.521294, 45.328705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.786533, 40.577454, 45.444454>,  <37.124207, 40.671055, 45.637367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786533, 40.577454, 45.444454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532360, 0.260457, 0.805453,
		-0.062865, 0.936698, -0.344448,
		-0.844181, -0.234005, -0.482287,
		36.533279, 40.507252, 45.299767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754219, 41.097031, 45.882885>,  <37.124207, 40.671055, 45.637367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754219, 41.097031, 45.882885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.475147, 40.848156, 45.740826>,  <36.307705, 40.698830, 45.655590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.475147, 40.848156, 45.740826>,  <36.754219, 41.097031, 45.882885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475147, 40.848156, 45.740826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604893, 0.245975, 0.757364,
		-0.383866, 0.743221, -0.547969,
		-0.697675, -0.622189, -0.355148,
		36.265846, 40.661499, 45.634281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212887, 41.538525, 45.737206>,  <36.754219, 41.097031, 45.882885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212887, 41.538525, 45.737206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.095200, 41.159344, 45.785915>,  <36.024590, 40.931835, 45.815144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.095200, 41.159344, 45.785915>,  <36.212887, 41.538525, 45.737206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095200, 41.159344, 45.785915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568648, 0.276038, 0.774883,
		-0.768165, 0.158733, -0.620264,
		-0.294216, -0.947949, 0.121779,
		36.006935, 40.874958, 45.822449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504654, 41.577824, 45.855160>,  <36.212887, 41.538525, 45.737206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504654, 41.577824, 45.855160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.624352, 41.229168, 46.010441>,  <35.696171, 41.019974, 46.103611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.624352, 41.229168, 46.010441>,  <35.504654, 41.577824, 45.855160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624352, 41.229168, 46.010441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584063, 0.154398, 0.796889,
		-0.754537, -0.465196, -0.462889,
		0.299240, -0.871639, 0.388203,
		35.714123, 40.967678, 46.126904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934387, 41.276779, 46.056881>,  <35.504654, 41.577824, 45.855160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934387, 41.276779, 46.056881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.221649, 41.113926, 46.282623>,  <35.394005, 41.016212, 46.418068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.221649, 41.113926, 46.282623>,  <34.934387, 41.276779, 46.056881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221649, 41.113926, 46.282623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509955, 0.243920, 0.824893,
		-0.473503, -0.880194, -0.032450,
		0.718151, -0.407138, 0.564357,
		35.437096, 40.991783, 46.451931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586002, 40.969257, 46.575340>,  <34.934387, 41.276779, 46.056881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586002, 40.969257, 46.575340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.965000, 40.992752, 46.701077>,  <35.192398, 41.006847, 46.776516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.965000, 40.992752, 46.701077>,  <34.586002, 40.969257, 46.575340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965000, 40.992752, 46.701077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314200, 0.353784, 0.880974,
		-0.059467, -0.933481, 0.353661,
		0.947492, 0.058731, 0.314338,
		35.249249, 41.010372, 46.795380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663471, 40.580585, 47.336239>,  <34.586002, 40.969257, 46.575340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663471, 40.580585, 47.336239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.977604, 40.823925, 47.290329>,  <35.166084, 40.969929, 47.262783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.977604, 40.823925, 47.290329>,  <34.663471, 40.580585, 47.336239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977604, 40.823925, 47.290329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099289, 0.306766, 0.946592,
		0.611064, -0.731991, 0.301315,
		0.785330, 0.608345, -0.114775,
		35.213203, 41.006428, 47.255898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024010, 40.495090, 47.978844>,  <34.663471, 40.580585, 47.336239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024010, 40.495090, 47.978844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.201859, 40.824436, 47.837769>,  <35.308567, 41.022041, 47.753124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.201859, 40.824436, 47.837769>,  <35.024010, 40.495090, 47.978844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201859, 40.824436, 47.837769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048653, 0.415371, 0.908350,
		0.894397, -0.386711, 0.224741,
		0.444620, 0.823360, -0.352692,
		35.335243, 41.071445, 47.731960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612438, 40.609192, 48.393246>,  <35.024010, 40.495090, 47.978844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612438, 40.609192, 48.393246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.502384, 40.958424, 48.232231>,  <35.436352, 41.167961, 48.135624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.502384, 40.958424, 48.232231>,  <35.612438, 40.609192, 48.393246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502384, 40.958424, 48.232231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074469, 0.436791, 0.896475,
		0.958518, 0.216672, -0.185192,
		-0.275131, 0.873079, -0.402537,
		35.419846, 41.220348, 48.111469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063976, 41.119587, 48.568821>,  <35.612438, 40.609192, 48.393246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063976, 41.119587, 48.568821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.719841, 41.309895, 48.495640>,  <35.513359, 41.424080, 48.451729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.719841, 41.309895, 48.495640>,  <36.063976, 41.119587, 48.568821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719841, 41.309895, 48.495640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111708, 0.526183, 0.843002,
		0.497340, 0.704825, -0.505840,
		-0.860334, 0.475765, -0.182957,
		35.461742, 41.452625, 48.440754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227276, 41.790394, 48.724289>,  <36.063976, 41.119587, 48.568821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227276, 41.790394, 48.724289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.830647, 41.841049, 48.735229>,  <35.592670, 41.871445, 48.741795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.830647, 41.841049, 48.735229>,  <36.227276, 41.790394, 48.724289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830647, 41.841049, 48.735229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093998, 0.557888, 0.824576,
		0.089164, 0.820197, -0.565090,
		-0.991572, 0.126640, 0.027353,
		35.533176, 41.879040, 48.743435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143467, 42.399471, 49.094639>,  <36.227276, 41.790394, 48.724289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143467, 42.399471, 49.094639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.765755, 42.272705, 49.059086>,  <35.539127, 42.196648, 49.037754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.765755, 42.272705, 49.059086>,  <36.143467, 42.399471, 49.094639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765755, 42.272705, 49.059086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250998, 0.518661, 0.817307,
		-0.212917, 0.794076, -0.569306,
		-0.944281, -0.316914, -0.088880,
		35.482471, 42.177631, 49.032421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753288, 42.995556, 48.941673>,  <36.143467, 42.399471, 49.094639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753288, 42.995556, 48.941673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.498016, 42.732605, 49.101967>,  <35.344852, 42.574837, 49.198143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.498016, 42.732605, 49.101967>,  <35.753288, 42.995556, 48.941673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498016, 42.732605, 49.101967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322758, 0.701003, 0.635941,
		-0.698967, 0.276504, -0.659538,
		-0.638179, -0.657373, 0.400734,
		35.306564, 42.535393, 49.222187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065567, 43.188313, 48.838196>,  <35.753288, 42.995556, 48.941673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065567, 43.188313, 48.838196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.072342, 42.968292, 49.172180>,  <35.076408, 42.836281, 49.372570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.072342, 42.968292, 49.172180>,  <35.065567, 43.188313, 48.838196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072342, 42.968292, 49.172180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415484, 0.755692, 0.506263,
		-0.909443, -0.355487, -0.215737,
		0.016940, -0.550053, 0.834958,
		35.077423, 42.803276, 49.422668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888233, 43.388481, 48.116543>,  <35.065567, 43.188313, 48.838196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888233, 43.388481, 48.116543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.237160, 43.564053, 48.202709>,  <35.446518, 43.669395, 48.254410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.237160, 43.564053, 48.202709>,  <34.888233, 43.388481, 48.116543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237160, 43.564053, 48.202709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133391, 0.210232, -0.968509,
		-0.470391, 0.873583, 0.124841,
		0.872318, 0.438926, 0.215419,
		35.498856, 43.695732, 48.267334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811474, 43.995228, 47.836987>,  <34.888233, 43.388481, 48.116543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811474, 43.995228, 47.836987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.208336, 43.958660, 47.871086>,  <35.446453, 43.936718, 47.891548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.208336, 43.958660, 47.871086>,  <34.811474, 43.995228, 47.836987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208336, 43.958660, 47.871086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113361, 0.370652, -0.921828,
		0.052675, 0.924262, 0.378108,
		0.992157, -0.091420, 0.085251,
		35.505981, 43.931232, 47.896660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059261, 44.560394, 47.540119>,  <34.811474, 43.995228, 47.836987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059261, 44.560394, 47.540119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.348991, 44.287281, 47.501835>,  <35.522827, 44.123413, 47.478867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.348991, 44.287281, 47.501835>,  <35.059261, 44.560394, 47.540119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348991, 44.287281, 47.501835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052867, 0.083406, -0.995112,
		0.687432, 0.725842, 0.024316,
		0.724322, -0.682786, -0.095709,
		35.566288, 44.082447, 47.473122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467445, 44.935768, 46.990795>,  <35.059261, 44.560394, 47.540119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467445, 44.935768, 46.990795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577225, 44.551342, 47.003624>,  <35.643093, 44.320686, 47.011322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577225, 44.551342, 47.003624>,  <35.467445, 44.935768, 46.990795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577225, 44.551342, 47.003624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064835, -0.014781, -0.997787,
		0.959413, 0.275923, 0.058254,
		0.274451, -0.961066, 0.032071,
		35.659561, 44.263023, 47.013245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952194, 44.881748, 46.450321>,  <35.467445, 44.935768, 46.990795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952194, 44.881748, 46.450321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.877956, 44.499306, 46.541023>,  <35.833412, 44.269840, 46.595444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.877956, 44.499306, 46.541023>,  <35.952194, 44.881748, 46.450321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877956, 44.499306, 46.541023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095833, -0.247276, -0.964194,
		0.977942, -0.157217, 0.137519,
		-0.185593, -0.956105, 0.226755,
		35.822277, 44.212475, 46.609051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434814, 44.548443, 46.047131>,  <35.952194, 44.881748, 46.450321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434814, 44.548443, 46.047131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.139645, 44.293182, 46.134983>,  <35.962543, 44.140026, 46.187695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.139645, 44.293182, 46.134983>,  <36.434814, 44.548443, 46.047131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139645, 44.293182, 46.134983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062612, -0.259297, -0.963766,
		0.671976, -0.724935, 0.151385,
		-0.737921, -0.638149, 0.219631,
		35.918266, 44.101738, 46.200874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646786, 43.993069, 45.697006>,  <36.434814, 44.548443, 46.047131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646786, 43.993069, 45.697006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.256241, 43.939117, 45.764561>,  <36.021912, 43.906746, 45.805092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.256241, 43.939117, 45.764561>,  <36.646786, 43.993069, 45.697006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256241, 43.939117, 45.764561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110068, -0.362191, -0.925582,
		0.186007, -0.922294, 0.338785,
		-0.976364, -0.134876, 0.168885,
		35.963333, 43.898655, 45.815228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445099, 43.798744, 45.678028>,  <36.646786, 43.993069, 45.697006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445099, 43.798744, 45.678028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.572052, 44.083614, 45.427567>,  <37.648224, 44.254536, 45.277290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.572052, 44.083614, 45.427567>,  <37.445099, 43.798744, 45.678028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572052, 44.083614, 45.427567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393300, 0.501970, 0.770286,
		0.862893, -0.490741, -0.120785,
		0.317380, 0.712179, -0.626155,
		37.667267, 44.297268, 45.239719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168461, 43.877510, 45.857521>,  <37.445099, 43.798744, 45.678028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168461, 43.877510, 45.857521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.017967, 44.198765, 45.672733>,  <37.927670, 44.391518, 45.561863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.017967, 44.198765, 45.672733>,  <38.168461, 43.877510, 45.857521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017967, 44.198765, 45.672733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358255, 0.585925, 0.726873,
		0.854457, 0.107976, -0.508177,
		-0.376238, 0.803139, -0.461965,
		37.905094, 44.439705, 45.534145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715889, 44.312450, 45.720188>,  <38.168461, 43.877510, 45.857521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715889, 44.312450, 45.720188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.412842, 44.572559, 45.697697>,  <38.231014, 44.728622, 45.684200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.412842, 44.572559, 45.697697>,  <38.715889, 44.312450, 45.720188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412842, 44.572559, 45.697697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449857, 0.582651, 0.676865,
		0.472905, 0.487513, -0.733956,
		-0.757621, 0.650268, -0.056227,
		38.185555, 44.767639, 45.680828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990799, 44.909924, 46.041527>,  <38.715889, 44.312450, 45.720188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990799, 44.909924, 46.041527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.613491, 45.034389, 45.995205>,  <38.387104, 45.109070, 45.967411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.613491, 45.034389, 45.995205>,  <38.990799, 44.909924, 46.041527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613491, 45.034389, 45.995205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222247, 0.850879, 0.476037,
		0.246661, 0.423296, -0.871767,
		-0.943273, 0.311167, -0.115803,
		38.330509, 45.127739, 45.960464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067863, 45.563709, 45.866501>,  <38.990799, 44.909924, 46.041527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067863, 45.563709, 45.866501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.703129, 45.532272, 46.027683>,  <38.484287, 45.513409, 46.124393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.703129, 45.532272, 46.027683>,  <39.067863, 45.563709, 45.866501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703129, 45.532272, 46.027683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063144, 0.942978, 0.326811,
		-0.405663, 0.323443, -0.854881,
		-0.911839, -0.078594, 0.402955,
		38.429577, 45.508694, 46.148571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552795, 45.974117, 45.557003>,  <39.067863, 45.563709, 45.866501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552795, 45.974117, 45.557003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.442368, 45.896889, 45.933620>,  <38.376110, 45.850552, 46.159592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.442368, 45.896889, 45.933620>,  <38.552795, 45.974117, 45.557003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442368, 45.896889, 45.933620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087362, 0.980602, 0.175465,
		-0.957159, -0.033815, -0.287580,
		-0.276068, -0.193072, 0.941546,
		38.359547, 45.838966, 46.216084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296871, 46.516647, 45.693626>,  <38.552795, 45.974117, 45.557003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296871, 46.516647, 45.693626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.348061, 46.348297, 46.052845>,  <38.378773, 46.247288, 46.268375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.348061, 46.348297, 46.052845>,  <38.296871, 46.516647, 45.693626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348061, 46.348297, 46.052845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042142, 0.906980, 0.419060,
		-0.990882, -0.015781, 0.133803,
		0.127970, -0.420877, 0.898046,
		38.386452, 46.222034, 46.322258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711193, 46.785538, 46.057858>,  <38.296871, 46.516647, 45.693626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711193, 46.785538, 46.057858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.004742, 46.681705, 46.308952>,  <38.180870, 46.619408, 46.459610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.004742, 46.681705, 46.308952>,  <37.711193, 46.785538, 46.057858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004742, 46.681705, 46.308952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120122, 0.859956, 0.496031,
		-0.668587, -0.439427, 0.599913,
		0.733868, -0.259577, 0.627740,
		38.224903, 46.603832, 46.497272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450981, 46.995411, 46.699131>,  <37.711193, 46.785538, 46.057858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450981, 46.995411, 46.699131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.841377, 46.935108, 46.762028>,  <38.075615, 46.898926, 46.799767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.841377, 46.935108, 46.762028>,  <37.450981, 46.995411, 46.699131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841377, 46.935108, 46.762028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014331, 0.764711, 0.644214,
		-0.217360, -0.626491, 0.748508,
		0.975986, -0.150753, 0.157239,
		38.134174, 46.889881, 46.809200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.668938, 35.621490, 35.322273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040482, 35.682716, 35.457203>,  <37.263409, 35.719452, 35.538162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040482, 35.682716, 35.457203>,  <36.668938, 35.621490, 35.322273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040482, 35.682716, 35.457203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335044, 0.735561, 0.588809,
		-0.157995, -0.659940, 0.734518,
		0.928861, 0.153067, 0.337324,
		37.319141, 35.728638, 35.558399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823883, 35.548531, 36.129253>,  <36.668938, 35.621490, 35.322273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823883, 35.548531, 36.129253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106163, 35.803566, 36.005657>,  <37.275532, 35.956589, 35.931499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106163, 35.803566, 36.005657>,  <36.823883, 35.548531, 36.129253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106163, 35.803566, 36.005657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240588, 0.625837, 0.741920,
		0.666415, -0.449232, 0.595047,
		0.705697, 0.637588, -0.308987,
		37.317871, 35.994843, 35.912960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058399, 35.888611, 36.762688>,  <36.823883, 35.548531, 36.129253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058399, 35.888611, 36.762688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197475, 36.121655, 36.468834>,  <37.280922, 36.261482, 36.292522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197475, 36.121655, 36.468834>,  <37.058399, 35.888611, 36.762688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197475, 36.121655, 36.468834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131638, 0.806085, 0.576974,
		0.928324, -0.103901, 0.356958,
		0.347687, 0.582608, -0.734630,
		37.301781, 36.296436, 36.248444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449276, 36.317097, 37.103527>,  <37.058399, 35.888611, 36.762688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449276, 36.317097, 37.103527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393986, 36.531265, 36.770248>,  <37.360813, 36.659767, 36.570282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393986, 36.531265, 36.770248>,  <37.449276, 36.317097, 37.103527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393986, 36.531265, 36.770248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056785, 0.835603, 0.546391,
		0.988772, 0.122836, -0.085094,
		-0.138221, 0.535424, -0.833196,
		37.352520, 36.691891, 36.520290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816528, 36.944515, 37.187386>,  <37.449276, 36.317097, 37.103527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816528, 36.944515, 37.187386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555717, 37.038822, 36.899143>,  <37.399231, 37.095406, 36.726196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555717, 37.038822, 36.899143>,  <37.816528, 36.944515, 37.187386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555717, 37.038822, 36.899143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086272, 0.921182, 0.379447,
		0.753273, 0.309578, -0.580295,
		-0.652026, 0.235764, -0.720609,
		37.360111, 37.109550, 36.682961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016857, 37.547489, 36.895153>,  <37.816528, 36.944515, 37.187386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016857, 37.547489, 36.895153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627888, 37.533520, 36.802914>,  <37.394508, 37.525139, 36.747570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627888, 37.533520, 36.802914>,  <38.016857, 37.547489, 36.895153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627888, 37.533520, 36.802914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160374, 0.818015, 0.552387,
		0.169342, 0.574135, -0.801057,
		-0.972421, -0.034926, -0.230601,
		37.336163, 37.523041, 36.733734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842892, 38.170143, 36.508057>,  <38.016857, 37.547489, 36.895153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842892, 38.170143, 36.508057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495251, 38.037846, 36.655174>,  <37.286667, 37.958466, 36.743443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495251, 38.037846, 36.655174>,  <37.842892, 38.170143, 36.508057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495251, 38.037846, 36.655174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252364, 0.936003, 0.245377,
		-0.425411, 0.120440, -0.896950,
		-0.869102, -0.330744, 0.367792,
		37.234520, 37.938622, 36.765511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304276, 38.742161, 36.367260>,  <37.842892, 38.170143, 36.508057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304276, 38.742161, 36.367260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094597, 38.535835, 36.638302>,  <36.968788, 38.412041, 36.800926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094597, 38.535835, 36.638302>,  <37.304276, 38.742161, 36.367260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094597, 38.535835, 36.638302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444273, 0.844471, 0.299149,
		-0.726523, -0.144228, -0.671835,
		-0.524199, -0.515817, 0.677604,
		36.937336, 38.381088, 36.841583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600220, 38.988678, 36.331387>,  <37.304276, 38.742161, 36.367260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600220, 38.988678, 36.331387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637703, 38.824993, 36.694431>,  <36.660194, 38.726784, 36.912258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637703, 38.824993, 36.694431>,  <36.600220, 38.988678, 36.331387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637703, 38.824993, 36.694431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597932, 0.705775, 0.379945,
		-0.796050, -0.578296, -0.178543,
		0.093710, -0.409212, 0.907614,
		36.665817, 38.702229, 36.966717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957359, 39.046692, 36.653889>,  <36.600220, 38.988678, 36.331387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957359, 39.046692, 36.653889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201523, 38.986202, 36.964897>,  <36.348022, 38.949909, 37.151501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201523, 38.986202, 36.964897>,  <35.957359, 39.046692, 36.653889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201523, 38.986202, 36.964897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457199, 0.734311, 0.501753,
		-0.646816, -0.661754, 0.379091,
		0.610408, -0.151222, 0.777518,
		36.384644, 38.940834, 37.198151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526451, 39.093918, 37.274719>,  <35.957359, 39.046692, 36.653889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526451, 39.093918, 37.274719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899982, 39.141346, 37.409714>,  <36.124104, 39.169804, 37.490711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899982, 39.141346, 37.409714>,  <35.526451, 39.093918, 37.274719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899982, 39.141346, 37.409714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302389, 0.765690, 0.567697,
		-0.191099, -0.632186, 0.750881,
		0.933832, 0.118572, 0.337489,
		36.180134, 39.176918, 37.510960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509556, 39.114784, 38.085575>,  <35.526451, 39.093918, 37.274719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509556, 39.114784, 38.085575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837250, 39.307495, 37.961166>,  <36.033867, 39.423122, 37.886520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837250, 39.307495, 37.961166>,  <35.509556, 39.114784, 38.085575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837250, 39.307495, 37.961166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149777, 0.703306, 0.694930,
		0.553546, -0.522731, 0.648336,
		0.819240, 0.481781, -0.311019,
		36.083023, 39.452030, 37.867859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024139, 38.891235, 38.727375>,  <35.509556, 39.114784, 38.085575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024139, 38.891235, 38.727375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682117, 39.073139, 38.627712>,  <34.476906, 39.182281, 38.567913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682117, 39.073139, 38.627712>,  <35.024139, 38.891235, 38.727375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682117, 39.073139, 38.627712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213028, -0.746149, -0.630778,
		-0.472760, -0.486271, 0.734873,
		-0.855054, 0.454755, -0.249160,
		34.425602, 39.209564, 38.552963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553017, 38.308609, 38.802795>,  <35.024139, 38.891235, 38.727375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553017, 38.308609, 38.802795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381500, 38.595776, 38.583439>,  <34.278591, 38.768074, 38.451824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381500, 38.595776, 38.583439>,  <34.553017, 38.308609, 38.802795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381500, 38.595776, 38.583439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089341, -0.637754, -0.765041,
		-0.898975, -0.279048, 0.337603,
		-0.428791, 0.717915, -0.548395,
		34.252861, 38.811150, 38.418919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990940, 37.977551, 38.649441>,  <34.553017, 38.308609, 38.802795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990940, 37.977551, 38.649441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038269, 38.271454, 38.382267>,  <34.066666, 38.447796, 38.221962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038269, 38.271454, 38.382267>,  <33.990940, 37.977551, 38.649441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038269, 38.271454, 38.382267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196783, -0.641965, -0.741052,
		-0.973282, 0.219118, 0.068630,
		0.118320, 0.734757, -0.667932,
		34.073765, 38.491882, 38.181889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450829, 37.868488, 38.243561>,  <33.990940, 37.977551, 38.649441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450829, 37.868488, 38.243561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700069, 38.067417, 38.002090>,  <33.849613, 38.186775, 37.857208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700069, 38.067417, 38.002090>,  <33.450829, 37.868488, 38.243561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700069, 38.067417, 38.002090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095298, -0.717793, -0.689703,
		-0.776316, 0.487281, -0.399862,
		0.623098, 0.497322, -0.603672,
		33.886997, 38.216614, 37.820988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056263, 37.964458, 37.644215>,  <33.450829, 37.868488, 38.243561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056263, 37.964458, 37.644215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447533, 37.989548, 37.564968>,  <33.682293, 38.004601, 37.517422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447533, 37.989548, 37.564968>,  <33.056263, 37.964458, 37.644215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447533, 37.989548, 37.564968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087873, -0.739091, -0.667849,
		-0.188313, 0.670679, -0.717446,
		0.978170, 0.062721, -0.198115,
		33.740982, 38.008366, 37.505535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009251, 37.568493, 37.061794>,  <33.056263, 37.964458, 37.644215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009251, 37.568493, 37.061794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403976, 37.630756, 37.079494>,  <33.640812, 37.668114, 37.090115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403976, 37.630756, 37.079494>,  <33.009251, 37.568493, 37.061794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403976, 37.630756, 37.079494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130541, -0.604079, -0.786160,
		-0.095644, 0.781574, -0.616437,
		0.986819, 0.155662, 0.044250,
		33.700024, 37.677456, 37.092770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362572, 37.838810, 36.385143>,  <33.009251, 37.568493, 37.061794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362572, 37.838810, 36.385143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630207, 37.610184, 36.575150>,  <33.790787, 37.473007, 36.689152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630207, 37.610184, 36.575150>,  <33.362572, 37.838810, 36.385143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630207, 37.610184, 36.575150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000209, -0.639015, -0.769195,
		0.743182, 0.514759, -0.427438,
		0.669089, -0.571563, 0.475012,
		33.830933, 37.438713, 36.717651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749584, 37.599293, 35.792358>,  <33.362572, 37.838810, 36.385143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749584, 37.599293, 35.792358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893700, 37.361671, 36.080051>,  <33.980167, 37.219101, 36.252666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893700, 37.361671, 36.080051>,  <33.749584, 37.599293, 35.792358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893700, 37.361671, 36.080051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132122, -0.730745, -0.669743,
		0.923437, 0.336328, -0.184793,
		0.360290, -0.594050, 0.719233,
		34.001785, 37.183456, 36.295822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463753, 37.393612, 35.578072>,  <33.749584, 37.599293, 35.792358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463753, 37.393612, 35.578072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302227, 37.125717, 35.827354>,  <34.205311, 36.964981, 35.976925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302227, 37.125717, 35.827354>,  <34.463753, 37.393612, 35.578072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302227, 37.125717, 35.827354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226634, -0.733222, -0.641111,
		0.886323, -0.117652, 0.447873,
		-0.403818, -0.669734, 0.623207,
		34.181080, 36.924797, 36.014317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922256, 36.839684, 35.528297>,  <34.463753, 37.393612, 35.578072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922256, 36.839684, 35.528297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595329, 36.659569, 35.672092>,  <34.399174, 36.551498, 35.758369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595329, 36.659569, 35.672092>,  <34.922256, 36.839684, 35.528297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595329, 36.659569, 35.672092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076432, -0.703128, -0.706944,
		0.571096, -0.550321, 0.609095,
		-0.817317, -0.450287, 0.359492,
		34.350136, 36.524483, 35.779942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122353, 36.079868, 35.309750>,  <34.922256, 36.839684, 35.528297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122353, 36.079868, 35.309750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737705, 36.110664, 35.415100>,  <34.506916, 36.129143, 35.478310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737705, 36.110664, 35.415100>,  <35.122353, 36.079868, 35.309750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737705, 36.110664, 35.415100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246261, -0.665525, -0.704579,
		0.121040, -0.742394, 0.658939,
		-0.961616, 0.076989, 0.263378,
		34.449219, 36.133762, 35.494114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886810, 35.413925, 35.364212>,  <35.122353, 36.079868, 35.309750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886810, 35.413925, 35.364212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577442, 35.657909, 35.295197>,  <34.391819, 35.804298, 35.253788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577442, 35.657909, 35.295197>,  <34.886810, 35.413925, 35.364212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577442, 35.657909, 35.295197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373407, -0.658347, -0.653564,
		-0.512234, -0.441056, 0.736943,
		-0.773423, 0.609958, -0.172535,
		34.345417, 35.840897, 35.243435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234444, 34.942181, 35.446407>,  <34.886810, 35.413925, 35.364212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234444, 34.942181, 35.446407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115372, 35.266190, 35.244320>,  <34.043930, 35.460594, 35.123066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115372, 35.266190, 35.244320>,  <34.234444, 34.942181, 35.446407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115372, 35.266190, 35.244320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589585, -0.572215, -0.570052,
		-0.750853, 0.128182, 0.647912,
		-0.297675, 0.810024, -0.505224,
		34.026070, 35.509197, 35.092754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916508, 34.575882, 35.315624>,  <34.234444, 34.942181, 35.446407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916508, 34.575882, 35.315624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676655, 34.273125, 35.419582>,  <34.532742, 34.091469, 35.481956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676655, 34.273125, 35.419582>,  <34.916508, 34.575882, 35.315624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676655, 34.273125, 35.419582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782074, -0.485366, 0.390870,
		-0.169702, 0.437639, 0.882991,
		-0.599634, -0.756896, 0.259899,
		34.496765, 34.046055, 35.497551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280827, 34.700329, 35.822872>,  <34.916508, 34.575882, 35.315624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280827, 34.700329, 35.822872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535622, 35.006878, 35.789581>,  <35.688499, 35.190807, 35.769608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535622, 35.006878, 35.789581>,  <35.280827, 34.700329, 35.822872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535622, 35.006878, 35.789581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476853, 0.306901, -0.823664,
		-0.605691, 0.564346, 0.560938,
		0.636984, 0.766371, -0.083223,
		35.726715, 35.236790, 35.764614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370640, 34.628799, 36.582970>,  <35.280827, 34.700329, 35.822872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370640, 34.628799, 36.582970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457249, 34.383247, 36.886620>,  <35.509212, 34.235916, 37.068810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457249, 34.383247, 36.886620>,  <35.370640, 34.628799, 36.582970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457249, 34.383247, 36.886620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151177, 0.789275, 0.595139,
		-0.964502, -0.014098, 0.263700,
		0.216523, -0.613878, 0.759126,
		35.522205, 34.199085, 37.114357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937794, 34.830704, 37.234299>,  <35.370640, 34.628799, 36.582970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937794, 34.830704, 37.234299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275917, 34.640575, 37.331886>,  <35.478790, 34.526497, 37.390438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275917, 34.640575, 37.331886>,  <34.937794, 34.830704, 37.234299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275917, 34.640575, 37.331886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224917, 0.730788, 0.644485,
		-0.484630, -0.489916, 0.724649,
		0.845308, -0.475323, 0.243971,
		35.529510, 34.497978, 37.405079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952213, 34.637627, 37.984890>,  <34.937794, 34.830704, 37.234299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952213, 34.637627, 37.984890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330402, 34.670040, 37.858704>,  <35.557316, 34.689487, 37.782993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330402, 34.670040, 37.858704>,  <34.952213, 34.637627, 37.984890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330402, 34.670040, 37.858704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228995, 0.523382, 0.820751,
		0.231614, -0.848237, 0.476287,
		0.945472, 0.081030, -0.315465,
		35.614044, 34.694351, 37.764065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309566, 34.559956, 38.599918>,  <34.952213, 34.637627, 37.984890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309566, 34.559956, 38.599918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565678, 34.724354, 38.340343>,  <35.719345, 34.822994, 38.184597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565678, 34.724354, 38.340343>,  <35.309566, 34.559956, 38.599918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565678, 34.724354, 38.340343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397718, 0.545383, 0.737819,
		0.657164, -0.730505, 0.185736,
		0.640278, 0.410998, -0.648941,
		35.757763, 34.847652, 38.145660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907711, 34.661736, 38.973324>,  <35.309566, 34.559956, 38.599918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907711, 34.661736, 38.973324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947292, 34.896099, 38.651600>,  <35.971043, 35.036716, 38.458565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947292, 34.896099, 38.651600>,  <35.907711, 34.661736, 38.973324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947292, 34.896099, 38.651600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600697, 0.609221, 0.517699,
		0.793328, -0.534379, -0.291666,
		0.098958, 0.585908, -0.804313,
		35.976978, 35.071873, 38.410305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510349, 34.909641, 39.058178>,  <35.907711, 34.661736, 38.973324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510349, 34.909641, 39.058178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336720, 35.173649, 38.812916>,  <36.232544, 35.332054, 38.665760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336720, 35.173649, 38.812916>,  <36.510349, 34.909641, 39.058178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336720, 35.173649, 38.812916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417479, 0.750498, 0.512313,
		0.798308, -0.033599, -0.601312,
		-0.434070, 0.660019, -0.613155,
		36.206497, 35.371655, 38.628971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004368, 35.363861, 38.891670>,  <36.510349, 34.909641, 39.058178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004368, 35.363861, 38.891670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716492, 35.613094, 38.769146>,  <36.543766, 35.762634, 38.695633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716492, 35.613094, 38.769146>,  <37.004368, 35.363861, 38.891670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716492, 35.613094, 38.769146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391561, 0.728563, 0.562027,
		0.573351, 0.284545, -0.768311,
		-0.719686, 0.623080, -0.306306,
		36.500587, 35.800018, 38.677254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365395, 36.051109, 38.704552>,  <37.004368, 35.363861, 38.891670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365395, 36.051109, 38.704552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980705, 36.109547, 38.797283>,  <36.749893, 36.144611, 38.852924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980705, 36.109547, 38.797283>,  <37.365395, 36.051109, 38.704552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980705, 36.109547, 38.797283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253385, 0.796244, 0.549355,
		-0.104336, 0.587070, -0.802784,
		-0.961722, 0.146096, 0.231832,
		36.692188, 36.153374, 38.866833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387611, 36.743279, 38.840096>,  <37.365395, 36.051109, 38.704552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387611, 36.743279, 38.840096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017754, 36.662842, 38.969460>,  <36.795837, 36.614578, 39.047077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017754, 36.662842, 38.969460>,  <37.387611, 36.743279, 38.840096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017754, 36.662842, 38.969460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062655, 0.917978, 0.391652,
		-0.375641, 0.341875, -0.861403,
		-0.924645, -0.201092, 0.323410,
		36.740360, 36.602512, 39.066483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999466, 37.284836, 38.522785>,  <37.387611, 36.743279, 38.840096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999466, 37.284836, 38.522785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817604, 37.147774, 38.851631>,  <36.708485, 37.065536, 39.048939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817604, 37.147774, 38.851631>,  <36.999466, 37.284836, 38.522785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817604, 37.147774, 38.851631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062255, 0.933002, 0.354445,
		-0.888488, 0.109970, -0.445528,
		-0.454657, -0.342657, 0.822115,
		36.681206, 37.044975, 39.098267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498360, 37.802055, 38.730740>,  <36.999466, 37.284836, 38.522785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498360, 37.802055, 38.730740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581032, 37.575130, 39.049595>,  <36.630634, 37.438976, 39.240910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581032, 37.575130, 39.049595>,  <36.498360, 37.802055, 38.730740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581032, 37.575130, 39.049595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036586, 0.818645, 0.573134,
		-0.977725, -0.089290, 0.189952,
		0.206679, -0.567317, 0.797142,
		36.643036, 37.404934, 39.288738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986389, 37.967041, 39.309109>,  <36.498360, 37.802055, 38.730740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986389, 37.967041, 39.309109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292164, 37.806656, 39.511047>,  <36.475628, 37.710426, 39.632210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292164, 37.806656, 39.511047>,  <35.986389, 37.967041, 39.309109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292164, 37.806656, 39.511047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156904, 0.643816, 0.748920,
		-0.625318, -0.651712, 0.429242,
		0.764434, -0.400963, 0.504846,
		36.521496, 37.686367, 39.662502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781322, 37.829189, 39.968006>,  <35.986389, 37.967041, 39.309109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781322, 37.829189, 39.968006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175865, 37.812290, 40.031651>,  <36.412590, 37.802151, 40.069836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175865, 37.812290, 40.031651>,  <35.781322, 37.829189, 39.968006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175865, 37.812290, 40.031651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107219, 0.568521, 0.815652,
		-0.124918, -0.821583, 0.556235,
		0.986357, -0.042250, 0.159108,
		36.471771, 37.799614, 40.079384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895523, 37.770199, 40.668762>,  <35.781322, 37.829189, 39.968006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895523, 37.770199, 40.668762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257614, 37.880596, 40.539520>,  <36.474869, 37.946835, 40.461975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257614, 37.880596, 40.539520>,  <35.895523, 37.770199, 40.668762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257614, 37.880596, 40.539520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119248, 0.564809, 0.816561,
		0.407859, -0.777700, 0.478366,
		0.905225, 0.275997, -0.323102,
		36.529182, 37.963394, 40.442589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234608, 37.721943, 41.211479>,  <35.895523, 37.770199, 40.668762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234608, 37.721943, 41.211479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453884, 37.961884, 40.978359>,  <36.585449, 38.105850, 40.838486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453884, 37.961884, 40.978359>,  <36.234608, 37.721943, 41.211479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453884, 37.961884, 40.978359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118053, 0.634363, 0.763968,
		0.827978, -0.487604, 0.276938,
		0.548193, 0.599855, -0.582802,
		36.618343, 38.141842, 40.803520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865276, 37.895523, 41.597206>,  <36.234608, 37.721943, 41.211479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865276, 37.895523, 41.597206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805660, 38.179234, 41.321609>,  <36.769890, 38.349461, 41.156250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805660, 38.179234, 41.321609>,  <36.865276, 37.895523, 41.597206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805660, 38.179234, 41.321609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018567, 0.698660, 0.715213,
		0.988656, 0.093805, -0.117300,
		-0.149044, 0.709278, -0.688993,
		36.760948, 38.392017, 41.114910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379620, 38.457523, 41.808384>,  <36.865276, 37.895523, 41.597206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379620, 38.457523, 41.808384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080219, 38.617050, 41.596458>,  <36.900581, 38.712765, 41.469303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080219, 38.617050, 41.596458>,  <37.379620, 38.457523, 41.808384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080219, 38.617050, 41.596458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088193, 0.731978, 0.675596,
		0.657247, 0.552408, -0.512711,
		-0.748497, 0.398816, -0.529809,
		36.855671, 38.736694, 41.437515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674957, 39.129887, 41.672943>,  <37.379620, 38.457523, 41.808384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674957, 39.129887, 41.672943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284790, 39.177422, 41.598717>,  <37.050690, 39.205944, 41.554180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284790, 39.177422, 41.598717>,  <37.674957, 39.129887, 41.672943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284790, 39.177422, 41.598717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012375, 0.811242, 0.584579,
		0.220005, 0.572506, -0.789832,
		-0.975420, 0.118836, -0.185562,
		36.992165, 39.213074, 41.543049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616348, 39.863026, 41.625511>,  <37.674957, 39.129887, 41.672943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616348, 39.863026, 41.625511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264931, 39.687370, 41.700680>,  <37.054081, 39.581978, 41.745781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264931, 39.687370, 41.700680>,  <37.616348, 39.863026, 41.625511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264931, 39.687370, 41.700680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194231, 0.687859, 0.699374,
		-0.436387, 0.577932, -0.689610,
		-0.878545, -0.439141, 0.187920,
		37.001366, 39.555630, 41.757057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065563, 40.382183, 41.662685>,  <37.616348, 39.863026, 41.625511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065563, 40.382183, 41.662685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963764, 40.057701, 41.873276>,  <36.902687, 39.863010, 41.999630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963764, 40.057701, 41.873276>,  <37.065563, 40.382183, 41.662685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963764, 40.057701, 41.873276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167500, 0.573151, 0.802148,
		-0.952458, 0.115957, -0.281740,
		-0.254494, -0.811204, 0.526480,
		36.887417, 39.814339, 42.031219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587006, 40.658920, 42.085369>,  <37.065563, 40.382183, 41.662685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587006, 40.658920, 42.085369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647480, 40.308788, 42.269081>,  <36.683765, 40.098709, 42.379307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647480, 40.308788, 42.269081>,  <36.587006, 40.658920, 42.085369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647480, 40.308788, 42.269081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210651, 0.425415, 0.880141,
		-0.965800, -0.229810, -0.120073,
		0.151184, -0.875334, 0.459276,
		36.692837, 40.046188, 42.406864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050968, 40.530357, 42.617359>,  <36.587006, 40.658920, 42.085369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050968, 40.530357, 42.617359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329193, 40.266796, 42.731930>,  <36.496128, 40.108658, 42.800671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329193, 40.266796, 42.731930>,  <36.050968, 40.530357, 42.617359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329193, 40.266796, 42.731930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178426, 0.227758, 0.957231,
		-0.695962, -0.716915, 0.040853,
		0.695558, -0.658908, 0.286427,
		36.537861, 40.069122, 42.817860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730709, 40.076923, 43.173065>,  <36.050968, 40.530357, 42.617359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730709, 40.076923, 43.173065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128735, 40.080795, 43.212570>,  <36.367550, 40.083118, 43.236271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128735, 40.080795, 43.212570>,  <35.730709, 40.076923, 43.173065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128735, 40.080795, 43.212570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098569, -0.018472, 0.994959,
		0.011456, -0.999782, -0.017426,
		0.995064, 0.009680, 0.098759,
		36.427254, 40.083698, 43.242199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841461, 39.556515, 43.721500>,  <35.730709, 40.076923, 43.173065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841461, 39.556515, 43.721500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150192, 39.810570, 43.709614>,  <36.335430, 39.963005, 43.702480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150192, 39.810570, 43.709614>,  <35.841461, 39.556515, 43.721500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150192, 39.810570, 43.709614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012279, 0.061621, 0.998024,
		0.635716, -0.769936, 0.055359,
		0.771826, 0.635139, -0.029719,
		36.381741, 40.001110, 43.700699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348675, 39.220360, 44.117569>,  <35.841461, 39.556515, 43.721500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348675, 39.220360, 44.117569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474846, 39.598587, 44.085545>,  <36.550549, 39.825523, 44.066330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474846, 39.598587, 44.085545>,  <36.348675, 39.220360, 44.117569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474846, 39.598587, 44.085545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004075, 0.085719, 0.996311,
		0.948942, -0.313936, 0.030891,
		0.315426, 0.945567, -0.080063,
		36.569473, 39.882256, 44.061527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895309, 39.264336, 44.613747>,  <36.348675, 39.220360, 44.117569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895309, 39.264336, 44.613747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746552, 39.631153, 44.556156>,  <36.657299, 39.851242, 44.521603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746552, 39.631153, 44.556156>,  <36.895309, 39.264336, 44.613747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746552, 39.631153, 44.556156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146058, 0.095362, 0.984669,
		0.916714, 0.387218, 0.098478,
		-0.371890, 0.917043, -0.143976,
		36.634983, 39.906265, 44.512962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136238, 39.653481, 45.170464>,  <36.895309, 39.264336, 44.613747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136238, 39.653481, 45.170464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830910, 39.879055, 45.044403>,  <36.647713, 40.014400, 44.968765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830910, 39.879055, 45.044403>,  <37.136238, 39.653481, 45.170464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830910, 39.879055, 45.044403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228083, 0.221168, 0.948189,
		0.604421, 0.795650, -0.040196,
		-0.763317, 0.563937, -0.315153,
		36.601913, 40.048237, 44.949856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818645, 39.938042, 44.990623>,  <37.136238, 39.653481, 45.170464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818645, 39.938042, 44.990623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210850, 39.936142, 45.069187>,  <38.446171, 39.935001, 45.116325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210850, 39.936142, 45.069187>,  <37.818645, 39.938042, 44.990623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210850, 39.936142, 45.069187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124618, -0.757828, -0.640443,
		0.151885, 0.652438, -0.742466,
		0.980511, -0.004749, 0.196408,
		38.505005, 39.934719, 45.128109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084862, 39.977371, 44.308537>,  <37.818645, 39.938042, 44.990623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084862, 39.977371, 44.308537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366199, 39.828045, 44.550507>,  <38.535004, 39.738449, 44.695690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366199, 39.828045, 44.550507>,  <38.084862, 39.977371, 44.308537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366199, 39.828045, 44.550507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312336, -0.602146, -0.734756,
		0.638550, 0.705730, -0.306919,
		0.703349, -0.373317, 0.604926,
		38.577206, 39.716049, 44.731983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728840, 39.860191, 43.816738>,  <38.084862, 39.977371, 44.308537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728840, 39.860191, 43.816738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748779, 39.640743, 44.150570>,  <38.760742, 39.509075, 44.350868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748779, 39.640743, 44.150570>,  <38.728840, 39.860191, 43.816738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748779, 39.640743, 44.150570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308738, -0.786232, -0.535276,
		0.949840, 0.284349, 0.130190,
		0.049846, -0.548621, 0.834584,
		38.763733, 39.476158, 44.400944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328907, 39.613972, 43.811081>,  <38.728840, 39.860191, 43.816738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328907, 39.613972, 43.811081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151421, 39.360050, 44.064110>,  <39.044930, 39.207699, 44.215927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151421, 39.360050, 44.064110>,  <39.328907, 39.613972, 43.811081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151421, 39.360050, 44.064110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348366, -0.772528, -0.530888,
		0.825686, -0.015196, 0.563925,
		-0.443715, -0.634799, 0.632572,
		39.018307, 39.169609, 44.253880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789894, 39.149284, 43.916553>,  <39.328907, 39.613972, 43.811081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789894, 39.149284, 43.916553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436203, 38.978336, 43.991917>,  <39.223988, 38.875767, 44.037132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436203, 38.978336, 43.991917>,  <39.789894, 39.149284, 43.916553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436203, 38.978336, 43.991917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169438, -0.669428, -0.723296,
		0.435238, -0.607635, 0.664339,
		-0.884228, -0.427370, 0.188404,
		39.170937, 38.850124, 44.048439>
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
