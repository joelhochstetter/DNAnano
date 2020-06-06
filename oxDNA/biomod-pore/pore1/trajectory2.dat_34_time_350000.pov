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
	<40.884563, 42.839699, 45.401833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139839, 42.821190, 45.709229>,  <41.293003, 42.810085, 45.893665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139839, 42.821190, 45.709229>,  <40.884563, 42.839699, 45.401833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139839, 42.821190, 45.709229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455734, -0.827222, 0.328650,
		0.620502, -0.559966, -0.549013,
		0.638188, -0.046276, 0.768488,
		41.331295, 42.807308, 45.939774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073921, 42.170868, 45.534760>,  <40.884563, 42.839699, 45.401833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073921, 42.170868, 45.534760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137230, 42.337730, 45.892738>,  <41.175213, 42.437847, 46.107525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137230, 42.337730, 45.892738>,  <41.073921, 42.170868, 45.534760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137230, 42.337730, 45.892738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542781, -0.720386, 0.431780,
		0.824827, -0.554097, 0.112412,
		0.158268, 0.417158, 0.894947,
		41.184711, 42.462879, 46.161221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284813, 41.622272, 45.965595>,  <41.073921, 42.170868, 45.534760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284813, 41.622272, 45.965595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151352, 41.910576, 46.208637>,  <41.071274, 42.083557, 46.354462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151352, 41.910576, 46.208637>,  <41.284813, 41.622272, 45.965595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151352, 41.910576, 46.208637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557495, -0.670613, 0.489364,
		0.760179, -0.175456, 0.625574,
		-0.333657, 0.720759, 0.607602,
		41.051254, 42.126804, 46.390919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275993, 41.348721, 46.578354>,  <41.284813, 41.622272, 45.965595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275993, 41.348721, 46.578354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019768, 41.650604, 46.635048>,  <40.866032, 41.831734, 46.669064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019768, 41.650604, 46.635048>,  <41.275993, 41.348721, 46.578354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019768, 41.650604, 46.635048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651287, -0.631740, 0.420393,
		0.406814, 0.176979, 0.896203,
		-0.640568, 0.754707, 0.141737,
		40.827599, 41.877018, 46.677570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036961, 41.162888, 47.139091>,  <41.275993, 41.348721, 46.578354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036961, 41.162888, 47.139091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769058, 41.452751, 47.074215>,  <40.608318, 41.626667, 47.035290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769058, 41.452751, 47.074215>,  <41.036961, 41.162888, 47.139091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769058, 41.452751, 47.074215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685843, -0.519905, 0.509234,
		0.284697, 0.452297, 0.845207,
		-0.669752, 0.724656, -0.162189,
		40.568134, 41.670147, 47.025558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554298, 41.376797, 47.746006>,  <41.036961, 41.162888, 47.139091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554298, 41.376797, 47.746006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314308, 41.516235, 47.457973>,  <40.170315, 41.599899, 47.285156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314308, 41.516235, 47.457973>,  <40.554298, 41.376797, 47.746006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314308, 41.516235, 47.457973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792349, -0.383250, 0.474660,
		-0.110506, 0.855337, 0.506149,
		-0.599976, 0.348594, -0.720077,
		40.134315, 41.620815, 47.241951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004642, 41.792683, 48.050564>,  <40.554298, 41.376797, 47.746006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004642, 41.792683, 48.050564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876369, 41.681389, 47.688404>,  <39.799404, 41.614613, 47.471107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876369, 41.681389, 47.688404>,  <40.004642, 41.792683, 48.050564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876369, 41.681389, 47.688404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910400, -0.173265, 0.375700,
		-0.261408, 0.944755, -0.197744,
		-0.320683, -0.278237, -0.905399,
		39.780163, 41.597919, 47.416786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363152, 41.983280, 48.108795>,  <40.004642, 41.792683, 48.050564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363152, 41.983280, 48.108795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340187, 41.733704, 47.797050>,  <39.326408, 41.583958, 47.610004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340187, 41.733704, 47.797050>,  <39.363152, 41.983280, 48.108795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340187, 41.733704, 47.797050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892168, -0.318271, 0.320530,
		-0.448039, 0.713721, -0.538389,
		-0.057415, -0.623944, -0.779357,
		39.322964, 41.546520, 47.563244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831081, 42.222656, 47.787163>,  <39.363152, 41.983280, 48.108795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831081, 42.222656, 47.787163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882236, 41.836929, 47.694431>,  <38.912930, 41.605495, 47.638794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882236, 41.836929, 47.694431>,  <38.831081, 42.222656, 47.787163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882236, 41.836929, 47.694431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914264, -0.205222, 0.349294,
		-0.384405, 0.167281, -0.907882,
		0.127887, -0.964314, -0.231827,
		38.920601, 41.547634, 47.624882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196899, 42.008373, 47.651955>,  <38.831081, 42.222656, 47.787163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196899, 42.008373, 47.651955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403961, 41.668663, 47.693474>,  <38.528198, 41.464836, 47.718384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403961, 41.668663, 47.693474>,  <38.196899, 42.008373, 47.651955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403961, 41.668663, 47.693474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817921, -0.455607, 0.351321,
		-0.251078, -0.266757, -0.930484,
		0.517653, -0.849272, 0.103794,
		38.559258, 41.413883, 47.724613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823174, 41.482857, 47.309273>,  <38.196899, 42.008373, 47.651955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823174, 41.482857, 47.309273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064999, 41.311264, 47.577744>,  <38.210094, 41.208309, 47.738827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064999, 41.311264, 47.577744>,  <37.823174, 41.482857, 47.309273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064999, 41.311264, 47.577744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789605, -0.433821, 0.433962,
		0.105008, -0.792321, -0.600999,
		0.604563, -0.428983, 0.671176,
		38.246368, 41.182568, 47.779095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570118, 40.821404, 47.363029>,  <37.823174, 41.482857, 47.309273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570118, 40.821404, 47.363029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800770, 40.808586, 47.689579>,  <37.939159, 40.800896, 47.885509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800770, 40.808586, 47.689579>,  <37.570118, 40.821404, 47.363029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800770, 40.808586, 47.689579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677465, -0.577267, 0.455855,
		0.456662, -0.815926, -0.354575,
		0.576629, -0.032041, 0.816378,
		37.973759, 40.798973, 47.934494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536552, 40.152889, 47.636150>,  <37.570118, 40.821404, 47.363029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536552, 40.152889, 47.636150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637024, 40.393242, 47.939686>,  <37.697308, 40.537453, 48.121807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637024, 40.393242, 47.939686>,  <37.536552, 40.152889, 47.636150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637024, 40.393242, 47.939686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697706, -0.430998, 0.572230,
		0.670905, -0.673184, 0.310982,
		0.251183, 0.600886, 0.758843,
		37.712379, 40.573509, 48.167339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748062, 39.657223, 48.232784>,  <37.536552, 40.152889, 47.636150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748062, 39.657223, 48.232784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656353, 40.007545, 48.402679>,  <37.601326, 40.217739, 48.504616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656353, 40.007545, 48.402679>,  <37.748062, 39.657223, 48.232784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656353, 40.007545, 48.402679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582107, -0.473099, 0.661309,
		0.780119, -0.095622, 0.618280,
		-0.229272, 0.875805, 0.424735,
		37.587570, 40.270287, 48.530102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908886, 39.523125, 48.911926>,  <37.748062, 39.657223, 48.232784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908886, 39.523125, 48.911926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649422, 39.827553, 48.910839>,  <37.493744, 40.010212, 48.910187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649422, 39.827553, 48.910839>,  <37.908886, 39.523125, 48.911926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649422, 39.827553, 48.910839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594501, -0.504452, 0.626176,
		0.475192, 0.407795, 0.779677,
		-0.648661, 0.761073, -0.002723,
		37.454823, 40.055874, 48.910023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756729, 39.642151, 49.550007>,  <37.908886, 39.523125, 48.911926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756729, 39.642151, 49.550007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450768, 39.815575, 49.359451>,  <37.267189, 39.919628, 49.245117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450768, 39.815575, 49.359451>,  <37.756729, 39.642151, 49.550007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450768, 39.815575, 49.359451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634677, -0.380925, 0.672370,
		0.110043, 0.816652, 0.566541,
		-0.764903, 0.433560, -0.476392,
		37.221298, 39.945644, 49.216534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389824, 39.996918, 50.150208>,  <37.756729, 39.642151, 49.550007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389824, 39.996918, 50.150208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137196, 39.917473, 49.850426>,  <36.985619, 39.869808, 49.670559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137196, 39.917473, 49.850426>,  <37.389824, 39.996918, 50.150208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137196, 39.917473, 49.850426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650722, -0.389754, 0.651654,
		-0.421526, 0.899248, 0.116917,
		-0.631567, -0.198609, -0.749452,
		36.947727, 39.857891, 49.625591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623840, 39.963856, 50.429829>,  <37.389824, 39.996918, 50.150208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623840, 39.963856, 50.429829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577431, 39.780411, 50.077415>,  <36.549583, 39.670345, 49.865967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577431, 39.780411, 50.077415>,  <36.623840, 39.963856, 50.429829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577431, 39.780411, 50.077415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618747, -0.660508, 0.425300,
		-0.776975, 0.594481, -0.207128,
		-0.116023, -0.458608, -0.881032,
		36.542625, 39.642830, 49.813107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961514, 39.914547, 50.368324>,  <36.623840, 39.963856, 50.429829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961514, 39.914547, 50.368324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102798, 39.631111, 50.123981>,  <36.187569, 39.461052, 49.977375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102798, 39.631111, 50.123981>,  <35.961514, 39.914547, 50.368324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102798, 39.631111, 50.123981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596405, -0.673609, 0.436524,
		-0.720795, 0.210134, -0.660529,
		0.353210, -0.708587, -0.610858,
		36.208763, 39.418533, 49.940723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408424, 39.529819, 50.198788>,  <35.961514, 39.914547, 50.368324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408424, 39.529819, 50.198788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677086, 39.265518, 50.064754>,  <35.838284, 39.106937, 49.984333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677086, 39.265518, 50.064754>,  <35.408424, 39.529819, 50.198788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677086, 39.265518, 50.064754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491827, -0.735916, 0.465332,
		-0.554064, -0.147740, -0.819260,
		0.671654, -0.660758, -0.335082,
		35.878582, 39.067291, 49.964230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931522, 39.012070, 50.042946>,  <35.408424, 39.529819, 50.198788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931522, 39.012070, 50.042946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297829, 38.851395, 50.045139>,  <35.517612, 38.754990, 50.046455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297829, 38.851395, 50.045139>,  <34.931522, 39.012070, 50.042946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297829, 38.851395, 50.045139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389039, -0.883364, 0.261375,
		-0.100149, -0.241489, -0.965222,
		0.915762, -0.401685, 0.005481,
		35.572556, 38.730888, 50.046783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025116, 38.438812, 49.608269>,  <34.931522, 39.012070, 50.042946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025116, 38.438812, 49.608269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283539, 38.416702, 49.912781>,  <35.438595, 38.403435, 50.095490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283539, 38.416702, 49.912781>,  <35.025116, 38.438812, 49.608269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283539, 38.416702, 49.912781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584353, -0.677475, 0.446720,
		0.491057, -0.733466, -0.469990,
		0.646061, -0.055274, 0.761282,
		35.477356, 38.400120, 50.141167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091145, 37.783978, 49.752232>,  <35.025116, 38.438812, 49.608269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091145, 37.783978, 49.752232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251213, 37.940025, 50.083935>,  <35.347252, 38.033653, 50.282955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251213, 37.940025, 50.083935>,  <35.091145, 37.783978, 49.752232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251213, 37.940025, 50.083935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571692, -0.600949, 0.558595,
		0.716263, -0.697613, -0.017451,
		0.400170, 0.390124, 0.829257,
		35.371265, 38.057064, 50.332710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148914, 37.253033, 50.118629>,  <35.091145, 37.783978, 49.752232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148914, 37.253033, 50.118629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143623, 37.557587, 50.377899>,  <35.140450, 37.740318, 50.533459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143623, 37.557587, 50.377899>,  <35.148914, 37.253033, 50.118629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143623, 37.557587, 50.377899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494662, -0.568332, 0.657502,
		0.868985, -0.311928, 0.384143,
		-0.013228, 0.761380, 0.648170,
		35.139656, 37.785999, 50.572350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411171, 36.969944, 50.749954>,  <35.148914, 37.253033, 50.118629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411171, 36.969944, 50.749954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182625, 37.288177, 50.830536>,  <35.045498, 37.479118, 50.878883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182625, 37.288177, 50.830536>,  <35.411171, 36.969944, 50.749954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182625, 37.288177, 50.830536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480923, -0.523478, 0.703338,
		0.665020, 0.304983, 0.681714,
		-0.571368, 0.795585, 0.201450,
		35.011215, 37.526852, 50.890972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398369, 37.028313, 51.434929>,  <35.411171, 36.969944, 50.749954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398369, 37.028313, 51.434929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074760, 37.236412, 51.325508>,  <34.880596, 37.361271, 51.259853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074760, 37.236412, 51.325508>,  <35.398369, 37.028313, 51.434929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074760, 37.236412, 51.325508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504964, -0.376970, 0.776470,
		0.300834, 0.766313, 0.567682,
		-0.809018, 0.520247, -0.273555,
		34.832054, 37.392487, 51.243443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095585, 37.243473, 52.039497>,  <35.398369, 37.028313, 51.434929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095585, 37.243473, 52.039497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790779, 37.319687, 51.791939>,  <34.607895, 37.365414, 51.643402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790779, 37.319687, 51.791939>,  <35.095585, 37.243473, 52.039497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790779, 37.319687, 51.791939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644949, -0.309094, 0.698929,
		-0.058126, 0.931749, 0.358419,
		-0.762012, 0.190536, -0.618897,
		34.562176, 37.376846, 51.606270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631584, 37.592697, 52.411270>,  <35.095585, 37.243473, 52.039497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631584, 37.592697, 52.411270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424919, 37.463066, 52.094276>,  <34.300919, 37.385288, 51.904079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424919, 37.463066, 52.094276>,  <34.631584, 37.592697, 52.411270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424919, 37.463066, 52.094276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772014, -0.223880, 0.594872,
		-0.370204, 0.919159, -0.134519,
		-0.516666, -0.324074, -0.792485,
		34.269920, 37.365845, 51.856529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960514, 37.813839, 52.470482>,  <34.631584, 37.592697, 52.411270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960514, 37.813839, 52.470482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938080, 37.506531, 52.215416>,  <33.924618, 37.322147, 52.062378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938080, 37.506531, 52.215416>,  <33.960514, 37.813839, 52.470482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938080, 37.506531, 52.215416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837300, -0.311703, 0.449189,
		-0.543860, 0.559109, -0.625790,
		-0.056085, -0.768270, -0.637664,
		33.921253, 37.276051, 52.024117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274677, 37.846069, 52.178459>,  <33.960514, 37.813839, 52.470482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274677, 37.846069, 52.178459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427635, 37.482979, 52.109390>,  <33.519409, 37.265125, 52.067947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427635, 37.482979, 52.109390>,  <33.274677, 37.846069, 52.178459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427635, 37.482979, 52.109390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842722, -0.419251, 0.337711,
		-0.378941, 0.016377, -0.925276,
		0.382392, -0.907723, -0.172672,
		33.542351, 37.210663, 52.057587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823368, 37.431866, 51.883118>,  <33.274677, 37.846069, 52.178459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823368, 37.431866, 51.883118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052887, 37.169212, 52.078911>,  <33.190598, 37.011620, 52.196384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052887, 37.169212, 52.078911>,  <32.823368, 37.431866, 51.883118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052887, 37.169212, 52.078911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808035, -0.356420, 0.469088,
		-0.133558, -0.664679, -0.735095,
		0.573795, -0.656633, 0.489482,
		33.225025, 36.972221, 52.225754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482021, 36.786205, 51.858711>,  <32.823368, 37.431866, 51.883118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482021, 36.786205, 51.858711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745441, 36.731064, 52.154633>,  <32.903496, 36.697979, 52.332184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745441, 36.731064, 52.154633>,  <32.482021, 36.786205, 51.858711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745441, 36.731064, 52.154633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674744, -0.543458, 0.499374,
		0.333210, -0.828040, -0.450912,
		0.658553, -0.137854, 0.739800,
		32.943008, 36.689709, 52.376572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297409, 36.122265, 52.038792>,  <32.482021, 36.786205, 51.858711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297409, 36.122265, 52.038792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517799, 36.257118, 52.344147>,  <32.650032, 36.338032, 52.527359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517799, 36.257118, 52.344147>,  <32.297409, 36.122265, 52.038792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517799, 36.257118, 52.344147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569552, -0.516685, 0.639255,
		0.609948, -0.787004, -0.092665,
		0.550975, 0.337135, 0.763391,
		32.683090, 36.358257, 52.573166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302067, 35.596622, 52.494671>,  <32.297409, 36.122265, 52.038792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302067, 35.596622, 52.494671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453270, 35.862274, 52.752678>,  <32.543991, 36.021664, 52.907482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453270, 35.862274, 52.752678>,  <32.302067, 35.596622, 52.494671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453270, 35.862274, 52.752678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362452, -0.534938, 0.763197,
		0.851904, -0.522280, 0.038505,
		0.378005, 0.664128, 0.645017,
		32.566673, 36.061512, 52.946182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828705, 35.328541, 52.942318>,  <32.302067, 35.596622, 52.494671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828705, 35.328541, 52.942318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692268, 35.643829, 53.147205>,  <32.610409, 35.833004, 53.270138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692268, 35.643829, 53.147205>,  <32.828705, 35.328541, 52.942318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692268, 35.643829, 53.147205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091395, -0.570119, 0.816463,
		0.935578, 0.231671, 0.266500,
		-0.341087, 0.788222, 0.512217,
		32.589943, 35.880295, 53.300869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315361, 35.428696, 53.652843>,  <32.828705, 35.328541, 52.942318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315361, 35.428696, 53.652843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955833, 35.603920, 53.658993>,  <32.740116, 35.709053, 53.662682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955833, 35.603920, 53.658993>,  <33.315361, 35.428696, 53.652843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955833, 35.603920, 53.658993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185960, -0.412841, 0.891617,
		0.396925, 0.798541, 0.452529,
		-0.898815, 0.438058, 0.015370,
		32.686188, 35.735336, 53.663605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305969, 35.586376, 54.298752>,  <33.315361, 35.428696, 53.652843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305969, 35.586376, 54.298752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927818, 35.614662, 54.171459>,  <32.700928, 35.631634, 54.095085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927818, 35.614662, 54.171459>,  <33.305969, 35.586376, 54.298752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927818, 35.614662, 54.171459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302995, -0.550734, 0.777744,
		-0.120265, 0.831680, 0.542074,
		-0.945373, 0.070710, -0.318229,
		32.644207, 35.635876, 54.075989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905170, 35.839268, 54.879070>,  <33.305969, 35.586376, 54.298752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905170, 35.839268, 54.879070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639824, 35.669594, 54.632488>,  <32.480618, 35.567791, 54.484539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639824, 35.669594, 54.632488>,  <32.905170, 35.839268, 54.879070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639824, 35.669594, 54.632488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409861, -0.483285, 0.773595,
		-0.626068, 0.765837, 0.146739,
		-0.663365, -0.424181, -0.616456,
		32.440815, 35.542339, 54.447552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292870, 35.856556, 55.284187>,  <32.905170, 35.839268, 54.879070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292870, 35.856556, 55.284187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194084, 35.612457, 54.983093>,  <32.134811, 35.466000, 54.802437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194084, 35.612457, 54.983093>,  <32.292870, 35.856556, 55.284187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194084, 35.612457, 54.983093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609351, -0.506192, 0.610296,
		-0.753459, 0.609401, -0.246842,
		-0.246965, -0.610246, -0.752734,
		32.119995, 35.429382, 54.757275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587214, 35.759029, 55.288303>,  <32.292870, 35.856556, 55.284187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587214, 35.759029, 55.288303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712469, 35.427460, 55.102901>,  <31.787622, 35.228519, 54.991661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712469, 35.427460, 55.102901>,  <31.587214, 35.759029, 55.288303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712469, 35.427460, 55.102901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593886, -0.551764, 0.585539,
		-0.741109, 0.091911, -0.665064,
		0.313141, -0.828920, -0.463502,
		31.806412, 35.178783, 54.963852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962364, 35.408978, 55.143471>,  <31.587214, 35.759029, 55.288303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962364, 35.408978, 55.143471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269896, 35.153206, 55.141098>,  <31.454414, 34.999744, 55.139675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269896, 35.153206, 55.141098>,  <30.962364, 35.408978, 55.143471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269896, 35.153206, 55.141098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518307, -0.628580, 0.579866,
		-0.374509, -0.442744, -0.814690,
		0.768830, -0.639425, -0.005932,
		31.500546, 34.961380, 55.139317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709694, 34.778820, 54.912487>,  <30.962364, 35.408978, 55.143471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709694, 34.778820, 54.912487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040026, 34.707222, 55.126389>,  <31.238226, 34.664265, 55.254730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040026, 34.707222, 55.126389>,  <30.709694, 34.778820, 54.912487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040026, 34.707222, 55.126389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483389, -0.713048, 0.507836,
		0.290410, -0.677883, -0.675379,
		0.825831, -0.178990, 0.534757,
		31.287775, 34.653526, 55.286816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769001, 34.152691, 54.956062>,  <30.709694, 34.778820, 54.912487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769001, 34.152691, 54.956062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973639, 34.269371, 55.279343>,  <31.096420, 34.339378, 55.473312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973639, 34.269371, 55.279343>,  <30.769001, 34.152691, 54.956062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973639, 34.269371, 55.279343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389318, -0.759822, 0.520675,
		0.765967, -0.581020, -0.275156,
		0.511592, 0.291697, 0.808199,
		31.127115, 34.356880, 55.521801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979559, 33.555649, 55.182583>,  <30.769001, 34.152691, 54.956062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979559, 33.555649, 55.182583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995327, 33.806091, 55.494080>,  <31.004787, 33.956356, 55.680977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995327, 33.806091, 55.494080>,  <30.979559, 33.555649, 55.182583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995327, 33.806091, 55.494080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342399, -0.723702, 0.599181,
		0.938727, -0.290260, 0.185850,
		0.039418, 0.626103, 0.778744,
		31.007153, 33.993923, 55.727703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712276, 33.112873, 55.699413>,  <30.979559, 33.555649, 55.182583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712276, 33.112873, 55.699413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813484, 33.427811, 55.924294>,  <30.874208, 33.616772, 56.059223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813484, 33.427811, 55.924294>,  <30.712276, 33.112873, 55.699413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813484, 33.427811, 55.924294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268030, -0.501314, 0.822705,
		0.929591, -0.358848, 0.084190,
		0.253021, 0.787345, 0.562199,
		30.889391, 33.664013, 56.092953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994759, 32.818279, 56.272507>,  <30.712276, 33.112873, 55.699413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994759, 32.818279, 56.272507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897036, 33.192780, 56.373505>,  <30.838402, 33.417480, 56.434101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897036, 33.192780, 56.373505>,  <30.994759, 32.818279, 56.272507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897036, 33.192780, 56.373505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280091, -0.317415, 0.905978,
		0.928366, 0.150617, 0.339782,
		-0.244308, 0.936249, 0.252491,
		30.823744, 33.473656, 56.449253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509829, 33.189152, 56.691402>,  <30.994759, 32.818279, 56.272507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509829, 33.189152, 56.691402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133177, 33.309822, 56.751163>,  <30.907185, 33.382225, 56.787022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133177, 33.309822, 56.751163>,  <31.509829, 33.189152, 56.691402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133177, 33.309822, 56.751163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003879, -0.434048, 0.900881,
		0.336625, 0.848877, 0.407542,
		-0.941631, 0.301678, 0.149404,
		30.850687, 33.400326, 56.795986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957844, 33.115826, 56.053947>,  <31.509829, 33.189152, 56.691402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957844, 33.115826, 56.053947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182491, 33.038040, 56.375633>,  <32.317280, 32.991367, 56.568645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182491, 33.038040, 56.375633>,  <31.957844, 33.115826, 56.053947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182491, 33.038040, 56.375633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408057, 0.910656, -0.064763,
		-0.719772, 0.364539, 0.590796,
		0.561621, -0.194464, 0.804217,
		32.350979, 32.979702, 56.616898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054379, 33.822769, 56.363819>,  <31.957844, 33.115826, 56.053947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054379, 33.822769, 56.363819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310490, 33.557877, 56.519508>,  <32.464157, 33.398941, 56.612923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310490, 33.557877, 56.519508>,  <32.054379, 33.822769, 56.363819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310490, 33.557877, 56.519508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659384, 0.733757, 0.163745,
		-0.394031, 0.151803, 0.906474,
		0.640275, -0.662236, 0.389220,
		32.502571, 33.359207, 56.636272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291637, 34.003098, 57.046032>,  <32.054379, 33.822769, 56.363819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291637, 34.003098, 57.046032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587349, 33.808250, 56.860054>,  <32.764778, 33.691341, 56.748466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587349, 33.808250, 56.860054>,  <32.291637, 34.003098, 57.046032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587349, 33.808250, 56.860054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595135, 0.795691, 0.112653,
		0.315080, -0.359990, 0.878141,
		0.739283, -0.487117, -0.464948,
		32.809135, 33.662117, 56.720570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996269, 34.071487, 57.381836>,  <32.291637, 34.003098, 57.046032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996269, 34.071487, 57.381836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054813, 34.016060, 56.990044>,  <33.089939, 33.982803, 56.754971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054813, 34.016060, 56.990044>,  <32.996269, 34.071487, 57.381836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054813, 34.016060, 56.990044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525366, 0.849853, -0.041727,
		0.838194, -0.508477, 0.197184,
		0.146360, -0.138569, -0.979478,
		33.098721, 33.974491, 56.696201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663025, 34.216873, 57.150311>,  <32.996269, 34.071487, 57.381836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663025, 34.216873, 57.150311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462711, 34.254791, 56.806164>,  <33.342522, 34.277542, 56.599678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462711, 34.254791, 56.806164>,  <33.663025, 34.216873, 57.150311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462711, 34.254791, 56.806164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456381, 0.873511, -0.169394,
		0.735480, -0.477485, -0.480705,
		-0.500785, 0.094799, -0.860365,
		33.312477, 34.283230, 56.548054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067734, 34.467949, 56.582386>,  <33.663025, 34.216873, 57.150311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067734, 34.467949, 56.582386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731499, 34.572929, 56.392845>,  <33.529758, 34.635918, 56.279121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731499, 34.572929, 56.392845>,  <34.067734, 34.467949, 56.582386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731499, 34.572929, 56.392845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407271, 0.882975, -0.233420,
		0.357135, -0.389195, -0.849107,
		-0.840586, 0.262454, -0.473849,
		33.479324, 34.651665, 56.250690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239838, 34.777737, 56.000851>,  <34.067734, 34.467949, 56.582386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239838, 34.777737, 56.000851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873299, 34.928001, 56.056244>,  <33.653374, 35.018162, 56.089481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873299, 34.928001, 56.056244>,  <34.239838, 34.777737, 56.000851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873299, 34.928001, 56.056244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331479, 0.905828, -0.263814,
		-0.224552, -0.195840, -0.954580,
		-0.916350, 0.375664, 0.138488,
		33.598392, 35.040699, 56.097790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062355, 35.223763, 55.499039>,  <34.239838, 34.777737, 56.000851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062355, 35.223763, 55.499039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788597, 35.341904, 55.765682>,  <33.624340, 35.412788, 55.925667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788597, 35.341904, 55.765682>,  <34.062355, 35.223763, 55.499039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788597, 35.341904, 55.765682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338537, 0.938475, -0.068243,
		-0.645750, 0.178965, -0.742279,
		-0.684398, 0.295357, 0.666606,
		33.583279, 35.430511, 55.965664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801334, 35.738766, 55.153133>,  <34.062355, 35.223763, 55.499039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801334, 35.738766, 55.153133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700630, 35.797806, 55.535721>,  <33.640205, 35.833229, 55.765274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700630, 35.797806, 55.535721>,  <33.801334, 35.738766, 55.153133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700630, 35.797806, 55.535721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224678, 0.970214, -0.090578,
		-0.941347, 0.192093, -0.277426,
		-0.251763, 0.147597, 0.956468,
		33.625103, 35.842083, 55.822662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435566, 36.349838, 55.084278>,  <33.801334, 35.738766, 55.153133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435566, 36.349838, 55.084278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542374, 36.318092, 55.468445>,  <33.606461, 36.299046, 55.698944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542374, 36.318092, 55.468445>,  <33.435566, 36.349838, 55.084278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542374, 36.318092, 55.468445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336568, 0.941527, -0.015771,
		-0.903006, 0.327456, 0.278122,
		0.267023, -0.079365, 0.960416,
		33.622482, 36.294281, 55.756569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175720, 36.929600, 55.373100>,  <33.435566, 36.349838, 55.084278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175720, 36.929600, 55.373100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470600, 36.805321, 55.613102>,  <33.647530, 36.730755, 55.757103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470600, 36.805321, 55.613102>,  <33.175720, 36.929600, 55.373100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470600, 36.805321, 55.613102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457099, 0.883288, -0.104229,
		-0.497589, 0.351097, 0.793181,
		0.737202, -0.310699, 0.600000,
		33.691761, 36.712112, 55.793102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256817, 37.408585, 55.925938>,  <33.175720, 36.929600, 55.373100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256817, 37.408585, 55.925938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604000, 37.212883, 55.891815>,  <33.812309, 37.095463, 55.871342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604000, 37.212883, 55.891815>,  <33.256817, 37.408585, 55.925938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604000, 37.212883, 55.891815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483451, 0.871677, -0.080335,
		0.113661, 0.028488, 0.993111,
		0.867961, -0.489252, -0.085304,
		33.864388, 37.066109, 55.866222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689571, 37.829311, 56.320595>,  <33.256817, 37.408585, 55.925938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689571, 37.829311, 56.320595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943279, 37.594284, 56.119610>,  <34.095505, 37.453270, 55.999020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943279, 37.594284, 56.119610>,  <33.689571, 37.829311, 56.320595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943279, 37.594284, 56.119610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568943, 0.794791, -0.211213,
		0.523456, -0.151909, 0.838402,
		0.634269, -0.587564, -0.502465,
		34.133560, 37.418015, 55.968872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116570, 38.368271, 56.112175>,  <33.689571, 37.829311, 56.320595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116570, 38.368271, 56.112175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293457, 38.073082, 55.908276>,  <34.399590, 37.895969, 55.785938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293457, 38.073082, 55.908276>,  <34.116570, 38.368271, 56.112175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293457, 38.073082, 55.908276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649418, 0.655455, -0.385531,
		0.618626, -0.160549, 0.769107,
		0.442218, -0.737972, -0.509745,
		34.426121, 37.851692, 55.755352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837563, 38.630493, 56.139267>,  <34.116570, 38.368271, 56.112175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837563, 38.630493, 56.139267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794846, 38.367653, 55.840786>,  <34.769215, 38.209949, 55.661697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794846, 38.367653, 55.840786>,  <34.837563, 38.630493, 56.139267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794846, 38.367653, 55.840786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562033, 0.579192, -0.590471,
		0.820191, -0.482450, 0.307455,
		-0.106797, -0.657099, -0.746201,
		34.762806, 38.170525, 55.616924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489494, 38.260696, 55.942230>,  <34.837563, 38.630493, 56.139267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489494, 38.260696, 55.942230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255333, 38.263184, 55.617943>,  <35.114838, 38.264675, 55.423370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255333, 38.263184, 55.617943>,  <35.489494, 38.260696, 55.942230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255333, 38.263184, 55.617943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665055, 0.575594, -0.475808,
		0.463689, -0.817712, -0.341086,
		-0.585401, 0.006215, -0.810720,
		35.079712, 38.265049, 55.374725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823521, 37.976471, 55.407776>,  <35.489494, 38.260696, 55.942230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823521, 37.976471, 55.407776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556366, 38.197922, 55.208809>,  <35.396072, 38.330791, 55.089428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556366, 38.197922, 55.208809>,  <35.823521, 37.976471, 55.407776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556366, 38.197922, 55.208809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744216, 0.489104, -0.454884,
		-0.008549, -0.673996, -0.738685,
		-0.667884, 0.553630, -0.497418,
		35.355999, 38.364010, 55.059582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005947, 37.956242, 54.780235>,  <35.823521, 37.976471, 55.407776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005947, 37.956242, 54.780235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776230, 38.283577, 54.789265>,  <35.638401, 38.479977, 54.794682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776230, 38.283577, 54.789265>,  <36.005947, 37.956242, 54.780235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776230, 38.283577, 54.789265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664135, 0.481844, -0.571622,
		-0.478658, -0.313286, -0.820207,
		-0.574293, 0.818339, 0.022574,
		35.603943, 38.529079, 54.796036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072491, 38.268867, 54.159271>,  <36.005947, 37.956242, 54.780235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072491, 38.268867, 54.159271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924770, 38.563896, 54.385406>,  <35.836140, 38.740913, 54.521088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924770, 38.563896, 54.385406>,  <36.072491, 38.268867, 54.159271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924770, 38.563896, 54.385406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496271, 0.670860, -0.551055,
		-0.785705, 0.077058, -0.613783,
		-0.369300, 0.737570, 0.565340,
		35.813980, 38.785168, 54.555008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836067, 38.693455, 53.672142>,  <36.072491, 38.268867, 54.159271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836067, 38.693455, 53.672142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904194, 38.893997, 54.011467>,  <35.945072, 39.014324, 54.215061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904194, 38.893997, 54.011467>,  <35.836067, 38.693455, 53.672142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904194, 38.893997, 54.011467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510285, 0.691592, -0.511185,
		-0.842971, 0.519946, -0.138042,
		0.170320, 0.501355, 0.848313,
		35.955288, 39.044403, 54.265961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608997, 39.335918, 53.557327>,  <35.836067, 38.693455, 53.672142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608997, 39.335918, 53.557327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892670, 39.332809, 53.839321>,  <36.062874, 39.330944, 54.008518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892670, 39.332809, 53.839321>,  <35.608997, 39.335918, 53.557327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892670, 39.332809, 53.839321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533792, 0.659146, -0.529710,
		-0.460571, 0.751975, 0.471602,
		0.709183, -0.007768, 0.704982,
		36.105423, 39.330479, 54.050816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891712, 39.931995, 53.376884>,  <35.608997, 39.335918, 53.557327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891712, 39.931995, 53.376884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148315, 39.774620, 53.640301>,  <36.302277, 39.680195, 53.798351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148315, 39.774620, 53.640301>,  <35.891712, 39.931995, 53.376884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148315, 39.774620, 53.640301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754907, 0.476343, -0.450792,
		-0.136332, 0.786323, 0.602586,
		0.641506, -0.393438, 0.658542,
		36.340767, 39.656590, 53.837864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354248, 40.484882, 53.545513>,  <35.891712, 39.931995, 53.376884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354248, 40.484882, 53.545513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549004, 40.149750, 53.644295>,  <36.665855, 39.948669, 53.703564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549004, 40.149750, 53.644295>,  <36.354248, 40.484882, 53.545513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549004, 40.149750, 53.644295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766374, 0.274118, -0.580973,
		0.419062, 0.472124, 0.775555,
		0.486885, -0.837829, 0.246951,
		36.695068, 39.898399, 53.718380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041378, 40.670223, 53.793941>,  <36.354248, 40.484882, 53.545513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041378, 40.670223, 53.793941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063168, 40.289597, 53.672913>,  <37.076241, 40.061222, 53.600296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063168, 40.289597, 53.672913>,  <37.041378, 40.670223, 53.793941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063168, 40.289597, 53.672913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915674, 0.168454, -0.364917,
		0.398214, -0.257182, 0.880502,
		0.054474, -0.951568, -0.302575,
		37.079510, 40.004128, 53.582138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695652, 40.375790, 54.021751>,  <37.041378, 40.670223, 53.793941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695652, 40.375790, 54.021751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576904, 40.135208, 53.725071>,  <37.505657, 39.990860, 53.547062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576904, 40.135208, 53.725071>,  <37.695652, 40.375790, 54.021751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576904, 40.135208, 53.725071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830109, 0.221376, -0.511773,
		0.472004, -0.767621, 0.433555,
		-0.296869, -0.601456, -0.741700,
		37.487843, 39.954773, 53.502560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322792, 40.053600, 53.803032>,  <37.695652, 40.375790, 54.021751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322792, 40.053600, 53.803032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089138, 39.990417, 53.484577>,  <37.948948, 39.952507, 53.293503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089138, 39.990417, 53.484577>,  <38.322792, 40.053600, 53.803032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089138, 39.990417, 53.484577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806426, -0.001735, -0.591332,
		0.092025, -0.987444, 0.128396,
		-0.584130, -0.157959, -0.796141,
		37.913898, 39.943031, 53.245735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677624, 39.573257, 53.392132>,  <38.322792, 40.053600, 53.803032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677624, 39.573257, 53.392132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396240, 39.712334, 53.144176>,  <38.227409, 39.795780, 52.995403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396240, 39.712334, 53.144176>,  <38.677624, 39.573257, 53.392132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396240, 39.712334, 53.144176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672420, 0.043062, -0.738916,
		-0.230217, -0.936621, -0.264084,
		-0.703456, 0.347686, -0.619889,
		38.185204, 39.816639, 52.958210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628593, 39.122601, 52.778667>,  <38.677624, 39.573257, 53.392132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628593, 39.122601, 52.778667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495514, 39.485725, 52.676544>,  <38.415665, 39.703602, 52.615269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495514, 39.485725, 52.676544>,  <38.628593, 39.122601, 52.778667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495514, 39.485725, 52.676544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657535, 0.029247, -0.752856,
		-0.675987, -0.418349, -0.606651,
		-0.332699, 0.907815, -0.255309,
		38.395702, 39.758072, 52.599953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651604, 39.144661, 52.078751>,  <38.628593, 39.122601, 52.778667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651604, 39.144661, 52.078751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625885, 39.534828, 52.163055>,  <38.610455, 39.768929, 52.213638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625885, 39.534828, 52.163055>,  <38.651604, 39.144661, 52.078751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625885, 39.534828, 52.163055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507582, 0.213809, -0.834653,
		-0.859201, 0.053315, -0.508853,
		-0.064298, 0.975420, 0.210767,
		38.606594, 39.827454, 52.226284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639969, 39.384842, 51.355915>,  <38.651604, 39.144661, 52.078751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639969, 39.384842, 51.355915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722000, 39.674980, 51.618767>,  <38.771217, 39.849064, 51.776478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722000, 39.674980, 51.618767>,  <38.639969, 39.384842, 51.355915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722000, 39.674980, 51.618767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553239, 0.467945, -0.689169,
		-0.807385, 0.504884, -0.305323,
		0.205076, 0.725341, 0.657133,
		38.783524, 39.892582, 51.815907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818230, 39.935932, 50.919918>,  <38.639969, 39.384842, 51.355915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818230, 39.935932, 50.919918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966415, 40.021423, 51.281487>,  <39.055328, 40.072720, 51.498428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966415, 40.021423, 51.281487>,  <38.818230, 39.935932, 50.919918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966415, 40.021423, 51.281487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861442, 0.284893, -0.420422,
		-0.347378, 0.934427, -0.078574,
		0.370468, 0.213732, 0.903920,
		39.077557, 40.085545, 51.552662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086983, 40.513165, 50.787071>,  <38.818230, 39.935932, 50.919918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086983, 40.513165, 50.787071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255543, 40.403748, 51.132927>,  <39.356678, 40.338097, 51.340439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255543, 40.403748, 51.132927>,  <39.086983, 40.513165, 50.787071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255543, 40.403748, 51.132927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871932, 0.384323, -0.303364,
		-0.249316, 0.881742, 0.400466,
		0.421397, -0.273545, 0.864637,
		39.381962, 40.321686, 51.392319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316547, 41.109203, 51.030106>,  <39.086983, 40.513165, 50.787071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316547, 41.109203, 51.030106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527084, 40.827347, 51.220451>,  <39.653408, 40.658234, 51.334660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527084, 40.827347, 51.220451>,  <39.316547, 41.109203, 51.030106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527084, 40.827347, 51.220451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849834, 0.453901, -0.267875,
		-0.027239, 0.545398, 0.837735,
		0.526347, -0.704639, 0.475861,
		39.684990, 40.615955, 51.363209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725388, 41.504665, 51.544449>,  <39.316547, 41.109203, 51.030106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725388, 41.504665, 51.544449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898464, 41.153206, 51.463703>,  <40.002308, 40.942329, 51.415257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898464, 41.153206, 51.463703>,  <39.725388, 41.504665, 51.544449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898464, 41.153206, 51.463703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873588, 0.463954, -0.146937,
		0.222763, -0.112769, 0.968328,
		0.432690, -0.878652, -0.201865,
		40.028271, 40.889610, 51.403145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387665, 41.614990, 51.861866>,  <39.725388, 41.504665, 51.544449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387665, 41.614990, 51.861866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429779, 41.307037, 51.610088>,  <40.455048, 41.122265, 51.459023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429779, 41.307037, 51.610088>,  <40.387665, 41.614990, 51.861866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429779, 41.307037, 51.610088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715936, 0.497982, -0.489335,
		0.690181, -0.399117, 0.603619,
		0.105290, -0.769883, -0.629440,
		40.461365, 41.076073, 51.421257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135414, 41.540867, 51.798462>,  <40.387665, 41.614990, 51.861866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135414, 41.540867, 51.798462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023277, 41.328705, 51.478443>,  <40.955994, 41.201408, 51.286430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023277, 41.328705, 51.478443>,  <41.135414, 41.540867, 51.798462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023277, 41.328705, 51.478443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698869, 0.458569, -0.548904,
		0.658020, -0.713011, 0.242126,
		-0.280343, -0.530405, -0.800049,
		40.939175, 41.169582, 51.238430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769932, 41.278427, 51.441700>,  <41.135414, 41.540867, 51.798462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769932, 41.278427, 51.441700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507996, 41.248955, 51.140831>,  <41.350834, 41.231270, 50.960312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507996, 41.248955, 51.140831>,  <41.769932, 41.278427, 51.441700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507996, 41.248955, 51.140831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659071, 0.431410, -0.616045,
		0.369885, -0.899142, -0.233942,
		-0.654837, -0.073682, -0.752170,
		41.311546, 41.226849, 50.915180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138134, 40.988209, 50.794685>,  <41.769932, 41.278427, 51.441700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138134, 40.988209, 50.794685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818420, 41.190247, 50.664444>,  <41.626591, 41.311470, 50.586300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818420, 41.190247, 50.664444>,  <42.138134, 40.988209, 50.794685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818420, 41.190247, 50.664444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574183, 0.481982, -0.661821,
		-0.177352, -0.715939, -0.675262,
		-0.799287, 0.505099, -0.325599,
		41.578632, 41.341778, 50.566765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250999, 41.037128, 50.006779>,  <42.138134, 40.988209, 50.794685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250999, 41.037128, 50.006779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984863, 41.316818, 50.111404>,  <41.825184, 41.484631, 50.174179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984863, 41.316818, 50.111404>,  <42.250999, 41.037128, 50.006779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984863, 41.316818, 50.111404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499725, 0.677427, -0.539785,
		-0.554619, -0.228430, -0.800136,
		-0.665337, 0.699223, 0.261562,
		41.785263, 41.526585, 50.189873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010479, 41.424854, 49.424942>,  <42.250999, 41.037128, 50.006779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010479, 41.424854, 49.424942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941360, 41.673531, 49.730530>,  <41.899891, 41.822735, 49.913883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941360, 41.673531, 49.730530>,  <42.010479, 41.424854, 49.424942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941360, 41.673531, 49.730530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521801, 0.715626, -0.464331,
		-0.835383, 0.318405, -0.448055,
		-0.172794, 0.621690, 0.763966,
		41.889523, 41.860039, 49.959721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703228, 42.055687, 49.106110>,  <42.010479, 41.424854, 49.424942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703228, 42.055687, 49.106110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876575, 42.154442, 49.452805>,  <41.980583, 42.213696, 49.660820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876575, 42.154442, 49.452805>,  <41.703228, 42.055687, 49.106110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876575, 42.154442, 49.452805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476605, 0.753463, -0.452924,
		-0.764876, 0.609377, 0.208864,
		0.433373, 0.246885, 0.866739,
		42.006588, 42.228508, 49.712826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682964, 42.836128, 49.165413>,  <41.703228, 42.055687, 49.106110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682964, 42.836128, 49.165413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947464, 42.737831, 49.448921>,  <42.106163, 42.678852, 49.619026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947464, 42.737831, 49.448921>,  <41.682964, 42.836128, 49.165413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947464, 42.737831, 49.448921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499550, 0.849107, -0.171661,
		-0.559640, 0.467578, 0.684233,
		0.661252, -0.245740, 0.708772,
		42.145840, 42.664108, 49.661552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803352, 43.499023, 49.410110>,  <41.682964, 42.836128, 49.165413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803352, 43.499023, 49.410110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089729, 43.242386, 49.520229>,  <42.261555, 43.088406, 49.586300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089729, 43.242386, 49.520229>,  <41.803352, 43.499023, 49.410110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089729, 43.242386, 49.520229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698045, 0.664931, -0.265707,
		-0.012577, 0.382400, 0.923911,
		0.715944, -0.641590, 0.275295,
		42.304512, 43.049908, 49.602818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244755, 43.987320, 49.674088>,  <41.803352, 43.499023, 49.410110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244755, 43.987320, 49.674088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433960, 43.648300, 49.577831>,  <42.547482, 43.444885, 49.520077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433960, 43.648300, 49.577831>,  <42.244755, 43.987320, 49.674088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433960, 43.648300, 49.577831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680684, 0.524962, -0.510965,
		0.559400, 0.077890, 0.825230,
		0.473014, -0.847554, -0.240645,
		42.575863, 43.394035, 49.505638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000141, 43.975357, 49.954990>,  <42.244755, 43.987320, 49.674088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000141, 43.975357, 49.954990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977306, 43.725922, 49.643124>,  <42.963604, 43.576260, 49.456001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977306, 43.725922, 49.643124>,  <43.000141, 43.975357, 49.954990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977306, 43.725922, 49.643124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747259, 0.491201, -0.447578,
		0.662077, -0.608165, 0.437939,
		-0.057085, -0.623585, -0.779669,
		42.960182, 43.538845, 49.409222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945545, 43.363083, 50.383766>,  <43.000141, 43.975357, 49.954990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945545, 43.363083, 50.383766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050491, 43.675690, 50.610180>,  <43.113457, 43.863255, 50.746029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050491, 43.675690, 50.610180>,  <42.945545, 43.363083, 50.383766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050491, 43.675690, 50.610180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683894, -0.263234, 0.680439,
		0.680776, -0.565627, 0.465414,
		0.262361, 0.781520, 0.566032,
		43.129200, 43.910145, 50.779991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064793, 43.120975, 51.180702>,  <42.945545, 43.363083, 50.383766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064793, 43.120975, 51.180702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956223, 43.504723, 51.149883>,  <42.891083, 43.734970, 51.131390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956223, 43.504723, 51.149883>,  <43.064793, 43.120975, 51.180702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956223, 43.504723, 51.149883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741121, -0.157255, 0.652695,
		0.614060, 0.234260, 0.753693,
		-0.271422, 0.959371, -0.077052,
		42.874794, 43.792534, 51.126766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064228, 43.321407, 51.859581>,  <43.064793, 43.120975, 51.180702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064228, 43.321407, 51.859581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833870, 43.584084, 51.664810>,  <42.695656, 43.741692, 51.547947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833870, 43.584084, 51.664810>,  <43.064228, 43.321407, 51.859581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833870, 43.584084, 51.664810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619171, 0.038571, 0.784308,
		0.533832, 0.753170, 0.384392,
		-0.575892, 0.656694, -0.486932,
		42.661102, 43.781090, 51.518730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885921, 43.973164, 52.349083>,  <43.064228, 43.321407, 51.859581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885921, 43.973164, 52.349083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603340, 43.958221, 52.066376>,  <42.433792, 43.949257, 51.896751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603340, 43.958221, 52.066376>,  <42.885921, 43.973164, 52.349083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603340, 43.958221, 52.066376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649390, -0.362894, 0.668281,
		-0.281446, 0.931081, 0.232112,
		-0.706456, -0.037354, -0.706770,
		42.391403, 43.947014, 51.854343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322521, 44.345360, 52.684605>,  <42.885921, 43.973164, 52.349083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322521, 44.345360, 52.684605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143379, 44.168243, 52.373898>,  <42.035892, 44.061974, 52.187473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143379, 44.168243, 52.373898>,  <42.322521, 44.345360, 52.684605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143379, 44.168243, 52.373898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828174, -0.121982, 0.547035,
		-0.336972, 0.888290, -0.312075,
		-0.447858, -0.442788, -0.776764,
		42.009022, 44.035408, 52.140869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708935, 44.718147, 52.605106>,  <42.322521, 44.345360, 52.684605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708935, 44.718147, 52.605106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676750, 44.346970, 52.459538>,  <41.657440, 44.124264, 52.372196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676750, 44.346970, 52.459538>,  <41.708935, 44.718147, 52.605106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676750, 44.346970, 52.459538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829290, -0.140232, 0.540936,
		-0.552994, 0.345321, -0.758255,
		-0.080465, -0.927948, -0.363919,
		41.652611, 44.068584, 52.350361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926090, 44.615665, 52.483746>,  <41.708935, 44.718147, 52.605106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926090, 44.615665, 52.483746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057602, 44.238876, 52.456642>,  <41.136509, 44.012802, 52.440380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057602, 44.238876, 52.456642>,  <40.926090, 44.615665, 52.483746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057602, 44.238876, 52.456642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742705, -0.302214, 0.597541,
		-0.583346, -0.146132, -0.798970,
		0.328779, -0.941973, -0.067762,
		41.156235, 43.956284, 52.436314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403477, 44.232101, 52.158703>,  <40.926090, 44.615665, 52.483746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403477, 44.232101, 52.158703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611816, 43.964851, 52.371239>,  <40.736820, 43.804501, 52.498760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611816, 43.964851, 52.371239>,  <40.403477, 44.232101, 52.158703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611816, 43.964851, 52.371239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849357, -0.343285, 0.400933,
		-0.085474, -0.660123, -0.746279,
		0.520851, -0.668127, 0.531339,
		40.768070, 43.764412, 52.530640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030022, 43.568352, 52.101837>,  <40.403477, 44.232101, 52.158703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030022, 43.568352, 52.101837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263962, 43.527512, 52.423714>,  <40.404327, 43.503006, 52.616840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263962, 43.527512, 52.423714>,  <40.030022, 43.568352, 52.101837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263962, 43.527512, 52.423714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736684, -0.482048, 0.474264,
		0.339476, -0.870176, -0.357142,
		0.584852, -0.102100, 0.804688,
		40.439419, 43.496880, 52.665119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832943, 42.932346, 52.290272>,  <40.030022, 43.568352, 52.101837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832943, 42.932346, 52.290272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000999, 43.112061, 52.605644>,  <40.101833, 43.219891, 52.794868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000999, 43.112061, 52.605644>,  <39.832943, 42.932346, 52.290272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000999, 43.112061, 52.605644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710641, -0.377417, 0.593755,
		0.564335, -0.809751, 0.160716,
		0.420137, 0.449288, 0.788431,
		40.127041, 43.246845, 52.842175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834759, 42.420952, 52.834888>,  <39.832943, 42.932346, 52.290272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834759, 42.420952, 52.834888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859810, 42.779205, 53.011036>,  <39.874840, 42.994156, 53.116726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859810, 42.779205, 53.011036>,  <39.834759, 42.420952, 52.834888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859810, 42.779205, 53.011036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648372, -0.298932, 0.700181,
		0.758743, -0.329373, 0.561981,
		0.062627, 0.895630, 0.440368,
		39.878597, 43.047894, 53.143147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941254, 42.246445, 53.440315>,  <39.834759, 42.420952, 52.834888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941254, 42.246445, 53.440315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838837, 42.631592, 53.474541>,  <39.777386, 42.862682, 53.495075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838837, 42.631592, 53.474541>,  <39.941254, 42.246445, 53.440315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838837, 42.631592, 53.474541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563980, -0.220683, 0.795755,
		0.785092, 0.155493, 0.599544,
		-0.256043, 0.962871, 0.085561,
		39.762024, 42.920452, 53.500210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053543, 42.485474, 54.173145>,  <39.941254, 42.246445, 53.440315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053543, 42.485474, 54.173145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786285, 42.735344, 54.011471>,  <39.625931, 42.885265, 53.914467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786285, 42.735344, 54.011471>,  <40.053543, 42.485474, 54.173145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786285, 42.735344, 54.011471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642819, -0.211109, 0.736353,
		0.374652, 0.751810, 0.542602,
		-0.668146, 0.624671, -0.404186,
		39.585842, 42.922745, 53.890217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853619, 42.927517, 54.762402>,  <40.053543, 42.485474, 54.173145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853619, 42.927517, 54.762402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582466, 42.949974, 54.469193>,  <39.419773, 42.963448, 54.293266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582466, 42.949974, 54.469193>,  <39.853619, 42.927517, 54.762402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582466, 42.949974, 54.469193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734314, -0.099751, 0.671441,
		-0.035425, 0.993428, 0.108843,
		-0.677885, 0.056139, -0.733021,
		39.379101, 42.966816, 54.249287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376560, 43.366791, 55.051212>,  <39.853619, 42.927517, 54.762402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376560, 43.366791, 55.051212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180885, 43.166069, 54.765865>,  <39.063480, 43.045635, 54.594658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180885, 43.166069, 54.765865>,  <39.376560, 43.366791, 55.051212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180885, 43.166069, 54.765865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757712, -0.160546, 0.632533,
		-0.431936, 0.849951, -0.301686,
		-0.489187, -0.501805, -0.713363,
		39.034130, 43.015526, 54.551857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663914, 43.599728, 54.974834>,  <39.376560, 43.366791, 55.051212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663914, 43.599728, 54.974834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632439, 43.236336, 54.810650>,  <38.613556, 43.018299, 54.712139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632439, 43.236336, 54.810650>,  <38.663914, 43.599728, 54.974834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632439, 43.236336, 54.810650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838261, -0.162552, 0.520476,
		-0.539561, 0.385025, -0.748752,
		-0.078685, -0.908478, -0.410458,
		38.608833, 42.963791, 54.687511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024864, 43.537220, 54.821102>,  <38.663914, 43.599728, 54.974834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024864, 43.537220, 54.821102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134323, 43.152634, 54.831657>,  <38.200001, 42.921883, 54.837990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134323, 43.152634, 54.831657>,  <38.024864, 43.537220, 54.821102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134323, 43.152634, 54.831657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886506, -0.241479, 0.394710,
		-0.373127, -0.131408, -0.918427,
		0.273649, -0.961468, 0.026391,
		38.216419, 42.864193, 54.839577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419254, 43.151306, 54.641514>,  <38.024864, 43.537220, 54.821102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419254, 43.151306, 54.641514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659008, 42.867989, 54.790676>,  <37.802860, 42.697998, 54.880173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659008, 42.867989, 54.790676>,  <37.419254, 43.151306, 54.641514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659008, 42.867989, 54.790676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784946, -0.428810, 0.447193,
		-0.156839, -0.560750, -0.812995,
		0.599384, -0.708294, 0.372905,
		37.838821, 42.655499, 54.902546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216843, 42.469494, 54.370949>,  <37.419254, 43.151306, 54.641514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216843, 42.469494, 54.370949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401360, 42.438965, 54.724533>,  <37.512070, 42.420647, 54.936684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401360, 42.438965, 54.724533>,  <37.216843, 42.469494, 54.370949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401360, 42.438965, 54.724533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783010, -0.503559, 0.365135,
		0.417260, -0.860584, -0.292044,
		0.461290, -0.076317, 0.883961,
		37.539745, 42.416069, 54.989723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263142, 41.796528, 54.429741>,  <37.216843, 42.469494, 54.370949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263142, 41.796528, 54.429741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294838, 41.960144, 54.793369>,  <37.313854, 42.058315, 55.011547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294838, 41.960144, 54.793369>,  <37.263142, 41.796528, 54.429741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294838, 41.960144, 54.793369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837860, -0.466766, 0.283055,
		0.540104, -0.784101, 0.305733,
		0.079238, 0.409041, 0.909070,
		37.318611, 42.082855, 55.066090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183804, 41.220741, 54.773567>,  <37.263142, 41.796528, 54.429741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183804, 41.220741, 54.773567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143501, 41.521935, 55.033680>,  <37.119320, 41.702648, 55.189747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143501, 41.521935, 55.033680>,  <37.183804, 41.220741, 54.773567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143501, 41.521935, 55.033680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705987, -0.514648, 0.486538,
		0.701021, -0.410073, 0.583446,
		-0.100753, 0.752979, 0.650286,
		37.113274, 41.747829, 55.228767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242962, 40.914700, 55.408451>,  <37.183804, 41.220741, 54.773567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242962, 40.914700, 55.408451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045029, 41.259148, 55.455120>,  <36.926270, 41.465816, 55.483120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045029, 41.259148, 55.455120>,  <37.242962, 40.914700, 55.408451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045029, 41.259148, 55.455120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726821, -0.483717, 0.487595,
		0.476314, 0.156480, 0.865239,
		-0.494829, 0.861122, 0.116668,
		36.896580, 41.517483, 55.490120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944462, 40.841320, 56.070690>,  <37.242962, 40.914700, 55.408451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944462, 40.841320, 56.070690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748959, 41.156090, 55.920025>,  <36.631657, 41.344952, 55.829628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748959, 41.156090, 55.920025>,  <36.944462, 40.841320, 56.070690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748959, 41.156090, 55.920025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824908, -0.276317, 0.493128,
		0.283975, 0.551730, 0.784189,
		-0.488758, 0.786920, -0.376659,
		36.602333, 41.392166, 55.807026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628960, 41.251163, 56.585026>,  <36.944462, 40.841320, 56.070690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628960, 41.251163, 56.585026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411011, 41.313583, 56.255478>,  <36.280243, 41.351036, 56.057751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411011, 41.313583, 56.255478>,  <36.628960, 41.251163, 56.585026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411011, 41.313583, 56.255478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782372, -0.448105, 0.432547,
		-0.301680, 0.880255, 0.366252,
		-0.544871, 0.156054, -0.823871,
		36.247551, 41.360401, 56.008316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962631, 41.534855, 56.875011>,  <36.628960, 41.251163, 56.585026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962631, 41.534855, 56.875011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898361, 41.434723, 56.493118>,  <35.859798, 41.374645, 56.263981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898361, 41.434723, 56.493118>,  <35.962631, 41.534855, 56.875011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898361, 41.434723, 56.493118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952097, -0.215677, 0.216782,
		-0.260181, 0.943833, -0.203681,
		-0.160677, -0.250326, -0.954736,
		35.850159, 41.359627, 56.206699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242786, 41.748314, 56.652298>,  <35.962631, 41.534855, 56.875011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242786, 41.748314, 56.652298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335388, 41.500107, 56.352600>,  <35.390949, 41.351181, 56.172783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335388, 41.500107, 56.352600>,  <35.242786, 41.748314, 56.652298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335388, 41.500107, 56.352600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932538, -0.360912, 0.010768,
		-0.277093, 0.696204, -0.662208,
		0.231502, -0.620518, -0.749242,
		35.404839, 41.313953, 56.127827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760754, 41.808498, 56.107552>,  <35.242786, 41.748314, 56.652298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760754, 41.808498, 56.107552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900780, 41.435722, 56.069733>,  <34.984795, 41.212055, 56.047043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900780, 41.435722, 56.069733>,  <34.760754, 41.808498, 56.107552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900780, 41.435722, 56.069733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936648, -0.346970, -0.047974,
		0.011905, 0.105348, -0.994364,
		0.350068, -0.931941, -0.094543,
		35.005798, 41.156139, 56.041370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511051, 41.552025, 55.533993>,  <34.760754, 41.808498, 56.107552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511051, 41.552025, 55.533993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608620, 41.212616, 55.721828>,  <34.667160, 41.008972, 55.834530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608620, 41.212616, 55.721828>,  <34.511051, 41.552025, 55.533993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608620, 41.212616, 55.721828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958918, -0.283343, -0.013894,
		0.144845, -0.446911, -0.882774,
		0.243918, -0.848521, 0.469592,
		34.681797, 40.958061, 55.862705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022202, 41.074802, 55.205490>,  <34.511051, 41.552025, 55.533993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022202, 41.074802, 55.205490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167549, 40.894882, 55.531837>,  <34.254757, 40.786930, 55.727646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167549, 40.894882, 55.531837>,  <34.022202, 41.074802, 55.205490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167549, 40.894882, 55.531837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874417, -0.466859, 0.132053,
		0.321499, -0.761393, -0.562956,
		0.363365, -0.449803, 0.815869,
		34.276558, 40.759941, 55.776600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901897, 40.324043, 55.168404>,  <34.022202, 41.074802, 55.205490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901897, 40.324043, 55.168404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965309, 40.379486, 55.559433>,  <34.003357, 40.412754, 55.794052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965309, 40.379486, 55.559433>,  <33.901897, 40.324043, 55.168404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965309, 40.379486, 55.559433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791063, -0.574646, 0.209764,
		0.590836, -0.806578, 0.018551,
		0.158531, 0.138611, 0.977576,
		34.012867, 40.421070, 55.852707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879467, 39.717129, 55.336407>,  <33.901897, 40.324043, 55.168404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879467, 39.717129, 55.336407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802422, 39.938995, 55.660194>,  <33.756195, 40.072117, 55.854465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802422, 39.938995, 55.660194>,  <33.879467, 39.717129, 55.336407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802422, 39.938995, 55.660194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801079, -0.565302, 0.196740,
		0.566720, -0.610552, 0.553221,
		-0.192617, 0.554670, 0.809469,
		33.744637, 40.105396, 55.903034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739174, 39.244125, 55.977455>,  <33.879467, 39.717129, 55.336407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739174, 39.244125, 55.977455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576950, 39.601471, 56.054825>,  <33.479614, 39.815880, 56.101246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576950, 39.601471, 56.054825>,  <33.739174, 39.244125, 55.977455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576950, 39.601471, 56.054825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799346, -0.449270, 0.399001,
		0.443355, 0.007206, 0.896317,
		-0.405564, 0.893367, 0.193426,
		33.455280, 39.869480, 56.112854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388332, 39.187950, 56.591438>,  <33.739174, 39.244125, 55.977455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388332, 39.187950, 56.591438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227242, 39.525269, 56.449085>,  <33.130585, 39.727661, 56.363674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227242, 39.525269, 56.449085>,  <33.388332, 39.187950, 56.591438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227242, 39.525269, 56.449085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902467, -0.300904, 0.308238,
		0.152850, 0.445311, 0.882233,
		-0.402729, 0.843300, -0.355885,
		33.106422, 39.778259, 56.342319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912395, 39.335079, 57.114269>,  <33.388332, 39.187950, 56.591438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912395, 39.335079, 57.114269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803352, 39.552231, 56.796535>,  <32.737926, 39.682522, 56.605896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803352, 39.552231, 56.796535>,  <32.912395, 39.335079, 57.114269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803352, 39.552231, 56.796535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952304, -0.269911, 0.142357,
		-0.137116, 0.795253, 0.590569,
		-0.272611, 0.542882, -0.794331,
		32.721569, 39.715096, 56.558235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436501, 39.810524, 57.332745>,  <32.912395, 39.335079, 57.114269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436501, 39.810524, 57.332745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378731, 39.723557, 56.946609>,  <32.344070, 39.671375, 56.714928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378731, 39.723557, 56.946609>,  <32.436501, 39.810524, 57.332745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378731, 39.723557, 56.946609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980690, -0.098559, 0.168919,
		-0.131869, 0.971089, -0.198991,
		-0.144423, -0.217423, -0.965334,
		32.335403, 39.658329, 56.657009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949610, 40.288719, 57.189610>,  <32.436501, 39.810524, 57.332745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949610, 40.288719, 57.189610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940100, 40.020966, 56.892597>,  <31.934393, 39.860313, 56.714390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940100, 40.020966, 56.892597>,  <31.949610, 40.288719, 57.189610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940100, 40.020966, 56.892597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999176, -0.008514, 0.039670,
		-0.032877, 0.742864, -0.668634,
		-0.023776, -0.669388, -0.742532,
		31.932966, 39.820148, 56.669838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498835, 40.511566, 56.670795>,  <31.949610, 40.288719, 57.189610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498835, 40.511566, 56.670795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541788, 40.119598, 56.603592>,  <31.567560, 39.884418, 56.563271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541788, 40.119598, 56.603592>,  <31.498835, 40.511566, 56.670795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541788, 40.119598, 56.603592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986728, -0.125745, 0.102743,
		-0.121806, 0.154742, -0.980417,
		0.107384, -0.979920, -0.168005,
		31.574003, 39.825623, 56.553188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025095, 40.299416, 56.162315>,  <31.498835, 40.511566, 56.670795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025095, 40.299416, 56.162315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089363, 39.976074, 56.388855>,  <31.127924, 39.782070, 56.524780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089363, 39.976074, 56.388855>,  <31.025095, 40.299416, 56.162315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089363, 39.976074, 56.388855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976163, -0.045312, 0.212255,
		-0.145914, -0.586953, -0.796363,
		0.160668, -0.808352, 0.566351,
		31.137564, 39.733570, 56.558762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348928, 40.369263, 56.690548>,  <31.025095, 40.299416, 56.162315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348928, 40.369263, 56.690548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997410, 40.535408, 56.596573>,  <29.786499, 40.635094, 56.540188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997410, 40.535408, 56.596573>,  <30.348928, 40.369263, 56.690548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997410, 40.535408, 56.596573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416040, 0.425736, -0.803530,
		-0.233734, -0.803880, -0.546941,
		-0.878794, 0.415362, -0.234937,
		29.733772, 40.660015, 56.526093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310944, 40.080647, 56.061935>,  <30.348928, 40.369263, 56.690548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310944, 40.080647, 56.061935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127615, 40.431496, 56.119331>,  <30.017618, 40.642006, 56.153767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127615, 40.431496, 56.119331>,  <30.310944, 40.080647, 56.061935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127615, 40.431496, 56.119331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705841, 0.457317, -0.540971,
		-0.540120, -0.146659, -0.828711,
		-0.458322, 0.877127, 0.143488,
		29.990118, 40.694633, 56.162376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457848, 40.530376, 55.491001>,  <30.310944, 40.080647, 56.061935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457848, 40.530376, 55.491001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304493, 40.817833, 55.723061>,  <30.212481, 40.990307, 55.862297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304493, 40.817833, 55.723061>,  <30.457848, 40.530376, 55.491001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304493, 40.817833, 55.723061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641329, 0.659158, -0.392692,
		-0.664614, 0.221512, -0.713597,
		-0.383387, 0.718639, 0.580148,
		30.189476, 41.033424, 55.897106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293253, 41.069172, 55.050251>,  <30.457848, 40.530376, 55.491001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293253, 41.069172, 55.050251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337875, 41.253929, 55.402206>,  <30.364649, 41.364784, 55.613380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337875, 41.253929, 55.402206>,  <30.293253, 41.069172, 55.050251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337875, 41.253929, 55.402206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645933, 0.639165, -0.417420,
		-0.755199, 0.614917, -0.227048,
		0.111558, 0.461893, 0.879892,
		30.371344, 41.392498, 55.666176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224382, 41.809998, 54.966801>,  <30.293253, 41.069172, 55.050251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224382, 41.809998, 54.966801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448988, 41.726608, 55.287109>,  <30.583752, 41.676575, 55.479294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448988, 41.726608, 55.287109>,  <30.224382, 41.809998, 54.966801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448988, 41.726608, 55.287109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727349, 0.585782, -0.357522,
		-0.394543, 0.783196, 0.480561,
		0.561514, -0.208478, 0.800774,
		30.617443, 41.664066, 55.527340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525312, 42.393642, 55.023151>,  <30.224382, 41.809998, 54.966801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525312, 42.393642, 55.023151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755291, 42.160736, 55.253075>,  <30.893278, 42.020992, 55.391029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755291, 42.160736, 55.253075>,  <30.525312, 42.393642, 55.023151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755291, 42.160736, 55.253075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793735, 0.567410, -0.219161,
		-0.198544, 0.582253, 0.788392,
		0.574948, -0.582261, 0.574810,
		30.927776, 41.986057, 55.425518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016228, 42.761784, 55.289906>,  <30.525312, 42.393642, 55.023151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016228, 42.761784, 55.289906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180439, 42.402771, 55.354275>,  <31.278967, 42.187363, 55.392895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180439, 42.402771, 55.354275>,  <31.016228, 42.761784, 55.289906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180439, 42.402771, 55.354275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897335, 0.366296, -0.246207,
		0.162035, 0.245474, 0.955765,
		0.410530, -0.897535, 0.160920,
		31.303598, 42.133511, 55.402550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672840, 42.856144, 55.752846>,  <31.016228, 42.761784, 55.289906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672840, 42.856144, 55.752846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698675, 42.515556, 55.544678>,  <31.714176, 42.311203, 55.419777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698675, 42.515556, 55.544678>,  <31.672840, 42.856144, 55.752846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698675, 42.515556, 55.544678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978006, 0.157653, -0.136564,
		0.198325, -0.500153, 0.842920,
		0.064586, -0.851465, -0.520420,
		31.718050, 42.260117, 55.388554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312279, 42.521732, 55.941936>,  <31.672840, 42.856144, 55.752846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312279, 42.521732, 55.941936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227699, 42.332779, 55.599674>,  <32.176952, 42.219406, 55.394318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227699, 42.332779, 55.599674>,  <32.312279, 42.521732, 55.941936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227699, 42.332779, 55.599674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946868, 0.118064, -0.299167,
		0.242343, -0.873451, 0.422318,
		-0.211447, -0.472381, -0.855655,
		32.164265, 42.191063, 55.342979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831871, 42.058540, 55.797031>,  <32.312279, 42.521732, 55.941936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831871, 42.058540, 55.797031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678810, 42.076309, 55.427902>,  <32.586971, 42.086971, 55.206425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678810, 42.076309, 55.427902>,  <32.831871, 42.058540, 55.797031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678810, 42.076309, 55.427902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923764, 0.034918, -0.381366,
		0.015283, -0.998402, -0.054394,
		-0.382656, 0.044419, -0.922822,
		32.564014, 42.089634, 55.151054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282055, 41.757870, 55.319473>,  <32.831871, 42.058540, 55.797031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282055, 41.757870, 55.319473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051434, 41.968597, 55.069660>,  <32.913059, 42.095036, 54.919773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051434, 41.968597, 55.069660>,  <33.282055, 41.757870, 55.319473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051434, 41.968597, 55.069660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811815, 0.282922, -0.510794,
		-0.092402, -0.801508, -0.590802,
		-0.576557, 0.526820, -0.624534,
		32.878468, 42.126644, 54.882301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529350, 41.654213, 54.611565>,  <33.282055, 41.757870, 55.319473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529350, 41.654213, 54.611565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339638, 42.005836, 54.592339>,  <33.225811, 42.216812, 54.580803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339638, 42.005836, 54.592339>,  <33.529350, 41.654213, 54.611565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339638, 42.005836, 54.592339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859328, 0.450393, -0.242283,
		-0.191331, -0.156219, -0.969014,
		-0.474286, 0.879058, -0.048069,
		33.197353, 42.269554, 54.577919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711185, 42.069187, 54.029957>,  <33.529350, 41.654213, 54.611565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711185, 42.069187, 54.029957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610161, 42.345016, 54.301456>,  <33.549545, 42.510513, 54.464355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610161, 42.345016, 54.301456>,  <33.711185, 42.069187, 54.029957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610161, 42.345016, 54.301456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754747, 0.579351, -0.307750,
		-0.605449, 0.434555, -0.666778,
		-0.252564, 0.689576, 0.678746,
		33.534393, 42.551888, 54.505081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693012, 42.704235, 53.648476>,  <33.711185, 42.069187, 54.029957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693012, 42.704235, 53.648476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713142, 42.815155, 54.032261>,  <33.725220, 42.881706, 54.262531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713142, 42.815155, 54.032261>,  <33.693012, 42.704235, 53.648476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713142, 42.815155, 54.032261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845959, 0.498805, -0.188537,
		-0.530867, 0.821156, -0.209485,
		0.050326, 0.277303, 0.959463,
		33.728241, 42.898346, 54.320099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771652, 43.425018, 53.670059>,  <33.693012, 42.704235, 53.648476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771652, 43.425018, 53.670059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921539, 43.317169, 54.024887>,  <34.011471, 43.252460, 54.237782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921539, 43.317169, 54.024887>,  <33.771652, 43.425018, 53.670059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921539, 43.317169, 54.024887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785238, 0.600991, -0.149033,
		-0.492935, 0.752404, 0.436925,
		0.374721, -0.269627, 0.887066,
		34.033955, 43.236282, 54.291008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121361, 44.005527, 53.940224>,  <33.771652, 43.425018, 53.670059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121361, 44.005527, 53.940224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270119, 43.712082, 54.167736>,  <34.359375, 43.536015, 54.304241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270119, 43.712082, 54.167736>,  <34.121361, 44.005527, 53.940224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270119, 43.712082, 54.167736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896800, 0.442143, -0.016095,
		-0.239673, 0.516064, 0.822335,
		0.371895, -0.733612, 0.568776,
		34.381687, 43.491997, 54.338367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556969, 44.353676, 54.430786>,  <34.121361, 44.005527, 53.940224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556969, 44.353676, 54.430786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685684, 43.974998, 54.424725>,  <34.762913, 43.747791, 54.421089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685684, 43.974998, 54.424725>,  <34.556969, 44.353676, 54.430786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685684, 43.974998, 54.424725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910084, 0.313679, -0.270838,
		0.261152, 0.073363, 0.962506,
		0.321787, -0.946691, -0.015152,
		34.782219, 43.690990, 54.420177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174267, 44.365505, 54.643593>,  <34.556969, 44.353676, 54.430786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174267, 44.365505, 54.643593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206905, 44.009727, 54.463715>,  <35.226490, 43.796261, 54.355785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206905, 44.009727, 54.463715>,  <35.174267, 44.365505, 54.643593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206905, 44.009727, 54.463715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826471, 0.312564, -0.468241,
		0.557035, -0.333455, 0.760605,
		0.081600, -0.889444, -0.449700,
		35.231384, 43.742893, 54.328804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874641, 44.232597, 54.785645>,  <35.174267, 44.365505, 54.643593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874641, 44.232597, 54.785645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753365, 43.980522, 54.499725>,  <35.680599, 43.829277, 54.328175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753365, 43.980522, 54.499725>,  <35.874641, 44.232597, 54.785645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753365, 43.980522, 54.499725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868660, 0.125633, -0.479214,
		0.391797, -0.766211, 0.509328,
		-0.303191, -0.630188, -0.714800,
		35.662407, 43.791466, 54.285286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432201, 43.822704, 54.741722>,  <35.874641, 44.232597, 54.785645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432201, 43.822704, 54.741722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246868, 43.839043, 54.387627>,  <36.135666, 43.848846, 54.175167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246868, 43.839043, 54.387627>,  <36.432201, 43.822704, 54.741722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246868, 43.839043, 54.387627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863517, 0.245293, -0.440647,
		0.199144, -0.968588, -0.148926,
		-0.463336, 0.040848, -0.885241,
		36.107868, 43.851295, 54.122055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939491, 43.813274, 54.353310>,  <36.432201, 43.822704, 54.741722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939491, 43.813274, 54.353310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672878, 43.880104, 54.062706>,  <36.512909, 43.920204, 53.888344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672878, 43.880104, 54.062706>,  <36.939491, 43.813274, 54.353310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672878, 43.880104, 54.062706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739612, 0.270177, -0.616424,
		0.093294, -0.948203, -0.303657,
		-0.666536, 0.167079, -0.726508,
		36.472916, 43.930229, 53.844753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221203, 43.390354, 53.714085>,  <36.939491, 43.813274, 54.353310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221203, 43.390354, 53.714085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976902, 43.696014, 53.631081>,  <36.830322, 43.879410, 53.581280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976902, 43.696014, 53.631081>,  <37.221203, 43.390354, 53.714085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976902, 43.696014, 53.631081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603280, 0.279327, -0.747014,
		-0.512866, -0.581426, -0.631595,
		-0.610755, 0.764147, -0.207506,
		36.793674, 43.925259, 53.568829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143135, 43.365784, 53.064018>,  <37.221203, 43.390354, 53.714085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143135, 43.365784, 53.064018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083260, 43.751213, 53.152668>,  <37.047337, 43.982471, 53.205860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083260, 43.751213, 53.152668>,  <37.143135, 43.365784, 53.064018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083260, 43.751213, 53.152668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756857, 0.255900, -0.601401,
		-0.636209, 0.077718, -0.767592,
		-0.149687, 0.963574, 0.221628,
		37.038353, 44.040287, 53.219158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415707, 43.799004, 52.479755>,  <37.143135, 43.365784, 53.064018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415707, 43.799004, 52.479755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349747, 44.079865, 52.756824>,  <37.310173, 44.248379, 52.923065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349747, 44.079865, 52.756824>,  <37.415707, 43.799004, 52.479755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349747, 44.079865, 52.756824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650837, 0.605144, -0.458488,
		-0.741094, 0.375215, -0.556771,
		-0.164895, 0.702150, 0.692673,
		37.300278, 44.290508, 52.964626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162621, 44.392490, 52.113140>,  <37.415707, 43.799004, 52.479755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162621, 44.392490, 52.113140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310856, 44.528931, 52.458698>,  <37.399796, 44.610794, 52.666035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310856, 44.528931, 52.458698>,  <37.162621, 44.392490, 52.113140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310856, 44.528931, 52.458698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712973, 0.491638, -0.499961,
		-0.595261, 0.801214, -0.061000,
		0.370586, 0.341099, 0.863897,
		37.422031, 44.631260, 52.717869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291645, 45.140087, 52.083023>,  <37.162621, 44.392490, 52.113140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291645, 45.140087, 52.083023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522118, 45.038773, 52.393856>,  <37.660400, 44.977985, 52.580357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522118, 45.038773, 52.393856>,  <37.291645, 45.140087, 52.083023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522118, 45.038773, 52.393856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758519, 0.519817, -0.392987,
		-0.304405, 0.815866, 0.491629,
		0.576182, -0.253283, 0.777086,
		37.694973, 44.962788, 52.626980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326031, 45.705204, 52.477737>,  <37.291645, 45.140087, 52.083023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326031, 45.705204, 52.477737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630749, 45.463776, 52.571865>,  <37.813580, 45.318920, 52.628342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630749, 45.463776, 52.571865>,  <37.326031, 45.705204, 52.477737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630749, 45.463776, 52.571865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643115, 0.748298, -0.162645,
		-0.077921, 0.275239, 0.958213,
		0.761795, -0.603568, 0.235319,
		37.859287, 45.282707, 52.642460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812954, 46.163479, 52.813923>,  <37.326031, 45.705204, 52.477737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812954, 46.163479, 52.813923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025764, 45.844086, 52.701233>,  <38.153450, 45.652451, 52.633617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025764, 45.844086, 52.701233>,  <37.812954, 46.163479, 52.813923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025764, 45.844086, 52.701233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757038, 0.597602, -0.264132,
		0.379268, -0.072755, 0.922422,
		0.532024, -0.798485, -0.281729,
		38.185371, 45.604542, 52.616714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527508, 46.326248, 53.083385>,  <37.812954, 46.163479, 52.813923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527508, 46.326248, 53.083385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584526, 46.064308, 52.786507>,  <38.618736, 45.907146, 52.608379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584526, 46.064308, 52.786507>,  <38.527508, 46.326248, 53.083385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584526, 46.064308, 52.786507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730110, 0.575862, -0.367861,
		0.668295, -0.489447, 0.560199,
		0.142548, -0.654847, -0.742196,
		38.627289, 45.867855, 52.563847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284878, 46.125992, 53.114429>,  <38.527508, 46.326248, 53.083385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284878, 46.125992, 53.114429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141373, 46.056419, 52.747597>,  <39.055267, 46.014675, 52.527496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141373, 46.056419, 52.747597>,  <39.284878, 46.125992, 53.114429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141373, 46.056419, 52.747597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740216, 0.545529, -0.393038,
		0.568654, -0.819846, -0.066974,
		-0.358767, -0.173927, -0.917080,
		39.033741, 46.004242, 52.472473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898735, 46.056465, 52.724991>,  <39.284878, 46.125992, 53.114429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898735, 46.056465, 52.724991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607048, 46.122871, 52.459457>,  <39.432037, 46.162716, 52.300137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607048, 46.122871, 52.459457>,  <39.898735, 46.056465, 52.724991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607048, 46.122871, 52.459457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634917, 0.525943, -0.565919,
		0.255188, -0.834160, -0.488934,
		-0.729219, 0.166017, -0.663836,
		39.388283, 46.172676, 52.260307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254341, 45.901363, 52.021008>,  <39.898735, 46.056465, 52.724991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254341, 45.901363, 52.021008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916996, 46.095451, 51.928650>,  <39.714588, 46.211903, 51.873238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916996, 46.095451, 51.928650>,  <40.254341, 45.901363, 52.021008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916996, 46.095451, 51.928650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494854, 0.533828, -0.685673,
		-0.209443, -0.692526, -0.690320,
		-0.843358, 0.485217, -0.230892,
		39.663990, 46.241016, 51.859383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155472, 45.826366, 51.256397>,  <40.254341, 45.901363, 52.021008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155472, 45.826366, 51.256397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947449, 46.141220, 51.389034>,  <39.822636, 46.330132, 51.468616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947449, 46.141220, 51.389034>,  <40.155472, 45.826366, 51.256397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947449, 46.141220, 51.389034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398176, 0.566884, -0.721178,
		-0.755640, -0.243024, -0.608233,
		-0.520061, 0.787135, 0.331594,
		39.791431, 46.377361, 51.488514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025234, 46.255787, 50.731441>,  <40.155472, 45.826366, 51.256397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025234, 46.255787, 50.731441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939880, 46.533096, 51.006783>,  <39.888668, 46.699482, 51.171989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939880, 46.533096, 51.006783>,  <40.025234, 46.255787, 50.731441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939880, 46.533096, 51.006783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447288, 0.695731, -0.562043,
		-0.868561, 0.187960, -0.458554,
		-0.213389, 0.693275, 0.688357,
		39.875862, 46.741077, 51.213291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619129, 46.809589, 50.375530>,  <40.025234, 46.255787, 50.731441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619129, 46.809589, 50.375530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812210, 46.943314, 50.699318>,  <39.928059, 47.023548, 50.893589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812210, 46.943314, 50.699318>,  <39.619129, 46.809589, 50.375530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812210, 46.943314, 50.699318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418571, 0.723813, -0.548537,
		-0.769281, 0.603601, 0.209457,
		0.482705, 0.334307, 0.809466,
		39.957020, 47.043606, 50.942158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488430, 47.505306, 50.287483>,  <39.619129, 46.809589, 50.375530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488430, 47.505306, 50.287483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776100, 47.496399, 50.565269>,  <39.948704, 47.491055, 50.731941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776100, 47.496399, 50.565269>,  <39.488430, 47.505306, 50.287483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776100, 47.496399, 50.565269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463547, 0.759925, -0.455673,
		-0.517597, 0.649629, 0.556844,
		0.719178, -0.022269, 0.694468,
		39.991856, 47.489719, 50.773609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603870, 48.239300, 50.645420>,  <39.488430, 47.505306, 50.287483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603870, 48.239300, 50.645420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925232, 48.001305, 50.654617>,  <40.118050, 47.858509, 50.660137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925232, 48.001305, 50.654617>,  <39.603870, 48.239300, 50.645420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925232, 48.001305, 50.654617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536397, 0.706451, -0.461742,
		0.258483, 0.383303, 0.886716,
		0.803409, -0.594984, 0.022996,
		40.166256, 47.822811, 50.661514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125572, 48.735512, 50.671234>,  <39.603870, 48.239300, 50.645420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125572, 48.735512, 50.671234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331039, 48.407387, 50.570648>,  <40.454319, 48.210514, 50.510296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331039, 48.407387, 50.570648>,  <40.125572, 48.735512, 50.671234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331039, 48.407387, 50.570648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652295, 0.563767, -0.506634,
		0.557363, 0.096215, 0.824675,
		0.513671, -0.820310, -0.251463,
		40.485142, 48.161293, 50.495209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850567, 48.842548, 50.820107>,  <40.125572, 48.735512, 50.671234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850567, 48.842548, 50.820107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831100, 48.564491, 50.533218>,  <40.819420, 48.397655, 50.361084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831100, 48.564491, 50.533218>,  <40.850567, 48.842548, 50.820107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831100, 48.564491, 50.533218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711215, 0.480053, -0.513539,
		0.701288, -0.535092, 0.471032,
		-0.048670, -0.695144, -0.717221,
		40.816498, 48.355949, 50.318050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526215, 48.655830, 50.624390>,  <40.850567, 48.842548, 50.820107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526215, 48.655830, 50.624390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330906, 48.571327, 50.285698>,  <41.213718, 48.520626, 50.082481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330906, 48.571327, 50.285698>,  <41.526215, 48.655830, 50.624390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330906, 48.571327, 50.285698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547308, 0.681602, -0.485668,
		0.679709, -0.700575, -0.217233,
		-0.488313, -0.211219, -0.846721,
		41.184422, 48.507950, 50.031677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.173172, 41.268326, 51.158928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.275131, 40.918823, 50.993240>,  <33.336308, 40.709122, 50.893829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.275131, 40.918823, 50.993240>,  <33.173172, 41.268326, 51.158928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275131, 40.918823, 50.993240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868142, 0.395445, -0.299922,
		0.425858, -0.283146, 0.859345,
		0.254902, -0.873757, -0.414214,
		33.351601, 40.656696, 50.868977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838692, 41.187996, 51.324711>,  <33.173172, 41.268326, 51.158928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838692, 41.187996, 51.324711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.770699, 40.955078, 51.006706>,  <33.729904, 40.815327, 50.815903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.770699, 40.955078, 51.006706>,  <33.838692, 41.187996, 51.324711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770699, 40.955078, 51.006706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774920, 0.419400, -0.472868,
		0.608775, -0.696446, 0.379942,
		-0.169979, -0.582295, -0.795010,
		33.719704, 40.780392, 50.768204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514267, 40.979420, 51.151012>,  <33.838692, 41.187996, 51.324711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514267, 40.979420, 51.151012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.280769, 40.898247, 50.836548>,  <34.140671, 40.849541, 50.647869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.280769, 40.898247, 50.836548>,  <34.514267, 40.979420, 51.151012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280769, 40.898247, 50.836548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700364, 0.363999, -0.613999,
		0.410767, -0.909022, -0.070353,
		-0.583746, -0.202938, -0.786165,
		34.105644, 40.837364, 50.600697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980576, 40.757774, 50.722828>,  <34.514267, 40.979420, 51.151012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980576, 40.757774, 50.722828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.682503, 40.825714, 50.464882>,  <34.503658, 40.866478, 50.310116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.682503, 40.825714, 50.464882>,  <34.980576, 40.757774, 50.722828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682503, 40.825714, 50.464882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654837, 0.369146, -0.659484,
		0.126038, -0.913720, -0.386304,
		-0.745186, 0.169846, -0.644864,
		34.458946, 40.876667, 50.271423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230553, 40.547073, 50.043472>,  <34.980576, 40.757774, 50.722828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230553, 40.547073, 50.043472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927841, 40.799492, 49.975269>,  <34.746216, 40.950943, 49.934349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927841, 40.799492, 49.975269>,  <35.230553, 40.547073, 50.043472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927841, 40.799492, 49.975269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573674, 0.516119, -0.636018,
		-0.313355, -0.579139, -0.752600,
		-0.756774, 0.631047, -0.170509,
		34.700809, 40.988808, 49.924118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128632, 40.632225, 49.315559>,  <35.230553, 40.547073, 50.043472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128632, 40.632225, 49.315559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.970451, 40.971283, 49.457047>,  <34.875542, 41.174717, 49.541939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.970451, 40.971283, 49.457047>,  <35.128632, 40.632225, 49.315559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970451, 40.971283, 49.457047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551200, 0.527067, -0.646822,
		-0.734709, -0.060817, -0.675651,
		-0.395452, 0.847645, 0.353718,
		34.851814, 41.225574, 49.563164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928200, 40.989902, 48.720325>,  <35.128632, 40.632225, 49.315559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928200, 40.989902, 48.720325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.942493, 41.277351, 48.998119>,  <34.951069, 41.449821, 49.164795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.942493, 41.277351, 48.998119>,  <34.928200, 40.989902, 48.720325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942493, 41.277351, 48.998119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527446, 0.576695, -0.623878,
		-0.848837, 0.388596, -0.358425,
		0.035735, 0.718621, 0.694484,
		34.953213, 41.492939, 49.206463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827824, 41.649460, 48.318928>,  <34.928200, 40.989902, 48.720325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827824, 41.649460, 48.318928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.967537, 41.766380, 48.675034>,  <35.051365, 41.836533, 48.888695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.967537, 41.766380, 48.675034>,  <34.827824, 41.649460, 48.318928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967537, 41.766380, 48.675034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541457, 0.712454, -0.446356,
		-0.764740, 0.637941, 0.090577,
		0.349280, 0.292303, 0.890260,
		35.072323, 41.854073, 48.942112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742130, 42.389187, 48.410320>,  <34.827824, 41.649460, 48.318928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742130, 42.389187, 48.410320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.051651, 42.301353, 48.647980>,  <35.237362, 42.248653, 48.790577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.051651, 42.301353, 48.647980>,  <34.742130, 42.389187, 48.410320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051651, 42.301353, 48.647980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580306, 0.621753, -0.525992,
		-0.253918, 0.751803, 0.608537,
		0.773802, -0.219579, 0.594151,
		35.283791, 42.235481, 48.826225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222088, 43.033203, 48.392323>,  <34.742130, 42.389187, 48.410320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222088, 43.033203, 48.392323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.460663, 42.776634, 48.585335>,  <35.603809, 42.622692, 48.701141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.460663, 42.776634, 48.585335>,  <35.222088, 43.033203, 48.392323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460663, 42.776634, 48.585335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802657, 0.475664, -0.359842,
		0.001285, 0.601933, 0.798545,
		0.596440, -0.641420, 0.482534,
		35.639595, 42.584209, 48.730095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607513, 43.422653, 48.851646>,  <35.222088, 43.033203, 48.392323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607513, 43.422653, 48.851646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.824951, 43.092422, 48.791092>,  <35.955414, 42.894283, 48.754757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.824951, 43.092422, 48.791092>,  <35.607513, 43.422653, 48.851646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824951, 43.092422, 48.791092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805728, 0.563801, -0.181470,
		0.235171, -0.023332, 0.971674,
		0.543597, -0.825581, -0.151389,
		35.988029, 42.844749, 48.745674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225456, 43.609314, 49.101089>,  <35.607513, 43.422653, 48.851646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225456, 43.609314, 49.101089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313602, 43.291847, 48.874275>,  <36.366489, 43.101368, 48.738186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313602, 43.291847, 48.874275>,  <36.225456, 43.609314, 49.101089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313602, 43.291847, 48.874275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898069, 0.391958, -0.199601,
		0.380671, -0.465252, 0.799143,
		0.220366, -0.793668, -0.567036,
		36.379711, 43.053745, 48.704163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903767, 43.378059, 49.278290>,  <36.225456, 43.609314, 49.101089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903767, 43.378059, 49.278290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851440, 43.213249, 48.917595>,  <36.820045, 43.114365, 48.701180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851440, 43.213249, 48.917595>,  <36.903767, 43.378059, 49.278290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851440, 43.213249, 48.917595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904102, 0.323636, -0.279034,
		0.406802, -0.851760, 0.330177,
		-0.130813, -0.412025, -0.901733,
		36.812195, 43.089642, 48.647076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484886, 42.936890, 49.172134>,  <36.903767, 43.378059, 49.278290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484886, 42.936890, 49.172134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302078, 43.047173, 48.833874>,  <37.192394, 43.113342, 48.630917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302078, 43.047173, 48.833874>,  <37.484886, 42.936890, 49.172134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302078, 43.047173, 48.833874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828340, 0.478273, -0.291731,
		0.324020, -0.833812, -0.446955,
		-0.457015, 0.275704, -0.845650,
		37.164974, 43.129883, 48.580177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898239, 42.634945, 48.597702>,  <37.484886, 42.936890, 49.172134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898239, 42.634945, 48.597702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.681908, 42.923180, 48.424145>,  <37.552109, 43.096119, 48.320011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.681908, 42.923180, 48.424145>,  <37.898239, 42.634945, 48.597702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681908, 42.923180, 48.424145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833263, 0.388567, -0.393306,
		-0.114814, -0.574257, -0.810584,
		-0.540825, 0.720587, -0.433894,
		37.519661, 43.139355, 48.293976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143143, 42.701683, 47.971542>,  <37.898239, 42.634945, 48.597702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143143, 42.701683, 47.971542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980431, 43.055305, 48.063610>,  <37.882801, 43.267479, 48.118851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980431, 43.055305, 48.063610>,  <38.143143, 42.701683, 47.971542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980431, 43.055305, 48.063610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863699, 0.454263, -0.218333,
		-0.297577, 0.109986, -0.948341,
		-0.406783, 0.884052, 0.230173,
		37.858395, 43.320522, 48.132664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458553, 43.140999, 47.405602>,  <38.143143, 42.701683, 47.971542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458553, 43.140999, 47.405602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294563, 43.375420, 47.685162>,  <38.196171, 43.516071, 47.852898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294563, 43.375420, 47.685162>,  <38.458553, 43.140999, 47.405602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294563, 43.375420, 47.685162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701234, 0.692523, -0.169361,
		-0.583262, 0.420662, -0.694873,
		-0.409971, 0.586051, 0.698905,
		38.171574, 43.551235, 47.894833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576225, 43.808739, 47.215336>,  <38.458553, 43.140999, 47.405602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576225, 43.808739, 47.215336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.472927, 43.885223, 47.594124>,  <38.410946, 43.931114, 47.821396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.472927, 43.885223, 47.594124>,  <38.576225, 43.808739, 47.215336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472927, 43.885223, 47.594124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671124, 0.740588, 0.033484,
		-0.694910, 0.644180, -0.319582,
		-0.258249, 0.191211, 0.946967,
		38.395451, 43.942585, 47.878216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584778, 44.529140, 47.248188>,  <38.576225, 43.808739, 47.215336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584778, 44.529140, 47.248188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584591, 44.425903, 47.634636>,  <38.584480, 44.363960, 47.866505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584591, 44.425903, 47.634636>,  <38.584778, 44.529140, 47.248188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584591, 44.425903, 47.634636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615987, 0.760992, 0.203596,
		-0.787756, 0.595212, 0.158628,
		-0.000469, -0.258097, 0.966119,
		38.584450, 44.348473, 47.924473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610279, 45.103603, 47.582668>,  <38.584778, 44.529140, 47.248188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610279, 45.103603, 47.582668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761757, 44.837914, 47.840473>,  <38.852642, 44.678497, 47.995155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761757, 44.837914, 47.840473>,  <38.610279, 45.103603, 47.582668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761757, 44.837914, 47.840473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682702, 0.670664, 0.290047,
		-0.624908, 0.330172, 0.707444,
		0.378692, -0.664226, 0.644512,
		38.875366, 44.638645, 48.033825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776337, 45.481884, 48.141071>,  <38.610279, 45.103603, 47.582668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776337, 45.481884, 48.141071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.006500, 45.161026, 48.204914>,  <39.144600, 44.968513, 48.243221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.006500, 45.161026, 48.204914>,  <38.776337, 45.481884, 48.141071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006500, 45.161026, 48.204914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733562, 0.592469, 0.332969,
		-0.361652, -0.074510, 0.929331,
		0.575409, -0.802140, 0.159610,
		39.179123, 44.920383, 48.252796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003384, 45.556126, 48.836246>,  <38.776337, 45.481884, 48.141071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003384, 45.556126, 48.836246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270741, 45.329300, 48.643707>,  <39.431152, 45.193203, 48.528183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270741, 45.329300, 48.643707>,  <39.003384, 45.556126, 48.836246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270741, 45.329300, 48.643707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743059, 0.538147, 0.397821,
		0.033445, -0.623568, 0.781054,
		0.668390, -0.567064, -0.481346,
		39.471256, 45.159180, 48.499302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446922, 45.977634, 48.538300>,  <39.003384, 45.556126, 48.836246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446922, 45.977634, 48.538300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333199, 46.360008, 48.509007>,  <39.264965, 46.589432, 48.491432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333199, 46.360008, 48.509007>,  <39.446922, 45.977634, 48.538300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333199, 46.360008, 48.509007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909448, -0.244729, 0.336173,
		0.303436, 0.162179, 0.938949,
		-0.284308, 0.955932, -0.073234,
		39.247906, 46.646790, 48.487038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201057, 46.245335, 49.262398>,  <39.446922, 45.977634, 48.538300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201057, 46.245335, 49.262398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.036812, 46.457321, 48.965607>,  <38.938263, 46.584511, 48.787533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.036812, 46.457321, 48.965607>,  <39.201057, 46.245335, 49.262398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036812, 46.457321, 48.965607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908133, -0.164695, 0.384928,
		0.081798, 0.831873, 0.548904,
		-0.410613, 0.529964, -0.741980,
		38.913628, 46.616310, 48.743011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719437, 46.487511, 49.625969>,  <39.201057, 46.245335, 49.262398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719437, 46.487511, 49.625969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587093, 46.570984, 49.257843>,  <38.507687, 46.621067, 49.036968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587093, 46.570984, 49.257843>,  <38.719437, 46.487511, 49.625969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587093, 46.570984, 49.257843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919455, -0.290839, 0.264604,
		-0.212444, 0.933736, 0.288107,
		-0.330863, 0.208688, -0.920315,
		38.487835, 46.633591, 48.981750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218899, 46.956779, 49.616600>,  <38.719437, 46.487511, 49.625969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218899, 46.956779, 49.616600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.136528, 46.742592, 49.288975>,  <38.087105, 46.614079, 49.092400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.136528, 46.742592, 49.288975>,  <38.218899, 46.956779, 49.616600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136528, 46.742592, 49.288975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891246, -0.242997, 0.382928,
		-0.404076, 0.808844, -0.427193,
		-0.205922, -0.535466, -0.819068,
		38.074753, 46.581951, 49.043255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535480, 47.101089, 49.505577>,  <38.218899, 46.956779, 49.616600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535480, 47.101089, 49.505577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596142, 46.778282, 49.277290>,  <37.632538, 46.584599, 49.140320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596142, 46.778282, 49.277290>,  <37.535480, 47.101089, 49.505577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596142, 46.778282, 49.277290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914320, -0.333898, 0.229196,
		-0.375527, 0.487059, -0.788513,
		0.151651, -0.807023, -0.570716,
		37.641636, 46.536175, 49.106075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906178, 47.003777, 49.140217>,  <37.535480, 47.101089, 49.505577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906178, 47.003777, 49.140217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073982, 46.643028, 49.098957>,  <37.174664, 46.426579, 49.074200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073982, 46.643028, 49.098957>,  <36.906178, 47.003777, 49.140217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073982, 46.643028, 49.098957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891913, -0.430656, 0.137939,
		-0.168825, 0.034133, -0.985055,
		0.419512, -0.901870, -0.103149,
		37.199837, 46.372467, 49.068012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379215, 46.586422, 48.708164>,  <36.906178, 47.003777, 49.140217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379215, 46.586422, 48.708164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.627483, 46.323006, 48.878384>,  <36.776443, 46.164955, 48.980515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.627483, 46.323006, 48.878384>,  <36.379215, 46.586422, 48.708164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627483, 46.323006, 48.878384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756705, -0.645245, 0.105150,
		0.205339, -0.387280, -0.898805,
		0.620672, -0.658539, 0.425550,
		36.813686, 46.125443, 49.006050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112942, 45.902927, 48.466358>,  <36.379215, 46.586422, 48.708164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112942, 45.902927, 48.466358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333652, 45.834038, 48.792767>,  <36.466080, 45.792702, 48.988609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333652, 45.834038, 48.792767>,  <36.112942, 45.902927, 48.466358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333652, 45.834038, 48.792767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733755, -0.565332, 0.376832,
		0.396419, -0.806683, -0.438309,
		0.551775, -0.172228, 0.816016,
		36.499184, 45.782368, 49.037571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074600, 45.113522, 48.620510>,  <36.112942, 45.902927, 48.466358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074600, 45.113522, 48.620510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.204899, 45.272583, 48.963615>,  <36.283077, 45.368019, 49.169479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.204899, 45.272583, 48.963615>,  <36.074600, 45.113522, 48.620510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204899, 45.272583, 48.963615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668427, -0.544769, 0.506391,
		0.668653, -0.738307, 0.088349,
		0.325742, 0.397655, 0.857766,
		36.302620, 45.391880, 49.220943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212566, 44.538521, 49.045086>,  <36.074600, 45.113522, 48.620510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212566, 44.538521, 49.045086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184166, 44.832367, 49.314987>,  <36.167126, 45.008675, 49.476929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184166, 44.832367, 49.314987>,  <36.212566, 44.538521, 49.045086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184166, 44.832367, 49.314987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544528, -0.595317, 0.590835,
		0.835732, -0.325474, 0.442288,
		-0.071000, 0.734618, 0.674755,
		36.162865, 45.052753, 49.517414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357956, 44.239403, 49.690025>,  <36.212566, 44.538521, 49.045086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357956, 44.239403, 49.690025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.142136, 44.569809, 49.755241>,  <36.012646, 44.768055, 49.794373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.142136, 44.569809, 49.755241>,  <36.357956, 44.239403, 49.690025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142136, 44.569809, 49.755241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627492, -0.523615, 0.576265,
		0.561376, 0.208615, 0.800835,
		-0.539546, 0.826019, 0.163040,
		35.980270, 44.817616, 49.804153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226540, 44.265247, 50.376198>,  <36.357956, 44.239403, 49.690025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226540, 44.265247, 50.376198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959045, 44.519905, 50.222591>,  <35.798550, 44.672699, 50.130428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959045, 44.519905, 50.222591>,  <36.226540, 44.265247, 50.376198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959045, 44.519905, 50.222591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722215, -0.433549, 0.538925,
		0.176612, 0.637746, 0.749726,
		-0.668740, 0.636644, -0.384019,
		35.758423, 44.710899, 50.107384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894562, 44.712597, 50.930500>,  <36.226540, 44.265247, 50.376198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894562, 44.712597, 50.930500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655884, 44.642311, 50.617302>,  <35.512676, 44.600140, 50.429382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655884, 44.642311, 50.617302>,  <35.894562, 44.712597, 50.930500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655884, 44.642311, 50.617302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671679, -0.424537, 0.607138,
		-0.439094, 0.888196, 0.135293,
		-0.596695, -0.175717, -0.782994,
		35.476875, 44.589596, 50.382404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278107, 44.759632, 51.237762>,  <35.894562, 44.712597, 50.930500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278107, 44.759632, 51.237762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.132946, 44.657600, 50.879269>,  <35.045849, 44.596382, 50.664173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.132946, 44.657600, 50.879269>,  <35.278107, 44.759632, 51.237762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132946, 44.657600, 50.879269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827644, -0.353679, 0.435794,
		-0.428143, 0.899913, -0.082767,
		-0.362904, -0.255084, -0.896233,
		35.024075, 44.581074, 50.610397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615318, 44.976814, 51.248447>,  <35.278107, 44.759632, 51.237762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615318, 44.976814, 51.248447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.664841, 44.680611, 50.984230>,  <34.694553, 44.502888, 50.825699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.664841, 44.680611, 50.984230>,  <34.615318, 44.976814, 51.248447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664841, 44.680611, 50.984230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743821, -0.509861, 0.432172,
		-0.656813, 0.437824, -0.613927,
		0.123803, -0.740508, -0.660546,
		34.701981, 44.458458, 50.786068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970539, 44.843025, 50.892872>,  <34.615318, 44.976814, 51.248447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970539, 44.843025, 50.892872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.157249, 44.491325, 50.854847>,  <34.269276, 44.280304, 50.832031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.157249, 44.491325, 50.854847>,  <33.970539, 44.843025, 50.892872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157249, 44.491325, 50.854847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821614, -0.470914, 0.321234,
		-0.327213, -0.071838, -0.942216,
		0.466779, -0.879249, -0.095066,
		34.297283, 44.227551, 50.826328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566547, 44.405582, 50.526985>,  <33.970539, 44.843025, 50.892872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566547, 44.405582, 50.526985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.810242, 44.157295, 50.724384>,  <33.956459, 44.008324, 50.842823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.810242, 44.157295, 50.724384>,  <33.566547, 44.405582, 50.526985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810242, 44.157295, 50.724384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784841, -0.560971, 0.263318,
		0.113394, -0.547743, -0.828927,
		0.609234, -0.620717, 0.493502,
		33.993011, 43.971081, 50.872437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270493, 43.728371, 50.417965>,  <33.566547, 44.405582, 50.526985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270493, 43.728371, 50.417965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.500732, 43.691833, 50.743011>,  <33.638878, 43.669910, 50.938038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.500732, 43.691833, 50.743011>,  <33.270493, 43.728371, 50.417965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500732, 43.691833, 50.743011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678692, -0.607685, 0.412428,
		0.456141, -0.788908, -0.411777,
		0.575599, -0.091345, 0.812615,
		33.673412, 43.664429, 50.986797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.280502, 42.964066, 50.601585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.432579, 43.107254, 50.942715>,  <33.523827, 43.193165, 51.147392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.432579, 43.107254, 50.942715>,  <33.280502, 42.964066, 50.601585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432579, 43.107254, 50.942715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469826, -0.719497, 0.511456,
		0.796689, -0.595133, -0.105368,
		0.380197, 0.357967, 0.852825,
		33.546638, 43.214645, 51.198563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560337, 42.333679, 50.905724>,  <33.280502, 42.964066, 50.601585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560337, 42.333679, 50.905724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.472359, 42.630470, 51.159050>,  <33.419571, 42.808544, 51.311047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.472359, 42.630470, 51.159050>,  <33.560337, 42.333679, 50.905724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472359, 42.630470, 51.159050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676241, -0.583878, 0.449205,
		0.703082, -0.329477, 0.630175,
		-0.219942, 0.741978, 0.633320,
		33.406376, 42.853065, 51.349045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593189, 42.039005, 51.624191>,  <33.560337, 42.333679, 50.905724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593189, 42.039005, 51.624191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373959, 42.370041, 51.672718>,  <33.242420, 42.568661, 51.701836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373959, 42.370041, 51.672718>,  <33.593189, 42.039005, 51.624191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373959, 42.370041, 51.672718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668294, -0.520494, 0.531479,
		0.502989, 0.210213, 0.838339,
		-0.548074, 0.827585, 0.121319,
		33.209538, 42.618317, 51.709114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355129, 42.041595, 52.319542>,  <33.593189, 42.039005, 51.624191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355129, 42.041595, 52.319542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114594, 42.297272, 52.127777>,  <32.970272, 42.450676, 52.012718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114594, 42.297272, 52.127777>,  <33.355129, 42.041595, 52.319542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114594, 42.297272, 52.127777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796354, -0.430707, 0.424630,
		0.064931, 0.637128, 0.768018,
		-0.601335, 0.639186, -0.479414,
		32.934193, 42.489029, 51.983952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930035, 42.288437, 52.788979>,  <33.355129, 42.041595, 52.319542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930035, 42.288437, 52.788979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.722649, 42.372253, 52.457367>,  <32.598217, 42.422543, 52.258400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.722649, 42.372253, 52.457367>,  <32.930035, 42.288437, 52.788979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722649, 42.372253, 52.457367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803399, -0.451364, 0.388358,
		-0.292817, 0.867390, 0.402360,
		-0.518468, 0.209538, -0.829027,
		32.567108, 42.435116, 52.208660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268009, 42.462860, 52.966549>,  <32.930035, 42.288437, 52.788979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268009, 42.462860, 52.966549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.221848, 42.352158, 52.584957>,  <32.194149, 42.285736, 52.356003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.221848, 42.352158, 52.584957>,  <32.268009, 42.462860, 52.966549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221848, 42.352158, 52.584957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798989, -0.544747, 0.254691,
		-0.590169, 0.791615, -0.158263,
		-0.115404, -0.276761, -0.953984,
		32.187225, 42.269131, 52.298763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532869, 42.479767, 52.912064>,  <32.268009, 42.462860, 52.966549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532869, 42.479767, 52.912064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.634243, 42.283096, 52.578831>,  <31.695066, 42.165092, 52.378891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.634243, 42.283096, 52.578831>,  <31.532869, 42.479767, 52.912064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634243, 42.283096, 52.578831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803944, -0.586015, 0.101292,
		-0.538001, 0.644078, -0.543800,
		0.253435, -0.491680, -0.833080,
		31.710274, 42.135593, 52.328907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974421, 42.524166, 52.420986>,  <31.532869, 42.479767, 52.912064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974421, 42.524166, 52.420986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.184551, 42.186127, 52.381287>,  <31.310629, 41.983303, 52.357468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.184551, 42.186127, 52.381287>,  <30.974421, 42.524166, 52.420986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184551, 42.186127, 52.381287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833583, -0.534533, 0.139336,
		-0.170804, 0.009537, -0.985259,
		0.525324, -0.845094, -0.099250,
		31.342148, 41.932598, 52.351513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442181, 42.040348, 52.210384>,  <30.974421, 42.524166, 52.420986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442181, 42.040348, 52.210384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.754551, 41.803764, 52.290718>,  <30.941973, 41.661816, 52.338917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.754551, 41.803764, 52.290718>,  <30.442181, 42.040348, 52.210384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754551, 41.803764, 52.290718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624624, -0.740260, 0.248718,
		0.001560, -0.319673, -0.947527,
		0.780924, -0.591460, 0.200830,
		30.988829, 41.626328, 52.350967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248720, 41.414268, 51.906265>,  <30.442181, 42.040348, 52.210384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248720, 41.414268, 51.906265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.517374, 41.341690, 52.193592>,  <30.678566, 41.298145, 52.365990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.517374, 41.341690, 52.193592>,  <30.248720, 41.414268, 51.906265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517374, 41.341690, 52.193592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577072, -0.736169, 0.353614,
		0.464646, -0.652023, -0.599142,
		0.671634, -0.181443, 0.718322,
		30.718864, 41.287258, 52.409088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093746, 40.654682, 51.962807>,  <30.248720, 41.414268, 51.906265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093746, 40.654682, 51.962807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.286591, 40.773499, 52.292496>,  <30.402296, 40.844788, 52.490307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.286591, 40.773499, 52.292496>,  <30.093746, 40.654682, 51.962807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286591, 40.773499, 52.292496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550196, -0.629469, 0.548684,
		0.681803, -0.718006, -0.140040,
		0.482109, 0.297045, 0.824218,
		30.431223, 40.862614, 52.539761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327408, 40.016071, 52.416199>,  <30.093746, 40.654682, 51.962807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327408, 40.016071, 52.416199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.320007, 40.344505, 52.644402>,  <30.315567, 40.541565, 52.781322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.320007, 40.344505, 52.644402>,  <30.327408, 40.016071, 52.416199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320007, 40.344505, 52.644402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390352, -0.531254, 0.751927,
		0.920480, -0.208789, 0.330340,
		-0.018500, 0.821083, 0.570509,
		30.314457, 40.590832, 52.815556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515116, 39.804352, 53.027744>,  <30.327408, 40.016071, 52.416199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515116, 39.804352, 53.027744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.310085, 40.137611, 53.110817>,  <30.187067, 40.337566, 53.160660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.310085, 40.137611, 53.110817>,  <30.515116, 39.804352, 53.027744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310085, 40.137611, 53.110817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489397, -0.482215, 0.726608,
		0.705518, 0.270804, 0.654912,
		-0.512577, 0.833147, 0.207680,
		30.156313, 40.387554, 53.173122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500336, 39.803944, 53.822899>,  <30.515116, 39.804352, 53.027744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500336, 39.803944, 53.822899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231482, 40.078117, 53.710888>,  <30.070169, 40.242622, 53.643681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231482, 40.078117, 53.710888>,  <30.500336, 39.803944, 53.822899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231482, 40.078117, 53.710888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638739, -0.345473, 0.687504,
		0.374499, 0.640957, 0.670019,
		-0.672134, 0.685436, -0.280025,
		30.029842, 40.283749, 53.626881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324739, 40.022251, 54.343998>,  <30.500336, 39.803944, 53.822899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324739, 40.022251, 54.343998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.027987, 40.156342, 54.111713>,  <29.849936, 40.236797, 53.972343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.027987, 40.156342, 54.111713>,  <30.324739, 40.022251, 54.343998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027987, 40.156342, 54.111713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668203, -0.297531, 0.681895,
		0.055812, 0.893921, 0.444735,
		-0.741883, 0.335231, -0.580715,
		29.805422, 40.256912, 53.937500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821325, 40.312115, 54.822025>,  <30.324739, 40.022251, 54.343998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821325, 40.312115, 54.822025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.637730, 40.235214, 54.475067>,  <29.527573, 40.189075, 54.266891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.637730, 40.235214, 54.475067>,  <29.821325, 40.312115, 54.822025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637730, 40.235214, 54.475067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817528, -0.290829, 0.497059,
		-0.347821, 0.937262, -0.023681,
		-0.458987, -0.192248, -0.867394,
		29.500034, 40.177540, 54.214848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165102, 40.583321, 54.891064>,  <29.821325, 40.312115, 54.822025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165102, 40.583321, 54.891064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.145466, 40.306572, 54.602921>,  <29.133684, 40.140522, 54.430035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.145466, 40.306572, 54.602921>,  <29.165102, 40.583321, 54.891064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145466, 40.306572, 54.602921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732717, -0.465182, 0.496721,
		-0.678761, 0.552200, -0.484106,
		-0.049092, -0.691868, -0.720353,
		29.130737, 40.099010, 54.386814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473719, 40.567955, 54.630917>,  <29.165102, 40.583321, 54.891064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473719, 40.567955, 54.630917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.609564, 40.202431, 54.541817>,  <28.691071, 39.983116, 54.488358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.609564, 40.202431, 54.541817>,  <28.473719, 40.567955, 54.630917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609564, 40.202431, 54.541817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752107, -0.406050, 0.519094,
		-0.564800, -0.008759, -0.825181,
		0.339612, -0.913809, -0.222749,
		28.711447, 39.928288, 54.474991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902128, 40.174156, 54.510662>,  <28.473719, 40.567955, 54.630917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902128, 40.174156, 54.510662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.191708, 39.908485, 54.585247>,  <28.365456, 39.749084, 54.629997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.191708, 39.908485, 54.585247>,  <27.902128, 40.174156, 54.510662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191708, 39.908485, 54.585247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652100, -0.570661, 0.499112,
		-0.225090, -0.482925, -0.846238,
		0.723948, -0.664176, 0.186465,
		28.408892, 39.709232, 54.641186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532602, 39.520771, 54.362877>,  <27.902128, 40.174156, 54.510662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532602, 39.520771, 54.362877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.856997, 39.415504, 54.571892>,  <28.051634, 39.352345, 54.697300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.856997, 39.415504, 54.571892>,  <27.532602, 39.520771, 54.362877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856997, 39.415504, 54.571892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544972, -0.664725, 0.511025,
		0.212858, -0.699202, -0.682502,
		0.810985, -0.263169, 0.522537,
		28.100292, 39.336555, 54.728653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380396, 38.878464, 54.435364>,  <27.532602, 39.520771, 54.362877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380396, 38.878464, 54.435364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.648962, 38.948158, 54.723488>,  <27.810101, 38.989975, 54.896362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.648962, 38.948158, 54.723488>,  <27.380396, 38.878464, 54.435364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648962, 38.948158, 54.723488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548148, -0.537355, 0.640923,
		0.498735, -0.825161, -0.265279,
		0.671414, 0.174239, 0.720309,
		27.850386, 39.000431, 54.939579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443624, 38.241577, 54.740276>,  <27.380396, 38.878464, 54.435364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443624, 38.241577, 54.740276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.576750, 38.507004, 55.008282>,  <27.656626, 38.666260, 55.169086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.576750, 38.507004, 55.008282>,  <27.443624, 38.241577, 54.740276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576750, 38.507004, 55.008282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620656, -0.380780, 0.685414,
		0.709943, -0.643964, 0.285116,
		0.332816, 0.663564, 0.670012,
		27.676594, 38.706074, 55.209286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659874, 37.993851, 55.396591>,  <27.443624, 38.241577, 54.740276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659874, 37.993851, 55.396591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.528202, 38.365196, 55.465614>,  <27.449198, 38.588005, 55.507027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.528202, 38.365196, 55.465614>,  <27.659874, 37.993851, 55.396591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528202, 38.365196, 55.465614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527897, -0.332449, 0.781539,
		0.782920, 0.166175, 0.599518,
		-0.329181, 0.928366, 0.172558,
		27.429447, 38.643707, 55.517384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435139, 37.269051, 55.572208>,  <27.659874, 37.993851, 55.396591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435139, 37.269051, 55.572208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.636312, 36.923409, 55.564438>,  <27.757017, 36.716022, 55.559776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.636312, 36.923409, 55.564438>,  <27.435139, 37.269051, 55.572208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636312, 36.923409, 55.564438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733090, 0.438367, -0.520014,
		0.457862, 0.247294, 0.853937,
		0.502934, -0.864107, -0.019423,
		27.787193, 36.664177, 55.558613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213083, 37.337322, 55.732738>,  <27.435139, 37.269051, 55.572208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213083, 37.337322, 55.732738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.151333, 37.013519, 55.506161>,  <28.114283, 36.819237, 55.370213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.151333, 37.013519, 55.506161>,  <28.213083, 37.337322, 55.732738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151333, 37.013519, 55.506161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848438, 0.185165, -0.495849,
		0.506281, -0.557140, 0.658236,
		-0.154375, -0.809512, -0.566444,
		28.105021, 36.770664, 55.336227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857666, 37.086220, 55.626171>,  <28.213083, 37.337322, 55.732738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857666, 37.086220, 55.626171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.656134, 36.888283, 55.342964>,  <28.535213, 36.769520, 55.173042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.656134, 36.888283, 55.342964>,  <28.857666, 37.086220, 55.626171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656134, 36.888283, 55.342964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796580, 0.050846, -0.602392,
		0.334090, -0.867493, 0.368566,
		-0.503830, -0.494845, -0.708014,
		28.504984, 36.739830, 55.130562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298594, 36.648998, 55.426769>,  <28.857666, 37.086220, 55.626171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298594, 36.648998, 55.426769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.040905, 36.680794, 55.122490>,  <28.886292, 36.699871, 54.939922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.040905, 36.680794, 55.122490>,  <29.298594, 36.648998, 55.426769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040905, 36.680794, 55.122490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763806, 0.015196, -0.645266,
		-0.039733, -0.996720, -0.070505,
		-0.644221, 0.079491, -0.760697,
		28.847639, 36.704639, 54.894279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570898, 36.234592, 54.939552>,  <29.298594, 36.648998, 55.426769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570898, 36.234592, 54.939552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.330948, 36.489975, 54.746670>,  <29.186977, 36.643204, 54.630939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.330948, 36.489975, 54.746670>,  <29.570898, 36.234592, 54.939552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330948, 36.489975, 54.746670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644199, 0.027985, -0.764345,
		-0.474509, -0.769146, -0.428082,
		-0.599873, 0.638459, -0.482205,
		29.150986, 36.681511, 54.602009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640429, 36.041824, 54.285347>,  <29.570898, 36.234592, 54.939552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640429, 36.041824, 54.285347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.522385, 36.424004, 54.287361>,  <29.451557, 36.653313, 54.288570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.522385, 36.424004, 54.287361>,  <29.640429, 36.041824, 54.285347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522385, 36.424004, 54.287361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788442, 0.246497, -0.563559,
		-0.539693, -0.162344, -0.826061,
		-0.295112, 0.955449, 0.005033,
		29.433851, 36.710640, 54.288872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843534, 36.236507, 53.625698>,  <29.640429, 36.041824, 54.285347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843534, 36.236507, 53.625698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.771357, 36.587219, 53.804001>,  <29.728050, 36.797646, 53.910984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.771357, 36.587219, 53.804001>,  <29.843534, 36.236507, 53.625698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771357, 36.587219, 53.804001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781529, 0.402975, -0.476259,
		-0.597203, 0.262433, -0.757943,
		-0.180446, 0.876778, 0.445757,
		29.717222, 36.850254, 53.937729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889889, 36.665607, 53.125942>,  <29.843534, 36.236507, 53.625698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889889, 36.665607, 53.125942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.921679, 36.925087, 53.428696>,  <29.940752, 37.080776, 53.610348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.921679, 36.925087, 53.428696>,  <29.889889, 36.665607, 53.125942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921679, 36.925087, 53.428696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714083, 0.492738, -0.497287,
		-0.695535, 0.579999, -0.424066,
		0.079472, 0.648699, 0.756884,
		29.945520, 37.119698, 53.655762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866455, 37.366745, 52.846394>,  <29.889889, 36.665607, 53.125942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866455, 37.366745, 52.846394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.033892, 37.433510, 53.203476>,  <30.134354, 37.473568, 53.417725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.033892, 37.433510, 53.203476>,  <29.866455, 37.366745, 52.846394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033892, 37.433510, 53.203476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773415, 0.449722, -0.446742,
		-0.476036, 0.877434, 0.059156,
		0.418590, 0.166913, 0.892705,
		30.159470, 37.483585, 53.471287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955006, 38.045631, 52.856148>,  <29.866455, 37.366745, 52.846394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955006, 38.045631, 52.856148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201559, 37.893524, 53.131966>,  <30.349491, 37.802261, 53.297455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201559, 37.893524, 53.131966>,  <29.955006, 38.045631, 52.856148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201559, 37.893524, 53.131966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740802, 0.576932, -0.344037,
		-0.266994, 0.722874, 0.637313,
		0.616382, -0.380267, 0.689544,
		30.386473, 37.779446, 53.338829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192591, 38.595020, 53.322102>,  <29.955006, 38.045631, 52.856148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192591, 38.595020, 53.322102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.453911, 38.295876, 53.274933>,  <30.610703, 38.116390, 53.246632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.453911, 38.295876, 53.274933>,  <30.192591, 38.595020, 53.322102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453911, 38.295876, 53.274933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620399, 0.618081, -0.482785,
		0.433938, 0.242247, 0.867764,
		0.653302, -0.747858, -0.117919,
		30.649900, 38.071518, 53.239555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807043, 38.801765, 53.676868>,  <30.192591, 38.595020, 53.322102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807043, 38.801765, 53.676868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.952215, 38.505760, 53.450359>,  <31.039318, 38.328156, 53.314453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.952215, 38.505760, 53.450359>,  <30.807043, 38.801765, 53.676868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952215, 38.505760, 53.450359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701912, 0.616805, -0.356189,
		0.612862, -0.268199, 0.743282,
		0.362930, -0.740014, -0.566269,
		31.061094, 38.283756, 53.280479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530313, 38.721550, 53.799362>,  <30.807043, 38.801765, 53.676868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530313, 38.721550, 53.799362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.479612, 38.572998, 53.431446>,  <31.449192, 38.483868, 53.210697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.479612, 38.572998, 53.431446>,  <31.530313, 38.721550, 53.799362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479612, 38.572998, 53.431446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665739, 0.655552, -0.356431,
		0.735341, -0.657518, 0.164147,
		-0.126752, -0.371378, -0.919789,
		31.441587, 38.461586, 53.155510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206074, 38.742069, 53.538677>,  <31.530313, 38.721550, 53.799362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206074, 38.742069, 53.538677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.979239, 38.691948, 53.213051>,  <31.843138, 38.661877, 53.017673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.979239, 38.691948, 53.213051>,  <32.206074, 38.742069, 53.538677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979239, 38.691948, 53.213051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675029, 0.495635, -0.546519,
		0.471962, -0.859445, -0.196485,
		-0.567088, -0.125303, -0.814070,
		31.809113, 38.654358, 52.968830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694309, 38.783569, 53.050293>,  <32.206074, 38.742069, 53.538677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694309, 38.783569, 53.050293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.351021, 38.829491, 52.850182>,  <32.145050, 38.857044, 52.730114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.351021, 38.829491, 52.850182>,  <32.694309, 38.783569, 53.050293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351021, 38.829491, 52.850182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460005, 0.604443, -0.650419,
		0.227723, -0.788333, -0.571553,
		-0.858218, 0.114802, -0.500283,
		32.093555, 38.863930, 52.700096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764378, 38.575008, 52.311264>,  <32.694309, 38.783569, 53.050293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764378, 38.575008, 52.311264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.443733, 38.813850, 52.323170>,  <32.251347, 38.957153, 52.330315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.443733, 38.813850, 52.323170>,  <32.764378, 38.575008, 52.311264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443733, 38.813850, 52.323170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373845, 0.539499, -0.754441,
		-0.466536, -0.593642, -0.655693,
		-0.801613, 0.597102, 0.029766,
		32.203251, 38.992981, 52.332100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728180, 38.752434, 51.687618>,  <32.764378, 38.575008, 52.311264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728180, 38.752434, 51.687618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.506279, 39.047493, 51.841564>,  <32.373138, 39.224529, 51.933933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.506279, 39.047493, 51.841564>,  <32.728180, 38.752434, 51.687618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506279, 39.047493, 51.841564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342132, 0.623898, -0.702636,
		-0.758416, -0.258116, -0.598483,
		-0.554754, 0.737650, 0.384864,
		32.339851, 39.268787, 51.957024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204762, 38.961792, 51.174904>,  <32.728180, 38.752434, 51.687618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204762, 38.961792, 51.174904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302444, 39.247566, 51.437183>,  <32.361053, 39.419029, 51.594551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302444, 39.247566, 51.437183>,  <32.204762, 38.961792, 51.174904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302444, 39.247566, 51.437183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320689, 0.578629, -0.749898,
		-0.915162, 0.393407, -0.087805,
		0.244209, 0.714436, 0.655700,
		32.375706, 39.461899, 51.633892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963951, 39.622223, 50.892155>,  <32.204762, 38.961792, 51.174904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963951, 39.622223, 50.892155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.229721, 39.739594, 51.167091>,  <32.389183, 39.810017, 51.332054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.229721, 39.739594, 51.167091>,  <31.963951, 39.622223, 50.892155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229721, 39.739594, 51.167091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511756, 0.491615, -0.704571,
		-0.544650, 0.819886, 0.176477,
		0.664426, 0.293431, 0.687340,
		32.429050, 39.827621, 51.373295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098637, 40.371353, 50.808510>,  <31.963951, 39.622223, 50.892155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098637, 40.371353, 50.808510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.413929, 40.225670, 51.006920>,  <32.603104, 40.138260, 51.125965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.413929, 40.225670, 51.006920>,  <32.098637, 40.371353, 50.808510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413929, 40.225670, 51.006920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615321, 0.455766, -0.643162,
		0.008175, 0.812176, 0.583356,
		0.788234, -0.364209, 0.496023,
		32.650398, 40.116405, 51.155727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522118, 40.969913, 50.862328>,  <32.098637, 40.371353, 50.808510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522118, 40.969913, 50.862328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.768036, 40.664787, 50.942474>,  <32.915585, 40.481712, 50.990562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.768036, 40.664787, 50.942474>,  <32.522118, 40.969913, 50.862328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768036, 40.664787, 50.942474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660046, 0.358574, -0.660125,
		0.431706, 0.538090, 0.723940,
		0.614793, -0.762813, 0.200366,
		32.952473, 40.435944, 51.002583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.941483, 45.510445, 49.546356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.181656, 45.260162, 49.745541>,  <35.325760, 45.109993, 49.865051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.181656, 45.260162, 49.745541>,  <34.941483, 45.510445, 49.546356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181656, 45.260162, 49.745541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769728, 0.621030, -0.147785,
		-0.216780, 0.472032, 0.854513,
		0.600437, -0.625706, 0.497963,
		35.361786, 45.072449, 49.894928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310059, 45.871998, 50.086926>,  <34.941483, 45.510445, 49.546356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310059, 45.871998, 50.086926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.537178, 45.556229, 49.993622>,  <35.673450, 45.366768, 49.937637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.537178, 45.556229, 49.993622>,  <35.310059, 45.871998, 50.086926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537178, 45.556229, 49.993622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784241, 0.604885, -0.138132,
		0.250141, -0.104502, 0.962554,
		0.567799, -0.789426, -0.233261,
		35.707520, 45.319401, 49.923645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942337, 46.086487, 50.278461>,  <35.310059, 45.871998, 50.086926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942337, 46.086487, 50.278461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.014610, 45.767693, 50.047928>,  <36.057976, 45.576416, 49.909607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.014610, 45.767693, 50.047928>,  <35.942337, 46.086487, 50.278461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014610, 45.767693, 50.047928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845492, 0.425239, -0.322979,
		0.502491, -0.428929, 0.750681,
		0.180684, -0.796989, -0.576335,
		36.068817, 45.528595, 49.875027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706200, 46.041100, 50.272587>,  <35.942337, 46.086487, 50.278461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706200, 46.041100, 50.272587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.580299, 45.820808, 49.963360>,  <36.504761, 45.688633, 49.777824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.580299, 45.820808, 49.963360>,  <36.706200, 46.041100, 50.272587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580299, 45.820808, 49.963360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757537, 0.344981, -0.554189,
		0.571900, -0.760059, 0.308611,
		-0.314751, -0.550725, -0.773067,
		36.485874, 45.655590, 49.731438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255768, 45.629829, 50.131596>,  <36.706200, 46.041100, 50.272587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255768, 45.629829, 50.131596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.030464, 45.684380, 49.805618>,  <36.895283, 45.717110, 49.610031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.030464, 45.684380, 49.805618>,  <37.255768, 45.629829, 50.131596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030464, 45.684380, 49.805618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800844, 0.332941, -0.497795,
		0.203441, -0.933033, -0.296750,
		-0.563259, 0.136378, -0.814948,
		36.861485, 45.725292, 49.561134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498608, 45.186787, 49.599380>,  <37.255768, 45.629829, 50.131596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498608, 45.186787, 49.599380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.299126, 45.484711, 49.422047>,  <37.179436, 45.663467, 49.315647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.299126, 45.484711, 49.422047>,  <37.498608, 45.186787, 49.599380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299126, 45.484711, 49.422047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819775, 0.239168, -0.520353,
		-0.281534, -0.622938, -0.729854,
		-0.498705, 0.744813, -0.443335,
		37.149513, 45.708153, 49.289047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851360, 45.230885, 49.006824>,  <37.498608, 45.186787, 49.599380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851360, 45.230885, 49.006824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.646263, 45.573669, 49.027645>,  <37.523205, 45.779339, 49.040138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.646263, 45.573669, 49.027645>,  <37.851360, 45.230885, 49.006824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646263, 45.573669, 49.027645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774140, 0.487703, -0.403550,
		-0.371215, -0.166620, -0.913475,
		-0.512745, 0.856961, 0.052056,
		37.492439, 45.830757, 49.043262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921043, 45.499367, 48.348534>,  <37.851360, 45.230885, 49.006824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921043, 45.499367, 48.348534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.848446, 45.811790, 48.587532>,  <37.804890, 45.999245, 48.730930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.848446, 45.811790, 48.587532>,  <37.921043, 45.499367, 48.348534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848446, 45.811790, 48.587532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688891, 0.534574, -0.489551,
		-0.701776, 0.322763, -0.635086,
		-0.181492, 0.781060, 0.597499,
		37.793999, 46.046108, 48.766781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083866, 46.076046, 47.898457>,  <37.921043, 45.499367, 48.348534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083866, 46.076046, 47.898457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.048744, 46.237602, 48.262691>,  <38.027672, 46.334538, 48.481232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.048744, 46.237602, 48.262691>,  <38.083866, 46.076046, 47.898457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048744, 46.237602, 48.262691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685177, 0.688014, -0.239101,
		-0.723065, 0.602917, -0.337148,
		-0.087805, 0.403892, 0.910583,
		38.022404, 46.358768, 48.535866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137882, 46.786861, 47.741417>,  <38.083866, 46.076046, 47.898457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137882, 46.786861, 47.741417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.219769, 46.774986, 48.132767>,  <38.268898, 46.767860, 48.367577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.219769, 46.774986, 48.132767>,  <38.137882, 46.786861, 47.741417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219769, 46.774986, 48.132767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732133, 0.668068, -0.132916,
		-0.649673, 0.743508, 0.158498,
		0.204711, -0.029690, 0.978372,
		38.281181, 46.766079, 48.426277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370144, 47.474232, 47.912563>,  <38.137882, 46.786861, 47.741417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370144, 47.474232, 47.912563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.537712, 47.211044, 48.162868>,  <38.638252, 47.053131, 48.313053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.537712, 47.211044, 48.162868>,  <38.370144, 47.474232, 47.912563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537712, 47.211044, 48.162868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906958, 0.336566, -0.253280,
		-0.043959, 0.673644, 0.737748,
		0.418921, -0.657972, 0.625762,
		38.663387, 47.013653, 48.350597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792225, 47.891342, 48.389160>,  <38.370144, 47.474232, 47.912563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792225, 47.891342, 48.389160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.942192, 47.520721, 48.376915>,  <39.032173, 47.298347, 48.369568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.942192, 47.520721, 48.376915>,  <38.792225, 47.891342, 48.389160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942192, 47.520721, 48.376915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917705, 0.375611, -0.129357,
		0.131355, 0.020403, 0.991125,
		0.374917, -0.926553, -0.030614,
		39.054668, 47.242756, 48.367729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344131, 47.780296, 48.896297>,  <38.792225, 47.891342, 48.389160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344131, 47.780296, 48.896297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.422134, 47.545433, 48.582043>,  <39.468937, 47.404514, 48.393490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.422134, 47.545433, 48.582043>,  <39.344131, 47.780296, 48.896297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422134, 47.545433, 48.582043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923739, 0.379181, -0.054102,
		0.329664, -0.715172, 0.616320,
		0.195005, -0.587155, -0.785635,
		39.480637, 47.369286, 48.346352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869923, 47.289143, 49.075001>,  <39.344131, 47.780296, 48.896297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869923, 47.289143, 49.075001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857201, 47.431763, 48.701508>,  <39.849567, 47.517334, 48.477409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857201, 47.431763, 48.701508>,  <39.869923, 47.289143, 49.075001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857201, 47.431763, 48.701508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992989, 0.117685, 0.011115,
		0.113849, -0.926836, -0.357790,
		-0.031805, 0.356547, -0.933736,
		39.847660, 47.538727, 48.421387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501724, 47.836151, 49.169609>,  <39.869923, 47.289143, 49.075001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501724, 47.836151, 49.169609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.733047, 48.053581, 49.412945>,  <40.871841, 48.184040, 49.558945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.733047, 48.053581, 49.412945>,  <40.501724, 47.836151, 49.169609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733047, 48.053581, 49.412945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306714, -0.546109, 0.779546,
		0.755964, -0.637407, -0.149098,
		0.578312, 0.543578, 0.608340,
		40.906540, 48.216656, 49.595448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847992, 47.348812, 49.464920>,  <40.501724, 47.836151, 49.169609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847992, 47.348812, 49.464920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.829582, 47.659500, 49.716187>,  <40.818535, 47.845913, 49.866947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.829582, 47.659500, 49.716187>,  <40.847992, 47.348812, 49.464920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829582, 47.659500, 49.716187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395944, -0.591508, 0.702386,
		0.917121, -0.216391, 0.334760,
		-0.046024, 0.776719, 0.628163,
		40.815777, 47.892517, 49.904636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137409, 47.110474, 50.175224>,  <40.847992, 47.348812, 49.464920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137409, 47.110474, 50.175224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.915390, 47.428291, 50.273708>,  <40.782181, 47.618984, 50.332798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.915390, 47.428291, 50.273708>,  <41.137409, 47.110474, 50.175224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915390, 47.428291, 50.273708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326215, -0.480193, 0.814247,
		0.765185, 0.371628, 0.525723,
		-0.555046, 0.794548, 0.246206,
		40.748875, 47.666656, 50.347569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303478, 47.231041, 50.899780>,  <41.137409, 47.110474, 50.175224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303478, 47.231041, 50.899780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.950447, 47.403862, 50.825611>,  <40.738628, 47.507553, 50.781109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.950447, 47.403862, 50.825611>,  <41.303478, 47.231041, 50.899780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950447, 47.403862, 50.825611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398426, -0.477913, 0.782851,
		0.249616, 0.764807, 0.593938,
		-0.882581, 0.432053, -0.185424,
		40.685673, 47.533478, 50.769985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057171, 47.449455, 51.522282>,  <41.303478, 47.231041, 50.899780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057171, 47.449455, 51.522282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.728912, 47.438614, 51.293964>,  <40.531960, 47.432110, 51.156975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.728912, 47.438614, 51.293964>,  <41.057171, 47.449455, 51.522282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728912, 47.438614, 51.293964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512652, -0.406365, 0.756343,
		-0.252453, 0.913309, 0.319585,
		-0.820643, -0.027106, -0.570798,
		40.482719, 47.430481, 51.122726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564083, 47.603901, 51.962715>,  <41.057171, 47.449455, 51.522282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564083, 47.603901, 51.962715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.360405, 47.441368, 51.659237>,  <40.238197, 47.343849, 51.477150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.360405, 47.441368, 51.659237>,  <40.564083, 47.603901, 51.962715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360405, 47.441368, 51.659237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553434, -0.520516, 0.650211,
		-0.659111, 0.750972, 0.040171,
		-0.509200, -0.406329, -0.758691,
		40.207645, 47.319469, 51.431629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717407, 47.591103, 52.151337>,  <40.564083, 47.603901, 51.962715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717407, 47.591103, 52.151337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.755699, 47.325249, 51.854931>,  <39.778675, 47.165737, 51.677090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.755699, 47.325249, 51.854931>,  <39.717407, 47.591103, 52.151337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755699, 47.325249, 51.854931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628484, -0.617644, 0.472784,
		-0.771909, 0.420453, -0.476839,
		0.095733, -0.664632, -0.741013,
		39.784420, 47.125858, 51.632626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052891, 47.456715, 51.910675>,  <39.717407, 47.591103, 52.151337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052891, 47.456715, 51.910675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.283146, 47.141701, 51.822651>,  <39.421299, 46.952690, 51.769836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.283146, 47.141701, 51.822651>,  <39.052891, 47.456715, 51.910675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283146, 47.141701, 51.822651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704819, -0.614307, 0.354763,
		-0.414571, -0.049116, -0.908691,
		0.575640, -0.787537, -0.220055,
		39.455837, 46.905441, 51.756634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585217, 46.997051, 51.763252>,  <39.052891, 47.456715, 51.910675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585217, 46.997051, 51.763252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916920, 46.775047, 51.789463>,  <39.115944, 46.641846, 51.805191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916920, 46.775047, 51.789463>,  <38.585217, 46.997051, 51.763252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916920, 46.775047, 51.789463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543885, -0.774511, 0.322990,
		-0.128508, -0.303484, -0.944131,
		0.829262, -0.555006, 0.065529,
		39.165699, 46.608547, 51.809120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486454, 46.385078, 51.370281>,  <38.585217, 46.997051, 51.763252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486454, 46.385078, 51.370281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.772995, 46.299095, 51.635799>,  <38.944920, 46.247505, 51.795113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.772995, 46.299095, 51.635799>,  <38.486454, 46.385078, 51.370281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772995, 46.299095, 51.635799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523829, -0.794139, 0.308135,
		0.460911, -0.568451, -0.681487,
		0.716354, -0.214960, 0.663798,
		38.987900, 46.234608, 51.834938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621826, 45.611485, 51.277042>,  <38.486454, 46.385078, 51.370281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621826, 45.611485, 51.277042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.761475, 45.719025, 51.636116>,  <38.845264, 45.783550, 51.851559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.761475, 45.719025, 51.636116>,  <38.621826, 45.611485, 51.277042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761475, 45.719025, 51.636116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454689, -0.789029, 0.413148,
		0.819372, -0.552406, -0.153224,
		0.349124, 0.268852, 0.897681,
		38.866211, 45.799679, 51.905418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846218, 44.967449, 51.674805>,  <38.621826, 45.611485, 51.277042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846218, 44.967449, 51.674805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.761517, 45.254044, 51.940681>,  <38.710697, 45.425999, 52.100208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.761517, 45.254044, 51.940681>,  <38.846218, 44.967449, 51.674805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761517, 45.254044, 51.940681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446347, -0.675940, 0.586412,
		0.869445, -0.172508, 0.462932,
		-0.211754, 0.716482, 0.664691,
		38.697990, 45.468987, 52.140087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974609, 44.629063, 52.403339>,  <38.846218, 44.967449, 51.674805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974609, 44.629063, 52.403339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719025, 44.935165, 52.434635>,  <38.565674, 45.118828, 52.453411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719025, 44.935165, 52.434635>,  <38.974609, 44.629063, 52.403339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719025, 44.935165, 52.434635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646227, -0.589166, 0.485052,
		0.417281, 0.259370, 0.870979,
		-0.638959, 0.765253, 0.078236,
		38.527336, 45.164742, 52.458107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917969, 44.617947, 53.071194>,  <38.974609, 44.629063, 52.403339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917969, 44.617947, 53.071194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.600002, 44.789093, 52.899128>,  <38.409222, 44.891781, 52.795891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.600002, 44.789093, 52.899128>,  <38.917969, 44.617947, 53.071194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600002, 44.789093, 52.899128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604560, -0.618315, 0.502190,
		-0.051108, 0.659258, 0.750178,
		-0.794918, 0.427862, -0.430162,
		38.361526, 44.917450, 52.770081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267910, 44.138031, 53.527630>,  <38.917969, 44.617947, 53.071194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267910, 44.138031, 53.527630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.431778, 43.773140, 53.526344>,  <39.530098, 43.554203, 53.525574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.431778, 43.773140, 53.526344>,  <39.267910, 44.138031, 53.527630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431778, 43.773140, 53.526344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831632, 0.374915, -0.409667,
		0.374915, 0.165156, 0.912230,
		0.409667, -0.912230, -0.003212,
		39.554680, 43.499470, 53.525379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038452, 44.198895, 53.783237>,  <39.267910, 44.138031, 53.527630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038452, 44.198895, 53.783237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997318, 43.856392, 53.580750>,  <39.972637, 43.650890, 53.459255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997318, 43.856392, 53.580750>,  <40.038452, 44.198895, 53.783237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997318, 43.856392, 53.580750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915940, 0.116956, -0.383895,
		0.387916, -0.503144, 0.772248,
		-0.102835, -0.856252, -0.506219,
		39.966469, 43.599518, 53.428883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650070, 43.795570, 53.895714>,  <40.038452, 44.198895, 53.783237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650070, 43.795570, 53.895714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.480644, 43.639488, 53.568707>,  <40.378990, 43.545841, 53.372501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.480644, 43.639488, 53.568707>,  <40.650070, 43.795570, 53.895714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480644, 43.639488, 53.568707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882595, 0.025483, -0.469444,
		0.204010, -0.920376, 0.333597,
		-0.423564, -0.390203, -0.817518,
		40.353577, 43.522427, 53.323452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172371, 43.291679, 53.667946>,  <40.650070, 43.795570, 53.895714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172371, 43.291679, 53.667946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.942745, 43.389137, 53.355259>,  <40.804970, 43.447613, 53.167645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.942745, 43.389137, 53.355259>,  <41.172371, 43.291679, 53.667946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942745, 43.389137, 53.355259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815558, 0.085138, -0.572379,
		-0.072904, -0.966120, -0.247582,
		-0.574065, 0.243647, -0.781720,
		40.770527, 43.462231, 53.120743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649307, 43.030960, 53.113285>,  <41.172371, 43.291679, 53.667946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649307, 43.030960, 53.113285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.361130, 43.240524, 52.931522>,  <41.188225, 43.366264, 52.822464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.361130, 43.240524, 52.931522>,  <41.649307, 43.030960, 53.113285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361130, 43.240524, 52.931522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615854, 0.182024, -0.766545,
		-0.318889, -0.832096, -0.453789,
		-0.720440, 0.523911, -0.454404,
		41.144997, 43.397697, 52.795200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718403, 42.803230, 52.412704>,  <41.649307, 43.030960, 53.113285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718403, 42.803230, 52.412704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.540775, 43.161621, 52.414673>,  <41.434200, 43.376656, 52.415855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.540775, 43.161621, 52.414673>,  <41.718403, 42.803230, 52.412704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540775, 43.161621, 52.414673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638198, 0.320151, -0.700148,
		-0.628893, -0.307774, -0.713981,
		-0.444069, 0.895979, 0.004920,
		41.407555, 43.430416, 52.416149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449711, 42.859436, 51.782688>,  <41.718403, 42.803230, 52.412704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449711, 42.859436, 51.782688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.542999, 43.208427, 51.954453>,  <41.598972, 43.417820, 52.057510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.542999, 43.208427, 51.954453>,  <41.449711, 42.859436, 51.782688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542999, 43.208427, 51.954453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553336, 0.244056, -0.796402,
		-0.799642, 0.423346, -0.425853,
		0.233222, 0.872476, 0.429410,
		41.612965, 43.470169, 52.083275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442581, 43.301910, 51.228027>,  <41.449711, 42.859436, 51.782688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442581, 43.301910, 51.228027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.609760, 43.544281, 51.498779>,  <41.710068, 43.689705, 51.661232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.609760, 43.544281, 51.498779>,  <41.442581, 43.301910, 51.228027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609760, 43.544281, 51.498779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480218, 0.485118, -0.730788,
		-0.771172, 0.630484, -0.088222,
		0.417953, 0.605929, 0.676879,
		41.735146, 43.726059, 51.701843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566479, 43.947575, 50.887833>,  <41.442581, 43.301910, 51.228027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566479, 43.947575, 50.887833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.810440, 43.927612, 51.204193>,  <41.956818, 43.915634, 51.394009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.810440, 43.927612, 51.204193>,  <41.566479, 43.947575, 50.887833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810440, 43.927612, 51.204193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773339, 0.255486, -0.580236,
		-0.173110, 0.965524, 0.194413,
		0.609902, -0.049902, 0.790904,
		41.993412, 43.912643, 51.441463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847069, 44.563507, 50.856236>,  <41.566479, 43.947575, 50.887833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847069, 44.563507, 50.856236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.105938, 44.355301, 51.079029>,  <42.261257, 44.230377, 51.212708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.105938, 44.355301, 51.079029>,  <41.847069, 44.563507, 50.856236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105938, 44.355301, 51.079029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753764, 0.327581, -0.569675,
		0.114065, 0.788514, 0.604346,
		0.647170, -0.520515, 0.556988,
		42.300087, 44.199146, 51.246124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432636, 45.019257, 50.984207>,  <41.847069, 44.563507, 50.856236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432636, 45.019257, 50.984207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.562321, 44.644264, 51.034836>,  <42.640133, 44.419270, 51.065212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.562321, 44.644264, 51.034836>,  <42.432636, 45.019257, 50.984207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562321, 44.644264, 51.034836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902042, 0.266069, -0.339894,
		0.284968, 0.224367, 0.931908,
		0.324213, -0.937479, 0.126568,
		42.659584, 44.363022, 51.072807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097469, 45.063374, 51.316143>,  <42.432636, 45.019257, 50.984207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097469, 45.063374, 51.316143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.132179, 44.696434, 51.160736>,  <43.153008, 44.476273, 51.067490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.132179, 44.696434, 51.160736>,  <43.097469, 45.063374, 51.316143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132179, 44.696434, 51.160736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875835, 0.256098, -0.409056,
		0.474745, -0.304783, 0.825666,
		0.086779, -0.917345, -0.388521,
		43.158215, 44.421230, 51.044178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.900410, 42.635460, 56.177933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982010, 42.363281, 55.896400>,  <37.030972, 42.199974, 55.727482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982010, 42.363281, 55.896400>,  <36.900410, 42.635460, 56.177933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982010, 42.363281, 55.896400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939907, 0.337201, -0.053568,
		0.273783, -0.650610, 0.708342,
		0.204002, -0.680442, -0.703833,
		37.043209, 42.159149, 55.685249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594566, 42.487991, 56.263454>,  <36.900410, 42.635460, 56.177933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594566, 42.487991, 56.263454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511112, 42.362694, 55.892864>,  <37.461040, 42.287518, 55.670509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511112, 42.362694, 55.892864>,  <37.594566, 42.487991, 56.263454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511112, 42.362694, 55.892864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906481, 0.293650, -0.303417,
		0.367101, -0.903134, 0.222681,
		-0.208636, -0.313241, -0.926472,
		37.448521, 42.268723, 55.614922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292484, 42.207588, 56.043243>,  <37.594566, 42.487991, 56.263454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292484, 42.207588, 56.043243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056416, 42.269089, 55.726246>,  <37.914772, 42.305988, 55.536045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056416, 42.269089, 55.726246>,  <38.292484, 42.207588, 56.043243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056416, 42.269089, 55.726246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804223, 0.197257, -0.560638,
		0.070125, -0.968220, -0.240069,
		-0.590176, 0.153755, -0.792498,
		37.879364, 42.315216, 55.488495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727386, 41.928886, 55.498890>,  <38.292484, 42.207588, 56.043243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727386, 41.928886, 55.498890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429626, 42.132416, 55.325924>,  <38.250973, 42.254532, 55.222145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429626, 42.132416, 55.325924>,  <38.727386, 41.928886, 55.498890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429626, 42.132416, 55.325924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652252, 0.415417, -0.634031,
		-0.142977, -0.754010, -0.641113,
		-0.744395, 0.508819, -0.432410,
		38.206306, 42.285061, 55.196201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627331, 41.609642, 54.906532>,  <38.727386, 41.928886, 55.498890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627331, 41.609642, 54.906532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496052, 41.986221, 54.875675>,  <38.417282, 42.212170, 54.857162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496052, 41.986221, 54.875675>,  <38.627331, 41.609642, 54.906532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496052, 41.986221, 54.875675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681906, 0.179621, -0.709042,
		-0.653673, -0.285314, -0.700934,
		-0.328202, 0.941452, -0.077144,
		38.397591, 42.268658, 54.852531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658752, 41.795815, 54.161812>,  <38.627331, 41.609642, 54.906532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658752, 41.795815, 54.161812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615700, 42.168701, 54.300022>,  <38.589867, 42.392433, 54.382946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615700, 42.168701, 54.300022>,  <38.658752, 41.795815, 54.161812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615700, 42.168701, 54.300022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653531, 0.328243, -0.682022,
		-0.749209, 0.152403, -0.644562,
		-0.107631, 0.932218, 0.345522,
		38.583412, 42.448368, 54.403679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437138, 42.348587, 53.618484>,  <38.658752, 41.795815, 54.161812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437138, 42.348587, 53.618484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637630, 42.555435, 53.896004>,  <38.757927, 42.679546, 54.062515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637630, 42.555435, 53.896004>,  <38.437138, 42.348587, 53.618484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637630, 42.555435, 53.896004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461253, 0.518711, -0.719851,
		-0.732131, 0.680826, 0.021469,
		0.501229, 0.517122, 0.693797,
		38.787998, 42.710571, 54.104141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465614, 42.995781, 53.306469>,  <38.437138, 42.348587, 53.618484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465614, 42.995781, 53.306469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742226, 43.000694, 53.595367>,  <38.908192, 43.003643, 53.768707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742226, 43.000694, 53.595367>,  <38.465614, 42.995781, 53.306469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742226, 43.000694, 53.595367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658064, 0.401610, -0.636915,
		-0.297885, 0.915728, 0.269641,
		0.691532, 0.012287, 0.722242,
		38.949684, 43.004379, 53.812038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685242, 43.713348, 53.296581>,  <38.465614, 42.995781, 53.306469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685242, 43.713348, 53.296581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955570, 43.477707, 53.473766>,  <39.117767, 43.336323, 53.580078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955570, 43.477707, 53.473766>,  <38.685242, 43.713348, 53.296581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955570, 43.477707, 53.473766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723738, 0.416635, -0.550108,
		0.139517, 0.692366, 0.707930,
		0.675824, -0.589105, 0.442964,
		39.158318, 43.300976, 53.606655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401489, 44.377468, 53.553108>,  <38.685242, 43.713348, 53.296581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401489, 44.377468, 53.553108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195107, 44.593719, 53.287323>,  <38.071278, 44.723473, 53.127853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195107, 44.593719, 53.287323>,  <38.401489, 44.377468, 53.553108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195107, 44.593719, 53.287323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856592, -0.331373, 0.395527,
		-0.006350, 0.773247, 0.634073,
		-0.515955, 0.540630, -0.664462,
		38.040321, 44.755909, 53.087986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945282, 44.802322, 53.887402>,  <38.401489, 44.377468, 53.553108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945282, 44.802322, 53.887402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794369, 44.758430, 53.519573>,  <37.703819, 44.732094, 53.298874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794369, 44.758430, 53.519573>,  <37.945282, 44.802322, 53.887402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794369, 44.758430, 53.519573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831257, -0.397598, 0.388495,
		-0.408251, 0.910975, 0.058791,
		-0.377284, -0.109733, -0.919573,
		37.681183, 44.725510, 53.243702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323738, 45.074425, 53.938862>,  <37.945282, 44.802322, 53.887402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323738, 45.074425, 53.938862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295746, 44.844276, 53.612904>,  <37.278950, 44.706188, 53.417328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295746, 44.844276, 53.612904>,  <37.323738, 45.074425, 53.938862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295746, 44.844276, 53.612904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848770, -0.394855, 0.351681,
		-0.524111, 0.716269, -0.460724,
		-0.069980, -0.575369, -0.814896,
		37.274754, 44.671665, 53.368435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638187, 45.237370, 53.587765>,  <37.323738, 45.074425, 53.938862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638187, 45.237370, 53.587765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773499, 44.880394, 53.468346>,  <36.854687, 44.666210, 53.396694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773499, 44.880394, 53.468346>,  <36.638187, 45.237370, 53.587765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773499, 44.880394, 53.468346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902923, -0.397192, 0.164223,
		-0.265137, 0.214008, -0.940161,
		0.338279, -0.892434, -0.298543,
		36.874981, 44.612663, 53.378784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079018, 44.991886, 53.287323>,  <36.638187, 45.237370, 53.587765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079018, 44.991886, 53.287323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310379, 44.677742, 53.375549>,  <36.449196, 44.489254, 53.428486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310379, 44.677742, 53.375549>,  <36.079018, 44.991886, 53.287323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310379, 44.677742, 53.375549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792506, -0.476914, 0.380114,
		-0.193338, -0.394659, -0.898256,
		0.578407, -0.785364, 0.220565,
		36.483902, 44.442131, 53.441719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541103, 44.466026, 53.082020>,  <36.079018, 44.991886, 53.287323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541103, 44.466026, 53.082020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829018, 44.302963, 53.306778>,  <36.001766, 44.205124, 53.441631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829018, 44.302963, 53.306778>,  <35.541103, 44.466026, 53.082020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829018, 44.302963, 53.306778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690158, -0.507424, 0.515948,
		0.074789, -0.759167, -0.646584,
		0.719783, -0.407658, 0.561895,
		36.044952, 44.180664, 53.475346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610607, 43.735096, 52.951820>,  <35.541103, 44.466026, 53.082020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610607, 43.735096, 52.951820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744690, 43.775711, 53.326485>,  <35.825138, 43.800079, 53.551281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744690, 43.775711, 53.326485>,  <35.610607, 43.735096, 52.951820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744690, 43.775711, 53.326485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819428, -0.459204, 0.343029,
		0.464948, -0.882509, -0.070724,
		0.335203, 0.101538, 0.936658,
		35.845249, 43.806171, 53.607483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493511, 43.049034, 53.222252>,  <35.610607, 43.735096, 52.951820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493511, 43.049034, 53.222252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553955, 43.261330, 53.555832>,  <35.590221, 43.388706, 53.755981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553955, 43.261330, 53.555832>,  <35.493511, 43.049034, 53.222252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553955, 43.261330, 53.555832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726663, -0.512312, 0.457709,
		0.670170, -0.675166, 0.308258,
		0.151105, 0.530742, 0.833955,
		35.599285, 43.420551, 53.806019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424465, 42.627197, 53.783127>,  <35.493511, 43.049034, 53.222252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424465, 42.627197, 53.783127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351978, 42.986694, 53.942837>,  <35.308487, 43.202393, 54.038662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351978, 42.986694, 53.942837>,  <35.424465, 42.627197, 53.783127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351978, 42.986694, 53.942837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771650, -0.381646, 0.508825,
		0.609685, -0.215892, 0.762676,
		-0.181220, 0.898742, 0.399277,
		35.297611, 43.256317, 54.062618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094738, 42.431431, 54.355705>,  <35.424465, 42.627197, 53.783127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094738, 42.431431, 54.355705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010433, 42.822289, 54.366814>,  <34.959850, 43.056805, 54.373478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010433, 42.822289, 54.366814>,  <35.094738, 42.431431, 54.355705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010433, 42.822289, 54.366814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834039, -0.194567, 0.516258,
		0.509861, 0.085647, 0.855983,
		-0.210762, 0.977143, 0.027769,
		34.947205, 43.115433, 54.375145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899235, 42.518665, 55.067696>,  <35.094738, 42.431431, 54.355705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899235, 42.518665, 55.067696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744545, 42.810562, 54.842155>,  <34.651733, 42.985699, 54.706833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744545, 42.810562, 54.842155>,  <34.899235, 42.518665, 55.067696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744545, 42.810562, 54.842155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902321, -0.173166, 0.394754,
		0.190428, 0.661433, 0.725426,
		-0.386723, 0.729739, -0.563849,
		34.628529, 43.029484, 54.673000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356720, 42.830276, 55.452717>,  <34.899235, 42.518665, 55.067696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356720, 42.830276, 55.452717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248589, 42.979683, 55.097771>,  <34.183712, 43.069324, 54.884804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248589, 42.979683, 55.097771>,  <34.356720, 42.830276, 55.452717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248589, 42.979683, 55.097771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920473, -0.370450, 0.124481,
		-0.282228, 0.850444, 0.443951,
		-0.270326, 0.373513, -0.887362,
		34.167492, 43.091736, 54.831562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736855, 43.331848, 55.529602>,  <34.356720, 42.830276, 55.452717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736855, 43.331848, 55.529602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734734, 43.176842, 55.160862>,  <33.733463, 43.083836, 54.939617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734734, 43.176842, 55.160862>,  <33.736855, 43.331848, 55.529602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734734, 43.176842, 55.160862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857257, -0.472875, 0.203713,
		-0.514861, 0.791339, -0.329697,
		-0.005301, -0.387519, -0.921846,
		33.733143, 43.060585, 54.884308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078495, 43.518993, 55.276730>,  <33.736855, 43.331848, 55.529602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078495, 43.518993, 55.276730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208912, 43.221436, 55.043381>,  <33.287163, 43.042900, 54.903370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208912, 43.221436, 55.043381>,  <33.078495, 43.518993, 55.276730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208912, 43.221436, 55.043381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882322, -0.461011, 0.094744,
		-0.339421, 0.483833, -0.806659,
		0.326038, -0.743891, -0.583374,
		33.306725, 42.998268, 54.868370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.634701, 36.867653, 50.784046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.821327, 37.018173, 51.104225>,  <33.933304, 37.108486, 51.296333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.821327, 37.018173, 51.104225>,  <33.634701, 36.867653, 50.784046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821327, 37.018173, 51.104225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626373, 0.498384, -0.599391,
		-0.624480, 0.781034, -0.003175,
		0.466563, 0.376297, 0.800450,
		33.961296, 37.131062, 51.344360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606243, 37.577824, 50.817722>,  <33.634701, 36.867653, 50.784046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606243, 37.577824, 50.817722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.913246, 37.521866, 51.067959>,  <34.097446, 37.488293, 51.218102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.913246, 37.521866, 51.067959>,  <33.606243, 37.577824, 50.817722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913246, 37.521866, 51.067959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538322, 0.670523, -0.510499,
		-0.348061, 0.728581, 0.589935,
		0.767505, -0.139890, 0.625594,
		34.143497, 37.479900, 51.255638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848949, 38.244072, 50.936718>,  <33.606243, 37.577824, 50.817722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848949, 38.244072, 50.936718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.144218, 37.993492, 51.036850>,  <34.321381, 37.843143, 51.096928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.144218, 37.993492, 51.036850>,  <33.848949, 38.244072, 50.936718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144218, 37.993492, 51.036850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668287, 0.628366, -0.398181,
		0.092143, 0.461217, 0.882490,
		0.738175, -0.626446, 0.250326,
		34.365669, 37.805557, 51.111946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429058, 38.623722, 51.280193>,  <33.848949, 38.244072, 50.936718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429058, 38.623722, 51.280193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.598133, 38.279922, 51.165230>,  <34.699577, 38.073643, 51.096252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.598133, 38.279922, 51.165230>,  <34.429058, 38.623722, 51.280193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598133, 38.279922, 51.165230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792419, 0.504399, -0.343008,
		0.439781, -0.082761, 0.894284,
		0.422688, -0.859495, -0.287406,
		34.724941, 38.022076, 51.079006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090057, 38.871658, 51.250778>,  <34.429058, 38.623722, 51.280193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090057, 38.871658, 51.250778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.125225, 38.500259, 51.106468>,  <35.146324, 38.277420, 51.019882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.125225, 38.500259, 51.106468>,  <35.090057, 38.871658, 51.250778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125225, 38.500259, 51.106468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738954, 0.303665, -0.601444,
		0.667995, -0.213716, 0.712817,
		0.087920, -0.928500, -0.360773,
		35.151600, 38.221710, 50.998238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808792, 38.648861, 51.400768>,  <35.090057, 38.871658, 51.250778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808792, 38.648861, 51.400768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670799, 38.459396, 51.076637>,  <35.588001, 38.345718, 50.882156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670799, 38.459396, 51.076637>,  <35.808792, 38.648861, 51.400768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670799, 38.459396, 51.076637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738171, 0.396321, -0.545924,
		0.579732, -0.786497, 0.212916,
		-0.344985, -0.473658, -0.810330,
		35.567303, 38.317299, 50.833538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402988, 38.201405, 50.990978>,  <35.808792, 38.648861, 51.400768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402988, 38.201405, 50.990978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113010, 38.290146, 50.730141>,  <35.939022, 38.343391, 50.573639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113010, 38.290146, 50.730141>,  <36.402988, 38.201405, 50.990978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113010, 38.290146, 50.730141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688398, 0.265777, -0.674886,
		0.023589, -0.938160, -0.345396,
		-0.724950, 0.221850, -0.652097,
		35.895527, 38.356701, 50.534512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753975, 38.215294, 50.396145>,  <36.402988, 38.201405, 50.990978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753975, 38.215294, 50.396145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.400993, 38.364883, 50.282013>,  <36.189205, 38.454636, 50.213531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.400993, 38.364883, 50.282013>,  <36.753975, 38.215294, 50.396145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400993, 38.364883, 50.282013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462500, 0.579141, -0.671335,
		-0.085811, -0.724391, -0.684028,
		-0.882457, 0.373971, -0.285334,
		36.136257, 38.477074, 50.196411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839279, 38.282974, 49.618004>,  <36.753975, 38.215294, 50.396145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839279, 38.282974, 49.618004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.527695, 38.512192, 49.719856>,  <36.340744, 38.649723, 49.780968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.527695, 38.512192, 49.719856>,  <36.839279, 38.282974, 49.618004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527695, 38.512192, 49.719856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369661, 0.747645, -0.551704,
		-0.506529, -0.335626, -0.794219,
		-0.778960, 0.573046, 0.254636,
		36.294006, 38.684105, 49.796246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503273, 38.572620, 49.028324>,  <36.839279, 38.282974, 49.618004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503273, 38.572620, 49.028324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.418983, 38.838341, 49.315186>,  <36.368412, 38.997772, 49.487301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.418983, 38.838341, 49.315186>,  <36.503273, 38.572620, 49.028324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418983, 38.838341, 49.315186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395030, 0.728922, -0.559128,
		-0.894174, 0.165476, -0.416017,
		-0.210722, 0.664297, 0.717151,
		36.355766, 39.037628, 49.530331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328568, 39.087509, 48.707863>,  <36.503273, 38.572620, 49.028324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328568, 39.087509, 48.707863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.397453, 39.276726, 49.053482>,  <36.438786, 39.390255, 49.260853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.397453, 39.276726, 49.053482>,  <36.328568, 39.087509, 48.707863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397453, 39.276726, 49.053482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304719, 0.808545, -0.503389,
		-0.936744, 0.349981, -0.004905,
		0.172211, 0.473041, 0.864046,
		36.449116, 39.418636, 49.312695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023666, 39.759289, 48.649284>,  <36.328568, 39.087509, 48.707863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023666, 39.759289, 48.649284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.312065, 39.774506, 48.926041>,  <36.485104, 39.783634, 49.092094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.312065, 39.774506, 48.926041>,  <36.023666, 39.759289, 48.649284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312065, 39.774506, 48.926041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484072, 0.686802, -0.542197,
		-0.495821, 0.725848, 0.476766,
		0.720997, 0.038044, 0.691893,
		36.528362, 39.785919, 49.133610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173992, 40.482510, 48.721664>,  <36.023666, 39.759289, 48.649284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173992, 40.482510, 48.721664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501633, 40.348557, 48.907967>,  <36.698215, 40.268185, 49.019749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501633, 40.348557, 48.907967>,  <36.173992, 40.482510, 48.721664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501633, 40.348557, 48.907967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564533, 0.614741, -0.550814,
		-0.101860, 0.714106, 0.692588,
		0.819102, -0.334883, 0.465754,
		36.747364, 40.248093, 49.047691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664314, 41.066666, 48.739540>,  <36.173992, 40.482510, 48.721664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664314, 41.066666, 48.739540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.904198, 40.759521, 48.829643>,  <37.048126, 40.575233, 48.883705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.904198, 40.759521, 48.829643>,  <36.664314, 41.066666, 48.739540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904198, 40.759521, 48.829643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747260, 0.436672, -0.500919,
		0.286273, 0.468731, 0.835667,
		0.599709, -0.767860, 0.225256,
		37.084110, 40.529163, 48.897221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480030, 41.721020, 49.231903>,  <36.664314, 41.066666, 48.739540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480030, 41.721020, 49.231903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232697, 41.996582, 49.080608>,  <36.084297, 42.161919, 48.989830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232697, 41.996582, 49.080608>,  <36.480030, 41.721020, 49.231903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232697, 41.996582, 49.080608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776247, -0.460094, 0.430991,
		0.122889, 0.560104, 0.819257,
		-0.618335, 0.688910, -0.378239,
		36.047195, 42.203255, 48.967136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158516, 41.985222, 49.807987>,  <36.480030, 41.721020, 49.231903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158516, 41.985222, 49.807987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.917007, 42.053177, 49.496449>,  <35.772102, 42.093948, 49.309525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.917007, 42.053177, 49.496449>,  <36.158516, 41.985222, 49.807987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917007, 42.053177, 49.496449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740120, -0.482397, 0.468526,
		-0.296115, 0.859320, 0.416995,
		-0.603771, 0.169889, -0.778844,
		35.735878, 42.104145, 49.262794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533955, 42.204117, 50.114998>,  <36.158516, 41.985222, 49.807987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533955, 42.204117, 50.114998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380997, 42.103951, 49.759232>,  <35.289223, 42.043850, 49.545773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380997, 42.103951, 49.759232>,  <35.533955, 42.204117, 50.114998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380997, 42.103951, 49.759232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749740, -0.478520, 0.457065,
		-0.540060, 0.841613, -0.004762,
		-0.382394, -0.250413, -0.889420,
		35.266277, 42.028828, 49.492405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917919, 42.414284, 50.202736>,  <35.533955, 42.204117, 50.114998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917919, 42.414284, 50.202736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927219, 42.145935, 49.906254>,  <34.932800, 41.984924, 49.728363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927219, 42.145935, 49.906254>,  <34.917919, 42.414284, 50.202736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927219, 42.145935, 49.906254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838769, -0.416514, 0.350687,
		-0.543990, 0.613548, -0.572393,
		0.023246, -0.670876, -0.741205,
		34.934193, 41.944672, 49.683891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196903, 42.251431, 50.057568>,  <34.917919, 42.414284, 50.202736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196903, 42.251431, 50.057568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.405464, 41.945488, 49.906239>,  <34.530602, 41.761921, 49.815441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.405464, 41.945488, 49.906239>,  <34.196903, 42.251431, 50.057568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405464, 41.945488, 49.906239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709111, -0.635000, 0.306490,
		-0.474654, 0.108464, -0.873464,
		0.521406, -0.764860, -0.378318,
		34.561886, 41.716030, 49.792744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761829, 41.815674, 49.607697>,  <34.196903, 42.251431, 50.057568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761829, 41.815674, 49.607697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.045677, 41.566422, 49.739235>,  <34.215988, 41.416870, 49.818157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.045677, 41.566422, 49.739235>,  <33.761829, 41.815674, 49.607697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045677, 41.566422, 49.739235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703565, -0.651755, 0.283218,
		0.037844, -0.432342, -0.900915,
		0.709623, -0.623134, 0.328845,
		34.258564, 41.379482, 49.837887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640232, 41.145565, 49.321976>,  <33.761829, 41.815674, 49.607697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640232, 41.145565, 49.321976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.866623, 41.063751, 49.641434>,  <34.002457, 41.014664, 49.833107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.866623, 41.063751, 49.641434>,  <33.640232, 41.145565, 49.321976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866623, 41.063751, 49.641434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688244, -0.650531, 0.321138,
		0.453860, -0.731420, -0.508955,
		0.565978, -0.204533, 0.798646,
		34.036415, 41.002392, 49.881027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450806, 40.458393, 49.508354>,  <33.640232, 41.145565, 49.321976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450806, 40.458393, 49.508354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.648289, 40.557663, 49.841740>,  <33.766781, 40.617226, 50.041771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.648289, 40.557663, 49.841740>,  <33.450806, 40.458393, 49.508354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648289, 40.557663, 49.841740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570378, -0.631055, 0.525774,
		0.656443, -0.734969, -0.170008,
		0.493712, 0.248171, 0.833462,
		33.796402, 40.632114, 50.091778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629711, 39.884483, 49.848118>,  <33.450806, 40.458393, 49.508354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629711, 39.884483, 49.848118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.648609, 40.161995, 50.135574>,  <33.659946, 40.328503, 50.308048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.648609, 40.161995, 50.135574>,  <33.629711, 39.884483, 49.848118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648609, 40.161995, 50.135574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557755, -0.578518, 0.595169,
		0.828660, -0.428944, 0.359625,
		0.047245, 0.693775, 0.718641,
		33.662781, 40.370129, 50.351166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746040, 39.517776, 50.424072>,  <33.629711, 39.884483, 49.848118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746040, 39.517776, 50.424072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.618347, 39.864838, 50.576523>,  <33.541729, 40.073074, 50.667995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.618347, 39.864838, 50.576523>,  <33.746040, 39.517776, 50.424072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618347, 39.864838, 50.576523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543437, -0.497086, 0.676449,
		0.776379, 0.008827, 0.630204,
		-0.319236, 0.867657, 0.381130,
		33.522575, 40.125134, 50.690861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697765, 39.375893, 51.196354>,  <33.746040, 39.517776, 50.424072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697765, 39.375893, 51.196354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.483143, 39.706459, 51.128071>,  <33.354370, 39.904800, 51.087101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.483143, 39.706459, 51.128071>,  <33.697765, 39.375893, 51.196354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483143, 39.706459, 51.128071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726289, -0.349246, 0.592056,
		0.429668, 0.441654, 0.787609,
		-0.536553, 0.826419, -0.170709,
		33.322178, 39.954384, 51.076859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666359, 39.664043, 51.788990>,  <33.697765, 39.375893, 51.196354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666359, 39.664043, 51.788990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.339275, 39.803268, 51.605598>,  <33.143024, 39.886803, 51.495564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.339275, 39.803268, 51.605598>,  <33.666359, 39.664043, 51.788990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339275, 39.803268, 51.605598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561842, -0.309285, 0.767252,
		0.125250, 0.884983, 0.448461,
		-0.817708, 0.348063, -0.458483,
		33.093964, 39.907688, 51.468052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254498, 40.172119, 52.259941>,  <33.666359, 39.664043, 51.788990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254498, 40.172119, 52.259941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.002495, 40.037987, 51.979755>,  <32.851295, 39.957508, 51.811646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.002495, 40.037987, 51.979755>,  <33.254498, 40.172119, 52.259941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002495, 40.037987, 51.979755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668880, -0.223977, 0.708826,
		-0.394581, 0.915088, -0.083192,
		-0.630005, -0.335335, -0.700460,
		32.813492, 39.937386, 51.769619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543411, 40.461369, 52.390694>,  <33.254498, 40.172119, 52.259941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543411, 40.461369, 52.390694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502289, 40.124565, 52.178860>,  <32.477615, 39.922485, 52.051758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502289, 40.124565, 52.178860>,  <32.543411, 40.461369, 52.390694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502289, 40.124565, 52.178860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764731, -0.273562, 0.583395,
		-0.636096, 0.464966, -0.615784,
		-0.102803, -0.842004, -0.529585,
		32.471447, 39.871964, 52.019985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093712, 40.919106, 52.011322>,  <32.543411, 40.461369, 52.390694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093712, 40.919106, 52.011322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.868954, 41.230431, 52.123398>,  <31.734100, 41.417225, 52.190643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.868954, 41.230431, 52.123398>,  <32.093712, 40.919106, 52.011322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868954, 41.230431, 52.123398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693432, 0.627859, -0.353475,
		-0.451032, -0.004326, -0.892497,
		-0.561891, 0.778315, 0.280185,
		31.700386, 41.463924, 52.207455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990023, 41.321785, 51.389103>,  <32.093712, 40.919106, 52.011322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990023, 41.321785, 51.389103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.901472, 41.599831, 51.662689>,  <31.848343, 41.766659, 51.826839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.901472, 41.599831, 51.662689>,  <31.990023, 41.321785, 51.389103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901472, 41.599831, 51.662689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652135, 0.626995, -0.426142,
		-0.725061, 0.351701, -0.592109,
		-0.221375, 0.695114, 0.683966,
		31.835060, 41.808365, 51.867878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997299, 41.939365, 51.021091>,  <31.990023, 41.321785, 51.389103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997299, 41.939365, 51.021091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.042603, 42.041801, 51.405090>,  <32.069786, 42.103264, 51.635490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.042603, 42.041801, 51.405090>,  <31.997299, 41.939365, 51.021091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042603, 42.041801, 51.405090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623513, 0.733948, -0.269355,
		-0.773565, 0.629076, -0.076552,
		0.113260, 0.256095, 0.959994,
		32.076580, 42.118629, 51.693089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000629, 42.660435, 51.060345>,  <31.997299, 41.939365, 51.021091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000629, 42.660435, 51.060345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.190098, 42.584869, 51.404423>,  <32.303780, 42.539528, 51.610870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.190098, 42.584869, 51.404423>,  <32.000629, 42.660435, 51.060345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190098, 42.584869, 51.404423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687554, 0.689695, -0.227137,
		-0.550365, 0.699022, 0.456581,
		0.473675, -0.188916, 0.860199,
		32.332199, 42.528194, 51.662483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259144, 43.342422, 51.270256>,  <32.000629, 42.660435, 51.060345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259144, 43.342422, 51.270256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.453003, 43.078346, 51.499786>,  <32.569317, 42.919903, 51.637505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.453003, 43.078346, 51.499786>,  <32.259144, 43.342422, 51.270256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453003, 43.078346, 51.499786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835724, 0.543151, -0.080944,
		-0.258233, 0.518786, 0.814970,
		0.484645, -0.660188, 0.573822,
		32.598396, 42.880291, 51.671932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548389, 43.763802, 51.853745>,  <32.259144, 43.342422, 51.270256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548389, 43.763802, 51.853745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.734230, 43.412285, 51.810158>,  <32.845734, 43.201374, 51.784004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.734230, 43.412285, 51.810158>,  <32.548389, 43.763802, 51.853745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734230, 43.412285, 51.810158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868023, 0.476304, -0.140251,
		0.175153, -0.029426, 0.984101,
		0.464604, -0.878788, -0.108968,
		32.873611, 43.148647, 51.777466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124718, 43.776051, 52.277649>,  <32.548389, 43.763802, 51.853745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124718, 43.776051, 52.277649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.201889, 43.511292, 51.987911>,  <33.248192, 43.352436, 51.814068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.201889, 43.511292, 51.987911>,  <33.124718, 43.776051, 52.277649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201889, 43.511292, 51.987911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840851, 0.491999, -0.225624,
		0.505716, -0.565534, 0.651477,
		0.192928, -0.661897, -0.724342,
		33.259766, 43.312721, 51.770607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947441, 43.809441, 52.225826>,  <33.124718, 43.776051, 52.277649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947441, 43.809441, 52.225826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.816795, 43.626534, 51.894955>,  <33.738407, 43.516788, 51.696430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.816795, 43.626534, 51.894955>,  <33.947441, 43.809441, 52.225826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816795, 43.626534, 51.894955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709397, 0.459720, -0.534239,
		0.624562, -0.761292, 0.174231,
		-0.326614, -0.457265, -0.827183,
		33.718811, 43.489353, 51.646801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539829, 43.584740, 51.938278>,  <33.947441, 43.809441, 52.225826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539829, 43.584740, 51.938278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.276714, 43.588776, 51.637024>,  <34.118847, 43.591198, 51.456272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.276714, 43.588776, 51.637024>,  <34.539829, 43.584740, 51.938278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276714, 43.588776, 51.637024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663068, 0.482074, -0.572665,
		0.357289, -0.876073, -0.323793,
		-0.657788, 0.010090, -0.753135,
		34.079376, 43.591801, 51.411083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842194, 43.203991, 51.436695>,  <34.539829, 43.584740, 51.938278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842194, 43.203991, 51.436695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565704, 43.432076, 51.259125>,  <34.399811, 43.568928, 51.152584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565704, 43.432076, 51.259125>,  <34.842194, 43.203991, 51.436695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565704, 43.432076, 51.259125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710432, 0.423758, -0.561885,
		-0.132277, -0.703766, -0.698008,
		-0.691222, 0.570212, -0.443925,
		34.358337, 43.603138, 51.125946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920517, 43.109207, 50.666996>,  <34.842194, 43.203991, 51.436695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920517, 43.109207, 50.666996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.756523, 43.464737, 50.748871>,  <34.658127, 43.678055, 50.797997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.756523, 43.464737, 50.748871>,  <34.920517, 43.109207, 50.666996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756523, 43.464737, 50.748871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698863, 0.450335, -0.555688,
		-0.586089, -0.084774, -0.805799,
		-0.409987, 0.888826, 0.204691,
		34.633526, 43.731384, 50.810280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798477, 43.463921, 50.014111>,  <34.920517, 43.109207, 50.666996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798477, 43.463921, 50.014111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.760452, 43.781075, 50.254875>,  <34.737637, 43.971367, 50.399334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.760452, 43.781075, 50.254875>,  <34.798477, 43.463921, 50.014111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760452, 43.781075, 50.254875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490121, 0.563566, -0.664962,
		-0.866455, 0.231795, -0.442185,
		-0.095065, 0.792884, 0.601912,
		34.731934, 44.018940, 50.435448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617191, 44.006138, 49.555088>,  <34.798477, 43.463921, 50.014111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617191, 44.006138, 49.555088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.765533, 44.180435, 49.883137>,  <34.854538, 44.285011, 50.079967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.765533, 44.180435, 49.883137>,  <34.617191, 44.006138, 49.555088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765533, 44.180435, 49.883137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569689, 0.590682, -0.571445,
		-0.733431, 0.679137, -0.029179,
		0.370854, 0.435739, 0.820121,
		34.876789, 44.311157, 50.129173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672085, 44.602570, 49.310726>,  <34.617191, 44.006138, 49.555088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672085, 44.602570, 49.310726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.899666, 44.603683, 49.639671>,  <35.036213, 44.604351, 49.837040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.899666, 44.603683, 49.639671>,  <34.672085, 44.602570, 49.310726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899666, 44.603683, 49.639671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634258, 0.635033, -0.440965,
		-0.523459, 0.772480, 0.359535,
		0.568953, 0.002789, 0.822365,
		35.070351, 44.604519, 49.886379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.479031, 43.370998, 54.550163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700661, 43.038086, 54.543152>,  <32.833637, 42.838337, 54.538944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700661, 43.038086, 54.543152>,  <32.479031, 43.370998, 54.550163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700661, 43.038086, 54.543152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817986, -0.548226, 0.174203,
		-0.154594, -0.082185, -0.984554,
		0.554075, -0.832282, -0.017526,
		32.866882, 42.788403, 54.537895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130798, 42.853363, 54.119587>,  <32.479031, 43.370998, 54.550163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130798, 42.853363, 54.119587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.366890, 42.611282, 54.333267>,  <32.508545, 42.466034, 54.461475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.366890, 42.611282, 54.333267>,  <32.130798, 42.853363, 54.119587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366890, 42.611282, 54.333267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801928, -0.515367, 0.302171,
		0.092434, -0.606737, -0.789510,
		0.590226, -0.605199, 0.534197,
		32.543957, 42.429722, 54.493526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971210, 42.151138, 53.957253>,  <32.130798, 42.853363, 54.119587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971210, 42.151138, 53.957253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.131584, 42.161324, 54.323555>,  <32.227810, 42.167435, 54.543335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.131584, 42.161324, 54.323555>,  <31.971210, 42.151138, 53.957253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131584, 42.161324, 54.323555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824177, -0.426417, 0.372694,
		0.399981, -0.904168, -0.149981,
		0.400933, 0.025460, 0.915754,
		32.251865, 42.168961, 54.598282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771023, 41.626446, 54.196217>,  <31.971210, 42.151138, 53.957253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771023, 41.626446, 54.196217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.889153, 41.814056, 54.529152>,  <31.960030, 41.926624, 54.728912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.889153, 41.814056, 54.529152>,  <31.771023, 41.626446, 54.196217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889153, 41.814056, 54.529152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811551, -0.336568, 0.477606,
		0.504151, -0.816537, 0.281246,
		0.295325, 0.469031, 0.832342,
		31.977751, 41.954765, 54.778854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751442, 41.138016, 54.702347>,  <31.771023, 41.626446, 54.196217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751442, 41.138016, 54.702347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.742722, 41.469337, 54.926289>,  <31.737490, 41.668129, 55.060654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.742722, 41.469337, 54.926289>,  <31.751442, 41.138016, 54.702347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742722, 41.469337, 54.926289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736004, -0.392293, 0.551728,
		0.676626, -0.400029, 0.618187,
		-0.021803, 0.828301, 0.559858,
		31.736181, 41.717827, 55.094246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816359, 40.958076, 55.445206>,  <31.751442, 41.138016, 54.702347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816359, 40.958076, 55.445206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.660204, 41.326210, 55.435532>,  <31.566511, 41.547089, 55.429729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.660204, 41.326210, 55.435532>,  <31.816359, 40.958076, 55.445206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660204, 41.326210, 55.435532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737868, -0.297066, 0.606055,
		0.550589, 0.254438, 0.795056,
		-0.390388, 0.920333, -0.024181,
		31.543087, 41.602310, 55.428276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620714, 41.153843, 56.162621>,  <31.816359, 40.958076, 55.445206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620714, 41.153843, 56.162621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.404728, 41.400627, 55.933609>,  <31.275137, 41.548698, 55.796200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.404728, 41.400627, 55.933609>,  <31.620714, 41.153843, 56.162621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404728, 41.400627, 55.933609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789748, -0.136123, 0.598137,
		0.291095, 0.775129, 0.560748,
		-0.539965, 0.616965, -0.572532,
		31.242739, 41.585716, 55.761848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149527, 41.511143, 56.697098>,  <31.620714, 41.153843, 56.162621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149527, 41.511143, 56.697098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996626, 41.560799, 56.330826>,  <30.904886, 41.590591, 56.111061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996626, 41.560799, 56.330826>,  <31.149527, 41.511143, 56.697098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996626, 41.560799, 56.330826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914887, -0.190104, 0.356148,
		-0.129863, 0.973884, 0.186241,
		-0.382252, 0.124139, -0.915682,
		30.881950, 41.598042, 56.056122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539892, 41.883358, 56.830772>,  <31.149527, 41.511143, 56.697098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539892, 41.883358, 56.830772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491734, 41.720169, 56.468765>,  <30.462839, 41.622253, 56.251560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491734, 41.720169, 56.468765>,  <30.539892, 41.883358, 56.830772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491734, 41.720169, 56.468765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875531, -0.386071, 0.290509,
		-0.467922, 0.827349, -0.310713,
		-0.120395, -0.407975, -0.905020,
		30.455616, 41.597778, 56.197258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878157, 42.165730, 56.497990>,  <30.539892, 41.883358, 56.830772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878157, 42.165730, 56.497990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.979303, 41.807457, 56.351662>,  <30.039991, 41.592495, 56.263866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.979303, 41.807457, 56.351662>,  <29.878157, 42.165730, 56.497990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979303, 41.807457, 56.351662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877994, -0.371272, 0.302131,
		-0.406429, 0.244786, -0.880281,
		0.252866, -0.895677, -0.365817,
		30.055162, 41.538754, 56.241917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276447, 41.832344, 56.450977>,  <29.878157, 42.165730, 56.497990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276447, 41.832344, 56.450977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.494587, 41.507507, 56.367928>,  <29.625471, 41.312607, 56.318100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.494587, 41.507507, 56.367928>,  <29.276447, 41.832344, 56.450977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494587, 41.507507, 56.367928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772704, -0.583059, 0.250940,
		-0.324840, 0.023579, -0.945475,
		0.545351, -0.812088, -0.207620,
		29.658192, 41.263882, 56.305641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795448, 41.447811, 56.120403>,  <29.276447, 41.832344, 56.450977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795448, 41.447811, 56.120403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.082794, 41.207176, 56.260139>,  <29.255201, 41.062794, 56.343983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.082794, 41.207176, 56.260139>,  <28.795448, 41.447811, 56.120403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082794, 41.207176, 56.260139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694330, -0.588909, 0.413633,
		-0.043106, -0.539699, -0.840754,
		0.718365, -0.601590, 0.349343,
		29.298304, 41.026699, 56.364941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499252, 40.802677, 56.074333>,  <28.795448, 41.447811, 56.120403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499252, 40.802677, 56.074333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.799122, 40.802719, 56.339058>,  <28.979044, 40.802742, 56.497890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.799122, 40.802719, 56.339058>,  <28.499252, 40.802677, 56.074333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799122, 40.802719, 56.339058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435501, -0.752904, 0.493432,
		0.498329, -0.658131, -0.564386,
		0.749672, 0.000101, 0.661810,
		29.024023, 40.802750, 56.537601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454166, 40.167717, 56.424652>,  <28.499252, 40.802677, 56.074333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454166, 40.167717, 56.424652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.747421, 40.315331, 56.653152>,  <28.923374, 40.403900, 56.790253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.747421, 40.315331, 56.653152>,  <28.454166, 40.167717, 56.424652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747421, 40.315331, 56.653152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174797, -0.709500, 0.682683,
		0.657234, -0.600352, -0.455655,
		0.733137, 0.369035, 0.571247,
		28.967361, 40.426041, 56.824528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030848, 39.635689, 56.074089>,  <28.454166, 40.167717, 56.424652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030848, 39.635689, 56.074089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.946278, 39.332565, 55.827179>,  <27.895535, 39.150692, 55.679031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.946278, 39.332565, 55.827179>,  <28.030848, 39.635689, 56.074089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946278, 39.332565, 55.827179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637666, 0.371681, -0.674712,
		0.740730, -0.536267, 0.404644,
		-0.211427, -0.757807, -0.617274,
		27.882849, 39.105225, 55.641998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648266, 39.434479, 55.860893>,  <28.030848, 39.635689, 56.074089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648266, 39.434479, 55.860893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.393456, 39.301666, 55.582626>,  <28.240568, 39.221977, 55.415668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.393456, 39.301666, 55.582626>,  <28.648266, 39.434479, 55.860893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393456, 39.301666, 55.582626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670455, 0.206670, -0.712585,
		0.380376, -0.920348, 0.090961,
		-0.637027, -0.332036, -0.695664,
		28.202347, 39.202057, 55.373928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103058, 38.968609, 55.427128>,  <28.648266, 39.434479, 55.860893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103058, 38.968609, 55.427128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.786999, 39.087944, 55.212967>,  <28.597363, 39.159546, 55.084469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.786999, 39.087944, 55.212967>,  <29.103058, 38.968609, 55.427128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786999, 39.087944, 55.212967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608629, 0.278776, -0.742870,
		-0.072368, -0.912841, -0.401852,
		-0.790148, 0.298338, -0.535407,
		28.549953, 39.177444, 55.052345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340296, 38.810001, 54.731880>,  <29.103058, 38.968609, 55.427128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340296, 38.810001, 54.731880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.008801, 39.017570, 54.648056>,  <28.809904, 39.142113, 54.597763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.008801, 39.017570, 54.648056>,  <29.340296, 38.810001, 54.731880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008801, 39.017570, 54.648056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449342, 0.393792, -0.801885,
		-0.333593, -0.758715, -0.559523,
		-0.828738, 0.518921, -0.209556,
		28.760180, 39.173248, 54.585190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127062, 38.779816, 54.014832>,  <29.340296, 38.810001, 54.731880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127062, 38.779816, 54.014832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.999638, 39.130081, 54.160011>,  <28.923183, 39.340240, 54.247120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.999638, 39.130081, 54.160011>,  <29.127062, 38.779816, 54.014832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999638, 39.130081, 54.160011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449455, 0.476657, -0.755505,
		-0.834571, -0.077545, -0.545416,
		-0.318562, 0.875662, 0.362951,
		28.904068, 39.392780, 54.268898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222954, 39.219318, 53.482891>,  <29.127062, 38.779816, 54.014832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222954, 39.219318, 53.482891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.155977, 39.491997, 53.767780>,  <29.115791, 39.655602, 53.938713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.155977, 39.491997, 53.767780>,  <29.222954, 39.219318, 53.482891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155977, 39.491997, 53.767780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485867, 0.685657, -0.542040,
		-0.857844, 0.255283, -0.446021,
		-0.167443, 0.681693, 0.712220,
		29.105743, 39.696503, 53.981445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915909, 39.812763, 53.120426>,  <29.222954, 39.219318, 53.482891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915909, 39.812763, 53.120426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.084637, 39.924461, 53.465469>,  <29.185873, 39.991482, 53.672493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.084637, 39.924461, 53.465469>,  <28.915909, 39.812763, 53.120426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084637, 39.924461, 53.465469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484299, 0.734904, -0.474733,
		-0.766500, 0.618011, 0.174758,
		0.421820, 0.279248, 0.862606,
		29.211184, 40.008236, 53.724251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815180, 40.538654, 53.160427>,  <28.915909, 39.812763, 53.120426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815180, 40.538654, 53.160427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.116600, 40.460251, 53.411423>,  <29.297453, 40.413208, 53.562019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.116600, 40.460251, 53.411423>,  <28.815180, 40.538654, 53.160427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116600, 40.460251, 53.411423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548480, 0.713651, -0.435743,
		-0.362397, 0.672519, 0.645280,
		0.753550, -0.196011, 0.627488,
		29.342665, 40.401447, 53.599670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178112, 41.188694, 53.330147>,  <28.815180, 40.538654, 53.160427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178112, 41.188694, 53.330147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.455288, 40.918831, 53.431866>,  <29.621593, 40.756912, 53.492897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.455288, 40.918831, 53.431866>,  <29.178112, 41.188694, 53.330147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455288, 40.918831, 53.431866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687785, 0.512735, -0.513863,
		0.216298, 0.530977, 0.819316,
		0.692941, -0.674661, 0.254294,
		29.663170, 40.716434, 53.508156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697212, 41.606716, 53.400887>,  <29.178112, 41.188694, 53.330147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697212, 41.606716, 53.400887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.844547, 41.238007, 53.352440>,  <29.932949, 41.016781, 53.323372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.844547, 41.238007, 53.352440>,  <29.697212, 41.606716, 53.400887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844547, 41.238007, 53.352440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835473, 0.385332, -0.391795,
		0.407814, 0.043125, 0.912046,
		0.368337, -0.921770, -0.121114,
		29.955048, 40.961475, 53.316105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362934, 41.567036, 53.686878>,  <29.697212, 41.606716, 53.400887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362934, 41.567036, 53.686878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.343407, 41.278679, 53.410347>,  <30.331690, 41.105667, 53.244427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.343407, 41.278679, 53.410347>,  <30.362934, 41.567036, 53.686878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343407, 41.278679, 53.410347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816038, 0.370324, -0.443781,
		0.575933, -0.585817, 0.570193,
		-0.048818, -0.720887, -0.691331,
		30.328762, 41.062412, 53.202950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108795, 41.348541, 53.616898>,  <30.362934, 41.567036, 53.686878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108795, 41.348541, 53.616898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.908756, 41.212418, 53.298378>,  <30.788733, 41.130741, 53.107265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.908756, 41.212418, 53.298378>,  <31.108795, 41.348541, 53.616898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908756, 41.212418, 53.298378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711002, 0.363573, -0.601906,
		0.494349, -0.867180, 0.060142,
		-0.500095, -0.340313, -0.796299,
		30.758728, 41.110325, 53.059486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610884, 41.000191, 53.242260>,  <31.108795, 41.348541, 53.616898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610884, 41.000191, 53.242260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350485, 41.065445, 52.945724>,  <31.194244, 41.104595, 52.767803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350485, 41.065445, 52.945724>,  <31.610884, 41.000191, 53.242260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350485, 41.065445, 52.945724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708507, 0.481096, -0.516299,
		0.272432, -0.861356, -0.428773,
		-0.650998, 0.163132, -0.741343,
		31.155186, 41.114384, 52.723320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972637, 40.850288, 52.715950>,  <31.610884, 41.000191, 53.242260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972637, 40.850288, 52.715950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.662811, 41.065689, 52.583248>,  <31.476915, 41.194931, 52.503628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.662811, 41.065689, 52.583248>,  <31.972637, 40.850288, 52.715950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662811, 41.065689, 52.583248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617797, 0.531723, -0.579308,
		-0.135557, -0.653670, -0.744540,
		-0.774565, 0.538504, -0.331757,
		31.430441, 41.227242, 52.483723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787201, 40.080463, 52.705021>,  <31.972637, 40.850288, 52.715950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787201, 40.080463, 52.705021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.964560, 39.834465, 52.444199>,  <32.070976, 39.686867, 52.287704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.964560, 39.834465, 52.444199>,  <31.787201, 40.080463, 52.705021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964560, 39.834465, 52.444199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636362, -0.728309, 0.254184,
		-0.631222, 0.302241, -0.714289,
		0.443398, -0.614993, -0.652059,
		32.097580, 39.649967, 52.248581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151087, 39.752632, 52.369789>,  <31.787201, 40.080463, 52.705021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151087, 39.752632, 52.369789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.479650, 39.524681, 52.360619>,  <31.676788, 39.387909, 52.355118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.479650, 39.524681, 52.360619>,  <31.151087, 39.752632, 52.369789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479650, 39.524681, 52.360619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544652, -0.795713, 0.264943,
		-0.169228, -0.205140, -0.963992,
		0.821411, -0.569876, -0.022927,
		31.726074, 39.353718, 52.353741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977922, 39.120842, 52.094154>,  <31.151087, 39.752632, 52.369789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977922, 39.120842, 52.094154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.325279, 39.036575, 52.273716>,  <31.533693, 38.986015, 52.381451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.325279, 39.036575, 52.273716>,  <30.977922, 39.120842, 52.094154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325279, 39.036575, 52.273716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384410, -0.857855, 0.341048,
		0.313244, -0.468726, -0.825939,
		0.868393, -0.210668, 0.448901,
		31.585796, 38.973373, 52.408386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013756, 38.454464, 51.938999>,  <30.977922, 39.120842, 52.094154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013756, 38.454464, 51.938999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.255753, 38.528763, 52.248707>,  <31.400949, 38.573341, 52.434532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.255753, 38.528763, 52.248707>,  <31.013756, 38.454464, 51.938999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255753, 38.528763, 52.248707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341807, -0.817669, 0.463235,
		0.719135, -0.544901, -0.431193,
		0.604990, 0.185744, 0.774265,
		31.437250, 38.584484, 52.480988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365870, 37.760700, 52.034191>,  <31.013756, 38.454464, 51.938999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365870, 37.760700, 52.034191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.366713, 38.001358, 52.353695>,  <31.367218, 38.145752, 52.545399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.366713, 38.001358, 52.353695>,  <31.365870, 37.760700, 52.034191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366713, 38.001358, 52.353695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153438, -0.789111, 0.594778,
		0.988156, -0.123816, 0.090650,
		0.002110, 0.601642, 0.798762,
		31.367346, 38.181850, 52.593323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593393, 37.344082, 52.612309>,  <31.365870, 37.760700, 52.034191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593393, 37.344082, 52.612309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.410975, 37.646187, 52.800606>,  <31.301523, 37.827450, 52.913586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.410975, 37.646187, 52.800606>,  <31.593393, 37.344082, 52.612309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410975, 37.646187, 52.800606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451257, -0.652152, 0.609152,
		0.767066, 0.065375, 0.638229,
		-0.456045, 0.755265, 0.470743,
		31.274160, 37.872765, 52.941830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499727, 37.057087, 53.341774>,  <31.593393, 37.344082, 52.612309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499727, 37.057087, 53.341774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251114, 37.368584, 53.307690>,  <31.101946, 37.555481, 53.287239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251114, 37.368584, 53.307690>,  <31.499727, 37.057087, 53.341774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251114, 37.368584, 53.307690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608886, -0.411781, 0.678007,
		0.492906, 0.473285, 0.730100,
		-0.621532, 0.778741, -0.085207,
		31.064653, 37.602207, 53.282127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153282, 36.971058, 53.810074>,  <31.499727, 37.057087, 53.341774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153282, 36.971058, 53.810074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.292969, 36.630081, 53.654442>,  <32.376781, 36.425495, 53.561062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.292969, 36.630081, 53.654442>,  <32.153282, 36.971058, 53.810074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292969, 36.630081, 53.654442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604790, 0.522203, -0.601276,
		0.715733, -0.025333, 0.697915,
		0.349221, -0.852445, -0.389079,
		32.397736, 36.374348, 53.537720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792206, 37.108776, 53.679176>,  <32.153282, 36.971058, 53.810074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792206, 37.108776, 53.679176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.741669, 36.781242, 53.455196>,  <32.711346, 36.584721, 53.320808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.741669, 36.781242, 53.455196>,  <32.792206, 37.108776, 53.679176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741669, 36.781242, 53.455196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651870, 0.356952, -0.669067,
		0.747731, -0.449552, 0.488674,
		-0.126347, -0.818834, -0.559953,
		32.703766, 36.535591, 53.287209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473160, 36.892609, 53.495598>,  <32.792206, 37.108776, 53.679176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473160, 36.892609, 53.495598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230537, 36.721230, 53.227711>,  <33.084965, 36.618404, 53.066978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230537, 36.721230, 53.227711>,  <33.473160, 36.892609, 53.495598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230537, 36.721230, 53.227711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646316, 0.224830, -0.729196,
		0.462992, -0.875150, 0.140538,
		-0.606559, -0.428444, -0.669718,
		33.048569, 36.592697, 53.026794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817383, 36.298901, 53.293716>,  <33.473160, 36.892609, 53.495598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817383, 36.298901, 53.293716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564777, 36.425850, 53.010742>,  <33.413216, 36.502022, 52.840958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564777, 36.425850, 53.010742>,  <33.817383, 36.298901, 53.293716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564777, 36.425850, 53.010742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772221, 0.175372, -0.610671,
		-0.069750, -0.931942, -0.355835,
		-0.631513, 0.317378, -0.707434,
		33.375324, 36.521065, 52.798512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117294, 36.078236, 52.646919>,  <33.817383, 36.298901, 53.293716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117294, 36.078236, 52.646919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.837074, 36.340446, 52.534126>,  <33.668941, 36.497772, 52.466450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.837074, 36.340446, 52.534126>,  <34.117294, 36.078236, 52.646919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837074, 36.340446, 52.534126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526762, 0.208455, -0.824056,
		-0.481412, -0.725829, -0.491340,
		-0.700546, 0.655530, -0.281986,
		33.626911, 36.537106, 52.449532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952061, 35.942333, 51.974934>,  <34.117294, 36.078236, 52.646919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952061, 35.942333, 51.974934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827194, 36.318939, 52.025681>,  <33.752274, 36.544903, 52.056129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827194, 36.318939, 52.025681>,  <33.952061, 35.942333, 51.974934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827194, 36.318939, 52.025681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562500, 0.290788, -0.773974,
		-0.765603, -0.170243, -0.620378,
		-0.312163, 0.941520, 0.126867,
		33.733547, 36.601395, 52.063740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856873, 36.201103, 51.321320>,  <33.952061, 35.942333, 51.974934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856873, 36.201103, 51.321320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.852581, 36.542351, 51.529961>,  <33.850006, 36.747101, 51.655144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.852581, 36.542351, 51.529961>,  <33.856873, 36.201103, 51.321320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852581, 36.542351, 51.529961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395138, 0.482791, -0.781523,
		-0.918559, 0.197723, -0.342279,
		-0.010724, 0.853122, 0.521600,
		33.849365, 36.798286, 51.686440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.324800, 38.547031, 56.960983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264544, 38.913460, 56.812325>,  <31.228390, 39.133316, 56.723129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264544, 38.913460, 56.812325>,  <31.324800, 38.547031, 56.960983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264544, 38.913460, 56.812325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929160, 0.002822, -0.369668,
		-0.337594, -0.401002, -0.851603,
		-0.150640, 0.916073, -0.371642,
		31.219351, 39.188282, 56.700832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858732, 38.549847, 56.445019>,  <31.324800, 38.547031, 56.960983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858732, 38.549847, 56.445019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737906, 38.930923, 56.458450>,  <31.665409, 39.159569, 56.466507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737906, 38.930923, 56.458450>,  <31.858732, 38.549847, 56.445019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737906, 38.930923, 56.458450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904703, 0.297595, -0.304878,
		-0.300448, -0.061716, -0.951799,
		-0.302067, 0.952695, 0.033577,
		31.647285, 39.216732, 56.468525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928181, 38.855190, 55.793358>,  <31.858732, 38.549847, 56.445019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928181, 38.855190, 55.793358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.950422, 39.141396, 56.071911>,  <31.963766, 39.313118, 56.239044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.950422, 39.141396, 56.071911>,  <31.928181, 38.855190, 55.793358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950422, 39.141396, 56.071911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813470, 0.371955, -0.447120,
		-0.578943, 0.591351, -0.561364,
		0.055602, 0.715509, 0.696387,
		31.967102, 39.356049, 56.280827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141117, 39.557281, 55.400936>,  <31.928181, 38.855190, 55.793358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141117, 39.557281, 55.400936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.199028, 39.587914, 55.795536>,  <32.233776, 39.606293, 56.032295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.199028, 39.587914, 55.795536>,  <32.141117, 39.557281, 55.400936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199028, 39.587914, 55.795536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843971, 0.510857, -0.163521,
		-0.516481, 0.856248, 0.009329,
		0.144780, 0.076582, 0.986496,
		32.242462, 39.610889, 56.091484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320805, 40.314869, 55.444248>,  <32.141117, 39.557281, 55.400936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320805, 40.314869, 55.444248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.438251, 40.113304, 55.769176>,  <32.508720, 39.992367, 55.964134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.438251, 40.113304, 55.769176>,  <32.320805, 40.314869, 55.444248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438251, 40.113304, 55.769176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847089, 0.530945, 0.023177,
		-0.442976, 0.681302, 0.582752,
		0.293618, -0.503910, 0.812320,
		32.526337, 39.962132, 56.012871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578217, 40.877579, 55.896858>,  <32.320805, 40.314869, 55.444248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578217, 40.877579, 55.896858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.735722, 40.527016, 56.007759>,  <32.830227, 40.316677, 56.074299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.735722, 40.527016, 56.007759>,  <32.578217, 40.877579, 55.896858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735722, 40.527016, 56.007759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888276, 0.440383, 0.130498,
		-0.236464, 0.194887, 0.951895,
		0.393766, -0.876403, 0.277248,
		32.853851, 40.264095, 56.090935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080608, 41.026001, 56.448223>,  <32.578217, 40.877579, 55.896858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080608, 41.026001, 56.448223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.183960, 40.658470, 56.328896>,  <33.245972, 40.437950, 56.257298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.183960, 40.658470, 56.328896>,  <33.080608, 41.026001, 56.448223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183960, 40.658470, 56.328896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964128, 0.264703, 0.019752,
		0.060818, -0.292725, 0.954261,
		0.258378, -0.918828, -0.298323,
		33.261475, 40.382820, 56.239399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438339, 40.774513, 56.978897>,  <33.080608, 41.026001, 56.448223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438339, 40.774513, 56.978897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.537262, 40.588699, 56.638767>,  <33.596615, 40.477211, 56.434689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.537262, 40.588699, 56.638767>,  <33.438339, 40.774513, 56.978897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537262, 40.588699, 56.638767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940491, 0.326171, 0.095336,
		0.233062, -0.823296, 0.517557,
		0.247302, -0.464538, -0.850321,
		33.611454, 40.449337, 56.383671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137493, 40.708126, 57.088524>,  <33.438339, 40.774513, 56.978897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137493, 40.708126, 57.088524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.106838, 40.572479, 56.713478>,  <34.088444, 40.491093, 56.488449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.106838, 40.572479, 56.713478>,  <34.137493, 40.708126, 57.088524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106838, 40.572479, 56.713478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974095, 0.175197, -0.142987,
		0.212758, -0.924286, 0.316905,
		-0.076640, -0.339117, -0.937617,
		34.083847, 40.470745, 56.432194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635284, 40.216045, 56.929157>,  <34.137493, 40.708126, 57.088524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635284, 40.216045, 56.929157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.539833, 40.379669, 56.576859>,  <34.482563, 40.477844, 56.365479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.539833, 40.379669, 56.576859>,  <34.635284, 40.216045, 56.929157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539833, 40.379669, 56.576859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960606, 0.232473, -0.152295,
		0.142452, -0.882396, -0.448425,
		-0.238631, 0.409064, -0.880751,
		34.468243, 40.502388, 56.312634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128876, 39.923664, 56.470016>,  <34.635284, 40.216045, 56.929157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128876, 39.923664, 56.470016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.991936, 40.252151, 56.287418>,  <34.909771, 40.449245, 56.177860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.991936, 40.252151, 56.287418>,  <35.128876, 39.923664, 56.470016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991936, 40.252151, 56.287418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936385, 0.338197, -0.093845,
		0.077318, -0.459585, -0.884762,
		-0.342353, 0.821222, -0.456497,
		34.889229, 40.498516, 56.150471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487022, 39.994785, 55.747402>,  <35.128876, 39.923664, 56.470016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487022, 39.994785, 55.747402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.350117, 40.353584, 55.859291>,  <35.267971, 40.568863, 55.926426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.350117, 40.353584, 55.859291>,  <35.487022, 39.994785, 55.747402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350117, 40.353584, 55.859291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897307, 0.400355, -0.185890,
		-0.278733, 0.187375, -0.941912,
		-0.342268, 0.896998, 0.279725,
		35.247437, 40.622684, 55.943207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316875, 39.851555, 55.016376>,  <35.487022, 39.994785, 55.747402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316875, 39.851555, 55.016376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.481236, 39.508003, 54.894073>,  <35.579853, 39.301872, 54.820690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.481236, 39.508003, 54.894073>,  <35.316875, 39.851555, 55.016376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481236, 39.508003, 54.894073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762065, -0.507664, 0.401913,
		-0.500412, 0.067851, -0.863125,
		0.410907, -0.858879, -0.305748,
		35.604507, 39.250340, 54.802345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677563, 39.473598, 54.951534>,  <35.316875, 39.851555, 55.016376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677563, 39.473598, 54.951534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.949856, 39.184319, 54.904919>,  <35.113232, 39.010750, 54.876949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.949856, 39.184319, 54.904919>,  <34.677563, 39.473598, 54.951534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949856, 39.184319, 54.904919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709584, -0.690522, 0.140250,
		-0.181903, -0.012777, -0.983233,
		0.680736, -0.723199, -0.116542,
		35.154076, 38.967358, 54.869957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349125, 38.940525, 54.484047>,  <34.677563, 39.473598, 54.951534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349125, 38.940525, 54.484047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.665104, 38.778107, 54.667831>,  <34.854691, 38.680656, 54.778103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.665104, 38.778107, 54.667831>,  <34.349125, 38.940525, 54.484047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665104, 38.778107, 54.667831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545264, -0.807930, 0.223464,
		0.280478, -0.427055, -0.859626,
		0.789949, -0.406047, 0.459464,
		34.902088, 38.656292, 54.805672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375572, 38.125896, 54.313469>,  <34.349125, 38.940525, 54.484047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375572, 38.125896, 54.313469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.578400, 38.176407, 54.654510>,  <34.700096, 38.206715, 54.859135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.578400, 38.176407, 54.654510>,  <34.375572, 38.125896, 54.313469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578400, 38.176407, 54.654510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526789, -0.737537, 0.422531,
		0.682185, -0.663395, -0.307459,
		0.507067, 0.126278, 0.852606,
		34.730518, 38.214291, 54.910294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430157, 37.481930, 54.511002>,  <34.375572, 38.125896, 54.313469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430157, 37.481930, 54.511002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.539036, 37.674622, 54.844193>,  <34.604362, 37.790237, 55.044106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.539036, 37.674622, 54.844193>,  <34.430157, 37.481930, 54.511002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539036, 37.674622, 54.844193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254573, -0.798764, 0.545132,
		0.927955, -0.360437, -0.094788,
		0.272199, 0.481727, 0.832974,
		34.620697, 37.819141, 55.094086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835323, 37.115036, 54.842266>,  <34.430157, 37.481930, 54.511002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835323, 37.115036, 54.842266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.676056, 37.331459, 55.138569>,  <34.580494, 37.461315, 55.316349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.676056, 37.331459, 55.138569>,  <34.835323, 37.115036, 54.842266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676056, 37.331459, 55.138569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214877, -0.840071, 0.498105,
		0.891791, 0.039159, 0.450750,
		-0.398167, 0.541061, 0.740753,
		34.556606, 37.493778, 55.360794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953938, 36.619156, 55.275600>,  <34.835323, 37.115036, 54.842266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953938, 36.619156, 55.275600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.722122, 36.848228, 55.507523>,  <34.583035, 36.985672, 55.646675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.722122, 36.848228, 55.507523>,  <34.953938, 36.619156, 55.275600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722122, 36.848228, 55.507523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368113, -0.818704, 0.440701,
		0.727070, 0.041968, 0.685279,
		-0.579536, 0.572681, 0.579806,
		34.548260, 37.020031, 55.681465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892944, 36.297176, 55.887386>,  <34.953938, 36.619156, 55.275600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892944, 36.297176, 55.887386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.581242, 36.547852, 55.885387>,  <34.394218, 36.698257, 55.884190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.581242, 36.547852, 55.885387>,  <34.892944, 36.297176, 55.887386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581242, 36.547852, 55.885387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606910, -0.752635, 0.255346,
		0.156263, 0.202010, 0.966837,
		-0.779258, 0.626684, -0.004993,
		34.347466, 36.735855, 55.883888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619568, 36.253914, 56.558308>,  <34.892944, 36.297176, 55.887386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619568, 36.253914, 56.558308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.333759, 36.384407, 56.310753>,  <34.162273, 36.462704, 56.162220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.333759, 36.384407, 56.310753>,  <34.619568, 36.253914, 56.558308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333759, 36.384407, 56.310753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617913, -0.709126, 0.339594,
		-0.328082, 0.625068, 0.708274,
		-0.714524, 0.326237, -0.618890,
		34.119404, 36.482277, 56.125088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017189, 36.240044, 57.000084>,  <34.619568, 36.253914, 56.558308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017189, 36.240044, 57.000084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.902481, 36.243004, 56.616894>,  <33.833656, 36.244781, 56.386982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.902481, 36.243004, 56.616894>,  <34.017189, 36.240044, 57.000084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902481, 36.243004, 56.616894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603770, -0.777773, 0.174732,
		-0.743791, 0.628502, 0.227509,
		-0.286769, 0.007399, -0.957971,
		33.816452, 36.245224, 56.329502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364147, 35.965744, 57.113224>,  <34.017189, 36.240044, 57.000084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364147, 35.965744, 57.113224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.432396, 35.959114, 56.719147>,  <33.473343, 35.955135, 56.482700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.432396, 35.959114, 56.719147>,  <33.364147, 35.965744, 57.113224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432396, 35.959114, 56.719147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612603, -0.784914, -0.092889,
		-0.771756, 0.619383, -0.144072,
		0.170618, -0.016571, -0.985198,
		33.483582, 35.954144, 56.423588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750847, 36.009609, 56.752598>,  <33.364147, 35.965744, 57.113224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750847, 36.009609, 56.752598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.999046, 35.818390, 56.503937>,  <33.147964, 35.703659, 56.354740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.999046, 35.818390, 56.503937>,  <32.750847, 36.009609, 56.752598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999046, 35.818390, 56.503937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672327, -0.732348, -0.107902,
		-0.403685, 0.484909, -0.775824,
		0.620495, -0.478049, -0.621655,
		33.185196, 35.674976, 56.317440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438366, 35.642303, 56.154106>,  <32.750847, 36.009609, 56.752598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438366, 35.642303, 56.154106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.788437, 35.451096, 56.183952>,  <32.998478, 35.336372, 56.201862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.788437, 35.451096, 56.183952>,  <32.438366, 35.642303, 56.154106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788437, 35.451096, 56.183952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470811, -0.876980, -0.096145,
		0.111398, 0.049013, -0.992566,
		0.875173, -0.478021, 0.074618,
		33.050987, 35.307690, 56.206337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307659, 35.013996, 55.920021>,  <32.438366, 35.642303, 56.154106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307659, 35.013996, 55.920021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.668373, 34.875801, 56.023888>,  <32.884800, 34.792885, 56.086208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.668373, 34.875801, 56.023888>,  <32.307659, 35.013996, 55.920021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668373, 34.875801, 56.023888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360914, -0.932513, 0.012693,
		0.237756, -0.105163, -0.965615,
		0.901783, -0.345486, 0.259666,
		32.938908, 34.772156, 56.101788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445137, 34.287754, 55.775715>,  <32.307659, 35.013996, 55.920021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445137, 34.287754, 55.775715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.092377, 34.407906, 55.630371>,  <31.880722, 34.479996, 55.543167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.092377, 34.407906, 55.630371>,  <32.445137, 34.287754, 55.775715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092377, 34.407906, 55.630371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467261, 0.454513, -0.758344,
		-0.062641, -0.838564, -0.541190,
		-0.881898, 0.300380, -0.363357,
		31.827808, 34.498020, 55.521362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461433, 34.061592, 55.140987>,  <32.445137, 34.287754, 55.775715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461433, 34.061592, 55.140987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.166290, 34.331543, 55.136887>,  <31.989204, 34.493515, 55.134426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.166290, 34.331543, 55.136887>,  <32.461433, 34.061592, 55.140987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166290, 34.331543, 55.136887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392294, 0.416446, -0.820170,
		-0.549249, -0.609187, -0.572029,
		-0.737855, 0.674881, -0.010247,
		31.944933, 34.534008, 55.133812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324177, 34.197224, 54.405396>,  <32.461433, 34.061592, 55.140987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324177, 34.197224, 54.405396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.136581, 34.506927, 54.575371>,  <32.024025, 34.692749, 54.677357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.136581, 34.506927, 54.575371>,  <32.324177, 34.197224, 54.405396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136581, 34.506927, 54.575371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202390, 0.562537, -0.801617,
		-0.859705, -0.289943, -0.420525,
		-0.468984, 0.774264, 0.424934,
		31.995886, 34.739208, 54.702850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825941, 34.543037, 53.845154>,  <32.324177, 34.197224, 54.405396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825941, 34.543037, 53.845154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.922689, 34.803375, 54.133015>,  <31.980738, 34.959576, 54.305733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.922689, 34.803375, 54.133015>,  <31.825941, 34.543037, 53.845154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922689, 34.803375, 54.133015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208757, 0.689404, -0.693645,
		-0.947586, 0.318006, 0.030879,
		0.241871, 0.650842, 0.719655,
		31.995251, 34.998627, 54.348911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520418, 35.086227, 53.616768>,  <31.825941, 34.543037, 53.845154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520418, 35.086227, 53.616768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.775618, 35.235847, 53.886002>,  <31.928738, 35.325619, 54.047543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.775618, 35.235847, 53.886002>,  <31.520418, 35.086227, 53.616768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775618, 35.235847, 53.886002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273239, 0.707247, -0.652030,
		-0.719931, 0.599906, 0.349015,
		0.637996, 0.374052, 0.673087,
		31.967016, 35.348064, 54.087929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440113, 35.818367, 53.633057>,  <31.520418, 35.086227, 53.616768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440113, 35.818367, 53.633057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.805845, 35.805511, 53.794533>,  <32.025284, 35.797798, 53.891418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.805845, 35.805511, 53.794533>,  <31.440113, 35.818367, 53.633057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805845, 35.805511, 53.794533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314216, 0.685152, -0.657142,
		-0.255469, 0.727691, 0.636554,
		0.914332, -0.032137, 0.403687,
		32.080147, 35.795872, 53.915638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629097, 36.505577, 53.923172>,  <31.440113, 35.818367, 53.633057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629097, 36.505577, 53.923172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.946690, 36.276489, 53.841599>,  <32.137245, 36.139038, 53.792652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.946690, 36.276489, 53.841599>,  <31.629097, 36.505577, 53.923172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946690, 36.276489, 53.841599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195887, 0.558570, -0.805995,
		0.575521, 0.599995, 0.555681,
		0.793980, -0.572718, -0.203938,
		32.184883, 36.104675, 53.780418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242622, 37.244122, 54.199116>,  <31.629097, 36.505577, 53.923172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242622, 37.244122, 54.199116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.991322, 37.384026, 53.921131>,  <30.840542, 37.467968, 53.754341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.991322, 37.384026, 53.921131>,  <31.242622, 37.244122, 54.199116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991322, 37.384026, 53.921131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770760, -0.401471, 0.494722,
		-0.105973, 0.846457, 0.521805,
		-0.628250, 0.349759, -0.694961,
		30.802847, 37.488953, 53.712643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801722, 37.746410, 54.571091>,  <31.242622, 37.244122, 54.199116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801722, 37.746410, 54.571091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.599995, 37.638290, 54.243042>,  <30.478958, 37.573418, 54.046211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.599995, 37.638290, 54.243042>,  <30.801722, 37.746410, 54.571091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599995, 37.638290, 54.243042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799059, -0.213984, 0.561886,
		-0.327370, 0.938696, -0.108069,
		-0.504315, -0.270298, -0.820125,
		30.448700, 37.557201, 53.997005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102938, 37.941090, 54.653011>,  <30.801722, 37.746410, 54.571091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102938, 37.941090, 54.653011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.052452, 37.670097, 54.363159>,  <30.022160, 37.507504, 54.189247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.052452, 37.670097, 54.363159>,  <30.102938, 37.941090, 54.653011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052452, 37.670097, 54.363159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766590, -0.397012, 0.504699,
		-0.629610, 0.619198, -0.469238,
		-0.126216, -0.677477, -0.724634,
		30.014587, 37.466854, 54.145767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426174, 37.982098, 54.536270>,  <30.102938, 37.941090, 54.653011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426174, 37.982098, 54.536270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.540909, 37.634995, 54.373924>,  <29.609749, 37.426735, 54.276516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.540909, 37.634995, 54.373924>,  <29.426174, 37.982098, 54.536270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540909, 37.634995, 54.373924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818896, -0.441953, 0.366178,
		-0.497127, 0.227329, -0.837369,
		0.286835, -0.867755, -0.405865,
		29.626959, 37.374668, 54.252167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969133, 37.884483, 54.029003>,  <29.426174, 37.982098, 54.536270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969133, 37.884483, 54.029003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118090, 37.536758, 54.158997>,  <29.207464, 37.328121, 54.236992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118090, 37.536758, 54.158997>,  <28.969133, 37.884483, 54.029003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118090, 37.536758, 54.158997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916575, -0.289538, 0.275787,
		-0.145651, -0.400573, -0.904615,
		0.372393, -0.869316, 0.324983,
		29.229807, 37.275963, 54.256493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436373, 37.334900, 53.757587>,  <28.969133, 37.884483, 54.029003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436373, 37.334900, 53.757587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.662970, 37.156769, 54.034939>,  <28.798927, 37.049889, 54.201347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.662970, 37.156769, 54.034939>,  <28.436373, 37.334900, 53.757587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662970, 37.156769, 54.034939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818180, -0.404348, 0.408760,
		0.098331, -0.798864, -0.593421,
		0.566492, -0.445331, 0.693374,
		28.832916, 37.023170, 54.242950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015938, 36.803646, 53.837227>,  <28.436373, 37.334900, 53.757587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015938, 36.803646, 53.837227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258129, 36.783752, 54.154949>,  <28.403444, 36.771816, 54.345581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258129, 36.783752, 54.154949>,  <28.015938, 36.803646, 53.837227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258129, 36.783752, 54.154949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769464, -0.291501, 0.568290,
		0.203278, -0.955277, -0.214764,
		0.605478, -0.049732, 0.794307,
		28.439772, 36.768833, 54.393242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933111, 36.127979, 54.150791>,  <28.015938, 36.803646, 53.837227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933111, 36.127979, 54.150791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.092575, 36.357018, 54.437344>,  <28.188253, 36.494442, 54.609276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.092575, 36.357018, 54.437344>,  <27.933111, 36.127979, 54.150791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092575, 36.357018, 54.437344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654529, -0.369516, 0.659583,
		0.642389, -0.731843, 0.227469,
		0.398658, 0.572594, 0.716385,
		28.212172, 36.528797, 54.652260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909632, 35.664070, 54.769493>,  <27.933111, 36.127979, 54.150791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909632, 35.664070, 54.769493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.965870, 36.033241, 54.912846>,  <27.999613, 36.254745, 54.998859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.965870, 36.033241, 54.912846>,  <27.909632, 35.664070, 54.769493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965870, 36.033241, 54.912846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652610, -0.185820, 0.734555,
		0.744535, -0.337159, 0.576187,
		0.140595, 0.922927, 0.358383,
		28.008049, 36.310120, 55.020359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.202309, 44.291412, 47.861385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.981842, 44.555130, 48.065952>,  <39.849564, 44.713360, 48.188690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.981842, 44.555130, 48.065952>,  <40.202309, 44.291412, 47.861385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981842, 44.555130, 48.065952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803038, -0.585586, -0.110539,
		0.226599, -0.471610, 0.852196,
		-0.551165, 0.659298, 0.511414,
		39.816494, 44.752918, 48.219376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946663, 43.918400, 48.464211>,  <40.202309, 44.291412, 47.861385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946663, 43.918400, 48.464211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.708839, 44.228378, 48.378456>,  <39.566143, 44.414364, 48.327003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.708839, 44.228378, 48.378456>,  <39.946663, 43.918400, 48.464211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708839, 44.228378, 48.378456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802911, -0.586415, 0.107009,
		-0.042793, 0.235756, 0.970870,
		-0.594561, 0.774943, -0.214385,
		39.530472, 44.460861, 48.314140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372772, 43.728275, 48.815987>,  <39.946663, 43.918400, 48.464211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372772, 43.728275, 48.815987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.213486, 44.024612, 48.599625>,  <39.117912, 44.202415, 48.469807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.213486, 44.024612, 48.599625>,  <39.372772, 43.728275, 48.815987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213486, 44.024612, 48.599625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858325, -0.508951, -0.065171,
		-0.323577, 0.438323, 0.838553,
		-0.398216, 0.740839, -0.540908,
		39.094021, 44.246864, 48.437351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744854, 43.883968, 49.122311>,  <39.372772, 43.728275, 48.815987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744854, 43.883968, 49.122311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.698120, 44.026169, 48.751373>,  <38.670082, 44.111488, 48.528812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.698120, 44.026169, 48.751373>,  <38.744854, 43.883968, 49.122311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698120, 44.026169, 48.751373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881188, -0.467803, -0.068320,
		-0.458103, 0.809183, 0.367920,
		-0.116831, 0.355504, -0.927344,
		38.663071, 44.132820, 48.473171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096893, 44.255558, 49.079617>,  <38.744854, 43.883968, 49.122311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096893, 44.255558, 49.079617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.173752, 44.156029, 48.699898>,  <38.219868, 44.096310, 48.472065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.173752, 44.156029, 48.699898>,  <38.096893, 44.255558, 49.079617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173752, 44.156029, 48.699898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882951, -0.466046, -0.056558,
		-0.428344, 0.849051, -0.309247,
		0.192144, -0.248824, -0.949298,
		38.231396, 44.081383, 48.415108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573994, 44.400902, 48.711151>,  <38.096893, 44.255558, 49.079617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573994, 44.400902, 48.711151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.756237, 44.150551, 48.457947>,  <37.865582, 44.000340, 48.306026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.756237, 44.150551, 48.457947>,  <37.573994, 44.400902, 48.711151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756237, 44.150551, 48.457947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840481, -0.536730, -0.074253,
		-0.293280, 0.565861, -0.770577,
		0.455608, -0.625878, -0.633007,
		37.892918, 43.962788, 48.268044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223591, 44.420349, 48.105389>,  <37.573994, 44.400902, 48.711151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223591, 44.420349, 48.105389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417500, 44.071510, 48.132061>,  <37.533844, 43.862209, 48.148064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417500, 44.071510, 48.132061>,  <37.223591, 44.420349, 48.105389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417500, 44.071510, 48.132061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873942, -0.486022, -0.002884,
		0.034922, -0.056876, -0.997770,
		0.484774, -0.872094, 0.066679,
		37.562931, 43.809883, 48.152065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812508, 43.973984, 47.587070>,  <37.223591, 44.420349, 48.105389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812508, 43.973984, 47.587070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025433, 43.742920, 47.834602>,  <37.153187, 43.604282, 47.983120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025433, 43.742920, 47.834602>,  <36.812508, 43.973984, 47.587070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025433, 43.742920, 47.834602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822103, -0.527146, 0.215088,
		0.201965, -0.623235, -0.755505,
		0.532313, -0.577663, 0.618829,
		37.185127, 43.569622, 48.020252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423100, 43.347408, 47.455307>,  <36.812508, 43.973984, 47.587070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423100, 43.347408, 47.455307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675545, 43.273254, 47.756592>,  <36.827011, 43.228764, 47.937363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675545, 43.273254, 47.756592>,  <36.423100, 43.347408, 47.455307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675545, 43.273254, 47.756592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611529, -0.716289, 0.336098,
		0.477212, -0.672728, -0.565425,
		0.631110, -0.185385, 0.753215,
		36.864880, 43.217640, 47.982555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580109, 42.636196, 47.459251>,  <36.423100, 43.347408, 47.455307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580109, 42.636196, 47.459251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655220, 42.773460, 47.827377>,  <36.700287, 42.855820, 48.048252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655220, 42.773460, 47.827377>,  <36.580109, 42.636196, 47.459251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655220, 42.773460, 47.827377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511399, -0.765804, 0.389892,
		0.838577, -0.543861, 0.031692,
		0.187777, 0.343162, 0.920315,
		36.711552, 42.876408, 48.103474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706799, 42.038921, 47.909615>,  <36.580109, 42.636196, 47.459251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706799, 42.038921, 47.909615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610733, 42.343613, 48.150311>,  <36.553093, 42.526428, 48.294727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610733, 42.343613, 48.150311>,  <36.706799, 42.038921, 47.909615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610733, 42.343613, 48.150311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578946, -0.609966, 0.541076,
		0.779193, -0.218425, 0.587493,
		-0.240167, 0.761730, 0.601737,
		36.538685, 42.572132, 48.330833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747631, 41.828381, 48.584957>,  <36.706799, 42.038921, 47.909615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747631, 41.828381, 48.584957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490211, 42.133377, 48.611618>,  <36.335758, 42.316376, 48.627613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490211, 42.133377, 48.611618>,  <36.747631, 41.828381, 48.584957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490211, 42.133377, 48.611618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610275, -0.563732, 0.556570,
		0.461956, 0.317506, 0.828122,
		-0.643554, 0.762493, 0.066653,
		36.297146, 42.362125, 48.631615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326771, 41.450153, 49.030842>,  <36.747631, 41.828381, 48.584957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326771, 41.450153, 49.030842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419289, 41.081337, 48.906681>,  <37.474800, 40.860046, 48.832184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419289, 41.081337, 48.906681>,  <37.326771, 41.450153, 49.030842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419289, 41.081337, 48.906681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856932, 0.344141, -0.383711,
		0.460617, -0.177238, 0.869723,
		0.231299, -0.922038, -0.310398,
		37.488678, 40.804726, 48.813560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100220, 41.317974, 49.169159>,  <37.326771, 41.450153, 49.030842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100220, 41.317974, 49.169159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.995026, 41.067406, 48.875645>,  <37.931908, 40.917065, 48.699535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.995026, 41.067406, 48.875645>,  <38.100220, 41.317974, 49.169159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995026, 41.067406, 48.875645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788591, 0.298612, -0.537546,
		0.555845, -0.720022, 0.415457,
		-0.262984, -0.626418, -0.733785,
		37.916130, 40.879482, 48.655510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765526, 41.003674, 48.910408>,  <38.100220, 41.317974, 49.169159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765526, 41.003674, 48.910408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.505203, 40.936813, 48.614162>,  <38.349010, 40.896698, 48.436413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.505203, 40.936813, 48.614162>,  <38.765526, 41.003674, 48.910408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505203, 40.936813, 48.614162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711510, 0.206157, -0.671754,
		0.264970, -0.964136, -0.015235,
		-0.650803, -0.167154, -0.740618,
		38.309963, 40.886669, 48.391975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034321, 40.426224, 48.548603>,  <38.765526, 41.003674, 48.910408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034321, 40.426224, 48.548603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.815445, 40.658119, 48.307114>,  <38.684120, 40.797256, 48.162220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.815445, 40.658119, 48.307114>,  <39.034321, 40.426224, 48.548603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815445, 40.658119, 48.307114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781589, 0.095802, -0.616393,
		-0.299511, -0.809148, -0.505542,
		-0.547185, 0.579742, -0.603728,
		38.651291, 40.832043, 48.125996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161976, 40.324081, 47.812393>,  <39.034321, 40.426224, 48.548603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161976, 40.324081, 47.812393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.978416, 40.679474, 47.810791>,  <38.868282, 40.892708, 47.809830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.978416, 40.679474, 47.810791>,  <39.161976, 40.324081, 47.812393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978416, 40.679474, 47.810791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722354, 0.370460, -0.583921,
		-0.517316, -0.270857, -0.811801,
		-0.458899, 0.888479, -0.004009,
		38.840748, 40.946018, 47.809589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051495, 40.362030, 47.170017>,  <39.161976, 40.324081, 47.812393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051495, 40.362030, 47.170017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.040474, 40.721222, 47.345688>,  <39.033859, 40.936737, 47.451088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.040474, 40.721222, 47.345688>,  <39.051495, 40.362030, 47.170017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040474, 40.721222, 47.345688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744781, 0.311480, -0.590154,
		-0.666740, 0.310825, -0.677382,
		-0.027556, 0.897980, 0.439173,
		39.032207, 40.990616, 47.477440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085270, 40.734119, 46.581192>,  <39.051495, 40.362030, 47.170017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085270, 40.734119, 46.581192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.170074, 40.979294, 46.885654>,  <39.220955, 41.126400, 47.068333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.170074, 40.979294, 46.885654>,  <39.085270, 40.734119, 46.581192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170074, 40.979294, 46.885654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632715, 0.507497, -0.584909,
		-0.744798, 0.605600, -0.280224,
		0.212008, 0.612941, 0.761155,
		39.233677, 41.163177, 47.114002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294914, 41.327164, 46.266510>,  <39.085270, 40.734119, 46.581192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294914, 41.327164, 46.266510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.433437, 41.412239, 46.631989>,  <39.516552, 41.463284, 46.851276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.433437, 41.412239, 46.631989>,  <39.294914, 41.327164, 46.266510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433437, 41.412239, 46.631989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732886, 0.546655, -0.405027,
		-0.585621, 0.809895, 0.033429,
		0.346303, 0.212693, 0.913693,
		39.537327, 41.476048, 46.906097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439537, 42.001572, 46.268234>,  <39.294914, 41.327164, 46.266510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439537, 42.001572, 46.268234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.688534, 41.876549, 46.555237>,  <39.837933, 41.801537, 46.727436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.688534, 41.876549, 46.555237>,  <39.439537, 42.001572, 46.268234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688534, 41.876549, 46.555237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690852, 0.650221, -0.316128,
		-0.367728, 0.692475, 0.620688,
		0.622495, -0.312554, 0.717502,
		39.875282, 41.782784, 46.770489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617893, 42.544369, 46.788692>,  <39.439537, 42.001572, 46.268234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617893, 42.544369, 46.788692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.923340, 42.293465, 46.849922>,  <40.106609, 42.142921, 46.886662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.923340, 42.293465, 46.849922>,  <39.617893, 42.544369, 46.788692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923340, 42.293465, 46.849922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641565, 0.710455, -0.289219,
		0.072659, 0.319063, 0.944944,
		0.763619, -0.627258, 0.153079,
		40.152424, 42.105286, 46.895847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155418, 42.921047, 47.176975>,  <39.617893, 42.544369, 46.788692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155418, 42.921047, 47.176975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.357700, 42.608238, 47.031261>,  <40.479069, 42.420551, 46.943832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.357700, 42.608238, 47.031261>,  <40.155418, 42.921047, 47.176975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357700, 42.608238, 47.031261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744865, 0.608824, -0.272962,
		0.435250, -0.133308, 0.890386,
		0.505701, -0.782024, -0.364287,
		40.509411, 42.373631, 46.921974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816086, 43.115479, 47.165249>,  <40.155418, 42.921047, 47.176975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816086, 43.115479, 47.165249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.903717, 42.797775, 46.938564>,  <40.956295, 42.607155, 46.802555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.903717, 42.797775, 46.938564>,  <40.816086, 43.115479, 47.165249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903717, 42.797775, 46.938564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827860, 0.458704, -0.322859,
		0.516385, -0.398426, 0.758026,
		0.219075, -0.794259, -0.566709,
		40.969440, 42.559498, 46.768551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515327, 42.942245, 47.303177>,  <40.816086, 43.115479, 47.165249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515327, 42.942245, 47.303177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.415405, 42.808701, 46.939610>,  <41.355450, 42.728573, 46.721470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.415405, 42.808701, 46.939610>,  <41.515327, 42.942245, 47.303177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415405, 42.808701, 46.939610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721426, 0.561936, -0.404689,
		0.645864, -0.756811, 0.100482,
		-0.249808, -0.333865, -0.908917,
		41.340462, 42.708542, 46.666935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153004, 42.746216, 47.049370>,  <41.515327, 42.942245, 47.303177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153004, 42.746216, 47.049370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.902615, 42.803764, 46.742786>,  <41.752380, 42.838295, 46.558838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.902615, 42.803764, 46.742786>,  <42.153004, 42.746216, 47.049370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902615, 42.803764, 46.742786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738897, 0.423702, -0.523935,
		0.249370, -0.894303, -0.371533,
		-0.625976, 0.143871, -0.766457,
		41.714821, 42.846924, 46.512848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738834, 42.645374, 47.644829>,  <42.153004, 42.746216, 47.049370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738834, 42.645374, 47.644829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.099846, 42.813835, 47.608871>,  <43.316452, 42.914913, 47.587296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.099846, 42.813835, 47.608871>,  <42.738834, 42.645374, 47.644829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099846, 42.813835, 47.608871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426261, -0.843977, 0.325585,
		0.061250, -0.332167, -0.941230,
		0.902524, 0.421151, -0.089896,
		43.370602, 42.940182, 47.581902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924782, 43.136097, 48.259743>,  <42.738834, 42.645374, 47.644829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924782, 43.136097, 48.259743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.123707, 43.241226, 48.590462>,  <43.243061, 43.304306, 48.788895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.123707, 43.241226, 48.590462>,  <42.924782, 43.136097, 48.259743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123707, 43.241226, 48.590462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417856, -0.762624, 0.493762,
		0.760313, -0.591039, -0.269440,
		0.497314, 0.262826, 0.826802,
		43.272900, 43.320072, 48.838501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223984, 42.561962, 48.614418>,  <42.924782, 43.136097, 48.259743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223984, 42.561962, 48.614418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.119377, 42.864548, 48.854210>,  <43.056614, 43.046097, 48.998085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.119377, 42.864548, 48.854210>,  <43.223984, 42.561962, 48.614418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119377, 42.864548, 48.854210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426569, -0.647728, 0.631259,
		0.865821, -0.090631, 0.492077,
		-0.261521, 0.756462, 0.599477,
		43.040920, 43.091488, 49.034054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230358, 42.272820, 49.237968>,  <43.223984, 42.561962, 48.614418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230358, 42.272820, 49.237968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.040695, 42.615005, 49.321259>,  <42.926899, 42.820316, 49.371231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.040695, 42.615005, 49.321259>,  <43.230358, 42.272820, 49.237968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040695, 42.615005, 49.321259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412877, -0.424930, 0.805585,
		0.777631, 0.296001, 0.554684,
		-0.474155, 0.855464, 0.208226,
		42.898449, 42.871643, 49.383728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253120, 42.205009, 49.928982>,  <43.230358, 42.272820, 49.237968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253120, 42.205009, 49.928982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.976723, 42.486809, 49.864223>,  <42.810883, 42.655888, 49.825367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.976723, 42.486809, 49.864223>,  <43.253120, 42.205009, 49.928982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976723, 42.486809, 49.864223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646022, -0.501370, 0.575572,
		0.324318, 0.502307, 0.801564,
		-0.690994, 0.704497, -0.161898,
		42.769424, 42.698158, 49.815655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016647, 42.382282, 50.571789>,  <43.253120, 42.205009, 49.928982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016647, 42.382282, 50.571789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.747082, 42.470810, 50.289837>,  <42.585342, 42.523926, 50.120667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.747082, 42.470810, 50.289837>,  <43.016647, 42.382282, 50.571789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747082, 42.470810, 50.289837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674263, -0.574243, 0.464342,
		-0.302001, 0.788201, 0.536222,
		-0.673917, 0.221323, -0.704877,
		42.544907, 42.537209, 50.078373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417961, 42.625603, 50.852459>,  <43.016647, 42.382282, 50.571789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417961, 42.625603, 50.852459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.285782, 42.487144, 50.501236>,  <42.206474, 42.404068, 50.290501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.285782, 42.487144, 50.501236>,  <42.417961, 42.625603, 50.852459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285782, 42.487144, 50.501236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640081, -0.601502, 0.478008,
		-0.693615, 0.719985, -0.022797,
		-0.330446, -0.346146, -0.878060,
		42.186649, 42.383301, 50.237820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661194, 42.584381, 50.973091>,  <42.417961, 42.625603, 50.852459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661194, 42.584381, 50.973091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.721146, 42.376221, 50.636826>,  <41.757118, 42.251324, 50.435066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.721146, 42.376221, 50.636826>,  <41.661194, 42.584381, 50.973091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721146, 42.376221, 50.636826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677332, -0.673445, 0.296129,
		-0.720247, 0.525024, -0.453425,
		0.149882, -0.520405, -0.840663,
		41.766109, 42.220100, 50.384628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012291, 42.452965, 50.611355>,  <41.661194, 42.584381, 50.973091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012291, 42.452965, 50.611355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.238495, 42.163361, 50.453365>,  <41.374218, 41.989597, 50.358574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.238495, 42.163361, 50.453365>,  <41.012291, 42.452965, 50.611355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238495, 42.163361, 50.453365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691305, -0.677292, 0.251738,
		-0.449773, 0.130685, -0.883530,
		0.565510, -0.724014, -0.394971,
		41.408150, 41.946156, 50.334873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544254, 42.029732, 50.179188>,  <41.012291, 42.452965, 50.611355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544254, 42.029732, 50.179188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.858593, 41.809853, 50.292519>,  <41.047195, 41.677925, 50.360519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.858593, 41.809853, 50.292519>,  <40.544254, 42.029732, 50.179188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858593, 41.809853, 50.292519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617993, -0.715043, 0.326798,
		0.022952, -0.431909, -0.901625,
		0.785848, -0.549697, 0.283329,
		41.094349, 41.644943, 50.377518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500454, 41.351303, 49.897396>,  <40.544254, 42.029732, 50.179188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500454, 41.351303, 49.897396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.707817, 41.328323, 50.238678>,  <40.832233, 41.314537, 50.443447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.707817, 41.328323, 50.238678>,  <40.500454, 41.351303, 49.897396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707817, 41.328323, 50.238678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575727, -0.761185, 0.298557,
		0.632294, -0.645986, -0.427676,
		0.518403, -0.057449, 0.853204,
		40.863338, 41.311089, 50.494640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507633, 40.657711, 50.089718>,  <40.500454, 41.351303, 49.897396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507633, 40.657711, 50.089718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.621925, 40.810326, 50.441353>,  <40.690502, 40.901894, 50.652332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.621925, 40.810326, 50.441353>,  <40.507633, 40.657711, 50.089718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621925, 40.810326, 50.441353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463946, -0.747585, 0.475259,
		0.838516, -0.543646, -0.036600,
		0.285734, 0.381532, 0.879084,
		40.707645, 40.924786, 50.705078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681694, 40.085423, 50.586056>,  <40.507633, 40.657711, 50.089718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681694, 40.085423, 50.586056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614193, 40.391060, 50.835114>,  <40.573692, 40.574444, 50.984547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614193, 40.391060, 50.835114>,  <40.681694, 40.085423, 50.586056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614193, 40.391060, 50.835114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589456, -0.584525, 0.557560,
		0.789978, -0.272932, 0.549038,
		-0.168750, 0.764094, 0.622643,
		40.563568, 40.620289, 51.021908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680500, 39.766132, 51.233677>,  <40.681694, 40.085423, 50.586056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680500, 39.766132, 51.233677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.482368, 40.111771, 51.269440>,  <40.363491, 40.319153, 51.290897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.482368, 40.111771, 51.269440>,  <40.680500, 39.766132, 51.233677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482368, 40.111771, 51.269440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638295, -0.431827, 0.637263,
		0.589262, 0.258587, 0.765443,
		-0.495327, 0.864093, 0.089405,
		40.333771, 40.370998, 51.296261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505280, 39.831970, 51.976776>,  <40.680500, 39.766132, 51.233677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505280, 39.831970, 51.976776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.249489, 40.068657, 51.780434>,  <40.096016, 40.210667, 51.662628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.249489, 40.068657, 51.780434>,  <40.505280, 39.831970, 51.976776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249489, 40.068657, 51.780434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758855, -0.383385, 0.526456,
		0.123323, 0.709148, 0.694191,
		-0.639477, 0.591715, -0.490860,
		40.057644, 40.246170, 51.633175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050579, 40.005234, 52.432018>,  <40.505280, 39.831970, 51.976776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050579, 40.005234, 52.432018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.845764, 40.130867, 52.112228>,  <39.722874, 40.206249, 51.920353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.845764, 40.130867, 52.112228>,  <40.050579, 40.005234, 52.432018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845764, 40.130867, 52.112228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858406, -0.153621, 0.489428,
		0.030907, 0.936883, 0.348275,
		-0.512039, 0.314088, -0.799478,
		39.692154, 40.225094, 51.872383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571579, 40.442005, 52.727406>,  <40.050579, 40.005234, 52.432018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571579, 40.442005, 52.727406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422562, 40.325737, 52.374878>,  <39.333153, 40.255978, 52.163361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422562, 40.325737, 52.374878>,  <39.571579, 40.442005, 52.727406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422562, 40.325737, 52.374878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916244, -0.035579, 0.399037,
		-0.147345, 0.956161, -0.253071,
		-0.372540, -0.290671, -0.881320,
		39.310799, 40.238537, 52.110481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010029, 40.841843, 52.677631>,  <39.571579, 40.442005, 52.727406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010029, 40.841843, 52.677631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.930351, 40.563179, 52.401955>,  <38.882545, 40.395981, 52.236549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.930351, 40.563179, 52.401955>,  <39.010029, 40.841843, 52.677631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930351, 40.563179, 52.401955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854597, -0.220678, 0.470069,
		-0.479568, 0.682618, -0.551406,
		-0.199195, -0.696660, -0.689193,
		38.870594, 40.354179, 52.195198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374149, 41.045727, 52.478104>,  <39.010029, 40.841843, 52.677631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374149, 41.045727, 52.478104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.431564, 40.658157, 52.397514>,  <38.466011, 40.425617, 52.349159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.431564, 40.658157, 52.397514>,  <38.374149, 41.045727, 52.478104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431564, 40.658157, 52.397514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807642, -0.232339, 0.541972,
		-0.571937, 0.084926, -0.815889,
		0.143535, -0.968920, -0.201473,
		38.474625, 40.367481, 52.337074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792015, 40.856472, 52.212486>,  <38.374149, 41.045727, 52.478104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792015, 40.856472, 52.212486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977249, 40.520279, 52.325012>,  <38.088390, 40.318562, 52.392529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977249, 40.520279, 52.325012>,  <37.792015, 40.856472, 52.212486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977249, 40.520279, 52.325012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776644, -0.231871, 0.585713,
		-0.427055, -0.489715, -0.760134,
		0.463085, -0.840485, 0.281313,
		38.116177, 40.268135, 52.409405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285042, 40.362328, 52.165943>,  <37.792015, 40.856472, 52.212486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285042, 40.362328, 52.165943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.561157, 40.215897, 52.415581>,  <37.726826, 40.128036, 52.565365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.561157, 40.215897, 52.415581>,  <37.285042, 40.362328, 52.165943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561157, 40.215897, 52.415581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721872, -0.289953, 0.628354,
		-0.049070, -0.884258, -0.464413,
		0.690285, -0.366080, 0.624093,
		37.768242, 40.106071, 52.602810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109043, 39.659916, 52.224037>,  <37.285042, 40.362328, 52.165943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109043, 39.659916, 52.224037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.343513, 39.739449, 52.538200>,  <37.484196, 39.787167, 52.726700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.343513, 39.739449, 52.538200>,  <37.109043, 39.659916, 52.224037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343513, 39.739449, 52.538200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665997, -0.433776, 0.606866,
		0.461357, -0.878808, -0.121845,
		0.586172, 0.198833, 0.785409,
		37.519363, 39.799099, 52.773823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192326, 39.065639, 52.537361>,  <37.109043, 39.659916, 52.224037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192326, 39.065639, 52.537361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259720, 39.340363, 52.820179>,  <37.300156, 39.505196, 52.989868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259720, 39.340363, 52.820179>,  <37.192326, 39.065639, 52.537361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259720, 39.340363, 52.820179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656455, -0.456903, 0.600255,
		0.735308, -0.565280, 0.373872,
		0.168489, 0.686803, 0.707045,
		37.310268, 39.546402, 53.032291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180225, 38.753143, 53.227261>,  <37.192326, 39.065639, 52.537361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180225, 38.753143, 53.227261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126114, 39.138573, 53.319546>,  <37.093647, 39.369831, 53.374916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126114, 39.138573, 53.319546>,  <37.180225, 38.753143, 53.227261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126114, 39.138573, 53.319546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582560, -0.265707, 0.768130,
		0.801450, -0.030489, 0.597284,
		-0.135283, 0.963571, 0.230713,
		37.085529, 39.427643, 53.388760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232681, 38.752239, 53.952999>,  <37.180225, 38.753143, 53.227261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232681, 38.752239, 53.952999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.076935, 39.115967, 53.894306>,  <36.983486, 39.334202, 53.859089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.076935, 39.115967, 53.894306>,  <37.232681, 38.752239, 53.952999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076935, 39.115967, 53.894306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681941, -0.177513, 0.709539,
		0.619151, 0.376335, 0.689220,
		-0.389370, 0.909319, -0.146731,
		36.960125, 39.388763, 53.850288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183086, 39.092045, 54.677082>,  <37.232681, 38.752239, 53.952999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183086, 39.092045, 54.677082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.915245, 39.289421, 54.455040>,  <36.754539, 39.407848, 54.321815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.915245, 39.289421, 54.455040>,  <37.183086, 39.092045, 54.677082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915245, 39.289421, 54.455040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738751, -0.365363, 0.566354,
		0.076649, 0.789318, 0.609182,
		-0.669606, 0.493444, -0.555104,
		36.714363, 39.437454, 54.288509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734337, 39.474571, 55.132248>,  <37.183086, 39.092045, 54.677082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734337, 39.474571, 55.132248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.542999, 39.456932, 54.781422>,  <36.428196, 39.446346, 54.570927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.542999, 39.456932, 54.781422>,  <36.734337, 39.474571, 55.132248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542999, 39.456932, 54.781422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777972, -0.442010, 0.446528,
		-0.407363, 0.895925, 0.177125,
		-0.478347, -0.044101, -0.877063,
		36.399494, 39.443703, 54.518303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049137, 39.828247, 55.290039>,  <36.734337, 39.474571, 55.132248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049137, 39.828247, 55.290039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.031662, 39.574478, 54.981339>,  <36.021175, 39.422215, 54.796120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.031662, 39.574478, 54.981339>,  <36.049137, 39.828247, 55.290039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031662, 39.574478, 54.981339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834091, -0.402029, 0.377709,
		-0.549894, 0.660210, -0.511605,
		-0.043687, -0.634425, -0.771749,
		36.018555, 39.384151, 54.749813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729958, 40.490673, 55.175240>,  <36.049137, 39.828247, 55.290039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729958, 40.490673, 55.175240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600212, 40.737282, 55.462204>,  <35.522366, 40.885246, 55.634384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600212, 40.737282, 55.462204>,  <35.729958, 40.490673, 55.175240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600212, 40.737282, 55.462204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631790, 0.705656, -0.320768,
		-0.704009, 0.349209, -0.618405,
		-0.324366, 0.616525, 0.717414,
		35.502903, 40.922241, 55.677429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536423, 41.092957, 54.856041>,  <35.729958, 40.490673, 55.175240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536423, 41.092957, 54.856041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.618233, 41.168358, 55.240257>,  <35.667320, 41.213600, 55.470787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.618233, 41.168358, 55.240257>,  <35.536423, 41.092957, 54.856041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618233, 41.168358, 55.240257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750431, 0.599866, -0.277514,
		-0.628507, 0.777578, -0.018769,
		0.204530, 0.188504, 0.960538,
		35.679592, 41.224911, 55.528419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695137, 41.786430, 54.917244>,  <35.536423, 41.092957, 54.856041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695137, 41.786430, 54.917244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855812, 41.629967, 55.248459>,  <35.952217, 41.536087, 55.447186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855812, 41.629967, 55.248459>,  <35.695137, 41.786430, 54.917244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855812, 41.629967, 55.248459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764485, 0.641041, -0.068040,
		-0.504188, 0.660350, 0.556536,
		0.401692, -0.391158, 0.828033,
		35.976318, 41.512619, 55.496868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903725, 42.342983, 55.308018>,  <35.695137, 41.786430, 54.917244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903725, 42.342983, 55.308018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.120453, 42.051636, 55.475780>,  <36.250492, 41.876827, 55.576439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.120453, 42.051636, 55.475780>,  <35.903725, 42.342983, 55.308018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120453, 42.051636, 55.475780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806578, 0.590917, -0.015772,
		-0.236347, 0.346831, 0.907661,
		0.541823, -0.728372, 0.419407,
		36.283001, 41.833122, 55.601604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303947, 42.662533, 55.799900>,  <35.903725, 42.342983, 55.308018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303947, 42.662533, 55.799900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477760, 42.318871, 55.691795>,  <36.582047, 42.112675, 55.626934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477760, 42.318871, 55.691795>,  <36.303947, 42.662533, 55.799900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477760, 42.318871, 55.691795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899354, 0.430042, 0.078904,
		0.048432, -0.277345, 0.959549,
		0.434529, -0.859153, -0.270259,
		36.608120, 42.061123, 55.610718>
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
