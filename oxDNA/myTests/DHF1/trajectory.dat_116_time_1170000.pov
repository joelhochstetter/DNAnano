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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<1.773313, 5.422691, 2.916056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.128832, 5.360710, 3.088581>,  <2.342143, 5.323522, 3.192096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.128832, 5.360710, 3.088581>,  <1.773313, 5.422691, 2.916056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.128832, 5.360710, 3.088581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403600, -0.181243, -0.896804,
		0.217134, 0.971154, -0.098550,
		0.888797, -0.154952, 0.431312,
		2.395471, 5.314225, 3.217975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.301065, 5.892551, 2.636464>,  <1.773313, 5.422691, 2.916056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.301065, 5.892551, 2.636464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.468197, 5.551510, 2.761993>,  <2.568476, 5.346885, 2.837311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.468197, 5.551510, 2.761993>,  <2.301065, 5.892551, 2.636464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.468197, 5.551510, 2.761993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528135, -0.053124, -0.847497,
		0.739251, 0.519850, 0.428093,
		0.417829, -0.852604, 0.313823,
		2.593546, 5.295729, 2.856140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.677473, 5.921478, 2.113300>,  <2.301065, 5.892551, 2.636464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.677473, 5.921478, 2.113300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.695635, 5.550674, 2.262211>,  <2.706532, 5.328192, 2.351558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.695635, 5.550674, 2.262211>,  <2.677473, 5.921478, 2.113300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.695635, 5.550674, 2.262211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576321, -0.280084, -0.767729,
		0.815961, 0.249411, 0.521538,
		0.045405, -0.927010, 0.372278,
		2.709256, 5.272572, 2.373894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.247048, 5.559360, 1.736094>,  <2.677473, 5.921478, 2.113300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.247048, 5.559360, 1.736094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.081852, 5.256432, 1.938442>,  <2.982734, 5.074675, 2.059851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.081852, 5.256432, 1.938442>,  <3.247048, 5.559360, 1.736094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.081852, 5.256432, 1.938442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379975, -0.648081, -0.660008,
		0.827682, -0.080359, 0.555415,
		-0.412991, -0.757320, 0.505870,
		2.957955, 5.029235, 2.090203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.767599, 5.175071, 1.976989>,  <3.247048, 5.559360, 1.736094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.767599, 5.175071, 1.976989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.442423, 4.962849, 1.880959>,  <3.247317, 4.835515, 1.823340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.442423, 4.962849, 1.880959>,  <3.767599, 5.175071, 1.976989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.442423, 4.962849, 1.880959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522288, -0.481921, -0.703539,
		0.257570, -0.697325, 0.668877,
		-0.812941, -0.530557, -0.240076,
		3.198541, 4.803682, 1.808936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.942596, 4.412981, 1.992265>,  <3.767599, 5.175071, 1.976989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.942596, 4.412981, 1.992265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.608652, 4.435467, 1.773232>,  <3.408286, 4.448958, 1.641811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.608652, 4.435467, 1.773232>,  <3.942596, 4.412981, 1.992265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.608652, 4.435467, 1.773232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482936, -0.402582, -0.777625,
		-0.264159, -0.913656, 0.308953,
		-0.834861, 0.056213, -0.547583,
		3.358194, 4.452331, 1.608956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.894674, 3.784357, 1.767519>,  <3.942596, 4.412981, 1.992265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.894674, 3.784357, 1.767519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.694874, 4.002098, 1.497948>,  <3.574994, 4.132743, 1.336205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.694874, 4.002098, 1.497948>,  <3.894674, 3.784357, 1.767519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.694874, 4.002098, 1.497948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509791, -0.444279, -0.736702,
		-0.700438, -0.711545, -0.055590,
		-0.499499, 0.544353, -0.673929,
		3.545024, 4.165404, 1.295769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.612723, 3.420294, 1.167133>,  <3.894674, 3.784357, 1.767519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.612723, 3.420294, 1.167133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.674698, 3.789513, 1.026291>,  <3.711883, 4.011044, 0.941786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.674698, 3.789513, 1.026291>,  <3.612723, 3.420294, 1.167133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.674698, 3.789513, 1.026291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405713, -0.384418, -0.829228,
		-0.900773, -0.014375, -0.434053,
		0.154938, 0.923047, -0.352105,
		3.721179, 4.066427, 0.920659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.368389, 3.089104, -0.632023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.656939, 3.363655, -0.668911>,  <3.830068, 3.528386, -0.691044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.656939, 3.363655, -0.668911>,  <3.368389, 3.089104, -0.632023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.656939, 3.363655, -0.668911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365687, 0.490600, 0.790939,
		0.588128, -0.536838, 0.604906,
		0.721373, 0.686380, -0.092221,
		3.873351, 3.569568, -0.696577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.853332, 3.182968, -0.022889>,  <3.368389, 3.089104, -0.632023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.853332, 3.182968, -0.022889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.784016, 3.519119, -0.228310>,  <3.742426, 3.720810, -0.351562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.784016, 3.519119, -0.228310>,  <3.853332, 3.182968, -0.022889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.784016, 3.519119, -0.228310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299416, 0.451805, 0.840370,
		0.938254, 0.299394, 0.173329,
		-0.173291, 0.840378, -0.513551,
		3.732028, 3.771233, -0.382375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.367239, 3.849684, 0.167688>,  <3.853332, 3.182968, -0.022889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.367239, 3.849684, 0.167688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.990570, 3.923676, 0.055237>,  <3.764568, 3.968071, -0.012234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.990570, 3.923676, 0.055237>,  <4.367239, 3.849684, 0.167688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.990570, 3.923676, 0.055237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254954, 0.153122, 0.954752,
		0.219656, 0.970740, -0.097030,
		-0.941674, 0.184979, -0.281129,
		3.708068, 3.979169, -0.029102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.164377, 4.417575, 0.442963>,  <4.367239, 3.849684, 0.167688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.164377, 4.417575, 0.442963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.826360, 4.213051, 0.380402>,  <3.623549, 4.090336, 0.342865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.826360, 4.213051, 0.380402>,  <4.164377, 4.417575, 0.442963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.826360, 4.213051, 0.380402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369496, 0.346988, 0.862016,
		-0.386488, 0.786232, -0.482148,
		-0.845044, -0.511310, -0.156403,
		3.572846, 4.059658, 0.333481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.611658, 4.929802, 0.346017>,  <4.164377, 4.417575, 0.442963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.611658, 4.929802, 0.346017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.477499, 4.582985, 0.493393>,  <3.397004, 4.374895, 0.581818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.477499, 4.582985, 0.493393>,  <3.611658, 4.929802, 0.346017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.477499, 4.582985, 0.493393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269645, 0.463082, 0.844302,
		-0.902663, 0.183828, -0.389110,
		-0.335396, -0.867042, 0.368439,
		3.376881, 4.322872, 0.603925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.861391, 4.957689, 0.584204>,  <3.611658, 4.929802, 0.346017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.861391, 4.957689, 0.584204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.058419, 4.689003, 0.805534>,  <3.176637, 4.527791, 0.938333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.058419, 4.689003, 0.805534>,  <2.861391, 4.957689, 0.584204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.058419, 4.689003, 0.805534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424622, 0.369489, 0.826543,
		-0.759650, -0.642087, -0.103226,
		0.492572, -0.671716, 0.553327,
		3.206191, 4.487488, 0.971532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.285008, 4.621620, 0.890111>,  <2.861391, 4.957689, 0.584204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.285008, 4.621620, 0.890111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.622583, 4.557770, 1.094967>,  <2.825129, 4.519460, 1.217881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.622583, 4.557770, 1.094967>,  <2.285008, 4.621620, 0.890111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.622583, 4.557770, 1.094967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431158, 0.366193, 0.824625,
		-0.319173, -0.916745, 0.240221,
		0.843938, -0.159625, 0.512141,
		2.875765, 4.509882, 1.248609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.191126, 4.111290, 1.378949>,  <2.285008, 4.621620, 0.890111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.191126, 4.111290, 1.378949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.478930, 4.364098, 1.494087>,  <2.651613, 4.515782, 1.563170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.478930, 4.364098, 1.494087>,  <2.191126, 4.111290, 1.378949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.478930, 4.364098, 1.494087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598014, 0.353106, 0.719511,
		0.353106, -0.689831, 0.632020,
		-0.719511, -0.632020, -0.287845,
		2.694784, 4.553704, 1.580441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
