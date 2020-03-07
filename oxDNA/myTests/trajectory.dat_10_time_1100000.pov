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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<38.068237, 46.707752, 56.908875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387444, 46.944138, 56.861660>,  <38.578968, 47.085968, 56.833332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387444, 46.944138, 56.861660>,  <38.068237, 46.707752, 56.908875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387444, 46.944138, 56.861660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096236, -0.068381, -0.993007,
		-0.594904, 0.803793, 0.002303,
		0.798015, 0.590966, -0.118034,
		38.626846, 47.121426, 56.826248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935791, 46.953575, 56.222267>,  <38.068237, 46.707752, 56.908875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935791, 46.953575, 56.222267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312798, 47.070168, 56.287621>,  <38.539001, 47.140121, 56.326832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312798, 47.070168, 56.287621>,  <37.935791, 46.953575, 56.222267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312798, 47.070168, 56.287621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153469, 0.056727, -0.986524,
		-0.296821, 0.954893, 0.008733,
		0.942520, 0.291480, 0.163385,
		38.595554, 47.157612, 56.336636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112629, 47.482075, 55.741459>,  <37.935791, 46.953575, 56.222267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112629, 47.482075, 55.741459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441467, 47.283066, 55.852188>,  <38.638771, 47.163662, 55.918625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441467, 47.283066, 55.852188>,  <38.112629, 47.482075, 55.741459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441467, 47.283066, 55.852188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234054, -0.147913, -0.960906,
		0.519015, 0.854749, -0.005152,
		0.822096, -0.497519, 0.276827,
		38.688095, 47.133812, 55.935238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675140, 47.819775, 55.296356>,  <38.112629, 47.482075, 55.741459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675140, 47.819775, 55.296356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759254, 47.447197, 55.415138>,  <38.809723, 47.223648, 55.486408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759254, 47.447197, 55.415138>,  <38.675140, 47.819775, 55.296356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759254, 47.447197, 55.415138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285806, -0.231907, -0.929803,
		0.934930, 0.280398, 0.217446,
		0.210288, -0.931448, 0.296957,
		38.822342, 47.167763, 55.504227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326714, 47.569691, 55.006008>,  <38.675140, 47.819775, 55.296356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326714, 47.569691, 55.006008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202415, 47.208611, 55.125053>,  <39.127838, 46.991962, 55.196480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202415, 47.208611, 55.125053>,  <39.326714, 47.569691, 55.006008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202415, 47.208611, 55.125053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416406, -0.410761, -0.811099,
		0.854427, -0.128113, 0.503529,
		-0.310743, -0.902697, 0.297618,
		39.109192, 46.937801, 55.214340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781845, 47.099022, 54.836678>,  <39.326714, 47.569691, 55.006008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781845, 47.099022, 54.836678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457748, 46.866089, 54.863213>,  <39.263290, 46.726330, 54.879131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457748, 46.866089, 54.863213>,  <39.781845, 47.099022, 54.836678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457748, 46.866089, 54.863213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130490, -0.289574, -0.948219,
		0.571387, -0.759629, 0.310613,
		-0.810240, -0.582332, 0.066335,
		39.214676, 46.691391, 54.883114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045616, 46.627480, 54.481846>,  <39.781845, 47.099022, 54.836678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045616, 46.627480, 54.481846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661293, 46.525383, 54.525127>,  <39.430698, 46.464123, 54.551094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661293, 46.525383, 54.525127>,  <40.045616, 46.627480, 54.481846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661293, 46.525383, 54.525127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033615, -0.494674, -0.868428,
		0.275184, -0.830752, 0.483865,
		-0.960804, -0.255243, 0.108200,
		39.373051, 46.448811, 54.557587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047550, 45.862995, 54.428566>,  <40.045616, 46.627480, 54.481846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047550, 45.862995, 54.428566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675499, 45.965336, 54.323196>,  <39.452267, 46.026741, 54.259975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675499, 45.965336, 54.323196>,  <40.047550, 45.862995, 54.428566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675499, 45.965336, 54.323196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190006, -0.278551, -0.941439,
		-0.314250, -0.925714, 0.210475,
		-0.930131, 0.255855, -0.263426,
		39.396458, 46.042091, 54.244167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678581, 45.260498, 54.043324>,  <40.047550, 45.862995, 54.428566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678581, 45.260498, 54.043324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516075, 45.611103, 53.940044>,  <39.418571, 45.821468, 53.878075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516075, 45.611103, 53.940044>,  <39.678581, 45.260498, 54.043324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516075, 45.611103, 53.940044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067316, -0.253092, -0.965097,
		-0.911272, -0.409466, 0.043819,
		-0.406265, 0.876517, -0.258200,
		39.394196, 45.874058, 53.862583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368607, 45.057320, 53.450230>,  <39.678581, 45.260498, 54.043324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368607, 45.057320, 53.450230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384995, 45.455627, 53.417332>,  <39.394825, 45.694611, 53.397591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384995, 45.455627, 53.417332>,  <39.368607, 45.057320, 53.450230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384995, 45.455627, 53.417332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118665, -0.086583, -0.989152,
		-0.992089, 0.030764, -0.121710,
		0.040968, 0.995770, -0.082247,
		39.397285, 45.754360, 53.392658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057713, 45.249111, 52.826767>,  <39.368607, 45.057320, 53.450230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057713, 45.249111, 52.826767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287140, 45.568130, 52.901527>,  <39.424797, 45.759541, 52.946384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287140, 45.568130, 52.901527>,  <39.057713, 45.249111, 52.826767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287140, 45.568130, 52.901527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360626, -0.040983, -0.931810,
		-0.735502, 0.601863, -0.311123,
		0.573572, 0.797547, 0.186904,
		39.459213, 45.807396, 52.957600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901165, 45.690990, 52.278042>,  <39.057713, 45.249111, 52.826767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901165, 45.690990, 52.278042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253647, 45.774048, 52.447918>,  <39.465137, 45.823883, 52.549843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253647, 45.774048, 52.447918>,  <38.901165, 45.690990, 52.278042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253647, 45.774048, 52.447918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408769, 0.116550, -0.905165,
		-0.237448, 0.971237, 0.017827,
		0.881208, 0.207642, 0.424686,
		39.518009, 45.836342, 52.575325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184494, 46.229053, 51.932377>,  <38.901165, 45.690990, 52.278042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184494, 46.229053, 51.932377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495659, 46.046875, 52.105545>,  <39.682358, 45.937569, 52.209446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495659, 46.046875, 52.105545>,  <39.184494, 46.229053, 51.932377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495659, 46.046875, 52.105545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493911, 0.017272, -0.869341,
		0.388461, 0.890096, 0.238386,
		0.777914, -0.455446, 0.432919,
		39.729034, 45.910240, 52.235420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721703, 46.431068, 51.506351>,  <39.184494, 46.229053, 51.932377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721703, 46.431068, 51.506351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880829, 46.117378, 51.696815>,  <39.976307, 45.929165, 51.811092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880829, 46.117378, 51.696815>,  <39.721703, 46.431068, 51.506351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880829, 46.117378, 51.696815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536122, -0.222459, -0.814300,
		0.744522, 0.579225, 0.331943,
		0.397819, -0.784226, 0.476161,
		40.000175, 45.882111, 51.839664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423962, 46.446247, 51.214149>,  <39.721703, 46.431068, 51.506351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423962, 46.446247, 51.214149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384544, 46.097008, 51.405144>,  <40.360893, 45.887463, 51.519741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384544, 46.097008, 51.405144>,  <40.423962, 46.446247, 51.214149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384544, 46.097008, 51.405144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609225, -0.432323, -0.664787,
		0.786851, 0.225384, 0.574515,
		-0.098544, -0.873097, 0.477483,
		40.354980, 45.835079, 51.548389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092422, 46.187027, 51.112705>,  <40.423962, 46.446247, 51.214149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092422, 46.187027, 51.112705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856331, 45.874012, 51.191971>,  <40.714676, 45.686203, 51.239529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856331, 45.874012, 51.191971>,  <41.092422, 46.187027, 51.112705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856331, 45.874012, 51.191971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521455, -0.556996, -0.646406,
		0.616211, -0.278195, 0.736812,
		-0.590228, -0.782537, 0.198161,
		40.679264, 45.639252, 51.251419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491116, 45.611908, 51.182579>,  <41.092422, 46.187027, 51.112705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491116, 45.611908, 51.182579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137558, 45.441856, 51.104599>,  <40.925423, 45.339825, 51.057812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137558, 45.441856, 51.104599>,  <41.491116, 45.611908, 51.182579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137558, 45.441856, 51.104599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389593, -0.438655, -0.809815,
		0.258758, -0.791738, 0.553349,
		-0.883890, -0.425127, -0.194950,
		40.872391, 45.314320, 51.046112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606953, 44.891338, 51.088245>,  <41.491116, 45.611908, 51.182579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606953, 44.891338, 51.088245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252312, 44.963017, 50.917686>,  <41.039528, 45.006023, 50.815350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252312, 44.963017, 50.917686>,  <41.606953, 44.891338, 51.088245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252312, 44.963017, 50.917686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248379, -0.593228, -0.765760,
		-0.390175, -0.784837, 0.481451,
		-0.886606, 0.179198, -0.426399,
		40.986328, 45.016777, 50.789768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369030, 44.154713, 50.838936>,  <41.606953, 44.891338, 51.088245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369030, 44.154713, 50.838936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203751, 44.462891, 50.644745>,  <41.104584, 44.647797, 50.528229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203751, 44.462891, 50.644745>,  <41.369030, 44.154713, 50.838936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203751, 44.462891, 50.644745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106275, -0.488676, -0.865969,
		-0.904419, -0.409409, 0.120040,
		-0.413196, 0.770442, -0.485478,
		41.079792, 44.694023, 50.499100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886410, 43.867939, 50.500099>,  <41.369030, 44.154713, 50.838936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886410, 43.867939, 50.500099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939461, 44.215263, 50.308914>,  <40.971291, 44.423656, 50.194202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939461, 44.215263, 50.308914>,  <40.886410, 43.867939, 50.500099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939461, 44.215263, 50.308914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036029, -0.486126, -0.873146,
		-0.990510, 0.098586, -0.095761,
		0.132632, 0.868310, -0.477961,
		40.979252, 44.475758, 50.165527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474255, 43.768482, 49.934612>,  <40.886410, 43.867939, 50.500099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474255, 43.768482, 49.934612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700195, 44.085457, 49.842537>,  <40.835758, 44.275642, 49.787292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700195, 44.085457, 49.842537>,  <40.474255, 43.768482, 49.934612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700195, 44.085457, 49.842537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092938, -0.338270, -0.936448,
		-0.819943, 0.507560, -0.264720,
		0.564851, 0.792437, -0.230191,
		40.869652, 44.323189, 49.773479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209129, 43.967884, 49.329346>,  <40.474255, 43.768482, 49.934612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209129, 43.967884, 49.329346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584579, 44.105812, 49.333107>,  <40.809849, 44.188568, 49.335365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584579, 44.105812, 49.333107>,  <40.209129, 43.967884, 49.329346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584579, 44.105812, 49.333107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084767, -0.204145, -0.975264,
		-0.334369, 0.916202, -0.220844,
		0.938622, 0.344818, 0.009404,
		40.866165, 44.209259, 49.335930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231842, 44.397041, 48.804768>,  <40.209129, 43.967884, 49.329346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231842, 44.397041, 48.804768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622643, 44.335262, 48.863579>,  <40.857124, 44.298195, 48.898865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622643, 44.335262, 48.863579>,  <40.231842, 44.397041, 48.804768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622643, 44.335262, 48.863579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142465, -0.040248, -0.988981,
		0.158659, 0.987181, -0.017320,
		0.977001, -0.154444, 0.147025,
		40.915741, 44.288929, 48.907684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602943, 44.932999, 48.441837>,  <40.231842, 44.397041, 48.804768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602943, 44.932999, 48.441837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877182, 44.644909, 48.484226>,  <41.041725, 44.472054, 48.509659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877182, 44.644909, 48.484226>,  <40.602943, 44.932999, 48.441837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877182, 44.644909, 48.484226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145787, -0.006787, -0.989293,
		0.713233, 0.693707, 0.100346,
		0.685598, -0.720225, 0.105974,
		41.082863, 44.428841, 48.516018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121574, 45.168739, 48.002186>,  <40.602943, 44.932999, 48.441837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121574, 45.168739, 48.002186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215965, 44.785599, 48.067707>,  <41.272598, 44.555714, 48.107021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215965, 44.785599, 48.067707>,  <41.121574, 45.168739, 48.002186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215965, 44.785599, 48.067707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145728, -0.131778, -0.980509,
		0.960770, 0.255248, 0.108490,
		0.235976, -0.957853, 0.163805,
		41.286758, 44.498241, 48.116848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839233, 45.022625, 47.836327>,  <41.121574, 45.168739, 48.002186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839233, 45.022625, 47.836327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639351, 44.678600, 47.795185>,  <41.519421, 44.472183, 47.770500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639351, 44.678600, 47.795185>,  <41.839233, 45.022625, 47.836327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639351, 44.678600, 47.795185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272088, -0.043127, -0.961305,
		0.822351, -0.508357, 0.255565,
		-0.499708, -0.860066, -0.102852,
		41.489437, 44.420582, 47.764328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207088, 44.448711, 47.591537>,  <41.839233, 45.022625, 47.836327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207088, 44.448711, 47.591537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848473, 44.312859, 47.477783>,  <41.633305, 44.231346, 47.409531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848473, 44.312859, 47.477783>,  <42.207088, 44.448711, 47.591537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848473, 44.312859, 47.477783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373428, -0.234142, -0.897624,
		0.238275, -0.910949, 0.336745,
		-0.896536, -0.339632, -0.284383,
		41.579514, 44.210968, 47.392467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393513, 43.910187, 47.075298>,  <42.207088, 44.448711, 47.591537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393513, 43.910187, 47.075298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005081, 43.978016, 47.008072>,  <41.772022, 44.018715, 46.967735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005081, 43.978016, 47.008072>,  <42.393513, 43.910187, 47.075298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005081, 43.978016, 47.008072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146992, -0.130060, -0.980550,
		-0.188139, -0.976897, 0.101372,
		-0.971080, 0.169579, -0.168065,
		41.713757, 44.028889, 46.957653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160915, 43.409096, 46.562412>,  <42.393513, 43.910187, 47.075298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160915, 43.409096, 46.562412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873238, 43.684399, 46.524326>,  <41.700630, 43.849579, 46.501476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873238, 43.684399, 46.524326>,  <42.160915, 43.409096, 46.562412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873238, 43.684399, 46.524326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015805, -0.153207, -0.988068,
		-0.694629, -0.709108, 0.121063,
		-0.719195, 0.688254, -0.095215,
		41.657478, 43.890873, 46.495762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703434, 43.149315, 46.155807>,  <42.160915, 43.409096, 46.562412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703434, 43.149315, 46.155807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629631, 43.538551, 46.100597>,  <41.585350, 43.772095, 46.067471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629631, 43.538551, 46.100597>,  <41.703434, 43.149315, 46.155807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629631, 43.538551, 46.100597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024420, -0.144935, -0.989140,
		-0.982527, -0.179135, 0.050505,
		-0.184510, 0.973090, -0.138028,
		41.574280, 43.830479, 46.059189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181831, 43.191757, 45.599228>,  <41.703434, 43.149315, 46.155807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181831, 43.191757, 45.599228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344025, 43.556610, 45.623234>,  <41.441341, 43.775520, 45.637638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344025, 43.556610, 45.623234>,  <41.181831, 43.191757, 45.599228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344025, 43.556610, 45.623234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037053, 0.081999, -0.995943,
		-0.913349, 0.401619, 0.067047,
		0.405488, 0.912128, 0.060013,
		41.465672, 43.830250, 45.641239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786785, 43.604351, 45.252628>,  <41.181831, 43.191757, 45.599228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786785, 43.604351, 45.252628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131638, 43.805904, 45.273941>,  <41.338547, 43.926838, 45.286728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131638, 43.805904, 45.273941>,  <40.786785, 43.604351, 45.252628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131638, 43.805904, 45.273941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045241, 0.181294, -0.982388,
		-0.504668, 0.844533, 0.179094,
		0.862127, 0.503882, 0.053286,
		41.390274, 43.957069, 45.289928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691841, 44.321129, 44.927921>,  <40.786785, 43.604351, 45.252628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691841, 44.321129, 44.927921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089691, 44.291576, 44.898911>,  <41.328400, 44.273846, 44.881504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089691, 44.291576, 44.898911>,  <40.691841, 44.321129, 44.927921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089691, 44.291576, 44.898911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045294, 0.319389, -0.946541,
		0.093095, 0.944739, 0.314326,
		0.994626, -0.073881, -0.072525,
		41.388081, 44.269413, 44.877151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814922, 44.911865, 44.583920>,  <40.691841, 44.321129, 44.927921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814922, 44.911865, 44.583920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132721, 44.675625, 44.527393>,  <41.323399, 44.533878, 44.493477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132721, 44.675625, 44.527393>,  <40.814922, 44.911865, 44.583920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132721, 44.675625, 44.527393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040339, 0.283511, -0.958120,
		0.605932, 0.755519, 0.249072,
		0.794493, -0.590603, -0.141312,
		41.371067, 44.498444, 44.485001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291386, 45.379509, 44.212463>,  <40.814922, 44.911865, 44.583920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291386, 45.379509, 44.212463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417488, 45.004349, 44.154549>,  <41.493149, 44.779255, 44.119801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417488, 45.004349, 44.154549>,  <41.291386, 45.379509, 44.212463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417488, 45.004349, 44.154549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009253, 0.155596, -0.987778,
		0.948962, 0.310061, 0.057730,
		0.315254, -0.937898, -0.144786,
		41.512066, 44.722980, 44.111115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878864, 45.377224, 43.765320>,  <41.291386, 45.379509, 44.212463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878864, 45.377224, 43.765320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673431, 45.035648, 43.731808>,  <41.550171, 44.830704, 43.711700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673431, 45.035648, 43.731808>,  <41.878864, 45.377224, 43.765320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673431, 45.035648, 43.731808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106050, 0.160063, -0.981394,
		0.851459, -0.495146, -0.172766,
		-0.513586, -0.853938, -0.083777,
		41.519356, 44.779469, 43.706676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255466, 44.847828, 43.291340>,  <41.878864, 45.377224, 43.765320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255466, 44.847828, 43.291340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862816, 44.776432, 43.318317>,  <41.627224, 44.733597, 43.334503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862816, 44.776432, 43.318317>,  <42.255466, 44.847828, 43.291340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862816, 44.776432, 43.318317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077780, 0.051542, -0.995637,
		0.174234, -0.982591, -0.064478,
		-0.981628, -0.178489, 0.067446,
		41.568329, 44.722885, 43.338551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110096, 44.312820, 42.734329>,  <42.255466, 44.847828, 43.291340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110096, 44.312820, 42.734329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752274, 44.467106, 42.824654>,  <41.537579, 44.559677, 42.878849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752274, 44.467106, 42.824654>,  <42.110096, 44.312820, 42.734329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752274, 44.467106, 42.824654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220472, 0.058683, -0.973626,
		-0.388792, -0.920750, 0.032544,
		-0.894557, 0.385713, 0.225816,
		41.483906, 44.582821, 42.892399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807076, 44.124100, 42.114040>,  <42.110096, 44.312820, 42.734329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807076, 44.124100, 42.114040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559456, 44.389629, 42.281906>,  <41.410885, 44.548946, 42.382626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559456, 44.389629, 42.281906>,  <41.807076, 44.124100, 42.114040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559456, 44.389629, 42.281906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092400, 0.469088, -0.878304,
		-0.779895, -0.582493, -0.229053,
		-0.619052, 0.663821, 0.419662,
		41.373741, 44.588776, 42.407806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169399, 44.035389, 41.813385>,  <41.807076, 44.124100, 42.114040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169399, 44.035389, 41.813385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168236, 44.413216, 41.944706>,  <41.167538, 44.639912, 42.023499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168236, 44.413216, 41.944706>,  <41.169399, 44.035389, 41.813385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168236, 44.413216, 41.944706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123693, 0.325443, -0.937436,
		-0.992316, -0.043334, 0.115891,
		-0.002907, 0.944568, 0.328303,
		41.167362, 44.696587, 42.043198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648548, 44.261318, 41.428246>,  <41.169399, 44.035389, 41.813385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648548, 44.261318, 41.428246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862602, 44.580288, 41.539780>,  <40.991035, 44.771667, 41.606701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862602, 44.580288, 41.539780>,  <40.648548, 44.261318, 41.428246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862602, 44.580288, 41.539780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096165, 0.385428, -0.917713,
		-0.839273, 0.464290, 0.282941,
		0.535139, 0.797421, 0.278831,
		41.023144, 44.819515, 41.623428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306129, 44.818707, 41.013599>,  <40.648548, 44.261318, 41.428246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306129, 44.818707, 41.013599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631020, 44.988544, 41.173599>,  <40.825954, 45.090446, 41.269600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631020, 44.988544, 41.173599>,  <40.306129, 44.818707, 41.013599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631020, 44.988544, 41.173599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010464, 0.696206, -0.717765,
		-0.583245, 0.578804, 0.569922,
		0.812229, 0.424597, 0.400002,
		40.874687, 45.115925, 41.293598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224957, 45.542034, 40.938137>,  <40.306129, 44.818707, 41.013599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224957, 45.542034, 40.938137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602379, 45.409588, 40.941517>,  <40.828831, 45.330120, 40.943542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602379, 45.409588, 40.941517>,  <40.224957, 45.542034, 40.938137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602379, 45.409588, 40.941517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170602, 0.463969, -0.869268,
		0.283912, 0.821641, 0.494268,
		0.943551, -0.331118, 0.008447,
		40.885445, 45.310253, 40.944050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586468, 46.083672, 40.689564>,  <40.224957, 45.542034, 40.938137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586468, 46.083672, 40.689564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838646, 45.776512, 40.644203>,  <40.989952, 45.592216, 40.616989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838646, 45.776512, 40.644203>,  <40.586468, 46.083672, 40.689564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838646, 45.776512, 40.644203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219624, 0.316582, -0.922790,
		0.744513, 0.556867, 0.368239,
		0.630449, -0.767903, -0.113398,
		41.027782, 45.546143, 40.610184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090126, 46.374966, 40.306229>,  <40.586468, 46.083672, 40.689564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090126, 46.374966, 40.306229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168259, 45.985321, 40.260719>,  <41.215137, 45.751534, 40.233414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168259, 45.985321, 40.260719>,  <41.090126, 46.374966, 40.306229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168259, 45.985321, 40.260719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242967, 0.160457, -0.956672,
		0.950165, 0.159221, 0.268020,
		0.195328, -0.974116, -0.113775,
		41.226856, 45.693085, 40.226585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622349, 46.351532, 39.856422>,  <41.090126, 46.374966, 40.306229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622349, 46.351532, 39.856422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449417, 45.991341, 39.837517>,  <41.345657, 45.775227, 39.826176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449417, 45.991341, 39.837517>,  <41.622349, 46.351532, 39.856422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449417, 45.991341, 39.837517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210782, -0.049960, -0.976256,
		0.876736, -0.432021, 0.211404,
		-0.432325, -0.900478, -0.047261,
		41.319721, 45.721195, 39.823338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013901, 45.920204, 39.364880>,  <41.622349, 46.351532, 39.856422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013901, 45.920204, 39.364880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665588, 45.723564, 39.368118>,  <41.456600, 45.605579, 39.370060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665588, 45.723564, 39.368118>,  <42.013901, 45.920204, 39.364880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665588, 45.723564, 39.368118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147383, -0.276702, -0.949586,
		0.469057, -0.825690, 0.313401,
		-0.870783, -0.491601, 0.008096,
		41.404354, 45.576084, 39.370548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226711, 45.362511, 39.121181>,  <42.013901, 45.920204, 39.364880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226711, 45.362511, 39.121181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828102, 45.367760, 39.088284>,  <41.588936, 45.370911, 39.068542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828102, 45.367760, 39.088284>,  <42.226711, 45.362511, 39.121181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828102, 45.367760, 39.088284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072978, -0.338331, -0.938193,
		-0.040143, -0.940936, 0.336197,
		-0.996525, 0.013127, -0.082249,
		41.529144, 45.371696, 39.063610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140968, 44.814045, 38.832176>,  <42.226711, 45.362511, 39.121181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140968, 44.814045, 38.832176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808189, 45.028336, 38.774406>,  <41.608521, 45.156910, 38.739746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808189, 45.028336, 38.774406>,  <42.140968, 44.814045, 38.832176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808189, 45.028336, 38.774406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030124, -0.216290, -0.975864,
		-0.554038, -0.816217, 0.163804,
		-0.831946, 0.535731, -0.144421,
		41.558605, 45.189056, 38.731079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694729, 44.355068, 38.632927>,  <42.140968, 44.814045, 38.832176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694729, 44.355068, 38.632927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627304, 44.715992, 38.474220>,  <41.586849, 44.932545, 38.378998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627304, 44.715992, 38.474220>,  <41.694729, 44.355068, 38.632927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627304, 44.715992, 38.474220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008666, -0.403867, -0.914777,
		-0.985652, -0.150762, 0.075898,
		-0.168566, 0.902309, -0.396766,
		41.576733, 44.986687, 38.355190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167313, 44.246536, 38.058628>,  <41.694729, 44.355068, 38.632927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167313, 44.246536, 38.058628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299088, 44.614250, 37.972477>,  <41.378155, 44.834877, 37.920784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299088, 44.614250, 37.972477>,  <41.167313, 44.246536, 38.058628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299088, 44.614250, 37.972477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040806, -0.241765, -0.969477,
		-0.943295, 0.310595, -0.117158,
		0.329439, 0.919283, -0.215381,
		41.397919, 44.890034, 37.907864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858841, 44.540722, 37.471844>,  <41.167313, 44.246536, 38.058628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858841, 44.540722, 37.471844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184105, 44.773529, 37.470184>,  <41.379265, 44.913216, 37.469189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184105, 44.773529, 37.470184>,  <40.858841, 44.540722, 37.471844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184105, 44.773529, 37.470184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193903, -0.277619, -0.940919,
		-0.548786, 0.764317, -0.338606,
		0.813164, 0.582020, -0.004150,
		41.428055, 44.948135, 37.468941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891441, 44.742817, 36.724724>,  <40.858841, 44.540722, 37.471844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891441, 44.742817, 36.724724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249733, 44.809387, 36.889629>,  <41.464710, 44.849331, 36.988575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249733, 44.809387, 36.889629>,  <40.891441, 44.742817, 36.724724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249733, 44.809387, 36.889629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433953, -0.125618, -0.892135,
		-0.096690, 0.978019, -0.184743,
		0.895732, 0.166430, 0.412268,
		41.518452, 44.859318, 37.013309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051304, 45.302036, 36.374657>,  <40.891441, 44.742817, 36.724724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051304, 45.302036, 36.374657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394051, 45.149544, 36.513474>,  <41.599697, 45.058048, 36.596764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394051, 45.149544, 36.513474>,  <41.051304, 45.302036, 36.374657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394051, 45.149544, 36.513474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408109, 0.090299, -0.908457,
		0.314999, 0.920057, 0.232960,
		0.856868, -0.381236, 0.347039,
		41.651112, 45.035172, 36.617584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678207, 45.856117, 36.335369>,  <41.051304, 45.302036, 36.374657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678207, 45.856117, 36.335369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817703, 45.481247, 36.331768>,  <41.901402, 45.256325, 36.329605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817703, 45.481247, 36.331768>,  <41.678207, 45.856117, 36.335369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817703, 45.481247, 36.331768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525326, 0.203423, -0.826227,
		0.776152, 0.283408, 0.563265,
		0.348741, -0.937176, -0.009005,
		41.922325, 45.200092, 36.329067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304192, 45.909012, 36.051910>,  <41.678207, 45.856117, 36.335369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304192, 45.909012, 36.051910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226349, 45.518600, 36.012920>,  <42.179642, 45.284355, 35.989525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226349, 45.518600, 36.012920>,  <42.304192, 45.909012, 36.051910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226349, 45.518600, 36.012920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480871, -0.008319, -0.876752,
		0.854922, -0.217495, 0.470961,
		-0.194607, -0.976026, -0.097475,
		42.167965, 45.225792, 35.983677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887520, 45.620422, 35.713882>,  <42.304192, 45.909012, 36.051910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887520, 45.620422, 35.713882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607391, 45.336109, 35.687515>,  <42.439316, 45.165524, 35.671696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607391, 45.336109, 35.687515>,  <42.887520, 45.620422, 35.713882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607391, 45.336109, 35.687515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240205, -0.147694, -0.959421,
		0.672203, -0.687733, 0.274166,
		-0.700318, -0.710781, -0.065917,
		42.397297, 45.122875, 35.667740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221825, 45.183617, 35.288250>,  <42.887520, 45.620422, 35.713882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221825, 45.183617, 35.288250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835915, 45.080879, 35.265450>,  <42.604370, 45.019238, 35.251770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835915, 45.080879, 35.265450>,  <43.221825, 45.183617, 35.288250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835915, 45.080879, 35.265450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126797, -0.264082, -0.956129,
		0.230518, -0.929674, 0.287345,
		-0.964771, -0.256840, -0.057004,
		42.546482, 45.003826, 35.248348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189358, 44.425552, 34.971924>,  <43.221825, 45.183617, 35.288250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189358, 44.425552, 34.971924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843208, 44.616608, 34.911270>,  <42.635521, 44.731243, 34.874878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843208, 44.616608, 34.911270>,  <43.189358, 44.425552, 34.971924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843208, 44.616608, 34.911270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091782, -0.146395, -0.984959,
		-0.492657, -0.866271, 0.082847,
		-0.865370, 0.477643, -0.151631,
		42.583599, 44.759899, 34.865780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898300, 43.971214, 34.428524>,  <43.189358, 44.425552, 34.971924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898300, 43.971214, 34.428524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687592, 44.309219, 34.391731>,  <42.561165, 44.512024, 34.369656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687592, 44.309219, 34.391731>,  <42.898300, 43.971214, 34.428524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687592, 44.309219, 34.391731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264227, 0.059938, -0.962596,
		-0.807897, -0.531371, -0.254849,
		-0.526770, 0.845016, -0.091979,
		42.529560, 44.562725, 34.364136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578239, 44.044468, 33.882648>,  <42.898300, 43.971214, 34.428524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578239, 44.044468, 33.882648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545258, 44.440315, 33.929733>,  <42.525471, 44.677822, 33.957985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545258, 44.440315, 33.929733>,  <42.578239, 44.044468, 33.882648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545258, 44.440315, 33.929733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151161, 0.129167, -0.980034,
		-0.985065, -0.063012, -0.160242,
		-0.082452, 0.989619, 0.117712,
		42.520523, 44.737202, 33.965046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096275, 44.219963, 33.392944>,  <42.578239, 44.044468, 33.882648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096275, 44.219963, 33.392944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346077, 44.514107, 33.498207>,  <42.495956, 44.690594, 33.561363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346077, 44.514107, 33.498207>,  <42.096275, 44.219963, 33.392944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346077, 44.514107, 33.498207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193843, 0.180461, -0.964292,
		-0.756587, 0.653211, -0.029846,
		0.624500, 0.735357, 0.263155,
		42.533428, 44.734715, 33.577152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037285, 44.612762, 32.807114>,  <42.096275, 44.219963, 33.392944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037285, 44.612762, 32.807114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377853, 44.733833, 32.978447>,  <42.582195, 44.806477, 33.081249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377853, 44.733833, 32.978447>,  <42.037285, 44.612762, 32.807114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377853, 44.733833, 32.978447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461262, -0.043402, -0.886202,
		-0.249640, 0.952105, -0.176565,
		0.851421, 0.302674, 0.428335,
		42.633278, 44.824635, 33.106949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222893, 45.091087, 32.390247>,  <42.037285, 44.612762, 32.807114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222893, 45.091087, 32.390247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559639, 45.014297, 32.592003>,  <42.761688, 44.968224, 32.713055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559639, 45.014297, 32.592003>,  <42.222893, 45.091087, 32.390247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559639, 45.014297, 32.592003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506002, -0.044223, -0.861398,
		0.187671, 0.980403, 0.059910,
		0.841868, -0.191974, 0.504386,
		42.812199, 44.956707, 32.743320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<46.030540, 43.590492, 32.304535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.694206, 43.774891, 32.418003>,  <45.492405, 43.885532, 32.486084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.694206, 43.774891, 32.418003>,  <46.030540, 43.590492, 32.304535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694206, 43.774891, 32.418003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299815, -0.039683, 0.953172,
		0.450668, 0.886513, -0.104847,
		-0.840839, 0.460998, 0.283674,
		45.441956, 43.913189, 32.503105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279453, 44.034924, 32.723499>,  <46.030540, 43.590492, 32.304535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279453, 44.034924, 32.723499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.894722, 44.019497, 32.831867>,  <45.663883, 44.010242, 32.896889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.894722, 44.019497, 32.831867>,  <46.279453, 44.034924, 32.723499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.894722, 44.019497, 32.831867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271558, -0.012224, 0.962344,
		-0.033800, 0.999181, 0.022229,
		-0.961828, -0.038564, 0.270923,
		45.606174, 44.007927, 32.913143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.240898, 44.387859, 33.364021>,  <46.279453, 44.034924, 32.723499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.240898, 44.387859, 33.364021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.895485, 44.186668, 33.349449>,  <45.688236, 44.065956, 33.340706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.895485, 44.186668, 33.349449>,  <46.240898, 44.387859, 33.364021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895485, 44.186668, 33.349449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030942, -0.124945, 0.991681,
		-0.503342, 0.855222, 0.123457,
		-0.863533, -0.502975, -0.036428,
		45.636425, 44.035774, 33.338520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709682, 44.765259, 33.836426>,  <46.240898, 44.387859, 33.364021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709682, 44.765259, 33.836426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.610458, 44.379944, 33.795353>,  <45.550922, 44.148754, 33.770710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.610458, 44.379944, 33.795353>,  <45.709682, 44.765259, 33.836426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.610458, 44.379944, 33.795353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346400, -0.010782, 0.938025,
		-0.904694, 0.268257, -0.331008,
		-0.248063, -0.963287, -0.102679,
		45.536041, 44.090958, 33.764549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026913, 44.707333, 34.171207>,  <45.709682, 44.765259, 33.836426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026913, 44.707333, 34.171207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.150887, 44.327042, 34.174461>,  <45.225269, 44.098869, 34.176414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.150887, 44.327042, 34.174461>,  <45.026913, 44.707333, 34.171207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150887, 44.327042, 34.174461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366648, -0.111622, 0.923639,
		-0.877218, -0.289249, -0.383177,
		0.309933, -0.950724, 0.008136,
		45.243866, 44.041824, 34.176903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467052, 44.267231, 34.374832>,  <45.026913, 44.707333, 34.171207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467052, 44.267231, 34.374832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.806961, 44.072941, 34.456764>,  <45.010906, 43.956367, 34.505924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.806961, 44.072941, 34.456764>,  <44.467052, 44.267231, 34.374832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806961, 44.072941, 34.456764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296150, -0.118432, 0.947771,
		-0.436099, -0.866050, -0.244488,
		0.849772, -0.485727, 0.204832,
		45.061893, 43.927223, 34.518215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322945, 43.768288, 34.943279>,  <44.467052, 44.267231, 34.374832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322945, 43.768288, 34.943279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.721382, 43.799923, 34.927547>,  <44.960445, 43.818905, 34.918110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.721382, 43.799923, 34.927547>,  <44.322945, 43.768288, 34.943279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721382, 43.799923, 34.927547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037270, 0.027321, 0.998932,
		0.080082, -0.996493, 0.024267,
		0.996091, 0.079092, -0.039327,
		45.020210, 43.823650, 34.915749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624229, 43.202923, 35.378273>,  <44.322945, 43.768288, 34.943279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624229, 43.202923, 35.378273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.937286, 43.450413, 35.350998>,  <45.125118, 43.598907, 35.334633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.937286, 43.450413, 35.350998>,  <44.624229, 43.202923, 35.378273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937286, 43.450413, 35.350998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030330, 0.071515, 0.996978,
		0.621735, -0.782343, 0.037205,
		0.782640, 0.618728, -0.068191,
		45.172077, 43.636032, 35.330540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147816, 42.903255, 35.841003>,  <44.624229, 43.202923, 35.378273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147816, 42.903255, 35.841003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.196922, 43.297417, 35.793823>,  <45.226387, 43.533913, 35.765514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.196922, 43.297417, 35.793823>,  <45.147816, 42.903255, 35.841003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.196922, 43.297417, 35.793823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124696, 0.102595, 0.986877,
		0.984571, -0.135860, -0.110281,
		0.122762, 0.985402, -0.117953,
		45.233749, 43.593037, 35.758438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494438, 43.071568, 36.505192>,  <45.147816, 42.903255, 35.841003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494438, 43.071568, 36.505192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.414940, 43.442360, 36.377945>,  <45.367241, 43.664837, 36.301598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.414940, 43.442360, 36.377945>,  <45.494438, 43.071568, 36.505192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414940, 43.442360, 36.377945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008407, 0.326195, 0.945265,
		0.980016, 0.185190, -0.072622,
		-0.198742, 0.926985, -0.318120,
		45.355316, 43.720455, 36.282509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045738, 43.543159, 36.701103>,  <45.494438, 43.071568, 36.505192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045738, 43.543159, 36.701103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.715981, 43.759949, 36.635826>,  <45.518124, 43.890022, 36.596661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.715981, 43.759949, 36.635826>,  <46.045738, 43.543159, 36.701103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715981, 43.759949, 36.635826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128347, 0.459807, 0.878695,
		0.551270, 0.703447, -0.448625,
		-0.824396, 0.541977, -0.163193,
		45.468662, 43.922543, 36.586868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223511, 44.125755, 37.073799>,  <46.045738, 43.543159, 36.701103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223511, 44.125755, 37.073799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.833778, 44.134724, 36.984196>,  <45.599941, 44.140102, 36.930431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.833778, 44.134724, 36.984196>,  <46.223511, 44.125755, 37.073799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833778, 44.134724, 36.984196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182740, 0.502411, 0.845097,
		0.131491, 0.864338, -0.485416,
		-0.974329, 0.022418, -0.224012,
		45.541481, 44.141449, 36.916992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013611, 44.861458, 37.165462>,  <46.223511, 44.125755, 37.073799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013611, 44.861458, 37.165462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.698296, 44.617256, 37.196148>,  <45.509106, 44.470734, 37.214558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.698296, 44.617256, 37.196148>,  <46.013611, 44.861458, 37.165462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698296, 44.617256, 37.196148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168196, 0.333727, 0.927543,
		-0.591870, 0.718270, -0.365758,
		-0.788289, -0.610504, 0.076713,
		45.461807, 44.434105, 37.219162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421124, 45.242916, 37.490078>,  <46.013611, 44.861458, 37.165462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421124, 45.242916, 37.490078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.349449, 44.857635, 37.570206>,  <45.306446, 44.626465, 37.618282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.349449, 44.857635, 37.570206>,  <45.421124, 45.242916, 37.490078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349449, 44.857635, 37.570206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033776, 0.197476, 0.979726,
		-0.983236, 0.182315, -0.002851,
		-0.179181, -0.963205, 0.200323,
		45.295696, 44.568672, 37.630302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765224, 45.209766, 38.052399>,  <45.421124, 45.242916, 37.490078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765224, 45.209766, 38.052399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.938171, 44.849091, 38.054325>,  <45.041939, 44.632687, 38.055481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.938171, 44.849091, 38.054325>,  <44.765224, 45.209766, 38.052399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938171, 44.849091, 38.054325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005574, 0.008019, 0.999952,
		-0.901681, -0.432319, 0.008493,
		0.432367, -0.901685, 0.004821,
		45.067883, 44.578587, 38.055771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322659, 44.867130, 38.483154>,  <44.765224, 45.209766, 38.052399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322659, 44.867130, 38.483154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.658134, 44.649364, 38.477425>,  <44.859421, 44.518703, 38.473988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.658134, 44.649364, 38.477425>,  <44.322659, 44.867130, 38.483154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658134, 44.649364, 38.477425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049330, -0.102142, 0.993546,
		-0.542368, -0.832571, -0.112522,
		0.838691, -0.544419, -0.014328,
		44.909740, 44.486038, 38.473125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104267, 44.359867, 38.878963>,  <44.322659, 44.867130, 38.483154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104267, 44.359867, 38.878963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.503944, 44.357708, 38.894886>,  <44.743752, 44.356415, 38.904438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.503944, 44.357708, 38.894886>,  <44.104267, 44.359867, 38.878963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503944, 44.357708, 38.894886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040088, -0.196611, 0.979662,
		0.002542, -0.980467, -0.196668,
		0.999193, -0.005393, 0.039805,
		44.803703, 44.356091, 38.906826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224518, 43.786007, 39.273949>,  <44.104267, 44.359867, 38.878963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224518, 43.786007, 39.273949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.556160, 44.008720, 39.294224>,  <44.755146, 44.142349, 39.306389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.556160, 44.008720, 39.294224>,  <44.224518, 43.786007, 39.273949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556160, 44.008720, 39.294224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058893, -0.177137, 0.982423,
		0.555975, -0.811551, -0.179657,
		0.829110, 0.556783, 0.050689,
		44.804893, 44.175755, 39.309429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632057, 43.383846, 39.748283>,  <44.224518, 43.786007, 39.273949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632057, 43.383846, 39.748283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.802734, 43.745590, 39.751511>,  <44.905140, 43.962639, 39.753445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.802734, 43.745590, 39.751511>,  <44.632057, 43.383846, 39.748283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802734, 43.745590, 39.751511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090340, -0.051495, 0.994579,
		0.899875, -0.423647, -0.103673,
		0.426689, 0.904363, 0.008066,
		44.930740, 44.016899, 39.753929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338787, 43.299862, 39.927937>,  <44.632057, 43.383846, 39.748283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.338787, 43.299862, 39.927937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.250526, 43.677876, 40.024456>,  <45.197571, 43.904682, 40.082367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.250526, 43.677876, 40.024456>,  <45.338787, 43.299862, 39.927937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250526, 43.677876, 40.024456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082722, -0.228370, 0.970054,
		0.971838, 0.234008, -0.027784,
		-0.220656, 0.945033, 0.241296,
		45.184330, 43.961384, 40.096844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709961, 43.350491, 40.461975>,  <45.338787, 43.299862, 39.927937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709961, 43.350491, 40.461975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.445625, 43.646603, 40.511410>,  <45.287025, 43.824272, 40.541069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.445625, 43.646603, 40.511410>,  <45.709961, 43.350491, 40.461975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.445625, 43.646603, 40.511410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111400, -0.066091, 0.991575,
		0.742213, 0.669040, -0.038792,
		-0.660840, 0.740282, 0.123585,
		45.247372, 43.868687, 40.548485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078278, 43.856686, 40.901272>,  <45.709961, 43.350491, 40.461975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078278, 43.856686, 40.901272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.681313, 43.885571, 40.941071>,  <45.443134, 43.902901, 40.964951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.681313, 43.885571, 40.941071>,  <46.078278, 43.856686, 40.901272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.681313, 43.885571, 40.941071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101406, 0.023234, 0.994574,
		0.069508, 0.997119, -0.030381,
		-0.992414, 0.072212, 0.099499,
		45.383587, 43.907234, 40.970921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978897, 44.290257, 41.557373>,  <46.078278, 43.856686, 40.901272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978897, 44.290257, 41.557373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.621216, 44.121216, 41.498306>,  <45.406609, 44.019791, 41.462868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.621216, 44.121216, 41.498306>,  <45.978897, 44.290257, 41.557373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621216, 44.121216, 41.498306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277202, 0.263704, 0.923915,
		-0.351510, 0.867102, -0.352951,
		-0.894204, -0.422604, -0.147668,
		45.352955, 43.994434, 41.454006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494091, 44.730728, 41.888195>,  <45.978897, 44.290257, 41.557373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494091, 44.730728, 41.888195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.286682, 44.390949, 41.849037>,  <45.162235, 44.187084, 41.825542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.286682, 44.390949, 41.849037>,  <45.494091, 44.730728, 41.888195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286682, 44.390949, 41.849037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397143, 0.137861, 0.907343,
		-0.757241, 0.509354, -0.408834,
		-0.518521, -0.849443, -0.097892,
		45.131126, 44.136116, 41.819668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908058, 44.851353, 42.224514>,  <45.494091, 44.730728, 41.888195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908058, 44.851353, 42.224514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.869675, 44.454247, 42.195667>,  <44.846645, 44.215981, 42.178360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.869675, 44.454247, 42.195667>,  <44.908058, 44.851353, 42.224514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869675, 44.454247, 42.195667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591830, -0.001352, 0.806062,
		-0.800330, 0.120034, -0.587421,
		-0.095961, -0.992769, -0.072122,
		44.840885, 44.156414, 42.174030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272522, 44.718628, 42.163059>,  <44.908058, 44.851353, 42.224514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272522, 44.718628, 42.163059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.450363, 44.393967, 42.314610>,  <44.557068, 44.199169, 42.405540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.450363, 44.393967, 42.314610>,  <44.272522, 44.718628, 42.163059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450363, 44.393967, 42.314610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557710, 0.080144, 0.826158,
		-0.700919, -0.578613, -0.417036,
		0.444603, -0.811655, 0.378873,
		44.583744, 44.150471, 42.428272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803959, 44.318611, 42.553474>,  <44.272522, 44.718628, 42.163059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803959, 44.318611, 42.553474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.158470, 44.217247, 42.708546>,  <44.371178, 44.156429, 42.801586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.158470, 44.217247, 42.708546>,  <43.803959, 44.318611, 42.553474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158470, 44.217247, 42.708546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405737, -0.021150, 0.913745,
		-0.223357, -0.967126, -0.121565,
		0.886278, -0.253415, 0.387675,
		44.424355, 44.141224, 42.824848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625454, 43.931431, 42.996803>,  <43.803959, 44.318611, 42.553474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625454, 43.931431, 42.996803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.991470, 44.035343, 43.120228>,  <44.211082, 44.097691, 43.194283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.991470, 44.035343, 43.120228>,  <43.625454, 43.931431, 42.996803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991470, 44.035343, 43.120228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296989, -0.083718, 0.951204,
		0.272937, -0.962032, 0.000546,
		0.915043, 0.259781, 0.308562,
		44.265984, 44.113277, 43.212795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800667, 43.445877, 43.560532>,  <43.625454, 43.931431, 42.996803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800667, 43.445877, 43.560532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.043427, 43.756268, 43.629276>,  <44.189083, 43.942501, 43.670521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.043427, 43.756268, 43.629276>,  <43.800667, 43.445877, 43.560532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043427, 43.756268, 43.629276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165276, -0.088289, 0.982288,
		0.777407, -0.624551, 0.074668,
		0.606896, 0.775978, 0.171860,
		44.225494, 43.989059, 43.680836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293045, 43.319649, 44.174244>,  <43.800667, 43.445877, 43.560532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293045, 43.319649, 44.174244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.293640, 43.717026, 44.128525>,  <44.293995, 43.955452, 44.101093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.293640, 43.717026, 44.128525>,  <44.293045, 43.319649, 44.174244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293640, 43.717026, 44.128525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076563, 0.113851, 0.990543,
		0.997064, -0.010223, -0.075892,
		0.001486, 0.993445, -0.114300,
		44.294086, 44.015060, 44.094234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930870, 43.645176, 44.609905>,  <44.293045, 43.319649, 44.174244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930870, 43.645176, 44.609905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.663094, 43.936909, 44.553444>,  <44.502426, 44.111946, 44.519566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.663094, 43.936909, 44.553444>,  <44.930870, 43.645176, 44.609905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663094, 43.936909, 44.553444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032858, 0.218897, 0.975194,
		0.742135, 0.648201, -0.170504,
		-0.669445, 0.729328, -0.141152,
		44.462261, 44.155708, 44.511097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164806, 44.311356, 44.864429>,  <44.930870, 43.645176, 44.609905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164806, 44.311356, 44.864429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.768959, 44.367764, 44.853325>,  <44.531452, 44.401608, 44.846661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.768959, 44.367764, 44.853325>,  <45.164806, 44.311356, 44.864429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768959, 44.367764, 44.853325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027837, 0.377538, 0.925575,
		0.141009, 0.915192, -0.377544,
		-0.989617, 0.141024, -0.027760,
		44.472073, 44.410072, 44.844997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978245, 45.007359, 45.221451>,  <45.164806, 44.311356, 44.864429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978245, 45.007359, 45.221451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.638878, 44.795666, 45.217461>,  <44.435257, 44.668652, 45.215065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.638878, 44.795666, 45.217461>,  <44.978245, 45.007359, 45.221451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.638878, 44.795666, 45.217461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158085, 0.235350, 0.958968,
		-0.505165, 0.815185, -0.283339,
		-0.848420, -0.529229, -0.009978,
		44.384354, 44.636898, 45.214466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355537, 45.540215, 45.185410>,  <44.978245, 45.007359, 45.221451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355537, 45.540215, 45.185410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.300644, 45.182617, 45.356026>,  <44.267708, 44.968060, 45.458397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.300644, 45.182617, 45.356026>,  <44.355537, 45.540215, 45.185410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300644, 45.182617, 45.356026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087706, 0.439894, 0.893757,
		-0.986648, 0.085243, -0.138776,
		-0.137233, -0.893995, 0.426544,
		44.259476, 44.914417, 45.483990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999874, 45.685982, 45.794582>,  <44.355537, 45.540215, 45.185410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999874, 45.685982, 45.794582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.084404, 45.299206, 45.851669>,  <44.135124, 45.067139, 45.885921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.084404, 45.299206, 45.851669>,  <43.999874, 45.685982, 45.794582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084404, 45.299206, 45.851669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000756, 0.145856, 0.989306,
		-0.977415, -0.209177, 0.030093,
		0.211329, -0.966939, 0.142719,
		44.147804, 45.009125, 45.894485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598118, 45.485966, 46.378933>,  <43.999874, 45.685982, 45.794582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598118, 45.485966, 46.378933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.919716, 45.251907, 46.336628>,  <44.112675, 45.111473, 46.311245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.919716, 45.251907, 46.336628>,  <43.598118, 45.485966, 46.378933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919716, 45.251907, 46.336628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244752, 0.163554, 0.955692,
		-0.541924, -0.794261, 0.274714,
		0.803999, -0.585150, -0.105763,
		44.160915, 45.076363, 46.304897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644852, 45.031498, 47.022305>,  <43.598118, 45.485966, 46.378933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644852, 45.031498, 47.022305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.008369, 44.995781, 46.859276>,  <44.226482, 44.974350, 46.761459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.008369, 44.995781, 46.859276>,  <43.644852, 45.031498, 47.022305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008369, 44.995781, 46.859276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415833, 0.113844, 0.902288,
		-0.034169, -0.989478, 0.140592,
		0.908799, -0.089292, -0.407567,
		44.281010, 44.968994, 46.737007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021320, 44.363583, 47.290001>,  <43.644852, 45.031498, 47.022305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021320, 44.363583, 47.290001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.277756, 44.650810, 47.181637>,  <44.431618, 44.823147, 47.116619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.277756, 44.650810, 47.181637>,  <44.021320, 44.363583, 47.290001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277756, 44.650810, 47.181637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366214, 0.023992, 0.930222,
		0.674460, -0.695562, -0.247585,
		0.641086, 0.718066, -0.270906,
		44.470081, 44.866230, 47.100365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550655, 44.177895, 47.640259>,  <44.021320, 44.363583, 47.290001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550655, 44.177895, 47.640259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.662437, 44.547447, 47.535690>,  <44.729507, 44.769180, 47.472950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.662437, 44.547447, 47.535690>,  <44.550655, 44.177895, 47.640259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662437, 44.547447, 47.535690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389070, 0.139951, 0.910515,
		0.877798, -0.356158, -0.320346,
		0.279454, 0.923886, -0.261419,
		44.746273, 44.824612, 47.457264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250778, 44.239632, 47.851326>,  <44.550655, 44.177895, 47.640259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250778, 44.239632, 47.851326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.095001, 44.606113, 47.813606>,  <45.001534, 44.826004, 47.790974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.095001, 44.606113, 47.813606>,  <45.250778, 44.239632, 47.851326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095001, 44.606113, 47.813606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358311, 0.245030, 0.900874,
		0.848495, 0.317053, -0.423713,
		-0.389447, 0.916208, -0.094304,
		44.978168, 44.880978, 47.785316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.741714, 44.615692, 48.176323>,  <45.250778, 44.239632, 47.851326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.741714, 44.615692, 48.176323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.419296, 44.851498, 48.155300>,  <45.225845, 44.992981, 48.142685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.419296, 44.851498, 48.155300>,  <45.741714, 44.615692, 48.176323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419296, 44.851498, 48.155300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221186, 0.382421, 0.897124,
		0.548963, 0.711501, -0.438642,
		-0.806050, 0.589509, -0.052561,
		45.177483, 45.028351, 48.139530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963253, 45.192619, 48.536022>,  <45.741714, 44.615692, 48.176323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963253, 45.192619, 48.536022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.575089, 45.289024, 48.541977>,  <45.342190, 45.346867, 48.545551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.575089, 45.289024, 48.541977>,  <45.963253, 45.192619, 48.536022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575089, 45.289024, 48.541977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131895, 0.477398, 0.868732,
		0.202266, 0.844988, -0.495059,
		-0.970408, 0.241011, 0.014889,
		45.283966, 45.361328, 48.546444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917019, 45.935192, 48.637985>,  <45.963253, 45.192619, 48.536022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917019, 45.935192, 48.637985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.566780, 45.777908, 48.750214>,  <45.356636, 45.683540, 48.817551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.566780, 45.777908, 48.750214>,  <45.917019, 45.935192, 48.637985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566780, 45.777908, 48.750214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048387, 0.506519, 0.860870,
		-0.480613, 0.767351, -0.424481,
		-0.875597, -0.393206, 0.280569,
		45.304100, 45.659946, 48.834385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377831, 46.440575, 48.747559>,  <45.917019, 45.935192, 48.637985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377831, 46.440575, 48.747559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.271851, 46.128166, 48.973766>,  <45.208263, 45.940720, 49.109489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.271851, 46.128166, 48.973766>,  <45.377831, 46.440575, 48.747559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271851, 46.128166, 48.973766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139894, 0.549136, 0.823941,
		-0.954061, 0.297413, -0.036231,
		-0.264947, -0.781022, 0.565516,
		45.192368, 45.893860, 49.143421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994621, 46.817673, 49.250248>,  <45.377831, 46.440575, 48.747559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994621, 46.817673, 49.250248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.045738, 46.454674, 49.410309>,  <45.076408, 46.236874, 49.506344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.045738, 46.454674, 49.410309>,  <44.994621, 46.817673, 49.250248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045738, 46.454674, 49.410309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114087, 0.414232, 0.902993,
		-0.985217, -0.069746, 0.156471,
		0.127795, -0.907495, 0.400151,
		45.084076, 46.182426, 49.530354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564190, 46.705845, 49.900745>,  <44.994621, 46.817673, 49.250248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564190, 46.705845, 49.900745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.854958, 46.433296, 49.934963>,  <45.029419, 46.269768, 49.955494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.854958, 46.433296, 49.934963>,  <44.564190, 46.705845, 49.900745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854958, 46.433296, 49.934963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096973, 0.225167, 0.969482,
		-0.679844, -0.696438, 0.229753,
		0.726917, -0.681376, 0.085543,
		45.073032, 46.228882, 49.960625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329746, 46.367203, 50.458817>,  <44.564190, 46.705845, 49.900745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329746, 46.367203, 50.458817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.716087, 46.273972, 50.413544>,  <44.947891, 46.218033, 50.386379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.716087, 46.273972, 50.413544>,  <44.329746, 46.367203, 50.458817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716087, 46.273972, 50.413544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084562, -0.129344, 0.987988,
		-0.244921, -0.963817, -0.105217,
		0.965848, -0.233082, -0.113182,
		45.005840, 46.204048, 50.379589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442501, 45.726513, 50.859112>,  <44.329746, 46.367203, 50.458817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442501, 45.726513, 50.859112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.806252, 45.879940, 50.794716>,  <45.024502, 45.971996, 50.756077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.806252, 45.879940, 50.794716>,  <44.442501, 45.726513, 50.859112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806252, 45.879940, 50.794716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237653, -0.161415, 0.957844,
		0.341410, -0.909298, -0.237942,
		0.909374, 0.383565, -0.160989,
		45.079063, 45.995010, 50.746418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999493, 45.246124, 51.069164>,  <44.442501, 45.726513, 50.859112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999493, 45.246124, 51.069164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.127541, 45.622929, 51.109436>,  <45.204369, 45.849010, 51.133598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.127541, 45.622929, 51.109436>,  <44.999493, 45.246124, 51.069164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127541, 45.622929, 51.109436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283807, -0.196748, 0.938479,
		0.903869, -0.271848, -0.330333,
		0.320116, 0.942013, 0.100682,
		45.223576, 45.905533, 51.139641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.398621, 45.163158, 51.690441>,  <44.999493, 45.246124, 51.069164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.398621, 45.163158, 51.690441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.426689, 45.556366, 51.622627>,  <45.443531, 45.792290, 51.581940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.426689, 45.556366, 51.622627>,  <45.398621, 45.163158, 51.690441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426689, 45.556366, 51.622627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292263, 0.142239, 0.945701,
		0.953760, -0.115907, -0.277321,
		0.070167, 0.983023, -0.169537,
		45.447739, 45.851273, 51.571766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186020, 45.443710, 51.876465>,  <45.398621, 45.163158, 51.690441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186020, 45.443710, 51.876465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.920219, 45.741367, 51.903839>,  <45.760738, 45.919964, 51.920265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.920219, 45.741367, 51.903839>,  <46.186020, 45.443710, 51.876465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920219, 45.741367, 51.903839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412509, 0.288907, 0.863926,
		0.623117, 0.602310, -0.498946,
		-0.664501, 0.744147, 0.068436,
		45.720871, 45.964611, 51.924370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.567116, 46.119236, 52.056217>,  <46.186020, 45.443710, 51.876465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.567116, 46.119236, 52.056217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.186111, 46.197723, 52.149353>,  <45.957508, 46.244816, 52.205235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.186111, 46.197723, 52.149353>,  <46.567116, 46.119236, 52.056217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.186111, 46.197723, 52.149353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302388, 0.519797, 0.798983,
		0.035741, 0.831452, -0.554447,
		-0.952515, 0.196214, 0.232843,
		45.900356, 46.256588, 52.219208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.580345, 46.756126, 52.263664>,  <46.567116, 46.119236, 52.056217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.580345, 46.756126, 52.263664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.242249, 46.606705, 52.416512>,  <46.039391, 46.517052, 52.508221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.242249, 46.606705, 52.416512>,  <46.580345, 46.756126, 52.263664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242249, 46.606705, 52.416512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145493, 0.527188, 0.837201,
		-0.514193, 0.763234, -0.391252,
		-0.845244, -0.373559, 0.382121,
		45.988674, 46.494637, 52.531147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239471, 47.347515, 52.647236>,  <46.580345, 46.756126, 52.263664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239471, 47.347515, 52.647236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.072479, 47.025536, 52.815884>,  <45.972282, 46.832348, 52.917072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.072479, 47.025536, 52.815884>,  <46.239471, 47.347515, 52.647236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.072479, 47.025536, 52.815884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104961, 0.418166, 0.902286,
		-0.902602, 0.420944, -0.090090,
		-0.417484, -0.804949, 0.421620,
		45.947235, 46.784050, 52.942371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776802, 47.577175, 53.150890>,  <46.239471, 47.347515, 52.647236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776802, 47.577175, 53.150890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.814682, 47.198593, 53.274338>,  <45.837410, 46.971443, 53.348408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.814682, 47.198593, 53.274338>,  <45.776802, 47.577175, 53.150890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.814682, 47.198593, 53.274338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123106, 0.318769, 0.939804,
		-0.987865, -0.051002, 0.146701,
		0.094696, -0.946459, 0.308622,
		45.843090, 46.914654, 53.366924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.289928, 47.391071, 53.740963>,  <45.776802, 47.577175, 53.150890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.289928, 47.391071, 53.740963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.606651, 47.147537, 53.760391>,  <45.796684, 47.001415, 53.772049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.606651, 47.147537, 53.760391>,  <45.289928, 47.391071, 53.740963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.606651, 47.147537, 53.760391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200478, 0.334196, 0.920935,
		-0.576932, -0.719465, 0.386677,
		0.791806, -0.608837, 0.048572,
		45.844193, 46.964886, 53.774963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154842, 47.056263, 54.407497>,  <45.289928, 47.391071, 53.740963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154842, 47.056263, 54.407497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.542183, 47.025482, 54.312515>,  <45.774586, 47.007015, 54.255527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.542183, 47.025482, 54.312515>,  <45.154842, 47.056263, 54.407497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542183, 47.025482, 54.312515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248271, 0.198558, 0.948122,
		-0.025808, -0.977064, 0.211377,
		0.968347, -0.076948, -0.237452,
		45.832687, 47.002399, 54.241280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425194, 46.565372, 54.827053>,  <45.154842, 47.056263, 54.407497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425194, 46.565372, 54.827053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.731094, 46.794464, 54.708969>,  <45.914635, 46.931919, 54.638119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.731094, 46.794464, 54.708969>,  <45.425194, 46.565372, 54.827053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731094, 46.794464, 54.708969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222049, 0.195836, 0.955166,
		0.604859, -0.796012, 0.022592,
		0.764748, 0.572725, -0.295206,
		45.960518, 46.966282, 54.620407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.999809, 46.403843, 55.334766>,  <45.425194, 46.565372, 54.827053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.999809, 46.403843, 55.334766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.062347, 46.754868, 55.153465>,  <46.099869, 46.965485, 55.044685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.062347, 46.754868, 55.153465>,  <45.999809, 46.403843, 55.334766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062347, 46.754868, 55.153465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136338, 0.435327, 0.889889,
		0.978248, -0.200925, -0.051584,
		0.156345, 0.877565, -0.453251,
		46.109249, 47.018135, 55.017490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.627823, 46.642155, 55.599415>,  <45.999809, 46.403843, 55.334766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.627823, 46.642155, 55.599415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.453110, 46.970390, 55.451981>,  <46.348282, 47.167332, 55.363518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.453110, 46.970390, 55.451981>,  <46.627823, 46.642155, 55.599415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.453110, 46.970390, 55.451981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001686, 0.408993, 0.912536,
		0.899565, 0.399202, -0.177258,
		-0.436784, 0.820586, -0.368589,
		46.322075, 47.216568, 55.341404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.088940, 47.149345, 55.818592>,  <46.627823, 46.642155, 55.599415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.088940, 47.149345, 55.818592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.756477, 47.346352, 55.715359>,  <46.556999, 47.464554, 55.653419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.756477, 47.346352, 55.715359>,  <47.088940, 47.149345, 55.818592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756477, 47.346352, 55.715359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110005, 0.600617, 0.791933,
		0.545045, 0.629832, -0.553387,
		-0.831159, 0.492514, -0.258079,
		46.507130, 47.494106, 55.637936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.220074, 47.894608, 55.859058>,  <47.088940, 47.149345, 55.818592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.220074, 47.894608, 55.859058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.821518, 47.867088, 55.878990>,  <46.582386, 47.850578, 55.890949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.821518, 47.867088, 55.878990>,  <47.220074, 47.894608, 55.859058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.821518, 47.867088, 55.878990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002170, 0.607044, 0.794665,
		-0.084920, 0.791685, -0.604999,
		-0.996386, -0.068796, 0.049832,
		46.522602, 47.846451, 55.893940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.997421, 48.609222, 55.934834>,  <47.220074, 47.894608, 55.859058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.997421, 48.609222, 55.934834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.696732, 48.390083, 56.081680>,  <46.516319, 48.258602, 56.169788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.696732, 48.390083, 56.081680>,  <46.997421, 48.609222, 55.934834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.696732, 48.390083, 56.081680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088775, 0.635677, 0.766833,
		-0.653475, 0.543856, -0.526489,
		-0.751724, -0.547845, 0.367118,
		46.471214, 48.225731, 56.191814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547905, 49.161709, 56.218193>,  <46.997421, 48.609222, 55.934834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547905, 49.161709, 56.218193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.455772, 48.796684, 56.353352>,  <46.400494, 48.577667, 56.434444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.455772, 48.796684, 56.353352>,  <46.547905, 49.161709, 56.218193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.455772, 48.796684, 56.353352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139865, 0.374670, 0.916548,
		-0.963008, 0.163853, -0.213935,
		-0.230335, -0.912565, 0.337893,
		46.386673, 48.522915, 56.454720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<46.064037, 47.358570, 57.018417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.127144, 47.720528, 56.860291>,  <46.165009, 47.937702, 56.765415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.127144, 47.720528, 56.860291>,  <46.064037, 47.358570, 57.018417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127144, 47.720528, 56.860291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296397, -0.338473, -0.893076,
		-0.941944, 0.258067, 0.214809,
		0.157766, 0.904896, -0.395313,
		46.174473, 47.991997, 56.741695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.404858, 47.620255, 56.658169>,  <46.064037, 47.358570, 57.018417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.404858, 47.620255, 56.658169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.731453, 47.789543, 56.501083>,  <45.927410, 47.891117, 56.406830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.731453, 47.789543, 56.501083>,  <45.404858, 47.620255, 56.658169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731453, 47.789543, 56.501083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312973, -0.247151, -0.917041,
		-0.485170, 0.871666, -0.069341,
		0.816492, 0.423219, -0.392718,
		45.976402, 47.916508, 56.383266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231598, 47.868118, 55.960182>,  <45.404858, 47.620255, 56.658169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231598, 47.868118, 55.960182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.631310, 47.853577, 55.955727>,  <45.871136, 47.844852, 55.953053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.631310, 47.853577, 55.955727>,  <45.231598, 47.868118, 55.960182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631310, 47.853577, 55.955727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024856, -0.403043, -0.914844,
		0.028768, 0.914459, -0.403655,
		0.999277, -0.036352, -0.011135,
		45.931091, 47.842670, 55.952385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390285, 48.023308, 55.354073>,  <45.231598, 47.868118, 55.960182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390285, 48.023308, 55.354073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.732407, 47.854149, 55.473816>,  <45.937679, 47.752655, 55.545662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.732407, 47.854149, 55.473816>,  <45.390285, 48.023308, 55.354073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.732407, 47.854149, 55.473816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103786, -0.426223, -0.898645,
		0.507629, 0.799681, -0.320658,
		0.855302, -0.422898, 0.299359,
		45.988998, 47.727280, 55.563625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774048, 48.200287, 54.742901>,  <45.390285, 48.023308, 55.354073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.774048, 48.200287, 54.742901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.940376, 47.905167, 54.955593>,  <46.040173, 47.728092, 55.083210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.940376, 47.905167, 54.955593>,  <45.774048, 48.200287, 54.742901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940376, 47.905167, 54.955593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290303, -0.446409, -0.846430,
		0.861869, 0.506325, 0.028562,
		0.415819, -0.737804, 0.531734,
		46.065121, 47.683826, 55.115112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.517647, 48.098747, 54.514069>,  <45.774048, 48.200287, 54.742901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.517647, 48.098747, 54.514069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.397430, 47.743973, 54.654366>,  <46.325298, 47.531109, 54.738544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.397430, 47.743973, 54.654366>,  <46.517647, 48.098747, 54.514069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397430, 47.743973, 54.654366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139779, -0.404734, -0.903688,
		0.943470, -0.222570, 0.245615,
		-0.300543, -0.886935, 0.350744,
		46.307266, 47.477894, 54.759590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.954128, 47.647991, 54.133400>,  <46.517647, 48.098747, 54.514069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.954128, 47.647991, 54.133400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.648735, 47.440292, 54.287010>,  <46.465500, 47.315674, 54.379177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.648735, 47.440292, 54.287010>,  <46.954128, 47.647991, 54.133400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648735, 47.440292, 54.287010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139000, -0.448570, -0.882873,
		0.630693, -0.727437, 0.270299,
		-0.763482, -0.519250, 0.384024,
		46.419689, 47.284519, 54.402218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075294, 46.943859, 53.883419>,  <46.954128, 47.647991, 54.133400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075294, 46.943859, 53.883419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.693665, 46.951370, 54.003014>,  <46.464687, 46.955875, 54.074772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.693665, 46.951370, 54.003014>,  <47.075294, 46.943859, 53.883419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.693665, 46.951370, 54.003014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237472, -0.655810, -0.716604,
		0.182625, -0.754693, 0.630148,
		-0.954073, 0.018773, 0.298985,
		46.407444, 46.957001, 54.092709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.830563, 46.179123, 53.849281>,  <47.075294, 46.943859, 53.883419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.830563, 46.179123, 53.849281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.532944, 46.444550, 53.818119>,  <46.354370, 46.603806, 53.799419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.532944, 46.444550, 53.818119>,  <46.830563, 46.179123, 53.849281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.532944, 46.444550, 53.818119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377747, -0.513989, -0.770145,
		-0.551087, -0.543595, 0.633093,
		-0.744050, 0.663566, -0.077911,
		46.309727, 46.643620, 53.794746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265739, 45.726006, 53.620094>,  <46.830563, 46.179123, 53.849281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265739, 45.726006, 53.620094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.137039, 46.094887, 53.534286>,  <46.059818, 46.316216, 53.482803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.137039, 46.094887, 53.534286>,  <46.265739, 45.726006, 53.620094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.137039, 46.094887, 53.534286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411660, -0.340284, -0.845425,
		-0.852650, -0.183708, 0.489121,
		-0.321751, 0.922203, -0.214518,
		46.040512, 46.371548, 53.469933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476955, 45.714409, 53.503349>,  <46.265739, 45.726006, 53.620094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476955, 45.714409, 53.503349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.640190, 46.032600, 53.324162>,  <45.738129, 46.223518, 53.216648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.640190, 46.032600, 53.324162>,  <45.476955, 45.714409, 53.503349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.640190, 46.032600, 53.324162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452812, -0.249710, -0.855924,
		-0.792735, 0.552133, 0.258303,
		0.408083, 0.795484, -0.447967,
		45.762615, 46.271244, 53.189770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868534, 46.016903, 53.042217>,  <45.476955, 45.714409, 53.503349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868534, 46.016903, 53.042217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.205261, 46.164177, 52.884338>,  <45.407295, 46.252541, 52.789612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.205261, 46.164177, 52.884338>,  <44.868534, 46.016903, 53.042217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205261, 46.164177, 52.884338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354687, -0.173883, -0.918674,
		-0.406872, 0.913348, -0.015787,
		0.841815, 0.368183, -0.394701,
		45.457806, 46.274632, 52.765926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.655251, 46.432976, 52.477638>,  <44.868534, 46.016903, 53.042217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.655251, 46.432976, 52.477638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.042099, 46.367859, 52.399475>,  <45.274208, 46.328789, 52.352577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.042099, 46.367859, 52.399475>,  <44.655251, 46.432976, 52.477638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042099, 46.367859, 52.399475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209252, -0.072593, -0.975163,
		0.144561, 0.983986, -0.104270,
		0.967117, -0.162789, -0.195407,
		45.332233, 46.319023, 52.340855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819077, 46.886223, 51.958649>,  <44.655251, 46.432976, 52.477638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819077, 46.886223, 51.958649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.107056, 46.608643, 51.954597>,  <45.279842, 46.442093, 51.952168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.107056, 46.608643, 51.954597>,  <44.819077, 46.886223, 51.958649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107056, 46.608643, 51.954597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078545, -0.066967, -0.994659,
		0.689566, 0.716902, -0.102719,
		0.719952, -0.693951, -0.010131,
		45.323040, 46.400459, 51.951557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414352, 47.131927, 51.488888>,  <44.819077, 46.886223, 51.958649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414352, 47.131927, 51.488888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.425140, 46.732262, 51.501160>,  <45.431614, 46.492462, 51.508522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.425140, 46.732262, 51.501160>,  <45.414352, 47.131927, 51.488888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425140, 46.732262, 51.501160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021261, -0.030106, -0.999320,
		0.999410, 0.027604, 0.020431,
		0.026971, -0.999165, 0.030675,
		45.433231, 46.432510, 51.510361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950012, 47.002312, 51.055477>,  <45.414352, 47.131927, 51.488888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950012, 47.002312, 51.055477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.722031, 46.674049, 51.071869>,  <45.585243, 46.477093, 51.081703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.722031, 46.674049, 51.071869>,  <45.950012, 47.002312, 51.055477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722031, 46.674049, 51.071869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077945, 0.004348, -0.996948,
		0.817972, -0.571407, -0.066444,
		-0.569953, -0.820655, 0.040982,
		45.551044, 46.427853, 51.084164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.250935, 46.513210, 50.671581>,  <45.950012, 47.002312, 51.055477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.250935, 46.513210, 50.671581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.889618, 46.342171, 50.685516>,  <45.672829, 46.239548, 50.693878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.889618, 46.342171, 50.685516>,  <46.250935, 46.513210, 50.671581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889618, 46.342171, 50.685516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048848, 0.021842, -0.998567,
		0.426229, -0.903703, -0.040617,
		-0.903295, -0.427603, 0.034835,
		45.618629, 46.213890, 50.695969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.275795, 45.992489, 50.198505>,  <46.250935, 46.513210, 50.671581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.275795, 45.992489, 50.198505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.880669, 46.018665, 50.254974>,  <45.643593, 46.034370, 50.288857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.880669, 46.018665, 50.254974>,  <46.275795, 45.992489, 50.198505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880669, 46.018665, 50.254974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155398, -0.368299, -0.916628,
		-0.007995, -0.927401, 0.373983,
		-0.987819, 0.065445, 0.141171,
		45.584324, 46.038300, 50.297325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906700, 45.242031, 50.000565>,  <46.275795, 45.992489, 50.198505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906700, 45.242031, 50.000565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.626205, 45.527035, 50.010384>,  <45.457909, 45.698036, 50.016273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.626205, 45.527035, 50.010384>,  <45.906700, 45.242031, 50.000565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626205, 45.527035, 50.010384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497693, -0.464591, -0.732433,
		-0.510463, -0.525821, 0.680397,
		-0.701234, 0.712508, 0.024541,
		45.415833, 45.740788, 50.017746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.252018, 44.898949, 50.103165>,  <45.906700, 45.242031, 50.000565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.252018, 44.898949, 50.103165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.217049, 45.251537, 49.917534>,  <45.196068, 45.463089, 49.806156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.217049, 45.251537, 49.917534>,  <45.252018, 44.898949, 50.103165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217049, 45.251537, 49.917534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476915, -0.446037, -0.757366,
		-0.874591, 0.155114, 0.459380,
		-0.087423, 0.881471, -0.464076,
		45.190823, 45.515980, 49.778313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668697, 44.855587, 49.715332>,  <45.252018, 44.898949, 50.103165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668697, 44.855587, 49.715332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.815254, 45.187096, 49.546146>,  <44.903187, 45.386002, 49.444633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.815254, 45.187096, 49.546146>,  <44.668697, 44.855587, 49.715332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815254, 45.187096, 49.546146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329246, -0.309685, -0.892016,
		-0.870262, 0.466084, 0.159404,
		0.366390, 0.828771, -0.422963,
		44.925171, 45.435726, 49.419258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177521, 45.123871, 49.233879>,  <44.668697, 44.855587, 49.715332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177521, 45.123871, 49.233879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.517998, 45.293419, 49.110069>,  <44.722282, 45.395149, 49.035782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.517998, 45.293419, 49.110069>,  <44.177521, 45.123871, 49.233879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517998, 45.293419, 49.110069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156606, -0.357764, -0.920586,
		-0.500947, 0.832069, -0.238145,
		0.851191, 0.423870, -0.309528,
		44.773354, 45.420582, 49.017212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997120, 45.398651, 48.500572>,  <44.177521, 45.123871, 49.233879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997120, 45.398651, 48.500572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.396576, 45.418980, 48.505180>,  <44.636250, 45.431175, 48.507946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.396576, 45.418980, 48.505180>,  <43.997120, 45.398651, 48.500572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396576, 45.418980, 48.505180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016883, -0.106482, -0.994171,
		-0.049299, 0.993015, -0.107195,
		0.998641, 0.050822, 0.011516,
		44.696167, 45.434227, 48.508636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231674, 45.840599, 47.945107>,  <43.997120, 45.398651, 48.500572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231674, 45.840599, 47.945107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.539078, 45.592861, 48.009369>,  <44.723518, 45.444218, 48.047928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.539078, 45.592861, 48.009369>,  <44.231674, 45.840599, 47.945107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539078, 45.592861, 48.009369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122424, -0.104120, -0.987001,
		0.628021, 0.778185, -0.004195,
		0.768506, -0.619344, 0.160658,
		44.769630, 45.407059, 48.057568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612629, 46.050533, 47.498188>,  <44.231674, 45.840599, 47.945107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612629, 46.050533, 47.498188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.736504, 45.686520, 47.608414>,  <44.810829, 45.468113, 47.674549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.736504, 45.686520, 47.608414>,  <44.612629, 46.050533, 47.498188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736504, 45.686520, 47.608414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039074, -0.301751, -0.952585,
		0.950034, 0.284240, -0.129008,
		0.309691, -0.910029, 0.275568,
		44.829411, 45.413509, 47.691086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179424, 45.998878, 47.088028>,  <44.612629, 46.050533, 47.498188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179424, 45.998878, 47.088028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.029526, 45.649200, 47.211540>,  <44.939587, 45.439392, 47.285645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.029526, 45.649200, 47.211540>,  <45.179424, 45.998878, 47.088028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029526, 45.649200, 47.211540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157022, -0.268389, -0.950427,
		0.913735, -0.404651, -0.036691,
		-0.374744, -0.874199, 0.308776,
		44.917103, 45.386940, 47.304173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413055, 45.552212, 46.612503>,  <45.179424, 45.998878, 47.088028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413055, 45.552212, 46.612503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.124603, 45.331612, 46.780224>,  <44.951530, 45.199253, 46.880856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.124603, 45.331612, 46.780224>,  <45.413055, 45.552212, 46.612503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.124603, 45.331612, 46.780224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302495, -0.293846, -0.906725,
		0.623267, -0.780709, 0.045078,
		-0.721135, -0.551496, 0.419305,
		44.908264, 45.166164, 46.906017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506618, 44.811111, 46.296234>,  <45.413055, 45.552212, 46.612503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506618, 44.811111, 46.296234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.130630, 44.839634, 46.429718>,  <44.905037, 44.856747, 46.509808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.130630, 44.839634, 46.429718>,  <45.506618, 44.811111, 46.296234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130630, 44.839634, 46.429718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336312, -0.359259, -0.870533,
		0.057820, -0.930510, 0.361673,
		-0.939974, 0.071301, 0.333714,
		44.848637, 44.861023, 46.529831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.182442, 44.176819, 46.211063>,  <45.506618, 44.811111, 46.296234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.182442, 44.176819, 46.211063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.912117, 44.471626, 46.207306>,  <44.749924, 44.648510, 46.205051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.912117, 44.471626, 46.207306>,  <45.182442, 44.176819, 46.211063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912117, 44.471626, 46.207306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336022, -0.319404, -0.886042,
		-0.656027, -0.595640, 0.463510,
		-0.675810, 0.737017, -0.009390,
		44.709373, 44.692730, 46.204491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.671703, 43.208801, 33.213963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.940414, 43.496487, 33.284901>,  <45.101639, 43.669098, 33.327465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.940414, 43.496487, 33.284901>,  <44.671703, 43.208801, 33.213963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940414, 43.496487, 33.284901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276385, 0.465480, -0.840797,
		-0.687264, 0.515809, 0.511477,
		0.671773, 0.719214, 0.177346,
		45.141945, 43.712250, 33.338104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332172, 43.813793, 33.042164>,  <44.671703, 43.208801, 33.213963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332172, 43.813793, 33.042164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.724243, 43.891220, 33.025284>,  <44.959488, 43.937675, 33.015156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.724243, 43.891220, 33.025284>,  <44.332172, 43.813793, 33.042164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.724243, 43.891220, 33.025284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138356, 0.516346, -0.845130,
		-0.141797, 0.834218, 0.532892,
		0.980179, 0.193566, -0.042203,
		45.018295, 43.949291, 33.012623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403206, 44.529255, 32.964134>,  <44.332172, 43.813793, 33.042164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403206, 44.529255, 32.964134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.730034, 44.346558, 32.823402>,  <44.926132, 44.236938, 32.738964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.730034, 44.346558, 32.823402>,  <44.403206, 44.529255, 32.964134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730034, 44.346558, 32.823402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149538, 0.421465, -0.894431,
		0.556806, 0.783425, 0.276067,
		0.817071, -0.456742, -0.351826,
		44.975155, 44.209534, 32.717854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812660, 44.728794, 33.500668>,  <44.403206, 44.529255, 32.964134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812660, 44.728794, 33.500668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.518715, 44.830647, 33.249229>,  <43.342346, 44.891758, 33.098366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.518715, 44.830647, 33.249229>,  <43.812660, 44.728794, 33.500668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518715, 44.830647, 33.249229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557748, 0.300419, 0.773734,
		0.385861, 0.919190, -0.078747,
		-0.734866, 0.254633, -0.628597,
		43.298256, 44.907036, 33.060650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690643, 45.378357, 33.604900>,  <43.812660, 44.728794, 33.500668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690643, 45.378357, 33.604900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.364380, 45.202301, 33.454716>,  <43.168621, 45.096668, 33.364605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.364380, 45.202301, 33.454716>,  <43.690643, 45.378357, 33.604900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364380, 45.202301, 33.454716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479577, 0.151415, 0.864338,
		-0.323579, 0.885070, -0.334585,
		-0.815661, -0.440141, -0.375464,
		43.119682, 45.070259, 33.342075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118694, 45.855164, 33.705830>,  <43.690643, 45.378357, 33.604900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118694, 45.855164, 33.705830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949692, 45.493366, 33.682556>,  <42.848289, 45.276287, 33.668591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949692, 45.493366, 33.682556>,  <43.118694, 45.855164, 33.705830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949692, 45.493366, 33.682556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509957, 0.184162, 0.840255,
		-0.749287, 0.384685, -0.539061,
		-0.422508, -0.904490, -0.058183,
		42.822941, 45.222019, 33.665100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575359, 45.994926, 34.021271>,  <43.118694, 45.855164, 33.705830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575359, 45.994926, 34.021271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.577164, 45.594936, 34.023636>,  <42.578247, 45.354942, 34.025055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.577164, 45.594936, 34.023636>,  <42.575359, 45.994926, 34.021271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577164, 45.594936, 34.023636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441492, 0.003315, 0.897259,
		-0.897254, -0.006663, -0.441465,
		0.004515, -0.999972, 0.005916,
		42.578518, 45.294945, 34.025410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999355, 45.773235, 34.398586>,  <42.575359, 45.994926, 34.021271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999355, 45.773235, 34.398586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.165527, 45.409393, 34.396370>,  <42.265232, 45.191086, 34.395042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.165527, 45.409393, 34.396370>,  <41.999355, 45.773235, 34.398586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165527, 45.409393, 34.396370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346482, -0.163867, 0.923633,
		-0.841052, -0.381786, -0.383238,
		0.415430, -0.909609, -0.005538,
		42.290157, 45.136509, 34.394707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454906, 45.332321, 34.666821>,  <41.999355, 45.773235, 34.398586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454906, 45.332321, 34.666821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.802658, 45.144077, 34.727104>,  <42.011307, 45.031132, 34.763275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.802658, 45.144077, 34.727104>,  <41.454906, 45.332321, 34.666821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802658, 45.144077, 34.727104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261604, -0.179569, 0.948324,
		-0.419228, -0.863876, -0.279226,
		0.869374, -0.470610, 0.150713,
		42.063469, 45.002895, 34.772320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284138, 44.749306, 35.104538>,  <41.454906, 45.332321, 34.666821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284138, 44.749306, 35.104538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.673401, 44.827702, 35.152782>,  <41.906960, 44.874741, 35.181728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.673401, 44.827702, 35.152782>,  <41.284138, 44.749306, 35.104538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673401, 44.827702, 35.152782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099875, -0.112468, 0.988623,
		0.207326, -0.974135, -0.089875,
		0.973160, 0.195991, 0.120609,
		41.965347, 44.886497, 35.188965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543770, 44.167271, 35.560028>,  <41.284138, 44.749306, 35.104538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543770, 44.167271, 35.560028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.824051, 44.450466, 35.595310>,  <41.992218, 44.620384, 35.616478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.824051, 44.450466, 35.595310>,  <41.543770, 44.167271, 35.560028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824051, 44.450466, 35.595310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092297, -0.032640, 0.995196,
		0.707463, -0.705473, 0.042474,
		0.700698, 0.707985, 0.088205,
		42.034260, 44.662861, 35.621773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058933, 43.942604, 36.003624>,  <41.543770, 44.167271, 35.560028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058933, 43.942604, 36.003624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.098534, 44.340405, 35.989990>,  <42.122295, 44.579086, 35.981812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.098534, 44.340405, 35.989990>,  <42.058933, 43.942604, 36.003624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098534, 44.340405, 35.989990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044295, 0.038624, 0.998271,
		0.994101, -0.097319, 0.047875,
		0.099000, 0.994503, -0.034085,
		42.128235, 44.638756, 35.979763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649494, 44.192650, 36.438984>,  <42.058933, 43.942604, 36.003624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649494, 44.192650, 36.438984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370811, 44.477730, 36.406322>,  <42.203602, 44.648777, 36.386726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370811, 44.477730, 36.406322>,  <42.649494, 44.192650, 36.438984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370811, 44.477730, 36.406322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022632, 0.091927, 0.995508,
		0.717003, 0.695421, -0.047916,
		-0.696702, 0.712698, -0.081651,
		42.161800, 44.691540, 36.381828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765701, 44.495789, 37.061295>,  <42.649494, 44.192650, 36.438984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765701, 44.495789, 37.061295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.437019, 44.679482, 36.926296>,  <42.239811, 44.789700, 36.845299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.437019, 44.679482, 36.926296>,  <42.765701, 44.495789, 37.061295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437019, 44.679482, 36.926296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229161, 0.275965, 0.933450,
		0.521811, 0.844361, -0.121522,
		-0.821705, 0.459236, -0.337496,
		42.190510, 44.817253, 36.825047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685471, 45.005699, 37.497597>,  <42.765701, 44.495789, 37.061295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685471, 45.005699, 37.497597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.321480, 45.008018, 37.331749>,  <42.103085, 45.009411, 37.232243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.321480, 45.008018, 37.331749>,  <42.685471, 45.005699, 37.497597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321480, 45.008018, 37.331749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406774, 0.181577, 0.895302,
		0.080478, 0.983360, -0.162872,
		-0.909977, 0.005800, -0.414618,
		42.048485, 45.009758, 37.207363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501537, 45.650986, 37.566238>,  <42.685471, 45.005699, 37.497597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501537, 45.650986, 37.566238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.174843, 45.421844, 37.538612>,  <41.978825, 45.284359, 37.522038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.174843, 45.421844, 37.538612>,  <42.501537, 45.650986, 37.566238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174843, 45.421844, 37.538612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387585, 0.456000, 0.801151,
		-0.427451, 0.681101, -0.594464,
		-0.816740, -0.572857, -0.069067,
		41.929821, 45.249989, 37.517891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887383, 46.065689, 37.653954>,  <42.501537, 45.650986, 37.566238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887383, 46.065689, 37.653954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.737946, 45.705502, 37.743019>,  <41.648285, 45.489388, 37.796459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.737946, 45.705502, 37.743019>,  <41.887383, 46.065689, 37.653954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737946, 45.705502, 37.743019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265297, 0.333739, 0.904564,
		-0.888845, 0.278868, -0.363575,
		-0.373594, -0.900473, 0.222659,
		41.625866, 45.435360, 37.809818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159500, 46.179703, 37.954079>,  <41.887383, 46.065689, 37.653954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159500, 46.179703, 37.954079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.263603, 45.814449, 38.079594>,  <41.326065, 45.595299, 38.154903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.263603, 45.814449, 38.079594>,  <41.159500, 46.179703, 37.954079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263603, 45.814449, 38.079594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347526, 0.214616, 0.912779,
		-0.900829, -0.346604, -0.261481,
		0.260254, -0.913130, 0.313787,
		41.341679, 45.540512, 38.173729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631466, 46.038612, 38.424061>,  <41.159500, 46.179703, 37.954079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631466, 46.038612, 38.424061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.924026, 45.775787, 38.497078>,  <41.099564, 45.618092, 38.540890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.924026, 45.775787, 38.497078>,  <40.631466, 46.038612, 38.424061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924026, 45.775787, 38.497078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194953, 0.055050, 0.979267,
		-0.653492, -0.751820, -0.087834,
		0.731397, -0.657067, 0.182544,
		41.143444, 45.578667, 38.551842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281906, 45.530994, 38.857574>,  <40.631466, 46.038612, 38.424061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281906, 45.530994, 38.857574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.668854, 45.453667, 38.923084>,  <40.901024, 45.407272, 38.962391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.668854, 45.453667, 38.923084>,  <40.281906, 45.530994, 38.857574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668854, 45.453667, 38.923084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184511, -0.094506, 0.978276,
		-0.173644, -0.976573, -0.127093,
		0.967369, -0.193322, 0.163778,
		40.959064, 45.395672, 38.972218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288582, 45.012821, 39.405300>,  <40.281906, 45.530994, 38.857574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288582, 45.012821, 39.405300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.646774, 45.190750, 39.398922>,  <40.861691, 45.297508, 39.395096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.646774, 45.190750, 39.398922>,  <40.288582, 45.012821, 39.405300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646774, 45.190750, 39.398922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020863, -0.006156, 0.999763,
		0.444616, -0.895599, -0.014792,
		0.895478, 0.444820, -0.015948,
		40.915417, 45.324196, 39.394138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703312, 44.536304, 39.827686>,  <40.288582, 45.012821, 39.405300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703312, 44.536304, 39.827686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.877861, 44.896187, 39.823559>,  <40.982590, 45.112118, 39.821083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.877861, 44.896187, 39.823559>,  <40.703312, 44.536304, 39.827686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877861, 44.896187, 39.823559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162444, -0.067499, 0.984406,
		0.884979, -0.431249, -0.175606,
		0.436377, 0.899705, -0.010319,
		41.008774, 45.166100, 39.820461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322994, 44.404274, 40.182304>,  <40.703312, 44.536304, 39.827686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322994, 44.404274, 40.182304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296112, 44.803059, 40.198032>,  <41.279984, 45.042332, 40.207470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296112, 44.803059, 40.198032>,  <41.322994, 44.404274, 40.182304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296112, 44.803059, 40.198032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086319, -0.033449, 0.995706,
		0.993998, 0.070309, -0.083809,
		-0.067204, 0.996964, 0.039317,
		41.275951, 45.102146, 40.209827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820919, 44.535343, 40.639183>,  <41.322994, 44.404274, 40.182304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820919, 44.535343, 40.639183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.585800, 44.858551, 40.623184>,  <41.444729, 45.052475, 40.613583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.585800, 44.858551, 40.623184>,  <41.820919, 44.535343, 40.639183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585800, 44.858551, 40.623184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023617, 0.032283, 0.999200,
		0.808666, 0.588268, 0.000107,
		-0.587794, 0.808022, -0.039999,
		41.409462, 45.100956, 40.611183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147778, 44.971371, 41.072739>,  <41.820919, 44.535343, 40.639183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147778, 44.971371, 41.072739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.765388, 45.077694, 41.022987>,  <41.535957, 45.141487, 40.993137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.765388, 45.077694, 41.022987>,  <42.147778, 44.971371, 41.072739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765388, 45.077694, 41.022987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131906, -0.010574, 0.991206,
		0.262157, 0.963968, 0.045171,
		-0.955968, 0.265809, -0.124381,
		41.478600, 45.157436, 40.985672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089161, 45.614464, 41.548519>,  <42.147778, 44.971371, 41.072739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089161, 45.614464, 41.548519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.736298, 45.435810, 41.488770>,  <41.524578, 45.328617, 41.452919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.736298, 45.435810, 41.488770>,  <42.089161, 45.614464, 41.548519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736298, 45.435810, 41.488770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038440, -0.247827, 0.968041,
		-0.469383, 0.859707, 0.201453,
		-0.882157, -0.446638, -0.149373,
		41.471649, 45.301819, 41.443958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755432, 45.770115, 42.076031>,  <42.089161, 45.614464, 41.548519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755432, 45.770115, 42.076031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.513817, 45.480724, 41.942337>,  <41.368847, 45.307091, 41.862122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.513817, 45.480724, 41.942337>,  <41.755432, 45.770115, 42.076031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513817, 45.480724, 41.942337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266929, -0.211504, 0.940221,
		-0.750922, 0.657149, -0.065360,
		-0.604041, -0.723479, -0.334235,
		41.332603, 45.263680, 41.842068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131351, 45.957020, 42.344795>,  <41.755432, 45.770115, 42.076031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131351, 45.957020, 42.344795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.156044, 45.567238, 42.258415>,  <41.170860, 45.333370, 42.206585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.156044, 45.567238, 42.258415>,  <41.131351, 45.957020, 42.344795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156044, 45.567238, 42.258415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272775, -0.224601, 0.935494,
		-0.960095, 0.001154, -0.279671,
		0.061734, -0.974450, -0.215953,
		41.174564, 45.274902, 42.193630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548862, 45.567459, 42.684288>,  <41.131351, 45.957020, 42.344795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548862, 45.567459, 42.684288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.780930, 45.244297, 42.642933>,  <40.920170, 45.050400, 42.618118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.780930, 45.244297, 42.642933>,  <40.548862, 45.567459, 42.684288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780930, 45.244297, 42.642933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131585, -0.218238, 0.966984,
		-0.803798, -0.547409, -0.232923,
		0.580168, -0.807909, -0.103388,
		40.954979, 45.001926, 42.611916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301395, 45.026638, 43.037277>,  <40.548862, 45.567459, 42.684288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301395, 45.026638, 43.037277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.678207, 44.897770, 42.999783>,  <40.904293, 44.820450, 42.977283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.678207, 44.897770, 42.999783>,  <40.301395, 45.026638, 43.037277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678207, 44.897770, 42.999783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014974, -0.319468, 0.947479,
		-0.335207, -0.891145, -0.305772,
		0.942026, -0.322180, -0.093744,
		40.960815, 44.801121, 42.971661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359406, 44.365044, 43.436325>,  <40.301395, 45.026638, 43.037277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359406, 44.365044, 43.436325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749710, 44.444065, 43.398682>,  <40.983894, 44.491478, 43.376095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749710, 44.444065, 43.398682>,  <40.359406, 44.365044, 43.436325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749710, 44.444065, 43.398682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162981, -0.369131, 0.914975,
		0.146013, -0.908139, -0.392382,
		0.975765, 0.197549, -0.094111,
		41.042439, 44.503330, 43.370449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703949, 43.721367, 43.700809>,  <40.359406, 44.365044, 43.436325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703949, 43.721367, 43.700809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.954704, 44.032963, 43.706268>,  <41.105156, 44.219921, 43.709545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.954704, 44.032963, 43.706268>,  <40.703949, 43.721367, 43.700809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954704, 44.032963, 43.706268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323881, -0.276494, 0.904794,
		0.708603, -0.562779, -0.425631,
		0.626883, 0.778993, 0.013651,
		41.142769, 44.266663, 43.710365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.688534, 43.509521, 43.874828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652580, 43.901821, 43.944183>,  <41.631008, 44.137199, 43.985794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652580, 43.901821, 43.944183>,  <41.688534, 43.509521, 43.874828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652580, 43.901821, 43.944183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301829, -0.139078, 0.943163,
		0.949116, 0.137103, -0.283517,
		-0.089880, 0.980745, 0.173383,
		41.625618, 44.196045, 43.996197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389065, 43.760010, 44.220257>,  <41.688534, 43.509521, 43.874828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389065, 43.760010, 44.220257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084244, 44.002026, 44.312523>,  <41.901352, 44.147236, 44.367882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084244, 44.002026, 44.312523>,  <42.389065, 43.760010, 44.220257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084244, 44.002026, 44.312523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347455, 0.081486, 0.934149,
		0.546402, 0.792014, -0.272321,
		-0.762049, 0.605041, 0.230665,
		41.855629, 44.183537, 44.381721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695015, 44.259293, 44.724422>,  <42.389065, 43.760010, 44.220257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695015, 44.259293, 44.724422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296928, 44.246838, 44.761482>,  <42.058079, 44.239365, 44.783718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296928, 44.246838, 44.761482>,  <42.695015, 44.259293, 44.724422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296928, 44.246838, 44.761482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093537, -0.028365, 0.995212,
		-0.028365, 0.999112, 0.031142,
		-0.995212, -0.031142, 0.092650,
		41.998363, 44.237495, 44.789276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232895, 44.621510, 44.586155>,  <42.695015, 44.259293, 44.724422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232895, 44.621510, 44.586155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608215, 44.531132, 44.690868>,  <43.833408, 44.476906, 44.753696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608215, 44.531132, 44.690868>,  <43.232895, 44.621510, 44.586155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608215, 44.531132, 44.690868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268526, -0.000939, -0.963272,
		0.217893, 0.974139, 0.059791,
		0.938305, -0.225946, 0.261787,
		43.889706, 44.463348, 44.769405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600327, 45.095551, 44.254517>,  <43.232895, 44.621510, 44.586155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600327, 45.095551, 44.254517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851112, 44.799351, 44.351326>,  <44.001583, 44.621632, 44.409412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851112, 44.799351, 44.351326>,  <43.600327, 45.095551, 44.254517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851112, 44.799351, 44.351326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312565, -0.045464, -0.948808,
		0.713599, 0.670513, 0.202951,
		0.626961, -0.740503, 0.242022,
		44.039200, 44.577198, 44.423931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292721, 45.300007, 43.858673>,  <43.600327, 45.095551, 44.254517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292721, 45.300007, 43.858673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290390, 44.908375, 43.940037>,  <44.288990, 44.673397, 43.988853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290390, 44.908375, 43.940037>,  <44.292721, 45.300007, 43.858673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290390, 44.908375, 43.940037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391958, -0.189371, -0.900282,
		0.919965, 0.074479, 0.384860,
		-0.005829, -0.979077, 0.203407,
		44.288643, 44.614651, 44.001060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.004494, 44.989902, 43.740429>,  <44.292721, 45.300007, 43.858673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.004494, 44.989902, 43.740429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753113, 44.679466, 43.719536>,  <44.602283, 44.493206, 43.707001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753113, 44.679466, 43.719536>,  <45.004494, 44.989902, 43.740429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753113, 44.679466, 43.719536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507699, -0.358386, -0.783455,
		0.589311, -0.518886, 0.619250,
		-0.628455, -0.776090, -0.052237,
		44.564575, 44.446640, 43.703865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.450439, 44.332916, 43.684795>,  <45.004494, 44.989902, 43.740429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.450439, 44.332916, 43.684795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090805, 44.250214, 43.530449>,  <44.875023, 44.200592, 43.437843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090805, 44.250214, 43.530449>,  <45.450439, 44.332916, 43.684795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090805, 44.250214, 43.530449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421794, -0.173220, -0.889991,
		0.117175, -0.962936, 0.242950,
		-0.899088, -0.206760, -0.385863,
		44.821079, 44.188187, 43.414688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547001, 43.699341, 43.260708>,  <45.450439, 44.332916, 43.684795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547001, 43.699341, 43.260708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196396, 43.840820, 43.130093>,  <44.986034, 43.925709, 43.051723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196396, 43.840820, 43.130093>,  <45.547001, 43.699341, 43.260708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.196396, 43.840820, 43.130093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222954, -0.302915, -0.926571,
		-0.426638, -0.884953, 0.186651,
		-0.876511, 0.353696, -0.326539,
		44.933441, 43.946930, 43.032131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125504, 43.069996, 42.925552>,  <45.547001, 43.699341, 43.260708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125504, 43.069996, 42.925552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010918, 43.423500, 42.777546>,  <44.942165, 43.635601, 42.688744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010918, 43.423500, 42.777546>,  <45.125504, 43.069996, 42.925552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010918, 43.423500, 42.777546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286311, -0.289587, -0.913327,
		-0.914311, -0.367573, -0.170073,
		-0.286463, 0.883759, -0.370013,
		44.924980, 43.688629, 42.666542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.917400, 42.877014, 42.281807>,  <45.125504, 43.069996, 42.925552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.917400, 42.877014, 42.281807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930168, 43.276146, 42.258747>,  <44.937828, 43.515625, 42.244911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930168, 43.276146, 42.258747>,  <44.917400, 42.877014, 42.281807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930168, 43.276146, 42.258747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073871, -0.059877, -0.995469,
		-0.996757, 0.027515, -0.075622,
		0.031919, 0.997827, -0.057650,
		44.939743, 43.575493, 42.241451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462357, 43.028027, 41.663223>,  <44.917400, 42.877014, 42.281807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462357, 43.028027, 41.663223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693077, 43.347900, 41.729939>,  <44.831509, 43.539825, 41.769966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693077, 43.347900, 41.729939>,  <44.462357, 43.028027, 41.663223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693077, 43.347900, 41.729939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155441, 0.092997, -0.983458,
		-0.801962, 0.593181, -0.070663,
		0.576797, 0.799680, 0.166784,
		44.866116, 43.587803, 41.779972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105988, 43.558861, 41.247219>,  <44.462357, 43.028027, 41.663223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105988, 43.558861, 41.247219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482811, 43.681000, 41.302773>,  <44.708904, 43.754284, 41.336105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482811, 43.681000, 41.302773>,  <44.105988, 43.558861, 41.247219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482811, 43.681000, 41.302773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077374, 0.205061, -0.975686,
		-0.326403, 0.929900, 0.169553,
		0.942059, 0.305347, 0.138883,
		44.765430, 43.772606, 41.344437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119984, 44.174778, 40.945354>,  <44.105988, 43.558861, 41.247219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119984, 44.174778, 40.945354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505882, 44.070602, 40.960476>,  <44.737423, 44.008099, 40.969547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505882, 44.070602, 40.960476>,  <44.119984, 44.174778, 40.945354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505882, 44.070602, 40.960476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085782, 0.175401, -0.980753,
		0.248794, 0.949425, 0.191559,
		0.964750, -0.260437, 0.037805,
		44.795307, 43.992470, 40.971817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332882, 44.757195, 40.592442>,  <44.119984, 44.174778, 40.945354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332882, 44.757195, 40.592442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602036, 44.461315, 40.589096>,  <44.763527, 44.283787, 40.587090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602036, 44.461315, 40.589096>,  <44.332882, 44.757195, 40.592442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602036, 44.461315, 40.589096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015389, -0.002699, -0.999878,
		0.739586, 0.672932, -0.013199,
		0.672886, -0.739699, -0.008360,
		44.803902, 44.239407, 40.586590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883858, 45.144642, 40.450993>,  <44.332882, 44.757195, 40.592442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883858, 45.144642, 40.450993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970734, 44.773102, 40.330948>,  <45.022858, 44.550179, 40.258923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970734, 44.773102, 40.330948>,  <44.883858, 45.144642, 40.450993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970734, 44.773102, 40.330948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205536, 0.344075, -0.916170,
		0.954245, 0.137299, 0.265641,
		0.217190, -0.928850, -0.300112,
		45.035889, 44.494446, 40.240913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260963, 45.266312, 39.832432>,  <44.883858, 45.144642, 40.450993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260963, 45.266312, 39.832432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194405, 44.873516, 39.796646>,  <45.154469, 44.637836, 39.775177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194405, 44.873516, 39.796646>,  <45.260963, 45.266312, 39.832432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194405, 44.873516, 39.796646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327744, 0.030490, -0.944275,
		0.929999, -0.186441, 0.316769,
		-0.166393, -0.981993, -0.089461,
		45.144485, 44.578918, 39.769810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813599, 45.024967, 39.410557>,  <45.260963, 45.266312, 39.832432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813599, 45.024967, 39.410557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529747, 44.745667, 39.372875>,  <45.359436, 44.578087, 39.350266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529747, 44.745667, 39.372875>,  <45.813599, 45.024967, 39.410557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.529747, 44.745667, 39.372875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257736, -0.132821, -0.957043,
		0.655742, -0.703426, 0.274218,
		-0.709630, -0.698249, -0.094202,
		45.316856, 44.536194, 39.344616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101841, 44.390717, 38.929985>,  <45.813599, 45.024967, 39.410557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101841, 44.390717, 38.929985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702599, 44.366241, 38.932812>,  <45.463055, 44.351555, 38.934505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702599, 44.366241, 38.932812>,  <46.101841, 44.390717, 38.929985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702599, 44.366241, 38.932812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003894, -0.051752, -0.998652,
		0.061470, -0.996784, 0.051415,
		-0.998101, -0.061187, 0.007062,
		45.403168, 44.347885, 38.934929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.035786, 43.781784, 38.635303>,  <46.101841, 44.390717, 38.929985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.035786, 43.781784, 38.635303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.711121, 44.010094, 38.585632>,  <45.516323, 44.147079, 38.555832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.711121, 44.010094, 38.585632>,  <46.035786, 43.781784, 38.635303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711121, 44.010094, 38.585632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072674, -0.112252, -0.991019,
		-0.579590, -0.813396, 0.049630,
		-0.811661, 0.570777, -0.124173,
		45.467621, 44.181328, 38.548382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565311, 43.395847, 38.206554>,  <46.035786, 43.781784, 38.635303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565311, 43.395847, 38.206554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425095, 43.764061, 38.137566>,  <45.340965, 43.984989, 38.096172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425095, 43.764061, 38.137566>,  <45.565311, 43.395847, 38.206554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425095, 43.764061, 38.137566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092625, -0.217329, -0.971694,
		-0.931957, -0.324642, 0.161446,
		-0.350539, 0.920530, -0.172471,
		45.319931, 44.040218, 38.085823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957462, 43.314228, 37.777710>,  <45.565311, 43.395847, 38.206554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957462, 43.314228, 37.777710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090981, 43.685192, 37.710197>,  <45.171093, 43.907772, 37.669689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090981, 43.685192, 37.710197>,  <44.957462, 43.314228, 37.777710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090981, 43.685192, 37.710197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156402, -0.122078, -0.980120,
		-0.929579, 0.353560, 0.104300,
		0.333799, 0.927412, -0.168779,
		45.191120, 43.963417, 37.659565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410671, 43.636383, 37.367100>,  <44.957462, 43.314228, 37.777710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.410671, 43.636383, 37.367100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732162, 43.866779, 37.307415>,  <44.925056, 44.005016, 37.271606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732162, 43.866779, 37.307415>,  <44.410671, 43.636383, 37.367100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732162, 43.866779, 37.307415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028418, -0.213322, -0.976569,
		-0.594323, 0.789132, -0.155083,
		0.803725, 0.575990, -0.149208,
		44.973278, 44.039577, 37.262653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277863, 43.943214, 36.773617>,  <44.410671, 43.636383, 37.367100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277863, 43.943214, 36.773617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660370, 44.052280, 36.815960>,  <44.889874, 44.117722, 36.841366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660370, 44.052280, 36.815960>,  <44.277863, 43.943214, 36.773617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660370, 44.052280, 36.815960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109174, 0.003034, -0.994018,
		-0.271357, 0.962104, -0.026867,
		0.956267, 0.272667, 0.105860,
		44.947250, 44.134079, 36.847717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391037, 44.555042, 36.312714>,  <44.277863, 43.943214, 36.773617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391037, 44.555042, 36.312714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.729996, 44.364586, 36.406696>,  <44.933372, 44.250313, 36.463085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.729996, 44.364586, 36.406696>,  <44.391037, 44.555042, 36.312714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729996, 44.364586, 36.406696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247073, -0.038062, -0.968249,
		0.469968, 0.878544, 0.085388,
		0.847399, -0.476143, 0.234953,
		44.984215, 44.221745, 36.477180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848866, 44.873745, 35.874641>,  <44.391037, 44.555042, 36.312714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848866, 44.873745, 35.874641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020012, 44.533958, 35.998150>,  <45.122700, 44.330086, 36.072254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020012, 44.533958, 35.998150>,  <44.848866, 44.873745, 35.874641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020012, 44.533958, 35.998150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340156, -0.165168, -0.925750,
		0.837394, 0.501123, 0.218283,
		0.427862, -0.849467, 0.308771,
		45.148369, 44.279118, 36.090782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532482, 44.816795, 35.579372>,  <44.848866, 44.873745, 35.874641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532482, 44.816795, 35.579372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458961, 44.426510, 35.627033>,  <45.414848, 44.192337, 35.655628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458961, 44.426510, 35.627033>,  <45.532482, 44.816795, 35.579372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458961, 44.426510, 35.627033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307883, -0.172262, -0.935700,
		0.933502, -0.135296, 0.332068,
		-0.183799, -0.975715, 0.119152,
		45.403820, 44.133797, 35.662777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064205, 44.526806, 35.177452>,  <45.532482, 44.816795, 35.579372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064205, 44.526806, 35.177452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785072, 44.246529, 35.236866>,  <45.617592, 44.078362, 35.272514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785072, 44.246529, 35.236866>,  <46.064205, 44.526806, 35.177452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785072, 44.246529, 35.236866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236660, -0.421286, -0.875506,
		0.676033, -0.575806, 0.459813,
		-0.697834, -0.700689, 0.148533,
		45.575722, 44.036324, 35.281425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303719, 43.839363, 34.900799>,  <46.064205, 44.526806, 35.177452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303719, 43.839363, 34.900799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903740, 43.840141, 34.904854>,  <45.663754, 43.840607, 34.907288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903740, 43.840141, 34.904854>,  <46.303719, 43.839363, 34.900799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903740, 43.840141, 34.904854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010267, -0.292468, -0.956220,
		0.001110, -0.956273, 0.292472,
		-0.999947, 0.001942, 0.010142,
		45.603756, 43.840725, 34.907898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118126, 43.195293, 34.645088>,  <46.303719, 43.839363, 34.900799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118126, 43.195293, 34.645088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805367, 43.439766, 34.595951>,  <45.617710, 43.586449, 34.566467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805367, 43.439766, 34.595951>,  <46.118126, 43.195293, 34.645088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.805367, 43.439766, 34.595951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143682, -0.368433, -0.918484,
		-0.606618, -0.700513, 0.375894,
		-0.781901, 0.611178, -0.122847,
		45.570797, 43.623119, 34.559097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709003, 42.805904, 34.249020>,  <46.118126, 43.195293, 34.645088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709003, 42.805904, 34.249020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.581970, 43.184132, 34.220627>,  <45.505749, 43.411068, 34.203590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.581970, 43.184132, 34.220627>,  <45.709003, 42.805904, 34.249020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581970, 43.184132, 34.220627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250580, -0.155884, -0.955463,
		-0.914523, -0.285651, 0.286447,
		-0.317582, 0.945570, -0.070981,
		45.486694, 43.467804, 34.199333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064842, 42.876694, 33.864590>,  <45.709003, 42.805904, 34.249020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064842, 42.876694, 33.864590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175987, 43.259823, 33.835304>,  <45.242676, 43.489700, 33.817734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175987, 43.259823, 33.835304>,  <45.064842, 42.876694, 33.864590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175987, 43.259823, 33.835304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227202, -0.008522, -0.973810,
		-0.933365, 0.287222, 0.215252,
		0.277865, 0.957826, -0.073212,
		45.259346, 43.547173, 33.813339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.434151, 43.776974, 46.114201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.329918, 44.158966, 46.057491>,  <44.267380, 44.388161, 46.023464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.329918, 44.158966, 46.057491>,  <44.434151, 43.776974, 46.114201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329918, 44.158966, 46.057491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161730, -0.187950, -0.968772,
		-0.951809, -0.229517, 0.203426,
		-0.260583, 0.954985, -0.141773,
		44.251743, 44.445461, 46.014961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721855, 43.762196, 45.809685>,  <44.434151, 43.776974, 46.114201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721855, 43.762196, 45.809685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.905991, 44.106464, 45.722660>,  <44.016472, 44.313026, 45.670444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.905991, 44.106464, 45.722660>,  <43.721855, 43.762196, 45.809685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905991, 44.106464, 45.722660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193051, -0.142158, -0.970836,
		-0.866501, 0.488910, 0.100713,
		0.460335, 0.860673, -0.217565,
		44.044090, 44.364666, 45.657391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191105, 44.146126, 45.351032>,  <43.721855, 43.762196, 45.809685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191105, 44.146126, 45.351032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.565315, 44.277397, 45.298752>,  <43.789841, 44.356159, 45.267384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.565315, 44.277397, 45.298752>,  <43.191105, 44.146126, 45.351032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565315, 44.277397, 45.298752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054148, -0.232391, -0.971114,
		-0.349073, 0.915583, -0.199638,
		0.935530, 0.328179, -0.130698,
		43.845974, 44.375851, 45.259541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505451, 44.551399, 45.388824>,  <43.191105, 44.146126, 45.351032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505451, 44.551399, 45.388824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.135307, 44.412422, 45.328178>,  <41.913219, 44.329037, 45.291790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.135307, 44.412422, 45.328178>,  <42.505451, 44.551399, 45.388824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135307, 44.412422, 45.328178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152714, -0.024385, 0.987970,
		-0.346961, 0.937384, -0.030495,
		-0.925363, -0.347444, -0.151612,
		41.857697, 44.308189, 45.282696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044521, 44.986641, 45.704906>,  <42.505451, 44.551399, 45.388824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044521, 44.986641, 45.704906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.841904, 44.642010, 45.691624>,  <41.720333, 44.435230, 45.683655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.841904, 44.642010, 45.691624>,  <42.044521, 44.986641, 45.704906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841904, 44.642010, 45.691624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179213, 0.067534, 0.981490,
		-0.843383, 0.503120, -0.188614,
		-0.506545, -0.861574, -0.033209,
		41.689941, 44.383537, 45.681660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416370, 45.111794, 46.082405>,  <42.044521, 44.986641, 45.704906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416370, 45.111794, 46.082405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.455246, 44.714085, 46.064613>,  <41.478573, 44.475460, 46.053940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.455246, 44.714085, 46.064613>,  <41.416370, 45.111794, 46.082405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455246, 44.714085, 46.064613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283434, -0.070491, 0.956398,
		-0.954054, -0.080348, -0.288661,
		0.097193, -0.994271, -0.044478,
		41.484406, 44.415802, 46.051270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843384, 44.856617, 46.420029>,  <41.416370, 45.111794, 46.082405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843384, 44.856617, 46.420029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.078468, 44.533085, 46.427891>,  <41.219517, 44.338966, 46.432610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.078468, 44.533085, 46.427891>,  <40.843384, 44.856617, 46.420029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078468, 44.533085, 46.427891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361330, -0.240655, 0.900847,
		-0.723907, -0.536536, -0.433691,
		0.587707, -0.808835, 0.019655,
		41.254780, 44.290436, 46.433788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486809, 44.276962, 46.750404>,  <40.843384, 44.856617, 46.420029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486809, 44.276962, 46.750404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.877258, 44.206581, 46.801357>,  <41.111526, 44.164352, 46.831928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.877258, 44.206581, 46.801357>,  <40.486809, 44.276962, 46.750404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877258, 44.206581, 46.801357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171365, -0.263370, 0.949352,
		-0.133489, -0.948513, -0.287233,
		0.976122, -0.175950, 0.127385,
		41.170094, 44.153797, 46.839573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453125, 43.706120, 47.181694>,  <40.486809, 44.276962, 46.750404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453125, 43.706120, 47.181694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.802277, 43.894810, 47.231575>,  <41.011768, 44.008022, 47.261505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.802277, 43.894810, 47.231575>,  <40.453125, 43.706120, 47.181694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802277, 43.894810, 47.231575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083434, -0.107516, 0.990696,
		0.480742, -0.875167, -0.054491,
		0.872884, 0.471723, 0.124706,
		41.064140, 44.036327, 47.268986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879955, 43.319790, 47.734509>,  <40.453125, 43.706120, 47.181694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879955, 43.319790, 47.734509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.096649, 43.655861, 47.744549>,  <41.226665, 43.857502, 47.750572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.096649, 43.655861, 47.744549>,  <40.879955, 43.319790, 47.734509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096649, 43.655861, 47.744549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288420, -0.213847, 0.933319,
		0.789518, -0.498371, -0.358171,
		0.541733, 0.840176, 0.025096,
		41.259171, 43.907913, 47.752079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461178, 43.162983, 48.082958>,  <40.879955, 43.319790, 47.734509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461178, 43.162983, 48.082958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.389343, 43.555561, 48.109829>,  <41.346241, 43.791107, 48.125954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.389343, 43.555561, 48.109829>,  <41.461178, 43.162983, 48.082958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389343, 43.555561, 48.109829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080194, -0.053457, 0.995345,
		0.980467, 0.184141, -0.069105,
		-0.179590, 0.981445, 0.067180,
		41.335464, 43.849995, 48.129982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930382, 43.419151, 48.650005>,  <41.461178, 43.162983, 48.082958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930382, 43.419151, 48.650005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.656815, 43.708656, 48.613289>,  <41.492676, 43.882359, 48.591259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.656815, 43.708656, 48.613289>,  <41.930382, 43.419151, 48.650005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656815, 43.708656, 48.613289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014859, 0.111972, 0.993600,
		0.729406, 0.680906, -0.065825,
		-0.683919, 0.723760, -0.091791,
		41.451637, 43.925785, 48.585751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133053, 43.934113, 49.076199>,  <41.930382, 43.419151, 48.650005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133053, 43.934113, 49.076199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.751648, 44.039520, 49.017731>,  <41.522804, 44.102764, 48.982651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.751648, 44.039520, 49.017731>,  <42.133053, 43.934113, 49.076199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751648, 44.039520, 49.017731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085777, 0.227632, 0.969962,
		0.288877, 0.937412, -0.194447,
		-0.953516, 0.263521, -0.146166,
		41.465591, 44.118576, 48.973881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113609, 44.515324, 49.443680>,  <42.133053, 43.934113, 49.076199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113609, 44.515324, 49.443680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.727318, 44.417679, 49.408409>,  <41.495544, 44.359093, 49.387245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.727318, 44.417679, 49.408409>,  <42.113609, 44.515324, 49.443680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727318, 44.417679, 49.408409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216465, 0.570063, 0.792573,
		-0.143212, 0.784498, -0.603368,
		-0.965729, -0.244114, -0.088177,
		41.437599, 44.344444, 49.381958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815392, 45.158134, 49.513870>,  <42.113609, 44.515324, 49.443680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815392, 45.158134, 49.513870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.501373, 44.922024, 49.588985>,  <41.312962, 44.780357, 49.634056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.501373, 44.922024, 49.588985>,  <41.815392, 45.158134, 49.513870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501373, 44.922024, 49.588985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233059, 0.562359, 0.793370,
		-0.573917, 0.579069, -0.579050,
		-0.785050, -0.590281, 0.187790,
		41.265858, 44.744938, 49.645321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296638, 45.671913, 49.645145>,  <41.815392, 45.158134, 49.513870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296638, 45.671913, 49.645145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200439, 45.322460, 49.814342>,  <41.142719, 45.112789, 49.915863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200439, 45.322460, 49.814342>,  <41.296638, 45.671913, 49.645145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200439, 45.322460, 49.814342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511420, 0.484439, 0.709767,
		-0.824991, -0.045630, -0.563300,
		-0.240498, -0.873634, 0.422994,
		41.128288, 45.060371, 49.941242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550991, 45.745438, 49.820431>,  <41.296638, 45.671913, 49.645145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550991, 45.745438, 49.820431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.705421, 45.430870, 50.013302>,  <40.798080, 45.242130, 50.129025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.705421, 45.430870, 50.013302>,  <40.550991, 45.745438, 49.820431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705421, 45.430870, 50.013302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573120, 0.205092, 0.793392,
		-0.722828, -0.582654, -0.371530,
		0.386075, -0.786417, 0.482177,
		40.821243, 45.194946, 50.157955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960167, 45.328693, 50.087410>,  <40.550991, 45.745438, 49.820431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960167, 45.328693, 50.087410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.274574, 45.219925, 50.309486>,  <40.463219, 45.154663, 50.442734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.274574, 45.219925, 50.309486>,  <39.960167, 45.328693, 50.087410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274574, 45.219925, 50.309486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537842, 0.141996, 0.831001,
		-0.304802, -0.951786, -0.034640,
		0.786016, -0.271922, 0.555191,
		40.510380, 45.138348, 50.476044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700409, 44.936806, 50.699909>,  <39.960167, 45.328693, 50.087410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700409, 44.936806, 50.699909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068687, 45.052250, 50.805000>,  <40.289654, 45.121517, 50.868053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068687, 45.052250, 50.805000>,  <39.700409, 44.936806, 50.699909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068687, 45.052250, 50.805000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330213, 0.217208, 0.918575,
		0.208029, -0.932488, 0.295280,
		0.920697, 0.288595, 0.262734,
		40.344894, 45.138832, 50.883820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847137, 44.654572, 51.425426>,  <39.700409, 44.936806, 50.699909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847137, 44.654572, 51.425426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.118469, 44.945736, 51.385418>,  <40.281269, 45.120434, 51.361412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.118469, 44.945736, 51.385418>,  <39.847137, 44.654572, 51.425426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118469, 44.945736, 51.385418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281938, 0.383571, 0.879423,
		0.678511, -0.568341, 0.465416,
		0.678332, 0.727916, -0.100020,
		40.321968, 45.164112, 51.355412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213181, 44.667862, 52.077961>,  <39.847137, 44.654572, 51.425426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213181, 44.667862, 52.077961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.259384, 45.027832, 51.909775>,  <40.287106, 45.243813, 51.808861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.259384, 45.027832, 51.909775>,  <40.213181, 44.667862, 52.077961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259384, 45.027832, 51.909775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296915, 0.435229, 0.849952,
		0.947892, 0.026669, 0.317473,
		0.115506, 0.899925, -0.420468,
		40.294037, 45.297810, 51.783634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677380, 44.919754, 52.484177>,  <40.213181, 44.667862, 52.077961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677380, 44.919754, 52.484177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.461479, 45.199249, 52.296371>,  <40.331940, 45.366947, 52.183689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.461479, 45.199249, 52.296371>,  <40.677380, 44.919754, 52.484177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461479, 45.199249, 52.296371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209438, 0.428732, 0.878820,
		0.815356, 0.572676, -0.085066,
		-0.539750, 0.698735, -0.469509,
		40.299553, 45.408871, 52.155518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800240, 45.529877, 52.860474>,  <40.677380, 44.919754, 52.484177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800240, 45.529877, 52.860474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.476418, 45.661316, 52.665894>,  <40.282124, 45.740181, 52.549145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.476418, 45.661316, 52.665894>,  <40.800240, 45.529877, 52.860474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476418, 45.661316, 52.665894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311863, 0.461312, 0.830622,
		0.497351, 0.824143, -0.270981,
		-0.809558, 0.328601, -0.486454,
		40.233551, 45.759895, 52.519958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758987, 46.176758, 53.062630>,  <40.800240, 45.529877, 52.860474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758987, 46.176758, 53.062630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.403610, 46.078041, 52.907837>,  <40.190384, 46.018810, 52.814960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.403610, 46.078041, 52.907837>,  <40.758987, 46.176758, 53.062630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403610, 46.078041, 52.907837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449974, 0.302101, 0.840392,
		-0.090497, 0.920775, -0.379451,
		-0.888445, -0.246796, -0.386985,
		40.137077, 46.004002, 52.791740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289288, 46.782585, 53.127544>,  <40.758987, 46.176758, 53.062630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289288, 46.782585, 53.127544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.023674, 46.486725, 53.083775>,  <39.864304, 46.309208, 53.057514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.023674, 46.486725, 53.083775>,  <40.289288, 46.782585, 53.127544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023674, 46.486725, 53.083775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457172, 0.285843, 0.842192,
		-0.591648, 0.609273, -0.527957,
		-0.664038, -0.739648, -0.109425,
		39.824463, 46.264832, 53.050945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546665, 47.001450, 53.294834>,  <40.289288, 46.782585, 53.127544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546665, 47.001450, 53.294834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468750, 46.610245, 53.324615>,  <39.422001, 46.375523, 53.342484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468750, 46.610245, 53.324615>,  <39.546665, 47.001450, 53.294834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468750, 46.610245, 53.324615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468069, 0.159391, 0.869198,
		-0.861956, 0.134463, -0.488827,
		-0.194790, -0.978015, 0.074450,
		39.410313, 46.316841, 53.346951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788349, 46.940289, 53.459862>,  <39.546665, 47.001450, 53.294834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788349, 46.940289, 53.459862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992653, 46.612663, 53.564369>,  <39.115234, 46.416088, 53.627075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992653, 46.612663, 53.564369>,  <38.788349, 46.940289, 53.459862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992653, 46.612663, 53.564369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278476, 0.129898, 0.951618,
		-0.813376, -0.558801, -0.161744,
		0.510755, -0.819065, 0.261268,
		39.145878, 46.366943, 53.642750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296928, 46.514275, 53.801571>,  <38.788349, 46.940289, 53.459862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296928, 46.514275, 53.801571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648987, 46.393532, 53.948120>,  <38.860222, 46.321087, 54.036049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648987, 46.393532, 53.948120>,  <38.296928, 46.514275, 53.801571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648987, 46.393532, 53.948120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289740, 0.269747, 0.918307,
		-0.376029, -0.914394, 0.149954,
		0.880144, -0.301862, 0.366369,
		38.913029, 46.302975, 54.058029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155029, 46.038242, 54.361656>,  <38.296928, 46.514275, 53.801571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155029, 46.038242, 54.361656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.523445, 46.176086, 54.434235>,  <38.744495, 46.258793, 54.477783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.523445, 46.176086, 54.434235>,  <38.155029, 46.038242, 54.361656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523445, 46.176086, 54.434235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263257, 0.207543, 0.942137,
		0.287011, -0.915516, 0.281877,
		0.921043, 0.344610, 0.181449,
		38.799759, 46.279469, 54.488670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299229, 45.802650, 55.010777>,  <38.155029, 46.038242, 54.361656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299229, 45.802650, 55.010777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.593132, 46.069839, 54.963547>,  <38.769474, 46.230152, 54.935207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.593132, 46.069839, 54.963547>,  <38.299229, 45.802650, 55.010777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593132, 46.069839, 54.963547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066776, 0.244448, 0.967360,
		0.675031, -0.702894, 0.224215,
		0.734761, 0.667971, -0.118074,
		38.813560, 46.270229, 54.928123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770157, 45.739468, 55.544971>,  <38.299229, 45.802650, 55.010777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770157, 45.739468, 55.544971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.854073, 46.120506, 55.456833>,  <38.904423, 46.349129, 55.403950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.854073, 46.120506, 55.456833>,  <38.770157, 45.739468, 55.544971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854073, 46.120506, 55.456833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040482, 0.233626, 0.971483,
		0.976909, -0.194882, 0.087574,
		0.209785, 0.952596, -0.220342,
		38.917007, 46.406284, 55.390732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265591, 46.044891, 56.051853>,  <38.770157, 45.739468, 55.544971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265591, 46.044891, 56.051853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.137329, 46.382614, 55.880119>,  <39.060371, 46.585247, 55.777081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.137329, 46.382614, 55.880119>,  <39.265591, 46.044891, 56.051853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137329, 46.382614, 55.880119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103422, 0.481765, 0.870176,
		0.941534, 0.234621, -0.241799,
		-0.320652, 0.844308, -0.429333,
		39.041134, 46.635906, 55.751320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682438, 46.534382, 56.403645>,  <39.265591, 46.044891, 56.051853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682438, 46.534382, 56.403645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.392380, 46.755547, 56.239471>,  <39.218346, 46.888245, 56.140968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.392380, 46.755547, 56.239471>,  <39.682438, 46.534382, 56.403645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392380, 46.755547, 56.239471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139547, 0.465674, 0.873885,
		0.674307, 0.690968, -0.260524,
		-0.725146, 0.552911, -0.410430,
		39.174835, 46.921421, 56.116341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804691, 47.248379, 56.652214>,  <39.682438, 46.534382, 56.403645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804691, 47.248379, 56.652214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.419899, 47.223557, 56.545826>,  <39.189022, 47.208664, 56.481995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.419899, 47.223557, 56.545826>,  <39.804691, 47.248379, 56.652214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419899, 47.223557, 56.545826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263472, 0.467333, 0.843909,
		0.071928, 0.881901, -0.465916,
		-0.961982, -0.062055, -0.265970,
		39.131306, 47.204941, 56.466034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627434, 47.981777, 56.703434>,  <39.804691, 47.248379, 56.652214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627434, 47.981777, 56.703434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323441, 47.724380, 56.739967>,  <39.141045, 47.569942, 56.761887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323441, 47.724380, 56.739967>,  <39.627434, 47.981777, 56.703434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323441, 47.724380, 56.739967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065006, 0.215081, 0.974430,
		-0.646684, 0.734613, -0.205289,
		-0.759983, -0.643493, 0.091335,
		39.095444, 47.531334, 56.767368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
