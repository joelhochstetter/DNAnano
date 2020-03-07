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
	<36.526386, 52.551975, 50.120354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655392, 52.726173, 49.784180>,  <36.732796, 52.830692, 49.582474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655392, 52.726173, 49.784180>,  <36.526386, 52.551975, 50.120354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655392, 52.726173, 49.784180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551720, -0.634977, -0.540749,
		-0.769150, 0.638083, 0.035482,
		0.322513, 0.435493, -0.840435,
		36.752144, 52.856823, 49.532047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734539, 51.843994, 50.136929>,  <36.526386, 52.551975, 50.120354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734539, 51.843994, 50.136929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749088, 51.964176, 50.518169>,  <36.757816, 52.036285, 50.746914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749088, 51.964176, 50.518169>,  <36.734539, 51.843994, 50.136929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749088, 51.964176, 50.518169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703528, -0.669649, 0.237948,
		0.709736, -0.679189, 0.187022,
		0.036372, 0.300456, 0.953102,
		36.759998, 52.054314, 50.804100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842831, 51.269802, 50.611813>,  <36.734539, 51.843994, 50.136929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842831, 51.269802, 50.611813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662029, 51.565308, 50.811783>,  <36.553547, 51.742611, 50.931763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662029, 51.565308, 50.811783>,  <36.842831, 51.269802, 50.611813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662029, 51.565308, 50.811783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797360, -0.585868, 0.144831,
		0.399883, -0.333153, 0.853875,
		-0.452007, 0.738762, 0.499921,
		36.526428, 51.786938, 50.961758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653709, 51.093021, 51.360077>,  <36.842831, 51.269802, 50.611813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653709, 51.093021, 51.360077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416710, 51.377872, 51.209442>,  <36.274509, 51.548782, 51.119061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416710, 51.377872, 51.209442>,  <36.653709, 51.093021, 51.360077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416710, 51.377872, 51.209442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795567, -0.443821, 0.412427,
		0.126564, 0.543962, 0.829510,
		-0.592499, 0.712129, -0.376586,
		36.238960, 51.591511, 51.096466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187973, 50.930046, 51.792770>,  <36.653709, 51.093021, 51.360077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187973, 50.930046, 51.792770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334846, 51.201912, 51.538769>,  <37.422970, 51.365032, 51.386368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334846, 51.201912, 51.538769>,  <37.187973, 50.930046, 51.792770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334846, 51.201912, 51.538769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715249, 0.230123, 0.659896,
		0.594639, -0.696486, -0.401636,
		0.367183, 0.679669, -0.635001,
		37.445000, 51.405811, 51.348267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915138, 50.834976, 51.657944>,  <37.187973, 50.930046, 51.792770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915138, 50.834976, 51.657944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799934, 51.217712, 51.642406>,  <37.730812, 51.447353, 51.633083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799934, 51.217712, 51.642406>,  <37.915138, 50.834976, 51.657944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799934, 51.217712, 51.642406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728330, 0.245203, 0.639852,
		0.621761, 0.155989, -0.767516,
		-0.288007, 0.956840, -0.038846,
		37.713531, 51.504765, 51.630753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298813, 51.491718, 51.347401>,  <37.915138, 50.834976, 51.657944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298813, 51.491718, 51.347401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099251, 51.490120, 51.694061>,  <37.979515, 51.489162, 51.902058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099251, 51.490120, 51.694061>,  <38.298813, 51.491718, 51.347401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099251, 51.490120, 51.694061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846997, 0.209547, 0.488554,
		-0.183555, 0.977790, -0.101161,
		-0.498902, -0.003993, 0.866649,
		37.949581, 51.488922, 51.954056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285324, 52.256413, 51.722603>,  <38.298813, 51.491718, 51.347401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285324, 52.256413, 51.722603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263878, 51.937042, 51.962482>,  <38.251011, 51.745419, 52.106411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263878, 51.937042, 51.962482>,  <38.285324, 52.256413, 51.722603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263878, 51.937042, 51.962482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890672, 0.233286, 0.390232,
		-0.451473, 0.555057, 0.698630,
		-0.053620, -0.798429, 0.599696,
		38.247791, 51.697514, 52.142391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370224, 52.441021, 52.496746>,  <38.285324, 52.256413, 51.722603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370224, 52.441021, 52.496746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522968, 52.088249, 52.386192>,  <38.614616, 51.876587, 52.319862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522968, 52.088249, 52.386192>,  <38.370224, 52.441021, 52.496746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522968, 52.088249, 52.386192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865769, 0.236689, 0.440934,
		-0.323455, -0.407658, 0.853927,
		0.381865, -0.881926, -0.276380,
		38.637527, 51.823673, 52.303280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539356, 51.989597, 53.129318>,  <38.370224, 52.441021, 52.496746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539356, 51.989597, 53.129318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774624, 51.948402, 52.808456>,  <38.915783, 51.923687, 52.615940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774624, 51.948402, 52.808456>,  <38.539356, 51.989597, 53.129318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774624, 51.948402, 52.808456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757912, 0.416268, 0.502285,
		0.282182, -0.903391, 0.322890,
		0.588169, -0.102986, -0.802154,
		38.951073, 51.917507, 52.567810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151024, 51.535038, 53.243706>,  <38.539356, 51.989597, 53.129318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151024, 51.535038, 53.243706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227409, 51.815125, 52.968536>,  <39.273239, 51.983177, 52.803436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227409, 51.815125, 52.968536>,  <39.151024, 51.535038, 53.243706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227409, 51.815125, 52.968536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747926, 0.350082, 0.563958,
		0.635720, -0.622207, -0.456857,
		0.190961, 0.700215, -0.687919,
		39.284698, 52.025188, 52.762161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910862, 51.617672, 53.060074>,  <39.151024, 51.535038, 53.243706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910862, 51.617672, 53.060074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723980, 51.968914, 53.018784>,  <39.611851, 52.179657, 52.994011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723980, 51.968914, 53.018784>,  <39.910862, 51.617672, 53.060074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723980, 51.968914, 53.018784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693910, 0.436524, 0.572657,
		0.547909, 0.195923, -0.813271,
		-0.467209, 0.878101, -0.103223,
		39.583817, 52.232346, 52.987816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521107, 52.058155, 52.905735>,  <39.910862, 51.617672, 53.060074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521107, 52.058155, 52.905735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218544, 52.267639, 53.062496>,  <40.037006, 52.393330, 53.156551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218544, 52.267639, 53.062496>,  <40.521107, 52.058155, 52.905735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218544, 52.267639, 53.062496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654021, 0.595949, 0.465941,
		0.010464, 0.608750, -0.793293,
		-0.756404, 0.523706, 0.391900,
		39.991623, 52.424751, 53.180065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650414, 52.802135, 52.770683>,  <40.521107, 52.058155, 52.905735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650414, 52.802135, 52.770683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403809, 52.788193, 53.085312>,  <40.255844, 52.779827, 53.274090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403809, 52.788193, 53.085312>,  <40.650414, 52.802135, 52.770683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403809, 52.788193, 53.085312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602965, 0.621522, 0.500143,
		-0.506307, 0.782621, -0.362158,
		-0.616511, -0.034857, 0.786574,
		40.218857, 52.777737, 53.321285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334270, 53.455750, 53.021889>,  <40.650414, 52.802135, 52.770683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334270, 53.455750, 53.021889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457222, 53.157391, 53.258247>,  <40.530994, 52.978374, 53.400063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457222, 53.157391, 53.258247>,  <40.334270, 53.455750, 53.021889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457222, 53.157391, 53.258247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760073, 0.566063, 0.319159,
		-0.572544, 0.351023, 0.740929,
		0.307380, -0.745893, 0.590899,
		40.549435, 52.933624, 53.435516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339203, 53.650032, 53.720448>,  <40.334270, 53.455750, 53.021889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339203, 53.650032, 53.720448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602863, 53.352951, 53.673260>,  <40.761059, 53.174702, 53.644947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602863, 53.352951, 53.673260>,  <40.339203, 53.650032, 53.720448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602863, 53.352951, 53.673260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706520, 0.557877, 0.435433,
		-0.257582, -0.370366, 0.892458,
		0.659151, -0.742699, -0.117972,
		40.800610, 53.130142, 53.637867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815918, 53.350964, 54.297657>,  <40.339203, 53.650032, 53.720448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815918, 53.350964, 54.297657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004635, 53.333244, 53.945419>,  <41.117863, 53.322613, 53.734077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004635, 53.333244, 53.945419>,  <40.815918, 53.350964, 54.297657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004635, 53.333244, 53.945419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572453, 0.775001, 0.267713,
		0.670606, -0.630406, 0.390995,
		0.471790, -0.044297, -0.880598,
		41.146172, 53.319954, 53.681240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516464, 53.150558, 54.378948>,  <40.815918, 53.350964, 54.297657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516464, 53.150558, 54.378948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561092, 53.355110, 54.038116>,  <41.587868, 53.477840, 53.833618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561092, 53.355110, 54.038116>,  <41.516464, 53.150558, 54.378948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561092, 53.355110, 54.038116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672857, 0.592120, 0.443461,
		0.731311, -0.622806, -0.278023,
		0.111567, 0.511378, -0.852083,
		41.594563, 53.508522, 53.782490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183445, 53.063370, 54.263569>,  <41.516464, 53.150558, 54.378948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183445, 53.063370, 54.263569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013836, 53.388474, 54.103752>,  <41.912071, 53.583534, 54.007862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013836, 53.388474, 54.103752>,  <42.183445, 53.063370, 54.263569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013836, 53.388474, 54.103752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619142, 0.582117, 0.527071,
		0.660958, -0.023881, -0.750043,
		-0.424026, 0.812755, -0.399540,
		41.886627, 53.632301, 53.983891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890888, 53.369240, 54.078041>,  <42.183445, 53.063370, 54.263569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890888, 53.369240, 54.078041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214943, 53.340771, 54.310806>,  <43.409374, 53.323689, 54.450466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214943, 53.340771, 54.310806>,  <42.890888, 53.369240, 54.078041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214943, 53.340771, 54.310806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493843, 0.617746, -0.611972,
		-0.315919, 0.783151, 0.535602,
		0.810132, -0.071170, 0.581911,
		43.457981, 53.319420, 54.485378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300407, 54.098778, 54.122002>,  <42.890888, 53.369240, 54.078041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300407, 54.098778, 54.122002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552967, 53.800980, 54.208782>,  <43.704502, 53.622303, 54.260853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552967, 53.800980, 54.208782>,  <43.300407, 54.098778, 54.122002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552967, 53.800980, 54.208782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762544, 0.545238, -0.348200,
		0.140939, 0.385290, 0.911969,
		0.631398, -0.744491, 0.216956,
		43.742386, 53.577633, 54.273869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835537, 54.348392, 54.311508>,  <43.300407, 54.098778, 54.122002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835537, 54.348392, 54.311508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005409, 53.989037, 54.266701>,  <44.107334, 53.773422, 54.239815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005409, 53.989037, 54.266701>,  <43.835537, 54.348392, 54.311508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005409, 53.989037, 54.266701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898057, 0.433693, -0.073517,
		0.114630, -0.069380, 0.990983,
		0.424682, -0.898386, -0.112021,
		44.132812, 53.719521, 54.233093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363510, 54.231220, 54.931305>,  <43.835537, 54.348392, 54.311508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363510, 54.231220, 54.931305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525429, 54.027733, 54.627373>,  <44.622581, 53.905640, 54.445011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525429, 54.027733, 54.627373>,  <44.363510, 54.231220, 54.931305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525429, 54.027733, 54.627373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821490, 0.567282, 0.057842,
		0.401614, -0.647609, 0.647541,
		0.404797, -0.508718, -0.759832,
		44.646870, 53.875118, 54.399422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118725, 54.101311, 55.093784>,  <44.363510, 54.231220, 54.931305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118725, 54.101311, 55.093784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063938, 54.130150, 54.698605>,  <45.031067, 54.147453, 54.461498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063938, 54.130150, 54.698605>,  <45.118725, 54.101311, 55.093784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063938, 54.130150, 54.698605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848442, 0.523294, -0.079433,
		0.511260, -0.849097, -0.132845,
		-0.136963, 0.072100, -0.987949,
		45.022850, 54.151779, 54.402222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.643295, 53.712597, 54.819324>,  <45.118725, 54.101311, 55.093784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.643295, 53.712597, 54.819324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537357, 54.020115, 54.586491>,  <45.473793, 54.204624, 54.446793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537357, 54.020115, 54.586491>,  <45.643295, 53.712597, 54.819324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537357, 54.020115, 54.586491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922641, 0.377521, 0.078813,
		0.280338, -0.516177, -0.809303,
		-0.264848, 0.768791, -0.582080,
		45.457905, 54.250751, 54.411865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195763, 53.831951, 54.301651>,  <45.643295, 53.712597, 54.819324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195763, 53.831951, 54.301651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991245, 54.165787, 54.383675>,  <45.868534, 54.366089, 54.432888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991245, 54.165787, 54.383675>,  <46.195763, 53.831951, 54.301651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991245, 54.165787, 54.383675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822091, 0.544512, -0.166355,
		-0.250493, 0.083518, -0.964509,
		-0.511293, 0.834585, 0.205056,
		45.837856, 54.416161, 54.445190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.388962, 54.395206, 53.691887>,  <46.195763, 53.831951, 54.301651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.388962, 54.395206, 53.691887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.342106, 54.485107, 54.078827>,  <46.313992, 54.539047, 54.310989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.342106, 54.485107, 54.078827>,  <46.388962, 54.395206, 53.691887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.342106, 54.485107, 54.078827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831079, 0.555428, -0.028411,
		-0.543678, 0.800617, -0.251847,
		-0.117136, 0.224751, 0.967350,
		46.306965, 54.552532, 54.369034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.423134, 55.179173, 53.893108>,  <46.388962, 54.395206, 53.691887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.423134, 55.179173, 53.893108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.526440, 54.947594, 54.202461>,  <46.588425, 54.808647, 54.388073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.526440, 54.947594, 54.202461>,  <46.423134, 55.179173, 53.893108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.526440, 54.947594, 54.202461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848122, 0.519202, 0.105443,
		-0.462588, 0.628692, 0.625107,
		0.258266, -0.578944, 0.773384,
		46.603920, 54.773911, 54.434475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.644753, 55.645145, 54.506252>,  <46.423134, 55.179173, 53.893108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.644753, 55.645145, 54.506252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785717, 55.271580, 54.530296>,  <46.870296, 55.047440, 54.544724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785717, 55.271580, 54.530296>,  <46.644753, 55.645145, 54.506252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.785717, 55.271580, 54.530296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931949, 0.356077, 0.068417,
		-0.085299, 0.031908, 0.995844,
		0.352414, -0.933912, 0.060110,
		46.891441, 54.991405, 54.548328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.138466, 55.565872, 55.098488>,  <46.644753, 55.645145, 54.506252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.138466, 55.565872, 55.098488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.222713, 55.290783, 54.820587>,  <47.273262, 55.125729, 54.653847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.222713, 55.290783, 54.820587>,  <47.138466, 55.565872, 55.098488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.222713, 55.290783, 54.820587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977145, 0.127184, 0.170327,
		-0.028776, -0.714747, 0.698791,
		0.210616, -0.687722, -0.694752,
		47.285896, 55.084465, 54.612160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.600208, 55.027817, 55.435394>,  <47.138466, 55.565872, 55.098488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.600208, 55.027817, 55.435394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669960, 55.004097, 55.042236>,  <47.711811, 54.989864, 54.806343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669960, 55.004097, 55.042236>,  <47.600208, 55.027817, 55.435394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.669960, 55.004097, 55.042236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982472, -0.056308, 0.177703,
		-0.065882, -0.996651, 0.048443,
		0.174380, -0.059302, -0.982891,
		47.722275, 54.986305, 54.747368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.235069, 54.737259, 55.366070>,  <47.600208, 55.027817, 55.435394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.235069, 54.737259, 55.366070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.339138, 54.880508, 55.007393>,  <48.401581, 54.966457, 54.792187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.339138, 54.880508, 55.007393>,  <48.235069, 54.737259, 55.366070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.339138, 54.880508, 55.007393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838593, 0.376521, 0.393692,
		0.478614, -0.854388, -0.202359,
		0.260173, 0.358123, -0.896693,
		48.417191, 54.987946, 54.738384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.979195, 54.559505, 55.219391>,  <48.235069, 54.737259, 55.366070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.979195, 54.559505, 55.219391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.890137, 54.909306, 55.047028>,  <48.836704, 55.119186, 54.943611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.890137, 54.909306, 55.047028>,  <48.979195, 54.559505, 55.219391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.890137, 54.909306, 55.047028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782578, 0.423899, 0.455940,
		0.581380, -0.235705, -0.778743,
		-0.222641, 0.874501, -0.430904,
		48.823345, 55.171658, 54.917755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.469837, 54.825256, 54.844166>,  <48.979195, 54.559505, 55.219391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.469837, 54.825256, 54.844166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.286221, 55.149818, 54.988892>,  <49.176052, 55.344555, 55.075726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.286221, 55.149818, 54.988892>,  <49.469837, 54.825256, 54.844166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.286221, 55.149818, 54.988892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862799, 0.310068, 0.399295,
		0.211801, 0.495466, -0.842410,
		-0.459041, 0.811401, 0.361814,
		49.148510, 55.393238, 55.097435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.615074, 55.555595, 54.499062>,  <49.469837, 54.825256, 54.844166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.615074, 55.555595, 54.499062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.564754, 55.538300, 54.895508>,  <49.534565, 55.527924, 55.133373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.564754, 55.538300, 54.895508>,  <49.615074, 55.555595, 54.499062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.564754, 55.538300, 54.895508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963780, 0.231499, 0.132424,
		-0.235168, 0.971874, 0.012549,
		-0.125795, -0.043236, 0.991114,
		49.527016, 55.525330, 55.192841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.123039, 55.402748, 55.004395>,  <49.615074, 55.555595, 54.499062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.123039, 55.402748, 55.004395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.472549, 55.372467, 54.812233>,  <50.682255, 55.354298, 54.696934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.472549, 55.372467, 54.812233>,  <50.123039, 55.402748, 55.004395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.472549, 55.372467, 54.812233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406055, -0.430092, 0.806313,
		-0.267656, -0.899606, -0.345065,
		0.873773, -0.075699, -0.480406,
		50.734680, 55.349758, 54.668110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.255886, 54.745964, 54.815136>,  <50.123039, 55.402748, 55.004395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.255886, 54.745964, 54.815136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.600845, 54.937950, 54.879524>,  <50.807819, 55.053143, 54.918156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.600845, 54.937950, 54.879524>,  <50.255886, 54.745964, 54.815136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.600845, 54.937950, 54.879524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198173, -0.612668, 0.765092,
		0.465837, -0.627911, -0.623477,
		0.862394, 0.479965, 0.160968,
		50.859562, 55.081940, 54.927814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.902809, 54.277676, 54.954117>,  <50.255886, 54.745964, 54.815136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.902809, 54.277676, 54.954117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.955627, 54.631287, 55.133476>,  <50.987320, 54.843452, 55.241093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.955627, 54.631287, 55.133476>,  <50.902809, 54.277676, 54.954117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.955627, 54.631287, 55.133476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195161, -0.466696, 0.862616,
		0.971841, -0.026396, -0.234153,
		0.132048, 0.884024, 0.448403,
		50.995243, 54.896492, 55.267998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.589828, 54.432270, 55.208416>,  <50.902809, 54.277676, 54.954117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.589828, 54.432270, 55.208416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.329288, 54.617142, 55.449127>,  <51.172966, 54.728065, 55.593552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.329288, 54.617142, 55.449127>,  <51.589828, 54.432270, 55.208416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.329288, 54.617142, 55.449127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351797, -0.518748, 0.779192,
		0.672296, 0.719229, 0.175292,
		-0.651350, 0.462181, 0.601775,
		51.133884, 54.755795, 55.629658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.996181, 54.615574, 55.700932>,  <51.589828, 54.432270, 55.208416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.996181, 54.615574, 55.700932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.629364, 54.622559, 55.860291>,  <51.409271, 54.626751, 55.955906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.629364, 54.622559, 55.860291>,  <51.996181, 54.615574, 55.700932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.629364, 54.622559, 55.860291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373631, -0.311538, 0.873695,
		0.139373, 0.950073, 0.279170,
		-0.917047, 0.017463, 0.398397,
		51.354252, 54.627796, 55.979809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.977459, 54.923134, 56.391087>,  <51.996181, 54.615574, 55.700932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.977459, 54.923134, 56.391087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.656982, 54.684410, 56.373589>,  <51.464695, 54.541176, 56.363091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.656982, 54.684410, 56.373589>,  <51.977459, 54.923134, 56.391087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.656982, 54.684410, 56.373589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299645, -0.463392, 0.833955,
		-0.517983, 0.655048, 0.550096,
		-0.801191, -0.596808, -0.043747,
		51.416626, 54.505367, 56.360466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.895836, 54.737423, 57.057178>,  <51.977459, 54.923134, 56.391087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.895836, 54.737423, 57.057178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.707371, 54.440151, 56.867149>,  <51.594292, 54.261787, 56.753132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.707371, 54.440151, 56.867149>,  <51.895836, 54.737423, 57.057178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.707371, 54.440151, 56.867149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309502, -0.643653, 0.699943,
		-0.825961, 0.182755, 0.533282,
		-0.471166, -0.743177, -0.475069,
		51.566021, 54.217197, 56.724628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.617817, 54.381477, 57.638546>,  <51.895836, 54.737423, 57.057178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.617817, 54.381477, 57.638546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.685772, 54.139809, 57.327133>,  <51.726543, 53.994808, 57.140285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.685772, 54.139809, 57.327133>,  <51.617817, 54.381477, 57.638546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.685772, 54.139809, 57.327133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169596, -0.760303, 0.627037,
		-0.970761, -0.238560, -0.026699,
		0.169886, -0.604175, -0.778532,
		51.736736, 53.958557, 57.093575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.442379, 53.724117, 57.838852>,  <51.617817, 54.381477, 57.638546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.442379, 53.724117, 57.838852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.690128, 53.624294, 57.541100>,  <51.838776, 53.564400, 57.362450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.690128, 53.624294, 57.541100>,  <51.442379, 53.724117, 57.838852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.690128, 53.624294, 57.541100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443899, -0.670720, 0.594213,
		-0.647560, -0.698467, -0.304646,
		0.619370, -0.249556, -0.744380,
		51.875938, 53.549427, 57.317787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.544693, 52.966282, 57.627625>,  <51.442379, 53.724117, 57.838852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.544693, 52.966282, 57.627625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.904415, 53.136848, 57.588814>,  <52.120251, 53.239189, 57.565529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.904415, 53.136848, 57.588814>,  <51.544693, 52.966282, 57.627625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.904415, 53.136848, 57.588814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414988, -0.762138, 0.496922,
		0.137949, -0.487150, -0.862355,
		0.899308, 0.426417, -0.097026,
		52.174206, 53.264774, 57.559708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.964172, 52.519505, 57.183640>,  <51.544693, 52.966282, 57.627625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.964172, 52.519505, 57.183640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.183205, 52.740562, 57.434952>,  <52.314625, 52.873196, 57.585739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.183205, 52.740562, 57.434952>,  <51.964172, 52.519505, 57.183640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.183205, 52.740562, 57.434952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351874, -0.833327, 0.426324,
		0.759169, -0.012372, -0.650777,
		0.547584, 0.552643, 0.628282,
		52.347481, 52.906357, 57.623436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.625320, 52.179436, 57.277119>,  <51.964172, 52.519505, 57.183640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.625320, 52.179436, 57.277119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.542168, 52.407444, 57.595078>,  <52.492275, 52.544247, 57.785854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.542168, 52.407444, 57.595078>,  <52.625320, 52.179436, 57.277119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.542168, 52.407444, 57.595078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330125, -0.724086, 0.605571,
		0.920762, 0.388304, -0.037652,
		-0.207882, 0.570017, 0.794900,
		52.479801, 52.578449, 57.833546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.335499, 52.101849, 57.131409>,  <52.625320, 52.179436, 57.277119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.335499, 52.101849, 57.131409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.021004, 51.883179, 57.246628>,  <52.832306, 51.751976, 57.315762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.021004, 51.883179, 57.246628>,  <53.335499, 52.101849, 57.131409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.021004, 51.883179, 57.246628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600062, -0.564224, 0.567077,
		-0.147480, 0.618709, 0.771654,
		-0.786241, -0.546672, 0.288052,
		52.785130, 51.719177, 57.333042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.287888, 52.108990, 57.902256>,  <53.335499, 52.101849, 57.131409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.287888, 52.108990, 57.902256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.164906, 51.792004, 57.691551>,  <53.091118, 51.601814, 57.565128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.164906, 51.792004, 57.691551>,  <53.287888, 52.108990, 57.902256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.164906, 51.792004, 57.691551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743132, -0.545714, 0.387235,
		-0.594331, -0.272398, 0.756684,
		-0.307451, -0.792462, -0.526762,
		53.072670, 51.554264, 57.533524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.023243, 51.513386, 58.298042>,  <53.287888, 52.108990, 57.902256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.023243, 51.513386, 58.298042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.194939, 51.382946, 57.961136>,  <53.297955, 51.304684, 57.758991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.194939, 51.382946, 57.961136>,  <53.023243, 51.513386, 58.298042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.194939, 51.382946, 57.961136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697945, -0.472133, 0.538483,
		-0.573261, -0.818993, 0.024943,
		0.429237, -0.326100, -0.842267,
		53.323711, 51.285114, 57.708454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.523144, 51.010967, 58.500889>,  <53.023243, 51.513386, 58.298042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.523144, 51.010967, 58.500889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.644653, 51.110100, 58.132912>,  <53.717560, 51.169579, 57.912125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.644653, 51.110100, 58.132912>,  <53.523144, 51.010967, 58.500889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.644653, 51.110100, 58.132912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949121, -0.162858, 0.269530,
		-0.083021, -0.955016, -0.284697,
		0.303770, 0.247835, -0.919946,
		53.735783, 51.184452, 57.856926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.991795, 50.542194, 58.393734>,  <53.523144, 51.010967, 58.500889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.991795, 50.542194, 58.393734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.091248, 50.843811, 58.150551>,  <54.150917, 51.024780, 58.004642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.091248, 50.843811, 58.150551>,  <53.991795, 50.542194, 58.393734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.091248, 50.843811, 58.150551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966742, -0.232023, 0.107584,
		-0.059938, -0.614486, -0.786647,
		0.248630, 0.754037, -0.607957,
		54.165836, 51.070023, 57.968163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.445263, 50.379452, 57.677605>,  <53.991795, 50.542194, 58.393734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.445263, 50.379452, 57.677605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.507370, 50.761776, 57.777466>,  <54.544636, 50.991169, 57.837383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.507370, 50.761776, 57.777466>,  <54.445263, 50.379452, 57.677605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.507370, 50.761776, 57.777466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986719, -0.162262, 0.007538,
		0.047714, 0.245162, -0.968307,
		0.155271, 0.955807, 0.249649,
		54.553951, 51.048519, 57.852360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.906853, 50.763924, 57.144718>,  <54.445263, 50.379452, 57.677605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.906853, 50.763924, 57.144718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.928360, 50.842625, 57.536308>,  <54.941265, 50.889843, 57.771263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.928360, 50.842625, 57.536308>,  <54.906853, 50.763924, 57.144718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.928360, 50.842625, 57.536308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985512, -0.168390, -0.020281,
		0.160860, 0.965886, -0.202951,
		0.053764, 0.196748, 0.978979,
		54.944489, 50.901649, 57.830002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.560543, 51.089115, 56.983829>,  <54.906853, 50.763924, 57.144718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.560543, 51.089115, 56.983829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.855400, 50.841370, 57.091911>,  <56.032314, 50.692722, 57.156761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.855400, 50.841370, 57.091911>,  <55.560543, 51.089115, 56.983829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.855400, 50.841370, 57.091911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285315, 0.647749, 0.706411,
		-0.612545, -0.443636, 0.654199,
		0.737146, -0.619361, 0.270200,
		56.076546, 50.655560, 57.172970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.514744, 50.941654, 57.740616>,  <55.560543, 51.089115, 56.983829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.514744, 50.941654, 57.740616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.894684, 50.925705, 57.616562>,  <56.122650, 50.916134, 57.542130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.894684, 50.925705, 57.616562>,  <55.514744, 50.941654, 57.740616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.894684, 50.925705, 57.616562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226804, 0.770644, 0.595540,
		0.215259, -0.636017, 0.741044,
		0.949854, -0.039876, -0.310139,
		56.179642, 50.913742, 57.523521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.202126, 50.677059, 58.174492>,  <55.514744, 50.941654, 57.740616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.202126, 50.677059, 58.174492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.192802, 50.995625, 57.932770>,  <56.187210, 51.186764, 57.787739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.192802, 50.995625, 57.932770>,  <56.202126, 50.677059, 58.174492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.192802, 50.995625, 57.932770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134802, 0.601451, 0.787455,
		0.990598, -0.063106, -0.121377,
		-0.023310, 0.796414, -0.604303,
		56.185810, 51.234550, 57.751480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.856319, 51.109764, 58.256855>,  <56.202126, 50.677059, 58.174492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.856319, 51.109764, 58.256855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.560722, 51.350315, 58.135376>,  <56.383362, 51.494644, 58.062489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.560722, 51.350315, 58.135376>,  <56.856319, 51.109764, 58.256855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.560722, 51.350315, 58.135376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241924, 0.657590, 0.713476,
		0.628775, 0.453785, -0.631444,
		-0.738996, 0.601377, -0.303694,
		56.339024, 51.530727, 58.044266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.194603, 51.734592, 58.279232>,  <56.856319, 51.109764, 58.256855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.194603, 51.734592, 58.279232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.096100, 51.512196, 58.596779>,  <57.036999, 51.378757, 58.787308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.096100, 51.512196, 58.596779>,  <57.194603, 51.734592, 58.279232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.096100, 51.512196, 58.596779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960944, -0.033353, 0.274727,
		-0.126268, 0.830518, 0.542490,
		-0.246259, -0.555992, 0.793870,
		57.022221, 51.345398, 58.834938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.297474, 52.064484, 58.932014>,  <57.194603, 51.734592, 58.279232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.297474, 52.064484, 58.932014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.327133, 51.666931, 58.964767>,  <57.344929, 51.428398, 58.984421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.327133, 51.666931, 58.964767>,  <57.297474, 52.064484, 58.932014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.327133, 51.666931, 58.964767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971712, 0.090465, 0.218154,
		-0.224227, 0.063396, 0.972473,
		0.074145, -0.993880, 0.081887,
		57.349377, 51.368767, 58.989334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.503445, 51.825459, 59.551140>,  <57.297474, 52.064484, 58.932014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.503445, 51.825459, 59.551140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.653198, 51.582272, 59.271080>,  <57.743050, 51.436359, 59.103043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.653198, 51.582272, 59.271080>,  <57.503445, 51.825459, 59.551140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.653198, 51.582272, 59.271080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922182, 0.165093, 0.349750,
		-0.097046, -0.776609, 0.622464,
		0.374383, -0.607966, -0.700153,
		57.765514, 51.399883, 59.061035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.980572, 51.244091, 59.932938>,  <57.503445, 51.825459, 59.551140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.980572, 51.244091, 59.932938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.107224, 51.396027, 59.585266>,  <58.183216, 51.487190, 59.376663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.107224, 51.396027, 59.585266>,  <57.980572, 51.244091, 59.932938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.107224, 51.396027, 59.585266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907474, 0.145423, 0.394135,
		0.276107, -0.913549, -0.298652,
		0.316631, 0.379843, -0.869174,
		58.202213, 51.509979, 59.324512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.744316, 51.192028, 59.937351>,  <57.980572, 51.244091, 59.932938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.744316, 51.192028, 59.937351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.693054, 51.442528, 59.629745>,  <58.662296, 51.592827, 59.445183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.693054, 51.442528, 59.629745>,  <58.744316, 51.192028, 59.937351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.693054, 51.442528, 59.629745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861613, 0.454292, 0.226367,
		0.491121, -0.633585, -0.597804,
		-0.128155, 0.626249, -0.769018,
		58.654606, 51.630402, 59.399040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.312958, 51.277180, 59.572308>,  <58.744316, 51.192028, 59.937351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.312958, 51.277180, 59.572308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.170815, 51.626144, 59.438072>,  <59.085529, 51.835522, 59.357529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.170815, 51.626144, 59.438072>,  <59.312958, 51.277180, 59.572308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.170815, 51.626144, 59.438072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861870, 0.444780, 0.243621,
		0.361803, -0.202665, -0.909959,
		-0.355358, 0.872409, -0.335593,
		59.064205, 51.887867, 59.337395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.622444, 51.556328, 58.922188>,  <59.312958, 51.277180, 59.572308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.622444, 51.556328, 58.922188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.521988, 51.875179, 59.141830>,  <59.461716, 52.066490, 59.273617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.521988, 51.875179, 59.141830>,  <59.622444, 51.556328, 58.922188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.521988, 51.875179, 59.141830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963222, 0.261814, 0.060465,
		-0.095564, 0.544092, -0.833565,
		-0.251137, 0.797130, 0.549102,
		59.446648, 52.114319, 59.306561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.192265, 51.899677, 58.819363>,  <59.622444, 51.556328, 58.922188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.192265, 51.899677, 58.819363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.981781, 52.113480, 59.083908>,  <59.855492, 52.241760, 59.242638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.981781, 52.113480, 59.083908>,  <60.192265, 51.899677, 58.819363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.981781, 52.113480, 59.083908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811977, 0.546844, 0.204098,
		-0.252574, 0.644415, -0.721759,
		-0.526213, 0.534501, 0.661368,
		59.823917, 52.273830, 59.282318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.892460, 52.207596, 58.882057>,  <60.192265, 51.899677, 58.819363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.892460, 52.207596, 58.882057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.908936, 52.017086, 59.233391>,  <60.918823, 51.902782, 59.444191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.908936, 52.017086, 59.233391>,  <60.892460, 52.207596, 58.882057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.908936, 52.017086, 59.233391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064780, 0.875956, 0.478021,
		-0.997049, -0.076589, 0.005230,
		0.041192, -0.476271, 0.878333,
		60.921295, 51.874203, 59.496891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.410938, 52.582012, 59.348759>,  <60.892460, 52.207596, 58.882057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.410938, 52.582012, 59.348759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.695244, 52.369110, 59.532722>,  <60.865829, 52.241371, 59.643101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.695244, 52.369110, 59.532722>,  <60.410938, 52.582012, 59.348759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.695244, 52.369110, 59.532722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213532, 0.786220, 0.579881,
		-0.670234, -0.313955, 0.672473,
		0.710768, -0.532251, 0.459911,
		60.908474, 52.209435, 59.670696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.370930, 52.576389, 60.127842>,  <60.410938, 52.582012, 59.348759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.370930, 52.576389, 60.127842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.755127, 52.542061, 60.021942>,  <60.985645, 52.521465, 59.958401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.755127, 52.542061, 60.021942>,  <60.370930, 52.576389, 60.127842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.755127, 52.542061, 60.021942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240425, 0.735046, 0.633959,
		0.140199, -0.672564, 0.726637,
		0.960489, -0.085821, -0.264754,
		61.043274, 52.516315, 59.942516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.904572, 52.455639, 60.695690>,  <60.370930, 52.576389, 60.127842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.904572, 52.455639, 60.695690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.060654, 52.667957, 60.394760>,  <61.154305, 52.795349, 60.214203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.060654, 52.667957, 60.394760>,  <60.904572, 52.455639, 60.695690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.060654, 52.667957, 60.394760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159337, 0.765841, 0.622976,
		0.906835, -0.362963, 0.214261,
		0.390208, 0.530797, -0.752325,
		61.177715, 52.827198, 60.169064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.482868, 52.755352, 60.932766>,  <60.904572, 52.455639, 60.695690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.482868, 52.755352, 60.932766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.363113, 53.028381, 60.666092>,  <61.291260, 53.192200, 60.506088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.363113, 53.028381, 60.666092>,  <61.482868, 52.755352, 60.932766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.363113, 53.028381, 60.666092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086952, 0.676306, 0.731471,
		0.950161, 0.276963, -0.143127,
		-0.299388, 0.682570, -0.666682,
		61.273296, 53.233154, 60.466087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.790325, 53.361923, 61.081791>,  <61.482868, 52.755352, 60.932766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.790325, 53.361923, 61.081791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.503777, 53.508705, 60.844421>,  <61.331848, 53.596775, 60.702000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.503777, 53.508705, 60.844421>,  <61.790325, 53.361923, 61.081791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.503777, 53.508705, 60.844421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077140, 0.803658, 0.590071,
		0.693441, 0.468488, -0.547411,
		-0.716372, 0.366952, -0.593428,
		61.288864, 53.618790, 60.666393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.335808, 53.093952, 61.578465>,  <61.790325, 53.361923, 61.081791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.335808, 53.093952, 61.578465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.691612, 53.147930, 61.753075>,  <62.905094, 53.180317, 61.857841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.691612, 53.147930, 61.753075>,  <62.335808, 53.093952, 61.578465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.691612, 53.147930, 61.753075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456723, -0.289548, -0.841169,
		0.012887, 0.947604, -0.319188,
		0.889515, 0.134941, 0.436524,
		62.958466, 53.188412, 61.884033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.735439, 53.264881, 61.131336>,  <62.335808, 53.093952, 61.578465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.735439, 53.264881, 61.131336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.002159, 53.134045, 61.399185>,  <63.162189, 53.055542, 61.559895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.002159, 53.134045, 61.399185>,  <62.735439, 53.264881, 61.131336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.002159, 53.134045, 61.399185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530939, -0.422019, -0.734850,
		0.522954, 0.845525, -0.107738,
		0.666801, -0.327090, 0.669618,
		63.202198, 53.035919, 61.600071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.370605, 53.646427, 61.152130>,  <62.735439, 53.264881, 61.131336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.370605, 53.646427, 61.152130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.440704, 53.270340, 61.268936>,  <63.482765, 53.044685, 61.339020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.440704, 53.270340, 61.268936>,  <63.370605, 53.646427, 61.152130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.440704, 53.270340, 61.268936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556151, -0.150204, -0.817395,
		0.812394, 0.305651, 0.496582,
		0.175249, -0.940222, 0.292013,
		63.493279, 52.988274, 61.356541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.091553, 53.475712, 61.077106>,  <63.370605, 53.646427, 61.152130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.091553, 53.475712, 61.077106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.847984, 53.158970, 61.058380>,  <63.701843, 52.968925, 61.047142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.847984, 53.158970, 61.058380>,  <64.091553, 53.475712, 61.077106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.847984, 53.158970, 61.058380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308365, -0.181919, -0.933711,
		0.730846, -0.582986, 0.354953,
		-0.608913, -0.791854, -0.046818,
		63.665310, 52.921413, 61.044334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.451172, 52.790878, 61.025703>,  <64.091553, 53.475712, 61.077106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.451172, 52.790878, 61.025703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.091652, 52.801163, 60.850670>,  <63.875938, 52.807335, 60.745647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.091652, 52.801163, 60.850670>,  <64.451172, 52.790878, 61.025703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.091652, 52.801163, 60.850670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436199, -0.046148, -0.898666,
		-0.043269, -0.998604, 0.030278,
		-0.898809, 0.025677, -0.437587,
		63.822010, 52.808876, 60.719395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.407532, 52.202297, 60.572514>,  <64.451172, 52.790878, 61.025703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.407532, 52.202297, 60.572514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.208084, 52.537880, 60.485306>,  <64.088417, 52.739231, 60.432980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.208084, 52.537880, 60.485306>,  <64.407532, 52.202297, 60.572514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.208084, 52.537880, 60.485306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601196, 0.153509, -0.784219,
		-0.624457, -0.522098, -0.580919,
		-0.498615, 0.838957, -0.218023,
		64.058502, 52.789566, 60.419899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.199181, 52.420101, 60.619926>,  <64.407532, 52.202297, 60.572514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.199181, 52.420101, 60.619926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.308868, 52.731335, 60.393867>,  <65.374680, 52.918076, 60.258232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.308868, 52.731335, 60.393867>,  <65.199181, 52.420101, 60.619926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.308868, 52.731335, 60.393867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919923, -0.040964, 0.389952,
		0.280263, -0.626827, -0.727008,
		0.274214, 0.778081, -0.565152,
		65.391136, 52.964760, 60.224323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.896118, 52.306080, 60.339493>,  <65.199181, 52.420101, 60.619926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.896118, 52.306080, 60.339493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.789520, 52.687786, 60.393700>,  <65.725563, 52.916809, 60.426224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.789520, 52.687786, 60.393700>,  <65.896118, 52.306080, 60.339493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.789520, 52.687786, 60.393700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848109, 0.165366, 0.503355,
		0.457923, 0.249072, -0.853387,
		-0.266492, 0.954263, 0.135515,
		65.709572, 52.974064, 60.434353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.366394, 52.696743, 59.885231>,  <65.896118, 52.306080, 60.339493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.366394, 52.696743, 59.885231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.251579, 52.907589, 60.205170>,  <66.182686, 53.034096, 60.397133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.251579, 52.907589, 60.205170>,  <66.366394, 52.696743, 59.885231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.251579, 52.907589, 60.205170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954786, 0.224905, 0.194426,
		-0.077406, 0.819492, -0.567839,
		-0.287040, 0.527115, 0.799849,
		66.165466, 53.065723, 60.445126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.474899, 53.477272, 59.884148>,  <66.366394, 52.696743, 59.885231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.474899, 53.477272, 59.884148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.499580, 53.297897, 60.240822>,  <66.514389, 53.190273, 60.454826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.499580, 53.297897, 60.240822>,  <66.474899, 53.477272, 59.884148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.499580, 53.297897, 60.240822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908634, 0.394922, 0.135726,
		-0.413009, 0.801837, 0.431834,
		0.061711, -0.448435, 0.891683,
		66.518097, 53.163368, 60.508327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.586502, 53.864525, 60.469608>,  <66.474899, 53.477272, 59.884148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.586502, 53.864525, 60.469608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.779396, 53.525543, 60.558395>,  <66.895134, 53.322155, 60.611668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.779396, 53.525543, 60.558395>,  <66.586502, 53.864525, 60.469608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.779396, 53.525543, 60.558395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806506, 0.528402, 0.265216,
		-0.342048, 0.051125, 0.938291,
		0.482236, -0.847454, 0.221972,
		66.924065, 53.271309, 60.624989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.965698, 53.858418, 61.160858>,  <66.586502, 53.864525, 60.469608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.965698, 53.858418, 61.160858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.162270, 53.645493, 60.885139>,  <67.280212, 53.517738, 60.719707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.162270, 53.645493, 60.885139>,  <66.965698, 53.858418, 61.160858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.162270, 53.645493, 60.885139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848369, 0.471517, 0.240710,
		0.196884, -0.703074, 0.683318,
		0.491433, -0.532314, -0.689301,
		67.309700, 53.485798, 60.678349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.662979, 54.141094, 61.365940>,  <66.965698, 53.858418, 61.160858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.662979, 54.141094, 61.365940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.675964, 53.991478, 60.995201>,  <67.683754, 53.901707, 60.772758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.675964, 53.991478, 60.995201>,  <67.662979, 54.141094, 61.365940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.675964, 53.991478, 60.995201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782977, 0.585882, -0.209016,
		0.621202, -0.718912, 0.311886,
		0.032464, -0.374041, -0.926844,
		67.685707, 53.879265, 60.717148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.307648, 53.905392, 61.285866>,  <67.662979, 54.141094, 61.365940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.307648, 53.905392, 61.285866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.174942, 53.998749, 60.920250>,  <68.095322, 54.054764, 60.700882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.174942, 53.998749, 60.920250>,  <68.307648, 53.905392, 61.285866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.174942, 53.998749, 60.920250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701354, 0.709011, -0.073530,
		0.630901, -0.665457, -0.398912,
		-0.331764, 0.233389, -0.914037,
		68.075417, 54.068764, 60.646038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.834946, 53.890961, 60.778797>,  <68.307648, 53.905392, 61.285866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.834946, 53.890961, 60.778797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.586136, 54.162498, 60.622711>,  <68.436852, 54.325420, 60.529060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.586136, 54.162498, 60.622711>,  <68.834946, 53.890961, 60.778797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.586136, 54.162498, 60.622711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712828, 0.697151, 0.076528,
		0.323988, -0.230553, -0.917539,
		-0.622019, 0.678841, -0.390213,
		68.399529, 54.366150, 60.505646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.073990, 54.112476, 60.074364>,  <68.834946, 53.890961, 60.778797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.073990, 54.112476, 60.074364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.887062, 54.387749, 60.296364>,  <68.774902, 54.552910, 60.429562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.887062, 54.387749, 60.296364>,  <69.073990, 54.112476, 60.074364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.887062, 54.387749, 60.296364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880862, 0.416017, 0.225857,
		-0.075459, 0.594425, -0.800603,
		-0.467319, 0.688178, 0.554999,
		68.746864, 54.594204, 60.462864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.273430, 54.762074, 59.800201>,  <69.073990, 54.112476, 60.074364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.273430, 54.762074, 59.800201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.170319, 54.734196, 60.185677>,  <69.108452, 54.717468, 60.416962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.170319, 54.734196, 60.185677>,  <69.273430, 54.762074, 59.800201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.170319, 54.734196, 60.185677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765486, 0.593862, 0.247708,
		-0.589562, 0.801542, -0.099732,
		-0.257775, -0.069696, 0.963688,
		69.092987, 54.713287, 60.474785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.993690, 55.367542, 59.990253>,  <69.273430, 54.762074, 59.800201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.993690, 55.367542, 59.990253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.202927, 55.151627, 60.254074>,  <69.328468, 55.022076, 60.412365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.202927, 55.151627, 60.254074>,  <68.993690, 55.367542, 59.990253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.202927, 55.151627, 60.254074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692179, 0.720574, 0.040768,
		-0.497260, 0.435200, 0.750556,
		0.523088, -0.539791, 0.659549,
		69.359856, 54.989689, 60.451939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.357689, 55.821041, 60.493698>,  <68.993690, 55.367542, 59.990253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.357689, 55.821041, 60.493698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.592133, 55.496948, 60.492493>,  <69.732796, 55.302494, 60.491768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.592133, 55.496948, 60.492493>,  <69.357689, 55.821041, 60.493698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.592133, 55.496948, 60.492493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800268, 0.579470, -0.154227,
		0.126707, 0.087979, 0.988031,
		0.586103, -0.810231, -0.003016,
		69.767967, 55.253880, 60.491589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.880089, 55.734871, 61.049820>,  <69.357689, 55.821041, 60.493698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.880089, 55.734871, 61.049820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.001503, 55.597824, 60.694183>,  <70.074348, 55.515598, 60.480801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.001503, 55.597824, 60.694183>,  <69.880089, 55.734871, 61.049820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.001503, 55.597824, 60.694183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673836, 0.736910, -0.053931,
		0.673659, -0.582733, 0.454538,
		0.303527, -0.342616, -0.889093,
		70.092560, 55.495041, 60.427456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.501495, 55.294674, 61.105488>,  <69.880089, 55.734871, 61.049820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.501495, 55.294674, 61.105488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.474693, 55.486343, 60.755424>,  <70.458611, 55.601345, 60.545387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.474693, 55.486343, 60.755424>,  <70.501495, 55.294674, 61.105488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.474693, 55.486343, 60.755424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799313, 0.550750, 0.240360,
		0.597168, -0.683423, -0.419909,
		-0.066998, 0.479174, -0.875159,
		70.454597, 55.630096, 60.492878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.093727, 55.210407, 60.691769>,  <70.501495, 55.294674, 61.105488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.093727, 55.210407, 60.691769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.934402, 55.558353, 60.575371>,  <70.838806, 55.767120, 60.505531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.934402, 55.558353, 60.575371>,  <71.093727, 55.210407, 60.691769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.934402, 55.558353, 60.575371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866957, 0.460628, 0.190283,
		0.299562, -0.176488, -0.937611,
		-0.398307, 0.869870, -0.290994,
		70.814911, 55.819313, 60.488071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.530113, 55.566238, 60.222553>,  <71.093727, 55.210407, 60.691769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.530113, 55.566238, 60.222553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.319031, 55.815712, 60.453217>,  <71.192383, 55.965397, 60.591614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.319031, 55.815712, 60.453217>,  <71.530113, 55.566238, 60.222553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.319031, 55.815712, 60.453217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828253, 0.528433, 0.186428,
		-0.188453, 0.576000, -0.795430,
		-0.527714, 0.623685, 0.576659,
		71.160713, 56.002819, 60.626213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.278069, 56.205036, 59.882511>,  <71.530113, 55.566238, 60.222553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.278069, 56.205036, 59.882511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.387154, 56.254059, 60.264214>,  <71.452606, 56.283474, 60.493237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.387154, 56.254059, 60.264214>,  <71.278069, 56.205036, 59.882511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.387154, 56.254059, 60.264214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797718, 0.525670, -0.295494,
		-0.537840, 0.841813, 0.045589,
		0.272716, 0.122561, 0.954256,
		71.468971, 56.290829, 60.550491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.236496, 56.909077, 60.064545>,  <71.278069, 56.205036, 59.882511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.236496, 56.909077, 60.064545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.507645, 56.736610, 60.302734>,  <71.670334, 56.633129, 60.445648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.507645, 56.736610, 60.302734>,  <71.236496, 56.909077, 60.064545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.507645, 56.736610, 60.302734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674004, 0.687958, -0.269133,
		-0.293617, 0.583787, 0.756956,
		0.677870, -0.431170, 0.595471,
		71.711006, 56.607258, 60.481377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.648483, 57.421703, 60.383549>,  <71.236496, 56.909077, 60.064545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.648483, 57.421703, 60.383549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.889168, 57.102837, 60.363708>,  <72.033577, 56.911514, 60.351803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.889168, 57.102837, 60.363708>,  <71.648483, 57.421703, 60.383549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.889168, 57.102837, 60.363708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685706, 0.547431, -0.479714,
		0.409567, 0.254640, 0.876022,
		0.601716, -0.797169, -0.049602,
		72.069679, 56.863686, 60.348827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.364861, 57.616108, 60.555614>,  <71.648483, 57.421703, 60.383549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.364861, 57.616108, 60.555614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.433739, 57.278351, 60.352699>,  <72.475067, 57.075695, 60.230949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.433739, 57.278351, 60.352699>,  <72.364861, 57.616108, 60.555614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.433739, 57.278351, 60.352699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799857, 0.420437, -0.428323,
		0.574958, -0.332003, 0.747795,
		0.172196, -0.844397, -0.507289,
		72.485397, 57.025032, 60.200512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.057007, 57.512390, 60.650810>,  <72.364861, 57.616108, 60.555614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.057007, 57.512390, 60.650810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.953217, 57.295341, 60.331253>,  <72.890938, 57.165112, 60.139519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.953217, 57.295341, 60.331253>,  <73.057007, 57.512390, 60.650810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.953217, 57.295341, 60.331253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788227, 0.358972, -0.499837,
		0.558002, -0.759409, 0.334562,
		-0.259482, -0.542621, -0.798894,
		72.875374, 57.132557, 60.091583>
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
