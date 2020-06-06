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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<49.483036, 42.319668, 45.907322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.662704, 42.446106, 46.241585>,  <49.770508, 42.521969, 46.442142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.662704, 42.446106, 46.241585>,  <49.483036, 42.319668, 45.907322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.662704, 42.446106, 46.241585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597994, -0.588565, 0.544053,
		0.663813, -0.744094, -0.075345,
		0.449173, 0.316093, 0.835661,
		49.797455, 42.540936, 46.492283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.768471, 41.741150, 46.277378>,  <49.483036, 42.319668, 45.907322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.768471, 41.741150, 46.277378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.695824, 42.048851, 46.522411>,  <49.652233, 42.233471, 46.669434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.695824, 42.048851, 46.522411>,  <49.768471, 41.741150, 46.277378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.695824, 42.048851, 46.522411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521259, -0.603538, 0.603350,
		0.833848, -0.209735, 0.510596,
		-0.181621, 0.769255, 0.612585,
		49.641338, 42.279629, 46.706188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.895554, 41.581345, 47.000961>,  <49.768471, 41.741150, 46.277378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.895554, 41.581345, 47.000961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.627441, 41.878113, 47.007542>,  <49.466576, 42.056175, 47.011490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.627441, 41.878113, 47.007542>,  <49.895554, 41.581345, 47.000961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.627441, 41.878113, 47.007542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489609, -0.458769, 0.741495,
		0.557679, 0.488957, 0.670758,
		-0.670281, 0.741925, 0.016448,
		49.426357, 42.100689, 47.012478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.723328, 41.611942, 47.674728>,  <49.895554, 41.581345, 47.000961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.723328, 41.611942, 47.674728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.423508, 41.838036, 47.536926>,  <49.243614, 41.973690, 47.454243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.423508, 41.838036, 47.536926>,  <49.723328, 41.611942, 47.674728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.423508, 41.838036, 47.536926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617042, -0.408205, 0.672776,
		0.239643, 0.716857, 0.654742,
		-0.749554, 0.565229, -0.344507,
		49.198643, 42.007603, 47.433575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.346230, 41.779446, 48.294628>,  <49.723328, 41.611942, 47.674728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.346230, 41.779446, 48.294628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.115128, 41.865303, 47.979633>,  <48.976467, 41.916817, 47.790638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.115128, 41.865303, 47.979633>,  <49.346230, 41.779446, 48.294628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.115128, 41.865303, 47.979633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798437, -0.348873, 0.490699,
		-0.169408, 0.912260, 0.372939,
		-0.577753, 0.214640, -0.787484,
		48.941803, 41.929695, 47.743389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.695221, 42.017368, 48.557255>,  <49.346230, 41.779446, 48.294628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.695221, 42.017368, 48.557255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.578461, 41.891174, 48.196087>,  <48.508404, 41.815456, 47.979385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.578461, 41.891174, 48.196087>,  <48.695221, 42.017368, 48.557255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.578461, 41.891174, 48.196087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672075, -0.604033, 0.428321,
		-0.680523, 0.731855, -0.035714,
		-0.291896, -0.315485, -0.902921,
		48.490891, 41.796528, 47.925209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.958076, 42.081238, 48.501762>,  <48.695221, 42.017368, 48.557255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.958076, 42.081238, 48.501762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.021645, 41.821121, 48.204613>,  <48.059788, 41.665051, 48.026321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.021645, 41.821121, 48.204613>,  <47.958076, 42.081238, 48.501762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.021645, 41.821121, 48.204613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769306, -0.553166, 0.319650,
		-0.618799, 0.520696, -0.588187,
		0.158924, -0.650294, -0.742873,
		48.069321, 41.626034, 47.981750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.326607, 41.894859, 48.216667>,  <47.958076, 42.081238, 48.501762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.326607, 41.894859, 48.216667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.577217, 41.595627, 48.129189>,  <47.727585, 41.416088, 48.076702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.577217, 41.595627, 48.129189>,  <47.326607, 41.894859, 48.216667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.577217, 41.595627, 48.129189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715739, -0.663312, 0.218482,
		-0.308509, 0.019646, -0.951019,
		0.626530, -0.748085, -0.218699,
		47.765175, 41.371201, 48.063580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.893360, 41.374699, 47.823360>,  <47.326607, 41.894859, 48.216667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.893360, 41.374699, 47.823360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228142, 41.193451, 47.946129>,  <47.429008, 41.084702, 48.019791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228142, 41.193451, 47.946129>,  <46.893360, 41.374699, 47.823360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.228142, 41.193451, 47.946129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540661, -0.771518, 0.335329,
		0.084850, -0.446593, -0.890705,
		0.836951, -0.453116, 0.306919,
		47.479225, 41.057514, 48.038204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.949833, 40.693031, 47.530289>,  <46.893360, 41.374699, 47.823360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.949833, 40.693031, 47.530289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169922, 40.685631, 47.864212>,  <47.301975, 40.681190, 48.064568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169922, 40.685631, 47.864212>,  <46.949833, 40.693031, 47.530289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.169922, 40.685631, 47.864212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560152, -0.749608, 0.352587,
		0.619259, -0.661623, -0.422815,
		0.550225, -0.018498, 0.834811,
		47.334988, 40.680080, 48.114655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.001221, 39.999691, 47.707851>,  <46.949833, 40.693031, 47.530289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.001221, 39.999691, 47.707851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.100731, 40.185074, 48.048042>,  <47.160439, 40.296303, 48.252159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.100731, 40.185074, 48.048042>,  <47.001221, 39.999691, 47.707851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.100731, 40.185074, 48.048042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597461, -0.617692, 0.511369,
		0.762332, -0.635347, 0.123228,
		0.248780, 0.463456, 0.850481,
		47.175365, 40.324112, 48.303188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.921337, 39.484848, 48.200600>,  <47.001221, 39.999691, 47.707851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.921337, 39.484848, 48.200600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.931000, 39.806732, 48.437870>,  <46.936798, 39.999863, 48.580235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.931000, 39.806732, 48.437870>,  <46.921337, 39.484848, 48.200600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.931000, 39.806732, 48.437870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466733, -0.515641, 0.718523,
		0.884069, -0.294210, 0.363129,
		0.024152, 0.804708, 0.593180,
		46.938244, 40.048145, 48.615826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.955402, 39.252003, 48.846478>,  <46.921337, 39.484848, 48.200600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.955402, 39.252003, 48.846478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.852547, 39.630234, 48.926231>,  <46.790833, 39.857174, 48.974083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.852547, 39.630234, 48.926231>,  <46.955402, 39.252003, 48.846478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.852547, 39.630234, 48.926231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427226, -0.296298, 0.854216,
		0.866808, 0.134472, 0.480168,
		-0.257141, 0.945582, 0.199384,
		46.775406, 39.913910, 48.986046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.007496, 39.311665, 49.618629>,  <46.955402, 39.252003, 48.846478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.007496, 39.311665, 49.618629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786987, 39.624771, 49.503120>,  <46.654682, 39.812634, 49.433815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786987, 39.624771, 49.503120>,  <47.007496, 39.311665, 49.618629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.786987, 39.624771, 49.503120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561894, -0.092465, 0.822025,
		0.616749, 0.615413, 0.490803,
		-0.551267, 0.782763, -0.288769,
		46.621609, 39.859600, 49.416489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.988102, 39.752243, 50.224136>,  <47.007496, 39.311665, 49.618629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.988102, 39.752243, 50.224136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679062, 39.819145, 49.979149>,  <46.493637, 39.859287, 49.832157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679062, 39.819145, 49.979149>,  <46.988102, 39.752243, 50.224136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679062, 39.819145, 49.979149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633488, -0.138930, 0.761178,
		0.042223, 0.976075, 0.213293,
		-0.772600, 0.167258, -0.612466,
		46.447281, 39.869324, 49.795410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548576, 39.925541, 50.650856>,  <46.988102, 39.752243, 50.224136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.548576, 39.925541, 50.650856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.317329, 39.850479, 50.333221>,  <46.178581, 39.805443, 50.142639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.317329, 39.850479, 50.333221>,  <46.548576, 39.925541, 50.650856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.317329, 39.850479, 50.333221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754848, -0.246529, 0.607806,
		-0.309820, 0.950795, 0.000874,
		-0.578114, -0.187651, -0.794085,
		46.143894, 39.794182, 50.094997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.977882, 40.393517, 50.651325>,  <46.548576, 39.925541, 50.650856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.977882, 40.393517, 50.651325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875496, 40.052917, 50.468273>,  <45.814064, 39.848557, 50.358440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875496, 40.052917, 50.468273>,  <45.977882, 40.393517, 50.651325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875496, 40.052917, 50.468273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747948, -0.125464, 0.651792,
		-0.612419, 0.509119, -0.604765,
		-0.255964, -0.851503, -0.457631,
		45.798706, 39.797466, 50.330982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291290, 40.445618, 50.489246>,  <45.977882, 40.393517, 50.651325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291290, 40.445618, 50.489246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384285, 40.058578, 50.528633>,  <45.440083, 39.826355, 50.552265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384285, 40.058578, 50.528633>,  <45.291290, 40.445618, 50.489246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384285, 40.058578, 50.528633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614786, -0.067757, 0.785779,
		-0.753649, -0.243220, -0.610620,
		0.232491, -0.967602, 0.098464,
		45.454033, 39.768299, 50.558170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.629189, 40.069271, 50.648109>,  <45.291290, 40.445618, 50.489246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.629189, 40.069271, 50.648109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.930717, 39.830376, 50.757694>,  <45.111637, 39.687038, 50.823444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.930717, 39.830376, 50.757694>,  <44.629189, 40.069271, 50.648109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930717, 39.830376, 50.757694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458034, -0.178676, 0.870793,
		-0.471120, -0.781909, -0.408246,
		0.753824, -0.597238, 0.273963,
		45.156864, 39.651203, 50.839882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352032, 39.454483, 50.905457>,  <44.629189, 40.069271, 50.648109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352032, 39.454483, 50.905457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710651, 39.443169, 51.082275>,  <44.925823, 39.436378, 51.188366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710651, 39.443169, 51.082275>,  <44.352032, 39.454483, 50.905457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710651, 39.443169, 51.082275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434828, -0.246423, 0.866141,
		0.084431, -0.968750, -0.233229,
		0.896547, -0.028285, 0.442045,
		44.979614, 39.434681, 51.214890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210281, 38.989689, 51.383945>,  <44.352032, 39.454483, 50.905457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210281, 38.989689, 51.383945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.566795, 39.125671, 51.503971>,  <44.780704, 39.207260, 51.575985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.566795, 39.125671, 51.503971>,  <44.210281, 38.989689, 51.383945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566795, 39.125671, 51.503971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235670, -0.218047, 0.947056,
		0.387390, -0.914813, -0.114223,
		0.891285, 0.339961, 0.300063,
		44.834179, 39.227661, 51.593990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611729, 38.367100, 51.750046>,  <44.210281, 38.989689, 51.383945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611729, 38.367100, 51.750046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719250, 38.730995, 51.876614>,  <44.783764, 38.949333, 51.952553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719250, 38.730995, 51.876614>,  <44.611729, 38.367100, 51.750046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719250, 38.730995, 51.876614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232946, -0.257356, 0.937819,
		0.934602, -0.325798, 0.142741,
		0.268804, 0.909738, 0.316419,
		44.799892, 39.003918, 51.971539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999409, 38.198822, 52.234283>,  <44.611729, 38.367100, 51.750046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999409, 38.198822, 52.234283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915916, 38.586388, 52.287392>,  <44.865822, 38.818928, 52.319256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915916, 38.586388, 52.287392>,  <44.999409, 38.198822, 52.234283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915916, 38.586388, 52.287392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100142, -0.156227, 0.982632,
		0.972832, 0.191813, 0.129639,
		-0.208735, 0.968917, 0.132774,
		44.853294, 38.877064, 52.327225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204197, 38.284981, 52.986507>,  <44.999409, 38.198822, 52.234283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204197, 38.284981, 52.986507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.965694, 38.590195, 52.886696>,  <44.822594, 38.773323, 52.826809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.965694, 38.590195, 52.886696>,  <45.204197, 38.284981, 52.986507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965694, 38.590195, 52.886696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454151, -0.064296, 0.888602,
		0.661990, 0.643152, 0.384869,
		-0.596252, 0.763034, -0.249525,
		44.786819, 38.819103, 52.811840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228310, 38.686684, 53.585987>,  <45.204197, 38.284981, 52.986507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228310, 38.686684, 53.585987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911690, 38.822594, 53.382812>,  <44.721718, 38.904140, 53.260910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911690, 38.822594, 53.382812>,  <45.228310, 38.686684, 53.585987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911690, 38.822594, 53.382812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545438, -0.018005, 0.837958,
		0.275574, 0.940333, 0.199579,
		-0.791553, 0.339778, -0.507932,
		44.674225, 38.924526, 53.230434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951218, 39.140194, 54.101803>,  <45.228310, 38.686684, 53.585987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951218, 39.140194, 54.101803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654682, 39.049011, 53.849308>,  <44.476761, 38.994301, 53.697811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654682, 39.049011, 53.849308>,  <44.951218, 39.140194, 54.101803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654682, 39.049011, 53.849308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661187, 0.086741, 0.745190,
		-0.115115, 0.969801, -0.215024,
		-0.741337, -0.227954, -0.631234,
		44.432281, 38.980625, 53.659939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406918, 39.630421, 54.275867>,  <44.951218, 39.140194, 54.101803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406918, 39.630421, 54.275867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238922, 39.324928, 54.079773>,  <44.138126, 39.141632, 53.962116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238922, 39.324928, 54.079773>,  <44.406918, 39.630421, 54.275867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238922, 39.324928, 54.079773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717314, -0.051549, 0.694841,
		-0.555941, 0.643475, -0.526184,
		-0.419988, -0.763729, -0.490232,
		44.112926, 39.095810, 53.932705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673927, 39.823391, 54.168625>,  <44.406918, 39.630421, 54.275867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673927, 39.823391, 54.168625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695374, 39.426300, 54.125523>,  <43.708241, 39.188046, 54.099663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695374, 39.426300, 54.125523>,  <43.673927, 39.823391, 54.168625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695374, 39.426300, 54.125523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679790, -0.115329, 0.724282,
		-0.731444, 0.034421, -0.681032,
		0.053612, -0.992731, -0.107756,
		43.711456, 39.128479, 54.093197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995388, 39.624283, 54.028748>,  <43.673927, 39.823391, 54.168625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995388, 39.624283, 54.028748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187828, 39.306580, 54.177174>,  <43.303291, 39.115955, 54.266232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187828, 39.306580, 54.177174>,  <42.995388, 39.624283, 54.028748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187828, 39.306580, 54.177174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764077, -0.172377, 0.621668,
		-0.429805, -0.582608, -0.689809,
		0.481096, -0.794263, 0.371069,
		43.332157, 39.068302, 54.288494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452358, 39.174675, 54.113583>,  <42.995388, 39.624283, 54.028748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452358, 39.174675, 54.113583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749874, 39.031960, 54.339672>,  <42.928383, 38.946331, 54.475327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749874, 39.031960, 54.339672>,  <42.452358, 39.174675, 54.113583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749874, 39.031960, 54.339672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664651, -0.305187, 0.681983,
		-0.070826, -0.882928, -0.464135,
		0.743790, -0.356790, 0.565224,
		42.973011, 38.924923, 54.509239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264580, 38.544865, 54.309177>,  <42.452358, 39.174675, 54.113583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264580, 38.544865, 54.309177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532085, 38.659348, 54.583649>,  <42.692589, 38.728039, 54.748333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532085, 38.659348, 54.583649>,  <42.264580, 38.544865, 54.309177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532085, 38.659348, 54.583649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646032, -0.233085, 0.726852,
		0.367970, -0.929384, 0.029022,
		0.668761, 0.286209, 0.686180,
		42.732716, 38.745209, 54.789501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278107, 37.968117, 54.908558>,  <42.264580, 38.544865, 54.309177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278107, 37.968117, 54.908558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477463, 38.263557, 55.090137>,  <42.597076, 38.440823, 55.199085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477463, 38.263557, 55.090137>,  <42.278107, 37.968117, 54.908558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477463, 38.263557, 55.090137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651474, -0.026397, 0.758212,
		0.572000, -0.673623, 0.468025,
		0.498395, 0.738603, 0.453947,
		42.626980, 38.485138, 55.226322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441418, 37.793545, 55.531738>,  <42.278107, 37.968117, 54.908558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441418, 37.793545, 55.531738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426712, 38.193192, 55.539913>,  <42.417889, 38.432980, 55.544819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426712, 38.193192, 55.539913>,  <42.441418, 37.793545, 55.531738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426712, 38.193192, 55.539913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643866, -0.039321, 0.764127,
		0.764255, 0.014936, 0.644742,
		-0.036765, 0.999115, 0.020434,
		42.415684, 38.492928, 55.546043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477230, 37.848911, 56.231895>,  <42.441418, 37.793545, 55.531738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477230, 37.848911, 56.231895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332634, 38.191879, 56.085388>,  <42.245876, 38.397659, 55.997482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332634, 38.191879, 56.085388>,  <42.477230, 37.848911, 56.231895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332634, 38.191879, 56.085388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709156, 0.002199, 0.705048,
		0.605330, 0.514608, 0.607251,
		-0.361488, 0.857423, -0.366269,
		42.224186, 38.449104, 55.975506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434380, 38.234062, 56.789165>,  <42.477230, 37.848911, 56.231895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434380, 38.234062, 56.789165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202713, 38.431404, 56.529579>,  <42.063713, 38.549809, 56.373825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202713, 38.431404, 56.529579>,  <42.434380, 38.234062, 56.789165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202713, 38.431404, 56.529579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652540, 0.196589, 0.731809,
		0.488624, 0.847319, 0.208078,
		-0.579170, 0.493359, -0.648968,
		42.028961, 38.579411, 56.334888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230232, 38.979618, 57.150009>,  <42.434380, 38.234062, 56.789165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230232, 38.979618, 57.150009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009861, 38.868690, 56.835159>,  <41.877640, 38.802135, 56.646248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009861, 38.868690, 56.835159>,  <42.230232, 38.979618, 57.150009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009861, 38.868690, 56.835159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834223, 0.156525, 0.528746,
		-0.023426, 0.947942, -0.317580,
		-0.550929, -0.277319, -0.787128,
		41.844582, 38.785496, 56.599022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933163, 39.552921, 56.883537>,  <42.230232, 38.979618, 57.150009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933163, 39.552921, 56.883537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730927, 39.221931, 56.785839>,  <41.609585, 39.023338, 56.727219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730927, 39.221931, 56.785839>,  <41.933163, 39.552921, 56.883537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730927, 39.221931, 56.785839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636579, 0.166692, 0.752982,
		-0.582362, 0.536183, -0.611033,
		-0.505590, -0.827479, -0.244248,
		41.579250, 38.973686, 56.712566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163544, 39.730534, 56.811249>,  <41.933163, 39.552921, 56.883537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163544, 39.730534, 56.811249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184132, 39.337639, 56.883423>,  <41.196484, 39.101902, 56.926727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184132, 39.337639, 56.883423>,  <41.163544, 39.730534, 56.811249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184132, 39.337639, 56.883423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749455, 0.081423, 0.657030,
		-0.660052, -0.169048, -0.731952,
		0.051472, -0.982239, 0.180438,
		41.199574, 39.042969, 56.937553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468369, 39.578110, 57.086952>,  <41.163544, 39.730534, 56.811249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468369, 39.578110, 57.086952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683990, 39.252541, 57.173622>,  <40.813362, 39.057198, 57.225624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683990, 39.252541, 57.173622>,  <40.468369, 39.578110, 57.086952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683990, 39.252541, 57.173622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605356, -0.195526, 0.771566,
		-0.585633, -0.547077, -0.598114,
		0.539053, -0.813926, 0.216670,
		40.845707, 39.008362, 57.238625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987812, 38.979065, 57.222050>,  <40.468369, 39.578110, 57.086952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987812, 38.979065, 57.222050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337311, 38.876526, 57.387386>,  <40.547009, 38.815002, 57.486588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337311, 38.876526, 57.387386>,  <39.987812, 38.979065, 57.222050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337311, 38.876526, 57.387386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482840, -0.354833, 0.800599,
		-0.058559, -0.899101, -0.433807,
		0.873749, -0.256342, 0.413343,
		40.599434, 38.799622, 57.511391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746140, 38.451687, 57.662716>,  <39.987812, 38.979065, 57.222050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746140, 38.451687, 57.662716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099567, 38.598640, 57.778870>,  <40.311626, 38.686813, 57.848560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099567, 38.598640, 57.778870>,  <39.746140, 38.451687, 57.662716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099567, 38.598640, 57.778870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296810, -0.040277, 0.954087,
		0.362216, -0.929195, 0.073457,
		0.883574, 0.367388, 0.290384,
		40.364639, 38.708858, 57.865986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932755, 38.063004, 58.128201>,  <39.746140, 38.451687, 57.662716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932755, 38.063004, 58.128201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125145, 38.406082, 58.200890>,  <40.240578, 38.611927, 58.244503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125145, 38.406082, 58.200890>,  <39.932755, 38.063004, 58.128201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125145, 38.406082, 58.200890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233728, -0.074331, 0.969457,
		0.845005, -0.508758, 0.164716,
		0.480975, 0.857695, 0.181721,
		40.269436, 38.663391, 58.255405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410614, 38.058815, 58.745865>,  <39.932755, 38.063004, 58.128201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410614, 38.058815, 58.745865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230030, 38.414696, 58.718712>,  <40.121677, 38.628223, 58.702419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230030, 38.414696, 58.718712>,  <40.410614, 38.058815, 58.745865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230030, 38.414696, 58.718712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274759, -0.066231, 0.959230,
		0.848935, 0.451707, 0.274355,
		-0.451462, 0.889705, -0.067885,
		40.094593, 38.681606, 58.698345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654713, 38.516968, 59.345886>,  <40.410614, 38.058815, 58.745865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654713, 38.516968, 59.345886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284630, 38.566345, 59.202358>,  <40.062580, 38.595970, 59.116241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284630, 38.566345, 59.202358>,  <40.654713, 38.516968, 59.345886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284630, 38.566345, 59.202358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378410, -0.229989, 0.896611,
		0.028155, 0.965333, 0.259500,
		-0.925210, 0.123442, -0.358816,
		40.007069, 38.603378, 59.094715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292545, 38.910492, 59.823120>,  <40.654713, 38.516968, 59.345886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292545, 38.910492, 59.823120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014339, 38.697411, 59.630249>,  <39.847416, 38.569561, 59.514526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014339, 38.697411, 59.630249>,  <40.292545, 38.910492, 59.823120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014339, 38.697411, 59.630249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573191, 0.006702, 0.819394,
		-0.433260, 0.846278, -0.310001,
		-0.695513, -0.532700, -0.482175,
		39.805687, 38.537601, 59.485596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589062, 39.262833, 59.773201>,  <40.292545, 38.910492, 59.823120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589062, 39.262833, 59.773201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585159, 38.863075, 59.786552>,  <39.582817, 38.623219, 59.794563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585159, 38.863075, 59.786552>,  <39.589062, 39.262833, 59.773201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585159, 38.863075, 59.786552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513403, 0.033652, 0.857487,
		-0.858092, -0.008769, -0.513421,
		-0.009758, -0.999395, 0.033379,
		39.582233, 38.563255, 59.796566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891193, 39.105373, 59.998379>,  <39.589062, 39.262833, 59.773201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891193, 39.105373, 59.998379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156639, 38.825157, 60.103344>,  <39.315907, 38.657028, 60.166325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156639, 38.825157, 60.103344>,  <38.891193, 39.105373, 59.998379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156639, 38.825157, 60.103344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333838, 0.036594, 0.941920,
		-0.669458, -0.712672, -0.209584,
		0.663610, -0.700542, 0.262415,
		39.355721, 38.614994, 60.182068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466877, 38.677235, 59.432030>,  <38.891193, 39.105373, 59.998379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466877, 38.677235, 59.432030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450989, 39.042320, 59.594696>,  <38.441456, 39.261372, 59.692295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450989, 39.042320, 59.594696>,  <38.466877, 38.677235, 59.432030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450989, 39.042320, 59.594696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845710, 0.247463, -0.472797,
		-0.532163, 0.325139, -0.781721,
		-0.039722, 0.912714, 0.406664,
		38.439072, 39.316135, 59.716694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928680, 39.060932, 59.056488>,  <38.466877, 38.677235, 59.432030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928680, 39.060932, 59.056488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938950, 39.347969, 59.334885>,  <38.945110, 39.520191, 59.501923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938950, 39.347969, 59.334885>,  <38.928680, 39.060932, 59.056488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938950, 39.347969, 59.334885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908356, 0.273956, -0.315969,
		-0.417408, 0.640317, -0.644798,
		0.025674, 0.717595, 0.695988,
		38.946651, 39.563248, 59.543682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030483, 39.694756, 58.645126>,  <38.928680, 39.060932, 59.056488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030483, 39.694756, 58.645126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153587, 39.682037, 59.025501>,  <39.227448, 39.674408, 59.253727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153587, 39.682037, 59.025501>,  <39.030483, 39.694756, 58.645126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153587, 39.682037, 59.025501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923630, 0.249959, -0.290564,
		-0.228456, 0.967734, 0.106293,
		0.307758, -0.031794, 0.950933,
		39.245914, 39.672501, 59.310780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113506, 40.368725, 58.889656>,  <39.030483, 39.694756, 58.645126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113506, 40.368725, 58.889656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348103, 40.140144, 59.119255>,  <39.488861, 40.002995, 59.257015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348103, 40.140144, 59.119255>,  <39.113506, 40.368725, 58.889656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348103, 40.140144, 59.119255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759489, 0.634251, -0.144577,
		-0.281439, 0.520737, 0.805993,
		0.586488, -0.571453, 0.573997,
		39.524048, 39.968708, 59.291454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539528, 40.860054, 59.087269>,  <39.113506, 40.368725, 58.889656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539528, 40.860054, 59.087269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719536, 40.515404, 59.181152>,  <39.827541, 40.308613, 59.237484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719536, 40.515404, 59.181152>,  <39.539528, 40.860054, 59.087269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719536, 40.515404, 59.181152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893018, 0.434336, -0.117778,
		-0.000465, 0.262606, 0.964903,
		0.450021, -0.861621, 0.234713,
		39.854542, 40.256916, 59.251568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031059, 40.755650, 59.708168>,  <39.539528, 40.860054, 59.087269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031059, 40.755650, 59.708168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136200, 40.530754, 59.394531>,  <40.199284, 40.395817, 59.206348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136200, 40.530754, 59.394531>,  <40.031059, 40.755650, 59.708168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136200, 40.530754, 59.394531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769841, 0.612085, -0.180823,
		0.581596, -0.556096, 0.593720,
		0.262852, -0.562236, -0.784092,
		40.215057, 40.362083, 59.159306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785622, 40.809040, 59.688992>,  <40.031059, 40.755650, 59.708168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785622, 40.809040, 59.688992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703842, 40.701164, 59.312595>,  <40.654774, 40.636440, 59.086758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703842, 40.701164, 59.312595>,  <40.785622, 40.809040, 59.688992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703842, 40.701164, 59.312595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655706, 0.676025, -0.336213,
		0.726808, -0.685754, 0.038624,
		-0.204448, -0.269689, -0.940993,
		40.642506, 40.620258, 59.030296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397488, 40.759853, 59.339577>,  <40.785622, 40.809040, 59.688992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397488, 40.759853, 59.339577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147758, 40.811874, 59.031471>,  <40.997921, 40.843086, 58.846607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147758, 40.811874, 59.031471>,  <41.397488, 40.759853, 59.339577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147758, 40.811874, 59.031471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713089, 0.497478, -0.493983,
		0.318943, -0.857672, -0.403330,
		-0.624323, 0.130058, -0.770263,
		40.960461, 40.850891, 58.800392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872852, 40.630402, 58.764538>,  <41.397488, 40.759853, 59.339577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872852, 40.630402, 58.764538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553337, 40.818756, 58.614761>,  <41.361626, 40.931767, 58.524895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553337, 40.818756, 58.614761>,  <41.872852, 40.630402, 58.764538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553337, 40.818756, 58.614761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585479, 0.465297, -0.663863,
		-0.138377, -0.749512, -0.647366,
		-0.798791, 0.470882, -0.374437,
		41.313702, 40.960022, 58.502430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907711, 40.492420, 58.039326>,  <41.872852, 40.630402, 58.764538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907711, 40.492420, 58.039326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666882, 40.810104, 58.072166>,  <41.522385, 41.000713, 58.091873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666882, 40.810104, 58.072166>,  <41.907711, 40.492420, 58.039326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666882, 40.810104, 58.072166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490560, 0.449086, -0.746775,
		-0.629968, -0.409335, -0.659989,
		-0.602073, 0.794208, 0.082107,
		41.486259, 41.048367, 58.096798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736843, 40.602180, 57.360771>,  <41.907711, 40.492420, 58.039326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736843, 40.602180, 57.360771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655968, 40.948868, 57.543167>,  <41.607441, 41.156879, 57.652603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655968, 40.948868, 57.543167>,  <41.736843, 40.602180, 57.360771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655968, 40.948868, 57.543167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395998, 0.498198, -0.771352,
		-0.895715, 0.024611, -0.443948,
		-0.202190, 0.866714, 0.455990,
		41.595310, 41.208881, 57.679962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391487, 41.057545, 56.865986>,  <41.736843, 40.602180, 57.360771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391487, 41.057545, 56.865986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544731, 41.280380, 57.160706>,  <41.636677, 41.414082, 57.337540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544731, 41.280380, 57.160706>,  <41.391487, 41.057545, 56.865986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544731, 41.280380, 57.160706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494099, 0.550355, -0.673034,
		-0.780444, 0.621899, -0.064411,
		0.383111, 0.557091, 0.736801,
		41.659664, 41.447506, 57.381744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356033, 41.753517, 56.534534>,  <41.391487, 41.057545, 56.865986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356033, 41.753517, 56.534534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633175, 41.717316, 56.820686>,  <41.799458, 41.695595, 56.992378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633175, 41.717316, 56.820686>,  <41.356033, 41.753517, 56.534534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633175, 41.717316, 56.820686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662610, 0.471252, -0.582125,
		-0.284442, 0.877344, 0.386473,
		0.692849, -0.090500, 0.715381,
		41.841030, 41.690166, 57.035301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643559, 42.379040, 56.328426>,  <41.356033, 41.753517, 56.534534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643559, 42.379040, 56.328426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880295, 42.231743, 56.615234>,  <42.022339, 42.143364, 56.787319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880295, 42.231743, 56.615234>,  <41.643559, 42.379040, 56.328426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880295, 42.231743, 56.615234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796434, 0.404170, -0.449822,
		-0.124154, 0.837283, 0.532487,
		0.591844, -0.368244, 0.717020,
		42.057846, 42.121269, 56.830341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038128, 42.900547, 56.618050>,  <41.643559, 42.379040, 56.328426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038128, 42.900547, 56.618050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254623, 42.574509, 56.700676>,  <42.384521, 42.378883, 56.750252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254623, 42.574509, 56.700676>,  <42.038128, 42.900547, 56.618050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254623, 42.574509, 56.700676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816572, 0.450871, -0.360453,
		0.200670, 0.363769, 0.909617,
		0.541241, -0.815100, 0.206567,
		42.416996, 42.329979, 56.762646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604897, 43.132458, 57.043320>,  <42.038128, 42.900547, 56.618050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604897, 43.132458, 57.043320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696522, 42.789345, 56.859257>,  <42.751499, 42.583477, 56.748817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696522, 42.789345, 56.859257>,  <42.604897, 43.132458, 57.043320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696522, 42.789345, 56.859257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797207, 0.436575, -0.416970,
		0.558561, -0.271326, 0.783832,
		0.229067, -0.857779, -0.460156,
		42.765244, 42.532013, 56.721210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349102, 42.884293, 57.188747>,  <42.604897, 43.132458, 57.043320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349102, 42.884293, 57.188747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257851, 42.707245, 56.841866>,  <43.203098, 42.601017, 56.633736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257851, 42.707245, 56.841866>,  <43.349102, 42.884293, 57.188747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257851, 42.707245, 56.841866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748810, 0.489513, -0.446835,
		0.622286, -0.751307, 0.219767,
		-0.228132, -0.442623, -0.867203,
		43.189411, 42.574459, 56.581703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917465, 43.109512, 56.904770>,  <43.349102, 42.884293, 57.188747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917465, 43.109512, 56.904770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718185, 42.918304, 56.615410>,  <43.598618, 42.803581, 56.441795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718185, 42.918304, 56.615410>,  <43.917465, 43.109512, 56.904770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718185, 42.918304, 56.615410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678034, 0.305239, -0.668655,
		0.540436, -0.823608, 0.172043,
		-0.498195, -0.478016, -0.723396,
		43.568726, 42.774899, 56.398392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.394909, 42.695839, 56.534122>,  <43.917465, 43.109512, 56.904770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.394909, 42.695839, 56.534122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082130, 42.736076, 56.288055>,  <43.894463, 42.760220, 56.140415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082130, 42.736076, 56.288055>,  <44.394909, 42.695839, 56.534122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082130, 42.736076, 56.288055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623264, 0.110764, -0.774127,
		-0.009737, -0.988742, -0.149311,
		-0.781951, 0.100598, -0.615169,
		43.847546, 42.766254, 56.103504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416763, 42.218361, 56.048000>,  <44.394909, 42.695839, 56.534122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416763, 42.218361, 56.048000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196297, 42.504524, 55.876232>,  <44.064014, 42.676220, 55.773170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196297, 42.504524, 55.876232>,  <44.416763, 42.218361, 56.048000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196297, 42.504524, 55.876232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640580, 0.033022, -0.767180,
		-0.534665, -0.697928, -0.476475,
		-0.551171, 0.715406, -0.429424,
		44.030945, 42.719147, 55.747406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383854, 42.015541, 55.320683>,  <44.416763, 42.218361, 56.048000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383854, 42.015541, 55.320683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.326630, 42.410439, 55.348621>,  <44.292294, 42.647377, 55.365387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.326630, 42.410439, 55.348621>,  <44.383854, 42.015541, 55.320683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.326630, 42.410439, 55.348621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595508, 0.142236, -0.790658,
		-0.790508, -0.071518, -0.608261,
		-0.143063, 0.987246, 0.069849,
		44.283710, 42.706612, 55.369576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332989, 42.208664, 54.652573>,  <44.383854, 42.015541, 55.320683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332989, 42.208664, 54.652573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403999, 42.557861, 54.834282>,  <44.446606, 42.767380, 54.943306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403999, 42.557861, 54.834282>,  <44.332989, 42.208664, 54.652573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403999, 42.557861, 54.834282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621910, 0.258227, -0.739288,
		-0.762700, 0.413761, -0.497082,
		0.177529, 0.872995, 0.454272,
		44.457256, 42.819759, 54.970562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420059, 42.645782, 54.097610>,  <44.332989, 42.208664, 54.652573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.420059, 42.645782, 54.097610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577019, 42.828232, 54.417107>,  <44.671192, 42.937702, 54.608803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577019, 42.828232, 54.417107>,  <44.420059, 42.645782, 54.097610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577019, 42.828232, 54.417107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614274, 0.516393, -0.596663,
		-0.684613, 0.724770, -0.077554,
		0.392395, 0.456122, 0.798736,
		44.694736, 42.965069, 54.656727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379246, 43.353134, 53.922215>,  <44.420059, 42.645782, 54.097610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379246, 43.353134, 53.922215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660217, 43.330032, 54.205978>,  <44.828800, 43.316170, 54.376236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660217, 43.330032, 54.205978>,  <44.379246, 43.353134, 53.922215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660217, 43.330032, 54.205978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645456, 0.471743, -0.600704,
		-0.299965, 0.879843, 0.368643,
		0.702429, -0.057753, 0.709406,
		44.870945, 43.312706, 54.418800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634613, 44.018871, 54.044609>,  <44.379246, 43.353134, 53.922215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634613, 44.018871, 54.044609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923477, 43.774910, 54.175144>,  <45.096798, 43.628532, 54.253464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923477, 43.774910, 54.175144>,  <44.634613, 44.018871, 54.044609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923477, 43.774910, 54.175144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638866, 0.407214, -0.652707,
		0.265200, 0.679848, 0.683722,
		0.722163, -0.609905, 0.326339,
		45.140125, 43.591938, 54.273045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181293, 44.475586, 53.948299>,  <44.634613, 44.018871, 54.044609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181293, 44.475586, 53.948299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321815, 44.101379, 53.963196>,  <45.406128, 43.876854, 53.972134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321815, 44.101379, 53.963196>,  <45.181293, 44.475586, 53.948299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321815, 44.101379, 53.963196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775468, 0.268459, -0.571472,
		0.524626, 0.229640, 0.819777,
		0.351309, -0.935519, 0.037238,
		45.427208, 43.820724, 53.974369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898937, 44.425610, 54.173843>,  <45.181293, 44.475586, 53.948299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898937, 44.425610, 54.173843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831261, 44.114471, 53.931740>,  <45.790657, 43.927788, 53.786480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831261, 44.114471, 53.931740>,  <45.898937, 44.425610, 54.173843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831261, 44.114471, 53.931740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657267, 0.368567, -0.657388,
		0.734422, -0.509036, 0.448895,
		-0.169186, -0.777844, -0.605256,
		45.780506, 43.881119, 53.750164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.540924, 44.320793, 53.907902>,  <45.898937, 44.425610, 54.173843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.540924, 44.320793, 53.907902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331017, 44.090332, 53.657249>,  <46.205074, 43.952057, 53.506859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331017, 44.090332, 53.657249>,  <46.540924, 44.320793, 53.907902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331017, 44.090332, 53.657249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721895, 0.088893, -0.686270,
		0.451099, -0.812494, 0.369273,
		-0.524764, -0.576152, -0.626635,
		46.173588, 43.917488, 53.469257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.982456, 43.767857, 53.619713>,  <46.540924, 44.320793, 53.907902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.982456, 43.767857, 53.619713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673149, 43.794868, 53.367523>,  <46.487564, 43.811077, 53.216209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673149, 43.794868, 53.367523>,  <46.982456, 43.767857, 53.619713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.673149, 43.794868, 53.367523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616320, -0.153656, -0.772360,
		-0.149033, -0.985814, 0.077197,
		-0.773265, 0.067529, -0.630477,
		46.441170, 43.815128, 53.178379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.182610, 43.448769, 53.059223>,  <46.982456, 43.767857, 53.619713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.182610, 43.448769, 53.059223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.872459, 43.640343, 52.894585>,  <46.686371, 43.755287, 52.795799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.872459, 43.640343, 52.894585>,  <47.182610, 43.448769, 53.059223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.872459, 43.640343, 52.894585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459134, -0.019960, -0.888143,
		-0.433579, -0.877623, -0.204420,
		-0.775374, 0.478936, -0.411601,
		46.639847, 43.784023, 52.771103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.979679, 43.053360, 52.506462>,  <47.182610, 43.448769, 53.059223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.979679, 43.053360, 52.506462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.841125, 43.422775, 52.440613>,  <46.757992, 43.644424, 52.401104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.841125, 43.422775, 52.440613>,  <46.979679, 43.053360, 52.506462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.841125, 43.422775, 52.440613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414589, -0.006707, -0.909984,
		-0.841506, -0.383456, -0.380564,
		-0.346387, 0.923535, -0.164620,
		46.737209, 43.699837, 52.391228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.896702, 43.104557, 51.737747>,  <46.979679, 43.053360, 52.506462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.896702, 43.104557, 51.737747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879356, 43.487984, 51.850368>,  <46.868950, 43.718040, 51.917942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879356, 43.487984, 51.850368>,  <46.896702, 43.104557, 51.737747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.879356, 43.487984, 51.850368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439435, 0.271395, -0.856295,
		-0.897227, 0.086588, -0.432997,
		-0.043368, 0.958565, 0.281553,
		46.866344, 43.775555, 51.934834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.773788, 43.386452, 51.093163>,  <46.896702, 43.104557, 51.737747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.773788, 43.386452, 51.093163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938446, 43.672058, 51.319695>,  <47.037239, 43.843422, 51.455616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938446, 43.672058, 51.319695>,  <46.773788, 43.386452, 51.093163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.938446, 43.672058, 51.319695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517014, 0.328784, -0.790315,
		-0.750497, 0.618130, -0.233814,
		0.411643, 0.714014, 0.566333,
		47.061939, 43.886261, 51.489594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.849995, 44.075897, 50.724068>,  <46.773788, 43.386452, 51.093163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.849995, 44.075897, 50.724068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127296, 44.073586, 51.012337>,  <47.293678, 44.072201, 51.185299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127296, 44.073586, 51.012337>,  <46.849995, 44.075897, 50.724068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.127296, 44.073586, 51.012337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686382, 0.310156, -0.657786,
		-0.219721, 0.950668, 0.218980,
		0.693255, -0.005774, 0.720670,
		47.335274, 44.071854, 51.228539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.223801, 44.641159, 50.570538>,  <46.849995, 44.075897, 50.724068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.223801, 44.641159, 50.570538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.444275, 44.420029, 50.820522>,  <47.576561, 44.287350, 50.970512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.444275, 44.420029, 50.820522>,  <47.223801, 44.641159, 50.570538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.444275, 44.420029, 50.820522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798747, 0.133044, -0.586773,
		0.241235, 0.822608, 0.514900,
		0.551189, -0.552825, 0.624960,
		47.609631, 44.254181, 51.008011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.860554, 45.040894, 50.437824>,  <47.223801, 44.641159, 50.570538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.860554, 45.040894, 50.437824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.966911, 44.691139, 50.600185>,  <48.030727, 44.481289, 50.697601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.966911, 44.691139, 50.600185>,  <47.860554, 45.040894, 50.437824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.966911, 44.691139, 50.600185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700228, -0.114208, -0.704725,
		0.662556, 0.471606, 0.581900,
		0.265895, -0.874382, 0.405901,
		48.046680, 44.428825, 50.721954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.621738, 45.049744, 50.474876>,  <47.860554, 45.040894, 50.437824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.621738, 45.049744, 50.474876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.541496, 44.658821, 50.502102>,  <48.493351, 44.424267, 50.518436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.541496, 44.658821, 50.502102>,  <48.621738, 45.049744, 50.474876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.541496, 44.658821, 50.502102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773322, -0.200617, -0.601436,
		0.601442, -0.068016, 0.796016,
		-0.200602, -0.977306, 0.068061,
		48.481316, 44.365631, 50.522522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.218048, 44.703815, 50.783161>,  <48.621738, 45.049744, 50.474876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.218048, 44.703815, 50.783161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.022781, 44.433685, 50.562023>,  <48.905621, 44.271606, 50.429340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.022781, 44.433685, 50.562023>,  <49.218048, 44.703815, 50.783161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.022781, 44.433685, 50.562023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708621, 0.063078, -0.702765,
		0.509464, -0.734822, 0.447754,
		-0.488164, -0.675321, -0.552846,
		48.876331, 44.231091, 50.396168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.721149, 44.267944, 50.574017>,  <49.218048, 44.703815, 50.783161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.721149, 44.267944, 50.574017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.420273, 44.193039, 50.321308>,  <49.239746, 44.148094, 50.169682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.420273, 44.193039, 50.321308>,  <49.721149, 44.267944, 50.574017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.420273, 44.193039, 50.321308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638953, 0.027078, -0.768769,
		0.161073, -0.981936, 0.099288,
		-0.752193, -0.187268, -0.631772,
		49.194614, 44.136860, 50.131775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.943497, 43.708569, 50.115040>,  <49.721149, 44.267944, 50.574017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.943497, 43.708569, 50.115040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.665260, 43.915039, 49.915154>,  <49.498318, 44.038921, 49.795219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.665260, 43.915039, 49.915154>,  <49.943497, 43.708569, 50.115040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.665260, 43.915039, 49.915154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524879, -0.109830, -0.844061,
		-0.490568, -0.849411, -0.194534,
		-0.695589, 0.516176, -0.499718,
		49.456585, 44.069893, 49.765240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.914700, 43.293171, 49.510361>,  <49.943497, 43.708569, 50.115040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.914700, 43.293171, 49.510361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.771240, 43.657867, 49.430271>,  <49.685165, 43.876686, 49.382217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.771240, 43.657867, 49.430271>,  <49.914700, 43.293171, 49.510361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.771240, 43.657867, 49.430271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393045, -0.047054, -0.918315,
		-0.846690, -0.408052, -0.341480,
		-0.358652, 0.911745, -0.200223,
		49.663643, 43.931393, 49.370205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.712402, 43.264576, 48.799519>,  <49.914700, 43.293171, 49.510361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.712402, 43.264576, 48.799519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.729424, 43.658676, 48.865826>,  <49.739635, 43.895134, 48.905609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.729424, 43.658676, 48.865826>,  <49.712402, 43.264576, 48.799519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.729424, 43.658676, 48.865826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408645, 0.134241, -0.902767,
		-0.911701, 0.106157, -0.396904,
		0.042554, 0.985246, 0.165768,
		49.742191, 43.954250, 48.915558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.434982, 43.583202, 48.170837>,  <49.712402, 43.264576, 48.799519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.434982, 43.583202, 48.170837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.657227, 43.848221, 48.371765>,  <49.790573, 44.007233, 48.492321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.657227, 43.848221, 48.371765>,  <49.434982, 43.583202, 48.170837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.657227, 43.848221, 48.371765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544816, 0.166263, -0.821908,
		-0.628069, 0.730336, -0.268587,
		0.555612, 0.662545, 0.502323,
		49.823910, 44.046986, 48.522461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.365982, 44.099499, 47.809338>,  <49.434982, 43.583202, 48.170837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.365982, 44.099499, 47.809338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.698807, 44.184311, 48.014359>,  <49.898502, 44.235199, 48.137371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.698807, 44.184311, 48.014359>,  <49.365982, 44.099499, 47.809338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.698807, 44.184311, 48.014359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456654, 0.262669, -0.849984,
		-0.314855, 0.941301, 0.121732,
		0.832066, 0.212032, 0.512551,
		49.948425, 44.247921, 48.168125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.553757, 44.834740, 47.658062>,  <49.365982, 44.099499, 47.809338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.553757, 44.834740, 47.658062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.893326, 44.679611, 47.801685>,  <50.097069, 44.586533, 47.887859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.893326, 44.679611, 47.801685>,  <49.553757, 44.834740, 47.658062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.893326, 44.679611, 47.801685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502917, 0.383889, -0.774405,
		0.162491, 0.837988, 0.520934,
		0.848923, -0.387821, 0.359060,
		50.148003, 44.563267, 47.909405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.416100, 45.548054, 47.640808>,  <49.553757, 44.834740, 47.658062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.416100, 45.548054, 47.640808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.233269, 45.831795, 47.426182>,  <49.123569, 46.002041, 47.297405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.233269, 45.831795, 47.426182>,  <49.416100, 45.548054, 47.640808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.233269, 45.831795, 47.426182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868217, -0.224877, 0.442301,
		0.193086, 0.668020, 0.718657,
		-0.457075, 0.709352, -0.536565,
		49.096146, 46.044601, 47.265213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.089111, 45.918159, 48.149544>,  <49.416100, 45.548054, 47.640808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.089111, 45.918159, 48.149544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.900780, 45.988770, 47.803791>,  <48.787781, 46.031136, 47.596340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.900780, 45.988770, 47.803791>,  <49.089111, 45.918159, 48.149544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.900780, 45.988770, 47.803791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881894, -0.120938, 0.455672,
		-0.024099, 0.976838, 0.212617,
		-0.470832, 0.176524, -0.864382,
		48.759529, 46.041725, 47.544476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.747444, 46.472202, 48.226917>,  <49.089111, 45.918159, 48.149544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.747444, 46.472202, 48.226917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.548157, 46.251839, 47.959103>,  <48.428585, 46.119621, 47.798416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.548157, 46.251839, 47.959103>,  <48.747444, 46.472202, 48.226917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.548157, 46.251839, 47.959103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806840, 0.011842, 0.590651,
		-0.317468, 0.834480, -0.450396,
		-0.498220, -0.550910, -0.669533,
		48.398689, 46.086567, 47.758244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.120903, 46.854694, 48.176968>,  <48.747444, 46.472202, 48.226917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.120903, 46.854694, 48.176968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.053993, 46.479111, 48.056717>,  <48.013847, 46.253761, 47.984566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.053993, 46.479111, 48.056717>,  <48.120903, 46.854694, 48.176968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.053993, 46.479111, 48.056717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839774, -0.024053, 0.542402,
		-0.516524, 0.343188, -0.784490,
		-0.167277, -0.938959, -0.300624,
		48.003811, 46.197422, 47.966530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.375572, 46.896343, 48.106064>,  <48.120903, 46.854694, 48.176968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.375572, 46.896343, 48.106064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430641, 46.504372, 48.048405>,  <47.463684, 46.269188, 48.013809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430641, 46.504372, 48.048405>,  <47.375572, 46.896343, 48.106064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.430641, 46.504372, 48.048405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921575, -0.180065, 0.343912,
		-0.362966, 0.085491, -0.927872,
		0.137676, -0.979933, -0.144144,
		47.471943, 46.210392, 48.005161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.780163, 46.703056, 47.816105>,  <47.375572, 46.896343, 48.106064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.780163, 46.703056, 47.816105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969215, 46.400124, 47.996357>,  <47.082645, 46.218365, 48.104507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969215, 46.400124, 47.996357>,  <46.780163, 46.703056, 47.816105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.969215, 46.400124, 47.996357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834794, -0.220898, 0.504304,
		-0.282382, -0.614533, -0.736620,
		0.472630, -0.757333, 0.450631,
		47.111004, 46.172924, 48.131546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.255650, 46.167847, 47.776726>,  <46.780163, 46.703056, 47.816105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.255650, 46.167847, 47.776726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502136, 46.089264, 48.081799>,  <46.650028, 46.042114, 48.264843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502136, 46.089264, 48.081799>,  <46.255650, 46.167847, 47.776726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502136, 46.089264, 48.081799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751415, -0.436719, 0.494623,
		0.235906, -0.877885, -0.416734,
		0.616218, -0.196455, 0.762680,
		46.687000, 46.030327, 48.310604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121841, 45.514885, 47.970268>,  <46.255650, 46.167847, 47.776726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.121841, 45.514885, 47.970268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.300507, 45.678810, 48.288399>,  <46.407707, 45.777164, 48.479279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.300507, 45.678810, 48.288399>,  <46.121841, 45.514885, 47.970268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.300507, 45.678810, 48.288399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588353, -0.535152, 0.606180,
		0.674040, -0.738692, 0.002081,
		0.446667, 0.409814, 0.795325,
		46.434505, 45.801754, 48.526997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982761, 45.011196, 48.505756>,  <46.121841, 45.514885, 47.970268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982761, 45.011196, 48.505756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.130135, 45.323296, 48.707932>,  <46.218559, 45.510555, 48.829235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.130135, 45.323296, 48.707932>,  <45.982761, 45.011196, 48.505756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.130135, 45.323296, 48.707932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445478, -0.329023, 0.832642,
		0.815969, -0.531936, 0.226360,
		0.368434, 0.780249, 0.505439,
		46.240665, 45.557369, 48.859562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.242916, 44.765240, 49.146881>,  <45.982761, 45.011196, 48.505756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.242916, 44.765240, 49.146881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144493, 45.151009, 49.185574>,  <46.085442, 45.382469, 49.208790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144493, 45.151009, 49.185574>,  <46.242916, 44.765240, 49.146881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144493, 45.151009, 49.185574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518392, -0.215263, 0.827606,
		0.818979, 0.153493, 0.552913,
		-0.246053, 0.964418, 0.096727,
		46.070679, 45.440334, 49.214592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366779, 44.936226, 49.769371>,  <46.242916, 44.765240, 49.146881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366779, 44.936226, 49.769371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089523, 45.212555, 49.687088>,  <45.923168, 45.378353, 49.637718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089523, 45.212555, 49.687088>,  <46.366779, 44.936226, 49.769371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089523, 45.212555, 49.687088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423458, -0.159327, 0.891795,
		0.583299, 0.705249, 0.402972,
		-0.693142, 0.690825, -0.205708,
		45.881580, 45.419804, 49.625374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328640, 45.245148, 50.319012>,  <46.366779, 44.936226, 49.769371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328640, 45.245148, 50.319012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995079, 45.342392, 50.120819>,  <45.794945, 45.400738, 50.001904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995079, 45.342392, 50.120819>,  <46.328640, 45.245148, 50.319012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.995079, 45.342392, 50.120819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488826, 0.091471, 0.867573,
		0.256242, 0.965675, 0.042563,
		-0.833900, 0.243114, -0.495486,
		45.744907, 45.415325, 49.972172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065563, 45.890690, 50.544521>,  <46.328640, 45.245148, 50.319012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065563, 45.890690, 50.544521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745552, 45.711327, 50.385078>,  <45.553547, 45.603710, 50.289413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745552, 45.711327, 50.385078>,  <46.065563, 45.890690, 50.544521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.745552, 45.711327, 50.385078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516854, 0.177724, 0.837423,
		-0.304666, 0.875981, -0.373946,
		-0.800026, -0.448409, -0.398608,
		45.505543, 45.576805, 50.265495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.462780, 46.335686, 50.696243>,  <46.065563, 45.890690, 50.544521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.462780, 46.335686, 50.696243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306843, 45.979355, 50.602905>,  <45.213280, 45.765556, 50.546902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306843, 45.979355, 50.602905>,  <45.462780, 46.335686, 50.696243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306843, 45.979355, 50.602905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552890, 0.023780, 0.832915,
		-0.736436, 0.453717, -0.501800,
		-0.389840, -0.890829, -0.233343,
		45.189892, 45.712105, 50.532902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660229, 46.395195, 50.699512>,  <45.462780, 46.335686, 50.696243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660229, 46.395195, 50.699512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774345, 46.015228, 50.750530>,  <44.842815, 45.787247, 50.781143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774345, 46.015228, 50.750530>,  <44.660229, 46.395195, 50.699512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774345, 46.015228, 50.750530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626162, -0.083973, 0.775158,
		-0.725625, -0.301011, -0.618758,
		0.285290, -0.949916, 0.127549,
		44.859932, 45.730255, 50.788795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082905, 46.029648, 50.738350>,  <44.660229, 46.395195, 50.699512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082905, 46.029648, 50.738350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340218, 45.758690, 50.881088>,  <44.494606, 45.596115, 50.966732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340218, 45.758690, 50.881088>,  <44.082905, 46.029648, 50.738350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340218, 45.758690, 50.881088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571738, -0.115017, 0.812334,
		-0.509225, -0.726575, -0.461278,
		0.643277, -0.677392, 0.356841,
		44.533199, 45.555473, 50.988140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616470, 45.531353, 51.087685>,  <44.082905, 46.029648, 50.738350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616470, 45.531353, 51.087685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.978088, 45.463776, 51.244736>,  <44.195061, 45.423229, 51.338966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.978088, 45.463776, 51.244736>,  <43.616470, 45.531353, 51.087685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978088, 45.463776, 51.244736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421881, -0.205076, 0.883154,
		-0.068680, -0.964056, -0.256670,
		0.904047, -0.168939, 0.392632,
		44.249302, 45.413094, 51.362526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524529, 44.902061, 51.399593>,  <43.616470, 45.531353, 51.087685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524529, 44.902061, 51.399593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832771, 45.084808, 51.577332>,  <44.017715, 45.194454, 51.683975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832771, 45.084808, 51.577332>,  <43.524529, 44.902061, 51.399593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832771, 45.084808, 51.577332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343682, -0.289248, 0.893430,
		0.536701, -0.841196, -0.065881,
		0.770607, 0.456863, 0.444344,
		44.063953, 45.221867, 51.710636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771362, 44.400925, 51.787991>,  <43.524529, 44.902061, 51.399593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771362, 44.400925, 51.787991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921677, 44.742065, 51.932999>,  <44.011864, 44.946751, 52.020004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921677, 44.742065, 51.932999>,  <43.771362, 44.400925, 51.787991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921677, 44.742065, 51.932999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175259, -0.318730, 0.931502,
		0.909983, -0.413580, 0.029696,
		0.375786, 0.852855, 0.362523,
		44.034412, 44.997921, 52.041756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.259140, 44.250515, 52.301231>,  <43.771362, 44.400925, 51.787991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.259140, 44.250515, 52.301231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109974, 44.614258, 52.374985>,  <44.020473, 44.832504, 52.419235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109974, 44.614258, 52.374985>,  <44.259140, 44.250515, 52.301231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109974, 44.614258, 52.374985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284429, -0.301184, 0.910158,
		0.883195, 0.286970, 0.370965,
		-0.372917, 0.909360, 0.184382,
		43.998100, 44.887066, 52.430298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339455, 44.242897, 53.010349>,  <44.259140, 44.250515, 52.301231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339455, 44.242897, 53.010349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102432, 44.556694, 52.937199>,  <43.960217, 44.744972, 52.893307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102432, 44.556694, 52.937199>,  <44.339455, 44.242897, 53.010349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.102432, 44.556694, 52.937199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506183, -0.186028, 0.842124,
		0.626621, 0.591577, 0.507330,
		-0.592559, 0.784494, -0.182877,
		43.924664, 44.792042, 52.882336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287384, 44.830627, 53.631676>,  <44.339455, 44.242897, 53.010349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287384, 44.830627, 53.631676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964130, 44.818794, 53.396374>,  <43.770180, 44.811695, 53.255192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964130, 44.818794, 53.396374>,  <44.287384, 44.830627, 53.631676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964130, 44.818794, 53.396374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571408, -0.202902, 0.795188,
		-0.142882, 0.978752, 0.147068,
		-0.808132, -0.029582, -0.588258,
		43.721691, 44.809921, 53.219898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735600, 45.127701, 54.108948>,  <44.287384, 44.830627, 53.631676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735600, 45.127701, 54.108948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545925, 44.927513, 53.819210>,  <43.432121, 44.807400, 53.645367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545925, 44.927513, 53.819210>,  <43.735600, 45.127701, 54.108948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545925, 44.927513, 53.819210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662410, -0.339157, 0.667971,
		-0.579966, 0.796558, -0.170691,
		-0.474186, -0.500468, -0.724348,
		43.403667, 44.777374, 53.601906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084602, 45.256569, 54.221100>,  <43.735600, 45.127701, 54.108948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084602, 45.256569, 54.221100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083672, 44.927322, 53.993954>,  <43.083115, 44.729774, 53.857666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083672, 44.927322, 53.993954>,  <43.084602, 45.256569, 54.221100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083672, 44.927322, 53.993954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721123, -0.392041, 0.571214,
		-0.692803, 0.410827, -0.592660,
		-0.002323, -0.823119, -0.567864,
		43.082973, 44.680386, 53.823593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402603, 45.152012, 54.055183>,  <43.084602, 45.256569, 54.221100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402603, 45.152012, 54.055183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548912, 44.789894, 53.968788>,  <42.636696, 44.572624, 53.916950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548912, 44.789894, 53.968788>,  <42.402603, 45.152012, 54.055183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548912, 44.789894, 53.968788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768464, -0.424687, 0.478648,
		-0.525046, -0.009095, -0.851025,
		0.365773, -0.905295, -0.215991,
		42.658646, 44.518307, 53.903992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841061, 44.773464, 53.623989>,  <42.402603, 45.152012, 54.055183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841061, 44.773464, 53.623989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105095, 44.542084, 53.815693>,  <42.263515, 44.403255, 53.930714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105095, 44.542084, 53.815693>,  <41.841061, 44.773464, 53.623989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105095, 44.542084, 53.815693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750904, -0.490358, 0.442371,
		-0.020880, -0.651879, -0.758036,
		0.660081, -0.578449, 0.479260,
		42.303120, 44.368549, 53.959473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591530, 44.044571, 53.472858>,  <41.841061, 44.773464, 53.623989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591530, 44.044571, 53.472858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829147, 44.029739, 53.794289>,  <41.971718, 44.020840, 53.987148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829147, 44.029739, 53.794289>,  <41.591530, 44.044571, 53.472858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829147, 44.029739, 53.794289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725778, -0.455511, 0.515515,
		0.346921, -0.889457, -0.297509,
		0.594047, -0.037082, 0.803575,
		42.007362, 44.018616, 54.035362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418209, 43.527191, 53.786312>,  <41.591530, 44.044571, 53.472858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418209, 43.527191, 53.786312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593399, 43.705513, 54.098579>,  <41.698513, 43.812508, 54.285938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593399, 43.705513, 54.098579>,  <41.418209, 43.527191, 53.786312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593399, 43.705513, 54.098579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694173, -0.384074, 0.608779,
		0.571231, -0.808544, 0.141254,
		0.437972, 0.445808, 0.780664,
		41.724792, 43.839256, 54.332779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297432, 43.063301, 54.361248>,  <41.418209, 43.527191, 53.786312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297432, 43.063301, 54.361248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421959, 43.385086, 54.563606>,  <41.496674, 43.578156, 54.685020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421959, 43.385086, 54.563606>,  <41.297432, 43.063301, 54.361248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421959, 43.385086, 54.563606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649589, -0.208416, 0.731161,
		0.693626, -0.556244, 0.457685,
		0.311316, 0.804459, 0.505893,
		41.515354, 43.626423, 54.715374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673325, 42.819893, 54.990490>,  <41.297432, 43.063301, 54.361248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673325, 42.819893, 54.990490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532455, 43.188889, 55.053726>,  <41.447933, 43.410286, 55.091667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532455, 43.188889, 55.053726>,  <41.673325, 42.819893, 54.990490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532455, 43.188889, 55.053726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610843, -0.354525, 0.707943,
		0.709116, 0.152749, 0.688348,
		-0.352174, 0.922486, 0.158093,
		41.426804, 43.465633, 55.101154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599777, 42.865536, 55.778347>,  <41.673325, 42.819893, 54.990490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599777, 42.865536, 55.778347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374130, 43.141655, 55.597122>,  <41.238743, 43.307327, 55.488388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374130, 43.141655, 55.597122>,  <41.599777, 42.865536, 55.778347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374130, 43.141655, 55.597122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785078, -0.278442, 0.553283,
		0.255777, 0.667806, 0.699009,
		-0.564119, 0.690293, -0.453061,
		41.204895, 43.348743, 55.461205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214870, 43.105183, 56.363495>,  <41.599777, 42.865536, 55.778347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214870, 43.105183, 56.363495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011711, 43.195236, 56.030903>,  <40.889816, 43.249268, 55.831348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011711, 43.195236, 56.030903>,  <41.214870, 43.105183, 56.363495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011711, 43.195236, 56.030903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834609, -0.367538, 0.410297,
		-0.213228, 0.902348, 0.374570,
		-0.507899, 0.225133, -0.831477,
		40.859341, 43.262775, 55.781460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638809, 43.179840, 56.624710>,  <41.214870, 43.105183, 56.363495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638809, 43.179840, 56.624710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529224, 43.157776, 56.240646>,  <40.463474, 43.144539, 56.010208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529224, 43.157776, 56.240646>,  <40.638809, 43.179840, 56.624710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529224, 43.157776, 56.240646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908689, -0.312150, 0.277211,
		-0.315003, 0.948430, 0.035397,
		-0.273964, -0.055158, -0.960157,
		40.447037, 43.141228, 55.952599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033310, 43.514923, 56.608112>,  <40.638809, 43.179840, 56.624710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033310, 43.514923, 56.608112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018005, 43.269325, 56.292759>,  <40.008823, 43.121967, 56.103546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018005, 43.269325, 56.292759>,  <40.033310, 43.514923, 56.608112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018005, 43.269325, 56.292759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982449, -0.121028, 0.141938,
		-0.182566, 0.779976, -0.598587,
		-0.038262, -0.613995, -0.788382,
		40.006527, 43.085125, 56.056244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405972, 43.686520, 56.156784>,  <40.033310, 43.514923, 56.608112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405972, 43.686520, 56.156784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504433, 43.304161, 56.092693>,  <39.563511, 43.074745, 56.054237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504433, 43.304161, 56.092693>,  <39.405972, 43.686520, 56.156784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504433, 43.304161, 56.092693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957832, -0.265189, 0.110601,
		-0.148213, 0.126245, -0.980864,
		0.246152, -0.955896, -0.160226,
		39.578278, 43.017391, 56.044624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879002, 43.429581, 55.572941>,  <39.405972, 43.686520, 56.156784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879002, 43.429581, 55.572941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032497, 43.137817, 55.799461>,  <39.124596, 42.962757, 55.935375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032497, 43.137817, 55.799461>,  <38.879002, 43.429581, 55.572941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032497, 43.137817, 55.799461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921135, -0.345657, 0.178974,
		0.065202, -0.590324, -0.804529,
		0.383744, -0.729410, 0.566306,
		39.147621, 42.918995, 55.969353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289227, 43.176701, 55.875729>,  <38.879002, 43.429581, 55.572941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289227, 43.176701, 55.875729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563679, 42.957703, 56.067341>,  <38.728352, 42.826305, 56.182308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563679, 42.957703, 56.067341>,  <38.289227, 43.176701, 55.875729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563679, 42.957703, 56.067341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718428, -0.406424, 0.564517,
		-0.114380, -0.731484, -0.672197,
		0.686132, -0.547495, 0.479032,
		38.769520, 42.793453, 56.211052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924786, 42.618176, 56.040897>,  <38.289227, 43.176701, 55.875729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924786, 42.618176, 56.040897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263344, 42.599022, 56.253059>,  <38.466476, 42.587528, 56.380356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263344, 42.599022, 56.253059>,  <37.924786, 42.618176, 56.040897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263344, 42.599022, 56.253059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507583, -0.373965, 0.776215,
		0.161181, -0.926206, -0.340828,
		0.846393, -0.047887, 0.530402,
		38.517262, 42.584656, 56.412178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367611, 42.172058, 56.196190>,  <37.924786, 42.618176, 56.040897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367611, 42.172058, 56.196190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104790, 42.085884, 55.907227>,  <36.947098, 42.034180, 55.733849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104790, 42.085884, 55.907227>,  <37.367611, 42.172058, 56.196190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104790, 42.085884, 55.907227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743001, -0.023089, -0.668892,
		0.127427, -0.976244, 0.175242,
		-0.657048, -0.215440, -0.722408,
		36.907677, 42.021252, 55.690506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533066, 41.472771, 55.867466>,  <37.367611, 42.172058, 56.196190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533066, 41.472771, 55.867466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317936, 41.708168, 55.625999>,  <37.188858, 41.849407, 55.481117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317936, 41.708168, 55.625999>,  <37.533066, 41.472771, 55.867466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317936, 41.708168, 55.625999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638506, -0.183232, -0.747486,
		-0.550504, -0.787464, -0.277211,
		-0.537825, 0.588495, -0.603670,
		37.156590, 41.884716, 55.444897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404640, 41.164856, 55.282421>,  <37.533066, 41.472771, 55.867466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404640, 41.164856, 55.282421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323059, 41.529236, 55.138996>,  <37.274113, 41.747864, 55.052940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323059, 41.529236, 55.138996>,  <37.404640, 41.164856, 55.282421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323059, 41.529236, 55.138996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695600, -0.122883, -0.707842,
		-0.688872, -0.393781, -0.608598,
		-0.203949, 0.910953, -0.358565,
		37.261875, 41.802521, 55.031425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378971, 41.113724, 54.471928>,  <37.404640, 41.164856, 55.282421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378971, 41.113724, 54.471928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405910, 41.505203, 54.549507>,  <37.422073, 41.740089, 54.596054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405910, 41.505203, 54.549507>,  <37.378971, 41.113724, 54.471928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405910, 41.505203, 54.549507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641857, 0.106325, -0.759418,
		-0.763861, 0.175635, -0.621022,
		0.067350, 0.978697, 0.193950,
		37.426117, 41.798813, 54.607693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473675, 41.424206, 53.867996>,  <37.378971, 41.113724, 54.471928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473675, 41.424206, 53.867996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596905, 41.715408, 54.112976>,  <37.670845, 41.890129, 54.259964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596905, 41.715408, 54.112976>,  <37.473675, 41.424206, 53.867996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596905, 41.715408, 54.112976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560571, 0.381226, -0.735138,
		-0.768666, 0.569802, -0.290651,
		0.308079, 0.728006, 0.612450,
		37.689327, 41.933811, 54.296711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457668, 42.038475, 53.457542>,  <37.473675, 41.424206, 53.867996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457668, 42.038475, 53.457542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709133, 42.118797, 53.758064>,  <37.860012, 42.166992, 53.938377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709133, 42.118797, 53.758064>,  <37.457668, 42.038475, 53.457542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709133, 42.118797, 53.758064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661693, 0.369464, -0.652425,
		-0.408595, 0.907288, 0.099392,
		0.628659, 0.200810, 0.751308,
		37.897732, 42.179039, 53.983456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642471, 42.760654, 53.308762>,  <37.457668, 42.038475, 53.457542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642471, 42.760654, 53.308762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906559, 42.579216, 53.548214>,  <38.065010, 42.470352, 53.691887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906559, 42.579216, 53.548214>,  <37.642471, 42.760654, 53.308762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906559, 42.579216, 53.548214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737735, 0.242109, -0.630183,
		0.140915, 0.857691, 0.494479,
		0.660219, -0.453597, 0.598632,
		38.104626, 42.443138, 53.727802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116310, 43.213551, 53.302502>,  <37.642471, 42.760654, 53.308762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116310, 43.213551, 53.302502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307076, 42.887054, 53.432922>,  <38.421535, 42.691158, 53.511177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307076, 42.887054, 53.432922>,  <38.116310, 43.213551, 53.302502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307076, 42.887054, 53.432922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780356, 0.222495, -0.584415,
		0.404477, 0.533151, 0.743067,
		0.476910, -0.816239, 0.326054,
		38.450150, 42.642181, 53.530739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739277, 43.493343, 53.457428>,  <38.116310, 43.213551, 53.302502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739277, 43.493343, 53.457428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787640, 43.100410, 53.400284>,  <38.816658, 42.864651, 53.365997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787640, 43.100410, 53.400284>,  <38.739277, 43.493343, 53.457428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787640, 43.100410, 53.400284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742967, 0.184990, -0.643256,
		0.658317, -0.028364, 0.752206,
		0.120905, -0.982331, -0.142856,
		38.823910, 42.805710, 53.357426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447224, 43.414394, 53.570114>,  <38.739277, 43.493343, 53.457428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447224, 43.414394, 53.570114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324108, 43.083694, 53.381752>,  <39.250237, 42.885277, 53.268734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324108, 43.083694, 53.381752>,  <39.447224, 43.414394, 53.570114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324108, 43.083694, 53.381752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874243, -0.050442, -0.482862,
		0.375451, -0.560307, 0.738304,
		-0.307792, -0.826748, -0.470905,
		39.231770, 42.835670, 53.240479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965740, 42.856518, 53.620033>,  <39.447224, 43.414394, 53.570114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965740, 42.856518, 53.620033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763035, 42.771622, 53.285816>,  <39.641411, 42.720684, 53.085285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763035, 42.771622, 53.285816>,  <39.965740, 42.856518, 53.620033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763035, 42.771622, 53.285816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842145, 0.085359, -0.532452,
		0.184332, -0.973481, 0.135483,
		-0.506768, -0.212244, -0.835547,
		39.611004, 42.707951, 53.035152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416752, 42.363106, 53.292934>,  <39.965740, 42.856518, 53.620033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416752, 42.363106, 53.292934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164169, 42.540894, 53.038784>,  <40.012619, 42.647568, 52.886292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164169, 42.540894, 53.038784>,  <40.416752, 42.363106, 53.292934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164169, 42.540894, 53.038784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768333, 0.248194, -0.589969,
		-0.104527, -0.860723, -0.498226,
		-0.631457, 0.444471, -0.635380,
		39.974731, 42.674236, 52.848171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682350, 42.212074, 52.604397>,  <40.416752, 42.363106, 53.292934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682350, 42.212074, 52.604397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470737, 42.551132, 52.588272>,  <40.343769, 42.754566, 52.578598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470737, 42.551132, 52.588272>,  <40.682350, 42.212074, 52.604397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470737, 42.551132, 52.588272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654114, 0.377058, -0.655715,
		-0.540611, -0.373266, -0.753931,
		-0.529032, 0.847644, -0.040316,
		40.312027, 42.805424, 52.576176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661980, 42.268803, 51.874607>,  <40.682350, 42.212074, 52.604397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661980, 42.268803, 51.874607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556812, 42.622581, 52.028816>,  <40.493713, 42.834850, 52.121342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556812, 42.622581, 52.028816>,  <40.661980, 42.268803, 51.874607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556812, 42.622581, 52.028816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651157, 0.457517, -0.605536,
		-0.711947, 0.091828, -0.696203,
		-0.262919, 0.884447, 0.385522,
		40.477936, 42.887917, 52.144474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442276, 42.723083, 51.310276>,  <40.661980, 42.268803, 51.874607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442276, 42.723083, 51.310276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550259, 42.976250, 51.600529>,  <40.615047, 43.128151, 51.774681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550259, 42.976250, 51.600529>,  <40.442276, 42.723083, 51.310276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550259, 42.976250, 51.600529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387169, 0.618654, -0.683643,
		-0.881603, 0.465496, -0.078036,
		0.269956, 0.632915, 0.725632,
		40.631245, 43.166122, 51.818218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347050, 43.365139, 51.012520>,  <40.442276, 42.723083, 51.310276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347050, 43.365139, 51.012520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599411, 43.413391, 51.319092>,  <40.750828, 43.442341, 51.503033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599411, 43.413391, 51.319092>,  <40.347050, 43.365139, 51.012520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599411, 43.413391, 51.319092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564612, 0.606146, -0.560178,
		-0.532139, 0.786152, 0.314313,
		0.630905, 0.120628, 0.766425,
		40.788681, 43.449581, 51.549019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418434, 44.133648, 51.149288>,  <40.347050, 43.365139, 51.012520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418434, 44.133648, 51.149288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742989, 43.962242, 51.308304>,  <40.937721, 43.859398, 51.403713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742989, 43.962242, 51.308304>,  <40.418434, 44.133648, 51.149288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742989, 43.962242, 51.308304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583836, 0.626924, -0.515851,
		-0.028178, 0.650649, 0.758855,
		0.811382, -0.428512, 0.397538,
		40.986404, 43.833687, 51.427567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853065, 44.703987, 51.280052>,  <40.418434, 44.133648, 51.149288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853065, 44.703987, 51.280052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081150, 44.375961, 51.260624>,  <41.217999, 44.179146, 51.248966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081150, 44.375961, 51.260624>,  <40.853065, 44.703987, 51.280052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081150, 44.375961, 51.260624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696179, 0.513763, -0.501381,
		0.436116, 0.252080, 0.863863,
		0.570209, -0.820063, -0.048567,
		41.252213, 44.129944, 51.246056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513321, 44.980469, 51.422680>,  <40.853065, 44.703987, 51.280052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513321, 44.980469, 51.422680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565689, 44.635445, 51.227188>,  <41.597111, 44.428432, 51.109894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565689, 44.635445, 51.227188>,  <41.513321, 44.980469, 51.422680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565689, 44.635445, 51.227188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705597, 0.427367, -0.565235,
		0.696414, -0.270843, 0.664569,
		0.130925, -0.862556, -0.488730,
		41.604965, 44.376678, 51.080570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179581, 44.811085, 51.414154>,  <41.513321, 44.980469, 51.422680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179581, 44.811085, 51.414154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029785, 44.587021, 51.118591>,  <41.939907, 44.452583, 50.941254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029785, 44.587021, 51.118591>,  <42.179581, 44.811085, 51.414154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029785, 44.587021, 51.118591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629334, 0.431682, -0.646212,
		0.680955, -0.707014, 0.190871,
		-0.374485, -0.560163, -0.738904,
		41.917439, 44.418972, 50.896919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853611, 44.511677, 51.028294>,  <42.179581, 44.811085, 51.414154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853611, 44.511677, 51.028294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540493, 44.454262, 50.786095>,  <42.352623, 44.419811, 50.640774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540493, 44.454262, 50.786095>,  <42.853611, 44.511677, 51.028294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540493, 44.454262, 50.786095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568492, 0.230782, -0.789656,
		0.253083, -0.962360, -0.099055,
		-0.782793, -0.143536, -0.605501,
		42.305656, 44.411201, 50.604443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159336, 44.220249, 50.364902>,  <42.853611, 44.511677, 51.028294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159336, 44.220249, 50.364902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810051, 44.383369, 50.258171>,  <42.600479, 44.481239, 50.194130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810051, 44.383369, 50.258171>,  <43.159336, 44.220249, 50.364902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810051, 44.383369, 50.258171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404744, 0.301892, -0.863159,
		-0.271440, -0.861721, -0.428670,
		-0.873214, 0.407797, -0.266830,
		42.548088, 44.505707, 50.178123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216774, 44.035145, 49.711052>,  <43.159336, 44.220249, 50.364902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216774, 44.035145, 49.711052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918205, 44.300575, 49.731129>,  <42.739063, 44.459831, 49.743176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918205, 44.300575, 49.731129>,  <43.216774, 44.035145, 49.711052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918205, 44.300575, 49.731129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272035, 0.373097, -0.887015,
		-0.607328, -0.648435, -0.459004,
		-0.746424, 0.663574, 0.050196,
		42.694279, 44.499649, 49.746189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954506, 44.049000, 49.104362>,  <43.216774, 44.035145, 49.711052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954506, 44.049000, 49.104362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865715, 44.413864, 49.242168>,  <42.812439, 44.632782, 49.324852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865715, 44.413864, 49.242168>,  <42.954506, 44.049000, 49.104362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865715, 44.413864, 49.242168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337346, 0.403358, -0.850588,
		-0.914834, -0.072593, -0.397251,
		-0.221981, 0.912158, 0.344517,
		42.799122, 44.687511, 49.345524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636719, 44.405518, 48.606426>,  <42.954506, 44.049000, 49.104362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636719, 44.405518, 48.606426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800400, 44.681145, 48.845669>,  <42.898609, 44.846523, 48.989216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800400, 44.681145, 48.845669>,  <42.636719, 44.405518, 48.606426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800400, 44.681145, 48.845669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548480, 0.338099, -0.764761,
		-0.729195, 0.640992, -0.239591,
		0.409200, 0.689071, 0.598111,
		42.923161, 44.887867, 49.025101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516876, 44.952484, 48.167812>,  <42.636719, 44.405518, 48.606426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516876, 44.952484, 48.167812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787956, 45.056114, 48.443085>,  <42.950603, 45.118294, 48.608250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787956, 45.056114, 48.443085>,  <42.516876, 44.952484, 48.167812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787956, 45.056114, 48.443085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529242, 0.477887, -0.701090,
		-0.510510, 0.839347, 0.186752,
		0.677703, 0.259077, 0.688184,
		42.991268, 45.133839, 48.649540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536922, 45.638237, 48.065262>,  <42.516876, 44.952484, 48.167812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536922, 45.638237, 48.065262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882626, 45.544380, 48.243248>,  <43.090050, 45.488064, 48.350040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882626, 45.544380, 48.243248>,  <42.536922, 45.638237, 48.065262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882626, 45.544380, 48.243248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499320, 0.292698, -0.815480,
		0.061107, 0.926968, 0.370130,
		0.864260, -0.234645, 0.444968,
		43.141903, 45.473988, 48.376740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989857, 46.186062, 47.810658>,  <42.536922, 45.638237, 48.065262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989857, 46.186062, 47.810658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201035, 45.871178, 47.938145>,  <43.327740, 45.682247, 48.014637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201035, 45.871178, 47.938145>,  <42.989857, 46.186062, 47.810658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201035, 45.871178, 47.938145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633619, 0.115203, -0.765019,
		0.565510, 0.605834, 0.559610,
		0.527944, -0.787206, 0.318720,
		43.359417, 45.635017, 48.033760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594597, 46.492207, 47.782261>,  <42.989857, 46.186062, 47.810658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594597, 46.492207, 47.782261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620430, 46.093231, 47.769955>,  <43.635929, 45.853848, 47.762569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620430, 46.093231, 47.769955>,  <43.594597, 46.492207, 47.782261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620430, 46.093231, 47.769955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661879, 0.065888, -0.746709,
		0.746824, 0.027855, 0.664439,
		0.064578, -0.997438, -0.030769,
		43.639805, 45.793999, 47.760723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308144, 46.390190, 47.800724>,  <43.594597, 46.492207, 47.782261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308144, 46.390190, 47.800724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128635, 46.067116, 47.647751>,  <44.020931, 45.873272, 47.555969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128635, 46.067116, 47.647751>,  <44.308144, 46.390190, 47.800724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128635, 46.067116, 47.647751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621914, 0.025040, -0.782685,
		0.641738, -0.589084, 0.491073,
		-0.448771, -0.807684, -0.382429,
		43.994003, 45.824810, 47.533024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872849, 46.005833, 47.550488>,  <44.308144, 46.390190, 47.800724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872849, 46.005833, 47.550488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.541363, 45.884392, 47.362419>,  <44.342472, 45.811527, 47.249577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.541363, 45.884392, 47.362419>,  <44.872849, 46.005833, 47.550488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541363, 45.884392, 47.362419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462771, 0.100755, -0.880734,
		0.314762, -0.947458, 0.057000,
		-0.828715, -0.303599, -0.470170,
		44.292747, 45.793312, 47.221367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048603, 45.410881, 47.020351>,  <44.872849, 46.005833, 47.550488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048603, 45.410881, 47.020351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685516, 45.541130, 46.914505>,  <44.467667, 45.619282, 46.850998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685516, 45.541130, 46.914505>,  <45.048603, 45.410881, 47.020351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685516, 45.541130, 46.914505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302466, 0.070703, -0.950534,
		-0.290810, -0.942851, -0.162669,
		-0.907713, 0.325627, -0.264620,
		44.413200, 45.638817, 46.835117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765030, 45.049667, 46.386086>,  <45.048603, 45.410881, 47.020351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765030, 45.049667, 46.386086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583672, 45.405319, 46.411022>,  <44.474857, 45.618710, 46.425983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583672, 45.405319, 46.411022>,  <44.765030, 45.049667, 46.386086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583672, 45.405319, 46.411022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071290, 0.105898, -0.991818,
		-0.888455, -0.445239, -0.111400,
		-0.453393, 0.889128, 0.062344,
		44.447655, 45.672058, 46.429726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438259, 45.011673, 45.725933>,  <44.765030, 45.049667, 46.386086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438259, 45.011673, 45.725933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393631, 45.390999, 45.844765>,  <44.366856, 45.618595, 45.916065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393631, 45.390999, 45.844765>,  <44.438259, 45.011673, 45.725933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393631, 45.390999, 45.844765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019450, 0.300971, -0.953435,
		-0.993566, -0.100595, -0.052023,
		-0.111568, 0.948313, 0.297078,
		44.360161, 45.675491, 45.933887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990467, 45.234695, 45.325962>,  <44.438259, 45.011673, 45.725933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990467, 45.234695, 45.325962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186287, 45.565094, 45.437725>,  <44.303780, 45.763332, 45.504784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186287, 45.565094, 45.437725>,  <43.990467, 45.234695, 45.325962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186287, 45.565094, 45.437725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147098, 0.237604, -0.960160,
		-0.859476, 0.511150, -0.005182,
		0.489554, 0.825996, 0.279404,
		44.333153, 45.812893, 45.521545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843052, 45.744404, 44.821629>,  <43.990467, 45.234695, 45.325962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843052, 45.744404, 44.821629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157074, 45.907135, 45.008461>,  <44.345490, 46.004776, 45.120560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157074, 45.907135, 45.008461>,  <43.843052, 45.744404, 44.821629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157074, 45.907135, 45.008461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360673, 0.312818, -0.878670,
		-0.503583, 0.858273, 0.098847,
		0.785060, 0.406832, 0.467086,
		44.392593, 46.029186, 45.148586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825237, 46.439861, 44.580269>,  <43.843052, 45.744404, 44.821629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825237, 46.439861, 44.580269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198505, 46.379768, 44.710880>,  <44.422466, 46.343712, 44.789246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198505, 46.379768, 44.710880>,  <43.825237, 46.439861, 44.580269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198505, 46.379768, 44.710880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355427, 0.250540, -0.900500,
		0.053476, 0.956378, 0.287194,
		0.933173, -0.150232, 0.326525,
		44.478458, 46.334698, 44.808838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194366, 46.941986, 44.323994>,  <43.825237, 46.439861, 44.580269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194366, 46.941986, 44.323994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470093, 46.667870, 44.417988>,  <44.635529, 46.503399, 44.474384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470093, 46.667870, 44.417988>,  <44.194366, 46.941986, 44.323994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470093, 46.667870, 44.417988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441472, 0.140167, -0.886260,
		0.574407, 0.714654, 0.399156,
		0.689318, -0.685290, 0.234987,
		44.676888, 46.462284, 44.488483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795723, 47.333538, 44.320808>,  <44.194366, 46.941986, 44.323994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795723, 47.333538, 44.320808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880974, 46.949142, 44.250286>,  <44.932125, 46.718506, 44.207973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880974, 46.949142, 44.250286>,  <44.795723, 47.333538, 44.320808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880974, 46.949142, 44.250286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484189, 0.260619, -0.835248,
		0.848609, 0.092652, 0.520844,
		0.213130, -0.960986, -0.176302,
		44.944912, 46.660847, 44.197395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519787, 47.356678, 44.126518>,  <44.795723, 47.333538, 44.320808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519787, 47.356678, 44.126518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420876, 47.008362, 43.956539>,  <45.361530, 46.799374, 43.854549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420876, 47.008362, 43.956539>,  <45.519787, 47.356678, 44.126518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420876, 47.008362, 43.956539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460003, 0.280495, -0.842449,
		0.852791, -0.403794, 0.331207,
		-0.247274, -0.870789, -0.424950,
		45.346695, 46.747124, 43.829056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.771893, 38.556343, 49.828110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.082054, 38.504852, 50.075390>,  <42.268150, 38.473957, 50.223759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.082054, 38.504852, 50.075390>,  <41.771893, 38.556343, 49.828110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082054, 38.504852, 50.075390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606766, 0.423005, -0.672980,
		-0.174873, 0.896937, 0.406107,
		0.775406, -0.128726, 0.618203,
		42.314674, 38.466236, 50.260849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205376, 39.229393, 49.805172>,  <41.771893, 38.556343, 49.828110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205376, 39.229393, 49.805172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.445099, 38.951317, 49.963940>,  <42.588932, 38.784473, 50.059200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.445099, 38.951317, 49.963940>,  <42.205376, 39.229393, 49.805172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445099, 38.951317, 49.963940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766640, 0.355708, -0.534542,
		0.230419, 0.624651, 0.746136,
		0.599308, -0.695186, 0.396920,
		42.624893, 38.742760, 50.083015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735584, 39.584541, 50.156422>,  <42.205376, 39.229393, 49.805172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735584, 39.584541, 50.156422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.880676, 39.221794, 50.070606>,  <42.967731, 39.004147, 50.019115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.880676, 39.221794, 50.070606>,  <42.735584, 39.584541, 50.156422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880676, 39.221794, 50.070606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730767, 0.419661, -0.538390,
		0.578281, 0.038509, 0.814928,
		0.362727, -0.906864, -0.214541,
		42.989494, 38.949734, 50.006245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390934, 39.630508, 50.317154>,  <42.735584, 39.584541, 50.156422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390934, 39.630508, 50.317154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.351173, 39.343231, 50.041672>,  <43.327316, 39.170864, 49.876381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.351173, 39.343231, 50.041672>,  <43.390934, 39.630508, 50.317154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351173, 39.343231, 50.041672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692240, 0.447279, -0.566344,
		0.714789, -0.533044, 0.452704,
		-0.099401, -0.718196, -0.688704,
		43.321354, 39.127773, 49.835060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132721, 39.461117, 50.081562>,  <43.390934, 39.630508, 50.317154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132721, 39.461117, 50.081562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.893974, 39.320793, 49.792931>,  <43.750725, 39.236599, 49.619751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.893974, 39.320793, 49.792931>,  <44.132721, 39.461117, 50.081562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893974, 39.320793, 49.792931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634647, 0.343815, -0.692109,
		0.490887, -0.871049, 0.017426,
		-0.596870, -0.350807, -0.721582,
		43.714912, 39.215549, 49.576454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557472, 38.974804, 49.652409>,  <44.132721, 39.461117, 50.081562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557472, 38.974804, 49.652409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.254509, 39.095100, 49.420586>,  <44.072731, 39.167278, 49.281490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.254509, 39.095100, 49.420586>,  <44.557472, 38.974804, 49.652409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.254509, 39.095100, 49.420586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652091, 0.303046, -0.694939,
		-0.033366, -0.904276, -0.425641,
		-0.757406, 0.300744, -0.579559,
		44.027287, 39.185322, 49.246719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758377, 38.843319, 48.959068>,  <44.557472, 38.974804, 49.652409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758377, 38.843319, 48.959068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.455048, 39.096542, 48.896858>,  <44.273048, 39.248474, 48.859531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.455048, 39.096542, 48.896858>,  <44.758377, 38.843319, 48.959068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455048, 39.096542, 48.896858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505178, 0.419917, -0.753966,
		-0.411997, -0.650315, -0.638239,
		-0.758323, 0.633056, -0.155521,
		44.227551, 39.286461, 48.850201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800415, 38.889595, 48.282951>,  <44.758377, 38.843319, 48.959068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800415, 38.889595, 48.282951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.562912, 39.195755, 48.382248>,  <44.420410, 39.379452, 48.441826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.562912, 39.195755, 48.382248>,  <44.800415, 38.889595, 48.282951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562912, 39.195755, 48.382248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352901, 0.524960, -0.774518,
		-0.723127, -0.372273, -0.581808,
		-0.593758, 0.765395, 0.248237,
		44.384785, 39.425373, 48.456718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520988, 39.162292, 47.599182>,  <44.800415, 38.889595, 48.282951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520988, 39.162292, 47.599182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.477852, 39.457336, 47.865807>,  <44.451969, 39.634361, 48.025780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.477852, 39.457336, 47.865807>,  <44.520988, 39.162292, 47.599182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477852, 39.457336, 47.865807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510635, 0.616368, -0.599452,
		-0.853008, 0.275722, -0.443120,
		-0.107843, 0.737610, 0.666560,
		44.445499, 39.678619, 48.065773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197819, 39.678596, 47.239571>,  <44.520988, 39.162292, 47.599182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197819, 39.678596, 47.239571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.371887, 39.829033, 47.566784>,  <44.476330, 39.919296, 47.763111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.371887, 39.829033, 47.566784>,  <44.197819, 39.678596, 47.239571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371887, 39.829033, 47.566784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451994, 0.694530, -0.559758,
		-0.778671, 0.613337, 0.132246,
		0.435170, 0.376093, 0.818035,
		44.502438, 39.941860, 47.812195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010670, 40.382023, 47.262302>,  <44.197819, 39.678596, 47.239571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010670, 40.382023, 47.262302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.363380, 40.356354, 47.449215>,  <44.575008, 40.340954, 47.561363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.363380, 40.356354, 47.449215>,  <44.010670, 40.382023, 47.262302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363380, 40.356354, 47.449215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387816, 0.662506, -0.640847,
		-0.268454, 0.746303, 0.609068,
		0.881777, -0.064168, 0.467281,
		44.627914, 40.337105, 47.589397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231918, 41.047131, 47.201256>,  <44.010670, 40.382023, 47.262302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231918, 41.047131, 47.201256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.566177, 40.870346, 47.331711>,  <44.766731, 40.764275, 47.409985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.566177, 40.870346, 47.331711>,  <44.231918, 41.047131, 47.201256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566177, 40.870346, 47.331711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549237, 0.665890, -0.504905,
		0.005973, 0.601050, 0.799189,
		0.835645, -0.441960, 0.326142,
		44.816872, 40.737759, 47.429554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791965, 41.644592, 47.463154>,  <44.231918, 41.047131, 47.201256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791965, 41.644592, 47.463154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.985847, 41.313232, 47.350853>,  <45.102177, 41.114418, 47.283474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.985847, 41.313232, 47.350853>,  <44.791965, 41.644592, 47.463154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985847, 41.313232, 47.350853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646882, 0.555549, -0.522407,
		0.588729, 0.071604, 0.805153,
		0.484708, -0.828395, -0.280749,
		45.131260, 41.064713, 47.266628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530537, 41.839718, 47.459026>,  <44.791965, 41.644592, 47.463154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530537, 41.839718, 47.459026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.502296, 41.509331, 47.235317>,  <45.485352, 41.311100, 47.101089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.502296, 41.509331, 47.235317>,  <45.530537, 41.839718, 47.459026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502296, 41.509331, 47.235317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766661, 0.313767, -0.560162,
		0.638159, -0.468322, 0.611087,
		-0.070597, -0.825969, -0.559277,
		45.481117, 41.261539, 47.067535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163063, 41.645020, 47.411987>,  <45.530537, 41.839718, 47.459026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163063, 41.645020, 47.411987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.000893, 41.455910, 47.099037>,  <45.903591, 41.342442, 46.911266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.000893, 41.455910, 47.099037>,  <46.163063, 41.645020, 47.411987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000893, 41.455910, 47.099037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788072, 0.252927, -0.561222,
		0.463217, -0.844103, 0.270038,
		-0.405429, -0.472777, -0.782374,
		45.879265, 41.314075, 46.864326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660595, 41.268711, 47.169491>,  <46.163063, 41.645020, 47.411987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.660595, 41.268711, 47.169491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.417152, 41.292282, 46.852978>,  <46.271088, 41.306423, 46.663071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.417152, 41.292282, 46.852978>,  <46.660595, 41.268711, 47.169491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417152, 41.292282, 46.852978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789068, 0.149858, -0.595747,
		0.083475, -0.986950, -0.137701,
		-0.608608, 0.058925, -0.791280,
		46.234570, 41.309959, 46.615593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.996338, 40.891579, 46.542316>,  <46.660595, 41.268711, 47.169491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.996338, 40.891579, 46.542316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.731895, 41.148666, 46.387478>,  <46.573231, 41.302917, 46.294575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.731895, 41.148666, 46.387478>,  <46.996338, 40.891579, 46.542316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.731895, 41.148666, 46.387478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544695, 0.056323, -0.836741,
		-0.515986, -0.764029, -0.387321,
		-0.661110, 0.642719, -0.387101,
		46.533562, 41.341480, 46.271347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.983223, 40.650673, 45.909454>,  <46.996338, 40.891579, 46.542316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.983223, 40.650673, 45.909454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.830856, 41.018707, 45.872921>,  <46.739437, 41.239529, 45.851002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.830856, 41.018707, 45.872921>,  <46.983223, 40.650673, 45.909454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.830856, 41.018707, 45.872921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609636, 0.175657, -0.772974,
		-0.695162, -0.350114, -0.627830,
		-0.380912, 0.920090, -0.091332,
		46.716583, 41.294735, 45.845520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.847275, 40.653595, 45.206005>,  <46.983223, 40.650673, 45.909454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.847275, 40.653595, 45.206005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.895607, 41.024574, 45.347561>,  <46.924606, 41.247162, 45.432495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.895607, 41.024574, 45.347561>,  <46.847275, 40.653595, 45.206005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895607, 41.024574, 45.347561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408475, 0.278463, -0.869256,
		-0.904736, 0.249588, -0.345193,
		0.120832, 0.927450, 0.353886,
		46.931858, 41.302811, 45.453728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.589710, 41.112965, 44.702305>,  <46.847275, 40.653595, 45.206005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.589710, 41.112965, 44.702305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.831482, 41.352600, 44.912354>,  <46.976547, 41.496384, 45.038383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.831482, 41.352600, 44.912354>,  <46.589710, 41.112965, 44.702305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831482, 41.352600, 44.912354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349251, 0.393170, -0.850553,
		-0.716022, 0.697500, 0.028411,
		0.604431, 0.599092, 0.525121,
		47.012810, 41.532330, 45.069889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.584766, 41.805290, 44.407200>,  <46.589710, 41.112965, 44.702305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.584766, 41.805290, 44.407200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.914047, 41.817146, 44.633991>,  <47.111614, 41.824261, 44.770065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.914047, 41.817146, 44.633991>,  <46.584766, 41.805290, 44.407200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.914047, 41.817146, 44.633991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466490, 0.533911, -0.705214,
		-0.323615, 0.845021, 0.425691,
		0.823202, 0.029637, 0.566975,
		47.161007, 41.826038, 44.804085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.705067, 42.413738, 44.388031>,  <46.584766, 41.805290, 44.407200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.705067, 42.413738, 44.388031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.052711, 42.248970, 44.497551>,  <47.261299, 42.150108, 44.563263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.052711, 42.248970, 44.497551>,  <46.705067, 42.413738, 44.388031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.052711, 42.248970, 44.497551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459027, 0.465561, -0.756668,
		0.184216, 0.783311, 0.593707,
		0.869114, -0.411918, 0.273798,
		47.313446, 42.125393, 44.579689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.050304, 42.526314, 44.147015>,  <46.705067, 42.413738, 44.388031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.050304, 42.526314, 44.147015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.791107, 42.778664, 43.976318>,  <45.635590, 42.930073, 43.873901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.791107, 42.778664, 43.976318>,  <46.050304, 42.526314, 44.147015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791107, 42.778664, 43.976318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695054, -0.260696, 0.670027,
		0.311453, 0.730779, 0.607419,
		-0.647994, 0.630872, -0.426737,
		45.596710, 42.967926, 43.848297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735764, 42.792122, 44.771645>,  <46.050304, 42.526314, 44.147015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735764, 42.792122, 44.771645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.489670, 42.928322, 44.487236>,  <45.342014, 43.010040, 44.316589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.489670, 42.928322, 44.487236>,  <45.735764, 42.792122, 44.771645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.489670, 42.928322, 44.487236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756975, -0.003260, 0.653435,
		0.220175, 0.940240, 0.259753,
		-0.615233, 0.340497, -0.711021,
		45.305099, 43.030472, 44.273930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386421, 43.304016, 45.077553>,  <45.735764, 42.792122, 44.771645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386421, 43.304016, 45.077553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.149670, 43.173859, 44.782585>,  <45.007618, 43.095764, 44.605602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.149670, 43.173859, 44.782585>,  <45.386421, 43.304016, 45.077553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149670, 43.173859, 44.782585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775901, -0.017761, 0.630605,
		-0.218294, 0.945411, -0.241963,
		-0.591883, -0.325396, -0.737422,
		44.972103, 43.076241, 44.561359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724602, 43.763199, 45.094601>,  <45.386421, 43.304016, 45.077553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724602, 43.763199, 45.094601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.663719, 43.413681, 44.909859>,  <44.627190, 43.203968, 44.799011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.663719, 43.413681, 44.909859>,  <44.724602, 43.763199, 45.094601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663719, 43.413681, 44.909859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936983, -0.021113, 0.348736,
		-0.314475, 0.485833, -0.815519,
		-0.152209, -0.873797, -0.461857,
		44.618057, 43.151543, 44.771301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002964, 43.796352, 45.006359>,  <44.724602, 43.763199, 45.094601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002964, 43.796352, 45.006359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.103607, 43.410942, 44.969883>,  <44.163994, 43.179695, 44.947998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.103607, 43.410942, 44.969883>,  <44.002964, 43.796352, 45.006359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103607, 43.410942, 44.969883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866637, -0.266241, 0.421967,
		-0.430853, -0.027144, -0.902014,
		0.251607, -0.963524, -0.091187,
		44.179089, 43.121883, 44.942528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501350, 43.571793, 44.597664>,  <44.002964, 43.796352, 45.006359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501350, 43.571793, 44.597664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.650482, 43.265320, 44.807030>,  <43.739964, 43.081436, 44.932648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.650482, 43.265320, 44.807030>,  <43.501350, 43.571793, 44.597664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650482, 43.265320, 44.807030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919758, -0.230597, 0.317599,
		-0.122642, -0.599822, -0.790678,
		0.372831, -0.766184, 0.523411,
		43.762333, 43.035465, 44.964054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096203, 42.968784, 44.465839>,  <43.501350, 43.571793, 44.597664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096203, 42.968784, 44.465839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.264374, 42.859818, 44.812023>,  <43.365276, 42.794437, 45.019733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.264374, 42.859818, 44.812023>,  <43.096203, 42.968784, 44.465839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264374, 42.859818, 44.812023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844012, -0.467493, 0.262859,
		0.332991, -0.840975, -0.426471,
		0.420430, -0.272417, 0.865464,
		43.390503, 42.778091, 45.071663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918804, 42.234867, 44.626251>,  <43.096203, 42.968784, 44.465839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918804, 42.234867, 44.626251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.042595, 42.399315, 44.969227>,  <43.116871, 42.497982, 45.175011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.042595, 42.399315, 44.969227>,  <42.918804, 42.234867, 44.626251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042595, 42.399315, 44.969227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703496, -0.507690, 0.497337,
		0.639780, -0.757120, 0.132103,
		0.309477, 0.411121, 0.857441,
		43.135437, 42.522652, 45.226460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883930, 41.626152, 45.092327>,  <42.918804, 42.234867, 44.626251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883930, 41.626152, 45.092327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.916965, 41.954948, 45.317719>,  <42.936787, 42.152225, 45.452953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.916965, 41.954948, 45.317719>,  <42.883930, 41.626152, 45.092327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916965, 41.954948, 45.317719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730908, -0.334395, 0.594940,
		0.677461, -0.460983, 0.573186,
		0.082586, 0.821994, 0.563475,
		42.941742, 42.201546, 45.486763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081963, 41.376091, 45.724037>,  <42.883930, 41.626152, 45.092327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081963, 41.376091, 45.724037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.904846, 41.726463, 45.800644>,  <42.798576, 41.936687, 45.846607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.904846, 41.726463, 45.800644>,  <43.081963, 41.376091, 45.724037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904846, 41.726463, 45.800644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640016, -0.458362, 0.616671,
		0.627947, 0.150481, 0.763569,
		-0.442788, 0.875933, 0.191516,
		42.772011, 41.989243, 45.858097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171726, 41.418167, 46.418137>,  <43.081963, 41.376091, 45.724037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171726, 41.418167, 46.418137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.893425, 41.688515, 46.320862>,  <42.726444, 41.850723, 46.262497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.893425, 41.688515, 46.320862>,  <43.171726, 41.418167, 46.418137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893425, 41.688515, 46.320862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522057, -0.243270, 0.817481,
		0.493346, 0.695720, 0.522094,
		-0.695748, 0.675865, -0.243190,
		42.684700, 41.891273, 46.247906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136127, 41.889488, 47.048603>,  <43.171726, 41.418167, 46.418137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136127, 41.889488, 47.048603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.804283, 41.873329, 46.825848>,  <42.605179, 41.863636, 46.692196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.804283, 41.873329, 46.825848>,  <43.136127, 41.889488, 47.048603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804283, 41.873329, 46.825848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553202, -0.075629, 0.829607,
		-0.075629, 0.996317, 0.040396,
		-0.829607, -0.040396, -0.556885,
		42.555401, 41.861210, 46.658783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693485, 42.332649, 47.329781>,  <43.136127, 41.889488, 47.048603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693485, 42.332649, 47.329781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.443077, 42.095879, 47.126717>,  <42.292831, 41.953815, 47.004879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.443077, 42.095879, 47.126717>,  <42.693485, 42.332649, 47.329781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443077, 42.095879, 47.126717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619712, -0.017519, 0.784634,
		-0.473340, 0.805801, -0.355857,
		-0.626024, -0.591927, -0.507657,
		42.255268, 41.918301, 46.974419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120361, 42.553268, 47.575485>,  <42.693485, 42.332649, 47.329781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120361, 42.553268, 47.575485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.024426, 42.200058, 47.414116>,  <41.966866, 41.988132, 47.317295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.024426, 42.200058, 47.414116>,  <42.120361, 42.553268, 47.575485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024426, 42.200058, 47.414116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611975, -0.185070, 0.768918,
		-0.753633, 0.431301, -0.496001,
		-0.239840, -0.883022, -0.403420,
		41.952473, 41.935150, 47.293091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449429, 42.389992, 47.728519>,  <42.120361, 42.553268, 47.575485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449429, 42.389992, 47.728519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.565956, 42.016060, 47.647293>,  <41.635872, 41.791702, 47.598557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.565956, 42.016060, 47.647293>,  <41.449429, 42.389992, 47.728519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565956, 42.016060, 47.647293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506687, -0.330834, 0.796127,
		-0.811421, -0.129035, -0.570041,
		0.291317, -0.934826, -0.203065,
		41.653351, 41.735611, 47.586372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881985, 41.970016, 47.821968>,  <41.449429, 42.389992, 47.728519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881985, 41.970016, 47.821968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.167908, 41.691353, 47.846378>,  <41.339462, 41.524155, 47.861027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.167908, 41.691353, 47.846378>,  <40.881985, 41.970016, 47.821968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167908, 41.691353, 47.846378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513555, -0.463689, 0.721979,
		-0.474676, -0.547413, -0.689218,
		0.714804, -0.696658, 0.061024,
		41.382351, 41.482357, 47.864689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483673, 41.351391, 47.843834>,  <40.881985, 41.970016, 47.821968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483673, 41.351391, 47.843834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.851864, 41.254898, 47.966820>,  <41.072777, 41.197002, 48.040611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.851864, 41.254898, 47.966820>,  <40.483673, 41.351391, 47.843834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851864, 41.254898, 47.966820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390285, -0.607768, 0.691589,
		0.020032, -0.756588, -0.653585,
		0.920476, -0.241231, 0.307460,
		41.128006, 41.182529, 48.059059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551590, 40.642403, 47.766621>,  <40.483673, 41.351391, 47.843834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551590, 40.642403, 47.766621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.797329, 40.764450, 48.057682>,  <40.944771, 40.837681, 48.232319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.797329, 40.764450, 48.057682>,  <40.551590, 40.642403, 47.766621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797329, 40.764450, 48.057682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337830, -0.731687, 0.592034,
		0.713059, -0.609536, -0.346428,
		0.614344, 0.305122, 0.727656,
		40.981632, 40.855988, 48.275978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.843185, 40.012695, 48.155220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.927002, 40.322754, 48.393631>,  <40.977291, 40.508789, 48.536678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.927002, 40.322754, 48.393631>,  <40.843185, 40.012695, 48.155220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927002, 40.322754, 48.393631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241351, -0.549697, 0.799739,
		0.947545, -0.311430, 0.071898,
		0.209540, 0.775142, 0.596027,
		40.989864, 40.555298, 48.572437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225849, 39.758472, 48.715675>,  <40.843185, 40.012695, 48.155220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225849, 39.758472, 48.715675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.063278, 40.093704, 48.861240>,  <40.965736, 40.294846, 48.948578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.063278, 40.093704, 48.861240>,  <41.225849, 39.758472, 48.715675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063278, 40.093704, 48.861240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209149, -0.473053, 0.855849,
		0.889422, 0.271730, 0.367546,
		-0.406429, 0.838083, 0.363912,
		40.941349, 40.345131, 48.970413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509583, 39.822472, 49.425682>,  <41.225849, 39.758472, 48.715675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509583, 39.822472, 49.425682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185467, 40.056618, 49.414539>,  <40.990997, 40.197105, 49.407856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185467, 40.056618, 49.414539>,  <41.509583, 39.822472, 49.425682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185467, 40.056618, 49.414539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292609, -0.362951, 0.884673,
		0.507747, 0.724994, 0.465379,
		-0.810292, 0.585364, -0.027853,
		40.942379, 40.232227, 49.406185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452835, 39.995560, 50.166290>,  <41.509583, 39.822472, 49.425682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452835, 39.995560, 50.166290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.107918, 40.101364, 49.993553>,  <40.900967, 40.164845, 49.889912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.107918, 40.101364, 49.993553>,  <41.452835, 39.995560, 50.166290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107918, 40.101364, 49.993553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491638, -0.232751, 0.839118,
		0.121440, 0.935876, 0.330740,
		-0.862291, 0.264507, -0.431846,
		40.849232, 40.180717, 49.863998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129047, 40.407639, 50.663754>,  <41.452835, 39.995560, 50.166290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129047, 40.407639, 50.663754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.839825, 40.273735, 50.422050>,  <40.666290, 40.193394, 50.277031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.839825, 40.273735, 50.422050>,  <41.129047, 40.407639, 50.663754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839825, 40.273735, 50.422050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535549, -0.280846, 0.796437,
		-0.436320, 0.899477, 0.023785,
		-0.723057, -0.334763, -0.604253,
		40.622906, 40.173306, 50.240776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514523, 40.832993, 50.883461>,  <41.129047, 40.407639, 50.663754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514523, 40.832993, 50.883461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.383682, 40.504501, 50.696445>,  <40.305180, 40.307407, 50.584236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.383682, 40.504501, 50.696445>,  <40.514523, 40.832993, 50.883461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383682, 40.504501, 50.696445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667410, -0.149507, 0.729529,
		-0.669008, 0.550669, -0.499191,
		-0.327096, -0.821226, -0.467543,
		40.285553, 40.258133, 50.556183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843189, 40.914433, 50.754326>,  <40.514523, 40.832993, 50.883461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843189, 40.914433, 50.754326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.892487, 40.517944, 50.735153>,  <39.922066, 40.280052, 50.723648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.892487, 40.517944, 50.735153>,  <39.843189, 40.914433, 50.754326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892487, 40.517944, 50.735153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669142, -0.118672, 0.733598,
		-0.732844, -0.058337, -0.677891,
		0.123243, -0.991219, -0.047932,
		39.929459, 40.220577, 50.720776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171291, 40.646214, 50.802860>,  <39.843189, 40.914433, 50.754326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171291, 40.646214, 50.802860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.391113, 40.320427, 50.877300>,  <39.523006, 40.124954, 50.921967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.391113, 40.320427, 50.877300>,  <39.171291, 40.646214, 50.802860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391113, 40.320427, 50.877300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613118, -0.241854, 0.752059,
		-0.567517, -0.527400, -0.632276,
		0.549555, -0.814466, 0.186103,
		39.555981, 40.076088, 50.933132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652668, 40.131359, 50.857388>,  <39.171291, 40.646214, 50.802860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652668, 40.131359, 50.857388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989334, 40.012070, 51.037460>,  <39.191334, 39.940495, 51.145504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989334, 40.012070, 51.037460>,  <38.652668, 40.131359, 50.857388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989334, 40.012070, 51.037460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520103, -0.223495, 0.824344,
		-0.145226, -0.927962, -0.343215,
		0.841666, -0.298223, 0.450178,
		39.241833, 39.922604, 51.172512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479973, 39.482956, 51.288654>,  <38.652668, 40.131359, 50.857388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479973, 39.482956, 51.288654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816494, 39.557274, 51.491707>,  <39.018406, 39.601864, 51.613541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816494, 39.557274, 51.491707>,  <38.479973, 39.482956, 51.288654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816494, 39.557274, 51.491707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420902, -0.364105, 0.830824,
		0.339196, -0.912638, -0.228120,
		0.841301, 0.185796, 0.507634,
		39.068886, 39.613014, 51.643997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662094, 38.820557, 51.659523>,  <38.479973, 39.482956, 51.288654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662094, 38.820557, 51.659523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.827129, 39.138206, 51.838020>,  <38.926151, 39.328796, 51.945118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.827129, 39.138206, 51.838020>,  <38.662094, 38.820557, 51.659523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827129, 39.138206, 51.838020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439570, -0.255504, 0.861102,
		0.797843, -0.551432, 0.243658,
		0.412584, 0.794128, 0.446245,
		38.950905, 39.376446, 51.971893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827896, 38.569420, 52.350700>,  <38.662094, 38.820557, 51.659523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827896, 38.569420, 52.350700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.813301, 38.968987, 52.362297>,  <38.804543, 39.208725, 52.369255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.813301, 38.968987, 52.362297>,  <38.827896, 38.569420, 52.350700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813301, 38.968987, 52.362297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578660, -0.044771, 0.814339,
		0.814752, 0.012943, 0.579665,
		-0.036492, 0.998913, 0.028988,
		38.802353, 39.268661, 52.370995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009373, 38.790482, 53.024685>,  <38.827896, 38.569420, 52.350700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009373, 38.790482, 53.024685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.800468, 39.097313, 52.875641>,  <38.675125, 39.281410, 52.786213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.800468, 39.097313, 52.875641>,  <39.009373, 38.790482, 53.024685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800468, 39.097313, 52.875641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568853, 0.012159, 0.822349,
		0.635336, 0.641440, 0.430003,
		-0.522259, 0.767077, -0.372610,
		38.643791, 39.327435, 52.763859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881863, 39.177578, 53.643509>,  <39.009373, 38.790482, 53.024685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881863, 39.177578, 53.643509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.633232, 39.359276, 53.388229>,  <38.484055, 39.468296, 53.235062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.633232, 39.359276, 53.388229>,  <38.881863, 39.177578, 53.643509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633232, 39.359276, 53.388229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723133, -0.019477, 0.690434,
		0.301196, 0.890664, 0.340586,
		-0.621578, 0.454245, -0.638202,
		38.446758, 39.495548, 53.196770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683624, 39.674091, 53.988819>,  <38.881863, 39.177578, 53.643509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683624, 39.674091, 53.988819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410110, 39.633171, 53.699829>,  <38.246002, 39.608620, 53.526436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410110, 39.633171, 53.699829>,  <38.683624, 39.674091, 53.988819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410110, 39.633171, 53.699829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726293, 0.000111, 0.687386,
		-0.070238, 0.994754, -0.074375,
		-0.683788, -0.102299, -0.722474,
		38.204975, 39.602482, 53.483086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198090, 40.204582, 54.151474>,  <38.683624, 39.674091, 53.988819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198090, 40.204582, 54.151474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.022591, 39.926544, 53.923672>,  <37.917290, 39.759720, 53.786991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.022591, 39.926544, 53.923672>,  <38.198090, 40.204582, 54.151474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022591, 39.926544, 53.923672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736593, -0.084819, 0.670996,
		-0.514713, 0.713894, -0.474790,
		-0.438749, -0.695098, -0.569507,
		37.890965, 39.718014, 53.752819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561840, 40.427437, 54.183235>,  <38.198090, 40.204582, 54.151474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561840, 40.427437, 54.183235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526955, 40.055824, 54.039402>,  <37.506023, 39.832859, 53.953102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526955, 40.055824, 54.039402>,  <37.561840, 40.427437, 54.183235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526955, 40.055824, 54.039402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816247, -0.140278, 0.560413,
		-0.571081, 0.342384, -0.746083,
		-0.087217, -0.929029, -0.359580,
		37.500790, 39.777115, 53.931526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903587, 40.374592, 53.846878>,  <37.561840, 40.427437, 54.183235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903587, 40.374592, 53.846878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009064, 40.001724, 53.946102>,  <37.072350, 39.778004, 54.005634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009064, 40.001724, 53.946102>,  <36.903587, 40.374592, 53.846878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009064, 40.001724, 53.946102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865208, -0.114864, 0.488079,
		-0.426478, -0.343321, -0.836808,
		0.263687, -0.932168, 0.248057,
		37.088169, 39.722073, 54.020519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399857, 39.828968, 53.574635>,  <36.903587, 40.374592, 53.846878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399857, 39.828968, 53.574635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.571419, 39.723755, 53.920319>,  <36.674355, 39.660629, 54.127728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.571419, 39.723755, 53.920319>,  <36.399857, 39.828968, 53.574635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571419, 39.723755, 53.920319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901322, -0.060515, 0.428901,
		-0.060515, -0.962888, -0.263029,
		-0.428901, 0.263029, -0.864210,
		36.700089, 39.644848, 54.179581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798767, 39.774494, 53.984589>,  <36.399857, 39.828968, 53.574635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798767, 39.774494, 53.984589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093353, 39.664864, 54.231976>,  <36.270103, 39.599087, 54.380409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093353, 39.664864, 54.231976>,  <35.798767, 39.774494, 53.984589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093353, 39.664864, 54.231976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654080, -0.055211, 0.754408,
		-0.172619, -0.960122, -0.219929,
		0.736466, -0.274076, 0.618466,
		36.314293, 39.582642, 54.417515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523361, 39.272152, 54.349792>,  <35.798767, 39.774494, 53.984589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523361, 39.272152, 54.349792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825809, 39.371910, 54.591812>,  <36.007278, 39.431767, 54.737026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825809, 39.371910, 54.591812>,  <35.523361, 39.272152, 54.349792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825809, 39.371910, 54.591812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568194, -0.208565, 0.796025,
		0.324718, -0.945676, -0.015995,
		0.756118, 0.249396, 0.605053,
		36.052647, 39.446728, 54.773327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651077, 38.726532, 54.815052>,  <35.523361, 39.272152, 54.349792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651077, 38.726532, 54.815052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.772953, 39.069824, 54.980267>,  <35.846077, 39.275799, 55.079395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.772953, 39.069824, 54.980267>,  <35.651077, 38.726532, 54.815052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772953, 39.069824, 54.980267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609289, -0.157689, 0.777111,
		0.732073, -0.488438, 0.474866,
		0.304689, 0.858233, 0.413039,
		35.864361, 39.327293, 55.104179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840595, 38.597733, 55.537613>,  <35.651077, 38.726532, 54.815052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840595, 38.597733, 55.537613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718155, 38.975838, 55.492405>,  <35.644691, 39.202702, 55.465279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718155, 38.975838, 55.492405>,  <35.840595, 38.597733, 55.537613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718155, 38.975838, 55.492405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678707, -0.133434, 0.722186,
		0.667578, 0.297767, 0.682403,
		-0.306099, 0.945267, -0.113019,
		35.626324, 39.259418, 55.458500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564735, 38.339687, 55.367477>,  <35.840595, 38.597733, 55.537613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564735, 38.339687, 55.367477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.919323, 38.175919, 55.281170>,  <37.132076, 38.077660, 55.229385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.919323, 38.175919, 55.281170>,  <36.564735, 38.339687, 55.367477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919323, 38.175919, 55.281170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443256, -0.885154, -0.141512,
		-0.133051, 0.221086, -0.966136,
		0.886465, -0.409418, -0.215768,
		37.185261, 38.053093, 55.216438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037613, 37.850643, 55.740471>,  <36.564735, 38.339687, 55.367477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037613, 37.850643, 55.740471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.302513, 37.617340, 55.928608>,  <37.461452, 37.477356, 56.041492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.302513, 37.617340, 55.928608>,  <37.037613, 37.850643, 55.740471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302513, 37.617340, 55.928608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738026, 0.399400, -0.543872,
		0.129364, 0.707309, 0.694967,
		0.662255, -0.583261, 0.470345,
		37.501190, 37.442360, 56.069710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667507, 38.264732, 55.801071>,  <37.037613, 37.850643, 55.740471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667507, 38.264732, 55.801071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.785225, 37.897346, 55.906761>,  <37.855854, 37.676914, 55.970177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.785225, 37.897346, 55.906761>,  <37.667507, 38.264732, 55.801071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785225, 37.897346, 55.906761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921770, 0.199745, -0.332328,
		0.252454, 0.341358, 0.905396,
		0.294291, -0.918464, 0.264227,
		37.873512, 37.621807, 55.986031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298264, 38.285725, 56.183571>,  <37.667507, 38.264732, 55.801071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298264, 38.285725, 56.183571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.290237, 37.923973, 56.013065>,  <38.285423, 37.706924, 55.910763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.290237, 37.923973, 56.013065>,  <38.298264, 38.285725, 56.183571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290237, 37.923973, 56.013065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926564, 0.143351, -0.347750,
		0.375603, -0.401941, 0.835084,
		-0.020065, -0.904375, -0.426267,
		38.284218, 37.652660, 55.885185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014259, 38.080471, 56.196659>,  <38.298264, 38.285725, 56.183571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014259, 38.080471, 56.196659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841805, 37.823235, 55.943501>,  <38.738331, 37.668892, 55.791607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841805, 37.823235, 55.943501>,  <39.014259, 38.080471, 56.196659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841805, 37.823235, 55.943501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810544, 0.032128, -0.584796,
		0.396413, -0.765112, 0.507406,
		-0.431132, -0.643095, -0.632893,
		38.712463, 37.630306, 55.753632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521229, 37.601429, 56.128170>,  <39.014259, 38.080471, 56.196659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521229, 37.601429, 56.128170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281277, 37.539185, 55.814247>,  <39.137306, 37.501839, 55.625893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281277, 37.539185, 55.814247>,  <39.521229, 37.601429, 56.128170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281277, 37.539185, 55.814247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787766, 0.056626, -0.613366,
		0.139887, -0.986194, 0.088617,
		-0.599880, -0.155611, -0.784812,
		39.101315, 37.492500, 55.578804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827343, 37.104351, 55.738781>,  <39.521229, 37.601429, 56.128170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827343, 37.104351, 55.738781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589111, 37.329475, 55.509514>,  <39.446171, 37.464550, 55.371952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589111, 37.329475, 55.509514>,  <39.827343, 37.104351, 55.738781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589111, 37.329475, 55.509514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777341, 0.223904, -0.587884,
		-0.202536, -0.795680, -0.570853,
		-0.595583, 0.562815, -0.573166,
		39.410435, 37.498322, 55.337563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896797, 36.904793, 55.132393>,  <39.827343, 37.104351, 55.738781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896797, 36.904793, 55.132393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747620, 37.260071, 55.025043>,  <39.658115, 37.473236, 54.960632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747620, 37.260071, 55.025043>,  <39.896797, 36.904793, 55.132393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747620, 37.260071, 55.025043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779221, 0.142790, -0.610267,
		-0.503715, -0.436716, -0.745353,
		-0.372942, 0.888195, -0.268374,
		39.635738, 37.526527, 54.944530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048355, 36.980930, 54.335522>,  <39.896797, 36.904793, 55.132393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048355, 36.980930, 54.335522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.985748, 37.347252, 54.483471>,  <39.948185, 37.567043, 54.572239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.985748, 37.347252, 54.483471>,  <40.048355, 36.980930, 54.335522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985748, 37.347252, 54.483471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597736, 0.385950, -0.702676,
		-0.786266, 0.111104, -0.607817,
		-0.156517, 0.915805, 0.369871,
		39.938793, 37.621994, 54.594433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887001, 37.444851, 53.792484>,  <40.048355, 36.980930, 54.335522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887001, 37.444851, 53.792484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.002163, 37.689804, 54.086994>,  <40.071259, 37.836777, 54.263702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.002163, 37.689804, 54.086994>,  <39.887001, 37.444851, 53.792484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002163, 37.689804, 54.086994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580188, 0.500134, -0.642843,
		-0.761900, 0.612257, -0.211304,
		0.287906, 0.612378, 0.736277,
		40.088535, 37.873516, 54.307877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629818, 38.064938, 53.612507>,  <39.887001, 37.444851, 53.792484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629818, 38.064938, 53.612507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.936295, 38.139557, 53.858486>,  <40.120178, 38.184326, 54.006073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.936295, 38.139557, 53.858486>,  <39.629818, 38.064938, 53.612507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936295, 38.139557, 53.858486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499588, 0.428977, -0.752589,
		-0.404189, 0.883843, 0.235482,
		0.766187, 0.186545, 0.614946,
		40.166149, 38.195518, 54.042969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765640, 38.816647, 53.629036>,  <39.629818, 38.064938, 53.612507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765640, 38.816647, 53.629036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.099678, 38.615128, 53.717400>,  <40.300102, 38.494217, 53.770416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.099678, 38.615128, 53.717400>,  <39.765640, 38.816647, 53.629036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099678, 38.615128, 53.717400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457589, 0.413295, -0.787273,
		0.305330, 0.758532, 0.575675,
		0.835096, -0.503801, 0.220905,
		40.350208, 38.463985, 53.783672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098167, 39.207771, 53.283810>,  <39.765640, 38.816647, 53.629036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098167, 39.207771, 53.283810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.344990, 38.905434, 53.371384>,  <40.493084, 38.724030, 53.423927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.344990, 38.905434, 53.371384>,  <40.098167, 39.207771, 53.283810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344990, 38.905434, 53.371384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614603, 0.289159, -0.733927,
		0.491429, 0.587436, 0.642974,
		0.617057, -0.755848, 0.218939,
		40.530106, 38.678680, 53.437065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787140, 39.455383, 53.185871>,  <40.098167, 39.207771, 53.283810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787140, 39.455383, 53.185871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.853424, 39.061127, 53.198818>,  <40.893196, 38.824574, 53.206585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.853424, 39.061127, 53.198818>,  <40.787140, 39.455383, 53.185871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853424, 39.061127, 53.198818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715796, 0.097641, -0.691449,
		0.678362, 0.137749, 0.721700,
		0.165714, -0.985643, 0.032364,
		40.903137, 38.765434, 53.208527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530418, 39.265057, 53.126892>,  <40.787140, 39.455383, 53.185871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530418, 39.265057, 53.126892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.343590, 38.922386, 53.039295>,  <41.231495, 38.716785, 52.986736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.343590, 38.922386, 53.039295>,  <41.530418, 39.265057, 53.126892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343590, 38.922386, 53.039295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541513, -0.081344, -0.836748,
		0.699006, -0.509405, 0.501893,
		-0.467070, -0.856673, -0.218990,
		41.203468, 38.665382, 52.973598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023438, 38.827332, 52.953312>,  <41.530418, 39.265057, 53.126892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023438, 38.827332, 52.953312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.704262, 38.668953, 52.771530>,  <41.512756, 38.573925, 52.662460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.704262, 38.668953, 52.771530>,  <42.023438, 38.827332, 52.953312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704262, 38.668953, 52.771530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533588, -0.113362, -0.838113,
		0.280330, -0.911250, 0.301727,
		-0.797935, -0.395946, -0.454453,
		41.464882, 38.550171, 52.635193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250740, 38.192959, 52.664742>,  <42.023438, 38.827332, 52.953312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250740, 38.192959, 52.664742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.936195, 38.310646, 52.447460>,  <41.747467, 38.381256, 52.317093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.936195, 38.310646, 52.447460>,  <42.250740, 38.192959, 52.664742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936195, 38.310646, 52.447460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513290, -0.178112, -0.839529,
		-0.343753, -0.938996, -0.010956,
		-0.786363, 0.294214, -0.543204,
		41.700287, 38.398911, 52.284500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298264, 37.727295, 52.167519>,  <42.250740, 38.192959, 52.664742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298264, 37.727295, 52.167519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.077000, 38.032951, 52.034794>,  <41.944241, 38.216347, 51.955158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.077000, 38.032951, 52.034794>,  <42.298264, 37.727295, 52.167519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077000, 38.032951, 52.034794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371808, -0.129972, -0.919166,
		-0.745501, -0.631816, -0.212219,
		-0.553161, 0.764144, -0.331809,
		41.911053, 38.262196, 51.935249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091568, 37.411186, 51.576542>,  <42.298264, 37.727295, 52.167519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091568, 37.411186, 51.576542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.014133, 37.802475, 51.546570>,  <41.967674, 38.037247, 51.528587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.014133, 37.802475, 51.546570>,  <42.091568, 37.411186, 51.576542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014133, 37.802475, 51.546570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317612, -0.009773, -0.948170,
		-0.928249, -0.207352, -0.308802,
		-0.193587, 0.978217, -0.074930,
		41.956059, 38.095940, 51.524090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686703, 37.459866, 50.890743>,  <42.091568, 37.411186, 51.576542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686703, 37.459866, 50.890743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.843323, 37.819092, 50.970905>,  <41.937294, 38.034626, 51.019001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.843323, 37.819092, 50.970905>,  <41.686703, 37.459866, 50.890743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843323, 37.819092, 50.970905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504861, -0.027591, -0.862760,
		-0.769286, 0.438994, -0.464202,
		0.391554, 0.898066, 0.200405,
		41.960789, 38.088512, 51.031029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729000, 37.786552, 50.254116>,  <41.686703, 37.459866, 50.890743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729000, 37.786552, 50.254116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.974571, 38.016609, 50.470375>,  <42.121914, 38.154644, 50.600128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.974571, 38.016609, 50.470375>,  <41.729000, 37.786552, 50.254116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974571, 38.016609, 50.470375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451738, 0.305670, -0.838152,
		-0.647318, 0.758797, -0.072155,
		0.613932, 0.575146, 0.540643,
		42.158752, 38.189152, 50.632568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.480515, 41.941559, 45.867516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.798302, 41.914635, 46.108940>,  <41.988976, 41.898479, 46.253796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.798302, 41.914635, 46.108940>,  <41.480515, 41.941559, 45.867516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798302, 41.914635, 46.108940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550062, 0.500970, -0.668178,
		-0.257390, 0.862843, 0.435031,
		0.794470, -0.067312, 0.603561,
		42.036644, 41.894440, 46.290009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745281, 42.667126, 45.781757>,  <41.480515, 41.941559, 45.867516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745281, 42.667126, 45.781757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.028923, 42.434799, 45.941666>,  <42.199108, 42.295403, 46.037609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.028923, 42.434799, 45.941666>,  <41.745281, 42.667126, 45.781757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028923, 42.434799, 45.941666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697087, 0.492234, -0.521321,
		0.106012, 0.648348, 0.753928,
		0.709106, -0.580820, 0.399772,
		42.241653, 42.260551, 46.061596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259579, 43.163677, 46.035545>,  <41.745281, 42.667126, 45.781757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259579, 43.163677, 46.035545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.430206, 42.803108, 46.005939>,  <42.532581, 42.586765, 45.988178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.430206, 42.803108, 46.005939>,  <42.259579, 43.163677, 46.035545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430206, 42.803108, 46.005939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736172, 0.393572, -0.550593,
		0.525446, 0.180380, 0.831487,
		0.426566, -0.901423, -0.074010,
		42.558174, 42.532681, 45.983738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944328, 43.277630, 46.179066>,  <42.259579, 43.163677, 46.035545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944328, 43.277630, 46.179066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946945, 42.931725, 45.978210>,  <42.948517, 42.724182, 45.857697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946945, 42.931725, 45.978210>,  <42.944328, 43.277630, 46.179066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946945, 42.931725, 45.978210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780099, 0.318579, -0.538472,
		0.625621, -0.388195, 0.676685,
		0.006545, -0.864761, -0.502140,
		42.948910, 42.672295, 45.827568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603428, 43.073235, 46.310951>,  <42.944328, 43.277630, 46.179066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603428, 43.073235, 46.310951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445168, 42.888733, 45.993286>,  <43.350212, 42.778030, 45.802685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445168, 42.888733, 45.993286>,  <43.603428, 43.073235, 46.310951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445168, 42.888733, 45.993286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853389, 0.134912, -0.503513,
		0.339393, -0.876949, 0.340254,
		-0.395651, -0.461258, -0.794167,
		43.326473, 42.750355, 45.755035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980045, 42.444756, 46.128620>,  <43.603428, 43.073235, 46.310951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980045, 42.444756, 46.128620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.787014, 42.548477, 45.793983>,  <43.671196, 42.610710, 45.593201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.787014, 42.548477, 45.793983>,  <43.980045, 42.444756, 46.128620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787014, 42.548477, 45.793983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868908, 0.021710, -0.494496,
		-0.110062, -0.965552, -0.235787,
		-0.482581, 0.259303, -0.836587,
		43.642239, 42.626266, 45.543007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325733, 42.017132, 45.591667>,  <43.980045, 42.444756, 46.128620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325733, 42.017132, 45.591667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.157207, 42.328178, 45.404991>,  <44.056091, 42.514809, 45.292984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.157207, 42.328178, 45.404991>,  <44.325733, 42.017132, 45.591667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157207, 42.328178, 45.404991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761926, 0.024391, -0.647204,
		-0.491895, -0.628262, -0.602765,
		-0.421316, 0.777619, -0.466692,
		44.030811, 42.561462, 45.264984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515244, 41.845707, 44.934944>,  <44.325733, 42.017132, 45.591667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515244, 41.845707, 44.934944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413979, 42.232620, 44.941444>,  <44.353218, 42.464767, 44.945347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413979, 42.232620, 44.941444>,  <44.515244, 41.845707, 44.934944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413979, 42.232620, 44.941444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713623, 0.198068, -0.671946,
		-0.653184, -0.158514, -0.740422,
		-0.253167, 0.967286, 0.016255,
		44.338028, 42.522804, 44.946320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.270100, 42.058777, 44.152367>,  <44.515244, 41.845707, 44.934944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.270100, 42.058777, 44.152367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.352638, 42.396172, 44.350739>,  <44.402161, 42.598610, 44.469761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.352638, 42.396172, 44.350739>,  <44.270100, 42.058777, 44.152367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352638, 42.396172, 44.350739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640233, 0.266889, -0.720328,
		-0.739947, 0.466149, -0.484957,
		0.206350, 0.843490, 0.495928,
		44.414543, 42.649220, 44.499516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131092, 42.678658, 43.668438>,  <44.270100, 42.058777, 44.152367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131092, 42.678658, 43.668438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.391209, 42.826866, 43.933716>,  <44.547279, 42.915791, 44.092884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.391209, 42.826866, 43.933716>,  <44.131092, 42.678658, 43.668438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391209, 42.826866, 43.933716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520803, 0.418125, -0.744269,
		-0.553065, 0.829390, 0.078937,
		0.650295, 0.370518, 0.663199,
		44.586296, 42.938023, 44.132675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443535, 43.361458, 43.364670>,  <44.131092, 42.678658, 43.668438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443535, 43.361458, 43.364670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705555, 43.262054, 43.650089>,  <44.862766, 43.202412, 43.821342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705555, 43.262054, 43.650089>,  <44.443535, 43.361458, 43.364670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705555, 43.262054, 43.650089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754241, 0.271381, -0.597890,
		-0.045061, 0.929836, 0.365205,
		0.655049, -0.248511, 0.713550,
		44.902069, 43.187500, 43.864155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904999, 44.032162, 43.525036>,  <44.443535, 43.361458, 43.364670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904999, 44.032162, 43.525036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.086441, 43.682953, 43.596676>,  <45.195305, 43.473427, 43.639660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.086441, 43.682953, 43.596676>,  <44.904999, 44.032162, 43.525036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.086441, 43.682953, 43.596676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739647, 0.256678, -0.622124,
		0.497159, 0.414665, 0.762158,
		0.453603, -0.873023, 0.179096,
		45.222523, 43.421047, 43.650406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514206, 44.460289, 43.538479>,  <44.904999, 44.032162, 43.525036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514206, 44.460289, 43.538479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.238419, 44.399673, 43.821793>,  <45.072945, 44.363304, 43.991779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.238419, 44.399673, 43.821793>,  <45.514206, 44.460289, 43.538479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.238419, 44.399673, 43.821793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002024, 0.978269, 0.207332,
		-0.724311, 0.141516, -0.674794,
		-0.689471, -0.151538, 0.708284,
		45.031578, 44.354214, 44.034279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.790997, 44.791298, 43.334232>,  <45.514206, 44.460289, 43.538479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.790997, 44.791298, 43.334232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899570, 44.777802, 43.718979>,  <44.964714, 44.769703, 43.949825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899570, 44.777802, 43.718979>,  <44.790997, 44.791298, 43.334232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899570, 44.777802, 43.718979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041022, 0.998883, 0.023460,
		-0.961582, 0.033089, 0.272515,
		0.271434, -0.033738, 0.961865,
		44.980999, 44.767681, 44.007538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861084, 45.586266, 43.431843>,  <44.790997, 44.791298, 43.334232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861084, 45.586266, 43.431843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.020691, 45.934662, 43.546501>,  <45.116455, 46.143700, 43.615295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.020691, 45.934662, 43.546501>,  <44.861084, 45.586266, 43.431843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020691, 45.934662, 43.546501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364745, -0.136052, 0.921114,
		0.841278, -0.472092, 0.263402,
		0.399014, 0.870988, 0.286651,
		45.140396, 46.195957, 43.632496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103886, 45.376476, 44.090969>,  <44.861084, 45.586266, 43.431843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103886, 45.376476, 44.090969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.079224, 45.773613, 44.131889>,  <45.064426, 46.011894, 44.156441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.079224, 45.773613, 44.131889>,  <45.103886, 45.376476, 44.090969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079224, 45.773613, 44.131889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263072, -0.115036, 0.957893,
		0.962804, 0.032149, 0.268282,
		-0.061657, 0.992841, 0.102300,
		45.060726, 46.071465, 44.162579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592438, 45.600700, 44.644352>,  <45.103886, 45.376476, 44.090969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592438, 45.600700, 44.644352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.309937, 45.881119, 44.604858>,  <45.140434, 46.049370, 44.581161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.309937, 45.881119, 44.604858>,  <45.592438, 45.600700, 44.644352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309937, 45.881119, 44.604858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131506, 0.007126, 0.991290,
		0.695639, 0.713085, 0.087158,
		-0.706253, 0.701041, -0.098732,
		45.098061, 46.091431, 44.575237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.697403, 45.974236, 45.280632>,  <45.592438, 45.600700, 44.644352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.697403, 45.974236, 45.280632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.341331, 46.080109, 45.132294>,  <45.127689, 46.143631, 45.043289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.341331, 46.080109, 45.132294>,  <45.697403, 45.974236, 45.280632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341331, 46.080109, 45.132294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391315, -0.027269, 0.919853,
		0.233352, 0.963951, 0.127847,
		-0.890179, 0.264678, -0.370845,
		45.074276, 46.159512, 45.021042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433456, 46.587811, 45.701321>,  <45.697403, 45.974236, 45.280632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433456, 46.587811, 45.701321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.123375, 46.399376, 45.532974>,  <44.937325, 46.286316, 45.431965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.123375, 46.399376, 45.532974>,  <45.433456, 46.587811, 45.701321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123375, 46.399376, 45.532974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506460, 0.065287, 0.859788,
		-0.377561, 0.879665, -0.289200,
		-0.775207, -0.471090, -0.420866,
		44.890812, 46.258049, 45.406715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800148, 46.903770, 45.950218>,  <45.433456, 46.587811, 45.701321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800148, 46.903770, 45.950218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677277, 46.539917, 45.838356>,  <44.603554, 46.321606, 45.771240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677277, 46.539917, 45.838356>,  <44.800148, 46.903770, 45.950218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677277, 46.539917, 45.838356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450279, -0.119956, 0.884793,
		-0.838384, 0.397713, -0.372741,
		-0.307182, -0.909634, -0.279651,
		44.585121, 46.267025, 45.754459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225010, 46.908859, 46.363575>,  <44.800148, 46.903770, 45.950218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225010, 46.908859, 46.363575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.277039, 46.541336, 46.214516>,  <44.308254, 46.320820, 46.125080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.277039, 46.541336, 46.214516>,  <44.225010, 46.908859, 46.363575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277039, 46.541336, 46.214516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491563, -0.386159, 0.780543,
		-0.861073, 0.081654, -0.501882,
		0.130071, -0.918811, -0.372649,
		44.316059, 46.265694, 46.102722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566704, 46.590984, 46.391674>,  <44.225010, 46.908859, 46.363575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566704, 46.590984, 46.391674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.849586, 46.308434, 46.403557>,  <44.019318, 46.138901, 46.410686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.849586, 46.308434, 46.403557>,  <43.566704, 46.590984, 46.391674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849586, 46.308434, 46.403557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439272, -0.406083, 0.801334,
		-0.553981, -0.579762, -0.597478,
		0.707209, -0.706379, 0.029711,
		44.061749, 46.096519, 46.412472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202030, 46.011208, 46.524368>,  <43.566704, 46.590984, 46.391674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202030, 46.011208, 46.524368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580402, 45.903358, 46.596500>,  <43.807426, 45.838650, 46.639782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580402, 45.903358, 46.596500>,  <43.202030, 46.011208, 46.524368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580402, 45.903358, 46.596500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287450, -0.439183, 0.851170,
		-0.150290, -0.856986, -0.492938,
		0.945931, -0.269618, 0.180336,
		43.864182, 45.822472, 46.650600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248119, 45.279228, 46.630764>,  <43.202030, 46.011208, 46.524368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248119, 45.279228, 46.630764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.571655, 45.426338, 46.814293>,  <43.765778, 45.514603, 46.924412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.571655, 45.426338, 46.814293>,  <43.248119, 45.279228, 46.630764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571655, 45.426338, 46.814293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387324, -0.253886, 0.886297,
		0.442446, -0.894586, -0.062906,
		0.808840, 0.367773, 0.458825,
		43.814308, 45.536671, 46.951939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434082, 44.735985, 47.104214>,  <43.248119, 45.279228, 46.630764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434082, 44.735985, 47.104214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594452, 45.080612, 47.228767>,  <43.690674, 45.287388, 47.303501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594452, 45.080612, 47.228767>,  <43.434082, 44.735985, 47.104214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594452, 45.080612, 47.228767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136510, -0.279921, 0.950268,
		0.905885, -0.423489, 0.005387,
		0.400921, 0.861569, 0.311386,
		43.714729, 45.339085, 47.322182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756710, 44.505482, 47.766300>,  <43.434082, 44.735985, 47.104214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756710, 44.505482, 47.766300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756485, 44.905365, 47.756584>,  <43.756351, 45.145294, 47.750755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756485, 44.905365, 47.756584>,  <43.756710, 44.505482, 47.766300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756485, 44.905365, 47.756584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300835, 0.022996, 0.953399,
		0.953676, 0.007844, 0.300734,
		-0.000563, 0.999705, -0.024290,
		43.756317, 45.205276, 47.749298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207504, 44.719971, 48.361439>,  <43.756710, 44.505482, 47.766300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207504, 44.719971, 48.361439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.951820, 45.015274, 48.275295>,  <43.798409, 45.192455, 48.223610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.951820, 45.015274, 48.275295>,  <44.207504, 44.719971, 48.361439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951820, 45.015274, 48.275295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362482, -0.042257, 0.931032,
		0.678246, 0.673188, 0.294618,
		-0.639210, 0.738263, -0.215358,
		43.760059, 45.236752, 48.210690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.259174, 45.140594, 48.948166>,  <44.207504, 44.719971, 48.361439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.259174, 45.140594, 48.948166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.917522, 45.244438, 48.767914>,  <43.712532, 45.306744, 48.659763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.917522, 45.244438, 48.767914>,  <44.259174, 45.140594, 48.948166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917522, 45.244438, 48.767914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499025, -0.165163, 0.850703,
		0.146422, 0.951486, 0.270621,
		-0.854128, 0.259608, -0.450632,
		43.661285, 45.322319, 48.632725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660660, 45.695103, 49.357811>,  <44.259174, 45.140594, 48.948166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660660, 45.695103, 49.357811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.001629, 45.620461, 49.553181>,  <45.206211, 45.575676, 49.670403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.001629, 45.620461, 49.553181>,  <44.660660, 45.695103, 49.357811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001629, 45.620461, 49.553181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520983, 0.382093, -0.763271,
		-0.044195, 0.905088, 0.422921,
		0.852422, -0.186602, 0.488422,
		45.257355, 45.564480, 49.699707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084236, 46.314419, 49.239014>,  <44.660660, 45.695103, 49.357811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084236, 46.314419, 49.239014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347519, 46.048691, 49.380684>,  <45.505489, 45.889256, 49.465687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347519, 46.048691, 49.380684>,  <45.084236, 46.314419, 49.239014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347519, 46.048691, 49.380684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710536, 0.392703, -0.583887,
		0.248800, 0.635976, 0.730502,
		0.658208, -0.664319, 0.354179,
		45.544983, 45.849396, 49.486938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725681, 46.721596, 49.374325>,  <45.084236, 46.314419, 49.239014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725681, 46.721596, 49.374325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.829109, 46.336021, 49.349121>,  <45.891167, 46.104675, 49.334000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.829109, 46.336021, 49.349121>,  <45.725681, 46.721596, 49.374325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.829109, 46.336021, 49.349121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786385, 0.247926, -0.565801,
		0.561019, 0.096743, 0.822130,
		0.258565, -0.963936, -0.063014,
		45.906677, 46.046841, 49.330215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497166, 46.709244, 49.516945>,  <45.725681, 46.721596, 49.374325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497166, 46.709244, 49.516945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.405487, 46.378227, 49.311951>,  <46.350479, 46.179615, 49.188953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.405487, 46.378227, 49.311951>,  <46.497166, 46.709244, 49.516945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.405487, 46.378227, 49.311951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870755, 0.060991, -0.487920,
		0.435032, -0.558077, 0.706609,
		-0.229201, -0.827544, -0.512482,
		46.336727, 46.129963, 49.158207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081341, 46.230614, 49.573910>,  <46.497166, 46.709244, 49.516945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081341, 46.230614, 49.573910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.875130, 46.137680, 49.243999>,  <46.751404, 46.081921, 49.046055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.875130, 46.137680, 49.243999>,  <47.081341, 46.230614, 49.573910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.875130, 46.137680, 49.243999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840974, 0.047369, -0.538998,
		0.164295, -0.971482, 0.170966,
		-0.515529, -0.232333, -0.824774,
		46.720470, 46.067982, 48.996567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.549469, 45.807400, 49.305622>,  <47.081341, 46.230614, 49.573910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.549469, 45.807400, 49.305622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.288956, 45.869843, 49.008579>,  <47.132648, 45.907307, 48.830353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.288956, 45.869843, 49.008579>,  <47.549469, 45.807400, 49.305622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.288956, 45.869843, 49.008579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740161, -0.085091, -0.667024,
		-0.167313, -0.984069, -0.060123,
		-0.651282, 0.156102, -0.742606,
		47.093571, 45.916672, 48.785797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.659973, 45.213413, 48.796284>,  <47.549469, 45.807400, 49.305622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.659973, 45.213413, 48.796284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.482346, 45.506210, 48.589600>,  <47.375767, 45.681889, 48.465588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.482346, 45.506210, 48.589600>,  <47.659973, 45.213413, 48.796284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.482346, 45.506210, 48.589600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734556, -0.032797, -0.677755,
		-0.513058, -0.680523, -0.523125,
		-0.444071, 0.731993, -0.516709,
		47.349125, 45.725807, 48.434586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.669430, 44.945229, 48.079456>,  <47.659973, 45.213413, 48.796284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.669430, 44.945229, 48.079456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.606316, 45.338570, 48.043430>,  <47.568447, 45.574574, 48.021816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.606316, 45.338570, 48.043430>,  <47.669430, 44.945229, 48.079456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.606316, 45.338570, 48.043430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582628, 0.019074, -0.812515,
		-0.797275, -0.180679, -0.575941,
		-0.157790, 0.983357, -0.090061,
		47.558979, 45.633575, 48.016411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.555832, 45.159893, 47.388142>,  <47.669430, 44.945229, 48.079456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.555832, 45.159893, 47.388142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.700134, 45.485275, 47.570637>,  <47.786716, 45.680504, 47.680134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.700134, 45.485275, 47.570637>,  <47.555832, 45.159893, 47.388142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.700134, 45.485275, 47.570637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662091, 0.121167, -0.739564,
		-0.656882, 0.568867, -0.494870,
		0.360751, 0.813455, 0.456234,
		47.808361, 45.729313, 47.707508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.792603, 45.550465, 46.792175>,  <47.555832, 45.159893, 47.388142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.792603, 45.550465, 46.792175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.970009, 45.705276, 47.115532>,  <48.076454, 45.798164, 47.309547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.970009, 45.705276, 47.115532>,  <47.792603, 45.550465, 46.792175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.970009, 45.705276, 47.115532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839201, 0.137370, -0.526185,
		-0.314698, 0.911777, -0.263869,
		0.443516, 0.387029, 0.808395,
		48.103065, 45.821384, 47.358051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.091614, 46.226303, 46.483379>,  <47.792603, 45.550465, 46.792175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.091614, 46.226303, 46.483379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.285622, 46.191277, 46.831421>,  <48.402027, 46.170261, 47.040245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.285622, 46.191277, 46.831421>,  <48.091614, 46.226303, 46.483379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.285622, 46.191277, 46.831421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798071, 0.451116, -0.399470,
		-0.357538, 0.888159, 0.288686,
		0.485024, -0.087566, 0.870106,
		48.431129, 46.165009, 47.092453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.332779, 46.914944, 46.813015>,  <48.091614, 46.226303, 46.483379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.332779, 46.914944, 46.813015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.571472, 46.600861, 46.879169>,  <48.714687, 46.412411, 46.918861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.571472, 46.600861, 46.879169>,  <48.332779, 46.914944, 46.813015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.571472, 46.600861, 46.879169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769749, 0.501905, -0.394434,
		0.226705, 0.362679, 0.903919,
		0.596734, -0.785210, 0.165388,
		48.750492, 46.365299, 46.928787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.069809, 45.717094, 52.575001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338474, 45.442177, 52.685631>,  <43.499676, 45.277225, 52.752007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338474, 45.442177, 52.685631>,  <43.069809, 45.717094, 52.575001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338474, 45.442177, 52.685631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616512, 0.311515, -0.723098,
		0.410826, 0.656189, 0.632960,
		0.671665, -0.687295, 0.276570,
		43.539974, 45.235989, 52.768600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691864, 46.072182, 52.795368>,  <43.069809, 45.717094, 52.575001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691864, 46.072182, 52.795368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775818, 45.699104, 52.678047>,  <43.826191, 45.475258, 52.607655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775818, 45.699104, 52.678047>,  <43.691864, 46.072182, 52.795368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775818, 45.699104, 52.678047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648803, 0.357277, -0.671869,
		0.731439, -0.049278, 0.680124,
		0.209885, -0.932698, -0.293298,
		43.838783, 45.419296, 52.590057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413506, 46.064457, 52.702068>,  <43.691864, 46.072182, 52.795368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413506, 46.064457, 52.702068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301868, 45.749107, 52.482769>,  <44.234886, 45.559898, 52.351189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301868, 45.749107, 52.482769>,  <44.413506, 46.064457, 52.702068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301868, 45.749107, 52.482769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680754, 0.240233, -0.691999,
		0.677259, -0.566358, 0.469637,
		-0.279097, -0.788370, -0.548250,
		44.218140, 45.512596, 52.318295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.002308, 45.842205, 52.342861>,  <44.413506, 46.064457, 52.702068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.002308, 45.842205, 52.342861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734329, 45.608612, 52.159496>,  <44.573544, 45.468456, 52.049477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734329, 45.608612, 52.159496>,  <45.002308, 45.842205, 52.342861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734329, 45.608612, 52.159496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632924, -0.126522, -0.763806,
		0.388051, -0.801845, 0.454380,
		-0.669943, -0.583984, -0.458410,
		44.533348, 45.433418, 52.021973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355408, 45.269627, 51.992031>,  <45.002308, 45.842205, 52.342861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355408, 45.269627, 51.992031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.015518, 45.316826, 51.786488>,  <44.811584, 45.345146, 51.663162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.015518, 45.316826, 51.786488>,  <45.355408, 45.269627, 51.992031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015518, 45.316826, 51.786488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515131, -0.021795, -0.856834,
		-0.112304, -0.992775, -0.042265,
		-0.849722, 0.117998, -0.513857,
		44.760601, 45.352226, 51.632332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325367, 44.672745, 51.526535>,  <45.355408, 45.269627, 51.992031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325367, 44.672745, 51.526535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078320, 44.945023, 51.368954>,  <44.930092, 45.108391, 51.274406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078320, 44.945023, 51.368954>,  <45.325367, 44.672745, 51.526535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.078320, 44.945023, 51.368954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418666, -0.139474, -0.897366,
		-0.665779, -0.719166, -0.198843,
		-0.617622, 0.680696, -0.393949,
		44.893032, 45.149231, 51.250771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050591, 44.439377, 50.865997>,  <45.325367, 44.672745, 51.526535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050591, 44.439377, 50.865997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982979, 44.833061, 50.844994>,  <44.942413, 45.069271, 50.832390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982979, 44.833061, 50.844994>,  <45.050591, 44.439377, 50.865997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982979, 44.833061, 50.844994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297884, 0.000228, -0.954602,
		-0.939518, -0.176994, -0.293220,
		-0.169026, 0.984212, -0.052510,
		44.932270, 45.128326, 50.829239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582718, 44.620140, 50.267323>,  <45.050591, 44.439377, 50.865997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582718, 44.620140, 50.267323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774895, 44.963196, 50.340675>,  <44.890202, 45.169029, 50.384689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774895, 44.963196, 50.340675>,  <44.582718, 44.620140, 50.267323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774895, 44.963196, 50.340675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147621, 0.127035, -0.980852,
		-0.864514, 0.498312, -0.065573,
		0.480440, 0.857640, 0.183385,
		44.919025, 45.220490, 50.395691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403683, 45.083225, 49.655136>,  <44.582718, 44.620140, 50.267323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403683, 45.083225, 49.655136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723633, 45.233940, 49.841999>,  <44.915604, 45.324371, 49.954117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723633, 45.233940, 49.841999>,  <44.403683, 45.083225, 49.655136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723633, 45.233940, 49.841999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331268, 0.371892, -0.867155,
		-0.500468, 0.848366, 0.172646,
		0.799871, 0.376791, 0.467157,
		44.963593, 45.346977, 49.982147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837109, 45.516270, 49.617290>,  <44.403683, 45.083225, 49.655136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837109, 45.516270, 49.617290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579548, 45.447487, 49.319077>,  <43.425011, 45.406219, 49.140148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579548, 45.447487, 49.319077>,  <43.837109, 45.516270, 49.617290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579548, 45.447487, 49.319077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712602, -0.219982, 0.666188,
		-0.278559, 0.960229, 0.019111,
		-0.643897, -0.171955, -0.745539,
		43.386379, 45.395901, 49.095413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251865, 45.957039, 49.792389>,  <43.837109, 45.516270, 49.617290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251865, 45.957039, 49.792389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139912, 45.646683, 49.566238>,  <43.072739, 45.460468, 49.430550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139912, 45.646683, 49.566238>,  <43.251865, 45.957039, 49.792389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139912, 45.646683, 49.566238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659260, -0.272770, 0.700695,
		-0.697883, 0.568844, -0.435173,
		-0.279884, -0.775895, -0.565378,
		43.055946, 45.413914, 49.396626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552589, 45.857510, 49.915764>,  <43.251865, 45.957039, 49.792389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552589, 45.857510, 49.915764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646217, 45.506844, 49.747635>,  <42.702393, 45.296444, 49.646759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646217, 45.506844, 49.747635>,  <42.552589, 45.857510, 49.915764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646217, 45.506844, 49.747635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648822, -0.462828, 0.604004,
		-0.724046, 0.131336, -0.677133,
		0.234069, -0.876665, -0.420322,
		42.716438, 45.243843, 49.621540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885784, 45.488293, 49.962551>,  <42.552589, 45.857510, 49.915764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885784, 45.488293, 49.962551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103470, 45.173782, 49.845520>,  <42.234081, 44.985077, 49.775303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103470, 45.173782, 49.845520>,  <41.885784, 45.488293, 49.962551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103470, 45.173782, 49.845520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416397, -0.555904, 0.719433,
		-0.728318, -0.269697, -0.629933,
		0.544211, -0.786279, -0.292574,
		42.266735, 44.937901, 49.757748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415909, 44.961758, 49.792347>,  <41.885784, 45.488293, 49.962551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415909, 44.961758, 49.792347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773346, 44.830833, 49.915215>,  <41.987808, 44.752277, 49.988937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773346, 44.830833, 49.915215>,  <41.415909, 44.961758, 49.792347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773346, 44.830833, 49.915215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444423, -0.548997, 0.707878,
		-0.063062, -0.769070, -0.636046,
		0.893595, -0.327314, 0.307171,
		42.041424, 44.732639, 50.007366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309124, 44.281620, 49.769363>,  <41.415909, 44.961758, 49.792347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309124, 44.281620, 49.769363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625473, 44.311707, 50.012302>,  <41.815281, 44.329758, 50.158066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625473, 44.311707, 50.012302>,  <41.309124, 44.281620, 49.769363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625473, 44.311707, 50.012302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426482, -0.644006, 0.635114,
		0.438905, -0.761314, -0.477246,
		0.790870, 0.075218, 0.607344,
		41.862736, 44.334270, 50.194504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435726, 43.611927, 49.990891>,  <41.309124, 44.281620, 49.769363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435726, 43.611927, 49.990891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616119, 43.828827, 50.274460>,  <41.724358, 43.958969, 50.444603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616119, 43.828827, 50.274460>,  <41.435726, 43.611927, 49.990891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616119, 43.828827, 50.274460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411117, -0.578797, 0.704256,
		0.792208, -0.609060, -0.038099,
		0.450986, 0.542254, 0.708923,
		41.751415, 43.991505, 50.487137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816669, 43.200294, 50.551365>,  <41.435726, 43.611927, 49.990891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816669, 43.200294, 50.551365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745949, 43.559875, 50.711674>,  <41.703514, 43.775623, 50.807858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745949, 43.559875, 50.711674>,  <41.816669, 43.200294, 50.551365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745949, 43.559875, 50.711674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364987, -0.438038, 0.821527,
		0.914071, -0.001028, 0.405553,
		-0.176804, 0.898956, 0.400773,
		41.692909, 43.829563, 50.831905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097752, 43.130402, 51.179001>,  <41.816669, 43.200294, 50.551365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097752, 43.130402, 51.179001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834370, 43.429001, 51.217331>,  <41.676342, 43.608162, 51.240330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834370, 43.429001, 51.217331>,  <42.097752, 43.130402, 51.179001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834370, 43.429001, 51.217331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477570, -0.512823, 0.713400,
		0.581694, 0.423976, 0.694174,
		-0.658453, 0.746497, 0.095828,
		41.636833, 43.652950, 51.246078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976849, 43.158688, 51.984970>,  <42.097752, 43.130402, 51.179001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976849, 43.158688, 51.984970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696114, 43.376251, 51.800972>,  <41.527672, 43.506790, 51.690575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696114, 43.376251, 51.800972>,  <41.976849, 43.158688, 51.984970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696114, 43.376251, 51.800972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643324, -0.206687, 0.737166,
		0.305875, 0.813293, 0.494969,
		-0.701836, 0.543907, -0.459991,
		41.485561, 43.539425, 51.662975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733471, 43.686993, 52.383324>,  <41.976849, 43.158688, 51.984970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733471, 43.686993, 52.383324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427902, 43.589661, 52.144257>,  <41.244560, 43.531261, 52.000816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427902, 43.589661, 52.144257>,  <41.733471, 43.686993, 52.383324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427902, 43.589661, 52.144257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573459, -0.168727, 0.801671,
		-0.295913, 0.955156, -0.010644,
		-0.763924, -0.243329, -0.597671,
		41.198727, 43.516663, 51.964954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117477, 43.964314, 52.764175>,  <41.733471, 43.686993, 52.383324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117477, 43.964314, 52.764175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951832, 43.742332, 52.475582>,  <40.852444, 43.609142, 52.302425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951832, 43.742332, 52.475582>,  <41.117477, 43.964314, 52.764175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951832, 43.742332, 52.475582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766058, -0.215597, 0.605536,
		-0.491592, 0.803460, -0.335842,
		-0.414117, -0.554951, -0.721482,
		40.827599, 43.575848, 52.259136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373943, 44.025108, 52.810200>,  <41.117477, 43.964314, 52.764175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373943, 44.025108, 52.810200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390831, 43.707809, 52.567230>,  <40.400963, 43.517429, 52.421448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390831, 43.707809, 52.567230>,  <40.373943, 44.025108, 52.810200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390831, 43.707809, 52.567230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797019, -0.393358, 0.458292,
		-0.602477, 0.464782, -0.648844,
		0.042222, -0.793252, -0.607429,
		40.403496, 43.469833, 52.385002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720718, 43.959148, 52.495411>,  <40.373943, 44.025108, 52.810200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720718, 43.959148, 52.495411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896217, 43.602821, 52.542641>,  <40.001518, 43.389027, 52.570980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896217, 43.602821, 52.542641>,  <39.720718, 43.959148, 52.495411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896217, 43.602821, 52.542641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844213, -0.363597, 0.393830,
		-0.307898, -0.272476, -0.911568,
		0.438752, -0.890816, 0.118077,
		40.027843, 43.335575, 52.578064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<43.804886, 37.841373, 53.945320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.764492, 38.238152, 53.975906>,  <43.740253, 38.476219, 53.994259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.764492, 38.238152, 53.975906>,  <43.804886, 37.841373, 53.945320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764492, 38.238152, 53.975906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506478, 0.117415, -0.854221,
		-0.856319, -0.047535, -0.514256,
		-0.100986, 0.991945, 0.076470,
		43.734196, 38.535736, 53.998848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530197, 38.147846, 53.264423>,  <43.804886, 37.841373, 53.945320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530197, 38.147846, 53.264423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.701488, 38.445061, 53.470150>,  <43.804264, 38.623390, 53.593586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.701488, 38.445061, 53.470150>,  <43.530197, 38.147846, 53.264423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701488, 38.445061, 53.470150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458165, 0.312052, -0.832291,
		-0.778913, 0.592054, -0.206802,
		0.428228, 0.743032, 0.514320,
		43.829956, 38.667969, 53.624447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401989, 38.697407, 52.874996>,  <43.530197, 38.147846, 53.264423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401989, 38.697407, 52.874996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.714348, 38.782539, 53.109909>,  <43.901764, 38.833618, 53.250858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.714348, 38.782539, 53.109909>,  <43.401989, 38.697407, 52.874996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714348, 38.782539, 53.109909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554904, 0.195368, -0.808649,
		-0.286840, 0.957359, 0.034463,
		0.780900, 0.212829, 0.587281,
		43.948616, 38.846390, 53.286095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574223, 39.325974, 52.603649>,  <43.401989, 38.697407, 52.874996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574223, 39.325974, 52.603649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.913483, 39.211090, 52.781704>,  <44.117039, 39.142159, 52.888538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.913483, 39.211090, 52.781704>,  <43.574223, 39.325974, 52.603649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913483, 39.211090, 52.781704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510314, 0.217434, -0.832047,
		0.142181, 0.932864, 0.330983,
		0.848153, -0.287207, 0.445138,
		44.167927, 39.124928, 52.915245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085609, 39.894821, 52.457840>,  <43.574223, 39.325974, 52.603649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085609, 39.894821, 52.457840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.296719, 39.579803, 52.585102>,  <44.423386, 39.390793, 52.661461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.296719, 39.579803, 52.585102>,  <44.085609, 39.894821, 52.457840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296719, 39.579803, 52.585102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701590, 0.193066, -0.685927,
		0.478773, 0.585234, 0.654429,
		0.527776, -0.787545, 0.318160,
		44.455051, 39.343540, 52.680550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832069, 40.151031, 52.673191>,  <44.085609, 39.894821, 52.457840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832069, 40.151031, 52.673191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.821602, 39.765030, 52.568817>,  <44.815323, 39.533428, 52.506195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.821602, 39.765030, 52.568817>,  <44.832069, 40.151031, 52.673191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821602, 39.765030, 52.568817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673952, 0.175750, -0.717566,
		0.738312, -0.194635, 0.645766,
		-0.026170, -0.965002, -0.260933,
		44.813751, 39.475529, 52.490536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.540699, 39.981621, 52.513458>,  <44.832069, 40.151031, 52.673191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.540699, 39.981621, 52.513458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.300514, 39.714233, 52.337914>,  <45.156403, 39.553802, 52.232586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.300514, 39.714233, 52.337914>,  <45.540699, 39.981621, 52.513458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300514, 39.714233, 52.337914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468694, 0.150453, -0.870454,
		0.647898, -0.728364, 0.222965,
		-0.600462, -0.668468, -0.438858,
		45.120377, 39.513695, 52.206257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938320, 39.814934, 51.953964>,  <45.540699, 39.981621, 52.513458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.938320, 39.814934, 51.953964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.613525, 39.598495, 51.866436>,  <45.418648, 39.468632, 51.813919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.613525, 39.598495, 51.866436>,  <45.938320, 39.814934, 51.953964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613525, 39.598495, 51.866436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356911, -0.163674, -0.919688,
		0.461827, -0.824877, 0.326026,
		-0.811991, -0.541099, -0.218819,
		45.369926, 39.436165, 51.800789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163464, 39.218002, 51.627655>,  <45.938320, 39.814934, 51.953964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163464, 39.218002, 51.627655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.783638, 39.279388, 51.518276>,  <45.555744, 39.316219, 51.452648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.783638, 39.279388, 51.518276>,  <46.163464, 39.218002, 51.627655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783638, 39.279388, 51.518276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265262, -0.071900, -0.961492,
		-0.167223, -0.985534, 0.027564,
		-0.949565, 0.153471, -0.273448,
		45.498768, 39.325428, 51.436241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083717, 38.754871, 51.006989>,  <46.163464, 39.218002, 51.627655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083717, 38.754871, 51.006989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.790596, 39.024849, 50.972466>,  <45.614723, 39.186836, 50.951752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.790596, 39.024849, 50.972466>,  <46.083717, 38.754871, 51.006989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.790596, 39.024849, 50.972466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149425, 0.035875, -0.988122,
		-0.663832, -0.736995, -0.127142,
		-0.732802, 0.674946, -0.086310,
		45.570755, 39.227333, 50.946571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731339, 38.512741, 50.402935>,  <46.083717, 38.754871, 51.006989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731339, 38.512741, 50.402935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.638519, 38.898026, 50.457153>,  <45.582829, 39.129196, 50.489685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.638519, 38.898026, 50.457153>,  <45.731339, 38.512741, 50.402935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638519, 38.898026, 50.457153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210855, 0.185843, -0.959689,
		-0.949575, -0.194117, -0.246224,
		-0.232051, 0.963214, 0.135541,
		45.568905, 39.186989, 50.497814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.418934, 38.710896, 49.771065>,  <45.731339, 38.512741, 50.402935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.418934, 38.710896, 49.771065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.559830, 39.036430, 49.955933>,  <45.644367, 39.231750, 50.066853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.559830, 39.036430, 49.955933>,  <45.418934, 38.710896, 49.771065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559830, 39.036430, 49.955933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527715, 0.235123, -0.816232,
		-0.772945, 0.531401, -0.346654,
		0.352240, 0.813837, 0.462165,
		45.665501, 39.280582, 50.094582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437183, 39.232430, 49.199158>,  <45.418934, 38.710896, 49.771065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437183, 39.232430, 49.199158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.638428, 39.446075, 49.470924>,  <45.759174, 39.574261, 49.633984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.638428, 39.446075, 49.470924>,  <45.437183, 39.232430, 49.199158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638428, 39.446075, 49.470924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537297, 0.422446, -0.729967,
		-0.676901, 0.732300, -0.074441,
		0.503107, 0.534112, 0.679417,
		45.789360, 39.606308, 49.674751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455193, 39.873199, 48.957710>,  <45.437183, 39.232430, 49.199158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455193, 39.873199, 48.957710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.759323, 39.870735, 49.217514>,  <45.941803, 39.869259, 49.373398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.759323, 39.870735, 49.217514>,  <45.455193, 39.873199, 48.957710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759323, 39.870735, 49.217514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582737, 0.448159, -0.677916,
		-0.286909, 0.893933, 0.344336,
		0.760329, -0.006157, 0.649509,
		45.987423, 39.868889, 49.412365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103760, 40.551880, 48.792538>,  <45.455193, 39.873199, 48.957710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103760, 40.551880, 48.792538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.930428, 40.360794, 48.486855>,  <44.826427, 40.246143, 48.303444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.930428, 40.360794, 48.486855>,  <45.103760, 40.551880, 48.792538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930428, 40.360794, 48.486855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693867, -0.364286, 0.621164,
		-0.575128, 0.799429, -0.173611,
		-0.433332, -0.477712, -0.764208,
		44.800426, 40.217480, 48.257591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406464, 40.724350, 48.833607>,  <45.103760, 40.551880, 48.792538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406464, 40.724350, 48.833607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.395458, 40.406235, 48.591362>,  <44.388855, 40.215366, 48.446014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.395458, 40.406235, 48.591362>,  <44.406464, 40.724350, 48.833607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395458, 40.406235, 48.591362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615244, -0.464022, 0.637305,
		-0.787856, 0.390136, -0.476525,
		-0.027517, -0.795284, -0.605612,
		44.387203, 40.167648, 48.409679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686882, 40.487549, 48.813374>,  <44.406464, 40.724350, 48.833607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686882, 40.487549, 48.813374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.888710, 40.166046, 48.687271>,  <44.009808, 39.973145, 48.611610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.888710, 40.166046, 48.687271>,  <43.686882, 40.487549, 48.813374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888710, 40.166046, 48.687271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573993, -0.585054, 0.572925,
		-0.644935, -0.108124, -0.756550,
		0.504569, -0.803754, -0.315260,
		44.040081, 39.924919, 48.592693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167351, 40.125000, 48.660805>,  <43.686882, 40.487549, 48.813374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167351, 40.125000, 48.660805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.479622, 39.882660, 48.722099>,  <43.666985, 39.737255, 48.758877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.479622, 39.882660, 48.722099>,  <43.167351, 40.125000, 48.660805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479622, 39.882660, 48.722099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584750, -0.621686, 0.521128,
		-0.220461, -0.496440, -0.839610,
		0.780682, -0.605850, 0.153236,
		43.713825, 39.700905, 48.768070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003048, 39.430222, 48.446568>,  <43.167351, 40.125000, 48.660805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003048, 39.430222, 48.446568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.319138, 39.376801, 48.685806>,  <43.508789, 39.344749, 48.829350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.319138, 39.376801, 48.685806>,  <43.003048, 39.430222, 48.446568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319138, 39.376801, 48.685806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572890, -0.507529, 0.643592,
		0.217597, -0.851221, -0.477571,
		0.790220, -0.133552, 0.598093,
		43.556202, 39.336735, 48.865234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007515, 38.632332, 48.702038>,  <43.003048, 39.430222, 48.446568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007515, 38.632332, 48.702038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.243267, 38.810844, 48.971394>,  <43.384720, 38.917953, 49.133007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.243267, 38.810844, 48.971394>,  <43.007515, 38.632332, 48.702038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243267, 38.810844, 48.971394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328132, -0.629452, 0.704357,
		0.738214, -0.636097, -0.224547,
		0.589381, 0.446285, 0.673394,
		43.420082, 38.944729, 49.173412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333931, 38.123100, 49.082813>,  <43.007515, 38.632332, 48.702038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333931, 38.123100, 49.082813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.346458, 38.427940, 49.341492>,  <43.353977, 38.610844, 49.496700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.346458, 38.427940, 49.341492>,  <43.333931, 38.123100, 49.082813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346458, 38.427940, 49.341492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315513, -0.606395, 0.729888,
		0.948404, -0.226902, 0.221461,
		0.031320, 0.762103, 0.646698,
		43.355854, 38.656570, 49.535500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582932, 37.813976, 49.723488>,  <43.333931, 38.123100, 49.082813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582932, 37.813976, 49.723488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.413555, 38.163658, 49.818535>,  <43.311928, 38.373466, 49.875565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.413555, 38.163658, 49.818535>,  <43.582932, 37.813976, 49.723488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413555, 38.163658, 49.818535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413086, -0.419760, 0.808184,
		0.806261, 0.244062, 0.538866,
		-0.423442, 0.874205, 0.237618,
		43.286522, 38.425919, 49.889820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493515, 37.819794, 50.482594>,  <43.582932, 37.813976, 49.723488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493515, 37.819794, 50.482594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.224556, 38.095261, 50.374069>,  <43.063179, 38.260540, 50.308952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.224556, 38.095261, 50.374069>,  <43.493515, 37.819794, 50.482594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224556, 38.095261, 50.374069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550662, -0.220474, 0.805085,
		0.494620, 0.690743, 0.527471,
		-0.672401, 0.688669, -0.271315,
		43.022835, 38.301861, 50.292675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277718, 38.148315, 51.112923>,  <43.493515, 37.819794, 50.482594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277718, 38.148315, 51.112923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.992088, 38.256241, 50.854530>,  <42.820709, 38.320995, 50.699493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.992088, 38.256241, 50.854530>,  <43.277718, 38.148315, 51.112923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992088, 38.256241, 50.854530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650467, 0.085429, 0.754715,
		0.258820, 0.959115, 0.114504,
		-0.714076, 0.269816, -0.645983,
		42.777866, 38.337185, 50.660736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022224, 38.844917, 51.335079>,  <43.277718, 38.148315, 51.112923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022224, 38.844917, 51.335079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.741074, 38.652023, 51.125923>,  <42.572384, 38.536285, 51.000431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.741074, 38.652023, 51.125923>,  <43.022224, 38.844917, 51.335079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741074, 38.652023, 51.125923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639271, 0.105905, 0.761654,
		-0.311922, 0.869616, -0.382718,
		-0.702878, -0.482237, -0.522886,
		42.530209, 38.507351, 50.969059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457886, 39.300007, 51.226326>,  <43.022224, 38.844917, 51.335079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457886, 39.300007, 51.226326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.288738, 38.941757, 51.171135>,  <42.187248, 38.726807, 51.138020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.288738, 38.941757, 51.171135>,  <42.457886, 39.300007, 51.226326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288738, 38.941757, 51.171135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681548, 0.213988, 0.699787,
		-0.597222, 0.389954, -0.700901,
		-0.422869, -0.895625, -0.137974,
		42.161877, 38.673069, 51.129742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746960, 39.360058, 51.342281>,  <42.457886, 39.300007, 51.226326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746960, 39.360058, 51.342281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.796135, 38.965561, 51.386497>,  <41.825642, 38.728863, 51.413025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.796135, 38.965561, 51.386497>,  <41.746960, 39.360058, 51.342281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796135, 38.965561, 51.386497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586499, 0.017648, 0.809758,
		-0.800565, -0.164381, -0.576258,
		0.122940, -0.986239, 0.110538,
		41.833015, 38.669689, 51.419659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130180, 39.101933, 51.353539>,  <41.746960, 39.360058, 51.342281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130180, 39.101933, 51.353539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.375816, 38.855209, 51.550491>,  <41.523197, 38.707176, 51.668663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.375816, 38.855209, 51.550491>,  <41.130180, 39.101933, 51.353539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375816, 38.855209, 51.550491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649824, -0.041088, 0.758973,
		-0.447911, -0.786039, -0.426050,
		0.614088, -0.616810, 0.492383,
		41.560043, 38.670166, 51.698208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351070, 39.100471, 51.207291>,  <41.130180, 39.101933, 51.353539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351070, 39.100471, 51.207291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.104744, 39.404785, 51.125343>,  <39.956947, 39.587372, 51.076176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.104744, 39.404785, 51.125343>,  <40.351070, 39.100471, 51.207291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104744, 39.404785, 51.125343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372498, 0.052006, -0.926575,
		-0.694270, -0.646917, -0.315417,
		-0.615821, 0.760785, -0.204869,
		39.919998, 39.633022, 51.063881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192375, 38.898281, 50.551594>,  <40.351070, 39.100471, 51.207291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192375, 38.898281, 50.551594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.099709, 39.283958, 50.603218>,  <40.044109, 39.515366, 50.634193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.099709, 39.283958, 50.603218>,  <40.192375, 38.898281, 50.551594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099709, 39.283958, 50.603218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344425, 0.205379, -0.916073,
		-0.909781, -0.167772, -0.379673,
		-0.231669, 0.964195, 0.129064,
		40.030209, 39.573215, 50.641937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863350, 39.200478, 49.916565>,  <40.192375, 38.898281, 50.551594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863350, 39.200478, 49.916565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983490, 39.527893, 50.112438>,  <40.055573, 39.724342, 50.229961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983490, 39.527893, 50.112438>,  <39.863350, 39.200478, 49.916565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983490, 39.527893, 50.112438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383088, 0.366644, -0.847830,
		-0.873519, 0.442237, -0.203451,
		0.300348, 0.818535, 0.489686,
		40.073593, 39.773453, 50.259342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697285, 39.682350, 49.424652>,  <39.863350, 39.200478, 49.916565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697285, 39.682350, 49.424652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.956665, 39.855560, 49.675091>,  <40.112293, 39.959488, 49.825356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.956665, 39.855560, 49.675091>,  <39.697285, 39.682350, 49.424652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956665, 39.855560, 49.675091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481054, 0.404337, -0.777880,
		-0.589996, 0.805606, 0.053885,
		0.648453, 0.433025, 0.626098,
		40.151199, 39.985466, 49.862919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687965, 40.379822, 49.276207>,  <39.697285, 39.682350, 49.424652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687965, 40.379822, 49.276207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.036007, 40.316505, 49.462910>,  <40.244831, 40.278515, 49.574932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.036007, 40.316505, 49.462910>,  <39.687965, 40.379822, 49.276207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036007, 40.316505, 49.462910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477133, 0.507887, -0.717213,
		-0.123530, 0.846755, 0.517442,
		0.870106, -0.158291, 0.466754,
		40.297039, 40.269016, 49.602936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978733, 41.083130, 49.341652>,  <39.687965, 40.379822, 49.276207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978733, 41.083130, 49.341652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290939, 40.835533, 49.376625>,  <40.478264, 40.686974, 49.397610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290939, 40.835533, 49.376625>,  <39.978733, 41.083130, 49.341652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290939, 40.835533, 49.376625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511523, 0.551980, -0.658530,
		0.359366, 0.558716, 0.747458,
		0.780513, -0.618995, 0.087433,
		40.525093, 40.649834, 49.402855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558380, 41.453880, 49.490021>,  <39.978733, 41.083130, 49.341652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558380, 41.453880, 49.490021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.691143, 41.114571, 49.324966>,  <40.770802, 40.910984, 49.225933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.691143, 41.114571, 49.324966>,  <40.558380, 41.453880, 49.490021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691143, 41.114571, 49.324966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577180, 0.528615, -0.622438,
		0.746126, -0.031578, 0.665056,
		0.331903, -0.848274, -0.412639,
		40.790714, 40.860088, 49.201176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347160, 41.463898, 49.431149>,  <40.558380, 41.453880, 49.490021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347160, 41.463898, 49.431149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.211498, 41.206161, 49.156982>,  <41.130100, 41.051521, 48.992481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.211498, 41.206161, 49.156982>,  <41.347160, 41.463898, 49.431149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211498, 41.206161, 49.156982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681191, 0.334296, -0.651325,
		0.648809, -0.687800, 0.325542,
		-0.339154, -0.644342, -0.685418,
		41.109753, 41.012859, 48.951359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959373, 41.111183, 49.079754>,  <41.347160, 41.463898, 49.431149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959373, 41.111183, 49.079754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.653236, 41.060753, 48.827293>,  <41.469555, 41.030495, 48.675816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.653236, 41.060753, 48.827293>,  <41.959373, 41.111183, 49.079754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653236, 41.060753, 48.827293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616032, 0.140532, -0.775084,
		0.186420, -0.982016, -0.029886,
		-0.765345, -0.126081, -0.631151,
		41.423634, 41.022930, 48.637947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264751, 40.784428, 48.533768>,  <41.959373, 41.111183, 49.079754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264751, 40.784428, 48.533768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.905247, 40.899895, 48.401772>,  <41.689545, 40.969173, 48.322575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.905247, 40.899895, 48.401772>,  <42.264751, 40.784428, 48.533768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905247, 40.899895, 48.401772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362141, 0.064518, -0.929888,
		-0.247137, -0.955253, -0.162525,
		-0.898764, 0.288667, -0.329992,
		41.635616, 40.986496, 48.302773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313255, 40.518234, 47.955036>,  <42.264751, 40.784428, 48.533768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313255, 40.518234, 47.955036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.040585, 40.809685, 47.928429>,  <41.876984, 40.984554, 47.912464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.040585, 40.809685, 47.928429>,  <42.313255, 40.518234, 47.955036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040585, 40.809685, 47.928429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230965, 0.128028, -0.964502,
		-0.694245, -0.672839, -0.255561,
		-0.681673, 0.728626, -0.066519,
		41.836082, 41.028275, 47.908474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005527, 40.555603, 47.239658>,  <42.313255, 40.518234, 47.955036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005527, 40.555603, 47.239658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.901421, 40.922302, 47.360870>,  <41.838955, 41.142323, 47.433598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.901421, 40.922302, 47.360870>,  <42.005527, 40.555603, 47.239658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901421, 40.922302, 47.360870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142868, 0.346962, -0.926934,
		-0.954908, -0.197958, -0.221277,
		-0.260269, 0.916750, 0.303035,
		41.823341, 41.197327, 47.451782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629475, 40.769432, 46.625042>,  <42.005527, 40.555603, 47.239658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629475, 40.769432, 46.625042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.720268, 41.101707, 46.828384>,  <41.774746, 41.301071, 46.950390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.720268, 41.101707, 46.828384>,  <41.629475, 40.769432, 46.625042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720268, 41.101707, 46.828384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363023, 0.412197, -0.835648,
		-0.903709, 0.374229, -0.207996,
		0.226989, 0.830690, 0.508360,
		41.788364, 41.350914, 46.980892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419930, 41.237854, 46.291695>,  <41.629475, 40.769432, 46.625042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419930, 41.237854, 46.291695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.681683, 41.438805, 46.517754>,  <41.838734, 41.559376, 46.653389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.681683, 41.438805, 46.517754>,  <41.419930, 41.237854, 46.291695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681683, 41.438805, 46.517754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344120, 0.467661, -0.814171,
		-0.673322, 0.727261, 0.133151,
		0.654384, 0.502380, 0.565151,
		41.877998, 41.589520, 46.687298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.111782, 43.054688, 52.002533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393295, 42.928909, 52.257347>,  <39.562202, 42.853443, 52.410236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393295, 42.928909, 52.257347>,  <39.111782, 43.054688, 52.002533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393295, 42.928909, 52.257347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673913, -0.579242, 0.458606,
		0.224791, -0.752066, -0.619569,
		0.703783, -0.314445, 0.637035,
		39.604431, 42.834576, 52.448456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953259, 42.340279, 52.032330>,  <39.111782, 43.054688, 52.002533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953259, 42.340279, 52.032330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.156227, 42.444519, 52.360870>,  <39.278008, 42.507061, 52.557995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.156227, 42.444519, 52.360870>,  <38.953259, 42.340279, 52.032330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156227, 42.444519, 52.360870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600116, -0.577148, 0.553860,
		0.618375, -0.773944, -0.136467,
		0.507419, 0.260597, 0.821350,
		39.308453, 42.522697, 52.607277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724594, 41.881527, 52.506382>,  <38.953259, 42.340279, 52.032330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724594, 41.881527, 52.506382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.939201, 42.128052, 52.736961>,  <39.067966, 42.275967, 52.875309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.939201, 42.128052, 52.736961>,  <38.724594, 41.881527, 52.506382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939201, 42.128052, 52.736961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498191, -0.320032, 0.805844,
		0.681139, -0.719537, 0.135339,
		0.536522, 0.616316, 0.576453,
		39.100159, 42.312946, 52.909897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069942, 41.521461, 53.210934>,  <38.724594, 41.881527, 52.506382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069942, 41.521461, 53.210934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.994370, 41.910973, 53.261631>,  <38.949024, 42.144680, 53.292049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.994370, 41.910973, 53.261631>,  <39.069942, 41.521461, 53.210934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994370, 41.910973, 53.261631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527718, -0.209530, 0.823172,
		0.828142, 0.088639, 0.553466,
		-0.188933, 0.973776, 0.126744,
		38.937691, 42.203106, 53.299656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138275, 41.589920, 53.865170>,  <39.069942, 41.521461, 53.210934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138275, 41.589920, 53.865170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.924820, 41.914871, 53.771130>,  <38.796745, 42.109840, 53.714706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.924820, 41.914871, 53.771130>,  <39.138275, 41.589920, 53.865170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924820, 41.914871, 53.771130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641734, -0.207912, 0.738208,
		0.550822, 0.544810, 0.632279,
		-0.533641, 0.812376, -0.235101,
		38.764729, 42.158585, 53.700600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092735, 42.011909, 54.487839>,  <39.138275, 41.589920, 53.865170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092735, 42.011909, 54.487839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786781, 42.120644, 54.254238>,  <38.603207, 42.185883, 54.114079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786781, 42.120644, 54.254238>,  <39.092735, 42.011909, 54.487839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786781, 42.120644, 54.254238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632309, -0.143698, 0.761273,
		0.123019, 0.951555, 0.281795,
		-0.764887, 0.271833, -0.584000,
		38.557316, 42.202194, 54.079037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706173, 42.394497, 54.952297>,  <39.092735, 42.011909, 54.487839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706173, 42.394497, 54.952297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.459888, 42.310165, 54.648598>,  <38.312119, 42.259567, 54.466377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.459888, 42.310165, 54.648598>,  <38.706173, 42.394497, 54.952297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459888, 42.310165, 54.648598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731118, -0.206513, 0.650246,
		-0.293885, 0.955460, -0.026990,
		-0.615710, -0.210830, -0.759245,
		38.275177, 42.246918, 54.420826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154720, 42.889984, 55.044662>,  <38.706173, 42.394497, 54.952297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154720, 42.889984, 55.044662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.005695, 42.601257, 54.811363>,  <37.916279, 42.428020, 54.671383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.005695, 42.601257, 54.811363>,  <38.154720, 42.889984, 55.044662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005695, 42.601257, 54.811363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800403, -0.068122, 0.595579,
		-0.469629, 0.688728, -0.552361,
		-0.372564, -0.721813, -0.583252,
		37.893925, 42.384712, 54.636387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477543, 43.072456, 54.792313>,  <38.154720, 42.889984, 55.044662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477543, 43.072456, 54.792313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477020, 42.673683, 54.761009>,  <37.476707, 42.434418, 54.742226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477020, 42.673683, 54.761009>,  <37.477543, 43.072456, 54.792313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477020, 42.673683, 54.761009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868334, -0.037681, 0.494546,
		-0.495978, 0.068603, -0.865621,
		-0.001311, -0.996932, -0.078259,
		37.476627, 42.374603, 54.737530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798485, 42.964092, 54.643349>,  <37.477543, 43.072456, 54.792313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798485, 42.964092, 54.643349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955208, 42.615669, 54.761833>,  <37.049240, 42.406616, 54.832924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955208, 42.615669, 54.761833>,  <36.798485, 42.964092, 54.643349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955208, 42.615669, 54.761833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808255, -0.172059, 0.563134,
		-0.439557, -0.460054, -0.771453,
		0.391808, -0.871060, 0.296211,
		37.072750, 42.354351, 54.850697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298706, 42.430172, 54.586002>,  <36.798485, 42.964092, 54.643349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298706, 42.430172, 54.586002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554779, 42.269753, 54.848095>,  <36.708424, 42.173500, 55.005348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554779, 42.269753, 54.848095>,  <36.298706, 42.430172, 54.586002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554779, 42.269753, 54.848095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747055, -0.126159, 0.652681,
		-0.179099, -0.907324, -0.380376,
		0.640181, -0.401057, 0.655226,
		36.746834, 42.149437, 55.044662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943974, 41.812206, 54.793739>,  <36.298706, 42.430172, 54.586002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943974, 41.812206, 54.793739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.237186, 41.873817, 55.058746>,  <36.413116, 41.910786, 55.217751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.237186, 41.873817, 55.058746>,  <35.943974, 41.812206, 54.793739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237186, 41.873817, 55.058746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662587, -0.058456, 0.746700,
		0.153740, -0.986336, 0.059206,
		0.733036, 0.154027, 0.662521,
		36.457096, 41.920025, 55.257504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955284, 41.183556, 55.145229>,  <35.943974, 41.812206, 54.793739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955284, 41.183556, 55.145229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.100643, 41.474915, 55.377567>,  <36.187859, 41.649731, 55.516968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.100643, 41.474915, 55.377567>,  <35.955284, 41.183556, 55.145229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100643, 41.474915, 55.377567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613015, -0.282527, 0.737828,
		0.701535, -0.624194, 0.343847,
		0.363402, 0.728396, 0.580843,
		36.209663, 41.693432, 55.551819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415859, 41.130272, 55.702843>,  <35.955284, 41.183556, 55.145229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415859, 41.130272, 55.702843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145676, 41.410400, 55.795185>,  <35.983566, 41.578480, 55.850590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145676, 41.410400, 55.795185>,  <36.415859, 41.130272, 55.702843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145676, 41.410400, 55.795185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517820, -0.673377, 0.527661,
		0.524988, 0.236873, 0.817483,
		-0.675463, 0.700325, 0.230858,
		35.943035, 41.620499, 55.864441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439602, 40.334347, 55.628952>,  <36.415859, 41.130272, 55.702843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439602, 40.334347, 55.628952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247383, 40.023628, 55.466145>,  <36.132053, 39.837196, 55.368458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247383, 40.023628, 55.466145>,  <36.439602, 40.334347, 55.628952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247383, 40.023628, 55.466145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773567, -0.156831, -0.614001,
		0.413119, -0.609915, 0.676267,
		-0.480548, -0.776793, -0.407020,
		36.103218, 39.790588, 55.344040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888916, 39.791958, 55.634689>,  <36.439602, 40.334347, 55.628952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888916, 39.791958, 55.634689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.619350, 39.712082, 55.350166>,  <36.457611, 39.664154, 55.179451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.619350, 39.712082, 55.350166>,  <36.888916, 39.791958, 55.634689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619350, 39.712082, 55.350166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736308, -0.102391, -0.668854,
		0.060734, -0.974494, 0.216038,
		-0.673915, -0.199693, -0.711310,
		36.417175, 39.652176, 55.136772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231140, 39.410133, 55.301796>,  <36.888916, 39.791958, 55.634689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231140, 39.410133, 55.301796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.938354, 39.458763, 55.033630>,  <36.762684, 39.487942, 54.872730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.938354, 39.458763, 55.033630>,  <37.231140, 39.410133, 55.301796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938354, 39.458763, 55.033630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628534, -0.259346, -0.733270,
		-0.263038, -0.958098, 0.113397,
		-0.731953, 0.121604, -0.670415,
		36.718765, 39.495235, 54.832508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987110, 38.728992, 54.924713>,  <37.231140, 39.410133, 55.301796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987110, 38.728992, 54.924713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.933060, 39.061127, 54.708458>,  <36.900627, 39.260406, 54.578705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.933060, 39.061127, 54.708458>,  <36.987110, 38.728992, 54.924713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933060, 39.061127, 54.708458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679834, -0.319245, -0.660234,
		-0.720809, -0.456757, -0.521351,
		-0.135128, 0.830335, -0.540634,
		36.892521, 39.310226, 54.546268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451389, 38.562771, 54.381748>,  <36.987110, 38.728992, 54.924713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451389, 38.562771, 54.381748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332458, 38.922974, 54.254822>,  <37.261101, 39.139095, 54.178665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332458, 38.922974, 54.254822>,  <37.451389, 38.562771, 54.381748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332458, 38.922974, 54.254822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627491, -0.066192, -0.775805,
		-0.719620, -0.429779, -0.545378,
		-0.297325, 0.900505, -0.317316,
		37.243259, 39.193127, 54.159626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386257, 38.514431, 53.620575>,  <37.451389, 38.562771, 54.381748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386257, 38.514431, 53.620575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.381798, 38.908768, 53.687492>,  <37.379124, 39.145370, 53.727642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.381798, 38.908768, 53.687492>,  <37.386257, 38.514431, 53.620575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381798, 38.908768, 53.687492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558793, 0.144883, -0.816553,
		-0.829232, 0.084381, -0.552498,
		-0.011146, 0.985844, 0.167293,
		37.378452, 39.204521, 53.737679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305309, 38.873318, 52.928146>,  <37.386257, 38.514431, 53.620575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305309, 38.873318, 52.928146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.476044, 39.140732, 53.171745>,  <37.578484, 39.301182, 53.317905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.476044, 39.140732, 53.171745>,  <37.305309, 38.873318, 52.928146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476044, 39.140732, 53.171745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670067, 0.218437, -0.709433,
		-0.607309, 0.710876, -0.354728,
		0.426833, 0.668537, 0.608993,
		37.604095, 39.341293, 53.354443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261139, 39.463531, 52.560825>,  <37.305309, 38.873318, 52.928146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261139, 39.463531, 52.560825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551735, 39.511070, 52.831554>,  <37.726093, 39.539593, 52.993992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551735, 39.511070, 52.831554>,  <37.261139, 39.463531, 52.560825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551735, 39.511070, 52.831554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590933, 0.394662, -0.703591,
		-0.350736, 0.911108, 0.216487,
		0.726486, 0.118845, 0.676826,
		37.769680, 39.546722, 53.034603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563732, 39.916309, 52.322956>,  <37.261139, 39.463531, 52.560825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563732, 39.916309, 52.322956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.839394, 39.817329, 52.595379>,  <38.004791, 39.757942, 52.758835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.839394, 39.817329, 52.595379>,  <37.563732, 39.916309, 52.322956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839394, 39.817329, 52.595379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724618, 0.236341, -0.647357,
		-0.000774, 0.939634, 0.342181,
		0.689150, -0.247449, 0.681059,
		38.046139, 39.743095, 52.799698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104065, 40.433357, 52.270138>,  <37.563732, 39.916309, 52.322956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104065, 40.433357, 52.270138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.259743, 40.093742, 52.413055>,  <38.353149, 39.889973, 52.498806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.259743, 40.093742, 52.413055>,  <38.104065, 40.433357, 52.270138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259743, 40.093742, 52.413055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747375, 0.064308, -0.661282,
		0.538476, 0.524404, 0.659579,
		0.389195, -0.849038, 0.357298,
		38.376503, 39.839031, 52.520245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820427, 40.578690, 52.399109>,  <38.104065, 40.433357, 52.270138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820427, 40.578690, 52.399109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.839516, 40.179214, 52.391602>,  <38.850967, 39.939529, 52.387096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.839516, 40.179214, 52.391602>,  <38.820427, 40.578690, 52.399109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839516, 40.179214, 52.391602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807262, 0.049631, -0.588103,
		0.588261, 0.012911, 0.808568,
		0.047723, -0.998684, -0.018773,
		38.853832, 39.879608, 52.385971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524662, 40.366776, 52.580242>,  <38.820427, 40.578690, 52.399109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524662, 40.366776, 52.580242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.339489, 40.070839, 52.384964>,  <39.228386, 39.893276, 52.267796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.339489, 40.070839, 52.384964>,  <39.524662, 40.366776, 52.580242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339489, 40.070839, 52.384964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712621, 0.016899, -0.701346,
		0.527132, -0.672573, 0.519400,
		-0.462929, -0.739838, -0.488198,
		39.200611, 39.848888, 52.238506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103340, 39.989189, 52.324451>,  <39.524662, 40.366776, 52.580242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103340, 39.989189, 52.324451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783642, 39.891602, 52.104748>,  <39.591824, 39.833050, 51.972923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783642, 39.891602, 52.104748>,  <40.103340, 39.989189, 52.324451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783642, 39.891602, 52.104748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596507, -0.210395, -0.774541,
		0.073401, -0.946686, 0.313685,
		-0.799244, -0.243968, -0.549261,
		39.543869, 39.818413, 51.939968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173531, 39.345695, 51.927986>,  <40.103340, 39.989189, 52.324451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173531, 39.345695, 51.927986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.907616, 39.517097, 51.683224>,  <39.748066, 39.619938, 51.536366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.907616, 39.517097, 51.683224>,  <40.173531, 39.345695, 51.927986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907616, 39.517097, 51.683224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646553, -0.080261, -0.758635,
		-0.374194, -0.899966, -0.223696,
		-0.664792, 0.428508, -0.611909,
		39.708179, 39.645649, 51.499649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650970, 38.849190, 51.809250>,  <40.173531, 39.345695, 51.927986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650970, 38.849190, 51.809250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.002312, 38.719681, 51.949917>,  <41.213116, 38.641975, 52.034317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.002312, 38.719681, 51.949917>,  <40.650970, 38.849190, 51.809250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002312, 38.719681, 51.949917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375577, -0.012355, 0.926709,
		-0.295697, -0.946055, -0.132454,
		0.878354, -0.323772, 0.351663,
		41.265820, 38.622551, 52.055416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315716, 38.236782, 52.131561>,  <40.650970, 38.849190, 51.809250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315716, 38.236782, 52.131561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.677200, 38.311295, 52.285755>,  <40.894093, 38.356003, 52.378273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.677200, 38.311295, 52.285755>,  <40.315716, 38.236782, 52.131561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677200, 38.311295, 52.285755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314007, -0.323655, 0.892551,
		0.291030, -0.927656, -0.233998,
		0.903715, 0.186282, 0.385484,
		40.948315, 38.367180, 52.401402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506348, 37.665730, 52.533340>,  <40.315716, 38.236782, 52.131561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506348, 37.665730, 52.533340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.719543, 37.977478, 52.665096>,  <40.847462, 38.164528, 52.744152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.719543, 37.977478, 52.665096>,  <40.506348, 37.665730, 52.533340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719543, 37.977478, 52.665096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229675, -0.241417, 0.942851,
		0.814354, -0.578182, 0.050330,
		0.532989, 0.779374, 0.329392,
		40.879440, 38.211288, 52.763912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924686, 37.462616, 53.138180>,  <40.506348, 37.665730, 52.533340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924686, 37.462616, 53.138180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.909306, 37.860458, 53.176731>,  <40.900078, 38.099163, 53.199863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.909306, 37.860458, 53.176731>,  <40.924686, 37.462616, 53.138180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909306, 37.860458, 53.176731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162484, -0.101391, 0.981488,
		0.985962, 0.022081, 0.165505,
		-0.038453, 0.994601, 0.096380,
		40.897770, 38.158840, 53.205647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384624, 37.684151, 53.694324>,  <40.924686, 37.462616, 53.138180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384624, 37.684151, 53.694324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.120037, 37.977188, 53.630123>,  <40.961285, 38.153011, 53.591602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.120037, 37.977188, 53.630123>,  <41.384624, 37.684151, 53.694324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120037, 37.977188, 53.630123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117093, 0.110510, 0.986953,
		0.740776, 0.671632, 0.012683,
		-0.661468, 0.732596, -0.160507,
		40.921597, 38.196968, 53.581970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460663, 38.129822, 54.286945>,  <41.384624, 37.684151, 53.694324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460663, 38.129822, 54.286945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.101963, 38.197899, 54.123543>,  <40.886745, 38.238747, 54.025501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.101963, 38.197899, 54.123543>,  <41.460663, 38.129822, 54.286945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101963, 38.197899, 54.123543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419580, -0.033471, 0.907101,
		0.140711, 0.984842, 0.101425,
		-0.896746, 0.170195, -0.408510,
		40.832939, 38.248959, 54.000988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106499, 38.430931, 54.859360>,  <41.460663, 38.129822, 54.286945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106499, 38.430931, 54.859360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.799713, 38.375031, 54.608845>,  <40.615643, 38.341492, 54.458534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.799713, 38.375031, 54.608845>,  <41.106499, 38.430931, 54.859360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799713, 38.375031, 54.608845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618776, -0.097433, 0.779502,
		-0.169955, 0.985382, -0.011745,
		-0.766962, -0.139748, -0.626290,
		40.569626, 38.333107, 54.420959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202148, 39.000301, 55.424831>,  <41.106499, 38.430931, 54.859360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202148, 39.000301, 55.424831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.466415, 38.878754, 55.699402>,  <41.624977, 38.805824, 55.864143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.466415, 38.878754, 55.699402>,  <41.202148, 39.000301, 55.424831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466415, 38.878754, 55.699402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733643, 0.067678, -0.676157,
		0.159010, 0.950306, 0.267646,
		0.660670, -0.303872, 0.686424,
		41.664616, 38.787594, 55.905331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711548, 39.484592, 55.419750>,  <41.202148, 39.000301, 55.424831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711548, 39.484592, 55.419750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.886429, 39.168427, 55.591373>,  <41.991360, 38.978725, 55.694347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.886429, 39.168427, 55.591373>,  <41.711548, 39.484592, 55.419750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886429, 39.168427, 55.591373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782310, 0.098891, -0.614989,
		0.443668, 0.604534, 0.661587,
		0.437207, -0.790417, 0.429058,
		42.017590, 38.931301, 55.720093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401577, 39.760094, 55.530598>,  <41.711548, 39.484592, 55.419750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401577, 39.760094, 55.530598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.395073, 39.361069, 55.557716>,  <42.391171, 39.121655, 55.573986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.395073, 39.361069, 55.557716>,  <42.401577, 39.760094, 55.530598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395073, 39.361069, 55.557716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818095, -0.052253, -0.572704,
		0.574853, 0.046154, 0.816954,
		-0.016256, -0.997567, 0.067796,
		42.390198, 39.061798, 55.578056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113251, 39.626003, 55.639114>,  <42.401577, 39.760094, 55.530598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113251, 39.626003, 55.639114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.955246, 39.286041, 55.499619>,  <42.860443, 39.082062, 55.415920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.955246, 39.286041, 55.499619>,  <43.113251, 39.626003, 55.639114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955246, 39.286041, 55.499619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807819, -0.140568, -0.572424,
		0.437486, -0.507835, 0.742098,
		-0.395012, -0.849908, -0.348742,
		42.836742, 39.031067, 55.394997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617661, 39.129364, 55.652958>,  <43.113251, 39.626003, 55.639114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617661, 39.129364, 55.652958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.351204, 39.010475, 55.379341>,  <43.191330, 38.939144, 55.215172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.351204, 39.010475, 55.379341>,  <43.617661, 39.129364, 55.652958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351204, 39.010475, 55.379341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738426, -0.133995, -0.660887,
		0.104770, -0.945360, 0.308734,
		-0.666146, -0.297218, -0.684040,
		43.151360, 38.921310, 55.174129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988312, 38.631863, 55.233028>,  <43.617661, 39.129364, 55.652958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988312, 38.631863, 55.233028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.668709, 38.704292, 55.003662>,  <43.476948, 38.747749, 54.866043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.668709, 38.704292, 55.003662>,  <43.988312, 38.631863, 55.233028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668709, 38.704292, 55.003662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523335, -0.260267, -0.811407,
		-0.296163, -0.948406, 0.113193,
		-0.799004, 0.181071, -0.573416,
		43.429008, 38.758614, 54.831638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964542, 37.951096, 54.794205>,  <43.988312, 38.631863, 55.233028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964542, 37.951096, 54.794205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.815182, 38.297043, 54.659996>,  <43.725563, 38.504612, 54.579472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.815182, 38.297043, 54.659996>,  <43.964542, 37.951096, 54.794205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815182, 38.297043, 54.659996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563455, -0.075875, -0.822655,
		-0.736944, -0.496235, -0.458981,
		-0.373405, 0.864866, -0.335522,
		43.703159, 38.556503, 54.559338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.130817, 42.091663, 57.361069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.959305, 42.249268, 57.035885>,  <38.856396, 42.343830, 56.840775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.959305, 42.249268, 57.035885>,  <39.130817, 42.091663, 57.361069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959305, 42.249268, 57.035885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896079, 0.071110, -0.438161,
		-0.114832, -0.916350, -0.383557,
		-0.428784, 0.394013, -0.812957,
		38.830669, 42.367470, 56.791996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661835, 42.110962, 56.967289>,  <39.130817, 42.091663, 57.361069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661835, 42.110962, 56.967289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.384132, 42.272743, 56.729153>,  <39.217510, 42.369812, 56.586269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.384132, 42.272743, 56.729153>,  <39.661835, 42.110962, 56.967289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384132, 42.272743, 56.729153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681868, 0.104856, -0.723921,
		-0.230367, -0.908528, -0.348580,
		-0.694253, 0.404453, -0.595341,
		39.175858, 42.394077, 56.550549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550022, 41.782185, 56.327328>,  <39.661835, 42.110962, 56.967289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550022, 41.782185, 56.327328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.419312, 42.146347, 56.225842>,  <39.340885, 42.364845, 56.164951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.419312, 42.146347, 56.225842>,  <39.550022, 41.782185, 56.327328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419312, 42.146347, 56.225842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704249, 0.055534, -0.707778,
		-0.630279, -0.409963, -0.659302,
		-0.326776, 0.910410, -0.253714,
		39.321278, 42.419472, 56.149727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915447, 41.825871, 55.713825>,  <39.550022, 41.782185, 56.327328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915447, 41.825871, 55.713825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807789, 42.203156, 55.791714>,  <39.743195, 42.429527, 55.838448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807789, 42.203156, 55.791714>,  <39.915447, 41.825871, 55.713825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807789, 42.203156, 55.791714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795363, 0.331689, -0.507326,
		-0.543101, 0.018327, -0.839468,
		-0.269144, 0.943211, 0.194717,
		39.727047, 42.486118, 55.850128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214298, 42.205891, 55.170937>,  <39.915447, 41.825871, 55.713825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214298, 42.205891, 55.170937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.108772, 42.509598, 55.408897>,  <40.045456, 42.691822, 55.551674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.108772, 42.509598, 55.408897>,  <40.214298, 42.205891, 55.170937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108772, 42.509598, 55.408897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727796, 0.561442, -0.393822,
		-0.633022, 0.329074, -0.700709,
		-0.263811, 0.759271, 0.594904,
		40.029629, 42.737381, 55.587368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188755, 42.809727, 54.725414>,  <40.214298, 42.205891, 55.170937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188755, 42.809727, 54.725414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.256813, 42.928307, 55.101322>,  <40.297649, 42.999454, 55.326866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.256813, 42.928307, 55.101322>,  <40.188755, 42.809727, 54.725414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256813, 42.928307, 55.101322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703221, 0.631547, -0.326540,
		-0.690312, 0.716426, -0.101013,
		0.170147, 0.296449, 0.939770,
		40.307858, 43.017242, 55.383255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181644, 43.579849, 54.757061>,  <40.188755, 42.809727, 54.725414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181644, 43.579849, 54.757061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402802, 43.505646, 55.081997>,  <40.535496, 43.461124, 55.276958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402802, 43.505646, 55.081997>,  <40.181644, 43.579849, 54.757061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402802, 43.505646, 55.081997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743674, 0.549596, -0.380649,
		-0.375846, 0.814574, 0.441824,
		0.552892, -0.185508, 0.812341,
		40.568668, 43.449993, 55.325699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411011, 44.263256, 55.083408>,  <40.181644, 43.579849, 54.757061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411011, 44.263256, 55.083408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.651871, 43.962700, 55.191357>,  <40.796387, 43.782368, 55.256126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.651871, 43.962700, 55.191357>,  <40.411011, 44.263256, 55.083408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651871, 43.962700, 55.191357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769662, 0.456476, -0.446373,
		0.212211, 0.476492, 0.853183,
		0.602151, -0.751388, 0.269869,
		40.832516, 43.737282, 55.272316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988705, 44.679470, 55.208500>,  <40.411011, 44.263256, 55.083408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988705, 44.679470, 55.208500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.117531, 44.301430, 55.186386>,  <41.194828, 44.074604, 55.173119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.117531, 44.301430, 55.186386>,  <40.988705, 44.679470, 55.208500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117531, 44.301430, 55.186386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717501, 0.281769, -0.637023,
		0.617629, 0.165497, 0.768860,
		0.322066, -0.945101, -0.055284,
		41.214149, 44.017899, 55.169800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749908, 44.733055, 55.252403>,  <40.988705, 44.679470, 55.208500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749908, 44.733055, 55.252403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.693813, 44.373405, 55.086555>,  <41.660156, 44.157616, 54.987045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.693813, 44.373405, 55.086555>,  <41.749908, 44.733055, 55.252403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693813, 44.373405, 55.086555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879651, 0.079075, -0.469001,
		0.454476, -0.430495, 0.779824,
		-0.140238, -0.899122, -0.414623,
		41.651741, 44.103668, 54.962170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380089, 44.395435, 55.298538>,  <41.749908, 44.733055, 55.252403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380089, 44.395435, 55.298538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.185532, 44.217735, 54.997589>,  <42.068798, 44.111115, 54.817020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.185532, 44.217735, 54.997589>,  <42.380089, 44.395435, 55.298538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185532, 44.217735, 54.997589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826603, 0.045053, -0.560980,
		0.283113, -0.894769, 0.345306,
		-0.486390, -0.444251, -0.752373,
		42.039616, 44.084461, 54.771877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746590, 43.844944, 55.071316>,  <42.380089, 44.395435, 55.298538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746590, 43.844944, 55.071316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.517570, 43.926376, 54.753639>,  <42.380157, 43.975235, 54.563034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.517570, 43.926376, 54.753639>,  <42.746590, 43.844944, 55.071316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517570, 43.926376, 54.753639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810320, -0.006925, -0.585947,
		-0.124789, -0.979033, -0.161003,
		-0.572547, 0.203584, -0.794194,
		42.345806, 43.987450, 54.515381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845989, 43.135651, 55.365322>,  <42.746590, 43.844944, 55.071316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845989, 43.135651, 55.365322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.165009, 43.010239, 55.571472>,  <43.356422, 42.934990, 55.695160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.165009, 43.010239, 55.571472>,  <42.845989, 43.135651, 55.365322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165009, 43.010239, 55.571472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584073, -0.615035, 0.529708,
		0.150893, -0.723485, -0.673648,
		0.797553, -0.313530, 0.515372,
		43.404274, 42.916180, 55.726086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833908, 42.409683, 55.377232>,  <42.845989, 43.135651, 55.365322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833908, 42.409683, 55.377232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.064274, 42.508980, 55.688793>,  <43.202492, 42.568558, 55.875732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.064274, 42.508980, 55.688793>,  <42.833908, 42.409683, 55.377232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064274, 42.508980, 55.688793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530302, -0.611682, 0.587048,
		0.622175, -0.751146, -0.220632,
		0.575915, 0.248245, 0.778907,
		43.237049, 42.583454, 55.922466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013111, 41.745998, 55.634727>,  <42.833908, 42.409683, 55.377232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013111, 41.745998, 55.634727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.025909, 42.026093, 55.920006>,  <43.033588, 42.194149, 56.091171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.025909, 42.026093, 55.920006>,  <43.013111, 41.745998, 55.634727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025909, 42.026093, 55.920006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478176, -0.615875, 0.626136,
		0.877681, -0.361063, 0.315133,
		0.031992, 0.700237, 0.713194,
		43.035507, 42.236164, 56.133965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137753, 41.398308, 56.205822>,  <43.013111, 41.745998, 55.634727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137753, 41.398308, 56.205822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.025436, 41.744278, 56.372223>,  <42.958046, 41.951859, 56.472061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.025436, 41.744278, 56.372223>,  <43.137753, 41.398308, 56.205822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025436, 41.744278, 56.372223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645178, -0.491000, 0.585375,
		0.710563, -0.104024, 0.695902,
		-0.280795, 0.864927, 0.416000,
		42.941196, 42.003757, 56.497025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898731, 41.169003, 56.897018>,  <43.137753, 41.398308, 56.205822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898731, 41.169003, 56.897018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.782200, 41.551247, 56.879440>,  <42.712280, 41.780594, 56.868893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.782200, 41.551247, 56.879440>,  <42.898731, 41.169003, 56.897018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782200, 41.551247, 56.879440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720958, -0.189130, 0.666670,
		0.628767, 0.225903, 0.744056,
		-0.291327, 0.955614, -0.043948,
		42.694801, 41.837933, 56.866257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037701, 41.500019, 57.514263>,  <42.898731, 41.169003, 56.897018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037701, 41.500019, 57.514263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.735901, 41.681519, 57.324593>,  <42.554821, 41.790421, 57.210789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.735901, 41.681519, 57.324593>,  <43.037701, 41.500019, 57.514263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735901, 41.681519, 57.324593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649327, -0.411048, 0.639854,
		0.095425, 0.790664, 0.604768,
		-0.754498, 0.453751, -0.474175,
		42.509552, 41.817642, 57.182339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671246, 41.984634, 57.939877>,  <43.037701, 41.500019, 57.514263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671246, 41.984634, 57.939877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.412411, 41.869629, 57.657425>,  <42.257111, 41.800625, 57.487953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.412411, 41.869629, 57.657425>,  <42.671246, 41.984634, 57.939877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412411, 41.869629, 57.657425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647633, -0.281433, 0.708072,
		-0.402308, 0.915495, -0.004092,
		-0.647085, -0.287514, -0.706128,
		42.218285, 41.783375, 57.445587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073696, 42.152382, 58.331276>,  <42.671246, 41.984634, 57.939877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073696, 42.152382, 58.331276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.923309, 41.968979, 58.009178>,  <41.833076, 41.858936, 57.815918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.923309, 41.968979, 58.009178>,  <42.073696, 42.152382, 58.331276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923309, 41.968979, 58.009178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779144, -0.313965, 0.542550,
		-0.501582, 0.831382, -0.239204,
		-0.375965, -0.458508, -0.805246,
		41.810520, 41.831425, 57.767605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345699, 42.342888, 58.259724>,  <42.073696, 42.152382, 58.331276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345699, 42.342888, 58.259724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.418892, 41.985115, 58.096504>,  <41.462807, 41.770451, 57.998573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.418892, 41.985115, 58.096504>,  <41.345699, 42.342888, 58.259724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418892, 41.985115, 58.096504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758450, -0.392515, 0.520275,
		-0.625518, 0.214284, -0.750207,
		0.182981, -0.894435, -0.408049,
		41.473785, 41.716785, 57.974091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664501, 42.103523, 58.174320>,  <41.345699, 42.342888, 58.259724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664501, 42.103523, 58.174320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.909451, 41.787949, 58.154022>,  <41.056419, 41.598602, 58.141842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.909451, 41.787949, 58.154022>,  <40.664501, 42.103523, 58.174320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909451, 41.787949, 58.154022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666577, -0.549780, 0.503406,
		-0.425055, -0.274446, -0.862559,
		0.612375, -0.788937, -0.050747,
		41.093163, 41.551266, 58.138798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285820, 41.572147, 57.999695>,  <40.664501, 42.103523, 58.174320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285820, 41.572147, 57.999695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.608803, 41.384659, 58.142975>,  <40.802593, 41.272163, 58.228943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.608803, 41.384659, 58.142975>,  <40.285820, 41.572147, 57.999695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608803, 41.384659, 58.142975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576871, -0.754397, 0.313215,
		0.123416, -0.459546, -0.879538,
		0.807458, -0.468724, 0.358204,
		40.851040, 41.244041, 58.250435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208420, 40.857578, 57.777481>,  <40.285820, 41.572147, 57.999695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208420, 40.857578, 57.777481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.432987, 40.846138, 58.108295>,  <40.567726, 40.839275, 58.306786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.432987, 40.846138, 58.108295>,  <40.208420, 40.857578, 57.777481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432987, 40.846138, 58.108295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594941, -0.708611, 0.379363,
		0.575199, -0.705020, -0.414841,
		0.561419, -0.028596, 0.827037,
		40.601414, 40.837559, 58.356407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377426, 40.159512, 57.858681>,  <40.208420, 40.857578, 57.777481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377426, 40.159512, 57.858681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.450691, 40.291985, 58.228928>,  <40.494652, 40.371468, 58.451077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.450691, 40.291985, 58.228928>,  <40.377426, 40.159512, 57.858681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450691, 40.291985, 58.228928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556920, -0.740933, 0.375311,
		0.810117, -0.584239, 0.048729,
		0.183166, 0.331185, 0.925617,
		40.505642, 40.391338, 58.506611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457424, 39.589287, 58.166424>,  <40.377426, 40.159512, 57.858681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457424, 39.589287, 58.166424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.404106, 39.835228, 58.477341>,  <40.372116, 39.982792, 58.663891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.404106, 39.835228, 58.477341>,  <40.457424, 39.589287, 58.166424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404106, 39.835228, 58.477341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543179, -0.701334, 0.461614,
		0.828968, -0.360678, 0.427462,
		-0.133300, 0.614852, 0.777296,
		40.364117, 40.019684, 58.710529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077305, 39.641365, 58.434834>,  <40.457424, 39.589287, 58.166424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077305, 39.641365, 58.434834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.819054, 39.343079, 58.369034>,  <40.664101, 39.164104, 58.329552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.819054, 39.343079, 58.369034>,  <41.077305, 39.641365, 58.434834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819054, 39.343079, 58.369034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519486, -0.270999, -0.810367,
		0.559726, -0.608656, 0.562356,
		-0.645633, -0.745719, -0.164504,
		40.625362, 39.119362, 58.319683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554512, 39.193439, 58.223648>,  <41.077305, 39.641365, 58.434834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554512, 39.193439, 58.223648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.202171, 39.042465, 58.109352>,  <40.990768, 38.951881, 58.040775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.202171, 39.042465, 58.109352>,  <41.554512, 39.193439, 58.223648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202171, 39.042465, 58.109352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364469, -0.155523, -0.918136,
		0.302095, -0.912884, 0.274555,
		-0.880852, -0.377432, -0.285736,
		40.937916, 38.929237, 58.023632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668457, 38.506447, 58.083717>,  <41.554512, 39.193439, 58.223648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668457, 38.506447, 58.083717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.330894, 38.617035, 57.899811>,  <41.128357, 38.683388, 57.789467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.330894, 38.617035, 57.899811>,  <41.668457, 38.506447, 58.083717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330894, 38.617035, 57.899811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363741, -0.335088, -0.869142,
		-0.394357, -0.900710, 0.182218,
		-0.843904, 0.276472, -0.459770,
		41.077724, 38.699974, 57.761879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521290, 37.935986, 57.625710>,  <41.668457, 38.506447, 58.083717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521290, 37.935986, 57.625710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340515, 38.275841, 57.516998>,  <41.232052, 38.479755, 57.451771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340515, 38.275841, 57.516998>,  <41.521290, 37.935986, 57.625710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340515, 38.275841, 57.516998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184918, -0.208818, -0.960313,
		-0.872674, -0.484255, -0.062743,
		-0.451934, 0.849642, -0.271778,
		41.204933, 38.530735, 57.435467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117081, 37.775551, 57.072746>,  <41.521290, 37.935986, 57.625710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117081, 37.775551, 57.072746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.121136, 38.172623, 57.024609>,  <41.123569, 38.410866, 56.995724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.121136, 38.172623, 57.024609>,  <41.117081, 37.775551, 57.072746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121136, 38.172623, 57.024609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323550, -0.117138, -0.938932,
		-0.946157, -0.029416, -0.322369,
		0.010142, 0.992680, -0.120349,
		41.124180, 38.470428, 56.988503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772301, 37.985199, 56.366009>,  <41.117081, 37.775551, 57.072746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772301, 37.985199, 56.366009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.027634, 38.262955, 56.498890>,  <41.180836, 38.429607, 56.578617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.027634, 38.262955, 56.498890>,  <40.772301, 37.985199, 56.366009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027634, 38.262955, 56.498890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437834, 0.027424, -0.898638,
		-0.633110, 0.719081, -0.286519,
		0.638336, 0.694385, 0.332201,
		41.219135, 38.471272, 56.598549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817177, 38.514202, 55.869717>,  <40.772301, 37.985199, 56.366009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817177, 38.514202, 55.869717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.159492, 38.543472, 56.074570>,  <41.364880, 38.561035, 56.197479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.159492, 38.543472, 56.074570>,  <40.817177, 38.514202, 55.869717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159492, 38.543472, 56.074570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514456, -0.016179, -0.857364,
		-0.054449, 0.997188, -0.051489,
		0.855786, 0.073171, 0.512129,
		41.416229, 38.565422, 56.228207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469643, 38.703968, 55.231365>,  <40.817177, 38.514202, 55.869717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469643, 38.703968, 55.231365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.328560, 38.464371, 54.943806>,  <40.243912, 38.320614, 54.771271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.328560, 38.464371, 54.943806>,  <40.469643, 38.703968, 55.231365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328560, 38.464371, 54.943806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754559, -0.272290, 0.597076,
		-0.553391, 0.753039, -0.355937,
		-0.352704, -0.598992, -0.718894,
		40.222748, 38.284672, 54.728138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692856, 38.806484, 55.102852>,  <40.469643, 38.703968, 55.231365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692856, 38.806484, 55.102852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.757591, 38.444344, 54.945808>,  <39.796432, 38.227058, 54.851582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.757591, 38.444344, 54.945808>,  <39.692856, 38.806484, 55.102852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757591, 38.444344, 54.945808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862584, -0.323038, 0.389351,
		-0.479329, 0.275648, -0.833224,
		0.161839, -0.905353, -0.392611,
		39.806145, 38.172737, 54.828026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108074, 38.723202, 54.966827>,  <39.692856, 38.806484, 55.102852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108074, 38.723202, 54.966827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.262844, 38.357124, 54.921741>,  <39.355705, 38.137478, 54.894691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.262844, 38.357124, 54.921741>,  <39.108074, 38.723202, 54.966827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262844, 38.357124, 54.921741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870798, -0.402860, 0.281805,
		-0.303314, -0.010889, -0.952829,
		0.386925, -0.915197, -0.112711,
		39.378922, 38.082565, 54.887928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751511, 38.197998, 54.492287>,  <39.108074, 38.723202, 54.966827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751511, 38.197998, 54.492287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.954247, 37.992836, 54.769428>,  <39.075890, 37.869740, 54.935715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.954247, 37.992836, 54.769428>,  <38.751511, 38.197998, 54.492287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954247, 37.992836, 54.769428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861651, -0.277283, 0.425054,
		-0.025894, -0.812433, -0.582480,
		0.506840, -0.512901, 0.692854,
		39.106300, 37.838966, 54.977283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354961, 37.599644, 54.576237>,  <38.751511, 38.197998, 54.492287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354961, 37.599644, 54.576237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.578499, 37.575874, 54.907093>,  <38.712624, 37.561611, 55.105606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.578499, 37.575874, 54.907093>,  <38.354961, 37.599644, 54.576237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578499, 37.575874, 54.907093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748762, -0.464871, 0.472493,
		0.356434, -0.883382, -0.304288,
		0.558847, -0.059427, 0.827139,
		38.746155, 37.558044, 55.155235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203117, 36.945583, 54.819614>,  <38.354961, 37.599644, 54.576237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203117, 36.945583, 54.819614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.370995, 37.145569, 55.122635>,  <38.471722, 37.265560, 55.304447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.370995, 37.145569, 55.122635>,  <38.203117, 36.945583, 54.819614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370995, 37.145569, 55.122635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679610, -0.380139, 0.627395,
		0.601653, -0.778156, 0.180240,
		0.419695, 0.499967, 0.757554,
		38.496902, 37.295559, 55.349903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231144, 36.426975, 55.393063>,  <38.203117, 36.945583, 54.819614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231144, 36.426975, 55.393063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.255600, 36.804184, 55.523888>,  <38.270275, 37.030510, 55.602383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.255600, 36.804184, 55.523888>,  <38.231144, 36.426975, 55.393063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255600, 36.804184, 55.523888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667686, -0.204925, 0.715682,
		0.741928, -0.262132, 0.617114,
		0.061141, 0.943023, 0.327061,
		38.273941, 37.087090, 55.622005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180393, 36.327896, 55.988811>,  <38.231144, 36.426975, 55.393063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180393, 36.327896, 55.988811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.092331, 36.718079, 55.990120>,  <38.039494, 36.952190, 55.990906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.092331, 36.718079, 55.990120>,  <38.180393, 36.327896, 55.988811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092331, 36.718079, 55.990120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690808, -0.158277, 0.705502,
		0.688705, 0.153065, 0.708700,
		-0.220159, 0.975459, 0.003267,
		38.026283, 37.010715, 55.991100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090511, 36.509563, 56.727119>,  <38.180393, 36.327896, 55.988811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090511, 36.509563, 56.727119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920250, 36.806862, 56.520660>,  <37.818092, 36.985241, 56.396786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920250, 36.806862, 56.520660>,  <38.090511, 36.509563, 56.727119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920250, 36.806862, 56.520660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733603, 0.050498, 0.677700,
		0.529763, 0.667107, 0.523755,
		-0.425650, 0.743248, -0.516143,
		37.792557, 37.029835, 56.365818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<48.446117, 41.672489, 45.013115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.100998, 41.826637, 44.882225>,  <47.893929, 41.919125, 44.803692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.100998, 41.826637, 44.882225>,  <48.446117, 41.672489, 45.013115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.100998, 41.826637, 44.882225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415148, -0.170699, 0.893596,
		0.288508, 0.906837, 0.307263,
		-0.862795, 0.385369, -0.327223,
		47.842159, 41.942249, 44.784058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.257786, 42.059456, 45.495850>,  <48.446117, 41.672489, 45.013115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.257786, 42.059456, 45.495850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.924744, 41.972984, 45.291874>,  <47.724918, 41.921101, 45.169491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.924744, 41.972984, 45.291874>,  <48.257786, 42.059456, 45.495850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.924744, 41.972984, 45.291874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463607, -0.231730, 0.855202,
		-0.303045, 0.948455, 0.092717,
		-0.832606, -0.216180, -0.509935,
		47.674961, 41.908131, 45.138893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.736500, 42.281876, 45.890377>,  <48.257786, 42.059456, 45.495850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.736500, 42.281876, 45.890377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.514046, 42.080376, 45.625969>,  <47.380573, 41.959476, 45.467323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.514046, 42.080376, 45.625969>,  <47.736500, 42.281876, 45.890377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.514046, 42.080376, 45.625969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688434, -0.166347, 0.705965,
		-0.465589, 0.847682, -0.254287,
		-0.556134, -0.503749, -0.661023,
		47.347206, 41.929253, 45.427662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.998558, 42.561035, 45.800911>,  <47.736500, 42.281876, 45.890377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.998558, 42.561035, 45.800911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.948814, 42.178925, 45.693596>,  <46.918968, 41.949657, 45.629208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.948814, 42.178925, 45.693596>,  <46.998558, 42.561035, 45.800911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.948814, 42.178925, 45.693596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750712, -0.086220, 0.654979,
		-0.648819, 0.282862, -0.706416,
		-0.124361, -0.955278, -0.268289,
		46.911507, 41.892342, 45.613110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167103, 42.470516, 45.749767>,  <46.998558, 42.561035, 45.800911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167103, 42.470516, 45.749767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.344055, 42.112083, 45.764385>,  <46.450226, 41.897022, 45.773155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.344055, 42.112083, 45.764385>,  <46.167103, 42.470516, 45.749767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.344055, 42.112083, 45.764385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670204, -0.303249, 0.677397,
		-0.595922, -0.324160, -0.734709,
		0.442385, -0.896081, 0.036540,
		46.476772, 41.843258, 45.775349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620167, 42.021210, 45.700867>,  <46.167103, 42.470516, 45.749767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620167, 42.021210, 45.700867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.913414, 41.808754, 45.870773>,  <46.089363, 41.681278, 45.972717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.913414, 41.808754, 45.870773>,  <45.620167, 42.021210, 45.700867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.913414, 41.808754, 45.870773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677652, -0.517481, 0.522495,
		-0.057707, -0.670896, -0.739302,
		0.733115, -0.531141, 0.424772,
		46.133350, 41.649410, 45.998203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403702, 41.343147, 45.613216>,  <45.620167, 42.021210, 45.700867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403702, 41.343147, 45.613216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.667404, 41.343079, 45.913982>,  <45.825626, 41.343037, 46.094444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.667404, 41.343079, 45.913982>,  <45.403702, 41.343147, 45.613216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.667404, 41.343079, 45.913982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552592, -0.678275, 0.484339,
		0.509926, -0.734808, -0.447251,
		0.659255, -0.000170, 0.751919,
		45.865181, 41.343029, 46.139557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363552, 40.664440, 45.868488>,  <45.403702, 41.343147, 45.613216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363552, 40.664440, 45.868488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.535187, 40.862633, 46.170582>,  <45.638168, 40.981548, 46.351837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.535187, 40.862633, 46.170582>,  <45.363552, 40.664440, 45.868488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535187, 40.862633, 46.170582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392379, -0.650864, 0.649935,
		0.813586, -0.575218, -0.084861,
		0.429087, 0.495480, 0.755237,
		45.663914, 41.011276, 46.397152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638805, 40.198315, 46.304764>,  <45.363552, 40.664440, 45.868488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638805, 40.198315, 46.304764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.578690, 40.510536, 46.547466>,  <45.542622, 40.697868, 46.693089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.578690, 40.510536, 46.547466>,  <45.638805, 40.198315, 46.304764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578690, 40.510536, 46.547466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464053, -0.597613, 0.653845,
		0.872966, -0.183305, 0.452029,
		-0.150286, 0.780550, 0.606759,
		45.533604, 40.744701, 46.729492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780922, 39.938931, 46.986668>,  <45.638805, 40.198315, 46.304764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780922, 39.938931, 46.986668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.577034, 40.276779, 47.052162>,  <45.454700, 40.479488, 47.091461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.577034, 40.276779, 47.052162>,  <45.780922, 39.938931, 46.986668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577034, 40.276779, 47.052162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504292, -0.447507, 0.738531,
		0.697051, 0.293868, 0.654035,
		-0.509715, 0.844618, 0.163740,
		45.424118, 40.530163, 47.101284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.927959, 40.129490, 47.693966>,  <45.780922, 39.938931, 46.986668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.927959, 40.129490, 47.693966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.582336, 40.302094, 47.590275>,  <45.374962, 40.405655, 47.528061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.582336, 40.302094, 47.590275>,  <45.927959, 40.129490, 47.693966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582336, 40.302094, 47.590275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458082, -0.460512, 0.760322,
		0.208710, 0.775712, 0.595577,
		-0.864061, 0.431510, -0.259226,
		45.323116, 40.431545, 47.512508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636318, 40.380226, 48.350113>,  <45.927959, 40.129490, 47.693966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636318, 40.380226, 48.350113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.330078, 40.347389, 48.094891>,  <45.146336, 40.327686, 47.941757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.330078, 40.347389, 48.094891>,  <45.636318, 40.380226, 48.350113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330078, 40.347389, 48.094891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564839, -0.388955, 0.727784,
		-0.307923, 0.917591, 0.251414,
		-0.765598, -0.082094, -0.638060,
		45.100399, 40.322762, 47.903473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775814, 40.767292, 49.036972>,  <45.636318, 40.380226, 48.350113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775814, 40.767292, 49.036972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.038124, 40.491760, 49.160572>,  <46.195511, 40.326443, 49.234730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.038124, 40.491760, 49.160572>,  <45.775814, 40.767292, 49.036972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.038124, 40.491760, 49.160572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701590, 0.404880, -0.586382,
		0.278810, 0.601322, 0.748784,
		0.655772, -0.688828, 0.308997,
		46.234856, 40.285110, 49.253269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.331223, 41.111160, 49.246990>,  <45.775814, 40.767292, 49.036972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.331223, 41.111160, 49.246990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.457870, 40.742851, 49.155838>,  <46.533859, 40.521866, 49.101147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.457870, 40.742851, 49.155838>,  <46.331223, 41.111160, 49.246990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457870, 40.742851, 49.155838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633939, 0.384111, -0.671252,
		0.705603, 0.068069, 0.705331,
		0.316617, -0.920774, -0.227879,
		46.552856, 40.466618, 49.087475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.922482, 41.138798, 49.288757>,  <46.331223, 41.111160, 49.246990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.922482, 41.138798, 49.288757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.910194, 40.801254, 49.074482>,  <46.902821, 40.598728, 48.945915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.910194, 40.801254, 49.074482>,  <46.922482, 41.138798, 49.288757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.910194, 40.801254, 49.074482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745778, 0.337481, -0.574389,
		0.665486, -0.417153, 0.618960,
		-0.030720, -0.843854, -0.535692,
		46.900978, 40.548100, 48.913773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.508705, 40.875317, 49.440712>,  <46.922482, 41.138798, 49.288757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.508705, 40.875317, 49.440712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.406494, 40.713829, 49.089321>,  <47.345165, 40.616936, 48.878487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.406494, 40.713829, 49.089321>,  <47.508705, 40.875317, 49.440712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.406494, 40.713829, 49.089321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793143, 0.432041, -0.429260,
		0.552836, -0.806445, 0.209804,
		-0.255531, -0.403715, -0.878475,
		47.329834, 40.592716, 48.825779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.144211, 40.644356, 49.098881>,  <47.508705, 40.875317, 49.440712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.144211, 40.644356, 49.098881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.882965, 40.649826, 48.796024>,  <47.726219, 40.653111, 48.614311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.882965, 40.649826, 48.796024>,  <48.144211, 40.644356, 49.098881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.882965, 40.649826, 48.796024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671506, 0.472626, -0.570705,
		0.350036, -0.881157, -0.317863,
		-0.653111, 0.013680, -0.757139,
		47.687031, 40.653931, 48.568882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.542522, 40.550537, 48.496296>,  <48.144211, 40.644356, 49.098881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.542522, 40.550537, 48.496296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.203918, 40.716125, 48.362396>,  <48.000755, 40.815479, 48.282059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.203918, 40.716125, 48.362396>,  <48.542522, 40.550537, 48.496296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.203918, 40.716125, 48.362396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532371, 0.661446, -0.528270,
		0.002726, -0.625393, -0.780306,
		-0.846506, 0.413972, -0.334744,
		47.949966, 40.840317, 48.261974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.716637, 40.551888, 47.768524>,  <48.542522, 40.550537, 48.496296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.716637, 40.551888, 47.768524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.424950, 40.804436, 47.874062>,  <48.249935, 40.955963, 47.937386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.424950, 40.804436, 47.874062>,  <48.716637, 40.551888, 47.768524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.424950, 40.804436, 47.874062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377694, 0.692902, -0.614193,
		-0.570602, -0.348228, -0.743741,
		-0.729219, 0.631367, 0.263848,
		48.206184, 40.993847, 47.953217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.526798, 40.714893, 47.140350>,  <48.716637, 40.551888, 47.768524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.526798, 40.714893, 47.140350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.375137, 40.988525, 47.389599>,  <48.284142, 41.152702, 47.539146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.375137, 40.988525, 47.389599>,  <48.526798, 40.714893, 47.140350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.375137, 40.988525, 47.389599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411278, 0.727814, -0.548760,
		-0.828910, 0.048209, -0.557301,
		-0.379156, 0.684078, 0.623119,
		48.261391, 41.193748, 47.576534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.299927, 41.238281, 46.726059>,  <48.526798, 40.714893, 47.140350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.299927, 41.238281, 46.726059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.371727, 41.392143, 47.088234>,  <48.414806, 41.484463, 47.305538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.371727, 41.392143, 47.088234>,  <48.299927, 41.238281, 46.726059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.371727, 41.392143, 47.088234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482847, 0.767449, -0.421759,
		-0.857111, 0.512893, -0.047975,
		0.179499, 0.384659, 0.905438,
		48.425575, 41.507542, 47.359867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.122314, 41.984829, 46.650974>,  <48.299927, 41.238281, 46.726059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.122314, 41.984829, 46.650974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.360710, 41.958794, 46.971115>,  <48.503746, 41.943172, 47.163200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.360710, 41.958794, 46.971115>,  <48.122314, 41.984829, 46.650974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.360710, 41.958794, 46.971115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701983, 0.526180, -0.479952,
		-0.389891, 0.847879, 0.359286,
		0.595990, -0.065084, 0.800350,
		48.539509, 41.939270, 47.211220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.245338, 42.704800, 46.858253>,  <48.122314, 41.984829, 46.650974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.245338, 42.704800, 46.858253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.535118, 42.500420, 47.043343>,  <48.708984, 42.377792, 47.154396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.535118, 42.500420, 47.043343>,  <48.245338, 42.704800, 46.858253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.535118, 42.500420, 47.043343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686925, 0.591152, -0.422697,
		-0.057566, 0.624079, 0.779238,
		0.724444, -0.510945, 0.462726,
		48.752453, 42.347137, 47.182159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.666199, 43.192249, 47.047508>,  <48.245338, 42.704800, 46.858253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.666199, 43.192249, 47.047508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.893646, 42.863464, 47.060425>,  <49.030113, 42.666191, 47.068172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.893646, 42.863464, 47.060425>,  <48.666199, 43.192249, 47.047508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.893646, 42.863464, 47.060425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762771, 0.512161, -0.394806,
		0.307980, 0.249124, 0.918197,
		0.568620, -0.821966, 0.032289,
		49.064232, 42.616875, 47.070110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.287746, 43.457928, 47.289818>,  <48.666199, 43.192249, 47.047508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.287746, 43.457928, 47.289818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.383484, 43.097450, 47.145283>,  <49.440926, 42.881165, 47.058559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.383484, 43.097450, 47.145283>,  <49.287746, 43.457928, 47.289818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.383484, 43.097450, 47.145283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852707, 0.373080, -0.365653,
		0.464333, -0.220602, 0.857747,
		0.239345, -0.901191, -0.361342,
		49.455288, 42.827091, 47.036880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.013885, 43.256859, 47.514198>,  <49.287746, 43.457928, 47.289818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.013885, 43.256859, 47.514198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.922653, 43.075829, 47.169373>,  <49.867912, 42.967209, 46.962479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.922653, 43.075829, 47.169373>,  <50.013885, 43.256859, 47.514198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.922653, 43.075829, 47.169373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792775, 0.427678, -0.434280,
		0.565232, -0.782472, 0.261249,
		-0.228082, -0.452580, -0.862061,
		49.854229, 42.940056, 46.910755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.596226, 42.999039, 47.311047>,  <50.013885, 43.256859, 47.514198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.596226, 42.999039, 47.311047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.383041, 43.053108, 46.976936>,  <50.255131, 43.085548, 46.776470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.383041, 43.053108, 46.976936>,  <50.596226, 42.999039, 47.311047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.383041, 43.053108, 46.976936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827188, 0.291003, -0.480705,
		0.178088, -0.947124, -0.266907,
		-0.532959, 0.135174, -0.835274,
		50.223152, 43.093662, 46.726353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.615654, 43.622692, 47.817654>,  <50.596226, 42.999039, 47.311047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.615654, 43.622692, 47.817654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.694084, 44.012299, 47.772331>,  <50.741142, 44.246063, 47.745140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.694084, 44.012299, 47.772331>,  <50.615654, 43.622692, 47.817654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.694084, 44.012299, 47.772331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295550, 0.168875, 0.940283,
		0.934989, -0.150879, 0.320984,
		0.196075, 0.974021, -0.113304,
		50.752907, 44.304504, 47.738338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.174099, 43.915611, 48.396576>,  <50.615654, 43.622692, 47.817654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.174099, 43.915611, 48.396576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.877159, 44.138321, 48.247486>,  <50.698997, 44.271946, 48.158031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.877159, 44.138321, 48.247486>,  <51.174099, 43.915611, 48.396576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.877159, 44.138321, 48.247486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409807, 0.062791, 0.910009,
		0.530075, 0.828286, 0.181558,
		-0.742347, 0.556776, -0.372722,
		50.654453, 44.305355, 48.135670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.971550, 44.372635, 48.976635>,  <51.174099, 43.915611, 48.396576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.971550, 44.372635, 48.976635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.666824, 44.361839, 48.717743>,  <50.483990, 44.355362, 48.562408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.666824, 44.361839, 48.717743>,  <50.971550, 44.372635, 48.976635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.666824, 44.361839, 48.717743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646062, -0.041298, 0.762166,
		-0.047300, 0.998782, 0.014025,
		-0.761818, -0.026989, -0.647229,
		50.438278, 44.353741, 48.523575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.551403, 44.961662, 49.117661>,  <50.971550, 44.372635, 48.976635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.551403, 44.961662, 49.117661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.322914, 44.689293, 48.934334>,  <50.185822, 44.525871, 48.824337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.322914, 44.689293, 48.934334>,  <50.551403, 44.961662, 49.117661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.322914, 44.689293, 48.934334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507364, -0.146013, 0.849271,
		-0.645207, 0.717654, -0.262069,
		-0.571218, -0.680920, -0.458321,
		50.151550, 44.485016, 48.796837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.900173, 45.206993, 49.058987>,  <50.551403, 44.961662, 49.117661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.900173, 45.206993, 49.058987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.852692, 44.811745, 49.019943>,  <49.824203, 44.574596, 48.996517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.852692, 44.811745, 49.019943>,  <49.900173, 45.206993, 49.058987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.852692, 44.811745, 49.019943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594807, -0.007950, 0.803829,
		-0.795056, 0.153474, -0.586798,
		-0.118702, -0.988121, -0.097608,
		49.817081, 44.515308, 48.990662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.078819, 45.048115, 49.083954>,  <49.900173, 45.206993, 49.058987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.078819, 45.048115, 49.083954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.278244, 44.713112, 49.173409>,  <49.397900, 44.512112, 49.227081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.278244, 44.713112, 49.173409>,  <49.078819, 45.048115, 49.083954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.278244, 44.713112, 49.173409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596115, -0.143940, 0.789892,
		-0.629350, -0.527126, -0.571014,
		0.498564, -0.837508, 0.223639,
		49.427814, 44.461861, 49.240501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.489994, 44.588364, 49.108402>,  <49.078819, 45.048115, 49.083954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.489994, 44.588364, 49.108402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.794403, 44.398499, 49.285282>,  <48.977051, 44.284580, 49.391411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.794403, 44.398499, 49.285282>,  <48.489994, 44.588364, 49.108402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.794403, 44.398499, 49.285282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601646, -0.261496, 0.754746,
		-0.242601, -0.840436, -0.484575,
		0.761030, -0.474645, 0.442205,
		49.022709, 44.256100, 49.417942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.319748, 43.851089, 49.225109>,  <48.489994, 44.588364, 49.108402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.319748, 43.851089, 49.225109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.594093, 43.902725, 49.511585>,  <48.758701, 43.933704, 49.683472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.594093, 43.902725, 49.511585>,  <48.319748, 43.851089, 49.225109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.594093, 43.902725, 49.511585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684017, -0.221593, 0.694994,
		0.248418, -0.966557, -0.063684,
		0.685863, 0.129088, 0.716190,
		48.799854, 43.941452, 49.726440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.195915, 43.338036, 49.807343>,  <48.319748, 43.851089, 49.225109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.195915, 43.338036, 49.807343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.412987, 43.619377, 49.990990>,  <48.543232, 43.788181, 50.101177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.412987, 43.619377, 49.990990>,  <48.195915, 43.338036, 49.807343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.412987, 43.619377, 49.990990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561527, -0.102693, 0.821061,
		0.624646, -0.703381, 0.339224,
		0.542682, 0.703356, 0.459114,
		48.575790, 43.830383, 50.128723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.235355, 43.071579, 50.533108>,  <48.195915, 43.338036, 49.807343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.235355, 43.071579, 50.533108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.321091, 43.461784, 50.552803>,  <48.372532, 43.695908, 50.564621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.321091, 43.461784, 50.552803>,  <48.235355, 43.071579, 50.533108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.321091, 43.461784, 50.552803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582875, 0.087292, 0.807859,
		0.783783, -0.201854, 0.587315,
		0.214337, 0.975518, 0.049238,
		48.385391, 43.754440, 50.567574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.346024, 43.255085, 51.242020>,  <48.235355, 43.071579, 50.533108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.346024, 43.255085, 51.242020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.266106, 43.623466, 51.108204>,  <48.218155, 43.844498, 51.027912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.266106, 43.623466, 51.108204>,  <48.346024, 43.255085, 51.242020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.266106, 43.623466, 51.108204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652008, 0.129902, 0.747001,
		0.731414, 0.367375, 0.574517,
		-0.199799, 0.920957, -0.334543,
		48.206165, 43.899754, 51.007839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.463528, 43.688438, 51.788200>,  <48.346024, 43.255085, 51.242020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.463528, 43.688438, 51.788200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.201477, 43.877151, 51.552158>,  <48.044247, 43.990379, 51.410534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.201477, 43.877151, 51.552158>,  <48.463528, 43.688438, 51.788200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.201477, 43.877151, 51.552158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668950, 0.000807, 0.743307,
		0.351156, 0.881714, 0.315071,
		-0.655130, 0.471783, -0.590106,
		48.004936, 44.018688, 51.375126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.112164, 44.115582, 52.228374>,  <48.463528, 43.688438, 51.788200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.112164, 44.115582, 52.228374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.886421, 44.130112, 51.898483>,  <47.750977, 44.138828, 51.700546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.886421, 44.130112, 51.898483>,  <48.112164, 44.115582, 52.228374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.886421, 44.130112, 51.898483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818676, 0.103840, 0.564790,
		0.106155, 0.993931, -0.028865,
		-0.564359, 0.036324, -0.824730,
		47.717113, 44.141010, 51.651066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.703476, 44.637653, 52.319782>,  <48.112164, 44.115582, 52.228374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.703476, 44.637653, 52.319782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.509315, 44.404663, 52.058983>,  <47.392818, 44.264870, 51.902504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.509315, 44.404663, 52.058983>,  <47.703476, 44.637653, 52.319782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.509315, 44.404663, 52.058983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839833, 0.103334, 0.532920,
		-0.243041, 0.806250, -0.539344,
		-0.485399, -0.582480, -0.652001,
		47.363697, 44.229919, 51.863384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.069481, 44.954094, 52.102299>,  <47.703476, 44.637653, 52.319782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.069481, 44.954094, 52.102299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.038834, 44.555664, 52.084534>,  <47.020447, 44.316608, 52.073875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.038834, 44.555664, 52.084534>,  <47.069481, 44.954094, 52.102299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.038834, 44.555664, 52.084534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793753, 0.033973, 0.607291,
		-0.603395, 0.081782, -0.793238,
		-0.076614, -0.996071, -0.044416,
		47.015850, 44.256844, 52.071209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333321, 44.928947, 52.240875>,  <47.069481, 44.954094, 52.102299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333321, 44.928947, 52.240875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.451752, 44.547516, 52.262897>,  <46.522808, 44.318657, 52.276112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.451752, 44.547516, 52.262897>,  <46.333321, 44.928947, 52.240875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.451752, 44.547516, 52.262897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680357, -0.170082, 0.712872,
		-0.670414, -0.248521, -0.699130,
		0.296073, -0.953577, 0.055058,
		46.540573, 44.261444, 52.279415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680878, 44.526669, 52.285316>,  <46.333321, 44.928947, 52.240875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680878, 44.526669, 52.285316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.974487, 44.286789, 52.412800>,  <46.150654, 44.142860, 52.489288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.974487, 44.286789, 52.412800>,  <45.680878, 44.526669, 52.285316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974487, 44.286789, 52.412800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546945, -0.243839, 0.800871,
		-0.402567, -0.762172, -0.506985,
		0.734024, -0.599697, 0.318705,
		46.194695, 44.106880, 52.508411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448555, 43.881645, 52.369942>,  <45.680878, 44.526669, 52.285316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448555, 43.881645, 52.369942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.760414, 43.884682, 52.620411>,  <45.947529, 43.886505, 52.770691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.760414, 43.884682, 52.620411>,  <45.448555, 43.881645, 52.369942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760414, 43.884682, 52.620411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563414, -0.427960, 0.706692,
		0.273343, -0.903766, -0.329380,
		0.779646, 0.007592, 0.626174,
		45.994308, 43.886959, 52.808262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611877, 43.204666, 52.598812>,  <45.448555, 43.881645, 52.369942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.611877, 43.204666, 52.598812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.743675, 43.452652, 52.883652>,  <45.822754, 43.601444, 53.054554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.743675, 43.452652, 52.883652>,  <45.611877, 43.204666, 52.598812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.743675, 43.452652, 52.883652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496235, -0.527925, 0.689236,
		0.803233, -0.580467, 0.133698,
		0.329496, 0.619963, 0.712095,
		45.842525, 43.638641, 53.097279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560947, 42.762478, 53.197140>,  <45.611877, 43.204666, 52.598812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560947, 42.762478, 53.197140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.620186, 43.121292, 53.363701>,  <45.655731, 43.336582, 53.463638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.620186, 43.121292, 53.363701>,  <45.560947, 42.762478, 53.197140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620186, 43.121292, 53.363701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416797, -0.325218, 0.848831,
		0.896854, -0.299269, 0.325717,
		0.148100, 0.897035, 0.416407,
		45.664616, 43.390404, 53.488625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702209, 42.555378, 53.906601>,  <45.560947, 42.762478, 53.197140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.702209, 42.555378, 53.906601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.634857, 42.949081, 53.928093>,  <45.594444, 43.185303, 53.940990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.634857, 42.949081, 53.928093>,  <45.702209, 42.555378, 53.906601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634857, 42.949081, 53.928093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478749, -0.129308, 0.868377,
		0.861654, 0.120494, 0.492985,
		-0.168381, 0.984257, 0.053732,
		45.584343, 43.244358, 53.944214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018116, 42.717358, 54.571148>,  <45.702209, 42.555378, 53.906601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018116, 42.717358, 54.571148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.751686, 43.007378, 54.501114>,  <45.591827, 43.181389, 54.459095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.751686, 43.007378, 54.501114>,  <46.018116, 42.717358, 54.571148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.751686, 43.007378, 54.501114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465080, -0.220192, 0.857447,
		0.583139, 0.652549, 0.483869,
		-0.666070, 0.725049, -0.175084,
		45.551865, 43.224892, 54.448589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814022, 43.022011, 55.220005>,  <46.018116, 42.717358, 54.571148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814022, 43.022011, 55.220005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.525574, 43.146545, 54.972439>,  <45.352505, 43.221264, 54.823898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.525574, 43.146545, 54.972439>,  <45.814022, 43.022011, 55.220005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525574, 43.146545, 54.972439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692799, -0.318861, 0.646805,
		0.004024, 0.895208, 0.445629,
		-0.721119, 0.311334, -0.618917,
		45.309238, 43.239944, 54.786762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331993, 43.563614, 55.596340>,  <45.814022, 43.022011, 55.220005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331993, 43.563614, 55.596340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.143089, 43.367462, 55.303356>,  <45.029747, 43.249771, 55.127567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.143089, 43.367462, 55.303356>,  <45.331993, 43.563614, 55.596340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143089, 43.367462, 55.303356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801759, -0.106305, 0.588117,
		-0.366267, 0.864999, -0.342966,
		-0.472262, -0.490383, -0.732457,
		45.001411, 43.220348, 55.083618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706650, 43.966030, 55.523438>,  <45.331993, 43.563614, 55.596340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706650, 43.966030, 55.523438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.588089, 43.623833, 55.353603>,  <44.516953, 43.418514, 55.251701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.588089, 43.623833, 55.353603>,  <44.706650, 43.966030, 55.523438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588089, 43.623833, 55.353603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627626, -0.160619, 0.761766,
		-0.719883, 0.492272, -0.489323,
		-0.296401, -0.855494, -0.424590,
		44.499168, 43.367184, 55.226227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969296, 43.966827, 55.506725>,  <44.706650, 43.966030, 55.523438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969296, 43.966827, 55.506725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.073872, 43.585381, 55.447037>,  <44.136620, 43.356514, 55.411224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.073872, 43.585381, 55.447037>,  <43.969296, 43.966827, 55.506725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073872, 43.585381, 55.447037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732392, -0.296692, 0.612843,
		-0.628689, -0.050933, -0.775987,
		0.261443, -0.953614, -0.149224,
		44.152306, 43.299297, 55.402271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435093, 43.672031, 55.199184>,  <43.969296, 43.966827, 55.506725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435093, 43.672031, 55.199184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.639671, 43.399117, 55.408150>,  <43.762417, 43.235367, 55.533527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.639671, 43.399117, 55.408150>,  <43.435093, 43.672031, 55.199184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639671, 43.399117, 55.408150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842707, -0.279270, 0.460275,
		-0.168142, -0.675648, -0.717794,
		0.511442, -0.682282, 0.522416,
		43.793102, 43.194431, 55.564873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121883, 43.497406, 54.546585>,  <43.435093, 43.672031, 55.199184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121883, 43.497406, 54.546585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.879143, 43.756149, 54.361847>,  <42.733498, 43.911396, 54.251003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.879143, 43.756149, 54.361847>,  <43.121883, 43.497406, 54.546585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879143, 43.756149, 54.361847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717290, 0.195418, -0.668809,
		-0.342375, -0.737145, -0.582578,
		-0.606856, 0.646861, -0.461841,
		42.697086, 43.950207, 54.223293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241154, 43.374741, 53.830593>,  <43.121883, 43.497406, 54.546585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241154, 43.374741, 53.830593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.069336, 43.735229, 53.853577>,  <42.966248, 43.951523, 53.867367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.069336, 43.735229, 53.853577>,  <43.241154, 43.374741, 53.830593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069336, 43.735229, 53.853577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519206, 0.298521, -0.800819,
		-0.738865, -0.314152, -0.596144,
		-0.429540, 0.901218, 0.057457,
		42.940475, 44.005596, 53.870815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134842, 43.547813, 53.140285>,  <43.241154, 43.374741, 53.830593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134842, 43.547813, 53.140285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.087715, 43.889915, 53.342140>,  <43.059441, 44.095177, 53.463253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.087715, 43.889915, 53.342140>,  <43.134842, 43.547813, 53.140285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087715, 43.889915, 53.342140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496604, 0.490810, -0.715884,
		-0.859944, 0.166261, -0.482549,
		-0.117817, 0.855256, 0.504635,
		43.052372, 44.146492, 53.493530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801872, 44.048901, 52.664932>,  <43.134842, 43.547813, 53.140285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801872, 44.048901, 52.664932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.020943, 44.236565, 52.942043>,  <43.152382, 44.349163, 53.108311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.020943, 44.236565, 52.942043>,  <42.801872, 44.048901, 52.664932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020943, 44.236565, 52.942043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306299, 0.658096, -0.687816,
		-0.778612, 0.588895, 0.216716,
		0.547671, 0.469162, 0.692779,
		43.185246, 44.377312, 53.149876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685093, 44.679298, 52.479187>,  <42.801872, 44.048901, 52.664932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685093, 44.679298, 52.479187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.005527, 44.733253, 52.712448>,  <43.197788, 44.765625, 52.852406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.005527, 44.733253, 52.712448>,  <42.685093, 44.679298, 52.479187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005527, 44.733253, 52.712448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423932, 0.559919, -0.711880,
		-0.422541, 0.817494, 0.391361,
		0.801087, 0.134888, 0.583150,
		43.245853, 44.773720, 52.887394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
