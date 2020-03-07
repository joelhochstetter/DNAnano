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
	<3.991785, 2.578202, 2.623977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.726627, 2.727127, 2.364145>,  <3.567533, 2.816482, 2.208246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.726627, 2.727127, 2.364145>,  <3.991785, 2.578202, 2.623977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.726627, 2.727127, 2.364145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640230, 0.731681, -0.233982,
		0.388170, -0.570986, -0.723394,
		-0.662894, 0.372314, -0.649580,
		3.527759, 2.838821, 2.169271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.133539, 2.368751, 1.940824>,  <3.991785, 2.578202, 2.623977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.133539, 2.368751, 1.940824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.969551, 2.733225, 1.924482>,  <3.871158, 2.951909, 1.914677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.969551, 2.733225, 1.924482>,  <4.133539, 2.368751, 1.940824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.969551, 2.733225, 1.924482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808287, 0.342190, -0.479142,
		-0.422607, -0.229455, -0.876786,
		-0.409969, 0.911184, -0.040854,
		3.846560, 3.006580, 1.912226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.264710, 2.609664, 1.344772>,  <4.133539, 2.368751, 1.940824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.264710, 2.609664, 1.344772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.168365, 2.955997, 1.520188>,  <4.110559, 3.163797, 1.625438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.168365, 2.955997, 1.520188>,  <4.264710, 2.609664, 1.344772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.168365, 2.955997, 1.520188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443471, 0.500099, -0.743798,
		-0.863319, 0.015328, -0.504427,
		-0.240862, 0.865833, 0.438542,
		4.096107, 3.215747, 1.651751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.821445, 3.290435, 0.967316>,  <4.264710, 2.609664, 1.344772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.821445, 3.290435, 0.967316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.100094, 3.442053, 1.210969>,  <4.267283, 3.533023, 1.357161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.100094, 3.442053, 1.210969>,  <3.821445, 3.290435, 0.967316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.100094, 3.442053, 1.210969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237755, 0.679093, -0.694481,
		-0.676897, 0.628616, 0.382952,
		0.696622, 0.379044, 0.609133,
		4.309081, 3.555766, 1.393709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.697202, 4.051684, 0.893036>,  <3.821445, 3.290435, 0.967316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.697202, 4.051684, 0.893036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.074757, 3.992598, 1.011193>,  <4.301290, 3.957146, 1.082087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.074757, 3.992598, 1.011193>,  <3.697202, 4.051684, 0.893036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.074757, 3.992598, 1.011193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313551, 0.681738, -0.660998,
		-0.103740, 0.716529, 0.689801,
		0.943887, -0.147716, 0.295392,
		4.357923, 3.948283, 1.099811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.915412, 4.704996, 0.941576>,  <3.697202, 4.051684, 0.893036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.915412, 4.704996, 0.941576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.245461, 4.479343, 0.929374>,  <4.443490, 4.343952, 0.922052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.245461, 4.479343, 0.929374>,  <3.915412, 4.704996, 0.941576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.245461, 4.479343, 0.929374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358138, 0.564062, -0.744024,
		0.436934, 0.602984, 0.667457,
		0.825122, -0.564131, -0.030506,
		4.492997, 4.310104, 0.920222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.352446, 5.184538, 0.820913>,  <3.915412, 4.704996, 0.941576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.352446, 5.184538, 0.820913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.512833, 4.848701, 0.674318>,  <4.609065, 4.647200, 0.586361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.512833, 4.848701, 0.674318>,  <4.352446, 5.184538, 0.820913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.512833, 4.848701, 0.674318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240898, 0.482610, -0.842054,
		0.883851, 0.249350, 0.395767,
		0.400968, -0.839590, -0.366487,
		4.633123, 4.596824, 0.564372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.950800, 5.484440, 0.440694>,  <4.352446, 5.184538, 0.820913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.950800, 5.484440, 0.440694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.866467, 5.114004, 0.315533>,  <4.815866, 4.891743, 0.240436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.866467, 5.114004, 0.315533>,  <4.950800, 5.484440, 0.440694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.866467, 5.114004, 0.315533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248808, 0.258717, -0.933360,
		0.945328, -0.274636, 0.175872,
		-0.210833, -0.926089, -0.312904,
		4.803216, 4.836177, 0.221662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.650202, 5.389291, -0.883278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.695404, 5.018298, -1.025831>,  <4.722525, 4.795702, -1.111363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.695404, 5.018298, -1.025831>,  <4.650202, 5.389291, -0.883278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.695404, 5.018298, -1.025831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050312, -0.352878, 0.934316,
		-0.992320, -0.123513, 0.006786,
		0.113005, -0.927481, -0.356382,
		4.729306, 4.740054, -1.132746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.129093, 4.884677, -0.579993>,  <4.650202, 5.389291, -0.883278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.129093, 4.884677, -0.579993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.474152, 4.699331, -0.661121>,  <4.681187, 4.588124, -0.709798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.474152, 4.699331, -0.661121>,  <4.129093, 4.884677, -0.579993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.474152, 4.699331, -0.661121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054256, -0.313902, 0.947904,
		-0.502891, -0.828709, -0.245646,
		0.862645, -0.463365, -0.202821,
		4.732945, 4.560322, -0.721967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.046796, 4.138877, -0.314601>,  <4.129093, 4.884677, -0.579993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.046796, 4.138877, -0.314601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.418808, 4.285846, -0.317307>,  <4.642015, 4.374027, -0.318930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.418808, 4.285846, -0.317307>,  <4.046796, 4.138877, -0.314601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.418808, 4.285846, -0.317307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115234, -0.274109, 0.954770,
		0.348950, -0.888744, -0.297269,
		0.930029, 0.367422, -0.006763,
		4.697817, 4.396072, -0.319336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.476997, 3.650396, -0.184346>,  <4.046796, 4.138877, -0.314601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.476997, 3.650396, -0.184346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.624924, 3.994235, -0.043306>,  <4.713680, 4.200539, 0.041317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.624924, 3.994235, -0.043306>,  <4.476997, 3.650396, -0.184346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.624924, 3.994235, -0.043306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119405, -0.420329, 0.899481,
		0.921400, -0.290541, -0.258086,
		0.369817, 0.859598, 0.352599,
		4.735869, 4.252114, 0.062473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.143890, 3.487555, 0.127528>,  <4.476997, 3.650396, -0.184346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.143890, 3.487555, 0.127528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.968460, 3.816985, 0.271402>,  <4.863202, 4.014644, 0.357727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.968460, 3.816985, 0.271402>,  <5.143890, 3.487555, 0.127528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.968460, 3.816985, 0.271402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038777, -0.382517, 0.923134,
		0.897858, 0.418810, 0.135826,
		-0.438574, 0.823577, 0.359686,
		4.836888, 4.064058, 0.379308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.573032, 3.676404, 0.774625>,  <5.143890, 3.487555, 0.127528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.573032, 3.676404, 0.774625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.218597, 3.856260, 0.819653>,  <5.005937, 3.964174, 0.846669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.218597, 3.856260, 0.819653>,  <5.573032, 3.676404, 0.774625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.218597, 3.856260, 0.819653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024592, -0.196912, 0.980113,
		0.462865, 0.871234, 0.163424,
		-0.886087, 0.449641, 0.112569,
		4.952771, 3.991153, 0.853423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.621253, 3.865232, 1.458764>,  <5.573032, 3.676404, 0.774625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.621253, 3.865232, 1.458764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.237991, 3.854078, 1.344807>,  <5.008035, 3.847386, 1.276432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.237991, 3.854078, 1.344807>,  <5.621253, 3.865232, 1.458764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.237991, 3.854078, 1.344807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239896, -0.464783, 0.852307,
		-0.156180, 0.884985, 0.438644,
		-0.958153, -0.027885, -0.284894,
		4.950545, 3.845713, 1.259338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.199446, 4.253839, 2.024490>,  <5.621253, 3.865232, 1.458764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.199446, 4.253839, 2.024490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.057220, 3.946038, 1.812284>,  <4.971885, 3.761358, 1.684961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.057220, 3.946038, 1.812284>,  <5.199446, 4.253839, 2.024490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.057220, 3.946038, 1.812284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138915, -0.517792, 0.844153,
		-0.924271, 0.373846, 0.077212,
		-0.355563, -0.769501, -0.530513,
		4.950552, 3.715188, 1.653131>
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
