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
	<-0.613191, 4.083768, 5.124255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.505661, 3.857555, 4.812382>,  <-0.441143, 3.721828, 4.625257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.505661, 3.857555, 4.812382>,  <-0.613191, 4.083768, 5.124255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.505661, 3.857555, 4.812382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573110, 0.744510, -0.342417,
		0.774130, -0.354795, 0.524255,
		0.268825, -0.565531, -0.779684,
		-0.425013, 3.687896, 4.578476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.158020, 4.171198, 5.078935>,  <-0.613191, 4.083768, 5.124255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.158020, 4.171198, 5.078935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.034428, 4.034542, 4.723900>,  <-0.039728, 3.952548, 4.510879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.034428, 4.034542, 4.723900>,  <0.158020, 4.171198, 5.078935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.034428, 4.034542, 4.723900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773505, 0.452737, -0.443530,
		0.553372, -0.823596, 0.124374,
		-0.308980, -0.341641, -0.887588,
		-0.058266, 3.932050, 4.457623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.651935, 3.635550, 4.641771>,  <0.158020, 4.171198, 5.078935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.651935, 3.635550, 4.641771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.439758, 3.870842, 4.397602>,  <0.312452, 4.012017, 4.251101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.439758, 3.870842, 4.397602>,  <0.651935, 3.635550, 4.641771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.439758, 3.870842, 4.397602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832235, 0.224340, -0.507007,
		-0.161295, -0.776954, -0.608545,
		-0.530442, 0.588230, -0.610423,
		0.280626, 4.047311, 4.214475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.693329, 3.565890, 3.922564>,  <0.651935, 3.635550, 4.641771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.693329, 3.565890, 3.922564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.595440, 3.949337, 3.980751>,  <0.536706, 4.179406, 4.015663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.595440, 3.949337, 3.980751>,  <0.693329, 3.565890, 3.922564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.595440, 3.949337, 3.980751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806028, 0.284526, -0.519002,
		-0.538914, -0.009761, -0.842304,
		-0.244723, 0.958619, 0.145467,
		0.522023, 4.236923, 4.024391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.540081, 3.913148, 3.263796>,  <0.693329, 3.565890, 3.922564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.540081, 3.913148, 3.263796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.651817, 4.181713, 3.538364>,  <0.718859, 4.342852, 3.703105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.651817, 4.181713, 3.538364>,  <0.540081, 3.913148, 3.263796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.651817, 4.181713, 3.538364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769770, 0.270726, -0.578067,
		-0.573953, 0.689864, -0.441209,
		0.279341, 0.671413, 0.686420,
		0.735620, 4.383137, 3.744291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.632412, 4.449560, 2.938803>,  <0.540081, 3.913148, 3.263796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.632412, 4.449560, 2.938803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.862698, 4.490925, 3.263237>,  <1.000869, 4.515744, 3.457898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.862698, 4.490925, 3.263237>,  <0.632412, 4.449560, 2.938803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.862698, 4.490925, 3.263237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748705, 0.332014, -0.573766,
		-0.328627, 0.937589, 0.113719,
		0.575713, 0.103413, 0.811086,
		1.035411, 4.521949, 3.506563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.960825, 5.088055, 2.979728>,  <0.632412, 4.449560, 2.938803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.960825, 5.088055, 2.979728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.195446, 4.851818, 3.201416>,  <1.336218, 4.710076, 3.334429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.195446, 4.851818, 3.201416>,  <0.960825, 5.088055, 2.979728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.195446, 4.851818, 3.201416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809557, 0.407282, -0.422774,
		0.023963, 0.696652, 0.717009,
		0.586552, -0.590591, 0.554220,
		1.371412, 4.674641, 3.367682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.515848, 5.513374, 3.323306>,  <0.960825, 5.088055, 2.979728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.515848, 5.513374, 3.323306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.632420, 5.131355, 3.301571>,  <1.702362, 4.902143, 3.288530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.632420, 5.131355, 3.301571>,  <1.515848, 5.513374, 3.323306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.632420, 5.131355, 3.301571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918205, 0.295212, -0.264101,
		0.268271, 0.027073, 0.962963,
		0.291428, -0.955048, -0.054338,
		1.719848, 4.844841, 3.285269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.983235, 5.589839, 2.612265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.106574, 5.210144, 2.637146>,  <3.180578, 4.982327, 2.652075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.106574, 5.210144, 2.637146>,  <2.983235, 5.589839, 2.612265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.106574, 5.210144, 2.637146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733374, -0.195561, 0.651090,
		-0.605875, -0.246381, -0.756447,
		0.308347, -0.949238, 0.062204,
		3.199078, 4.925373, 2.655807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.393074, 5.228403, 2.568824>,  <2.983235, 5.589839, 2.612265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.393074, 5.228403, 2.568824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.660785, 4.972595, 2.720131>,  <2.821411, 4.819111, 2.810915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.660785, 4.972595, 2.720131>,  <2.393074, 5.228403, 2.568824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.660785, 4.972595, 2.720131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736966, -0.506536, 0.447552,
		-0.094612, -0.578306, -0.810315,
		0.669276, -0.639518, 0.378267,
		2.861567, 4.780740, 2.833611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.169960, 4.494137, 2.426600>,  <2.393074, 5.228403, 2.568824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.169960, 4.494137, 2.426600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.387316, 4.537018, 2.759644>,  <2.517729, 4.562747, 2.959470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.387316, 4.537018, 2.759644>,  <2.169960, 4.494137, 2.426600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.387316, 4.537018, 2.759644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748334, -0.387604, 0.538294,
		0.380429, -0.915571, -0.130396,
		0.543388, 0.107203, 0.832608,
		2.550332, 4.569179, 3.009426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.341666, 3.843144, 2.871922>,  <2.169960, 4.494137, 2.426600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.341666, 3.843144, 2.871922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.286240, 4.194290, 3.055290>,  <2.252984, 4.404978, 3.165311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.286240, 4.194290, 3.055290>,  <2.341666, 3.843144, 2.871922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.286240, 4.194290, 3.055290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864013, -0.333389, 0.377270,
		0.484026, -0.343806, 0.804684,
		-0.138566, 0.877866, 0.458422,
		2.244670, 4.457650, 3.192817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.091110, 3.665190, 3.522167>,  <2.341666, 3.843144, 2.871922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.091110, 3.665190, 3.522167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.017307, 4.052536, 3.454964>,  <1.973026, 4.284944, 3.414642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.017307, 4.052536, 3.454964>,  <2.091110, 3.665190, 3.522167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.017307, 4.052536, 3.454964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905262, -0.100881, 0.412703,
		0.382698, 0.228239, 0.895237,
		-0.184507, 0.968365, -0.168009,
		1.961955, 4.343045, 3.404561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.820248, 3.789197, 4.208909>,  <2.091110, 3.665190, 3.522167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.820248, 3.789197, 4.208909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.698607, 4.071785, 3.953278>,  <1.625623, 4.241338, 3.799899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.698607, 4.071785, 3.953278>,  <1.820248, 3.789197, 4.208909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.698607, 4.071785, 3.953278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851020, 0.100021, 0.515520,
		0.428121, 0.700639, 0.570804,
		-0.304101, 0.706471, -0.639079,
		1.607377, 4.283726, 3.761554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.776644, 4.493572, 4.519073>,  <1.820248, 3.789197, 4.208909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.776644, 4.493572, 4.519073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.522638, 4.439270, 4.214882>,  <1.370235, 4.406689, 4.032367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.522638, 4.439270, 4.214882>,  <1.776644, 4.493572, 4.519073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.522638, 4.439270, 4.214882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760938, -0.059761, 0.646067,
		-0.133155, 0.988938, -0.065353,
		-0.635015, -0.135756, -0.760478,
		1.332134, 4.398543, 3.986739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.286151, 5.058156, 4.472207>,  <1.776644, 4.493572, 4.519073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.286151, 5.058156, 4.472207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.146732, 4.706482, 4.342255>,  <1.063081, 4.495477, 4.264283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.146732, 4.706482, 4.342255>,  <1.286151, 5.058156, 4.472207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.146732, 4.706482, 4.342255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812834, 0.110935, 0.571834,
		-0.466707, 0.463385, -0.753299,
		-0.348546, -0.879186, -0.324881,
		1.042168, 4.442726, 4.244791>
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
