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
	<36.193096, 53.266445, 49.852310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120377, 52.874695, 49.817055>,  <36.076744, 52.639645, 49.795902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120377, 52.874695, 49.817055>,  <36.193096, 53.266445, 49.852310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120377, 52.874695, 49.817055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983206, -0.179583, -0.032485,
		0.015987, -0.092565, 0.995578,
		-0.181796, -0.979378, -0.088139,
		36.065838, 52.580883, 49.790611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810432, 52.923893, 50.112839>,  <36.193096, 53.266445, 49.852310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810432, 52.923893, 50.112839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606098, 52.631649, 49.931618>,  <36.483498, 52.456303, 49.822887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606098, 52.631649, 49.931618>,  <36.810432, 52.923893, 50.112839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606098, 52.631649, 49.931618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843829, -0.526866, -0.101808,
		-0.164315, -0.434304, 0.885653,
		-0.510837, -0.730611, -0.453050,
		36.452847, 52.412464, 49.795704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339989, 52.563587, 50.038452>,  <36.810432, 52.923893, 50.112839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339989, 52.563587, 50.038452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025311, 52.375679, 49.878235>,  <36.836506, 52.262936, 49.782104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025311, 52.375679, 49.878235>,  <37.339989, 52.563587, 50.038452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025311, 52.375679, 49.878235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572584, -0.797779, -0.188934,
		-0.230790, -0.377977, 0.896587,
		-0.786692, -0.469767, -0.400543,
		36.789303, 52.234749, 49.758072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067951, 52.643196, 50.084633>,  <37.339989, 52.563587, 50.038452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067951, 52.643196, 50.084633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358700, 52.911644, 50.026314>,  <38.533150, 53.072712, 49.991322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358700, 52.911644, 50.026314>,  <38.067951, 52.643196, 50.084633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358700, 52.911644, 50.026314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103900, 0.317308, 0.942614,
		0.678868, -0.670011, 0.300372,
		0.726872, 0.671119, -0.145796,
		38.576763, 53.112980, 49.982574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577469, 52.389656, 50.530968>,  <38.067951, 52.643196, 50.084633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577469, 52.389656, 50.530968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579014, 52.776421, 50.428940>,  <38.579941, 53.008480, 50.367722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579014, 52.776421, 50.428940>,  <38.577469, 52.389656, 50.530968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579014, 52.776421, 50.428940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271704, 0.246494, 0.930278,
		0.962373, 0.065714, 0.263666,
		0.003859, 0.966914, -0.255074,
		38.580173, 53.066494, 50.352417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012241, 51.816849, 50.842003>,  <38.577469, 52.389656, 50.530968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012241, 51.816849, 50.842003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220974, 51.676941, 51.153221>,  <39.346214, 51.592995, 51.339951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220974, 51.676941, 51.153221>,  <39.012241, 51.816849, 50.842003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220974, 51.676941, 51.153221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742011, -0.263852, -0.616281,
		0.420846, 0.898911, 0.121848,
		0.521832, -0.349772, 0.778043,
		39.377525, 51.572010, 51.386635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626419, 52.177750, 51.054813>,  <39.012241, 51.816849, 50.842003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626419, 52.177750, 51.054813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642117, 51.780987, 51.103119>,  <39.651535, 51.542931, 51.132103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642117, 51.780987, 51.103119>,  <39.626419, 52.177750, 51.054813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642117, 51.780987, 51.103119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783806, -0.044401, -0.619416,
		0.619764, 0.118963, 0.775719,
		0.039245, -0.991906, 0.120762,
		39.653889, 51.483414, 51.139347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216702, 52.523991, 51.174088>,  <39.626419, 52.177750, 51.054813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216702, 52.523991, 51.174088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510780, 52.697861, 50.966030>,  <40.687225, 52.802185, 50.841198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510780, 52.697861, 50.966030>,  <40.216702, 52.523991, 51.174088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510780, 52.697861, 50.966030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674630, -0.544002, 0.498936,
		-0.066081, -0.717716, -0.693193,
		0.735192, 0.434679, -0.520141,
		40.731339, 52.828266, 50.809986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273361, 51.916676, 51.569496>,  <40.216702, 52.523991, 51.174088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273361, 51.916676, 51.569496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506920, 52.157810, 51.786991>,  <40.647057, 52.302490, 51.917488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506920, 52.157810, 51.786991>,  <40.273361, 51.916676, 51.569496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506920, 52.157810, 51.786991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712019, -0.702026, 0.013724,
		0.389992, 0.379139, -0.839142,
		0.583897, 0.602837, 0.543739,
		40.682087, 52.338661, 51.950111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860703, 51.642979, 51.425446>,  <40.273361, 51.916676, 51.569496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860703, 51.642979, 51.425446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930523, 51.842846, 51.764824>,  <40.972416, 51.962765, 51.968452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930523, 51.842846, 51.764824>,  <40.860703, 51.642979, 51.425446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930523, 51.842846, 51.764824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684352, -0.681098, 0.260322,
		0.707952, 0.535199, -0.460832,
		0.174547, 0.499667, 0.848449,
		40.982887, 51.992744, 52.019360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502792, 51.728725, 51.484821>,  <40.860703, 51.642979, 51.425446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502792, 51.728725, 51.484821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359207, 51.707737, 51.857571>,  <41.273056, 51.695145, 52.081223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359207, 51.707737, 51.857571>,  <41.502792, 51.728725, 51.484821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359207, 51.707737, 51.857571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669205, -0.710449, 0.217775,
		0.650625, 0.701789, 0.290136,
		-0.358959, -0.052471, 0.931877,
		41.251518, 51.691998, 52.137135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228756, 51.663315, 51.146389>,  <41.502792, 51.728725, 51.484821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228756, 51.663315, 51.146389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357536, 51.285267, 51.124123>,  <42.434807, 51.058437, 51.110764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357536, 51.285267, 51.124123>,  <42.228756, 51.663315, 51.146389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357536, 51.285267, 51.124123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924112, 0.300928, 0.235498,
		-0.205822, -0.127263, 0.970279,
		0.321954, -0.945117, -0.055668,
		42.454124, 51.001732, 51.107422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563274, 51.523563, 51.816822>,  <42.228756, 51.663315, 51.146389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563274, 51.523563, 51.816822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679001, 51.286644, 51.516029>,  <42.748436, 51.144493, 51.335552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679001, 51.286644, 51.516029>,  <42.563274, 51.523563, 51.816822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679001, 51.286644, 51.516029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956435, 0.210950, 0.201822,
		0.039092, -0.777614, 0.627526,
		0.289317, -0.592298, -0.751983,
		42.765797, 51.108955, 51.290436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137039, 51.088913, 52.032833>,  <42.563274, 51.523563, 51.816822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137039, 51.088913, 52.032833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200230, 51.120754, 51.639141>,  <43.238144, 51.139858, 51.402927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200230, 51.120754, 51.639141>,  <43.137039, 51.088913, 52.032833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200230, 51.120754, 51.639141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975427, 0.142449, 0.168081,
		0.153583, -0.986596, -0.055145,
		0.157973, 0.079604, -0.984230,
		43.247620, 51.144634, 51.343872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700615, 50.684761, 51.812840>,  <43.137039, 51.088913, 52.032833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700615, 50.684761, 51.812840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680115, 50.972000, 51.535217>,  <43.667816, 51.144344, 51.368645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680115, 50.972000, 51.535217>,  <43.700615, 50.684761, 51.812840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680115, 50.972000, 51.535217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984955, 0.151191, 0.083695,
		0.165036, -0.679324, -0.715040,
		-0.051252, 0.718095, -0.694055,
		43.664738, 51.187428, 51.327000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120003, 50.433922, 51.158047>,  <43.700615, 50.684761, 51.812840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120003, 50.433922, 51.158047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121220, 50.833916, 51.155937>,  <44.121948, 51.073910, 51.154671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121220, 50.833916, 51.155937>,  <44.120003, 50.433922, 51.158047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121220, 50.833916, 51.155937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999499, -0.003205, -0.031495,
		-0.031511, -0.005173, -0.999490,
		0.003041, 0.999982, -0.005272,
		44.122131, 51.133911, 51.154354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422661, 50.850506, 50.589390>,  <44.120003, 50.433922, 51.158047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422661, 50.850506, 50.589390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498928, 51.059875, 50.921577>,  <44.544689, 51.185497, 51.120892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498928, 51.059875, 50.921577>,  <44.422661, 50.850506, 50.589390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498928, 51.059875, 50.921577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981550, -0.089291, -0.169075,
		-0.014344, 0.847384, -0.530787,
		0.190666, 0.523420, 0.830469,
		44.556129, 51.216900, 51.170719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695133, 51.608742, 50.457031>,  <44.422661, 50.850506, 50.589390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695133, 51.608742, 50.457031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.820599, 51.453587, 50.803707>,  <44.895878, 51.360493, 51.011715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.820599, 51.453587, 50.803707>,  <44.695133, 51.608742, 50.457031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820599, 51.453587, 50.803707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948596, 0.168585, -0.267853,
		-0.042214, 0.906157, 0.420830,
		0.313663, -0.387890, 0.866693,
		44.914696, 51.337219, 51.063717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139587, 52.040508, 51.049419>,  <44.695133, 51.608742, 50.457031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139587, 52.040508, 51.049419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217670, 51.651199, 51.001030>,  <45.264523, 51.417614, 50.971996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217670, 51.651199, 51.001030>,  <45.139587, 52.040508, 51.049419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217670, 51.651199, 51.001030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951060, 0.217980, -0.219022,
		0.239537, -0.072293, 0.968192,
		0.195212, -0.973272, -0.120969,
		45.276234, 51.359219, 50.964741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813927, 51.907669, 51.040569>,  <45.139587, 52.040508, 51.049419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813927, 51.907669, 51.040569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740112, 51.524090, 50.954437>,  <45.695824, 51.293941, 50.902760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740112, 51.524090, 50.954437>,  <45.813927, 51.907669, 51.040569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740112, 51.524090, 50.954437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982736, -0.177103, -0.053511,
		0.013179, -0.221484, 0.975075,
		-0.184541, -0.958947, -0.215326,
		45.684750, 51.236404, 50.889839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.254089, 51.559395, 51.503971>,  <45.813927, 51.907669, 51.040569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.254089, 51.559395, 51.503971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158321, 51.357040, 51.172485>,  <46.100861, 51.235630, 50.973595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158321, 51.357040, 51.172485>,  <46.254089, 51.559395, 51.503971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158321, 51.357040, 51.172485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966615, -0.204454, -0.154449,
		-0.091300, -0.838022, 0.537944,
		-0.239417, -0.505884, -0.828711,
		46.086498, 51.205276, 50.923874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582642, 50.875877, 51.504414>,  <46.254089, 51.559395, 51.503971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582642, 50.875877, 51.504414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546555, 50.998920, 51.125523>,  <46.524902, 51.072746, 50.898190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546555, 50.998920, 51.125523>,  <46.582642, 50.875877, 51.504414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546555, 50.998920, 51.125523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991927, -0.057353, -0.113098,
		-0.089116, -0.949782, -0.299952,
		-0.090215, 0.307610, -0.947226,
		46.519489, 51.091202, 50.841354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032448, 50.569542, 50.984745>,  <46.582642, 50.875877, 51.504414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032448, 50.569542, 50.984745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964222, 50.937763, 50.844177>,  <46.923286, 51.158695, 50.759834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964222, 50.937763, 50.844177>,  <47.032448, 50.569542, 50.984745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964222, 50.937763, 50.844177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960979, 0.076579, -0.265811,
		-0.217780, -0.383048, -0.897689,
		-0.170563, 0.920549, -0.351424,
		46.913052, 51.213928, 50.738750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.290493, 50.717075, 50.287964>,  <47.032448, 50.569542, 50.984745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.290493, 50.717075, 50.287964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269722, 51.080521, 50.453728>,  <47.257259, 51.298588, 50.553185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269722, 51.080521, 50.453728>,  <47.290493, 50.717075, 50.287964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.269722, 51.080521, 50.453728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847132, 0.259823, -0.463530,
		-0.528840, 0.326988, -0.783203,
		-0.051925, 0.908609, 0.414407,
		47.254143, 51.353104, 50.578049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.522110, 51.214931, 49.807220>,  <47.290493, 50.717075, 50.287964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.522110, 51.214931, 49.807220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599243, 51.443699, 50.126152>,  <47.645523, 51.580959, 50.317513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599243, 51.443699, 50.126152>,  <47.522110, 51.214931, 49.807220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.599243, 51.443699, 50.126152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799292, 0.379785, -0.465720,
		-0.569165, 0.727102, -0.383894,
		0.192828, 0.571914, 0.797327,
		47.657093, 51.615273, 50.365349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.583832, 51.998550, 49.662823>,  <47.522110, 51.214931, 49.807220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.583832, 51.998550, 49.662823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.822605, 51.880638, 49.961292>,  <47.965870, 51.809891, 50.140373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.822605, 51.880638, 49.961292>,  <47.583832, 51.998550, 49.662823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.822605, 51.880638, 49.961292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729498, 0.586524, -0.351883,
		-0.333922, 0.754384, 0.565156,
		0.596932, -0.294779, 0.746175,
		48.001686, 51.792206, 50.185146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.798107, 52.615513, 50.086376>,  <47.583832, 51.998550, 49.662823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.798107, 52.615513, 50.086376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.044815, 52.322411, 49.971375>,  <48.192841, 52.146549, 49.902374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.044815, 52.322411, 49.971375>,  <47.798107, 52.615513, 50.086376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.044815, 52.322411, 49.971375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632880, 0.678815, -0.372388,
		0.468030, 0.047726, 0.882423,
		0.616774, -0.732757, -0.287501,
		48.229847, 52.102585, 49.885124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.460873, 52.482822, 50.483711>,  <47.798107, 52.615513, 50.086376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.460873, 52.482822, 50.483711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.471058, 52.412243, 50.090118>,  <48.477169, 52.369896, 49.853962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.471058, 52.412243, 50.090118>,  <48.460873, 52.482822, 50.483711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.471058, 52.412243, 50.090118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739906, 0.665215, -0.100146,
		0.672229, -0.725503, 0.147494,
		0.025459, -0.176453, -0.983980,
		48.478695, 52.359306, 49.794926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.868019, 53.040066, 50.375954>,  <48.460873, 52.482822, 50.483711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.868019, 53.040066, 50.375954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.879829, 52.823795, 50.039669>,  <48.886917, 52.694035, 49.837898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.879829, 52.823795, 50.039669>,  <48.868019, 53.040066, 50.375954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.879829, 52.823795, 50.039669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815783, 0.499059, -0.292300,
		0.577605, -0.677210, 0.455806,
		0.029525, -0.540672, -0.840715,
		48.888687, 52.661594, 49.787453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.518581, 52.620537, 50.193130>,  <48.868019, 53.040066, 50.375954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.518581, 52.620537, 50.193130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.321175, 52.738159, 49.865723>,  <49.202732, 52.808731, 49.669277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.321175, 52.738159, 49.865723>,  <49.518581, 52.620537, 50.193130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.321175, 52.738159, 49.865723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741632, 0.633903, -0.219427,
		0.454338, -0.715331, -0.530922,
		-0.493516, 0.294055, -0.818519,
		49.173119, 52.826374, 49.620167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.016548, 52.693455, 49.744347>,  <49.518581, 52.620537, 50.193130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.016548, 52.693455, 49.744347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.721302, 52.907120, 49.579494>,  <49.544155, 53.035320, 49.480583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.721302, 52.907120, 49.579494>,  <50.016548, 52.693455, 49.744347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.721302, 52.907120, 49.579494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655706, 0.711793, -0.251795,
		0.158850, -0.456090, -0.875642,
		-0.738117, 0.534166, -0.412129,
		49.499866, 53.067371, 49.455856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.140488, 52.887226, 49.069698>,  <50.016548, 52.693455, 49.744347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.140488, 52.887226, 49.069698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.905716, 53.154167, 49.253067>,  <49.764854, 53.314331, 49.363087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.905716, 53.154167, 49.253067>,  <50.140488, 52.887226, 49.069698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.905716, 53.154167, 49.253067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650438, 0.725823, -0.223856,
		-0.482125, 0.166788, -0.860080,
		-0.586929, 0.667355, 0.458423,
		49.729637, 53.354374, 49.390594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.923248, 53.038895, 49.142273>,  <50.140488, 52.887226, 49.069698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.923248, 53.038895, 49.142273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.183399, 53.216957, 48.896072>,  <51.339489, 53.323795, 48.748352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.183399, 53.216957, 48.896072>,  <50.923248, 53.038895, 49.142273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.183399, 53.216957, 48.896072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753152, -0.483339, 0.446258,
		-0.098843, -0.753805, -0.649621,
		0.650379, 0.445154, -0.615504,
		51.378513, 53.350502, 48.711422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.210495, 52.482243, 48.809700>,  <50.923248, 53.038895, 49.142273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.210495, 52.482243, 48.809700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.421886, 52.820343, 48.841373>,  <51.548721, 53.023201, 48.860378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.421886, 52.820343, 48.841373>,  <51.210495, 52.482243, 48.809700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.421886, 52.820343, 48.841373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797454, -0.526247, 0.295181,
		0.291169, -0.092855, -0.952155,
		0.528477, 0.845247, 0.079179,
		51.580429, 53.073917, 48.865128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.845657, 52.275635, 48.897335>,  <51.210495, 52.482243, 48.809700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.845657, 52.275635, 48.897335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.902821, 52.671318, 48.910259>,  <51.937119, 52.908730, 48.918015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.902821, 52.671318, 48.910259>,  <51.845657, 52.275635, 48.897335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.902821, 52.671318, 48.910259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949129, -0.146228, 0.278873,
		0.280589, -0.009185, -0.959784,
		0.142909, 0.989208, 0.032312,
		51.945694, 52.968079, 48.919952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.535969, 52.525398, 48.493587>,  <51.845657, 52.275635, 48.897335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.535969, 52.525398, 48.493587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.449078, 52.731407, 48.825264>,  <52.396942, 52.855011, 49.024269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.449078, 52.731407, 48.825264>,  <52.535969, 52.525398, 48.493587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.449078, 52.731407, 48.825264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933541, -0.138547, 0.330614,
		0.285156, 0.845905, -0.450700,
		-0.217225, 0.515024, 0.829195,
		52.383911, 52.885914, 49.074024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.986050, 53.067589, 48.619610>,  <52.535969, 52.525398, 48.493587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.986050, 53.067589, 48.619610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.833664, 52.966560, 48.975380>,  <52.742233, 52.905945, 49.188843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.833664, 52.966560, 48.975380>,  <52.986050, 53.067589, 48.619610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.833664, 52.966560, 48.975380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922593, -0.040624, 0.383630,
		-0.060762, 0.966725, 0.248496,
		-0.380960, -0.252571, 0.889425,
		52.719376, 52.890789, 49.242207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.440350, 52.923645, 48.042236>,  <52.986050, 53.067589, 48.619610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.440350, 52.923645, 48.042236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.810772, 52.968578, 48.186348>,  <54.033024, 52.995537, 48.272816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.810772, 52.968578, 48.186348>,  <53.440350, 52.923645, 48.042236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.810772, 52.968578, 48.186348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171251, -0.725646, 0.666417,
		0.336296, -0.678838, -0.652752,
		0.926055, 0.112329, 0.360283,
		54.088589, 53.002277, 48.294434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.402618, 52.390545, 48.437737>,  <53.440350, 52.923645, 48.042236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.402618, 52.390545, 48.437737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.745110, 52.563801, 48.550346>,  <53.950603, 52.667755, 48.617912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.745110, 52.563801, 48.550346>,  <53.402618, 52.390545, 48.437737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.745110, 52.563801, 48.550346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015283, -0.565968, 0.824285,
		0.516365, -0.701477, -0.491220,
		0.856232, 0.433140, 0.281526,
		54.001980, 52.693741, 48.634804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.734463, 51.897617, 48.912106>,  <53.402618, 52.390545, 48.437737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.734463, 51.897617, 48.912106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.987808, 52.184471, 49.028435>,  <54.139816, 52.356583, 49.098232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.987808, 52.184471, 49.028435>,  <53.734463, 51.897617, 48.912106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.987808, 52.184471, 49.028435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258819, -0.550466, 0.793725,
		0.729291, -0.427446, -0.534252,
		0.633362, 0.717131, 0.290819,
		54.177818, 52.399609, 49.115681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.342247, 51.469646, 49.093513>,  <53.734463, 51.897617, 48.912106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.342247, 51.469646, 49.093513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.350380, 51.827129, 49.272789>,  <54.355259, 52.041618, 49.380352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.350380, 51.827129, 49.272789>,  <54.342247, 51.469646, 49.093513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.350380, 51.827129, 49.272789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019337, -0.448547, 0.893550,
		0.999606, -0.009501, -0.026402,
		0.020332, 0.893709, 0.448187,
		54.356480, 52.095242, 49.407246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.968609, 51.302868, 49.450966>,  <54.342247, 51.469646, 49.093513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.968609, 51.302868, 49.450966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.753105, 51.594975, 49.618988>,  <54.623802, 51.770237, 49.719803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.753105, 51.594975, 49.618988>,  <54.968609, 51.302868, 49.450966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.753105, 51.594975, 49.618988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095716, -0.442319, 0.891735,
		0.837003, 0.520640, 0.168406,
		-0.538762, 0.730266, 0.420056,
		54.591476, 51.814053, 49.745007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.327389, 51.578911, 50.018730>,  <54.968609, 51.302868, 49.450966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.327389, 51.578911, 50.018730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.929771, 51.587261, 50.061516>,  <54.691200, 51.592270, 50.087189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.929771, 51.587261, 50.061516>,  <55.327389, 51.578911, 50.018730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.929771, 51.587261, 50.061516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086780, -0.442108, 0.892754,
		0.065925, 0.896719, 0.437663,
		-0.994044, 0.020874, 0.106963,
		54.631557, 51.593525, 50.093605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.966293, 50.878384, 50.291889>,  <55.327389, 51.578911, 50.018730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.966293, 50.878384, 50.291889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.340446, 50.738655, 50.269875>,  <55.564938, 50.654819, 50.256668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.340446, 50.738655, 50.269875>,  <54.966293, 50.878384, 50.291889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.340446, 50.738655, 50.269875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227648, -0.713902, 0.662209,
		-0.270613, -0.606892, -0.747295,
		0.935385, -0.349322, -0.055033,
		55.621063, 50.633858, 50.253365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.465019, 50.666782, 50.834251>,  <54.966293, 50.878384, 50.291889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.465019, 50.666782, 50.834251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.323601, 50.749680, 51.199120>,  <55.238750, 50.799419, 51.418041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.323601, 50.749680, 51.199120>,  <55.465019, 50.666782, 50.834251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.323601, 50.749680, 51.199120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478013, 0.878237, -0.014260,
		-0.804056, 0.430987, -0.409566,
		-0.353550, 0.207244, 0.912169,
		55.217537, 50.811852, 51.472771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.759678, 51.347645, 50.958130>,  <55.465019, 50.666782, 50.834251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.759678, 51.347645, 50.958130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.573891, 51.288574, 51.307404>,  <55.462418, 51.253132, 51.516968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.573891, 51.288574, 51.307404>,  <55.759678, 51.347645, 50.958130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.573891, 51.288574, 51.307404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385383, 0.854036, 0.349431,
		-0.797337, 0.498813, -0.339764,
		-0.464471, -0.147675, 0.873189,
		55.434551, 51.244270, 51.569359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.613342, 51.956409, 51.107388>,  <55.759678, 51.347645, 50.958130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.613342, 51.956409, 51.107388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.633873, 51.744541, 51.446045>,  <55.646191, 51.617420, 51.649239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.633873, 51.744541, 51.446045>,  <55.613342, 51.956409, 51.107388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.633873, 51.744541, 51.446045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515949, 0.739927, 0.431630,
		-0.855080, 0.414672, 0.311263,
		0.051327, -0.529675, 0.846647,
		55.649273, 51.585640, 51.700039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.328747, 52.378063, 51.684620>,  <55.613342, 51.956409, 51.107388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.328747, 52.378063, 51.684620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.584023, 52.094910, 51.805691>,  <55.737190, 51.925018, 51.878334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.584023, 52.094910, 51.805691>,  <55.328747, 52.378063, 51.684620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.584023, 52.094910, 51.805691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446739, 0.660692, 0.603249,
		-0.627005, -0.249773, 0.737888,
		0.638192, -0.707884, 0.302674,
		55.775478, 51.882545, 51.896492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.195583, 52.056206, 52.357689>,  <55.328747, 52.378063, 51.684620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.195583, 52.056206, 52.357689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.564842, 52.131031, 52.223339>,  <55.786396, 52.175926, 52.142731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.564842, 52.131031, 52.223339>,  <55.195583, 52.056206, 52.357689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.564842, 52.131031, 52.223339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024305, 0.843494, 0.536588,
		0.383683, -0.503512, 0.774121,
		0.923145, 0.187064, -0.335872,
		55.841785, 52.187149, 52.122578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.616943, 52.291817, 52.977776>,  <55.195583, 52.056206, 52.357689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.616943, 52.291817, 52.977776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.769508, 52.465744, 52.651474>,  <55.861050, 52.570099, 52.455692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.769508, 52.465744, 52.651474>,  <55.616943, 52.291817, 52.977776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.769508, 52.465744, 52.651474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063957, 0.867940, 0.492534,
		0.922188, -0.240034, 0.303238,
		0.381418, 0.434814, -0.815756,
		55.883934, 52.596188, 52.406746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.831104, 52.870453, 53.238186>,  <55.616943, 52.291817, 52.977776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.831104, 52.870453, 53.238186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.838844, 52.946651, 52.845589>,  <55.843487, 52.992371, 52.610031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.838844, 52.946651, 52.845589>,  <55.831104, 52.870453, 53.238186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.838844, 52.946651, 52.845589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069258, 0.979068, 0.191388,
		0.997411, -0.071681, 0.005752,
		0.019351, 0.190494, -0.981498,
		55.844650, 53.003799, 52.551140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.297081, 53.374100, 53.077938>,  <55.831104, 52.870453, 53.238186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.297081, 53.374100, 53.077938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.631470, 53.579754, 53.001190>,  <56.832104, 53.703148, 52.955139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.631470, 53.579754, 53.001190>,  <56.297081, 53.374100, 53.077938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.631470, 53.579754, 53.001190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541679, -0.717053, 0.438655,
		0.087946, -0.470636, -0.877933,
		0.835972, 0.514136, -0.191871,
		56.882263, 53.733994, 52.943630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.916874, 52.899460, 53.086533>,  <56.297081, 53.374100, 53.077938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.916874, 52.899460, 53.086533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.079582, 53.258549, 53.154213>,  <57.177208, 53.474003, 53.194820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.079582, 53.258549, 53.154213>,  <56.916874, 52.899460, 53.086533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.079582, 53.258549, 53.154213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716224, -0.428371, 0.550927,
		0.567061, -0.102917, -0.817221,
		0.406774, 0.897723, 0.169201,
		57.201614, 53.527866, 53.204971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.373680, 52.718906, 53.445942>,  <56.916874, 52.899460, 53.086533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.373680, 52.718906, 53.445942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.455681, 53.109451, 53.473358>,  <57.504879, 53.343777, 53.489807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.455681, 53.109451, 53.473358>,  <57.373680, 52.718906, 53.445942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.455681, 53.109451, 53.473358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815393, -0.209099, 0.539826,
		0.541396, -0.054773, -0.838981,
		0.204998, 0.976359, 0.068544,
		57.517181, 53.402359, 53.493919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.064934, 52.860729, 53.145992>,  <57.373680, 52.718906, 53.445942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.064934, 52.860729, 53.145992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.961105, 53.114246, 53.437450>,  <57.898808, 53.266357, 53.612328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.961105, 53.114246, 53.437450>,  <58.064934, 52.860729, 53.145992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.961105, 53.114246, 53.437450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843891, -0.217985, 0.490235,
		0.469542, 0.742151, -0.478269,
		-0.259573, 0.633793, 0.728648,
		57.883232, 53.304386, 53.656044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.558609, 53.409615, 53.340694>,  <58.064934, 52.860729, 53.145992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.558609, 53.409615, 53.340694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.354172, 53.328911, 53.674896>,  <58.231510, 53.280487, 53.875420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.354172, 53.328911, 53.674896>,  <58.558609, 53.409615, 53.340694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.354172, 53.328911, 53.674896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853037, -0.238263, 0.464283,
		0.105396, 0.950012, 0.293886,
		-0.511097, -0.201762, 0.835507,
		58.200844, 53.268383, 53.925549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.109688, 54.002098, 53.514324>,  <58.558609, 53.409615, 53.340694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.109688, 54.002098, 53.514324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.248955, 53.691689, 53.724682>,  <59.332516, 53.505444, 53.850895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.248955, 53.691689, 53.724682>,  <59.109688, 54.002098, 53.514324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.248955, 53.691689, 53.724682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092061, 0.586583, 0.804640,
		-0.932901, -0.231735, 0.275670,
		0.348167, -0.776028, 0.525890,
		59.353405, 53.458881, 53.882450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.836010, 54.120049, 54.148567>,  <59.109688, 54.002098, 53.514324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.836010, 54.120049, 54.148567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.149216, 53.872662, 54.175072>,  <59.337139, 53.724232, 54.190975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.149216, 53.872662, 54.175072>,  <58.836010, 54.120049, 54.148567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.149216, 53.872662, 54.175072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239290, 0.397847, 0.885696,
		-0.574133, -0.677658, 0.459512,
		0.783015, -0.618464, 0.066261,
		59.384121, 53.687122, 54.194950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.992203, 53.775417, 54.902340>,  <58.836010, 54.120049, 54.148567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.992203, 53.775417, 54.902340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.321709, 53.818413, 54.679676>,  <59.519413, 53.844212, 54.546078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.321709, 53.818413, 54.679676>,  <58.992203, 53.775417, 54.902340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.321709, 53.818413, 54.679676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351758, 0.673118, 0.650522,
		0.444618, -0.731682, 0.516679,
		0.823761, 0.107488, -0.556655,
		59.568836, 53.850658, 54.512680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.570461, 54.082695, 55.320740>,  <58.992203, 53.775417, 54.902340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.570461, 54.082695, 55.320740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.369171, 54.033329, 55.662857>,  <59.248398, 54.003708, 55.868130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.369171, 54.033329, 55.662857>,  <59.570461, 54.082695, 55.320740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.369171, 54.033329, 55.662857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313903, 0.896035, 0.313983,
		-0.805125, 0.426485, -0.412170,
		-0.503228, -0.123414, 0.855296,
		59.218204, 53.996304, 55.919445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.051144, 54.629784, 55.383812>,  <59.570461, 54.082695, 55.320740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.051144, 54.629784, 55.383812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.170555, 54.495354, 55.741119>,  <59.242203, 54.414696, 55.955505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.170555, 54.495354, 55.741119>,  <59.051144, 54.629784, 55.383812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.170555, 54.495354, 55.741119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305740, 0.920301, 0.244067,
		-0.904103, 0.200247, 0.377490,
		0.298531, -0.336075, 0.893271,
		59.260113, 54.394531, 56.009102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.849831, 55.045181, 56.143559>,  <59.051144, 54.629784, 55.383812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.849831, 55.045181, 56.143559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.203445, 54.862354, 56.104454>,  <59.415615, 54.752659, 56.080994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.203445, 54.862354, 56.104454>,  <58.849831, 55.045181, 56.143559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.203445, 54.862354, 56.104454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466231, 0.877152, 0.115038,
		0.033168, -0.147277, 0.988539,
		0.884041, -0.457072, -0.097759,
		59.468658, 54.725231, 56.075127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.328636, 55.144161, 56.770733>,  <58.849831, 55.045181, 56.143559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.328636, 55.144161, 56.770733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.505455, 55.158524, 56.412224>,  <59.611546, 55.167141, 56.197121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.505455, 55.158524, 56.412224>,  <59.328636, 55.144161, 56.770733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.505455, 55.158524, 56.412224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408140, 0.881720, 0.236626,
		0.798757, -0.470405, 0.375110,
		0.442052, 0.035909, -0.896270,
		59.638069, 55.169296, 56.143341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.203087, 55.772533, 56.416210>,  <59.328636, 55.144161, 56.770733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.203087, 55.772533, 56.416210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.155815, 56.070118, 56.153137>,  <59.127453, 56.248669, 55.995293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.155815, 56.070118, 56.153137>,  <59.203087, 55.772533, 56.416210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.155815, 56.070118, 56.153137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969717, 0.229027, 0.084825,
		0.213735, -0.627746, -0.748500,
		-0.118179, 0.743964, -0.657687,
		59.120361, 56.293308, 55.955830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.760147, 55.794636, 55.911125>,  <59.203087, 55.772533, 56.416210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.760147, 55.794636, 55.911125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.638039, 56.161705, 56.012863>,  <59.564774, 56.381947, 56.073906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.638039, 56.161705, 56.012863>,  <59.760147, 55.794636, 55.911125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.638039, 56.161705, 56.012863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951888, 0.301580, 0.054390,
		-0.026791, 0.258708, -0.965584,
		-0.305272, 0.917671, 0.254341,
		59.546455, 56.437008, 56.089165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.251259, 56.286892, 55.455105>,  <59.760147, 55.794636, 55.911125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.251259, 56.286892, 55.455105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.079338, 56.474438, 55.763763>,  <59.976185, 56.586964, 55.948959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.079338, 56.474438, 55.763763>,  <60.251259, 56.286892, 55.455105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.079338, 56.474438, 55.763763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879451, 0.410974, 0.240138,
		-0.204535, 0.781837, -0.588979,
		-0.429804, 0.468862, 0.771646,
		59.950397, 56.615097, 55.995258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.315681, 56.997730, 55.403728>,  <60.251259, 56.286892, 55.455105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.315681, 56.997730, 55.403728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.293877, 56.922962, 55.796074>,  <60.280792, 56.878101, 56.031479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.293877, 56.922962, 55.796074>,  <60.315681, 56.997730, 55.403728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.293877, 56.922962, 55.796074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862832, 0.485575, 0.140491,
		-0.502542, 0.853978, 0.134811,
		-0.054515, -0.186922, 0.980861,
		60.277523, 56.866886, 56.090332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.498531, 57.625648, 55.568768>,  <60.315681, 56.997730, 55.403728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.498531, 57.625648, 55.568768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.584778, 57.377644, 55.870522>,  <60.636524, 57.228840, 56.051575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.584778, 57.377644, 55.870522>,  <60.498531, 57.625648, 55.568768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.584778, 57.377644, 55.870522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831877, 0.521202, 0.190599,
		-0.511362, 0.586463, 0.628148,
		0.215613, -0.620008, 0.754388,
		60.649464, 57.191643, 56.096840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.825592, 57.963898, 56.228161>,  <60.498531, 57.625648, 55.568768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.825592, 57.963898, 56.228161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.991837, 57.600594, 56.247498>,  <61.091583, 57.382610, 56.259102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.991837, 57.600594, 56.247498>,  <60.825592, 57.963898, 56.228161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.991837, 57.600594, 56.247498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876665, 0.414185, 0.244763,
		-0.242331, -0.059345, 0.968377,
		0.415613, -0.908256, 0.048344,
		61.116520, 57.328117, 56.262001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.032600, 57.742599, 57.007538>,  <60.825592, 57.963898, 56.228161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.032600, 57.742599, 57.007538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.283554, 57.586243, 56.738144>,  <61.434128, 57.492428, 56.576508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.283554, 57.586243, 56.738144>,  <61.032600, 57.742599, 57.007538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.283554, 57.586243, 56.738144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767291, 0.457875, 0.449016,
		0.132856, -0.798469, 0.587194,
		0.627387, -0.390894, -0.673489,
		61.471771, 57.468975, 56.536098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.521690, 58.264923, 57.217030>,  <61.032600, 57.742599, 57.007538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.521690, 58.264923, 57.217030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.884010, 58.378864, 57.091560>,  <62.101402, 58.447227, 57.016277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.884010, 58.378864, 57.091560>,  <61.521690, 58.264923, 57.217030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.884010, 58.378864, 57.091560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415959, -0.456871, 0.786287,
		0.080665, -0.842692, -0.532318,
		0.905799, 0.284849, -0.313672,
		62.155750, 58.464317, 56.997459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.948254, 57.664181, 57.212383>,  <61.521690, 58.264923, 57.217030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.948254, 57.664181, 57.212383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.182869, 57.985806, 57.251274>,  <62.323639, 58.178780, 57.274609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.182869, 57.985806, 57.251274>,  <61.948254, 57.664181, 57.212383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.182869, 57.985806, 57.251274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426331, -0.408579, 0.807035,
		0.688632, -0.431907, -0.582445,
		0.586538, 0.804065, 0.097225,
		62.358829, 58.227024, 57.280441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.438168, 57.356529, 57.503311>,  <61.948254, 57.664181, 57.212383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.438168, 57.356529, 57.503311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.506554, 57.734108, 57.616264>,  <62.547585, 57.960655, 57.684036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.506554, 57.734108, 57.616264>,  <62.438168, 57.356529, 57.503311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.506554, 57.734108, 57.616264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363898, -0.326836, 0.872213,
		0.915613, -0.046363, -0.399378,
		0.170969, 0.943943, 0.282384,
		62.557846, 58.017292, 57.700981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.216736, 57.556530, 57.578312>,  <62.438168, 57.356529, 57.503311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.216736, 57.556530, 57.578312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.971237, 57.729202, 57.842728>,  <62.823936, 57.832806, 58.001377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.971237, 57.729202, 57.842728>,  <63.216736, 57.556530, 57.578312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.971237, 57.729202, 57.842728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509074, -0.423589, 0.749277,
		0.603457, 0.796381, 0.040218,
		-0.613746, 0.431682, 0.661035,
		62.787113, 57.858707, 58.041039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.658798, 57.971928, 58.126129>,  <63.216736, 57.556530, 57.578312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.658798, 57.971928, 58.126129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.347450, 57.783707, 58.292366>,  <63.160641, 57.670773, 58.392109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.347450, 57.783707, 58.292366>,  <63.658798, 57.971928, 58.126129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.347450, 57.783707, 58.292366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617867, -0.456842, 0.639950,
		-0.111269, 0.754900, 0.646332,
		-0.778370, -0.470554, 0.415595,
		63.113941, 57.642540, 58.417046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.914150, 57.526363, 58.699059>,  <63.658798, 57.971928, 58.126129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.914150, 57.526363, 58.699059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.526451, 57.451466, 58.762939>,  <63.293831, 57.406528, 58.801270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.526451, 57.451466, 58.762939>,  <63.914150, 57.526363, 58.699059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.526451, 57.451466, 58.762939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242959, -0.624677, 0.742125,
		-0.039191, 0.758102, 0.650957,
		-0.969244, -0.187241, 0.159706,
		63.235680, 57.395294, 58.810852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.636959, 57.655006, 59.437752>,  <63.914150, 57.526363, 58.699059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.636959, 57.655006, 59.437752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.450287, 57.356636, 59.247673>,  <63.338284, 57.177612, 59.133625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.450287, 57.356636, 59.247673>,  <63.636959, 57.655006, 59.437752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.450287, 57.356636, 59.247673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306273, -0.640344, 0.704384,
		-0.829704, 0.183180, 0.527291,
		-0.466677, -0.745925, -0.475193,
		63.310284, 57.132858, 59.105114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.360176, 57.274368, 59.944908>,  <63.636959, 57.655006, 59.437752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.360176, 57.274368, 59.944908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.385078, 57.010460, 59.645355>,  <63.400021, 56.852116, 59.465622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.385078, 57.010460, 59.645355>,  <63.360176, 57.274368, 59.944908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.385078, 57.010460, 59.645355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244599, -0.717368, 0.652345,
		-0.967623, -0.223790, 0.116717,
		0.062259, -0.659773, -0.748881,
		63.403755, 56.812527, 59.420692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.008064, 56.692249, 60.182987>,  <63.360176, 57.274368, 59.944908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.008064, 56.692249, 60.182987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.309196, 56.613194, 59.931854>,  <63.489876, 56.565758, 59.781174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.309196, 56.613194, 59.931854>,  <63.008064, 56.692249, 60.182987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.309196, 56.613194, 59.931854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395327, -0.626876, 0.671373,
		-0.526265, -0.753634, -0.393802,
		0.752835, -0.197640, -0.627836,
		63.535046, 56.553902, 59.743504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.086071, 55.862133, 60.323505>,  <63.008064, 56.692249, 60.182987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.086071, 55.862133, 60.323505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.418434, 56.030033, 60.177406>,  <63.617851, 56.130772, 60.089745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.418434, 56.030033, 60.177406>,  <63.086071, 55.862133, 60.323505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.418434, 56.030033, 60.177406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552641, -0.546230, 0.629460,
		0.064704, -0.724874, -0.685836,
		0.830904, 0.419750, -0.365252,
		63.667706, 56.155956, 60.067829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.580269, 55.369312, 60.066570>,  <63.086071, 55.862133, 60.323505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.580269, 55.369312, 60.066570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.687920, 55.704109, 60.257156>,  <63.752510, 55.904987, 60.371510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.687920, 55.704109, 60.257156>,  <63.580269, 55.369312, 60.066570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.687920, 55.704109, 60.257156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383873, -0.546945, 0.743971,
		0.883297, -0.017319, -0.468495,
		0.269126, 0.836989, 0.476467,
		63.768658, 55.955208, 60.400097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.287521, 55.441673, 60.148605>,  <63.580269, 55.369312, 60.066570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.287521, 55.441673, 60.148605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.100945, 55.596958, 60.466530>,  <63.988998, 55.690128, 60.657284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.100945, 55.596958, 60.466530>,  <64.287521, 55.441673, 60.148605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.100945, 55.596958, 60.466530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558104, -0.567956, 0.604935,
		0.686261, 0.725753, 0.048254,
		-0.466439, 0.388213, 0.794811,
		63.961014, 55.713421, 60.704975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.752365, 55.807133, 60.659561>,  <64.287521, 55.441673, 60.148605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.752365, 55.807133, 60.659561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.439812, 55.674675, 60.871140>,  <64.252281, 55.595200, 60.998085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.439812, 55.674675, 60.871140>,  <64.752365, 55.807133, 60.659561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.439812, 55.674675, 60.871140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620646, -0.500733, 0.603378,
		0.065055, 0.799757, 0.596788,
		-0.781387, -0.331141, 0.528941,
		64.205399, 55.575333, 61.029823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.882172, 55.959373, 61.393642>,  <64.752365, 55.807133, 60.659561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.882172, 55.959373, 61.393642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.685966, 55.620522, 61.311897>,  <64.568245, 55.417210, 61.262852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.685966, 55.620522, 61.311897>,  <64.882172, 55.959373, 61.393642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.685966, 55.620522, 61.311897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507523, -0.468350, 0.723235,
		-0.708385, 0.251044, 0.659672,
		-0.490521, -0.847128, -0.204361,
		64.538811, 55.366383, 61.250587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.547104, 56.161251, 61.607483>,  <64.882172, 55.959373, 61.393642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.547104, 56.161251, 61.607483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.681030, 55.972294, 61.281357>,  <65.761391, 55.858921, 61.085682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.681030, 55.972294, 61.281357>,  <65.547104, 56.161251, 61.607483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.681030, 55.972294, 61.281357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518634, 0.814791, -0.259103,
		0.786709, -0.336095, 0.517812,
		0.334825, -0.472394, -0.815314,
		65.781479, 55.830574, 61.036762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.291756, 56.395767, 61.561024>,  <65.547104, 56.161251, 61.607483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.291756, 56.395767, 61.561024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.156555, 56.256687, 61.211197>,  <66.075439, 56.173241, 61.001301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.156555, 56.256687, 61.211197>,  <66.291756, 56.395767, 61.561024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.156555, 56.256687, 61.211197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539725, 0.689658, -0.482772,
		0.771011, -0.635199, -0.045437,
		-0.337992, -0.347699, -0.874567,
		66.055161, 56.152378, 60.948826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.719002, 56.710983, 61.124477>,  <66.291756, 56.395767, 61.561024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.719002, 56.710983, 61.124477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.035408, 56.856766, 61.321030>,  <67.225250, 56.944233, 61.438961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.035408, 56.856766, 61.321030>,  <66.719002, 56.710983, 61.124477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.035408, 56.856766, 61.321030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607794, 0.376531, 0.699151,
		0.069786, -0.851704, 0.519356,
		0.791023, 0.364452, 0.491384,
		67.272713, 56.966103, 61.468445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.278152, 56.707150, 60.706146>,  <66.719002, 56.710983, 61.124477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.278152, 56.707150, 60.706146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.555695, 56.969780, 60.587837>,  <67.722221, 57.127357, 60.516850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.555695, 56.969780, 60.587837>,  <67.278152, 56.707150, 60.706146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.555695, 56.969780, 60.587837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702180, -0.707972, 0.075625,
		-0.159748, -0.260160, -0.952259,
		0.693847, 0.656576, -0.295776,
		67.763847, 57.166752, 60.499104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.756813, 56.268616, 60.303654>,  <67.278152, 56.707150, 60.706146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.756813, 56.268616, 60.303654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.031937, 56.335464, 60.586212>,  <68.197006, 56.375572, 60.755749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.031937, 56.335464, 60.586212>,  <67.756813, 56.268616, 60.303654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.031937, 56.335464, 60.586212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716141, -0.315215, -0.622721,
		0.118598, 0.934190, -0.336487,
		0.687806, 0.167118, 0.706396,
		68.238281, 56.385601, 60.798130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.353203, 56.335052, 59.881046>,  <67.756813, 56.268616, 60.303654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.353203, 56.335052, 59.881046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.488190, 56.248859, 60.247581>,  <68.569183, 56.197144, 60.467503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.488190, 56.248859, 60.247581>,  <68.353203, 56.335052, 59.881046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.488190, 56.248859, 60.247581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899308, -0.213819, -0.381480,
		0.278131, 0.952812, 0.121623,
		0.337473, -0.215478, 0.916341,
		68.589432, 56.184216, 60.522484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.916245, 56.775669, 60.220982>,  <68.353203, 56.335052, 59.881046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.916245, 56.775669, 60.220982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.943459, 56.394981, 60.340714>,  <68.959785, 56.166569, 60.412552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.943459, 56.394981, 60.340714>,  <68.916245, 56.775669, 60.220982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.943459, 56.394981, 60.340714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864804, -0.093342, -0.493357,
		0.497478, 0.292434, 0.816700,
		0.068042, -0.951719, 0.299333,
		68.963875, 56.109467, 60.430515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.609467, 56.579697, 60.186592>,  <68.916245, 56.775669, 60.220982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.609467, 56.579697, 60.186592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.605629, 56.888378, 59.932228>,  <69.603325, 57.073586, 59.779610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.605629, 56.888378, 59.932228>,  <69.609467, 56.579697, 60.186592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.605629, 56.888378, 59.932228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975026, -0.133897, -0.177189,
		-0.221884, -0.621726, -0.751149,
		-0.009586, 0.771705, -0.635908,
		69.602753, 57.119888, 59.741455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.701805, 56.326363, 59.463772>,  <69.609467, 56.579697, 60.186592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.701805, 56.326363, 59.463772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.826447, 56.702652, 59.517365>,  <69.901230, 56.928425, 59.549519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.826447, 56.702652, 59.517365>,  <69.701805, 56.326363, 59.463772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.826447, 56.702652, 59.517365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921929, -0.265163, -0.282374,
		-0.230109, 0.211507, -0.949902,
		0.311603, 0.940720, 0.133978,
		69.919930, 56.984867, 59.557556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.083847, 56.705479, 58.788914>,  <69.701805, 56.326363, 59.463772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.083847, 56.705479, 58.788914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.198997, 56.849594, 59.143837>,  <70.268089, 56.936062, 59.356792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.198997, 56.849594, 59.143837>,  <70.083847, 56.705479, 58.788914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.198997, 56.849594, 59.143837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944910, -0.257589, -0.201975,
		0.155793, 0.896572, -0.414592,
		0.287879, 0.360286, 0.887310,
		70.285362, 56.957680, 59.410030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.863411, 56.736233, 58.770855>,  <70.083847, 56.705479, 58.788914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.863411, 56.736233, 58.770855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.806183, 56.856827, 59.147926>,  <70.771851, 56.929184, 59.374168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.806183, 56.856827, 59.147926>,  <70.863411, 56.736233, 58.770855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.806183, 56.856827, 59.147926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979727, -0.091825, 0.178056,
		0.140243, 0.949038, -0.282240,
		-0.143065, 0.301489, 0.942675,
		70.763260, 56.947273, 59.430729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.327057, 57.262218, 58.933311>,  <70.863411, 56.736233, 58.770855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.327057, 57.262218, 58.933311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.236397, 57.093590, 59.284515>,  <71.181999, 56.992413, 59.495239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.236397, 57.093590, 59.284515>,  <71.327057, 57.262218, 58.933311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.236397, 57.093590, 59.284515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973876, -0.085170, 0.210501,
		-0.013961, 0.902786, 0.429863,
		-0.226649, -0.421572, 0.878013,
		71.168404, 56.967117, 59.547920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.882080, 57.554634, 59.324402>,  <71.327057, 57.262218, 58.933311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.882080, 57.554634, 59.324402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.731056, 57.204308, 59.444672>,  <71.640442, 56.994114, 59.516834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.731056, 57.204308, 59.444672>,  <71.882080, 57.554634, 59.324402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.731056, 57.204308, 59.444672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917366, -0.309560, 0.250225,
		-0.126075, 0.370299, 0.920317,
		-0.377552, -0.875815, 0.300672,
		71.617790, 56.941563, 59.534874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.294884, 57.032135, 59.513573>,  <71.882080, 57.554634, 59.324402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.294884, 57.032135, 59.513573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.647675, 57.220528, 59.506630>,  <72.859352, 57.333561, 59.502464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.647675, 57.220528, 59.506630>,  <72.294884, 57.032135, 59.513573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.647675, 57.220528, 59.506630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448423, 0.849933, 0.276640,
		0.145044, -0.236206, 0.960817,
		0.881974, 0.470978, -0.017358,
		72.912270, 57.361820, 59.501423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.188011, 57.506897, 60.073818>,  <72.294884, 57.032135, 59.513573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.188011, 57.506897, 60.073818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.512184, 57.647984, 59.886719>,  <72.706688, 57.732635, 59.774460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.512184, 57.647984, 59.886719>,  <72.188011, 57.506897, 60.073818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.512184, 57.647984, 59.886719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219151, 0.922996, 0.316309,
		0.543297, -0.153840, 0.825325,
		0.810433, 0.352720, -0.467747,
		72.755318, 57.753799, 59.746395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.661156, 57.924809, 60.639069>,  <72.188011, 57.506897, 60.073818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.661156, 57.924809, 60.639069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.675529, 58.039047, 60.255997>,  <72.684151, 58.107590, 60.026154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.675529, 58.039047, 60.255997>,  <72.661156, 57.924809, 60.639069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.675529, 58.039047, 60.255997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315600, 0.912498, 0.260279,
		0.948212, 0.292889, 0.122926,
		0.035936, 0.285595, -0.957676,
		72.686310, 58.124725, 59.968693>
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
