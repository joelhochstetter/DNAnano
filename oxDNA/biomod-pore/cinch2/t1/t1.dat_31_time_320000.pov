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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.422318, 32.225338, 22.621313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030815, 32.286404, 22.676052>,  <42.795914, 32.323044, 22.708895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030815, 32.286404, 22.676052>,  <43.422318, 32.225338, 22.621313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030815, 32.286404, 22.676052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205016, -0.731518, -0.650269,
		0.000833, -0.664512, 0.747277,
		-0.978758, 0.152662, 0.136845,
		42.737186, 32.332203, 22.717106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003670, 31.689322, 22.822134>,  <43.422318, 32.225338, 22.621313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003670, 31.689322, 22.822134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765221, 31.931961, 22.611732>,  <42.622150, 32.077545, 22.485493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765221, 31.931961, 22.611732>,  <43.003670, 31.689322, 22.822134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765221, 31.931961, 22.611732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129524, -0.719205, -0.682618,
		-0.792380, -0.338792, 0.507301,
		-0.596119, 0.606600, -0.526002,
		42.586384, 32.113941, 22.453932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295128, 31.408655, 22.646393>,  <43.003670, 31.689322, 22.822134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295128, 31.408655, 22.646393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382191, 31.696877, 22.383053>,  <42.434429, 31.869810, 22.225048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382191, 31.696877, 22.383053>,  <42.295128, 31.408655, 22.646393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382191, 31.696877, 22.383053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269321, -0.603996, -0.750103,
		-0.938132, 0.340573, 0.062597,
		0.217656, 0.720555, -0.658351,
		42.447487, 31.913042, 22.185547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723434, 31.594015, 22.169828>,  <42.295128, 31.408655, 22.646393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723434, 31.594015, 22.169828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096153, 31.628151, 22.028706>,  <42.319786, 31.648632, 21.944033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096153, 31.628151, 22.028706>,  <41.723434, 31.594015, 22.169828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096153, 31.628151, 22.028706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168048, -0.760102, -0.627698,
		-0.321737, 0.644175, -0.693919,
		0.931797, 0.085342, -0.352805,
		42.375690, 31.653753, 21.922865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177792, 32.069675, 21.943707>,  <41.723434, 31.594015, 22.169828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177792, 32.069675, 21.943707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913296, 32.133171, 21.650433>,  <40.754597, 32.171268, 21.474468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913296, 32.133171, 21.650433>,  <41.177792, 32.069675, 21.943707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913296, 32.133171, 21.650433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717679, -0.150675, -0.679878,
		-0.218395, -0.975756, -0.014290,
		-0.661242, 0.158738, -0.733186,
		40.714924, 32.180794, 21.430477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202015, 31.537989, 21.357744>,  <41.177792, 32.069675, 21.943707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202015, 31.537989, 21.357744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078857, 31.898380, 21.235474>,  <41.004963, 32.114616, 21.162111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078857, 31.898380, 21.235474>,  <41.202015, 31.537989, 21.357744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078857, 31.898380, 21.235474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762469, 0.041497, -0.645692,
		-0.569070, -0.431875, -0.699745,
		-0.307896, 0.900978, -0.305677,
		40.986488, 32.168674, 21.143770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135448, 31.534662, 20.643847>,  <41.202015, 31.537989, 21.357744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135448, 31.534662, 20.643847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168736, 31.929848, 20.696007>,  <41.188709, 32.166958, 20.727303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168736, 31.929848, 20.696007>,  <41.135448, 31.534662, 20.643847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168736, 31.929848, 20.696007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802842, 0.011053, -0.596090,
		-0.590355, 0.154300, -0.792258,
		0.083220, 0.987962, 0.130403,
		41.193703, 32.226238, 20.735128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329113, 31.768639, 20.022398>,  <41.135448, 31.534662, 20.643847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329113, 31.768639, 20.022398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433640, 32.077621, 20.253922>,  <41.496357, 32.263012, 20.392836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433640, 32.077621, 20.253922>,  <41.329113, 31.768639, 20.022398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433640, 32.077621, 20.253922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704439, 0.257335, -0.661471,
		-0.659907, 0.580591, -0.476903,
		0.261320, 0.772459, 0.578808,
		41.512035, 32.309361, 20.427565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233902, 32.395245, 19.662464>,  <41.329113, 31.768639, 20.022398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233902, 32.395245, 19.662464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508091, 32.485184, 19.939468>,  <41.672604, 32.539146, 20.105671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508091, 32.485184, 19.939468>,  <41.233902, 32.395245, 19.662464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508091, 32.485184, 19.939468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674510, 0.162037, -0.720264,
		-0.274162, 0.960826, -0.040591,
		0.685472, 0.224848, 0.692511,
		41.713734, 32.552639, 20.147223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636971, 32.972218, 19.470633>,  <41.233902, 32.395245, 19.662464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636971, 32.972218, 19.470633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882042, 32.817818, 19.746494>,  <42.029087, 32.725178, 19.912010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882042, 32.817818, 19.746494>,  <41.636971, 32.972218, 19.470633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882042, 32.817818, 19.746494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771833, 0.104557, -0.627170,
		0.169982, 0.916553, 0.361990,
		0.612683, -0.386004, 0.689653,
		42.065845, 32.702015, 19.953390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234272, 33.428429, 19.507135>,  <41.636971, 32.972218, 19.470633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234272, 33.428429, 19.507135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418354, 33.131901, 19.702549>,  <42.528805, 32.953983, 19.819798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418354, 33.131901, 19.702549>,  <42.234272, 33.428429, 19.507135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418354, 33.131901, 19.702549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855604, 0.223451, -0.466918,
		0.236970, 0.632867, 0.737106,
		0.460204, -0.741316, 0.488532,
		42.556416, 32.909508, 19.849108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868183, 33.669186, 19.648167>,  <42.234272, 33.428429, 19.507135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868183, 33.669186, 19.648167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899868, 33.270443, 19.649021>,  <42.918880, 33.031197, 19.649534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899868, 33.270443, 19.649021>,  <42.868183, 33.669186, 19.648167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899868, 33.270443, 19.649021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847963, 0.066256, -0.525899,
		0.524104, 0.043469, 0.850544,
		0.079214, -0.996855, 0.002135,
		42.923634, 32.971386, 19.649662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555229, 33.436916, 19.860472>,  <42.868183, 33.669186, 19.648167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555229, 33.436916, 19.860472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402298, 33.143444, 19.635784>,  <43.310539, 32.967361, 19.500971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402298, 33.143444, 19.635784>,  <43.555229, 33.436916, 19.860472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402298, 33.143444, 19.635784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842563, -0.027237, -0.537909,
		0.379356, -0.678945, 0.628588,
		-0.382331, -0.733684, -0.561721,
		43.287598, 32.923340, 19.467268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092663, 32.961536, 19.787907>,  <43.555229, 33.436916, 19.860472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092663, 32.961536, 19.787907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849892, 32.888035, 19.478619>,  <43.704227, 32.843933, 19.293045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849892, 32.888035, 19.478619>,  <44.092663, 32.961536, 19.787907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849892, 32.888035, 19.478619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772242, -0.366272, -0.519122,
		-0.187819, -0.912184, 0.364203,
		-0.606932, -0.183752, -0.773220,
		43.667812, 32.832909, 19.246653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438835, 32.410561, 19.338984>,  <44.092663, 32.961536, 19.787907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438835, 32.410561, 19.338984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156174, 32.538860, 19.086712>,  <43.986576, 32.615841, 18.935349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156174, 32.538860, 19.086712>,  <44.438835, 32.410561, 19.338984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156174, 32.538860, 19.086712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589943, -0.225019, -0.775457,
		-0.390643, -0.920046, -0.030214,
		-0.706658, 0.320752, -0.630677,
		43.944176, 32.635086, 18.897509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446491, 31.950882, 18.851627>,  <44.438835, 32.410561, 19.338984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446491, 31.950882, 18.851627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254189, 32.265060, 18.695705>,  <44.138805, 32.453568, 18.602152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254189, 32.265060, 18.695705>,  <44.446491, 31.950882, 18.851627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.254189, 32.265060, 18.695705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471885, -0.142935, -0.869997,
		-0.739052, -0.602200, -0.301922,
		-0.480756, 0.785446, -0.389806,
		44.109962, 32.500694, 18.578764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173489, 31.770594, 18.258354>,  <44.446491, 31.950882, 18.851627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173489, 31.770594, 18.258354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173328, 32.167351, 18.207527>,  <44.173233, 32.405407, 18.177031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173328, 32.167351, 18.207527>,  <44.173489, 31.770594, 18.258354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173328, 32.167351, 18.207527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467772, -0.112125, -0.876708,
		-0.883849, -0.059788, -0.463936,
		-0.000398, 0.991894, -0.127069,
		44.173210, 32.464920, 18.169407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100380, 31.871609, 17.557510>,  <44.173489, 31.770594, 18.258354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100380, 31.871609, 17.557510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221165, 32.232754, 17.679928>,  <44.293636, 32.449440, 17.753378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221165, 32.232754, 17.679928>,  <44.100380, 31.871609, 17.557510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221165, 32.232754, 17.679928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535861, 0.104765, -0.837781,
		-0.788463, 0.416973, -0.452173,
		0.301960, 0.902861, 0.306043,
		44.311752, 32.503613, 17.771740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041138, 32.345181, 16.984007>,  <44.100380, 31.871609, 17.557510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041138, 32.345181, 16.984007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309490, 32.505932, 17.233295>,  <44.470501, 32.602383, 17.382870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309490, 32.505932, 17.233295>,  <44.041138, 32.345181, 16.984007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309490, 32.505932, 17.233295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550267, 0.293592, -0.781671,
		-0.497112, 0.867350, -0.024175,
		0.670884, 0.401881, 0.623223,
		44.510754, 32.626495, 17.420261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216618, 33.124550, 16.782196>,  <44.041138, 32.345181, 16.984007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216618, 33.124550, 16.782196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525684, 32.978397, 16.989845>,  <44.711124, 32.890705, 17.114435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525684, 32.978397, 16.989845>,  <44.216618, 33.124550, 16.782196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525684, 32.978397, 16.989845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623837, 0.285598, -0.727503,
		0.117552, 0.885965, 0.448607,
		0.772664, -0.365377, 0.519125,
		44.757484, 32.868786, 17.145582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780037, 33.659306, 16.743801>,  <44.216618, 33.124550, 16.782196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780037, 33.659306, 16.743801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.947029, 33.311657, 16.849880>,  <45.047226, 33.103065, 16.913528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.947029, 33.311657, 16.849880>,  <44.780037, 33.659306, 16.743801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947029, 33.311657, 16.849880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771782, 0.185094, -0.608352,
		0.479648, 0.458651, 0.748049,
		0.417481, -0.869126, 0.265198,
		45.072273, 33.050919, 16.929440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439842, 33.872753, 16.877939>,  <44.780037, 33.659306, 16.743801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439842, 33.872753, 16.877939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464817, 33.479008, 16.812050>,  <45.479801, 33.242760, 16.772516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464817, 33.479008, 16.812050>,  <45.439842, 33.872753, 16.877939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464817, 33.479008, 16.812050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667590, 0.163878, -0.726269,
		0.741906, -0.064622, 0.667382,
		0.062437, -0.984362, -0.164723,
		45.483547, 33.183701, 16.762632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221684, 33.611881, 16.840174>,  <45.439842, 33.872753, 16.877939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.221684, 33.611881, 16.840174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956367, 33.388851, 16.640511>,  <45.797176, 33.255035, 16.520714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956367, 33.388851, 16.640511>,  <46.221684, 33.611881, 16.840174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.956367, 33.388851, 16.640511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618160, -0.032261, -0.785390,
		0.421809, -0.829500, 0.366069,
		-0.663291, -0.557574, -0.499156,
		45.757381, 33.221581, 16.490765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.668480, 33.169304, 16.438002>,  <46.221684, 33.611881, 16.840174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.668480, 33.169304, 16.438002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311100, 33.119991, 16.265240>,  <46.096672, 33.090405, 16.161583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311100, 33.119991, 16.265240>,  <46.668480, 33.169304, 16.438002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.311100, 33.119991, 16.265240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444849, -0.110062, -0.888817,
		0.062040, -0.986249, 0.153178,
		-0.893454, -0.123283, -0.431903,
		46.043064, 33.083008, 16.135668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.868427, 32.654182, 15.903156>,  <46.668480, 33.169304, 16.438002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.868427, 32.654182, 15.903156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.508347, 32.802563, 15.811917>,  <46.292297, 32.891590, 15.757174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.508347, 32.802563, 15.811917>,  <46.868427, 32.654182, 15.903156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.508347, 32.802563, 15.811917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271110, 0.067504, -0.960178,
		-0.340780, -0.926196, -0.161335,
		-0.900205, 0.370949, -0.228097,
		46.238285, 32.913849, 15.743488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.601028, 32.197220, 15.491175>,  <46.868427, 32.654182, 15.903156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.601028, 32.197220, 15.491175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.447063, 32.561424, 15.430758>,  <46.354683, 32.779945, 15.394508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.447063, 32.561424, 15.430758>,  <46.601028, 32.197220, 15.491175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.447063, 32.561424, 15.430758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328846, -0.017616, -0.944220,
		-0.862383, -0.413109, -0.292637,
		-0.384911, 0.910511, -0.151041,
		46.331589, 32.834579, 15.385447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124798, 32.069790, 14.968931>,  <46.601028, 32.197220, 15.491175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124798, 32.069790, 14.968931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244541, 32.451447, 14.968246>,  <46.316387, 32.680439, 14.967834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244541, 32.451447, 14.968246>,  <46.124798, 32.069790, 14.968931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244541, 32.451447, 14.968246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309076, -0.098671, -0.945905,
		-0.902693, 0.282637, -0.324440,
		0.299361, 0.954139, -0.001714,
		46.334351, 32.737690, 14.967731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.845032, 32.345695, 14.418973>,  <46.124798, 32.069790, 14.968931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.845032, 32.345695, 14.418973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194080, 32.523453, 14.500024>,  <46.403507, 32.630108, 14.548655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194080, 32.523453, 14.500024>,  <45.845032, 32.345695, 14.418973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194080, 32.523453, 14.500024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324160, -0.216649, -0.920860,
		-0.365321, 0.869242, -0.333105,
		0.872617, 0.444389, 0.202627,
		46.455864, 32.656769, 14.560812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.084839, 33.061680, 14.167499>,  <45.845032, 32.345695, 14.418973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.084839, 33.061680, 14.167499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389690, 32.803707, 14.190225>,  <46.572601, 32.648922, 14.203860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389690, 32.803707, 14.190225>,  <46.084839, 33.061680, 14.167499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.389690, 32.803707, 14.190225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130512, 0.067087, -0.989174,
		0.634140, 0.761289, 0.135300,
		0.762124, -0.644933, 0.056815,
		46.618328, 32.610226, 14.207270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.525227, 33.377335, 13.687542>,  <46.084839, 33.061680, 14.167499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.525227, 33.377335, 13.687542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592491, 32.991199, 13.767379>,  <46.632851, 32.759518, 13.815281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592491, 32.991199, 13.767379>,  <46.525227, 33.377335, 13.687542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.592491, 32.991199, 13.767379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210360, -0.162668, -0.963996,
		0.963052, 0.204098, 0.175714,
		0.168166, -0.965341, 0.199592,
		46.642941, 32.701595, 13.827256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.013607, 33.736595, 13.217642>,  <46.525227, 33.377335, 13.687542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.013607, 33.736595, 13.217642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079990, 34.118896, 13.314797>,  <47.119820, 34.348278, 13.373091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079990, 34.118896, 13.314797>,  <47.013607, 33.736595, 13.217642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.079990, 34.118896, 13.314797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253751, 0.196623, -0.947074,
		-0.952926, 0.218806, -0.209893,
		0.165956, 0.955753, 0.242889,
		47.129776, 34.405621, 13.387664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514435, 34.363564, 13.299018>,  <47.013607, 33.736595, 13.217642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514435, 34.363564, 13.299018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392708, 34.682777, 13.090964>,  <46.319672, 34.874306, 12.966132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392708, 34.682777, 13.090964>,  <46.514435, 34.363564, 13.299018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.392708, 34.682777, 13.090964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536622, 0.307526, 0.785789,
		0.787039, 0.518242, 0.334656,
		-0.304314, 0.798031, -0.520135,
		46.301414, 34.922188, 12.934924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.734028, 35.073776, 13.740669>,  <46.514435, 34.363564, 13.299018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.734028, 35.073776, 13.740669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.433346, 35.092464, 13.477530>,  <46.252937, 35.103676, 13.319648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.433346, 35.092464, 13.477530>,  <46.734028, 35.073776, 13.740669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.433346, 35.092464, 13.477530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638738, 0.196763, 0.743840,
		0.164190, 0.979337, -0.118066,
		-0.751702, 0.046718, -0.657846,
		46.207836, 35.106480, 13.280176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.387821, 35.754826, 13.759850>,  <46.734028, 35.073776, 13.740669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.387821, 35.754826, 13.759850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.135311, 35.475204, 13.625501>,  <45.983803, 35.307430, 13.544891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.135311, 35.475204, 13.625501>,  <46.387821, 35.754826, 13.759850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.135311, 35.475204, 13.625501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629074, 0.208248, 0.748931,
		-0.453599, 0.684074, -0.571219,
		-0.631280, -0.699053, -0.335872,
		45.945927, 35.265488, 13.524739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753582, 35.909832, 14.016365>,  <46.387821, 35.754826, 13.759850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.753582, 35.909832, 14.016365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694130, 35.528156, 13.912490>,  <45.658459, 35.299152, 13.850165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694130, 35.528156, 13.912490>,  <45.753582, 35.909832, 14.016365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694130, 35.528156, 13.912490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698832, -0.084453, 0.710283,
		-0.699674, 0.287047, -0.654264,
		-0.148630, -0.954186, -0.259687,
		45.649540, 35.241901, 13.834583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047874, 35.709446, 13.980599>,  <45.753582, 35.909832, 14.016365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047874, 35.709446, 13.980599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304409, 35.425602, 14.097308>,  <45.458332, 35.255295, 14.167334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304409, 35.425602, 14.097308>,  <45.047874, 35.709446, 13.980599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304409, 35.425602, 14.097308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504175, -0.103120, 0.857423,
		-0.578352, -0.697003, -0.423905,
		0.641339, -0.709615, 0.291772,
		45.496811, 35.212719, 14.184840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614670, 35.098591, 13.959179>,  <45.047874, 35.709446, 13.980599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614670, 35.098591, 13.959179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.914143, 35.109856, 14.224109>,  <45.093826, 35.116615, 14.383067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.914143, 35.109856, 14.224109>,  <44.614670, 35.098591, 13.959179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.914143, 35.109856, 14.224109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637335, -0.244326, 0.730827,
		0.182407, -0.969284, -0.164974,
		0.748687, 0.028164, 0.662326,
		45.138748, 35.118305, 14.422807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458553, 34.540009, 14.351336>,  <44.614670, 35.098591, 13.959179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458553, 34.540009, 14.351336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700222, 34.777630, 14.563779>,  <44.845222, 34.920204, 14.691245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700222, 34.777630, 14.563779>,  <44.458553, 34.540009, 14.351336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700222, 34.777630, 14.563779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408542, -0.341320, 0.846519,
		0.684154, -0.728424, 0.036478,
		0.604174, 0.594052, 0.531107,
		44.881474, 34.955845, 14.723111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636181, 34.104572, 15.035587>,  <44.458553, 34.540009, 14.351336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636181, 34.104572, 15.035587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703766, 34.493145, 15.102256>,  <44.744316, 34.726288, 15.142257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703766, 34.493145, 15.102256>,  <44.636181, 34.104572, 15.035587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703766, 34.493145, 15.102256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427593, -0.080115, 0.900414,
		0.888040, -0.223402, 0.401840,
		0.168961, 0.971428, 0.166670,
		44.754456, 34.784573, 15.152257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986217, 34.254776, 15.757090>,  <44.636181, 34.104572, 15.035587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986217, 34.254776, 15.757090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781628, 34.580658, 15.647809>,  <44.658875, 34.776188, 15.582240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781628, 34.580658, 15.647809>,  <44.986217, 34.254776, 15.757090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781628, 34.580658, 15.647809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521863, -0.041920, 0.851999,
		0.682679, 0.578353, 0.446607,
		-0.511478, 0.814709, -0.273203,
		44.628185, 34.825069, 15.565848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786175, 34.468304, 16.397911>,  <44.986217, 34.254776, 15.757090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786175, 34.468304, 16.397911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546219, 34.683132, 16.160698>,  <44.402245, 34.812031, 16.018370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546219, 34.683132, 16.160698>,  <44.786175, 34.468304, 16.397911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546219, 34.683132, 16.160698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711943, -0.020120, 0.701949,
		0.365067, 0.843295, 0.394436,
		-0.599886, 0.537074, -0.593033,
		44.366253, 34.844254, 15.982788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452110, 34.904465, 16.854486>,  <44.786175, 34.468304, 16.397911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452110, 34.904465, 16.854486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215485, 34.890617, 16.532280>,  <44.073509, 34.882309, 16.338957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215485, 34.890617, 16.532280>,  <44.452110, 34.904465, 16.854486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215485, 34.890617, 16.532280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796753, -0.127857, 0.590624,
		-0.123436, 0.991188, 0.048054,
		-0.591564, -0.034617, -0.805515,
		44.038017, 34.880234, 16.290625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959866, 35.460636, 16.893585>,  <44.452110, 34.904465, 16.854486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959866, 35.460636, 16.893585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814808, 35.161900, 16.670616>,  <43.727776, 34.982658, 16.536835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814808, 35.161900, 16.670616>,  <43.959866, 35.460636, 16.893585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814808, 35.161900, 16.670616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722524, -0.152464, 0.674324,
		-0.588600, 0.647289, -0.484321,
		-0.362641, -0.746841, -0.557422,
		43.706017, 34.937847, 16.503389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224796, 35.540955, 17.092030>,  <43.959866, 35.460636, 16.893585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224796, 35.540955, 17.092030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248337, 35.209789, 16.868923>,  <43.262463, 35.011089, 16.735060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248337, 35.209789, 16.868923>,  <43.224796, 35.540955, 17.092030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248337, 35.209789, 16.868923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879010, -0.307807, 0.364138,
		-0.473157, 0.468851, -0.745856,
		0.058853, -0.827909, -0.557766,
		43.265991, 34.961418, 16.701593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663223, 35.492607, 16.609514>,  <43.224796, 35.540955, 17.092030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663223, 35.492607, 16.609514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798580, 35.121647, 16.673283>,  <42.879795, 34.899071, 16.711544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798580, 35.121647, 16.673283>,  <42.663223, 35.492607, 16.609514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798580, 35.121647, 16.673283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920763, -0.291370, 0.259419,
		-0.194135, -0.234576, -0.952515,
		0.338388, -0.927404, 0.159424,
		42.900097, 34.843426, 16.721109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119572, 35.048302, 16.348354>,  <42.663223, 35.492607, 16.609514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119572, 35.048302, 16.348354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348301, 34.834293, 16.597118>,  <42.485538, 34.705891, 16.746378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348301, 34.834293, 16.597118>,  <42.119572, 35.048302, 16.348354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348301, 34.834293, 16.597118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819267, -0.411813, 0.399014,
		0.042632, -0.737678, -0.673806,
		0.571826, -0.535016, 0.621911,
		42.519848, 34.673790, 16.783691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819679, 34.466431, 16.457626>,  <42.119572, 35.048302, 16.348354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819679, 34.466431, 16.457626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068253, 34.467720, 16.771011>,  <42.217396, 34.468494, 16.959044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068253, 34.467720, 16.771011>,  <41.819679, 34.466431, 16.457626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068253, 34.467720, 16.771011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721088, -0.388675, 0.573554,
		0.306364, -0.921369, -0.239207,
		0.621429, 0.003227, 0.783464,
		42.254681, 34.468689, 17.006050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839077, 33.726013, 16.714867>,  <41.819679, 34.466431, 16.457626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839077, 33.726013, 16.714867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943321, 33.947994, 17.030869>,  <42.005867, 34.081184, 17.220470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943321, 33.947994, 17.030869>,  <41.839077, 33.726013, 16.714867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943321, 33.947994, 17.030869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591262, -0.555133, 0.585010,
		0.763212, -0.619558, 0.183452,
		0.260608, 0.554955, 0.790005,
		42.021503, 34.114479, 17.267870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475174, 33.408257, 17.287674>,  <41.839077, 33.726013, 16.714867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475174, 33.408257, 17.287674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594482, 33.746258, 17.465214>,  <41.666069, 33.949059, 17.571737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594482, 33.746258, 17.465214>,  <41.475174, 33.408257, 17.287674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594482, 33.746258, 17.465214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676927, -0.140560, 0.722504,
		0.672906, -0.515957, 0.530081,
		0.298273, 0.845004, 0.443849,
		41.683964, 33.999760, 17.598368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468590, 33.218666, 18.050610>,  <41.475174, 33.408257, 17.287674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468590, 33.218666, 18.050610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465168, 33.618595, 18.057331>,  <41.463116, 33.858551, 18.061365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465168, 33.618595, 18.057331>,  <41.468590, 33.218666, 18.050610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465168, 33.618595, 18.057331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716723, -0.017851, 0.697129,
		0.697305, -0.006080, 0.716748,
		-0.008556, 0.999822, 0.016806,
		41.462601, 33.918541, 18.062372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540573, 33.425739, 18.752800>,  <41.468590, 33.218666, 18.050610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540573, 33.425739, 18.752800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397835, 33.767281, 18.601223>,  <41.312191, 33.972206, 18.510277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397835, 33.767281, 18.601223>,  <41.540573, 33.425739, 18.752800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397835, 33.767281, 18.601223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662565, 0.054628, 0.747009,
		0.658537, 0.517639, 0.546240,
		-0.356841, 0.853853, -0.378945,
		41.290783, 34.023438, 18.487539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499275, 33.806110, 19.336782>,  <41.540573, 33.425739, 18.752800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499275, 33.806110, 19.336782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236038, 33.920437, 19.058151>,  <41.078094, 33.989033, 18.890972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236038, 33.920437, 19.058151>,  <41.499275, 33.806110, 19.336782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236038, 33.920437, 19.058151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731616, -0.024143, 0.681289,
		0.177904, 0.957981, 0.224995,
		-0.658094, 0.285814, -0.696579,
		41.038609, 34.006180, 18.849178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001678, 34.369583, 19.689110>,  <41.499275, 33.806110, 19.336782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001678, 34.369583, 19.689110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823032, 34.185612, 19.382122>,  <40.715847, 34.075230, 19.197929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823032, 34.185612, 19.382122>,  <41.001678, 34.369583, 19.689110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823032, 34.185612, 19.382122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846114, -0.061792, 0.529408,
		-0.290912, 0.885805, -0.361552,
		-0.446611, -0.459926, -0.767468,
		40.689049, 34.047634, 19.151882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339012, 34.651630, 19.651205>,  <41.001678, 34.369583, 19.689110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339012, 34.651630, 19.651205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300636, 34.324646, 19.424030>,  <40.277611, 34.128456, 19.287725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300636, 34.324646, 19.424030>,  <40.339012, 34.651630, 19.651205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300636, 34.324646, 19.424030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873532, -0.204400, 0.441773,
		-0.477218, 0.538496, -0.694467,
		-0.095944, -0.817461, -0.567937,
		40.271854, 34.079407, 19.253649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686382, 34.715706, 19.200981>,  <40.339012, 34.651630, 19.651205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686382, 34.715706, 19.200981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747467, 34.322071, 19.237320>,  <39.784119, 34.085892, 19.259123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747467, 34.322071, 19.237320>,  <39.686382, 34.715706, 19.200981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747467, 34.322071, 19.237320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897929, -0.099767, 0.428684,
		-0.412798, -0.147040, -0.898875,
		0.152712, -0.984086, 0.090848,
		39.793282, 34.026844, 19.264574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987679, 34.416706, 19.177334>,  <39.686382, 34.715706, 19.200981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987679, 34.416706, 19.177334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202000, 34.092213, 19.270988>,  <39.330593, 33.897518, 19.327181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202000, 34.092213, 19.270988>,  <38.987679, 34.416706, 19.177334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202000, 34.092213, 19.270988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822028, -0.437860, 0.364073,
		-0.192828, -0.387538, -0.901461,
		0.535806, -0.811229, 0.234135,
		39.362740, 33.848843, 19.341228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591957, 33.732677, 18.899355>,  <38.987679, 34.416706, 19.177334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591957, 33.732677, 18.899355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815971, 33.692230, 19.228264>,  <38.950378, 33.667961, 19.425610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815971, 33.692230, 19.228264>,  <38.591957, 33.732677, 18.899355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815971, 33.692230, 19.228264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784693, -0.383105, 0.487326,
		0.265738, -0.918153, -0.293903,
		0.560035, -0.101122, 0.822274,
		38.983982, 33.661892, 19.474947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380093, 33.137508, 19.257551>,  <38.591957, 33.732677, 18.899355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380093, 33.137508, 19.257551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535980, 33.386627, 19.528915>,  <38.629513, 33.536098, 19.691734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535980, 33.386627, 19.528915>,  <38.380093, 33.137508, 19.257551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535980, 33.386627, 19.528915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769301, -0.184794, 0.611578,
		0.506257, -0.760244, 0.407104,
		0.389718, 0.622801, 0.678409,
		38.652897, 33.573467, 19.732439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409241, 32.651966, 19.836346>,  <38.380093, 33.137508, 19.257551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409241, 32.651966, 19.836346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410954, 33.042061, 19.924793>,  <38.411983, 33.276119, 19.977861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410954, 33.042061, 19.924793>,  <38.409241, 32.651966, 19.836346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410954, 33.042061, 19.924793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872092, -0.104558, 0.478041,
		0.489324, -0.194885, 0.850048,
		0.004284, 0.975237, 0.221121,
		38.412239, 33.334633, 19.991129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150219, 32.771244, 20.596336>,  <38.409241, 32.651966, 19.836346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150219, 32.771244, 20.596336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101273, 33.120300, 20.407223>,  <38.071907, 33.329735, 20.293755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101273, 33.120300, 20.407223>,  <38.150219, 32.771244, 20.596336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101273, 33.120300, 20.407223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923517, 0.074365, 0.376280,
		0.363516, 0.482665, 0.796800,
		-0.122363, 0.872642, -0.472782,
		38.064564, 33.382092, 20.265388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008068, 33.434681, 20.950754>,  <38.150219, 32.771244, 20.596336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008068, 33.434681, 20.950754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819595, 33.421688, 20.598179>,  <37.706512, 33.413891, 20.386633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819595, 33.421688, 20.598179>,  <38.008068, 33.434681, 20.950754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819595, 33.421688, 20.598179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871717, 0.169565, 0.459736,
		0.134526, 0.984984, -0.108213,
		-0.471182, -0.032485, -0.881438,
		37.678242, 33.411942, 20.333748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701324, 34.094864, 20.774567>,  <38.008068, 33.434681, 20.950754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701324, 34.094864, 20.774567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485947, 33.811363, 20.592251>,  <37.356720, 33.641262, 20.482861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485947, 33.811363, 20.592251>,  <37.701324, 34.094864, 20.774567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485947, 33.811363, 20.592251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834931, 0.521823, 0.174906,
		0.113876, 0.474729, -0.872734,
		-0.538445, -0.708754, -0.455789,
		37.324413, 33.598736, 20.455515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369370, 34.386288, 20.218557>,  <37.701324, 34.094864, 20.774567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369370, 34.386288, 20.218557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158703, 34.064804, 20.329319>,  <37.032303, 33.871914, 20.395777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158703, 34.064804, 20.329319>,  <37.369370, 34.386288, 20.218557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158703, 34.064804, 20.329319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844950, 0.530645, -0.066895,
		-0.093175, -0.269203, -0.958566,
		-0.526667, -0.803707, 0.276906,
		37.000702, 33.823692, 20.412392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754246, 34.598015, 20.127632>,  <37.369370, 34.386288, 20.218557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754246, 34.598015, 20.127632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646862, 34.253178, 20.299553>,  <36.582432, 34.046276, 20.402706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646862, 34.253178, 20.299553>,  <36.754246, 34.598015, 20.127632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646862, 34.253178, 20.299553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945003, 0.322223, 0.056042,
		-0.186806, -0.391120, -0.901182,
		-0.268463, -0.862089, 0.429803,
		36.566322, 33.994553, 20.428493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995644, 34.690922, 20.226006>,  <36.754246, 34.598015, 20.127632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995644, 34.690922, 20.226006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866947, 34.822632, 20.581097>,  <35.789730, 34.901657, 20.794151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866947, 34.822632, 20.581097>,  <35.995644, 34.690922, 20.226006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866947, 34.822632, 20.581097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361350, -0.909317, 0.206321,
		0.875161, -0.254398, 0.411552,
		-0.321744, 0.329278, 0.887726,
		35.770424, 34.921417, 20.847414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190311, 34.193703, 20.865374>,  <35.995644, 34.690922, 20.226006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190311, 34.193703, 20.865374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891445, 34.420506, 21.004082>,  <35.712124, 34.556587, 21.087307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891445, 34.420506, 21.004082>,  <36.190311, 34.193703, 20.865374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891445, 34.420506, 21.004082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478472, -0.821002, 0.311480,
		0.461309, 0.066808, 0.884721,
		-0.747167, 0.567003, 0.346770,
		35.667294, 34.590607, 21.108112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081940, 34.007519, 21.508522>,  <36.190311, 34.193703, 20.865374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081940, 34.007519, 21.508522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738625, 34.192146, 21.418812>,  <35.532635, 34.302921, 21.364985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738625, 34.192146, 21.418812>,  <36.081940, 34.007519, 21.508522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738625, 34.192146, 21.418812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513163, -0.774476, 0.369934,
		-0.002948, 0.432600, 0.901581,
		-0.858286, 0.461567, -0.224278,
		35.481140, 34.330616, 21.351528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743916, 34.020546, 22.064581>,  <36.081940, 34.007519, 21.508522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743916, 34.020546, 22.064581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455265, 34.075695, 21.793217>,  <35.282074, 34.108784, 21.630398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455265, 34.075695, 21.793217>,  <35.743916, 34.020546, 22.064581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455265, 34.075695, 21.793217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584198, -0.647070, 0.489911,
		-0.371431, 0.749861, 0.547492,
		-0.721631, 0.137876, -0.678409,
		35.238777, 34.117058, 21.589693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072235, 34.010818, 22.445169>,  <35.743916, 34.020546, 22.064581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072235, 34.010818, 22.445169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975742, 33.931309, 22.065212>,  <34.917847, 33.883602, 21.837238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975742, 33.931309, 22.065212>,  <35.072235, 34.010818, 22.445169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975742, 33.931309, 22.065212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603029, -0.736195, 0.307202,
		-0.760370, 0.646920, 0.057727,
		-0.241233, -0.198776, -0.949892,
		34.903374, 33.871677, 21.780245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379841, 33.759712, 22.424324>,  <35.072235, 34.010818, 22.445169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379841, 33.759712, 22.424324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486469, 33.651638, 22.054256>,  <34.550446, 33.586792, 21.832216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486469, 33.651638, 22.054256>,  <34.379841, 33.759712, 22.424324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486469, 33.651638, 22.054256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546800, -0.832868, 0.085684,
		-0.793695, 0.483042, -0.369753,
		0.266567, -0.270188, -0.925171,
		34.566441, 33.570583, 21.776705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748524, 33.616592, 22.016172>,  <34.379841, 33.759712, 22.424324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748524, 33.616592, 22.016172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059776, 33.408283, 21.875713>,  <34.246529, 33.283298, 21.791437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059776, 33.408283, 21.875713>,  <33.748524, 33.616592, 22.016172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059776, 33.408283, 21.875713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514240, -0.849221, 0.119921,
		-0.360654, 0.087260, -0.928609,
		0.778130, -0.520778, -0.351147,
		34.293217, 33.252048, 21.770369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359577, 33.153217, 21.511299>,  <33.748524, 33.616592, 22.016172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359577, 33.153217, 21.511299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716114, 33.008839, 21.621006>,  <33.930035, 32.922211, 21.686831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716114, 33.008839, 21.621006>,  <33.359577, 33.153217, 21.511299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716114, 33.008839, 21.621006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439494, -0.836373, 0.327605,
		0.111139, -0.412547, -0.904131,
		0.891343, -0.360950, 0.274266,
		33.983517, 32.900555, 21.703285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395847, 32.424595, 21.343103>,  <33.359577, 33.153217, 21.511299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395847, 32.424595, 21.343103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655491, 32.491848, 21.639858>,  <33.811275, 32.532200, 21.817911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655491, 32.491848, 21.639858>,  <33.395847, 32.424595, 21.343103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655491, 32.491848, 21.639858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319519, -0.824804, 0.466483,
		0.690340, -0.539843, -0.481664,
		0.649106, 0.168131, 0.741885,
		33.850224, 32.542286, 21.862423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234478, 31.841619, 21.726940>,  <33.395847, 32.424595, 21.343103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234478, 31.841619, 21.726940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519741, 32.031075, 21.933659>,  <33.690899, 32.144749, 22.057690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519741, 32.031075, 21.933659>,  <33.234478, 31.841619, 21.726940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519741, 32.031075, 21.933659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096456, -0.663906, 0.741569,
		0.694337, -0.578703, -0.427784,
		0.713157, 0.473637, 0.516794,
		33.733688, 32.173164, 22.088697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748783, 31.318886, 21.981010>,  <33.234478, 31.841619, 21.726940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748783, 31.318886, 21.981010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795162, 31.635296, 22.221287>,  <33.822990, 31.825142, 22.365454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795162, 31.635296, 22.221287>,  <33.748783, 31.318886, 21.981010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795162, 31.635296, 22.221287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101962, -0.611056, 0.784993,
		0.988007, -0.029774, -0.151508,
		0.115952, 0.791027, 0.600692,
		33.829948, 31.872604, 22.401495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451485, 31.271139, 22.326220>,  <33.748783, 31.318886, 21.981010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451485, 31.271139, 22.326220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217346, 31.504330, 22.551613>,  <34.076862, 31.644243, 22.686850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217346, 31.504330, 22.551613>,  <34.451485, 31.271139, 22.326220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217346, 31.504330, 22.551613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125142, -0.621696, 0.773197,
		0.801070, 0.523101, 0.290951,
		-0.585343, 0.582975, 0.563484,
		34.041744, 31.679222, 22.720657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855957, 31.209337, 22.939535>,  <34.451485, 31.271139, 22.326220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855957, 31.209337, 22.939535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488224, 31.335613, 23.033493>,  <34.267586, 31.411379, 23.089869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488224, 31.335613, 23.033493>,  <34.855957, 31.209337, 22.939535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488224, 31.335613, 23.033493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003474, -0.590413, 0.807093,
		0.393477, 0.742800, 0.541687,
		-0.919328, 0.315690, 0.234895,
		34.212425, 31.430321, 23.103962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945114, 31.512512, 23.489199>,  <34.855957, 31.209337, 22.939535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945114, 31.512512, 23.489199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552280, 31.437450, 23.482311>,  <34.316582, 31.392412, 23.478178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552280, 31.437450, 23.482311>,  <34.945114, 31.512512, 23.489199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552280, 31.437450, 23.482311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058307, -0.389482, 0.919187,
		-0.179197, 0.901715, 0.393445,
		-0.982084, -0.187656, -0.017218,
		34.257656, 31.381153, 23.477146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660099, 31.797682, 24.089931>,  <34.945114, 31.512512, 23.489199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660099, 31.797682, 24.089931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385841, 31.527069, 23.982456>,  <34.221287, 31.364702, 23.917971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385841, 31.527069, 23.982456>,  <34.660099, 31.797682, 24.089931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385841, 31.527069, 23.982456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025135, -0.390893, 0.920093,
		-0.727500, 0.624105, 0.285019,
		-0.685647, -0.676532, -0.268689,
		34.180149, 31.324110, 23.901850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223923, 31.679190, 24.703703>,  <34.660099, 31.797682, 24.089931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223923, 31.679190, 24.703703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185928, 31.355686, 24.471535>,  <34.163132, 31.161585, 24.332233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185928, 31.355686, 24.471535>,  <34.223923, 31.679190, 24.703703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185928, 31.355686, 24.471535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103754, -0.587925, 0.802234,
		-0.990057, 0.015981, 0.139757,
		-0.094987, -0.808757, -0.580422,
		34.157433, 31.113058, 24.297409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695824, 31.323908, 24.945143>,  <34.223923, 31.679190, 24.703703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695824, 31.323908, 24.945143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906002, 31.053783, 24.738121>,  <34.032108, 30.891708, 24.613909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906002, 31.053783, 24.738121>,  <33.695824, 31.323908, 24.945143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906002, 31.053783, 24.738121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007470, -0.611933, 0.790874,
		-0.850794, -0.411697, -0.326582,
		0.525447, -0.675310, -0.517553,
		34.063637, 30.851191, 24.582855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310390, 30.733179, 25.094297>,  <33.695824, 31.323908, 24.945143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310390, 30.733179, 25.094297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649971, 30.613914, 24.919765>,  <33.853718, 30.542356, 24.815046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649971, 30.613914, 24.919765>,  <33.310390, 30.733179, 25.094297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649971, 30.613914, 24.919765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091036, -0.730789, 0.676506,
		-0.520570, -0.614043, -0.593261,
		0.848952, -0.298161, -0.436327,
		33.904655, 30.524466, 24.788868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134171, 29.986830, 25.028160>,  <33.310390, 30.733179, 25.094297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134171, 29.986830, 25.028160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524982, 30.071999, 25.024780>,  <33.759472, 30.123100, 25.022753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524982, 30.071999, 25.024780>,  <33.134171, 29.986830, 25.028160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524982, 30.071999, 25.024780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157075, -0.692842, 0.703774,
		0.143994, -0.688938, -0.710374,
		0.977033, 0.212921, -0.008450,
		33.818092, 30.135876, 25.022245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527626, 29.346437, 25.044846>,  <33.134171, 29.986830, 25.028160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527626, 29.346437, 25.044846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797920, 29.606525, 25.183754>,  <33.960098, 29.762579, 25.267099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797920, 29.606525, 25.183754>,  <33.527626, 29.346437, 25.044846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797920, 29.606525, 25.183754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297465, -0.671571, 0.678607,
		0.674461, -0.355257, -0.647221,
		0.675735, 0.650220, 0.347272,
		34.000641, 29.801592, 25.287935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146759, 28.887913, 25.190075>,  <33.527626, 29.346437, 25.044846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146759, 28.887913, 25.190075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225174, 29.228390, 25.384823>,  <34.272224, 29.432676, 25.501673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225174, 29.228390, 25.384823>,  <34.146759, 28.887913, 25.190075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225174, 29.228390, 25.384823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186521, -0.519808, 0.833672,
		0.962693, -0.072621, -0.260668,
		0.196040, 0.851191, 0.486871,
		34.283985, 29.483747, 25.530884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922962, 28.889025, 25.458597>,  <34.146759, 28.887913, 25.190075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922962, 28.889025, 25.458597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715740, 29.144527, 25.686146>,  <34.591408, 29.297829, 25.822674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715740, 29.144527, 25.686146>,  <34.922962, 28.889025, 25.458597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715740, 29.144527, 25.686146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352333, -0.446670, 0.822403,
		0.779411, 0.626480, 0.006344,
		-0.518053, 0.638755, 0.568870,
		34.560326, 29.336153, 25.856806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373981, 28.972923, 25.994949>,  <34.922962, 28.889025, 25.458597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373981, 28.972923, 25.994949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030785, 29.126179, 26.131798>,  <34.824867, 29.218132, 26.213907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030785, 29.126179, 26.131798>,  <35.373981, 28.972923, 25.994949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030785, 29.126179, 26.131798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124153, -0.491614, 0.861918,
		0.498425, 0.781998, 0.374235,
		-0.857997, 0.383139, 0.342120,
		34.773384, 29.241121, 26.234434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458477, 29.355972, 26.671804>,  <35.373981, 28.972923, 25.994949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458477, 29.355972, 26.671804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066063, 29.280788, 26.690704>,  <34.830612, 29.235678, 26.702044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066063, 29.280788, 26.690704>,  <35.458477, 29.355972, 26.671804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066063, 29.280788, 26.690704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150153, -0.582976, 0.798494,
		-0.122540, 0.790448, 0.600146,
		-0.981039, -0.187961, 0.047250,
		34.771751, 29.224400, 26.704880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220127, 29.495533, 27.352852>,  <35.458477, 29.355972, 26.671804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220127, 29.495533, 27.352852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942329, 29.248310, 27.205513>,  <34.775650, 29.099976, 27.117109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942329, 29.248310, 27.205513>,  <35.220127, 29.495533, 27.352852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942329, 29.248310, 27.205513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005172, -0.516225, 0.856437,
		-0.719478, 0.592887, 0.361713,
		-0.694496, -0.618059, -0.368346,
		34.733982, 29.062893, 27.095009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780006, 29.411346, 27.872499>,  <35.220127, 29.495533, 27.352852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780006, 29.411346, 27.872499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710735, 29.092396, 27.641258>,  <34.669174, 28.901026, 27.502514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710735, 29.092396, 27.641258>,  <34.780006, 29.411346, 27.872499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710735, 29.092396, 27.641258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104920, -0.568695, 0.815830,
		-0.979286, 0.201937, 0.014824,
		-0.173176, -0.797376, -0.578102,
		34.658783, 28.853184, 27.467827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331539, 29.093149, 28.307749>,  <34.780006, 29.411346, 27.872499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331539, 29.093149, 28.307749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449299, 28.821434, 28.038857>,  <34.519955, 28.658405, 27.877522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449299, 28.821434, 28.038857>,  <34.331539, 29.093149, 28.307749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449299, 28.821434, 28.038857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103641, -0.676563, 0.729055,
		-0.950046, -0.284304, -0.128778,
		0.294399, -0.679289, -0.672231,
		34.537621, 28.617647, 27.837187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869057, 28.530478, 28.305380>,  <34.331539, 29.093149, 28.307749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869057, 28.530478, 28.305380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206593, 28.375294, 28.157097>,  <34.409115, 28.282183, 28.068127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206593, 28.375294, 28.157097>,  <33.869057, 28.530478, 28.305380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206593, 28.375294, 28.157097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030873, -0.724807, 0.688260,
		-0.535710, -0.569335, -0.623597,
		0.843837, -0.387960, -0.370709,
		34.459743, 28.258905, 28.045885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861935, 27.808348, 28.417257>,  <33.869057, 28.530478, 28.305380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861935, 27.808348, 28.417257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252689, 27.840660, 28.338100>,  <34.487144, 27.860046, 28.290606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252689, 27.840660, 28.338100>,  <33.861935, 27.808348, 28.417257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252689, 27.840660, 28.338100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172701, -0.843808, 0.508097,
		-0.125939, -0.530531, -0.838258,
		0.976889, 0.080779, -0.197892,
		34.545757, 27.864893, 28.278732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067787, 27.158909, 28.534370>,  <33.861935, 27.808348, 28.417257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067787, 27.158909, 28.534370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427414, 27.333214, 28.517456>,  <34.643188, 27.437798, 28.507307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427414, 27.333214, 28.517456>,  <34.067787, 27.158909, 28.534370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427414, 27.333214, 28.517456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364466, -0.691438, 0.623761,
		0.242576, -0.576214, -0.780471,
		0.899067, 0.435765, -0.042284,
		34.697136, 27.463943, 28.504770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552921, 26.683996, 28.240761>,  <34.067787, 27.158909, 28.534370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552921, 26.683996, 28.240761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713226, 26.949917, 28.492928>,  <34.809410, 27.109468, 28.644228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713226, 26.949917, 28.492928>,  <34.552921, 26.683996, 28.240761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713226, 26.949917, 28.492928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314087, -0.746090, 0.587110,
		0.860660, -0.037288, -0.507814,
		0.400767, 0.664800, 0.630418,
		34.833458, 27.149357, 28.682053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139351, 26.330355, 28.535629>,  <34.552921, 26.683996, 28.240761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139351, 26.330355, 28.535629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135437, 26.645386, 28.782085>,  <35.133091, 26.834404, 28.929958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135437, 26.645386, 28.782085>,  <35.139351, 26.330355, 28.535629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135437, 26.645386, 28.782085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392107, -0.563799, 0.726900,
		0.919868, 0.248702, -0.303299,
		-0.009782, 0.787577, 0.616139,
		35.132504, 26.881659, 28.966927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818527, 26.392809, 28.811251>,  <35.139351, 26.330355, 28.535629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818527, 26.392809, 28.811251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556145, 26.548325, 29.070038>,  <35.398716, 26.641634, 29.225309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556145, 26.548325, 29.070038>,  <35.818527, 26.392809, 28.811251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556145, 26.548325, 29.070038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332020, -0.621134, 0.709898,
		0.677855, 0.680467, 0.278349,
		-0.655954, 0.388790, 0.646967,
		35.359360, 26.664961, 29.264128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128906, 26.373493, 29.514324>,  <35.818527, 26.392809, 28.811251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128906, 26.373493, 29.514324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741695, 26.442833, 29.586838>,  <35.509369, 26.484438, 29.630346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741695, 26.442833, 29.586838>,  <36.128906, 26.373493, 29.514324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741695, 26.442833, 29.586838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065001, -0.524678, 0.848815,
		0.242259, 0.833464, 0.496637,
		-0.968032, 0.173352, 0.181284,
		35.451286, 26.494839, 29.641224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076054, 26.653011, 30.209806>,  <36.128906, 26.373493, 29.514324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076054, 26.653011, 30.209806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733307, 26.473930, 30.107552>,  <35.527660, 26.366482, 30.046198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733307, 26.473930, 30.107552>,  <36.076054, 26.653011, 30.209806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733307, 26.473930, 30.107552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072649, -0.595768, 0.799865,
		-0.510401, 0.666802, 0.543016,
		-0.856862, -0.447701, -0.255638,
		35.476250, 26.339621, 30.030861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723240, 26.669344, 30.827192>,  <36.076054, 26.653011, 30.209806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723240, 26.669344, 30.827192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537956, 26.391823, 30.606621>,  <35.426785, 26.225311, 30.474277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537956, 26.391823, 30.606621>,  <35.723240, 26.669344, 30.827192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537956, 26.391823, 30.606621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195275, -0.527015, 0.827117,
		-0.864466, 0.490811, 0.108638,
		-0.463212, -0.693801, -0.551430,
		35.398994, 26.183683, 30.441193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151047, 26.559404, 31.102400>,  <35.723240, 26.669344, 30.827192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151047, 26.559404, 31.102400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189194, 26.202221, 30.926434>,  <35.212082, 25.987911, 30.820854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189194, 26.202221, 30.926434>,  <35.151047, 26.559404, 31.102400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189194, 26.202221, 30.926434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014654, -0.443143, 0.896331,
		-0.995334, -0.079036, -0.055348,
		0.095370, -0.892960, -0.439917,
		35.217804, 25.934334, 30.794458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711102, 26.069927, 31.452778>,  <35.151047, 26.559404, 31.102400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711102, 26.069927, 31.452778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954063, 25.830200, 31.244209>,  <35.099838, 25.686363, 31.119068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954063, 25.830200, 31.244209>,  <34.711102, 26.069927, 31.452778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954063, 25.830200, 31.244209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072447, -0.695431, 0.714932,
		-0.791086, -0.396474, -0.465823,
		0.607400, -0.599320, -0.521423,
		35.136284, 25.650404, 31.087782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402287, 25.459106, 31.553219>,  <34.711102, 26.069927, 31.452778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402287, 25.459106, 31.553219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781025, 25.374844, 31.455967>,  <35.008266, 25.324286, 31.397615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781025, 25.374844, 31.455967>,  <34.402287, 25.459106, 31.553219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781025, 25.374844, 31.455967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059049, -0.629123, 0.775059,
		-0.316230, -0.748216, -0.583242,
		0.946843, -0.210657, -0.243130,
		35.065079, 25.311646, 31.383028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477161, 24.777899, 31.822557>,  <34.402287, 25.459106, 31.553219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477161, 24.777899, 31.822557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861900, 24.876297, 31.774654>,  <35.092743, 24.935335, 31.745913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861900, 24.876297, 31.774654>,  <34.477161, 24.777899, 31.822557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861900, 24.876297, 31.774654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237207, -0.531653, 0.813067,
		0.136340, -0.810451, -0.569719,
		0.961844, 0.245995, -0.119759,
		35.150455, 24.950096, 31.738726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922737, 24.152431, 31.745113>,  <34.477161, 24.777899, 31.822557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922737, 24.152431, 31.745113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158531, 24.443989, 31.884380>,  <35.300007, 24.618923, 31.967939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158531, 24.443989, 31.884380>,  <34.922737, 24.152431, 31.745113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158531, 24.443989, 31.884380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212631, -0.555833, 0.803640,
		0.779290, -0.399705, -0.482641,
		0.589487, 0.728893, 0.348166,
		35.335377, 24.662657, 31.988831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561905, 23.890759, 31.829496>,  <34.922737, 24.152431, 31.745113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561905, 23.890759, 31.829496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549465, 24.192661, 32.091602>,  <35.542000, 24.373802, 32.248867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549465, 24.192661, 32.091602>,  <35.561905, 23.890759, 31.829496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549465, 24.192661, 32.091602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162281, -0.643072, 0.748414,
		0.986254, 0.129613, -0.102483,
		-0.031100, 0.754757, 0.655267,
		35.540134, 24.419088, 32.288181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003563, 23.599358, 32.243580>,  <35.561905, 23.890759, 31.829496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003563, 23.599358, 32.243580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815876, 23.888634, 32.446293>,  <35.703262, 24.062199, 32.567921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815876, 23.888634, 32.446293>,  <36.003563, 23.599358, 32.243580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815876, 23.888634, 32.446293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190251, -0.477620, 0.857720,
		0.862345, 0.498874, 0.086520,
		-0.469217, 0.723190, 0.506785,
		35.675110, 24.105591, 32.598328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430912, 23.982531, 32.811275>,  <36.003563, 23.599358, 32.243580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430912, 23.982531, 32.811275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044624, 24.001427, 32.913372>,  <35.812851, 24.012764, 32.974632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044624, 24.001427, 32.913372>,  <36.430912, 23.982531, 32.811275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044624, 24.001427, 32.913372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211539, -0.426643, 0.879333,
		0.150440, 0.903185, 0.402025,
		-0.965722, 0.047243, 0.255243,
		35.754910, 24.015600, 32.989944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322731, 24.312258, 33.402519>,  <36.430912, 23.982531, 32.811275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322731, 24.312258, 33.402519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035484, 24.038353, 33.352852>,  <35.863136, 23.874010, 33.323051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035484, 24.038353, 33.352852>,  <36.322731, 24.312258, 33.402519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035484, 24.038353, 33.352852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321066, -0.484280, 0.813873,
		-0.617439, 0.544587, 0.567622,
		-0.718113, -0.684761, -0.124165,
		35.820049, 23.832924, 33.315601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894272, 24.168041, 34.051659>,  <36.322731, 24.312258, 33.402519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894272, 24.168041, 34.051659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940018, 23.849731, 33.813778>,  <35.967464, 23.658745, 33.671051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940018, 23.849731, 33.813778>,  <35.894272, 24.168041, 34.051659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940018, 23.849731, 33.813778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475929, -0.481573, 0.735921,
		-0.872017, -0.367195, 0.323658,
		0.114362, -0.795774, -0.594698,
		35.974327, 23.611000, 33.635368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416405, 23.672661, 34.059696>,  <35.894272, 24.168041, 34.051659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416405, 23.672661, 34.059696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106056, 23.502853, 34.246376>,  <34.919846, 23.400969, 34.358383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106056, 23.502853, 34.246376>,  <35.416405, 23.672661, 34.059696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106056, 23.502853, 34.246376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373957, -0.905241, -0.201730,
		0.508116, 0.018011, 0.861100,
		-0.775870, -0.424517, 0.466703,
		34.873295, 23.375498, 34.386387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542233, 23.721989, 34.839725>,  <35.416405, 23.672661, 34.059696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542233, 23.721989, 34.839725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347645, 23.912769, 35.132538>,  <35.230892, 24.027237, 35.308224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347645, 23.912769, 35.132538>,  <35.542233, 23.721989, 34.839725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347645, 23.912769, 35.132538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130294, 0.868087, -0.479009,
		-0.863930, -0.137641, -0.484437,
		-0.486465, 0.476950, 0.732032,
		35.201706, 24.055855, 35.352146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995419, 24.094254, 34.552895>,  <35.542233, 23.721989, 34.839725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995419, 24.094254, 34.552895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063084, 24.293907, 34.892838>,  <35.103683, 24.413700, 35.096802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063084, 24.293907, 34.892838>,  <34.995419, 24.094254, 34.552895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063084, 24.293907, 34.892838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023231, 0.864059, -0.502855,
		-0.985315, 0.065319, 0.157759,
		0.169159, 0.499135, 0.849853,
		35.113831, 24.443647, 35.147793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398796, 24.613325, 34.483051>,  <34.995419, 24.094254, 34.552895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398796, 24.613325, 34.483051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695011, 24.728527, 34.725922>,  <34.872742, 24.797649, 34.871643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695011, 24.728527, 34.725922>,  <34.398796, 24.613325, 34.483051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695011, 24.728527, 34.725922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052424, 0.925513, -0.375071,
		-0.669968, 0.245924, 0.700475,
		0.740537, 0.288006, 0.607171,
		34.917171, 24.814930, 34.908073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246071, 25.128395, 34.891548>,  <34.398796, 24.613325, 34.483051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246071, 25.128395, 34.891548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635021, 25.153217, 34.801548>,  <34.868393, 25.168110, 34.747547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635021, 25.153217, 34.801548>,  <34.246071, 25.128395, 34.891548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635021, 25.153217, 34.801548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157066, 0.887050, -0.434135,
		0.172649, 0.457484, 0.872296,
		0.972380, 0.062055, -0.225003,
		34.926735, 25.171833, 34.734047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568592, 25.624861, 35.212162>,  <34.246071, 25.128395, 34.891548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568592, 25.624861, 35.212162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734829, 25.568665, 34.852707>,  <34.834572, 25.534946, 34.637035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734829, 25.568665, 34.852707>,  <34.568592, 25.624861, 35.212162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734829, 25.568665, 34.852707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276209, 0.921848, -0.271854,
		0.866599, 0.361191, 0.344305,
		0.415588, -0.140488, -0.898637,
		34.859505, 25.526518, 34.583115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553844, 26.320932, 35.082596>,  <34.568592, 25.624861, 35.212162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553844, 26.320932, 35.082596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769527, 26.141262, 34.797642>,  <34.898937, 26.033461, 34.626667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769527, 26.141262, 34.797642>,  <34.553844, 26.320932, 35.082596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769527, 26.141262, 34.797642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138893, 0.881739, -0.450828,
		0.830641, 0.144144, 0.537827,
		0.539207, -0.449176, -0.712388,
		34.931290, 26.006510, 34.583927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246830, 26.665298, 34.993557>,  <34.553844, 26.320932, 35.082596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246830, 26.665298, 34.993557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173756, 26.486568, 34.643250>,  <35.129910, 26.379330, 34.433064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173756, 26.486568, 34.643250>,  <35.246830, 26.665298, 34.993557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173756, 26.486568, 34.643250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307824, 0.819980, -0.482574,
		0.933739, -0.357744, -0.012258,
		-0.182689, -0.446825, -0.875769,
		35.118950, 26.352520, 34.380520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743778, 26.850063, 34.550594>,  <35.246830, 26.665298, 34.993557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743778, 26.850063, 34.550594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451397, 26.718674, 34.311325>,  <35.275967, 26.639841, 34.167763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451397, 26.718674, 34.311325>,  <35.743778, 26.850063, 34.550594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451397, 26.718674, 34.311325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193248, 0.741030, -0.643063,
		0.654493, -0.585645, -0.478183,
		-0.730954, -0.328473, -0.598174,
		35.232109, 26.620132, 34.131874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034698, 26.882566, 33.811890>,  <35.743778, 26.850063, 34.550594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034698, 26.882566, 33.811890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636208, 26.853878, 33.792328>,  <35.397114, 26.836664, 33.780590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636208, 26.853878, 33.792328>,  <36.034698, 26.882566, 33.811890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636208, 26.853878, 33.792328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016692, 0.711117, -0.702875,
		0.085187, -0.699406, -0.709630,
		-0.996225, -0.071721, -0.048903,
		35.337341, 26.832361, 33.777657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843014, 26.709703, 33.101509>,  <36.034698, 26.882566, 33.811890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843014, 26.709703, 33.101509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522343, 26.898029, 33.248833>,  <35.329941, 27.011024, 33.337227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522343, 26.898029, 33.248833>,  <35.843014, 26.709703, 33.101509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522343, 26.898029, 33.248833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026222, 0.587855, -0.808541,
		-0.597182, -0.657847, -0.458924,
		-0.801677, 0.470812, 0.368307,
		35.281841, 27.039272, 33.359325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409901, 26.818785, 32.510719>,  <35.843014, 26.709703, 33.101509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409901, 26.818785, 32.510719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263752, 27.055092, 32.798470>,  <35.176064, 27.196877, 32.971119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263752, 27.055092, 32.798470>,  <35.409901, 26.818785, 32.510719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263752, 27.055092, 32.798470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167294, 0.718547, -0.675058,
		-0.915704, -0.366996, -0.163707,
		-0.365375, 0.590766, 0.719372,
		35.154140, 27.232323, 33.014282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844097, 27.076244, 32.178482>,  <35.409901, 26.818785, 32.510719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844097, 27.076244, 32.178482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900223, 27.320583, 32.490170>,  <34.933899, 27.467188, 32.677181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900223, 27.320583, 32.490170>,  <34.844097, 27.076244, 32.178482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900223, 27.320583, 32.490170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208555, 0.787578, -0.579851,
		-0.967893, -0.081147, 0.237905,
		0.140315, 0.610849, 0.779214,
		34.942318, 27.503838, 32.723934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315594, 27.615078, 32.097614>,  <34.844097, 27.076244, 32.178482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315594, 27.615078, 32.097614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582973, 27.777142, 32.347099>,  <34.743401, 27.874380, 32.496792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582973, 27.777142, 32.347099>,  <34.315594, 27.615078, 32.097614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582973, 27.777142, 32.347099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069792, 0.869069, -0.489743,
		-0.740477, 0.283838, 0.609205,
		0.668449, 0.405161, 0.623716,
		34.783508, 27.898689, 32.534214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027119, 28.332279, 32.247967>,  <34.315594, 27.615078, 32.097614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027119, 28.332279, 32.247967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412449, 28.315876, 32.354042>,  <34.643646, 28.306034, 32.417686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412449, 28.315876, 32.354042>,  <34.027119, 28.332279, 32.247967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412449, 28.315876, 32.354042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178625, 0.835486, -0.519669,
		-0.200254, 0.547979, 0.812168,
		0.963323, -0.041008, 0.265192,
		34.701447, 28.303574, 32.433601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262367, 29.066713, 32.392319>,  <34.027119, 28.332279, 32.247967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262367, 29.066713, 32.392319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587448, 28.847733, 32.312515>,  <34.782497, 28.716343, 32.264633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587448, 28.847733, 32.312515>,  <34.262367, 29.066713, 32.392319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587448, 28.847733, 32.312515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448334, 0.806231, -0.385990,
		0.372164, 0.224248, 0.900670,
		0.812705, -0.547453, -0.199512,
		34.831261, 28.683496, 32.252663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779861, 29.560719, 32.583038>,  <34.262367, 29.066713, 32.392319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779861, 29.560719, 32.583038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929161, 29.273094, 32.348557>,  <35.018742, 29.100519, 32.207867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929161, 29.273094, 32.348557>,  <34.779861, 29.560719, 32.583038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929161, 29.273094, 32.348557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332211, 0.693562, -0.639224,
		0.866210, 0.043847, 0.497753,
		0.373250, -0.719061, -0.586204,
		35.041138, 29.057375, 32.172695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504887, 29.729488, 32.434811>,  <34.779861, 29.560719, 32.583038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504887, 29.729488, 32.434811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355564, 29.497112, 32.145493>,  <35.265972, 29.357687, 31.971903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355564, 29.497112, 32.145493>,  <35.504887, 29.729488, 32.434811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355564, 29.497112, 32.145493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228227, 0.698186, -0.678564,
		0.899197, -0.418387, -0.128050,
		-0.373304, -0.580938, -0.723294,
		35.243572, 29.322830, 31.928505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922253, 29.849140, 31.909235>,  <35.504887, 29.729488, 32.434811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922253, 29.849140, 31.909235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602482, 29.706753, 31.715656>,  <35.410622, 29.621321, 31.599508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602482, 29.706753, 31.715656>,  <35.922253, 29.849140, 31.909235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602482, 29.706753, 31.715656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274359, 0.500321, -0.821222,
		0.534465, -0.789279, -0.302302,
		-0.799421, -0.355975, -0.483950,
		35.362656, 29.599962, 31.570473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184460, 29.653255, 31.246954>,  <35.922253, 29.849140, 31.909235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184460, 29.653255, 31.246954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789215, 29.689301, 31.197140>,  <35.552067, 29.710928, 31.167252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789215, 29.689301, 31.197140>,  <36.184460, 29.653255, 31.246954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789215, 29.689301, 31.197140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151511, 0.434149, -0.888008,
		-0.025954, -0.896323, -0.442642,
		-0.988115, 0.090113, -0.124535,
		35.492779, 29.716333, 31.159779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024094, 29.361813, 30.592985>,  <36.184460, 29.653255, 31.246954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024094, 29.361813, 30.592985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715130, 29.604050, 30.669556>,  <35.529751, 29.749392, 30.715498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715130, 29.604050, 30.669556>,  <36.024094, 29.361813, 30.592985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715130, 29.604050, 30.669556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099946, 0.413537, -0.904985,
		-0.627216, -0.679884, -0.379945,
		-0.772406, 0.605595, 0.191425,
		35.483406, 29.785728, 30.726984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592583, 29.294970, 30.014206>,  <36.024094, 29.361813, 30.592985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592583, 29.294970, 30.014206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474964, 29.638783, 30.181412>,  <35.404392, 29.845070, 30.281736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474964, 29.638783, 30.181412>,  <35.592583, 29.294970, 30.014206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474964, 29.638783, 30.181412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073919, 0.415590, -0.906543,
		-0.952928, -0.297465, -0.058667,
		-0.294047, 0.859534, 0.418016,
		35.386749, 29.896643, 30.306816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484539, 29.713692, 29.499758>,  <35.592583, 29.294970, 30.014206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484539, 29.713692, 29.499758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483551, 29.995411, 29.783718>,  <35.482960, 30.164442, 29.954094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483551, 29.995411, 29.783718>,  <35.484539, 29.713692, 29.499758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483551, 29.995411, 29.783718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003895, 0.709906, -0.704286,
		-0.999989, 0.001027, -0.004495,
		-0.002468, 0.704296, 0.709902,
		35.482811, 30.206699, 29.996689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931618, 30.290747, 29.247568>,  <35.484539, 29.713692, 29.499758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931618, 30.290747, 29.247568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178085, 30.458008, 29.514545>,  <35.325966, 30.558365, 29.674732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178085, 30.458008, 29.514545>,  <34.931618, 30.290747, 29.247568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178085, 30.458008, 29.514545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158649, 0.764162, -0.625210,
		-0.771469, 0.491125, 0.404514,
		0.616170, 0.418154, 0.667444,
		35.362938, 30.583454, 29.714779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665691, 30.956762, 29.349648>,  <34.931618, 30.290747, 29.247568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665691, 30.956762, 29.349648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043766, 30.978115, 29.478500>,  <35.270611, 30.990927, 29.555811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043766, 30.978115, 29.478500>,  <34.665691, 30.956762, 29.349648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043766, 30.978115, 29.478500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083593, 0.914107, -0.396762,
		-0.315642, 0.401943, 0.859541,
		0.945189, 0.053384, 0.322131,
		35.327324, 30.994131, 29.575140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744076, 31.598843, 29.579372>,  <34.665691, 30.956762, 29.349648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744076, 31.598843, 29.579372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112869, 31.478508, 29.481853>,  <35.334145, 31.406307, 29.423342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112869, 31.478508, 29.481853>,  <34.744076, 31.598843, 29.579372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112869, 31.478508, 29.481853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106809, 0.802769, -0.586647,
		0.372198, 0.514841, 0.772274,
		0.921987, -0.300834, -0.243799,
		35.389465, 31.388258, 29.408714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284309, 32.181561, 29.596424>,  <34.744076, 31.598843, 29.579372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284309, 32.181561, 29.596424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427311, 31.907383, 29.342697>,  <35.513111, 31.742876, 29.190460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427311, 31.907383, 29.342697>,  <35.284309, 32.181561, 29.596424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427311, 31.907383, 29.342697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141529, 0.711124, -0.688675,
		0.923125, 0.156430, 0.351240,
		0.357504, -0.685444, -0.634317,
		35.534561, 31.701750, 29.152403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744976, 32.573254, 29.180723>,  <35.284309, 32.181561, 29.596424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744976, 32.573254, 29.180723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746899, 32.227310, 28.979927>,  <35.748051, 32.019745, 28.859449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746899, 32.227310, 28.979927>,  <35.744976, 32.573254, 29.180723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746899, 32.227310, 28.979927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073019, 0.500961, -0.862384,
		0.997319, -0.032512, 0.065558,
		0.004804, -0.864859, -0.501992,
		35.748341, 31.967852, 28.829329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359451, 32.554844, 28.766134>,  <35.744976, 32.573254, 29.180723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359451, 32.554844, 28.766134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082729, 32.326004, 28.589901>,  <35.916698, 32.188702, 28.484161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082729, 32.326004, 28.589901>,  <36.359451, 32.554844, 28.766134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082729, 32.326004, 28.589901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122841, 0.508014, -0.852545,
		0.711563, -0.643913, -0.281167,
		-0.691801, -0.572100, -0.440583,
		35.875191, 32.154373, 28.457726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695587, 32.293221, 28.187773>,  <36.359451, 32.554844, 28.766134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695587, 32.293221, 28.187773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299850, 32.260647, 28.139484>,  <36.062408, 32.241100, 28.110512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299850, 32.260647, 28.139484>,  <36.695587, 32.293221, 28.187773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299850, 32.260647, 28.139484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047885, 0.600954, -0.797848,
		0.137522, -0.795124, -0.590648,
		-0.989341, -0.081439, -0.120719,
		36.003048, 32.236214, 28.103270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612312, 32.159660, 27.472179>,  <36.695587, 32.293221, 28.187773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612312, 32.159660, 27.472179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246212, 32.286140, 27.572037>,  <36.026550, 32.362030, 27.631952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246212, 32.286140, 27.572037>,  <36.612312, 32.159660, 27.472179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246212, 32.286140, 27.572037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002153, 0.615812, -0.787890,
		-0.402868, -0.721658, -0.562945,
		-0.915256, 0.316204, 0.249645,
		35.971634, 32.381001, 27.646931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236946, 32.212116, 26.839924>,  <36.612312, 32.159660, 27.472179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236946, 32.212116, 26.839924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013840, 32.410408, 27.106201>,  <35.879974, 32.529385, 27.265968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013840, 32.410408, 27.106201>,  <36.236946, 32.212116, 26.839924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013840, 32.410408, 27.106201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147610, 0.730009, -0.667307,
		-0.816768, -0.470463, -0.333997,
		-0.557765, 0.495734, 0.665693,
		35.846512, 32.559128, 27.305908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495754, 32.315102, 26.563263>,  <36.236946, 32.212116, 26.839924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495754, 32.315102, 26.563263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556637, 32.605106, 26.831944>,  <35.593166, 32.779110, 26.993153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556637, 32.605106, 26.831944>,  <35.495754, 32.315102, 26.563263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556637, 32.605106, 26.831944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240006, 0.686393, -0.686485,
		-0.958765, -0.056722, 0.278484,
		0.152210, 0.725015, 0.671703,
		35.602299, 32.822613, 27.033455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932682, 32.855354, 26.448740>,  <35.495754, 32.315102, 26.563263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932682, 32.855354, 26.448740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224766, 33.046467, 26.644093>,  <35.400017, 33.161137, 26.761303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224766, 33.046467, 26.644093>,  <34.932682, 32.855354, 26.448740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224766, 33.046467, 26.644093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083344, 0.771771, -0.630415,
		-0.678120, 0.419631, 0.603376,
		0.730210, 0.477785, 0.488380,
		35.443829, 33.189804, 26.790607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733845, 33.574348, 26.507509>,  <34.932682, 32.855354, 26.448740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733845, 33.574348, 26.507509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128933, 33.570263, 26.569870>,  <35.365986, 33.567810, 26.607286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128933, 33.570263, 26.569870>,  <34.733845, 33.574348, 26.507509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128933, 33.570263, 26.569870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095600, 0.828764, -0.551371,
		-0.123575, 0.559505, 0.819564,
		0.987720, -0.010215, 0.155903,
		35.425247, 33.567200, 26.616640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847656, 34.265999, 26.705137>,  <34.733845, 33.574348, 26.507509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847656, 34.265999, 26.705137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195263, 34.105717, 26.589039>,  <35.403828, 34.009548, 26.519379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195263, 34.105717, 26.589039>,  <34.847656, 34.265999, 26.705137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195263, 34.105717, 26.589039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171302, 0.793999, -0.583284,
		0.464183, 0.457164, 0.758641,
		0.869017, -0.400707, -0.290248,
		35.455967, 33.985504, 26.501965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346497, 34.858551, 26.735622>,  <34.847656, 34.265999, 26.705137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346497, 34.858551, 26.735622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514824, 34.581543, 26.501244>,  <35.615822, 34.415340, 26.360617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514824, 34.581543, 26.501244>,  <35.346497, 34.858551, 26.735622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514824, 34.581543, 26.501244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309497, 0.716771, -0.624861,
		0.852715, 0.081605, 0.515962,
		0.420819, -0.692517, -0.585945,
		35.641071, 34.373787, 26.325460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995613, 35.123386, 26.564631>,  <35.346497, 34.858551, 26.735622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995613, 35.123386, 26.564631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895409, 34.846642, 26.293758>,  <35.835285, 34.680595, 26.131235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895409, 34.846642, 26.293758>,  <35.995613, 35.123386, 26.564631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895409, 34.846642, 26.293758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280687, 0.617536, -0.734755,
		0.926530, -0.374142, 0.039494,
		-0.250514, -0.691858, -0.677182,
		35.820255, 34.639084, 26.090603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498257, 35.007458, 26.015909>,  <35.995613, 35.123386, 26.564631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498257, 35.007458, 26.015909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180893, 34.856602, 25.824799>,  <35.990475, 34.766087, 25.710133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180893, 34.856602, 25.824799>,  <36.498257, 35.007458, 26.015909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180893, 34.856602, 25.824799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216311, 0.558993, -0.800460,
		0.568974, -0.738432, -0.361921,
		-0.793396, -0.377154, -0.477783,
		35.942871, 34.743458, 25.681465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631870, 34.827312, 25.371571>,  <36.498257, 35.007458, 26.015909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631870, 34.827312, 25.371571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235756, 34.864136, 25.329887>,  <35.998089, 34.886230, 25.304878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235756, 34.864136, 25.329887>,  <36.631870, 34.827312, 25.371571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235756, 34.864136, 25.329887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138309, 0.575000, -0.806378,
		-0.014318, -0.812958, -0.582147,
		-0.990286, 0.092062, -0.104207,
		35.938671, 34.891754, 25.298626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491032, 34.719776, 24.751059>,  <36.631870, 34.827312, 25.371571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491032, 34.719776, 24.751059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168591, 34.927307, 24.864910>,  <35.975124, 35.051826, 24.933222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168591, 34.927307, 24.864910>,  <36.491032, 34.719776, 24.751059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168591, 34.927307, 24.864910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025227, 0.510667, -0.859408,
		-0.591236, -0.685592, -0.424739,
		-0.806104, 0.518828, 0.284629,
		35.926758, 35.082954, 24.950298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101212, 34.736748, 24.139845>,  <36.491032, 34.719776, 24.751059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101212, 34.736748, 24.139845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922783, 35.010387, 24.370682>,  <35.815727, 35.174572, 24.509184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922783, 35.010387, 24.370682>,  <36.101212, 34.736748, 24.139845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922783, 35.010387, 24.370682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158494, 0.574226, -0.803209,
		-0.880853, -0.449752, -0.147718,
		-0.446068, 0.684097, 0.577092,
		35.788963, 35.215618, 24.543810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368393, 34.869625, 23.891596>,  <36.101212, 34.736748, 24.139845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368393, 34.869625, 23.891596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489033, 35.195030, 24.090488>,  <35.561417, 35.390274, 24.209824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489033, 35.195030, 24.090488>,  <35.368393, 34.869625, 23.891596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489033, 35.195030, 24.090488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223183, 0.567263, -0.792718,
		-0.926946, 0.128107, 0.352646,
		0.301596, 0.813512, 0.497231,
		35.579510, 35.439083, 24.239658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819622, 35.317245, 23.917913>,  <35.368393, 34.869625, 23.891596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819622, 35.317245, 23.917913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129234, 35.562477, 23.981178>,  <35.315002, 35.709614, 24.019138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129234, 35.562477, 23.981178>,  <34.819622, 35.317245, 23.917913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129234, 35.562477, 23.981178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211336, 0.485647, -0.848224,
		-0.596838, 0.623125, 0.505470,
		0.774029, 0.613076, 0.158164,
		35.361443, 35.746399, 24.028627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532696, 35.973766, 23.918879>,  <34.819622, 35.317245, 23.917913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532696, 35.973766, 23.918879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924938, 36.003353, 23.846287>,  <35.160286, 36.021107, 23.802731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924938, 36.003353, 23.846287>,  <34.532696, 35.973766, 23.918879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924938, 36.003353, 23.846287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179230, 0.713032, -0.677837,
		0.079264, 0.697219, 0.712462,
		0.980609, 0.073967, -0.181480,
		35.219120, 36.025543, 23.791843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641033, 36.688919, 23.831581>,  <34.532696, 35.973766, 23.918879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641033, 36.688919, 23.831581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970127, 36.523758, 23.675312>,  <35.167583, 36.424660, 23.581551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970127, 36.523758, 23.675312>,  <34.641033, 36.688919, 23.831581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970127, 36.523758, 23.675312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030431, 0.654301, -0.755622,
		0.567616, 0.633562, 0.525749,
		0.822731, -0.412904, -0.390672,
		35.216946, 36.399887, 23.558111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534233, 37.050507, 24.569778>,  <34.641033, 36.688919, 23.831581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534233, 37.050507, 24.569778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157513, 37.183418, 24.590157>,  <33.931480, 37.263165, 24.602385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157513, 37.183418, 24.590157>,  <34.534233, 37.050507, 24.569778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157513, 37.183418, 24.590157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328775, -0.942064, 0.066496,
		0.070091, 0.045876, 0.996485,
		-0.941804, 0.332280, 0.050947,
		33.874973, 37.283104, 24.605440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123337, 36.943733, 25.224031>,  <34.534233, 37.050507, 24.569778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123337, 36.943733, 25.224031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881092, 36.939892, 24.905750>,  <33.735744, 36.937588, 24.714781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881092, 36.939892, 24.905750>,  <34.123337, 36.943733, 25.224031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881092, 36.939892, 24.905750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401990, -0.859269, 0.316324,
		-0.686762, 0.511434, 0.516520,
		-0.605608, -0.009603, -0.795705,
		33.699409, 36.937012, 24.667038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458347, 36.895592, 25.489819>,  <34.123337, 36.943733, 25.224031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458347, 36.895592, 25.489819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390289, 36.794277, 25.108894>,  <33.349453, 36.733490, 24.880341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390289, 36.794277, 25.108894>,  <33.458347, 36.895592, 25.489819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390289, 36.794277, 25.108894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338816, -0.892445, 0.297900,
		-0.925340, 0.373345, 0.066028,
		-0.170146, -0.253288, -0.952311,
		33.339245, 36.718292, 24.823200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793800, 36.654701, 25.474880>,  <33.458347, 36.895592, 25.489819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793800, 36.654701, 25.474880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992680, 36.490047, 25.169373>,  <33.112007, 36.391254, 24.986067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992680, 36.490047, 25.169373>,  <32.793800, 36.654701, 25.474880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992680, 36.490047, 25.169373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291773, -0.908350, 0.299616,
		-0.817104, 0.073878, -0.571737,
		0.497202, -0.411635, -0.763772,
		33.141842, 36.366558, 24.940241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268429, 36.188148, 25.063976>,  <32.793800, 36.654701, 25.474880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268429, 36.188148, 25.063976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630119, 36.048573, 24.965500>,  <32.847134, 35.964825, 24.906414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630119, 36.048573, 24.965500>,  <32.268429, 36.188148, 25.063976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630119, 36.048573, 24.965500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262796, -0.909079, 0.323286,
		-0.336615, -0.227627, -0.913716,
		0.904228, -0.348943, -0.246190,
		32.901386, 35.943890, 24.891644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307934, 35.652645, 24.491600>,  <32.268429, 36.188148, 25.063976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307934, 35.652645, 24.491600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620079, 35.618168, 24.739346>,  <32.807365, 35.597481, 24.887993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620079, 35.618168, 24.739346>,  <32.307934, 35.652645, 24.491600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620079, 35.618168, 24.739346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301426, -0.919643, 0.251792,
		0.547889, -0.383180, -0.743634,
		0.780359, -0.086196, 0.619362,
		32.854187, 35.592308, 24.925154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261646, 34.959488, 24.506479>,  <32.307934, 35.652645, 24.491600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261646, 34.959488, 24.506479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554413, 35.054554, 24.761921>,  <32.730072, 35.111595, 24.915186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554413, 35.054554, 24.761921>,  <32.261646, 34.959488, 24.506479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554413, 35.054554, 24.761921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014289, -0.931641, 0.363100,
		0.681248, -0.274883, -0.678484,
		0.731914, 0.237667, 0.638606,
		32.773987, 35.125854, 24.953503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635563, 34.459026, 24.379356>,  <32.261646, 34.959488, 24.506479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635563, 34.459026, 24.379356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726143, 34.611099, 24.738060>,  <32.780491, 34.702343, 24.953283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726143, 34.611099, 24.738060>,  <32.635563, 34.459026, 24.379356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726143, 34.611099, 24.738060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039375, -0.916353, 0.398431,
		0.973226, -0.125536, -0.192541,
		0.226453, 0.380182, 0.896761,
		32.794079, 34.725155, 25.007088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141628, 34.027782, 24.597843>,  <32.635563, 34.459026, 24.379356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141628, 34.027782, 24.597843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971539, 34.190838, 24.921082>,  <32.869484, 34.288670, 25.115025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971539, 34.190838, 24.921082>,  <33.141628, 34.027782, 24.597843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971539, 34.190838, 24.921082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047074, -0.901587, 0.430029,
		0.903863, 0.144819, 0.402566,
		-0.425225, 0.407638, 0.808094,
		32.843971, 34.313129, 25.163509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476284, 33.714340, 25.238447>,  <33.141628, 34.027782, 24.597843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476284, 33.714340, 25.238447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117851, 33.873085, 25.317982>,  <32.902790, 33.968330, 25.365704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117851, 33.873085, 25.317982>,  <33.476284, 33.714340, 25.238447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117851, 33.873085, 25.317982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214131, -0.778854, 0.589520,
		0.388825, 0.485681, 0.782898,
		-0.896082, 0.396863, 0.198838,
		32.849026, 33.992146, 25.377634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610912, 33.716858, 25.968573>,  <33.476284, 33.714340, 25.238447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610912, 33.716858, 25.968573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220474, 33.726055, 25.882114>,  <32.986214, 33.731571, 25.830240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220474, 33.726055, 25.882114>,  <33.610912, 33.716858, 25.968573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220474, 33.726055, 25.882114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188881, -0.581814, 0.791086,
		-0.107569, 0.812997, 0.572245,
		-0.976091, 0.022990, -0.216145,
		32.927647, 33.732952, 25.817270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335918, 33.906261, 26.542307>,  <33.610912, 33.716858, 25.968573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335918, 33.906261, 26.542307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043636, 33.712006, 26.350380>,  <32.868267, 33.595451, 26.235224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043636, 33.712006, 26.350380>,  <33.335918, 33.906261, 26.542307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043636, 33.712006, 26.350380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125598, -0.595202, 0.793700,
		-0.671043, 0.640222, 0.373920,
		-0.730703, -0.485643, -0.479817,
		32.824425, 33.566311, 26.206434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725544, 33.840614, 26.979382>,  <33.335918, 33.906261, 26.542307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725544, 33.840614, 26.979382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677845, 33.540066, 26.719776>,  <32.649227, 33.359737, 26.564013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677845, 33.540066, 26.719776>,  <32.725544, 33.840614, 26.979382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677845, 33.540066, 26.719776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281134, -0.601372, 0.747874,
		-0.952231, 0.271641, -0.139525,
		-0.119247, -0.751374, -0.649013,
		32.642071, 33.314655, 26.525072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076149, 33.582821, 27.160233>,  <32.725544, 33.840614, 26.979382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076149, 33.582821, 27.160233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271725, 33.299278, 26.956879>,  <32.389069, 33.129150, 26.834866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271725, 33.299278, 26.956879>,  <32.076149, 33.582821, 27.160233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271725, 33.299278, 26.956879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269080, -0.676937, 0.685093,
		-0.829780, -0.198173, -0.521721,
		0.488939, -0.708861, -0.508384,
		32.418407, 33.086620, 26.804363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724886, 32.985489, 27.377930>,  <32.076149, 33.582821, 27.160233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724886, 32.985489, 27.377930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046879, 32.832329, 27.196651>,  <32.240074, 32.740433, 27.087885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046879, 32.832329, 27.196651>,  <31.724886, 32.985489, 27.377930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046879, 32.832329, 27.196651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028568, -0.737958, 0.674242,
		-0.592609, -0.555700, -0.583105,
		0.804983, -0.382904, -0.453196,
		32.288372, 32.717457, 27.060692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576866, 32.246304, 27.318026>,  <31.724886, 32.985489, 27.377930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576866, 32.246304, 27.318026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972364, 32.300282, 27.292187>,  <32.209663, 32.332668, 27.276684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972364, 32.300282, 27.292187>,  <31.576866, 32.246304, 27.318026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972364, 32.300282, 27.292187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143206, -0.728722, 0.669669,
		0.043292, -0.671383, -0.739845,
		0.988746, 0.134942, -0.064598,
		32.268990, 32.340763, 27.272808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907150, 31.581329, 27.241375>,  <31.576866, 32.246304, 27.318026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907150, 31.581329, 27.241375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175110, 31.831406, 27.401562>,  <32.335884, 31.981451, 27.497675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175110, 31.831406, 27.401562>,  <31.907150, 31.581329, 27.241375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175110, 31.831406, 27.401562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197903, -0.670232, 0.715279,
		0.715591, -0.399910, -0.572714,
		0.669899, 0.625189, 0.400468,
		32.376080, 32.018963, 27.521702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467983, 31.083746, 27.600986>,  <31.907150, 31.581329, 27.241375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467983, 31.083746, 27.600986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537270, 31.449287, 27.747883>,  <32.578842, 31.668612, 27.836021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537270, 31.449287, 27.747883>,  <32.467983, 31.083746, 27.600986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537270, 31.449287, 27.747883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343562, -0.405523, 0.847063,
		0.923018, -0.020555, -0.384208,
		0.173217, 0.913854, 0.367243,
		32.589233, 31.723444, 27.858055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997139, 31.074497, 28.007980>,  <32.467983, 31.083746, 27.600986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997139, 31.074497, 28.007980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876144, 31.417896, 28.173622>,  <32.803547, 31.623936, 28.273008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876144, 31.417896, 28.173622>,  <32.997139, 31.074497, 28.007980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876144, 31.417896, 28.173622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343156, -0.307239, 0.887608,
		0.889239, 0.410594, -0.201662,
		-0.302488, 0.858497, 0.414107,
		32.785397, 31.675446, 28.297853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579914, 31.332891, 28.314373>,  <32.997139, 31.074497, 28.007980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579914, 31.332891, 28.314373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266396, 31.518166, 28.479839>,  <33.078285, 31.629330, 28.579119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266396, 31.518166, 28.479839>,  <33.579914, 31.332891, 28.314373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266396, 31.518166, 28.479839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235333, -0.394900, 0.888072,
		0.574698, 0.793419, 0.200520,
		-0.783799, 0.463184, 0.413666,
		33.031258, 31.657122, 28.603939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916080, 31.531662, 28.946831>,  <33.579914, 31.332891, 28.314373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916080, 31.531662, 28.946831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520370, 31.522369, 29.004520>,  <33.282944, 31.516794, 29.039135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520370, 31.522369, 29.004520>,  <33.916080, 31.531662, 28.946831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520370, 31.522369, 29.004520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137831, -0.475582, 0.868806,
		0.048405, 0.879364, 0.473682,
		-0.989272, -0.023234, 0.144224,
		33.223587, 31.515400, 29.047789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822437, 31.658083, 29.683256>,  <33.916080, 31.531662, 28.946831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822437, 31.658083, 29.683256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472721, 31.503628, 29.565601>,  <33.262894, 31.410955, 29.495008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472721, 31.503628, 29.565601>,  <33.822437, 31.658083, 29.683256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472721, 31.503628, 29.565601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066238, -0.505389, 0.860346,
		-0.480866, 0.771674, 0.416279,
		-0.874289, -0.386138, -0.294138,
		33.210434, 31.387787, 29.477360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390270, 31.844965, 30.140509>,  <33.822437, 31.658083, 29.683256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390270, 31.844965, 30.140509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216625, 31.527943, 29.969208>,  <33.112438, 31.337729, 29.866426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216625, 31.527943, 29.969208>,  <33.390270, 31.844965, 30.140509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216625, 31.527943, 29.969208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130922, -0.414831, 0.900431,
		-0.891294, 0.446956, 0.076320,
		-0.434113, -0.792557, -0.428252,
		33.086391, 31.290176, 29.840733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841644, 31.644264, 30.697491>,  <33.390270, 31.844965, 30.140509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841644, 31.644264, 30.697491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902557, 31.330856, 30.456524>,  <32.939106, 31.142813, 30.311943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902557, 31.330856, 30.456524>,  <32.841644, 31.644264, 30.697491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902557, 31.330856, 30.456524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090581, -0.618027, 0.780921,
		-0.984177, -0.064353, -0.165087,
		0.152283, -0.783518, -0.602419,
		32.948242, 31.095800, 30.275799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180054, 31.289034, 30.703777>,  <32.841644, 31.644264, 30.697491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180054, 31.289034, 30.703777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489944, 31.049664, 30.622108>,  <32.675877, 30.906040, 30.573107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489944, 31.049664, 30.622108>,  <32.180054, 31.289034, 30.703777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489944, 31.049664, 30.622108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269799, -0.604899, 0.749203,
		-0.571845, -0.525342, -0.630086,
		0.774726, -0.598425, -0.204172,
		32.722363, 30.870134, 30.560856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912216, 30.682775, 30.937109>,  <32.180054, 31.289034, 30.703777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912216, 30.682775, 30.937109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296253, 30.585022, 30.882710>,  <32.526676, 30.526371, 30.850069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296253, 30.585022, 30.882710>,  <31.912216, 30.682775, 30.937109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296253, 30.585022, 30.882710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119318, -0.797715, 0.591112,
		-0.252946, -0.551296, -0.795041,
		0.960094, -0.244383, -0.136000,
		32.584282, 30.511707, 30.841909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941786, 29.924440, 30.868544>,  <31.912216, 30.682775, 30.937109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941786, 29.924440, 30.868544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308121, 30.038078, 30.982059>,  <32.527920, 30.106260, 31.050169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308121, 30.038078, 30.982059>,  <31.941786, 29.924440, 30.868544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308121, 30.038078, 30.982059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063247, -0.799960, 0.596710,
		0.396542, -0.528540, -0.750600,
		0.915835, 0.284094, 0.283789,
		32.582870, 30.123306, 31.067196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212173, 29.370584, 31.029791>,  <31.941786, 29.924440, 30.868544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212173, 29.370584, 31.029791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441360, 29.622108, 31.240051>,  <32.578873, 29.773024, 31.366207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441360, 29.622108, 31.240051>,  <32.212173, 29.370584, 31.029791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441360, 29.622108, 31.240051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069606, -0.676383, 0.733254,
		0.816620, -0.383539, -0.431312,
		0.572964, 0.628811, 0.525651,
		32.613251, 29.810753, 31.397747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764599, 29.005745, 31.165854>,  <32.212173, 29.370584, 31.029791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764599, 29.005745, 31.165854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753746, 29.290485, 31.446575>,  <32.747234, 29.461330, 31.615009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753746, 29.290485, 31.446575>,  <32.764599, 29.005745, 31.165854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753746, 29.290485, 31.446575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115695, -0.699583, 0.705123,
		0.992914, -0.062065, 0.101337,
		-0.027130, 0.711851, 0.701806,
		32.745605, 29.504040, 31.657118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086548, 28.733135, 31.710335>,  <32.764599, 29.005745, 31.165854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086548, 28.733135, 31.710335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906044, 29.048092, 31.878323>,  <32.797741, 29.237066, 31.979116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906044, 29.048092, 31.878323>,  <33.086548, 28.733135, 31.710335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906044, 29.048092, 31.878323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019025, -0.462017, 0.886667,
		0.892188, 0.408110, 0.193511,
		-0.451263, 0.787392, 0.419971,
		32.770664, 29.284309, 32.004314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430740, 28.943872, 32.371624>,  <33.086548, 28.733135, 31.710335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430740, 28.943872, 32.371624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088947, 29.129707, 32.464584>,  <32.883869, 29.241209, 32.520363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088947, 29.129707, 32.464584>,  <33.430740, 28.943872, 32.371624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088947, 29.129707, 32.464584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081145, -0.561262, 0.823651,
		0.513098, 0.684940, 0.517289,
		-0.854486, 0.464589, 0.232403,
		32.832600, 29.269085, 32.534306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481468, 29.026571, 33.035378>,  <33.430740, 28.943872, 32.371624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481468, 29.026571, 33.035378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088867, 29.053329, 32.963631>,  <32.853306, 29.069386, 32.920582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088867, 29.053329, 32.963631>,  <33.481468, 29.026571, 33.035378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088867, 29.053329, 32.963631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180655, -0.633683, 0.752203,
		-0.063343, 0.770694, 0.634048,
		-0.981505, 0.066897, -0.179369,
		32.794415, 29.073399, 32.909821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119110, 29.234934, 33.740406>,  <33.481468, 29.026571, 33.035378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119110, 29.234934, 33.740406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843826, 29.085884, 33.491402>,  <32.678658, 28.996454, 33.341999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843826, 29.085884, 33.491402>,  <33.119110, 29.234934, 33.740406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843826, 29.085884, 33.491402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216136, -0.713769, 0.666198,
		-0.692569, 0.593031, 0.410686,
		-0.688210, -0.372624, -0.622510,
		32.637363, 28.974096, 33.304649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586555, 29.136040, 34.195030>,  <33.119110, 29.234934, 33.740406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586555, 29.136040, 34.195030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530132, 28.900856, 33.876431>,  <32.496281, 28.759747, 33.685272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530132, 28.900856, 33.876431>,  <32.586555, 29.136040, 34.195030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530132, 28.900856, 33.876431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213977, -0.767418, 0.604387,
		-0.966601, 0.255684, -0.017561,
		-0.141056, -0.587958, -0.796497,
		32.487816, 28.724468, 33.637482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994129, 28.732517, 34.342285>,  <32.586555, 29.136040, 34.195030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994129, 28.732517, 34.342285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166691, 28.539623, 34.037304>,  <32.270229, 28.423887, 33.854313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166691, 28.539623, 34.037304>,  <31.994129, 28.732517, 34.342285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166691, 28.539623, 34.037304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130728, -0.869641, 0.476062,
		-0.892638, -0.105699, -0.438206,
		0.431401, -0.482237, -0.762458,
		32.296112, 28.394953, 33.808567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543221, 28.186693, 34.330585>,  <31.994129, 28.732517, 34.342285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543221, 28.186693, 34.330585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873457, 28.080494, 34.131424>,  <32.071598, 28.016775, 34.011929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873457, 28.080494, 34.131424>,  <31.543221, 28.186693, 34.330585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873457, 28.080494, 34.131424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055483, -0.916310, 0.396606,
		-0.561531, -0.299810, -0.771231,
		0.825593, -0.265497, -0.497902,
		32.121136, 28.000845, 33.982052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380016, 27.539267, 34.038963>,  <31.543221, 28.186693, 34.330585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380016, 27.539267, 34.038963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776381, 27.565979, 34.085674>,  <32.014198, 27.582006, 34.113701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776381, 27.565979, 34.085674>,  <31.380016, 27.539267, 34.038963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776381, 27.565979, 34.085674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015091, -0.807420, 0.589785,
		0.133672, -0.586186, -0.799073,
		0.990911, 0.066779, 0.116776,
		32.073654, 27.586012, 34.120708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609118, 26.795437, 34.119194>,  <31.380016, 27.539267, 34.038963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609118, 26.795437, 34.119194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874998, 27.044758, 34.283958>,  <32.034527, 27.194349, 34.382816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874998, 27.044758, 34.283958>,  <31.609118, 26.795437, 34.119194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874998, 27.044758, 34.283958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216554, -0.688406, 0.692244,
		0.715036, -0.370935, -0.592563,
		0.664701, 0.623301, 0.411908,
		32.074409, 27.231749, 34.407532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503895, 26.902439, 33.395496>,  <31.609118, 26.795437, 34.119194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503895, 26.902439, 33.395496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137354, 26.749908, 33.346695>,  <30.917429, 26.658390, 33.317413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137354, 26.749908, 33.346695>,  <31.503895, 26.902439, 33.395496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137354, 26.749908, 33.346695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059971, 0.432032, -0.899862,
		0.395845, -0.817278, -0.418763,
		-0.916357, -0.381320, -0.122005,
		30.862448, 26.635511, 33.310093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516354, 26.628305, 32.709560>,  <31.503895, 26.902439, 33.395496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516354, 26.628305, 32.709560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127693, 26.632797, 32.804024>,  <30.894497, 26.635492, 32.860703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127693, 26.632797, 32.804024>,  <31.516354, 26.628305, 32.709560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127693, 26.632797, 32.804024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228216, 0.216344, -0.949270,
		-0.061750, -0.976253, -0.207648,
		-0.971650, 0.011229, 0.236156,
		30.836199, 26.636166, 32.874870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164839, 26.240376, 32.132294>,  <31.516354, 26.628305, 32.709560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164839, 26.240376, 32.132294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914711, 26.480965, 32.331173>,  <30.764633, 26.625319, 32.450500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914711, 26.480965, 32.331173>,  <31.164839, 26.240376, 32.132294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914711, 26.480965, 32.331173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466380, 0.222784, -0.856071,
		-0.625670, -0.767202, 0.141203,
		-0.625321, 0.601472, 0.497197,
		30.727114, 26.661406, 32.480331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467346, 26.100988, 31.780464>,  <31.164839, 26.240376, 32.132294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467346, 26.100988, 31.780464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471655, 26.455502, 31.965672>,  <30.474241, 26.668209, 32.076797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471655, 26.455502, 31.965672>,  <30.467346, 26.100988, 31.780464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471655, 26.455502, 31.965672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401079, 0.427994, -0.809911,
		-0.915980, -0.176981, 0.360081,
		0.010773, 0.886284, 0.463017,
		30.474886, 26.721386, 32.104576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878113, 26.457609, 31.604753>,  <30.467346, 26.100988, 31.780464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878113, 26.457609, 31.604753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109261, 26.761280, 31.724564>,  <30.247950, 26.943483, 31.796450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109261, 26.761280, 31.724564>,  <29.878113, 26.457609, 31.604753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109261, 26.761280, 31.724564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261637, 0.519963, -0.813132,
		-0.773056, 0.391516, 0.499100,
		0.577867, 0.759179, 0.299525,
		30.282621, 26.989035, 31.814421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449820, 27.067921, 31.499720>,  <29.878113, 26.457609, 31.604753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449820, 27.067921, 31.499720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824493, 27.202927, 31.537041>,  <30.049297, 27.283930, 31.559433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824493, 27.202927, 31.537041>,  <29.449820, 27.067921, 31.499720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824493, 27.202927, 31.537041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160185, 0.649928, -0.742923,
		-0.311390, 0.680938, 0.662842,
		0.936684, 0.337517, 0.093305,
		30.105499, 27.304182, 31.565033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383163, 27.829855, 31.620615>,  <29.449820, 27.067921, 31.499720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383163, 27.829855, 31.620615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746103, 27.736698, 31.480629>,  <29.963867, 27.680803, 31.396637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746103, 27.736698, 31.480629>,  <29.383163, 27.829855, 31.620615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746103, 27.736698, 31.480629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062501, 0.748516, -0.660165,
		0.415700, 0.620875, 0.664611,
		0.907352, -0.232891, -0.349964,
		30.018309, 27.666830, 31.375639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808064, 28.359236, 31.656227>,  <29.383163, 27.829855, 31.620615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808064, 28.359236, 31.656227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969482, 28.142834, 31.361076>,  <30.066334, 28.012993, 31.183985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969482, 28.142834, 31.361076>,  <29.808064, 28.359236, 31.656227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969482, 28.142834, 31.361076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110779, 0.771638, -0.626341,
		0.908228, 0.334500, 0.251461,
		0.403548, -0.541003, -0.737878,
		30.090548, 27.980534, 31.139713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322371, 28.807709, 31.304462>,  <29.808064, 28.359236, 31.656227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322371, 28.807709, 31.304462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231749, 28.502468, 31.062355>,  <30.177376, 28.319324, 30.917091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231749, 28.502468, 31.062355>,  <30.322371, 28.807709, 31.304462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231749, 28.502468, 31.062355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007215, 0.622725, -0.782408,
		0.973972, -0.172892, -0.146587,
		-0.226555, -0.763100, -0.605269,
		30.163782, 28.273539, 30.880774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847481, 28.907867, 30.746798>,  <30.322371, 28.807709, 31.304462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847481, 28.907867, 30.746798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557508, 28.677097, 30.596260>,  <30.383526, 28.538635, 30.505938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557508, 28.677097, 30.596260>,  <30.847481, 28.907867, 30.746798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557508, 28.677097, 30.596260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053096, 0.591531, -0.804532,
		0.686775, -0.563246, -0.459450,
		-0.724928, -0.576927, -0.376342,
		30.340029, 28.504019, 30.483358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063536, 28.750546, 30.081894>,  <30.847481, 28.907867, 30.746798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063536, 28.750546, 30.081894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672335, 28.667568, 30.073158>,  <30.437614, 28.617783, 30.067917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672335, 28.667568, 30.073158>,  <31.063536, 28.750546, 30.081894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672335, 28.667568, 30.073158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084755, 0.490869, -0.867101,
		0.190592, -0.846177, -0.497653,
		-0.978004, -0.207441, -0.021838,
		30.378933, 28.605335, 30.066607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880453, 28.568489, 29.275785>,  <31.063536, 28.750546, 30.081894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880453, 28.568489, 29.275785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548187, 28.692608, 29.460701>,  <30.348827, 28.767080, 29.571651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548187, 28.692608, 29.460701>,  <30.880453, 28.568489, 29.275785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548187, 28.692608, 29.460701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250467, 0.533289, -0.808003,
		-0.497257, -0.786967, -0.365265,
		-0.830663, 0.310298, 0.462291,
		30.298988, 28.785698, 29.599388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376726, 28.512009, 28.822079>,  <30.880453, 28.568489, 29.275785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376726, 28.512009, 28.822079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231930, 28.764828, 29.096153>,  <30.145052, 28.916519, 29.260597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231930, 28.764828, 29.096153>,  <30.376726, 28.512009, 28.822079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231930, 28.764828, 29.096153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237272, 0.648352, -0.723423,
		-0.901478, -0.424450, -0.084732,
		-0.361993, 0.632046, 0.685185,
		30.123331, 28.954441, 29.301708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782457, 28.684734, 28.619089>,  <30.376726, 28.512009, 28.822079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782457, 28.684734, 28.619089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873404, 28.984009, 28.868416>,  <29.927971, 29.163572, 29.018013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873404, 28.984009, 28.868416>,  <29.782457, 28.684734, 28.619089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873404, 28.984009, 28.868416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376296, 0.657864, -0.652393,
		-0.898169, -0.086222, 0.431113,
		0.227364, 0.748185, 0.623318,
		29.941612, 29.208464, 29.055410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365005, 29.127029, 28.427092>,  <29.782457, 28.684734, 28.619089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365005, 29.127029, 28.427092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602724, 29.342411, 28.666050>,  <29.745356, 29.471640, 28.809425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602724, 29.342411, 28.666050>,  <29.365005, 29.127029, 28.427092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602724, 29.342411, 28.666050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014050, 0.735738, -0.677121,
		-0.804124, 0.410803, 0.429680,
		0.594295, 0.538452, 0.597396,
		29.781013, 29.503946, 28.845268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058748, 29.809080, 28.442173>,  <29.365005, 29.127029, 28.427092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058748, 29.809080, 28.442173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438940, 29.875488, 28.547264>,  <29.667055, 29.915333, 28.610319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438940, 29.875488, 28.547264>,  <29.058748, 29.809080, 28.442173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438940, 29.875488, 28.547264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057092, 0.737707, -0.672702,
		-0.305499, 0.654389, 0.691697,
		0.950479, 0.166020, 0.262729,
		29.724083, 29.925295, 28.626083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103748, 30.561531, 28.516941>,  <29.058748, 29.809080, 28.442173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103748, 30.561531, 28.516941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478205, 30.437359, 28.450882>,  <29.702879, 30.362856, 28.411247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478205, 30.437359, 28.450882>,  <29.103748, 30.561531, 28.516941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478205, 30.437359, 28.450882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114259, 0.712736, -0.692064,
		0.332545, 0.628999, 0.702691,
		0.936140, -0.310431, -0.165148,
		29.759047, 30.344229, 28.401339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484056, 31.198389, 28.512533>,  <29.103748, 30.561531, 28.516941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484056, 31.198389, 28.512533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715462, 30.917324, 28.346844>,  <29.854305, 30.748684, 28.247429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715462, 30.917324, 28.346844>,  <29.484056, 31.198389, 28.512533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715462, 30.917324, 28.346844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198440, 0.613820, -0.764099,
		0.791165, 0.359844, 0.494541,
		0.578515, -0.702665, -0.414225,
		29.889017, 30.706524, 28.222576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094343, 31.555574, 28.344246>,  <29.484056, 31.198389, 28.512533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094343, 31.555574, 28.344246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101791, 31.229733, 28.112358>,  <30.106260, 31.034227, 27.973227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101791, 31.229733, 28.112358>,  <30.094343, 31.555574, 28.344246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101791, 31.229733, 28.112358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317429, 0.554638, -0.769166,
		0.948099, -0.169696, 0.268907,
		0.018622, -0.814605, -0.579718,
		30.107378, 30.985352, 27.938442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784626, 31.553118, 27.993849>,  <30.094343, 31.555574, 28.344246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784626, 31.553118, 27.993849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555681, 31.298149, 27.787510>,  <30.418314, 31.145168, 27.663708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555681, 31.298149, 27.787510>,  <30.784626, 31.553118, 27.993849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555681, 31.298149, 27.787510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424723, 0.307672, -0.851439,
		0.701437, -0.706421, 0.094629,
		-0.572360, -0.637422, -0.515846,
		30.383972, 31.106922, 27.632755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215673, 31.138702, 27.589964>,  <30.784626, 31.553118, 27.993849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215673, 31.138702, 27.589964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878006, 31.069260, 27.387089>,  <30.675406, 31.027594, 27.265364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878006, 31.069260, 27.387089>,  <31.215673, 31.138702, 27.589964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878006, 31.069260, 27.387089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402178, 0.420454, -0.813309,
		0.354443, -0.890550, -0.285115,
		-0.844170, -0.173605, -0.507187,
		30.624756, 31.017178, 27.234932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311031, 30.649977, 26.914871>,  <31.215673, 31.138702, 27.589964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311031, 30.649977, 26.914871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012831, 30.914902, 26.885010>,  <30.833910, 31.073856, 26.867092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012831, 30.914902, 26.885010>,  <31.311031, 30.649977, 26.914871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012831, 30.914902, 26.885010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355793, 0.300744, -0.884853,
		-0.563597, -0.686219, -0.459850,
		-0.745500, 0.662312, -0.074653,
		30.789181, 31.113596, 26.862614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277622, 30.878813, 26.278246>,  <31.311031, 30.649977, 26.914871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277622, 30.878813, 26.278246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025656, 31.157818, 26.414879>,  <30.874475, 31.325220, 26.496859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025656, 31.157818, 26.414879>,  <31.277622, 30.878813, 26.278246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025656, 31.157818, 26.414879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110058, 0.515539, -0.849768,
		-0.768824, -0.497690, -0.401514,
		-0.629918, 0.697512, 0.341585,
		30.836679, 31.367071, 26.517355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971903, 31.032188, 25.727848>,  <31.277622, 30.878813, 26.278246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971903, 31.032188, 25.727848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866741, 31.341476, 25.958675>,  <30.803644, 31.527050, 26.097172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866741, 31.341476, 25.958675>,  <30.971903, 31.032188, 25.727848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866741, 31.341476, 25.958675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000585, 0.597981, -0.801510,
		-0.964821, -0.211059, -0.156761,
		-0.262906, 0.773222, 0.577068,
		30.787868, 31.573442, 26.131796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480207, 31.395041, 25.318312>,  <30.971903, 31.032188, 25.727848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480207, 31.395041, 25.318312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618698, 31.656536, 25.587460>,  <30.701792, 31.813433, 25.748949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618698, 31.656536, 25.587460>,  <30.480207, 31.395041, 25.318312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618698, 31.656536, 25.587460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279199, 0.612931, -0.739164,
		-0.895643, 0.443782, 0.029689,
		0.346225, 0.653738, 0.672871,
		30.722565, 31.852657, 25.789320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255524, 32.058796, 25.126720>,  <30.480207, 31.395041, 25.318312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255524, 32.058796, 25.126720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565294, 32.152023, 25.361988>,  <30.751156, 32.207962, 25.503149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565294, 32.152023, 25.361988>,  <30.255524, 32.058796, 25.126720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565294, 32.152023, 25.361988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463548, 0.423659, -0.778227,
		-0.430566, 0.875323, 0.220052,
		0.774427, 0.233073, 0.588167,
		30.797623, 32.221947, 25.538439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714193, 32.427372, 24.684891>,  <30.255524, 32.058796, 25.126720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714193, 32.427372, 24.684891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020657, 32.664600, 24.783901>,  <31.204535, 32.806938, 24.843307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020657, 32.664600, 24.783901>,  <30.714193, 32.427372, 24.684891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020657, 32.664600, 24.783901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620307, 0.783146, 0.043611,
		-0.167986, -0.186956, 0.967899,
		0.766160, 0.593068, 0.247527,
		31.250504, 32.842522, 24.858160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525288, 32.910679, 25.182308>,  <30.714193, 32.427372, 24.684891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525288, 32.910679, 25.182308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849852, 33.090176, 25.032509>,  <31.044590, 33.197872, 24.942629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849852, 33.090176, 25.032509>,  <30.525288, 32.910679, 25.182308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849852, 33.090176, 25.032509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481459, 0.876441, 0.007032,
		0.331380, 0.174599, 0.927201,
		0.811409, 0.448739, -0.374497,
		31.093275, 33.224796, 24.920160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483284, 33.522171, 25.483345>,  <30.525288, 32.910679, 25.182308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483284, 33.522171, 25.483345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697451, 33.562637, 25.147942>,  <30.825951, 33.586918, 24.946699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697451, 33.562637, 25.147942>,  <30.483284, 33.522171, 25.483345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697451, 33.562637, 25.147942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576523, 0.769300, -0.275318,
		0.617211, 0.630828, 0.470220,
		0.535418, 0.101163, -0.838507,
		30.858076, 33.592987, 24.896389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793322, 34.106197, 25.455652>,  <30.483284, 33.522171, 25.483345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793322, 34.106197, 25.455652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747402, 34.004780, 25.071457>,  <30.719851, 33.943932, 24.840939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747402, 34.004780, 25.071457>,  <30.793322, 34.106197, 25.455652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747402, 34.004780, 25.071457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548485, 0.822319, -0.151513,
		0.828243, 0.509421, -0.233460,
		-0.114794, -0.253538, -0.960490,
		30.712963, 33.928719, 24.783310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487591, 34.678421, 25.122849>,  <30.793322, 34.106197, 25.455652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487591, 34.678421, 25.122849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467718, 34.428848, 24.810890>,  <30.455793, 34.279106, 24.623714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467718, 34.428848, 24.810890>,  <30.487591, 34.678421, 25.122849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467718, 34.428848, 24.810890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469219, 0.703905, -0.533247,
		0.881683, 0.339449, -0.327733,
		-0.049683, -0.623933, -0.779896,
		30.452814, 34.241669, 24.576921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644760, 35.056610, 24.500914>,  <30.487591, 34.678421, 25.122849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644760, 35.056610, 24.500914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406609, 34.743637, 24.427891>,  <30.263718, 34.555855, 24.384077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406609, 34.743637, 24.427891>,  <30.644760, 35.056610, 24.500914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406609, 34.743637, 24.427891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570335, 0.571616, -0.589893,
		0.565904, -0.247089, -0.786574,
		-0.595375, -0.782434, -0.182556,
		30.227995, 34.508907, 24.373123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422421, 35.214993, 23.878294>,  <30.644760, 35.056610, 24.500914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422421, 35.214993, 23.878294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165648, 34.950180, 24.033024>,  <30.011583, 34.791294, 24.125862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165648, 34.950180, 24.033024>,  <30.422421, 35.214993, 23.878294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165648, 34.950180, 24.033024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764246, 0.511615, -0.392656,
		0.062045, -0.547690, -0.834378,
		-0.641934, -0.662032, 0.386827,
		29.973068, 34.751572, 24.149071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871452, 35.034943, 23.332548>,  <30.422421, 35.214993, 23.878294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871452, 35.034943, 23.332548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717674, 34.918205, 23.682869>,  <29.625408, 34.848164, 23.893063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717674, 34.918205, 23.682869>,  <29.871452, 35.034943, 23.332548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717674, 34.918205, 23.682869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873888, 0.420819, -0.243375,
		-0.297528, -0.858918, -0.416818,
		-0.384444, -0.291842, 0.875804,
		29.602341, 34.830654, 23.945610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186039, 34.815479, 23.139032>,  <29.871452, 35.034943, 23.332548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186039, 34.815479, 23.139032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152349, 34.805206, 23.537479>,  <29.132135, 34.799042, 23.776546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152349, 34.805206, 23.537479>,  <29.186039, 34.815479, 23.139032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152349, 34.805206, 23.537479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989995, 0.115729, -0.080720,
		-0.113206, -0.992949, -0.035176,
		-0.084222, -0.025686, 0.996116,
		29.127083, 34.797501, 23.836315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528334, 34.479652, 23.336531>,  <29.186039, 34.815479, 23.139032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528334, 34.479652, 23.336531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618099, 34.659588, 23.682312>,  <28.671959, 34.767551, 23.889780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618099, 34.659588, 23.682312>,  <28.528334, 34.479652, 23.336531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618099, 34.659588, 23.682312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971173, 0.176406, 0.160323,
		-0.080375, -0.875513, 0.476463,
		0.224416, 0.449842, 0.864453,
		28.685425, 34.794540, 23.941648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188463, 34.163719, 23.968746>,  <28.528334, 34.479652, 23.336531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188463, 34.163719, 23.968746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267437, 34.552647, 24.018730>,  <28.314821, 34.786003, 24.048721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267437, 34.552647, 24.018730>,  <28.188463, 34.163719, 23.968746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267437, 34.552647, 24.018730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979200, 0.189522, 0.072450,
		0.046761, -0.136667, 0.989513,
		0.197436, 0.972319, 0.124962,
		28.326668, 34.844341, 24.056219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649225, 34.335880, 24.565752>,  <28.188463, 34.163719, 23.968746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649225, 34.335880, 24.565752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791319, 34.673515, 24.405090>,  <27.876575, 34.876095, 24.308693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791319, 34.673515, 24.405090>,  <27.649225, 34.335880, 24.565752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791319, 34.673515, 24.405090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910610, 0.409549, 0.055312,
		0.211186, 0.346103, 0.914119,
		0.355233, 0.844087, -0.401656,
		27.897888, 34.926743, 24.284594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435493, 34.794613, 24.994501>,  <27.649225, 34.335880, 24.565752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435493, 34.794613, 24.994501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490452, 34.988014, 24.648705>,  <27.523428, 35.104053, 24.441227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490452, 34.988014, 24.648705>,  <27.435493, 34.794613, 24.994501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490452, 34.988014, 24.648705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982046, 0.180385, -0.055193,
		0.129255, 0.856555, 0.499607,
		0.137398, 0.483503, -0.864492,
		27.531672, 35.133064, 24.389357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052891, 35.398956, 24.972349>,  <27.435493, 34.794613, 24.994501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052891, 35.398956, 24.972349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085295, 35.372852, 24.574520>,  <27.104736, 35.357189, 24.335823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085295, 35.372852, 24.574520>,  <27.052891, 35.398956, 24.972349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085295, 35.372852, 24.574520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996349, 0.021680, -0.082576,
		0.026951, 0.997633, -0.063266,
		0.081008, -0.065260, -0.994575,
		27.109598, 35.353275, 24.276148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529339, 35.912899, 24.693071>,  <27.052891, 35.398956, 24.972349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529339, 35.912899, 24.693071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621326, 35.625420, 24.430595>,  <26.676519, 35.452930, 24.273109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621326, 35.625420, 24.430595>,  <26.529339, 35.912899, 24.693071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621326, 35.625420, 24.430595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972357, -0.197698, -0.124245,
		-0.040434, 0.666625, -0.744296,
		0.229970, -0.718698, -0.656191,
		26.690317, 35.409809, 24.233738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161083, 36.008202, 24.127096>,  <26.529339, 35.912899, 24.693071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161083, 36.008202, 24.127096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261192, 35.623447, 24.083031>,  <26.321257, 35.392593, 24.056591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261192, 35.623447, 24.083031>,  <26.161083, 36.008202, 24.127096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261192, 35.623447, 24.083031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954583, -0.226154, -0.193972,
		0.161665, 0.153708, -0.974802,
		0.250271, -0.961888, -0.110166,
		26.336273, 35.334881, 24.049980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580061, 35.872532, 23.661728>,  <26.161083, 36.008202, 24.127096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580061, 35.872532, 23.661728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412327, 35.974201, 23.313118>,  <26.311686, 36.035202, 23.103952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412327, 35.974201, 23.313118>,  <26.580061, 35.872532, 23.661728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412327, 35.974201, 23.313118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314260, 0.860012, 0.402021,
		0.851703, 0.442467, -0.280758,
		-0.419336, 0.254172, -0.871524,
		26.286526, 36.050453, 23.051661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820425, 36.576855, 23.483000>,  <26.580061, 35.872532, 23.661728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820425, 36.576855, 23.483000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448467, 36.476742, 23.375183>,  <26.225292, 36.416676, 23.310493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448467, 36.476742, 23.375183>,  <26.820425, 36.576855, 23.483000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448467, 36.476742, 23.375183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354922, 0.802911, 0.478921,
		0.096556, 0.541014, -0.835453,
		-0.929897, -0.250278, -0.269543,
		26.169498, 36.401657, 23.294321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533295, 37.199986, 23.236710>,  <26.820425, 36.576855, 23.483000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533295, 37.199986, 23.236710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259478, 36.947037, 23.381763>,  <26.095188, 36.795265, 23.468796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259478, 36.947037, 23.381763>,  <26.533295, 37.199986, 23.236710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259478, 36.947037, 23.381763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440115, 0.755088, 0.485944,
		-0.581121, 0.173047, -0.795206,
		-0.684542, -0.632374, 0.362636,
		26.054115, 36.757324, 23.490555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822870, 37.476265, 23.159819>,  <26.533295, 37.199986, 23.236710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822870, 37.476265, 23.159819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857521, 37.222927, 23.467419>,  <25.878311, 37.070923, 23.651979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857521, 37.222927, 23.467419>,  <25.822870, 37.476265, 23.159819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857521, 37.222927, 23.467419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620814, 0.569384, 0.538879,
		-0.779157, -0.524090, -0.343868,
		0.086628, -0.633349, 0.769002,
		25.883509, 37.032921, 23.698120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.269566, 37.338684, 23.413486>,  <25.822870, 37.476265, 23.159819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.269566, 37.338684, 23.413486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448690, 37.243336, 23.758194>,  <25.556166, 37.186127, 23.965019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448690, 37.243336, 23.758194>,  <25.269566, 37.338684, 23.413486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.448690, 37.243336, 23.758194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684084, 0.529285, 0.501883,
		-0.575756, -0.814271, 0.073953,
		0.447810, -0.238372, 0.861768,
		25.583033, 37.171825, 24.016724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539570, 37.561646, 23.256313>,  <25.269566, 37.338684, 23.413486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.539570, 37.561646, 23.256313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.198153, 37.641899, 23.063976>,  <23.993301, 37.690052, 22.948574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.198153, 37.641899, 23.063976>,  <24.539570, 37.561646, 23.256313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.198153, 37.641899, 23.063976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144201, -0.977802, -0.152018,
		-0.500669, -0.060416, 0.863528,
		-0.853544, 0.200632, -0.480843,
		23.942089, 37.702087, 22.919724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.035252, 37.128735, 23.576496>,  <24.539570, 37.561646, 23.256313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.035252, 37.128735, 23.576496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.899616, 37.246758, 23.219181>,  <23.818235, 37.317574, 23.004793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.899616, 37.246758, 23.219181>,  <24.035252, 37.128735, 23.576496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.899616, 37.246758, 23.219181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296183, -0.934737, -0.196321,
		-0.892913, 0.198006, 0.404350,
		-0.339088, 0.295059, -0.893285,
		23.797890, 37.335274, 22.951195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.568865, 36.666325, 23.438244>,  <24.035252, 37.128735, 23.576496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.568865, 36.666325, 23.438244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.622181, 36.843719, 23.083717>,  <23.654171, 36.950157, 22.871002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.622181, 36.843719, 23.083717>,  <23.568865, 36.666325, 23.438244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.622181, 36.843719, 23.083717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161588, -0.872603, -0.460926,
		-0.977815, 0.204655, -0.044649,
		0.133292, 0.443486, -0.886315,
		23.662169, 36.976765, 22.817823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.986578, 36.478672, 23.069141>,  <23.568865, 36.666325, 23.438244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.986578, 36.478672, 23.069141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.262304, 36.561272, 22.791378>,  <23.427740, 36.610832, 22.624720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.262304, 36.561272, 22.791378>,  <22.986578, 36.478672, 23.069141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.262304, 36.561272, 22.791378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112007, -0.916615, -0.383759,
		-0.715752, 0.342309, -0.608706,
		0.689314, 0.206497, -0.694410,
		23.469099, 36.623222, 22.583055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.818691, 36.086590, 22.483391>,  <22.986578, 36.478672, 23.069141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.818691, 36.086590, 22.483391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.201334, 36.174702, 22.407093>,  <23.430920, 36.227570, 22.361315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.201334, 36.174702, 22.407093>,  <22.818691, 36.086590, 22.483391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.201334, 36.174702, 22.407093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129056, -0.907195, -0.400427,
		-0.261248, 0.358434, -0.896256,
		0.956605, 0.220278, -0.190745,
		23.488316, 36.240784, 22.349869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.870108, 35.955761, 21.735626>,  <22.818691, 36.086590, 22.483391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.870108, 35.955761, 21.735626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.237322, 35.942917, 21.893703>,  <23.457651, 35.935211, 21.988550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.237322, 35.942917, 21.893703>,  <22.870108, 35.955761, 21.735626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.237322, 35.942917, 21.893703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151058, -0.893221, -0.423482,
		0.366591, 0.448470, -0.815160,
		0.918037, -0.032108, 0.395192,
		23.512733, 35.933285, 22.012260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.511009, 35.825165, 21.179646>,  <22.870108, 35.955761, 21.735626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.511009, 35.825165, 21.179646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.645115, 35.717854, 21.540894>,  <23.725578, 35.653469, 21.757643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.645115, 35.717854, 21.540894>,  <23.511009, 35.825165, 21.179646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.645115, 35.717854, 21.540894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099622, -0.943131, -0.317143,
		0.936841, 0.196298, -0.289474,
		0.335266, -0.268275, 0.903120,
		23.745695, 35.637371, 21.811829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.190697, 35.585999, 21.130466>,  <23.511009, 35.825165, 21.179646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.190697, 35.585999, 21.130466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.058126, 35.407856, 21.463169>,  <23.978584, 35.300972, 21.662790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.058126, 35.407856, 21.463169>,  <24.190697, 35.585999, 21.130466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.058126, 35.407856, 21.463169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031245, -0.886279, -0.462097,
		0.942963, -0.127164, 0.307652,
		-0.331427, -0.445354, 0.831755,
		23.958698, 35.274250, 21.712696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.501316, 34.958557, 21.083418>,  <24.190697, 35.585999, 21.130466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.501316, 34.958557, 21.083418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216082, 34.901592, 21.358002>,  <24.044941, 34.867413, 21.522753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216082, 34.901592, 21.358002>,  <24.501316, 34.958557, 21.083418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.216082, 34.901592, 21.358002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184954, -0.906249, -0.380138,
		0.676239, -0.398035, 0.619894,
		-0.713087, -0.142412, 0.686459,
		24.002155, 34.858868, 21.563940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.650988, 34.266930, 21.351826>,  <24.501316, 34.958557, 21.083418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.650988, 34.266930, 21.351826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.269472, 34.339314, 21.447777>,  <24.040564, 34.382744, 21.505346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.269472, 34.339314, 21.447777>,  <24.650988, 34.266930, 21.351826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.269472, 34.339314, 21.447777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236063, -0.945186, -0.225606,
		0.185903, -0.271806, 0.944225,
		-0.953790, 0.180956, 0.239877,
		23.983335, 34.393600, 21.519739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.449181, 33.826214, 21.800098>,  <24.650988, 34.266930, 21.351826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.449181, 33.826214, 21.800098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.097561, 33.930733, 21.640598>,  <23.886589, 33.993443, 21.544899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.097561, 33.930733, 21.640598>,  <24.449181, 33.826214, 21.800098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.097561, 33.930733, 21.640598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150064, -0.945559, -0.288789,
		-0.452499, -0.194021, 0.870403,
		-0.879048, 0.261293, -0.398749,
		23.833847, 34.009121, 21.520973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.899624, 33.290398, 22.041847>,  <24.449181, 33.826214, 21.800098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.899624, 33.290398, 22.041847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.809614, 33.471645, 21.696815>,  <23.755608, 33.580395, 21.489796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.809614, 33.471645, 21.696815>,  <23.899624, 33.290398, 22.041847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.809614, 33.471645, 21.696815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093973, -0.891252, -0.443666,
		-0.969811, -0.018776, 0.243133,
		-0.225023, 0.453120, -0.862581,
		23.742107, 33.607582, 21.438042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.476841, 32.755779, 21.631287>,  <23.899624, 33.290398, 22.041847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.476841, 32.755779, 21.631287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.581850, 33.028324, 21.357986>,  <23.644855, 33.191849, 21.194006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.581850, 33.028324, 21.357986>,  <23.476841, 32.755779, 21.631287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.581850, 33.028324, 21.357986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071635, -0.719895, -0.690376,
		-0.962263, 0.132296, -0.237799,
		0.262525, 0.681358, -0.683251,
		23.660608, 33.232731, 21.153011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.965929, 32.625027, 21.153860>,  <23.476841, 32.755779, 21.631287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.965929, 32.625027, 21.153860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.281681, 32.804230, 20.985973>,  <23.471132, 32.911751, 20.885241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.281681, 32.804230, 20.985973>,  <22.965929, 32.625027, 21.153860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.281681, 32.804230, 20.985973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139641, -0.534729, -0.833406,
		-0.597811, 0.716485, -0.359544,
		0.789382, 0.448012, -0.419717,
		23.518496, 32.938633, 20.860058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.752655, 32.710667, 20.453421>,  <22.965929, 32.625027, 21.153860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.752655, 32.710667, 20.453421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.149969, 32.749958, 20.428963>,  <23.388357, 32.773533, 20.414288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.149969, 32.749958, 20.428963>,  <22.752655, 32.710667, 20.453421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.149969, 32.749958, 20.428963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000469, -0.525058, -0.851066,
		-0.115702, 0.845379, -0.521485,
		0.993284, 0.098225, -0.061147,
		23.447954, 32.779427, 20.410618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.821825, 32.985645, 19.801102>,  <22.752655, 32.710667, 20.453421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.821825, 32.985645, 19.801102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.175547, 32.824368, 19.895287>,  <23.387779, 32.727600, 19.951797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.175547, 32.824368, 19.895287>,  <22.821825, 32.985645, 19.801102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.175547, 32.824368, 19.895287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004417, -0.497045, -0.867713,
		0.466894, 0.768361, -0.437757,
		0.884302, -0.403197, 0.235461,
		23.440838, 32.703407, 19.965925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.286118, 33.157375, 19.243387>,  <22.821825, 32.985645, 19.801102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.286118, 33.157375, 19.243387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.442242, 32.842632, 19.434601>,  <23.535915, 32.653786, 19.549330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.442242, 32.842632, 19.434601>,  <23.286118, 33.157375, 19.243387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.442242, 32.842632, 19.434601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117330, -0.472474, -0.873500,
		0.913177, 0.397024, -0.092090,
		0.390310, -0.786855, 0.478035,
		23.559334, 32.606575, 19.578011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.716579, 32.862885, 18.826557>,  <23.286118, 33.157375, 19.243387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.716579, 32.862885, 18.826557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.681728, 32.557037, 19.081985>,  <23.660818, 32.373531, 19.235243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.681728, 32.557037, 19.081985>,  <23.716579, 32.862885, 18.826557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.681728, 32.557037, 19.081985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023304, -0.642399, -0.766016,
		0.995925, -0.051860, 0.073789,
		-0.087128, -0.764614, 0.638573,
		23.655590, 32.327652, 19.273558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.164749, 32.305569, 18.555311>,  <23.716579, 32.862885, 18.826557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.164749, 32.305569, 18.555311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.922367, 32.127647, 18.819122>,  <23.776937, 32.020897, 18.977409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.922367, 32.127647, 18.819122>,  <24.164749, 32.305569, 18.555311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.922367, 32.127647, 18.819122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004928, -0.826956, -0.562245,
		0.795485, -0.343944, 0.498905,
		-0.605953, -0.444799, 0.659526,
		23.740582, 31.994207, 19.016979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.343399, 31.598291, 18.588955>,  <24.164749, 32.305569, 18.555311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.343399, 31.598291, 18.588955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.990355, 31.556789, 18.772358>,  <23.778528, 31.531887, 18.882401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.990355, 31.556789, 18.772358>,  <24.343399, 31.598291, 18.588955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.990355, 31.556789, 18.772358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135758, -0.877528, -0.459906,
		0.450073, -0.468165, 0.760431,
		-0.882612, -0.103756, 0.458509,
		23.725571, 31.525663, 18.909910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.314442, 30.964149, 18.875248>,  <24.343399, 31.598291, 18.588955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.314442, 30.964149, 18.875248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.957684, 31.107742, 18.765224>,  <23.743629, 31.193897, 18.699211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.957684, 31.107742, 18.765224>,  <24.314442, 30.964149, 18.875248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.957684, 31.107742, 18.765224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059336, -0.695838, -0.715744,
		-0.448335, -0.622047, 0.641914,
		-0.891894, 0.358981, -0.275058,
		23.690115, 31.215437, 18.682707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.931204, 30.428392, 18.700626>,  <24.314442, 30.964149, 18.875248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.931204, 30.428392, 18.700626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.761379, 30.738506, 18.513573>,  <23.659485, 30.924574, 18.401340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.761379, 30.738506, 18.513573>,  <23.931204, 30.428392, 18.700626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.761379, 30.738506, 18.513573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055268, -0.537725, -0.841307,
		-0.903711, -0.331341, 0.271145,
		-0.424561, 0.775284, -0.467635,
		23.634010, 30.971092, 18.373281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.212835, 30.414375, 18.441761>,  <23.931204, 30.428392, 18.700626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.212835, 30.414375, 18.441761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.455126, 30.639942, 18.217228>,  <23.600500, 30.775282, 18.082508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.455126, 30.639942, 18.217228>,  <23.212835, 30.414375, 18.441761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.455126, 30.639942, 18.217228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306027, -0.486101, -0.818567,
		-0.734467, 0.667611, -0.121872,
		0.605727, 0.563915, -0.561333,
		23.636845, 30.809116, 18.048828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.784882, 30.901005, 17.912853>,  <23.212835, 30.414375, 18.441761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.784882, 30.901005, 17.912853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.148924, 30.756321, 17.831985>,  <23.367350, 30.669510, 17.783464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.148924, 30.756321, 17.831985>,  <22.784882, 30.901005, 17.912853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.148924, 30.756321, 17.831985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387935, -0.572254, -0.722517,
		0.145651, 0.735996, -0.661132,
		0.910106, -0.361712, -0.202169,
		23.421955, 30.647808, 17.771336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.134468, 31.063673, 17.210114>,  <22.784882, 30.901005, 17.912853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.134468, 31.063673, 17.210114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.226124, 30.700294, 17.349957>,  <23.281116, 30.482267, 17.433863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.226124, 30.700294, 17.349957>,  <23.134468, 31.063673, 17.210114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.226124, 30.700294, 17.349957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331346, -0.410507, -0.849526,
		0.915262, 0.078820, -0.395073,
		0.229139, -0.908444, 0.349605,
		23.294865, 30.427761, 17.454838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.444118, 30.795124, 16.555510>,  <23.134468, 31.063673, 17.210114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.444118, 30.795124, 16.555510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.257750, 30.545952, 16.806866>,  <23.145929, 30.396448, 16.957680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.257750, 30.545952, 16.806866>,  <23.444118, 30.795124, 16.555510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.257750, 30.545952, 16.806866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580821, -0.320439, -0.748308,
		0.667506, -0.713634, -0.212513,
		-0.465921, -0.622933, 0.628389,
		23.117973, 30.359072, 16.995382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.036819, 31.038671, 15.984653>,  <23.444118, 30.795124, 16.555510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.036819, 31.038671, 15.984653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.904903, 31.358139, 15.783311>,  <22.825754, 31.549820, 15.662506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.904903, 31.358139, 15.783311>,  <23.036819, 31.038671, 15.984653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.904903, 31.358139, 15.783311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683478, 0.165809, 0.710890,
		0.651227, 0.578475, 0.491192,
		-0.329788, 0.798670, -0.503354,
		22.805967, 31.597740, 15.632304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.048822, 31.664543, 16.416306>,  <23.036819, 31.038671, 15.984653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.048822, 31.664543, 16.416306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.771107, 31.666779, 16.128437>,  <22.604477, 31.668119, 15.955715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.771107, 31.666779, 16.128437>,  <23.048822, 31.664543, 16.416306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.771107, 31.666779, 16.128437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668294, 0.366120, 0.647565,
		0.267104, 0.930551, -0.250460,
		-0.694290, 0.005587, -0.719674,
		22.562820, 31.668455, 15.912535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.800695, 32.480755, 16.306643>,  <23.048822, 31.664543, 16.416306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.800695, 32.480755, 16.306643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.545042, 32.173275, 16.296799>,  <22.391649, 31.988787, 16.290892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.545042, 32.173275, 16.296799>,  <22.800695, 32.480755, 16.306643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.545042, 32.173275, 16.296799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533054, 0.419688, 0.734653,
		-0.554400, 0.482661, -0.677997,
		-0.639136, -0.768700, -0.024610,
		22.353302, 31.942665, 16.289415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.026381, 32.746181, 16.071672>,  <22.800695, 32.480755, 16.306643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.026381, 32.746181, 16.071672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.052759, 32.444504, 16.333004>,  <22.068586, 32.263496, 16.489803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.052759, 32.444504, 16.333004>,  <22.026381, 32.746181, 16.071672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.052759, 32.444504, 16.333004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339041, 0.598864, 0.725543,
		-0.938457, -0.269354, -0.216209,
		0.065948, -0.754195, 0.653330,
		22.072544, 32.218246, 16.529003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.476400, 32.874416, 16.517082>,  <22.026381, 32.746181, 16.071672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.476400, 32.874416, 16.517082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.739050, 32.660160, 16.729473>,  <21.896641, 32.531609, 16.856907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.739050, 32.660160, 16.729473>,  <21.476400, 32.874416, 16.517082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.739050, 32.660160, 16.729473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251867, 0.507867, 0.823792,
		-0.710919, -0.674659, 0.198569,
		0.656626, -0.535636, 0.530977,
		21.936037, 32.499470, 16.888765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.159233, 32.514122, 17.124840>,  <21.476400, 32.874416, 16.517082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.159233, 32.514122, 17.124840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.536966, 32.581383, 17.237946>,  <21.763607, 32.621738, 17.305809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.536966, 32.581383, 17.237946>,  <21.159233, 32.514122, 17.124840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.536966, 32.581383, 17.237946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327857, 0.409910, 0.851166,
		0.027219, -0.896492, 0.442223,
		0.944335, 0.168153, 0.282764,
		21.820267, 32.631828, 17.322775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.259962, 32.319801, 17.912613>,  <21.159233, 32.514122, 17.124840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.259962, 32.319801, 17.912613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.527641, 32.597786, 17.807384>,  <21.688250, 32.764576, 17.744247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.527641, 32.597786, 17.807384>,  <21.259962, 32.319801, 17.912613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.527641, 32.597786, 17.807384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118795, 0.449526, 0.885333,
		0.733526, -0.561213, 0.383380,
		0.669200, 0.694958, -0.263070,
		21.728401, 32.806274, 17.728464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.534382, 32.466919, 18.597017>,  <21.259962, 32.319801, 17.912613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.534382, 32.466919, 18.597017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.623222, 32.778412, 18.362328>,  <21.676527, 32.965309, 18.221514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.623222, 32.778412, 18.362328>,  <21.534382, 32.466919, 18.597017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.623222, 32.778412, 18.362328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083290, 0.584400, 0.807180,
		0.971459, -0.228145, 0.064936,
		0.222103, 0.778734, -0.586723,
		21.689854, 33.012032, 18.186310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.106272, 32.830284, 18.971151>,  <21.534382, 32.466919, 18.597017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.106272, 32.830284, 18.971151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.939510, 33.067989, 18.696037>,  <21.839455, 33.210613, 18.530968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.939510, 33.067989, 18.696037>,  <22.106272, 32.830284, 18.971151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.939510, 33.067989, 18.696037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125719, 0.711709, 0.691133,
		0.900216, 0.374602, -0.222003,
		-0.416902, 0.594258, -0.687786,
		21.814440, 33.246265, 18.489702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.525229, 33.396435, 19.011360>,  <22.106272, 32.830284, 18.971151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.525229, 33.396435, 19.011360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.167671, 33.510498, 18.873001>,  <21.953136, 33.578934, 18.789986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.167671, 33.510498, 18.873001>,  <22.525229, 33.396435, 19.011360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.167671, 33.510498, 18.873001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013470, 0.754168, 0.656543,
		0.448081, 0.591537, -0.670303,
		-0.893891, 0.285156, -0.345897,
		21.899504, 33.596046, 18.769232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.528002, 34.145161, 19.087076>,  <22.525229, 33.396435, 19.011360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.528002, 34.145161, 19.087076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.143805, 34.061470, 19.013668>,  <21.913286, 34.011253, 18.969624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.143805, 34.061470, 19.013668>,  <22.528002, 34.145161, 19.087076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.143805, 34.061470, 19.013668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277509, 0.669971, 0.688569,
		-0.021114, 0.712293, -0.701564,
		-0.960491, -0.209229, -0.183522,
		21.855658, 33.998703, 18.958611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.169142, 34.722343, 18.898415>,  <22.528002, 34.145161, 19.087076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.169142, 34.722343, 18.898415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.877012, 34.488140, 19.039158>,  <21.701735, 34.347618, 19.123604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.877012, 34.488140, 19.039158>,  <22.169142, 34.722343, 18.898415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.877012, 34.488140, 19.039158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284880, 0.729220, 0.622159,
		-0.620864, 0.354139, -0.699366,
		-0.730323, -0.585512, 0.351859,
		21.657915, 34.312485, 19.144716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.595091, 35.253441, 18.825447>,  <22.169142, 34.722343, 18.898415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.595091, 35.253441, 18.825447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.513386, 34.949451, 19.072254>,  <21.464363, 34.767056, 19.220339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.513386, 34.949451, 19.072254>,  <21.595091, 35.253441, 18.825447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.513386, 34.949451, 19.072254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283491, 0.649222, 0.705793,
		-0.936969, -0.030753, -0.348058,
		-0.204262, -0.759977, 0.617018,
		21.452106, 34.721458, 19.257360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.950930, 35.510155, 19.006449>,  <21.595091, 35.253441, 18.825447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.950930, 35.510155, 19.006449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.077156, 35.220379, 19.251595>,  <21.152893, 35.046513, 19.398682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.077156, 35.220379, 19.251595>,  <20.950930, 35.510155, 19.006449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.077156, 35.220379, 19.251595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397735, 0.485412, 0.778577,
		-0.861524, -0.489453, -0.134954,
		0.315568, -0.724438, 0.612867,
		21.171827, 35.003048, 19.435455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.373173, 35.234573, 19.469597>,  <20.950930, 35.510155, 19.006449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.373173, 35.234573, 19.469597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.720091, 35.164726, 19.656063>,  <20.928242, 35.122818, 19.767942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.720091, 35.164726, 19.656063>,  <20.373173, 35.234573, 19.469597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.720091, 35.164726, 19.656063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320918, 0.519752, 0.791751,
		-0.380543, -0.836282, 0.394740,
		0.867294, -0.174617, 0.466166,
		20.980280, 35.112343, 19.795914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.136942, 35.118881, 20.142647>,  <20.373173, 35.234573, 19.469597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.136942, 35.118881, 20.142647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.525856, 35.207882, 20.171352>,  <20.759205, 35.261284, 20.188576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.525856, 35.207882, 20.171352>,  <20.136942, 35.118881, 20.142647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.525856, 35.207882, 20.171352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202943, 0.650862, 0.731569,
		0.116068, -0.725859, 0.677980,
		0.972287, 0.222503, 0.071764,
		20.817543, 35.274632, 20.192881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.219587, 35.209435, 20.835711>,  <20.136942, 35.118881, 20.142647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.219587, 35.209435, 20.835711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536558, 35.382660, 20.663891>,  <20.726740, 35.486595, 20.560799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536558, 35.382660, 20.663891>,  <20.219587, 35.209435, 20.835711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.536558, 35.382660, 20.663891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095103, 0.607882, 0.788311,
		0.602491, -0.665540, 0.440525,
		0.792440, 0.433055, -0.429538,
		20.774286, 35.512581, 20.535027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.697866, 35.355778, 21.400965>,  <20.219587, 35.209435, 20.835711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.697866, 35.355778, 21.400965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.774761, 35.620930, 21.111515>,  <20.820898, 35.780022, 20.937845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.774761, 35.620930, 21.111515>,  <20.697866, 35.355778, 21.400965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.774761, 35.620930, 21.111515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145541, 0.709963, 0.689036,
		0.970496, -0.237776, 0.040006,
		0.192239, 0.662884, -0.723622,
		20.832434, 35.819794, 20.894428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.282944, 35.813255, 21.638498>,  <20.697866, 35.355778, 21.400965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.282944, 35.813255, 21.638498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.084343, 35.996574, 21.343624>,  <20.965181, 36.106567, 21.166698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.084343, 35.996574, 21.343624>,  <21.282944, 35.813255, 21.638498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.084343, 35.996574, 21.343624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199399, 0.886766, 0.416996,
		0.844822, 0.060046, -0.531667,
		-0.496504, 0.458301, -0.737186,
		20.935392, 36.134064, 21.122469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.659908, 36.323906, 21.703037>,  <21.282944, 35.813255, 21.638498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.659908, 36.323906, 21.703037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.384529, 36.454422, 21.443939>,  <21.219301, 36.532730, 21.288481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.384529, 36.454422, 21.443939>,  <21.659908, 36.323906, 21.703037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.384529, 36.454422, 21.443939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111310, 0.930044, 0.350183,
		0.716694, 0.168982, -0.676606,
		-0.688448, 0.326287, -0.647747,
		21.177996, 36.552307, 21.249615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.918427, 36.897835, 21.264830>,  <21.659908, 36.323906, 21.703037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.918427, 36.897835, 21.264830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.520216, 36.932217, 21.249119>,  <21.281290, 36.952847, 21.239693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.520216, 36.932217, 21.249119>,  <21.918427, 36.897835, 21.264830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.520216, 36.932217, 21.249119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069119, 0.945698, 0.317612,
		0.064444, 0.313475, -0.947407,
		-0.995525, 0.085952, -0.039278,
		21.221558, 36.958004, 21.237335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.673664, 37.513348, 20.811033>,  <21.918427, 36.897835, 21.264830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.673664, 37.513348, 20.811033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.385426, 37.419476, 21.072006>,  <21.212482, 37.363152, 21.228590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.385426, 37.419476, 21.072006>,  <21.673664, 37.513348, 20.811033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.385426, 37.419476, 21.072006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074115, 0.961655, 0.264057,
		-0.689385, 0.141923, -0.710356,
		-0.720594, -0.234685, 0.652432,
		21.169247, 37.349072, 21.267736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.175970, 38.101116, 20.871229>,  <21.673664, 37.513348, 20.811033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.175970, 38.101116, 20.871229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.114100, 37.903320, 21.213352>,  <21.076977, 37.784641, 21.418627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.114100, 37.903320, 21.213352>,  <21.175970, 38.101116, 20.871229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.114100, 37.903320, 21.213352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120543, 0.868706, 0.480438,
		-0.980584, -0.028789, -0.193976,
		-0.154677, -0.494492, 0.855309,
		21.067696, 37.754974, 21.469944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.808601, 38.512161, 21.246044>,  <21.175970, 38.101116, 20.871229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.808601, 38.512161, 21.246044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.938892, 38.265850, 21.533020>,  <21.017067, 38.118065, 21.705206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.938892, 38.265850, 21.533020>,  <20.808601, 38.512161, 21.246044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.938892, 38.265850, 21.533020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081304, 0.774255, 0.627629,
		-0.941961, -0.146105, 0.302261,
		0.325727, -0.615777, 0.717440,
		21.036610, 38.081116, 21.748253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.453365, 38.784351, 21.762798>,  <20.808601, 38.512161, 21.246044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.453365, 38.784351, 21.762798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.752054, 38.574772, 21.926697>,  <20.931267, 38.449024, 22.025036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.752054, 38.574772, 21.926697>,  <20.453365, 38.784351, 21.762798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.752054, 38.574772, 21.926697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173441, 0.748097, 0.640522,
		-0.642127, -0.407224, 0.649493,
		0.746720, -0.523946, 0.409744,
		20.976070, 38.417587, 22.049620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.400307, 38.754517, 22.628582>,  <20.453365, 38.784351, 21.762798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.400307, 38.754517, 22.628582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783209, 38.716381, 22.519352>,  <21.012951, 38.693501, 22.453814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783209, 38.716381, 22.519352>,  <20.400307, 38.754517, 22.628582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783209, 38.716381, 22.519352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258801, 0.703919, 0.661453,
		0.129159, -0.703852, 0.698506,
		0.957257, -0.095341, -0.273075,
		21.070385, 38.687778, 22.437429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.114208, 38.132542, 22.645224>,  <20.400307, 38.754517, 22.628582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.114208, 38.132542, 22.645224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.902033, 37.804497, 22.559387>,  <19.774727, 37.607670, 22.507885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.902033, 37.804497, 22.559387>,  <20.114208, 38.132542, 22.645224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.902033, 37.804497, 22.559387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701690, 0.282721, 0.653988,
		-0.475674, 0.497478, -0.725431,
		-0.530438, -0.820113, -0.214593,
		19.742901, 37.558464, 22.495010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.450476, 38.286892, 22.324509>,  <20.114208, 38.132542, 22.645224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.450476, 38.286892, 22.324509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.479519, 37.977318, 22.576145>,  <19.496944, 37.791573, 22.727127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.479519, 37.977318, 22.576145>,  <19.450476, 38.286892, 22.324509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.479519, 37.977318, 22.576145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710064, 0.402829, 0.577528,
		-0.700384, -0.488628, -0.520293,
		0.072607, -0.773933, 0.629092,
		19.501301, 37.745136, 22.764874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.819912, 37.855156, 22.373379>,  <19.450476, 38.286892, 22.324509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.819912, 37.855156, 22.373379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.010576, 37.837826, 22.724586>,  <19.124975, 37.827427, 22.935310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.010576, 37.837826, 22.724586>,  <18.819912, 37.855156, 22.373379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.010576, 37.837826, 22.724586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813342, 0.357257, 0.459175,
		-0.333572, -0.933001, 0.135052,
		0.476659, -0.043324, 0.878020,
		19.153574, 37.824829, 22.987993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.474886, 37.346207, 22.803509>,  <18.819912, 37.855156, 22.373379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.474886, 37.346207, 22.803509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.667612, 37.601711, 23.043453>,  <18.783247, 37.755016, 23.187420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.667612, 37.601711, 23.043453>,  <18.474886, 37.346207, 22.803509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.667612, 37.601711, 23.043453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843271, 0.151894, 0.515580,
		0.238220, -0.754258, 0.611838,
		0.481815, 0.638766, 0.599860,
		18.812157, 37.793339, 23.223412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.468042, 37.138203, 23.448414>,  <18.474886, 37.346207, 22.803509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.468042, 37.138203, 23.448414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.483231, 37.537678, 23.462139>,  <18.492344, 37.777363, 23.470373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.483231, 37.537678, 23.462139>,  <18.468042, 37.138203, 23.448414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.483231, 37.537678, 23.462139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829000, 0.012311, 0.559113,
		0.557958, -0.049675, 0.828381,
		0.037972, 0.998689, 0.034312,
		18.494621, 37.837284, 23.472433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.417755, 27.012199, 25.836040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.807096, 27.036903, 25.747707>,  <32.040703, 27.051725, 25.694708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.807096, 27.036903, 25.747707>,  <31.417755, 27.012199, 25.836040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807096, 27.036903, 25.747707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188024, 0.766221, -0.614454,
		0.131261, 0.639603, 0.757416,
		0.973354, 0.061758, -0.220835,
		32.099102, 27.055431, 25.681458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650421, 27.668314, 26.066839>,  <31.417755, 27.012199, 25.836040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650421, 27.668314, 26.066839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.884295, 27.529942, 25.773315>,  <32.024620, 27.446918, 25.597200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.884295, 27.529942, 25.773315>,  <31.650421, 27.668314, 26.066839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884295, 27.529942, 25.773315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309374, 0.741100, -0.595868,
		0.749956, 0.575416, 0.326287,
		0.584683, -0.345930, -0.733811,
		32.059700, 27.426163, 25.553173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977169, 28.335064, 25.713346>,  <31.650421, 27.668314, 26.066839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977169, 28.335064, 25.713346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.067375, 28.052387, 25.445099>,  <32.121498, 27.882782, 25.284151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.067375, 28.052387, 25.445099>,  <31.977169, 28.335064, 25.713346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067375, 28.052387, 25.445099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064557, 0.675998, -0.734070,
		0.972098, 0.208837, 0.106825,
		0.225515, -0.706692, -0.670619,
		32.135029, 27.840380, 25.243914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627319, 28.533998, 25.347446>,  <31.977169, 28.335064, 25.713346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627319, 28.533998, 25.347446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.428574, 28.267792, 25.124660>,  <32.309326, 28.108067, 24.990988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.428574, 28.267792, 25.124660>,  <32.627319, 28.533998, 25.347446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428574, 28.267792, 25.124660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033350, 0.626676, -0.778566,
		0.867189, -0.405414, -0.289176,
		-0.496861, -0.665519, -0.556967,
		32.279514, 28.068136, 24.957571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935539, 28.620346, 24.768847>,  <32.627319, 28.533998, 25.347446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935539, 28.620346, 24.768847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.586227, 28.449795, 24.674538>,  <32.376640, 28.347464, 24.617952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.586227, 28.449795, 24.674538>,  <32.935539, 28.620346, 24.768847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586227, 28.449795, 24.674538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163579, 0.712398, -0.682445,
		0.458940, -0.557398, -0.691868,
		-0.873279, -0.426376, -0.235769,
		32.324245, 28.321882, 24.603807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978966, 28.564537, 24.021227>,  <32.935539, 28.620346, 24.768847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978966, 28.564537, 24.021227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.593666, 28.538265, 24.125412>,  <32.362488, 28.522503, 24.187923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.593666, 28.538265, 24.125412>,  <32.978966, 28.564537, 24.021227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593666, 28.538265, 24.125412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214897, 0.770194, -0.600517,
		-0.161165, -0.634419, -0.756001,
		-0.963247, -0.065680, 0.260463,
		32.304691, 28.518560, 24.203550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757622, 28.696205, 23.405762>,  <32.978966, 28.564537, 24.021227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757622, 28.696205, 23.405762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.453144, 28.765797, 23.655663>,  <32.270458, 28.807550, 23.805603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.453144, 28.765797, 23.655663>,  <32.757622, 28.696205, 23.405762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453144, 28.765797, 23.655663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345451, 0.706524, -0.617646,
		-0.548858, -0.685970, -0.477703,
		-0.761196, 0.173977, 0.624750,
		32.224785, 28.817989, 23.843088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136326, 28.844114, 22.991442>,  <32.757622, 28.696205, 23.405762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136326, 28.844114, 22.991442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.067707, 29.002163, 23.352428>,  <32.026535, 29.096992, 23.569021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.067707, 29.002163, 23.352428>,  <32.136326, 28.844114, 22.991442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067707, 29.002163, 23.352428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299674, 0.851711, -0.429866,
		-0.938492, -0.344189, -0.027701,
		-0.171549, 0.395124, 0.902468,
		32.016243, 29.120701, 23.623169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439415, 29.166811, 22.995335>,  <32.136326, 28.844114, 22.991442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439415, 29.166811, 22.995335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.610489, 29.357944, 23.302258>,  <31.713133, 29.472626, 23.486412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.610489, 29.357944, 23.302258>,  <31.439415, 29.166811, 22.995335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610489, 29.357944, 23.302258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174666, 0.876546, -0.448508,
		-0.886893, 0.057797, 0.458345,
		0.427683, 0.477836, 0.767307,
		31.738794, 29.501295, 23.532450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027090, 29.653027, 23.228399>,  <31.439415, 29.166811, 22.995335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027090, 29.653027, 23.228399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.388052, 29.791550, 23.330952>,  <31.604630, 29.874664, 23.392483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.388052, 29.791550, 23.330952>,  <31.027090, 29.653027, 23.228399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388052, 29.791550, 23.330952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263849, 0.914532, -0.306618,
		-0.340655, 0.209048, 0.916653,
		0.902407, 0.346309, 0.256383,
		31.658773, 29.895443, 23.407867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855938, 30.293926, 23.619745>,  <31.027090, 29.653027, 23.228399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855938, 30.293926, 23.619745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.237253, 30.325802, 23.503201>,  <31.466042, 30.344927, 23.433273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.237253, 30.325802, 23.503201>,  <30.855938, 30.293926, 23.619745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237253, 30.325802, 23.503201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147830, 0.964244, -0.219955,
		0.263417, 0.252752, 0.930982,
		0.953288, 0.079687, -0.291363,
		31.523239, 30.349709, 23.415792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063082, 30.888506, 23.967482>,  <30.855938, 30.293926, 23.619745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063082, 30.888506, 23.967482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.319723, 30.836956, 23.665028>,  <31.473707, 30.806026, 23.483555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.319723, 30.836956, 23.665028>,  <31.063082, 30.888506, 23.967482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319723, 30.836956, 23.665028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111577, 0.959617, -0.258235,
		0.758879, 0.250051, 0.601313,
		0.641602, -0.128877, -0.756133,
		31.512203, 30.798292, 23.438187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415098, 31.470827, 23.984936>,  <31.063082, 30.888506, 23.967482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415098, 31.470827, 23.984936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.458248, 31.334389, 23.611408>,  <31.484138, 31.252525, 23.387291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.458248, 31.334389, 23.611408>,  <31.415098, 31.470827, 23.984936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458248, 31.334389, 23.611408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164087, 0.920309, -0.355117,
		0.980530, 0.191536, 0.043308,
		0.107874, -0.341096, -0.933818,
		31.490610, 31.232059, 23.331263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929419, 31.943226, 23.633001>,  <31.415098, 31.470827, 23.984936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929419, 31.943226, 23.633001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.711685, 31.762489, 23.350288>,  <31.581045, 31.654047, 23.180660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.711685, 31.762489, 23.350288>,  <31.929419, 31.943226, 23.633001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711685, 31.762489, 23.350288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058861, 0.861038, -0.505122,
		0.836800, -0.233354, -0.495290,
		-0.544336, -0.451839, -0.706781,
		31.548386, 31.626938, 23.138254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163048, 32.220757, 23.000713>,  <31.929419, 31.943226, 23.633001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163048, 32.220757, 23.000713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.812235, 32.057964, 22.898594>,  <31.601746, 31.960291, 22.837322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.812235, 32.057964, 22.898594>,  <32.163048, 32.220757, 23.000713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812235, 32.057964, 22.898594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182281, 0.773558, -0.606944,
		0.444501, -0.485776, -0.752622,
		-0.877036, -0.406976, -0.255300,
		31.549124, 31.935871, 22.822004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067394, 32.517159, 22.271889>,  <32.163048, 32.220757, 23.000713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067394, 32.517159, 22.271889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.699890, 32.380939, 22.351799>,  <31.479389, 32.299206, 22.399746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.699890, 32.380939, 22.351799>,  <32.067394, 32.517159, 22.271889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699890, 32.380939, 22.351799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385079, 0.661179, -0.643860,
		0.087178, -0.668481, -0.738602,
		-0.918757, -0.340551, 0.199777,
		31.424263, 32.278774, 22.411732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705561, 32.466198, 21.598890>,  <32.067394, 32.517159, 22.271889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705561, 32.466198, 21.598890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.454758, 32.481041, 21.910141>,  <31.304276, 32.489948, 22.096891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.454758, 32.481041, 21.910141>,  <31.705561, 32.466198, 21.598890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454758, 32.481041, 21.910141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609490, 0.598716, -0.519675,
		-0.485162, -0.800102, -0.352782,
		-0.627009, 0.037110, 0.778127,
		31.266655, 32.492172, 22.143579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075489, 32.164658, 21.397774>,  <31.705561, 32.466198, 21.598890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075489, 32.164658, 21.397774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.003683, 32.423145, 21.694469>,  <30.960600, 32.578239, 21.872486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.003683, 32.423145, 21.694469>,  <31.075489, 32.164658, 21.397774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003683, 32.423145, 21.694469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773169, 0.373518, -0.512537,
		-0.608264, -0.665496, 0.432585,
		-0.179513, 0.646219, 0.741739,
		30.949829, 32.617012, 21.916990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342009, 32.148426, 21.434828>,  <31.075489, 32.164658, 21.397774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342009, 32.148426, 21.434828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.451996, 32.483925, 21.622829>,  <30.517988, 32.685223, 21.735630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.451996, 32.483925, 21.622829>,  <30.342009, 32.148426, 21.434828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451996, 32.483925, 21.622829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854709, 0.437111, -0.280012,
		-0.440302, -0.324722, 0.837072,
		0.274968, 0.838743, 0.470003,
		30.534487, 32.735546, 21.763830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736164, 32.346115, 21.707014>,  <30.342009, 32.148426, 21.434828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736164, 32.346115, 21.707014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.976986, 32.664822, 21.686218>,  <30.121479, 32.856045, 21.673740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.976986, 32.664822, 21.686218>,  <29.736164, 32.346115, 21.707014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976986, 32.664822, 21.686218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777061, 0.569705, -0.267605,
		-0.183599, 0.201512, 0.962125,
		0.602053, 0.796762, -0.051990,
		30.157602, 32.903851, 21.670622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295502, 32.890884, 21.747063>,  <29.736164, 32.346115, 21.707014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295502, 32.890884, 21.747063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.631556, 33.072510, 21.628407>,  <29.833189, 33.181484, 21.557213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.631556, 33.072510, 21.628407>,  <29.295502, 32.890884, 21.747063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631556, 33.072510, 21.628407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539425, 0.756493, -0.369782,
		0.056503, 0.470683, 0.880491,
		0.840136, 0.454065, -0.296642,
		29.883596, 33.208729, 21.539413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145012, 33.534550, 21.857761>,  <29.295502, 32.890884, 21.747063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145012, 33.534550, 21.857761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.467869, 33.569080, 21.624157>,  <29.661583, 33.589798, 21.483994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.467869, 33.569080, 21.624157>,  <29.145012, 33.534550, 21.857761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467869, 33.569080, 21.624157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327396, 0.888648, -0.321118,
		0.491259, 0.450391, 0.745528,
		0.807141, 0.086331, -0.584013,
		29.710011, 33.594978, 21.448954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631510, 33.876820, 22.172651>,  <29.145012, 33.534550, 21.857761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631510, 33.876820, 22.172651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.242025, 33.838722, 22.089886>,  <28.008335, 33.815865, 22.040226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.242025, 33.838722, 22.089886>,  <28.631510, 33.876820, 22.172651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242025, 33.838722, 22.089886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024867, -0.858503, 0.512206,
		-0.226421, 0.503886, 0.833566,
		-0.973712, -0.095246, -0.206913,
		27.949911, 33.810150, 22.027811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174109, 33.744518, 22.787788>,  <28.631510, 33.876820, 22.172651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174109, 33.744518, 22.787788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.950552, 33.606323, 22.486252>,  <27.816418, 33.523407, 22.305330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.950552, 33.606323, 22.486252>,  <28.174109, 33.744518, 22.787788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950552, 33.606323, 22.486252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135932, -0.858610, 0.494278,
		-0.818022, 0.378720, 0.432909,
		-0.558894, -0.345485, -0.753842,
		27.782885, 33.502678, 22.260099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733683, 33.311932, 23.050491>,  <28.174109, 33.744518, 22.787788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733683, 33.311932, 23.050491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.716127, 33.193851, 22.668720>,  <27.705593, 33.123005, 22.439657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.716127, 33.193851, 22.668720>,  <27.733683, 33.311932, 23.050491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716127, 33.193851, 22.668720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325786, -0.898894, 0.293007,
		-0.944424, 0.323799, -0.056720,
		-0.043890, -0.295202, -0.954426,
		27.702961, 33.105289, 22.382393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202692, 32.855164, 23.029104>,  <27.733683, 33.311932, 23.050491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202692, 32.855164, 23.029104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.399946, 32.762638, 22.693649>,  <27.518299, 32.707123, 22.492376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.399946, 32.762638, 22.693649>,  <27.202692, 32.855164, 23.029104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399946, 32.762638, 22.693649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081529, -0.947472, 0.309274,
		-0.866123, -0.220887, -0.448374,
		0.493137, -0.231314, -0.838636,
		27.547888, 32.693245, 22.442059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845434, 32.323639, 22.756197>,  <27.202692, 32.855164, 23.029104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845434, 32.323639, 22.756197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.217997, 32.290737, 22.614372>,  <27.441534, 32.270996, 22.529278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.217997, 32.290737, 22.614372>,  <26.845434, 32.323639, 22.756197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217997, 32.290737, 22.614372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010055, -0.967941, 0.250976,
		-0.363841, -0.237326, -0.900720,
		0.931406, -0.082259, -0.354563,
		27.497419, 32.266060, 22.508003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884401, 31.674347, 22.347153>,  <26.845434, 32.323639, 22.756197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884401, 31.674347, 22.347153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.263922, 31.772133, 22.427162>,  <27.491634, 31.830805, 22.475168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.263922, 31.772133, 22.427162>,  <26.884401, 31.674347, 22.347153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263922, 31.772133, 22.427162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220952, -0.966200, 0.132807,
		0.225729, -0.081813, -0.970749,
		0.948803, 0.244467, 0.200022,
		27.548563, 31.845472, 22.487169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318747, 31.274269, 21.927469>,  <26.884401, 31.674347, 22.347153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318747, 31.274269, 21.927469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.547295, 31.392830, 22.233589>,  <27.684423, 31.463966, 22.417261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.547295, 31.392830, 22.233589>,  <27.318747, 31.274269, 21.927469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547295, 31.392830, 22.233589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347930, -0.932041, 0.101216,
		0.743292, 0.208440, -0.635665,
		0.571368, 0.296400, 0.765301,
		27.718704, 31.481750, 22.463179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815632, 30.894573, 21.857904>,  <27.318747, 31.274269, 21.927469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815632, 30.894573, 21.857904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.898304, 31.032234, 22.224258>,  <27.947906, 31.114830, 22.444071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.898304, 31.032234, 22.224258>,  <27.815632, 30.894573, 21.857904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898304, 31.032234, 22.224258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354351, -0.898875, 0.257797,
		0.911986, 0.271264, -0.307728,
		0.206678, 0.344151, 0.915884,
		27.960308, 31.135479, 22.499023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518631, 30.786560, 21.918070>,  <27.815632, 30.894573, 21.857904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518631, 30.786560, 21.918070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.353245, 30.803677, 22.281876>,  <28.254013, 30.813946, 22.500158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.353245, 30.803677, 22.281876>,  <28.518631, 30.786560, 21.918070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353245, 30.803677, 22.281876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379654, -0.899817, 0.214924,
		0.827593, 0.434164, 0.355796,
		-0.413464, 0.042790, 0.909515,
		28.229206, 30.816513, 22.554729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082531, 30.682871, 22.322081>,  <28.518631, 30.786560, 21.918070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082531, 30.682871, 22.322081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.780588, 30.585495, 22.565697>,  <28.599422, 30.527069, 22.711866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.780588, 30.585495, 22.565697>,  <29.082531, 30.682871, 22.322081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780588, 30.585495, 22.565697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470401, -0.848033, 0.244055,
		0.457074, 0.470720, 0.754656,
		-0.754855, -0.243440, 0.609041,
		28.554132, 30.512463, 22.748409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337534, 30.384346, 22.829687>,  <29.082531, 30.682871, 22.322081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337534, 30.384346, 22.829687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.973124, 30.239632, 22.908821>,  <28.754477, 30.152803, 22.956301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.973124, 30.239632, 22.908821>,  <29.337534, 30.384346, 22.829687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973124, 30.239632, 22.908821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409234, -0.734486, 0.541348,
		-0.050547, 0.574143, 0.817193,
		-0.911028, -0.361787, 0.197833,
		28.699816, 30.131096, 22.968170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351824, 30.355286, 23.518831>,  <29.337534, 30.384346, 22.829687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351824, 30.355286, 23.518831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.076406, 30.102039, 23.377369>,  <28.911156, 29.950092, 23.292492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.076406, 30.102039, 23.377369>,  <29.351824, 30.355286, 23.518831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076406, 30.102039, 23.377369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399280, -0.738064, 0.543909,
		-0.605377, 0.233298, 0.760980,
		-0.688545, -0.633114, -0.353655,
		28.869843, 29.912106, 23.271273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112095, 30.108912, 24.029423>,  <29.351824, 30.355286, 23.518831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112095, 30.108912, 24.029423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.996805, 29.838783, 23.757874>,  <28.927631, 29.676706, 23.594944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.996805, 29.838783, 23.757874>,  <29.112095, 30.108912, 24.029423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996805, 29.838783, 23.757874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253075, -0.737474, 0.626167,
		-0.923514, 0.008672, 0.383466,
		-0.288227, -0.675320, -0.678873,
		28.910337, 29.636187, 23.554211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829760, 29.655352, 24.432875>,  <29.112095, 30.108912, 24.029423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829760, 29.655352, 24.432875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.892906, 29.447811, 24.096809>,  <28.930794, 29.323286, 23.895170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.892906, 29.447811, 24.096809>,  <28.829760, 29.655352, 24.432875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892906, 29.447811, 24.096809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280927, -0.792073, 0.541941,
		-0.946656, -0.321579, 0.020716,
		0.157868, -0.518851, -0.840162,
		28.940268, 29.292156, 23.844761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479502, 29.008982, 24.493269>,  <28.829760, 29.655352, 24.432875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479502, 29.008982, 24.493269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.755674, 28.968655, 24.206734>,  <28.921377, 28.944458, 24.034813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.755674, 28.968655, 24.206734>,  <28.479502, 29.008982, 24.493269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755674, 28.968655, 24.206734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362950, -0.808304, 0.463586,
		-0.625757, -0.580069, -0.521486,
		0.690432, -0.100819, -0.716338,
		28.962803, 28.938410, 23.991833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521324, 28.303427, 24.387804>,  <28.479502, 29.008982, 24.493269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521324, 28.303427, 24.387804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.859053, 28.449764, 24.231201>,  <29.061689, 28.537567, 24.137239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.859053, 28.449764, 24.231201>,  <28.521324, 28.303427, 24.387804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859053, 28.449764, 24.231201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513391, -0.761568, 0.395530,
		-0.153456, -0.534950, -0.830831,
		0.844323, 0.365845, -0.391506,
		29.112349, 28.559517, 24.113749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834143, 27.722301, 24.089737>,  <28.521324, 28.303427, 24.387804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834143, 27.722301, 24.089737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.133253, 27.977139, 24.164509>,  <29.312719, 28.130041, 24.209372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.133253, 27.977139, 24.164509>,  <28.834143, 27.722301, 24.089737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133253, 27.977139, 24.164509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453103, -0.695459, 0.557705,
		0.485310, -0.332342, -0.808717,
		0.747778, 0.637092, 0.186928,
		29.357586, 28.168266, 24.220587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488060, 27.367996, 24.045389>,  <28.834143, 27.722301, 24.089737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488060, 27.367996, 24.045389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.614149, 27.683254, 24.256844>,  <29.689802, 27.872410, 24.383717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.614149, 27.683254, 24.256844>,  <29.488060, 27.367996, 24.045389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614149, 27.683254, 24.256844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560820, -0.604072, 0.566196,
		0.765581, 0.117992, -0.632427,
		0.315225, 0.788147, 0.528638,
		29.708717, 27.919699, 24.415436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.259604, 27.229692, 24.217377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.119434, 27.504631, 24.471859>,  <30.035334, 27.669594, 24.624548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.119434, 27.504631, 24.471859>,  <30.259604, 27.229692, 24.217377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119434, 27.504631, 24.471859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263449, -0.579515, 0.771205,
		0.898776, 0.437855, 0.021994,
		-0.350422, 0.687347, 0.636207,
		30.014307, 27.710835, 24.662722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726465, 27.201681, 24.790026>,  <30.259604, 27.229692, 24.217377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726465, 27.201681, 24.790026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.420502, 27.417355, 24.930992>,  <30.236923, 27.546759, 25.015572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.420502, 27.417355, 24.930992>,  <30.726465, 27.201681, 24.790026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420502, 27.417355, 24.930992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096633, -0.444866, 0.890368,
		0.636848, 0.715107, 0.288180,
		-0.764910, 0.539181, 0.352415,
		30.191029, 27.579109, 25.036716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004707, 27.496017, 25.384047>,  <30.726465, 27.201681, 24.790026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004707, 27.496017, 25.384047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.607510, 27.491653, 25.431107>,  <30.369190, 27.489035, 25.459343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.607510, 27.491653, 25.431107>,  <31.004707, 27.496017, 25.384047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607510, 27.491653, 25.431107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116486, -0.257165, 0.959321,
		0.019788, 0.966306, 0.256635,
		-0.992995, -0.010911, 0.117650,
		30.309610, 27.488380, 25.466402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896523, 27.889803, 25.990433>,  <31.004707, 27.496017, 25.384047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896523, 27.889803, 25.990433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.580244, 27.648289, 25.949944>,  <30.390478, 27.503380, 25.925650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.580244, 27.648289, 25.949944>,  <30.896523, 27.889803, 25.990433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580244, 27.648289, 25.949944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013331, -0.182280, 0.983156,
		-0.612066, 0.776027, 0.152177,
		-0.790694, -0.603785, -0.101223,
		30.343037, 27.467154, 25.919577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467209, 28.012426, 26.496090>,  <30.896523, 27.889803, 25.990433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467209, 28.012426, 26.496090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.341003, 27.647419, 26.391964>,  <30.265280, 27.428415, 26.329489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.341003, 27.647419, 26.391964>,  <30.467209, 28.012426, 26.496090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341003, 27.647419, 26.391964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106463, -0.238555, 0.965276,
		-0.942930, 0.332270, -0.021882,
		-0.315512, -0.912518, -0.260315,
		30.246349, 27.373663, 26.313869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133675, 27.793116, 27.069389>,  <30.467209, 28.012426, 26.496090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133675, 27.793116, 27.069389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.146387, 27.439426, 26.882996>,  <30.154015, 27.227213, 26.771158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.146387, 27.439426, 26.882996>,  <30.133675, 27.793116, 27.069389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146387, 27.439426, 26.882996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068174, -0.467053, 0.881597,
		-0.997167, 0.003750, -0.075124,
		0.031781, -0.884221, -0.465985,
		30.155922, 27.174160, 26.743200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477781, 27.384279, 27.229610>,  <30.133675, 27.793116, 27.069389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477781, 27.384279, 27.229610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.772228, 27.129669, 27.137550>,  <29.948896, 26.976902, 27.082315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.772228, 27.129669, 27.137550>,  <29.477781, 27.384279, 27.229610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772228, 27.129669, 27.137550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188053, -0.518969, 0.833851,
		-0.650209, -0.570529, -0.501722,
		0.736114, -0.636528, -0.230149,
		29.993063, 26.938711, 27.068506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167463, 26.850348, 27.590574>,  <29.477781, 27.384279, 27.229610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167463, 26.850348, 27.590574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.523346, 26.714592, 27.468433>,  <29.736876, 26.633139, 27.395149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.523346, 26.714592, 27.468433>,  <29.167463, 26.850348, 27.590574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523346, 26.714592, 27.468433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048296, -0.735062, 0.676277,
		-0.453972, -0.586941, -0.670381,
		0.889706, -0.339388, -0.305351,
		29.790258, 26.612776, 27.376827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223677, 26.138851, 27.594698>,  <29.167463, 26.850348, 27.590574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223677, 26.138851, 27.594698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.601643, 26.256138, 27.652885>,  <29.828423, 26.326509, 27.687798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.601643, 26.256138, 27.652885>,  <29.223677, 26.138851, 27.594698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601643, 26.256138, 27.652885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063925, -0.601179, 0.796553,
		0.321015, -0.743376, -0.586807,
		0.944914, 0.293217, 0.145467,
		29.885117, 26.344103, 27.696526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683180, 25.553986, 27.597940>,  <29.223677, 26.138851, 27.594698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683180, 25.553986, 27.597940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.912243, 25.833340, 27.769672>,  <30.049681, 26.000952, 27.872711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.912243, 25.833340, 27.769672>,  <29.683180, 25.553986, 27.597940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912243, 25.833340, 27.769672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134572, -0.596681, 0.791115,
		0.808674, -0.395262, -0.435677,
		0.572658, 0.698384, 0.429329,
		30.084040, 26.042854, 27.898472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262550, 25.167763, 27.843203>,  <29.683180, 25.553986, 27.597940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262550, 25.167763, 27.843203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252253, 25.512920, 28.045094>,  <30.246075, 25.720015, 28.166227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252253, 25.512920, 28.045094>,  <30.262550, 25.167763, 27.843203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252253, 25.512920, 28.045094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136126, -0.497164, 0.856912,
		0.990357, 0.090766, -0.104665,
		-0.025743, 0.862896, 0.504726,
		30.244530, 25.771790, 28.196510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909674, 25.268919, 28.128450>,  <30.262550, 25.167763, 27.843203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909674, 25.268919, 28.128450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.657768, 25.498558, 28.337757>,  <30.506624, 25.636341, 28.463341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.657768, 25.498558, 28.337757>,  <30.909674, 25.268919, 28.128450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657768, 25.498558, 28.337757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270018, -0.469829, 0.840447,
		0.728345, 0.670575, 0.140865,
		-0.629765, 0.574099, 0.523265,
		30.468840, 25.670788, 28.494736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295137, 25.615732, 28.674520>,  <30.909674, 25.268919, 28.128450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295137, 25.615732, 28.674520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.912371, 25.642822, 28.787464>,  <30.682711, 25.659077, 28.855230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.912371, 25.642822, 28.787464>,  <31.295137, 25.615732, 28.674520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912371, 25.642822, 28.787464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257353, -0.252523, 0.932739,
		0.134472, 0.965218, 0.224213,
		-0.956915, 0.067726, 0.282359,
		30.625296, 25.663139, 28.872171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339474, 25.843546, 29.315588>,  <31.295137, 25.615732, 28.674520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339474, 25.843546, 29.315588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955315, 25.732300, 29.308823>,  <30.724819, 25.665552, 29.304764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955315, 25.732300, 29.308823>,  <31.339474, 25.843546, 29.315588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955315, 25.732300, 29.308823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064139, -0.279746, 0.957929,
		-0.271146, 0.918909, 0.286506,
		-0.960399, -0.278115, -0.016914,
		30.667194, 25.648865, 29.303749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921379, 26.239851, 29.851875>,  <31.339474, 25.843546, 29.315588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921379, 26.239851, 29.851875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.747135, 25.887257, 29.778957>,  <30.642590, 25.675701, 29.735207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.747135, 25.887257, 29.778957>,  <30.921379, 26.239851, 29.851875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747135, 25.887257, 29.778957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012684, -0.208510, 0.977938,
		-0.900047, 0.423685, 0.102009,
		-0.435607, -0.881484, -0.182294,
		30.616453, 25.622810, 29.724270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382124, 26.204754, 30.411327>,  <30.921379, 26.239851, 29.851875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382124, 26.204754, 30.411327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455137, 25.840641, 30.262695>,  <30.498945, 25.622173, 30.173517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455137, 25.840641, 30.262695>,  <30.382124, 26.204754, 30.411327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455137, 25.840641, 30.262695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073937, -0.364148, 0.928401,
		-0.980415, -0.196939, 0.000833,
		0.182535, -0.910280, -0.371578,
		30.509897, 25.567556, 30.151222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002687, 25.783518, 30.918484>,  <30.382124, 26.204754, 30.411327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002687, 25.783518, 30.918484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.219658, 25.509216, 30.724365>,  <30.349840, 25.344635, 30.607893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.219658, 25.509216, 30.724365>,  <30.002687, 25.783518, 30.918484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219658, 25.509216, 30.724365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037445, -0.557355, 0.829429,
		-0.839269, -0.468076, -0.276646,
		0.542426, -0.685755, -0.485298,
		30.382385, 25.303490, 30.578775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649950, 25.240269, 31.156019>,  <30.002687, 25.783518, 30.918484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649950, 25.240269, 31.156019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004019, 25.127254, 31.008156>,  <30.216459, 25.059446, 30.919437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004019, 25.127254, 31.008156>,  <29.649950, 25.240269, 31.156019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004019, 25.127254, 31.008156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177949, -0.528515, 0.830064,
		-0.429889, -0.800529, -0.417551,
		0.885172, -0.282533, -0.369657,
		30.269569, 25.042494, 30.897259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633945, 24.523153, 31.149025>,  <29.649950, 25.240269, 31.156019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633945, 24.523153, 31.149025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012878, 24.650291, 31.164692>,  <30.240238, 24.726574, 31.174091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012878, 24.650291, 31.164692>,  <29.633945, 24.523153, 31.149025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012878, 24.650291, 31.164692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149749, -0.547755, 0.823128,
		0.283079, -0.773912, -0.566504,
		0.947334, 0.317843, 0.039166,
		30.297079, 24.745644, 31.176441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861799, 23.970062, 31.327173>,  <29.633945, 24.523153, 31.149025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861799, 23.970062, 31.327173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.168367, 24.219353, 31.389381>,  <30.352308, 24.368927, 31.426706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.168367, 24.219353, 31.389381>,  <29.861799, 23.970062, 31.327173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168367, 24.219353, 31.389381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148814, -0.407809, 0.900858,
		0.624863, -0.667293, -0.405299,
		0.766421, 0.623227, 0.155522,
		30.398294, 24.406321, 31.436037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459646, 23.498213, 31.490618>,  <29.861799, 23.970062, 31.327173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459646, 23.498213, 31.490618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.542635, 23.867912, 31.618816>,  <30.592428, 24.089733, 31.695736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.542635, 23.867912, 31.618816>,  <30.459646, 23.498213, 31.490618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542635, 23.867912, 31.618816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232609, -0.364840, 0.901546,
		0.950184, -0.112493, -0.290682,
		0.207470, 0.924250, 0.320498,
		30.604876, 24.145187, 31.714966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132565, 23.464283, 31.823364>,  <30.459646, 23.498213, 31.490618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132565, 23.464283, 31.823364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.943874, 23.781208, 31.978138>,  <30.830660, 23.971363, 32.071003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.943874, 23.781208, 31.978138>,  <31.132565, 23.464283, 31.823364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943874, 23.781208, 31.978138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288478, -0.275997, 0.916846,
		0.833220, 0.544121, -0.098370,
		-0.471725, 0.792312, 0.386933,
		30.802357, 24.018902, 32.094219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567389, 23.766096, 32.350628>,  <31.132565, 23.464283, 31.823364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567389, 23.766096, 32.350628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.209885, 23.900448, 32.469543>,  <30.995382, 23.981058, 32.540894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.209885, 23.900448, 32.469543>,  <31.567389, 23.766096, 32.350628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209885, 23.900448, 32.469543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134499, -0.431607, 0.891978,
		0.427910, 0.837198, 0.340577,
		-0.893758, 0.335879, 0.297291,
		30.941757, 24.001211, 32.558731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674238, 24.206839, 32.887096>,  <31.567389, 23.766096, 32.350628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674238, 24.206839, 32.887096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.307684, 24.049263, 32.915504>,  <31.087751, 23.954718, 32.932549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.307684, 24.049263, 32.915504>,  <31.674238, 24.206839, 32.887096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307684, 24.049263, 32.915504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188033, -0.266997, 0.945175,
		-0.353380, 0.879502, 0.318747,
		-0.916388, -0.393941, 0.071024,
		31.032768, 23.931080, 32.936813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231277, 23.586424, 32.656685>,  <31.674238, 24.206839, 32.887096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231277, 23.586424, 32.656685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.581635, 23.406399, 32.587105>,  <32.791847, 23.298384, 32.545357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.581635, 23.406399, 32.587105>,  <32.231277, 23.586424, 32.656685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581635, 23.406399, 32.587105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071259, 0.477216, -0.875892,
		0.477216, 0.754792, 0.450061,
		0.875892, -0.450061, -0.173949,
		32.844402, 23.271381, 32.534920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822754, 24.157219, 32.444324>,  <32.231277, 23.586424, 32.656685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822754, 24.157219, 32.444324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962482, 23.807034, 32.310738>,  <33.046322, 23.596922, 32.230583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962482, 23.807034, 32.310738>,  <32.822754, 24.157219, 32.444324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962482, 23.807034, 32.310738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199102, 0.417638, -0.886531,
		0.915604, 0.243193, 0.320198,
		0.349325, -0.875463, -0.333970,
		33.067280, 23.544395, 32.210548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444527, 24.203230, 32.269104>,  <32.822754, 24.157219, 32.444324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444527, 24.203230, 32.269104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.327980, 23.888405, 32.051617>,  <33.258053, 23.699509, 31.921124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.327980, 23.888405, 32.051617>,  <33.444527, 24.203230, 32.269104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327980, 23.888405, 32.051617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226840, 0.495326, -0.838568,
		0.929326, -0.367671, 0.034215,
		-0.291370, -0.787065, -0.543722,
		33.240570, 23.652285, 31.888500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864887, 24.214317, 31.802431>,  <33.444527, 24.203230, 32.269104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864887, 24.214317, 31.802431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565628, 23.995548, 31.652149>,  <33.386074, 23.864286, 31.561979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565628, 23.995548, 31.652149>,  <33.864887, 24.214317, 31.802431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565628, 23.995548, 31.652149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066354, 0.501711, -0.862487,
		0.660212, -0.670193, -0.339061,
		-0.748143, -0.546926, -0.375705,
		33.341187, 23.831470, 31.539438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098389, 23.784533, 31.153217>,  <33.864887, 24.214317, 31.802431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098389, 23.784533, 31.153217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.702396, 23.838715, 31.137226>,  <33.464802, 23.871223, 31.127632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.702396, 23.838715, 31.137226>,  <34.098389, 23.784533, 31.153217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702396, 23.838715, 31.137226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081609, 0.317641, -0.944692,
		-0.115267, -0.938486, -0.325512,
		-0.989976, 0.135457, -0.039976,
		33.405403, 23.879351, 31.125233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026394, 23.860279, 30.487133>,  <34.098389, 23.784533, 31.153217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026394, 23.860279, 30.487133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.646736, 23.947258, 30.578201>,  <33.418941, 23.999445, 30.632843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.646736, 23.947258, 30.578201>,  <34.026394, 23.860279, 30.487133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646736, 23.947258, 30.578201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094200, 0.493883, -0.864411,
		-0.300407, -0.841901, -0.448284,
		-0.949148, 0.217446, 0.227672,
		33.361992, 24.012491, 30.646503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634758, 23.722610, 29.862219>,  <34.026394, 23.860279, 30.487133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634758, 23.722610, 29.862219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445766, 23.991142, 30.090633>,  <33.332371, 24.152262, 30.227682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445766, 23.991142, 30.090633>,  <33.634758, 23.722610, 29.862219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445766, 23.991142, 30.090633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156820, 0.573541, -0.804026,
		-0.867278, -0.469436, -0.165709,
		-0.472479, 0.671328, 0.571036,
		33.304024, 24.192541, 30.261944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064869, 23.881641, 29.552914>,  <33.634758, 23.722610, 29.862219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064869, 23.881641, 29.552914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112804, 24.182682, 29.811905>,  <33.141567, 24.363306, 29.967300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112804, 24.182682, 29.811905>,  <33.064869, 23.881641, 29.552914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112804, 24.182682, 29.811905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322733, 0.646289, -0.691487,
		-0.938872, -0.126094, 0.320341,
		0.119841, 0.752603, 0.647478,
		33.148758, 24.408463, 30.006147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393337, 24.309479, 29.626080>,  <33.064869, 23.881641, 29.552914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393337, 24.309479, 29.626080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.696938, 24.549545, 29.727055>,  <32.879097, 24.693584, 29.787640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.696938, 24.549545, 29.727055>,  <32.393337, 24.309479, 29.626080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696938, 24.549545, 29.727055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329423, 0.688405, -0.646203,
		-0.561607, 0.407308, 0.720206,
		0.758998, 0.600165, 0.252437,
		32.924637, 24.729595, 29.802786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000889, 24.972357, 29.662636>,  <32.393337, 24.309479, 29.626080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000889, 24.972357, 29.662636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.395420, 24.993748, 29.600292>,  <32.632141, 25.006582, 29.562885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.395420, 24.993748, 29.600292>,  <32.000889, 24.972357, 29.662636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395420, 24.993748, 29.600292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158458, 0.567315, -0.808112,
		0.045205, 0.821763, 0.568034,
		0.986330, 0.053479, -0.155860,
		32.691319, 25.009790, 29.553534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082531, 25.678963, 29.302837>,  <32.000889, 24.972357, 29.662636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082531, 25.678963, 29.302837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.429108, 25.495556, 29.223808>,  <32.637054, 25.385511, 29.176392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.429108, 25.495556, 29.223808>,  <32.082531, 25.678963, 29.302837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429108, 25.495556, 29.223808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064432, 0.495098, -0.866445,
		0.495098, 0.737996, 0.458518,
		0.866445, -0.458518, -0.197572,
		32.689041, 25.358000, 29.164537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519260, 26.254042, 29.150652>,  <32.082531, 25.678963, 29.302837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519260, 26.254042, 29.150652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693382, 25.942898, 28.969349>,  <32.797855, 25.756210, 28.860567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693382, 25.942898, 28.969349>,  <32.519260, 26.254042, 29.150652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693382, 25.942898, 28.969349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111960, 0.546325, -0.830057,
		0.893293, 0.310583, 0.324908,
		0.435307, -0.777861, -0.453256,
		32.823975, 25.709539, 28.833372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143536, 26.594788, 28.728794>,  <32.519260, 26.254042, 29.150652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143536, 26.594788, 28.728794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104137, 26.229794, 28.569965>,  <33.080498, 26.010798, 28.474669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104137, 26.229794, 28.569965>,  <33.143536, 26.594788, 28.728794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104137, 26.229794, 28.569965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124874, 0.407191, -0.904766,
		0.987271, -0.039533, -0.154053,
		-0.098497, -0.912487, -0.397071,
		33.074589, 25.956047, 28.450844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571926, 26.618200, 28.207716>,  <33.143536, 26.594788, 28.728794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571926, 26.618200, 28.207716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.310421, 26.328571, 28.119793>,  <33.153519, 26.154795, 28.067039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.310421, 26.328571, 28.119793>,  <33.571926, 26.618200, 28.207716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310421, 26.328571, 28.119793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002414, 0.288485, -0.957481,
		0.756696, -0.626496, -0.186853,
		-0.653763, -0.724071, -0.219808,
		33.114292, 26.111349, 28.053850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721378, 26.617594, 27.495890>,  <33.571926, 26.618200, 28.207716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721378, 26.617594, 27.495890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.399109, 26.386662, 27.548920>,  <33.205746, 26.248102, 27.580738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.399109, 26.386662, 27.548920>,  <33.721378, 26.617594, 27.495890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399109, 26.386662, 27.548920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288357, 0.186753, -0.939135,
		0.517433, -0.794866, -0.316940,
		-0.805677, -0.577331, 0.132573,
		33.157406, 26.213463, 27.588692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596752, 26.052961, 26.972910>,  <33.721378, 26.617594, 27.495890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596752, 26.052961, 26.972910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224667, 26.117668, 27.104691>,  <33.001415, 26.156492, 27.183760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224667, 26.117668, 27.104691>,  <33.596752, 26.052961, 26.972910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224667, 26.117668, 27.104691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324190, 0.058686, -0.944170,
		-0.172073, -0.985082, -0.002146,
		-0.930211, 0.161770, 0.329452,
		32.945602, 26.166199, 27.203526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193043, 25.579508, 26.665228>,  <33.596752, 26.052961, 26.972910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193043, 25.579508, 26.665228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.947926, 25.871883, 26.785370>,  <32.800854, 26.047308, 26.857454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.947926, 25.871883, 26.785370>,  <33.193043, 25.579508, 26.665228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947926, 25.871883, 26.785370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479900, -0.042246, -0.876306,
		-0.627836, -0.681136, 0.376664,
		-0.612795, 0.730937, 0.300353,
		32.764088, 26.091164, 26.875477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673653, 25.514587, 26.253704>,  <33.193043, 25.579508, 26.665228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673653, 25.514587, 26.253704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.640862, 25.879215, 26.414860>,  <32.621189, 26.097992, 26.511553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.640862, 25.879215, 26.414860>,  <32.673653, 25.514587, 26.253704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640862, 25.879215, 26.414860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506710, 0.309983, -0.804460,
		-0.858211, -0.270094, 0.436491,
		-0.081975, 0.911570, 0.402890,
		32.616268, 26.152687, 26.535727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069031, 25.790604, 25.835777>,  <32.673653, 25.514587, 26.253704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069031, 25.790604, 25.835777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195503, 26.116776, 26.029728>,  <32.271389, 26.312479, 26.146097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195503, 26.116776, 26.029728>,  <32.069031, 25.790604, 25.835777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195503, 26.116776, 26.029728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394626, 0.577826, -0.714414,
		-0.862727, 0.034543, 0.504489,
		0.316184, 0.815429, 0.484875,
		32.290359, 26.361404, 26.175190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599281, 26.313055, 25.830227>,  <32.069031, 25.790604, 25.835777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599281, 26.313055, 25.830227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.946375, 26.511631, 25.839859>,  <32.154633, 26.630777, 25.845638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.946375, 26.511631, 25.839859>,  <31.599281, 26.313055, 25.830227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946375, 26.511631, 25.839859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368706, 0.675443, -0.638618,
		-0.333301, 0.545274, 0.769147,
		0.867736, 0.496441, 0.024080,
		32.206696, 26.660563, 25.847082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.382010, 31.543415, 18.736753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.756559, 31.404213, 18.755054>,  <22.981289, 31.320692, 18.766035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.756559, 31.404213, 18.755054>,  <22.382010, 31.543415, 18.736753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.756559, 31.404213, 18.755054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220870, 0.685502, 0.693761,
		-0.272797, -0.639515, 0.718751,
		0.936375, -0.348006, 0.045753,
		23.037472, 31.299810, 18.768780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.521940, 31.351433, 19.427643>,  <22.382010, 31.543415, 18.736753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.521940, 31.351433, 19.427643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.878128, 31.424782, 19.261059>,  <23.091841, 31.468792, 19.161108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.878128, 31.424782, 19.261059>,  <22.521940, 31.351433, 19.427643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.878128, 31.424782, 19.261059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239816, 0.588681, 0.771973,
		0.386721, -0.787292, 0.480227,
		0.890469, 0.183372, -0.416461,
		23.145269, 31.479794, 19.136120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.978964, 31.476736, 19.957691>,  <22.521940, 31.351433, 19.427643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.978964, 31.476736, 19.957691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.228203, 31.624851, 19.682117>,  <23.377747, 31.713720, 19.516773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.228203, 31.624851, 19.682117>,  <22.978964, 31.476736, 19.957691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.228203, 31.624851, 19.682117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348092, 0.657503, 0.668223,
		0.700414, -0.656182, 0.280794,
		0.623099, 0.370290, -0.688936,
		23.415133, 31.735939, 19.475437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.701349, 31.392635, 20.139328>,  <22.978964, 31.476736, 19.957691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.701349, 31.392635, 20.139328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.688066, 31.701977, 19.886086>,  <23.680098, 31.887581, 19.734140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.688066, 31.701977, 19.886086>,  <23.701349, 31.392635, 20.139328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.688066, 31.701977, 19.886086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505100, 0.559591, 0.657063,
		0.862421, -0.297962, -0.409204,
		-0.033207, 0.773354, -0.633104,
		23.678104, 31.933983, 19.696154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.328897, 31.760111, 20.118212>,  <23.701349, 31.392635, 20.139328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.328897, 31.760111, 20.118212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.076357, 32.022873, 19.953350>,  <23.924831, 32.180531, 19.854433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.076357, 32.022873, 19.953350>,  <24.328897, 31.760111, 20.118212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.076357, 32.022873, 19.953350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242675, 0.672135, 0.699531,
		0.736547, 0.341632, -0.583769,
		-0.631353, 0.656903, -0.412154,
		23.886951, 32.219944, 19.829704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.712225, 32.344536, 20.140213>,  <24.328897, 31.760111, 20.118212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.712225, 32.344536, 20.140213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.324434, 32.432690, 20.097237>,  <24.091759, 32.485580, 20.071451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.324434, 32.432690, 20.097237>,  <24.712225, 32.344536, 20.140213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.324434, 32.432690, 20.097237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087909, 0.721534, 0.686775,
		0.228876, 0.656369, -0.718886,
		-0.969478, 0.220383, -0.107441,
		24.033590, 32.498806, 20.065004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.749445, 33.038467, 20.254934>,  <24.712225, 32.344536, 20.140213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.749445, 33.038467, 20.254934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.361490, 32.960152, 20.312881>,  <24.128717, 32.913162, 20.347649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.361490, 32.960152, 20.312881>,  <24.749445, 33.038467, 20.254934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361490, 32.960152, 20.312881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013693, 0.637690, 0.770172,
		-0.243170, 0.744996, -0.621168,
		-0.969887, -0.195789, 0.144866,
		24.070524, 32.901417, 20.356340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.471087, 33.703899, 20.427877>,  <24.749445, 33.038467, 20.254934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.471087, 33.703899, 20.427877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.177464, 33.452183, 20.529980>,  <24.001289, 33.301155, 20.591242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.177464, 33.452183, 20.529980>,  <24.471087, 33.703899, 20.427877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.177464, 33.452183, 20.529980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403337, 0.706414, 0.581635,
		-0.546334, 0.323998, -0.772363,
		-0.734056, -0.629289, 0.255257,
		23.957247, 33.263397, 20.606556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.914871, 34.013920, 20.172462>,  <24.471087, 33.703899, 20.427877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.914871, 34.013920, 20.172462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.826111, 33.780895, 20.485226>,  <23.772854, 33.641079, 20.672884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.826111, 33.780895, 20.485226>,  <23.914871, 34.013920, 20.172462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.826111, 33.780895, 20.485226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409825, 0.783352, 0.467336,
		-0.884762, -0.216743, -0.412576,
		-0.221900, -0.582565, 0.781907,
		23.759541, 33.606125, 20.719797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.268738, 34.186691, 20.385393>,  <23.914871, 34.013920, 20.172462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.268738, 34.186691, 20.385393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.420151, 34.005173, 20.708076>,  <23.510998, 33.896263, 20.901688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.420151, 34.005173, 20.708076>,  <23.268738, 34.186691, 20.385393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.420151, 34.005173, 20.708076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252358, 0.787946, 0.561655,
		-0.890522, -0.416184, 0.183744,
		0.378532, -0.453797, 0.806710,
		23.533710, 33.869034, 20.950090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.821569, 34.467426, 20.898193>,  <23.268738, 34.186691, 20.385393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.821569, 34.467426, 20.898193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.159309, 34.346500, 21.075138>,  <23.361954, 34.273945, 21.181305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.159309, 34.346500, 21.075138>,  <22.821569, 34.467426, 20.898193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.159309, 34.346500, 21.075138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065798, 0.760862, 0.645569,
		-0.531738, -0.574192, 0.622542,
		0.844350, -0.302312, 0.442360,
		23.412615, 34.255806, 21.207846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.699427, 34.524570, 21.716534>,  <22.821569, 34.467426, 20.898193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.699427, 34.524570, 21.716534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.093636, 34.494808, 21.655598>,  <23.330162, 34.476952, 21.619036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.093636, 34.494808, 21.655598>,  <22.699427, 34.524570, 21.716534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.093636, 34.494808, 21.655598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166095, 0.603986, 0.779495,
		0.034008, -0.793513, 0.607602,
		0.985523, -0.074410, -0.152339,
		23.389292, 34.472485, 21.609896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.057663, 34.635277, 22.406700>,  <22.699427, 34.524570, 21.716534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.057663, 34.635277, 22.406700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.361813, 34.691841, 22.153137>,  <23.544302, 34.725780, 22.000999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.361813, 34.691841, 22.153137>,  <23.057663, 34.635277, 22.406700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.361813, 34.691841, 22.153137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275435, 0.813690, 0.511903,
		0.588192, -0.563837, 0.579758,
		0.760373, 0.141412, -0.633906,
		23.589924, 34.734264, 21.962965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.588297, 34.844990, 22.834249>,  <23.057663, 34.635277, 22.406700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.588297, 34.844990, 22.834249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.700830, 34.972950, 22.472363>,  <23.768351, 35.049725, 22.255230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.700830, 34.972950, 22.472363>,  <23.588297, 34.844990, 22.834249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.700830, 34.972950, 22.472363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101764, 0.927536, 0.359611,
		0.954198, -0.193239, 0.228395,
		0.281336, 0.319898, -0.904718,
		23.785231, 35.068920, 22.200947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.169971, 35.258614, 22.912228>,  <23.588297, 34.844990, 22.834249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.169971, 35.258614, 22.912228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.028946, 35.360813, 22.552135>,  <23.944330, 35.422134, 22.336081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.028946, 35.360813, 22.552135>,  <24.169971, 35.258614, 22.912228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.028946, 35.360813, 22.552135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143749, 0.965374, 0.217692,
		0.924680, -0.052657, -0.377086,
		-0.352566, 0.255501, -0.900231,
		23.923176, 35.437462, 22.282066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.651527, 35.749981, 22.627092>,  <24.169971, 35.258614, 22.912228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.651527, 35.749981, 22.627092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.291977, 35.803753, 22.460262>,  <24.076246, 35.836018, 22.360165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.291977, 35.803753, 22.460262>,  <24.651527, 35.749981, 22.627092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.291977, 35.803753, 22.460262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083599, 0.986907, 0.137932,
		0.430156, 0.089116, -0.898345,
		-0.898875, 0.134433, -0.417074,
		24.022314, 35.844082, 22.335140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753479, 36.447338, 22.489862>,  <24.651527, 35.749981, 22.627092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753479, 36.447338, 22.489862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.370295, 36.382847, 22.394936>,  <24.140385, 36.344154, 22.337980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.370295, 36.382847, 22.394936>,  <24.753479, 36.447338, 22.489862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.370295, 36.382847, 22.394936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189329, 0.976737, 0.100695,
		0.215562, 0.141393, -0.966199,
		-0.957960, -0.161224, -0.237317,
		24.082907, 36.334480, 22.323740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.564344, 36.808037, 21.810724>,  <24.753479, 36.447338, 22.489862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.564344, 36.808037, 21.810724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.237396, 36.772682, 22.038441>,  <24.041227, 36.751469, 22.175070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.237396, 36.772682, 22.038441>,  <24.564344, 36.808037, 21.810724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.237396, 36.772682, 22.038441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006401, 0.986708, 0.162380,
		-0.576075, 0.136369, -0.805941,
		-0.817371, -0.088384, 0.569291,
		23.992186, 36.746166, 22.209229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.963675, 37.346153, 21.592674>,  <24.564344, 36.808037, 21.810724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.963675, 37.346153, 21.592674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.856825, 37.232903, 21.961128>,  <23.792715, 37.164951, 22.182199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.856825, 37.232903, 21.961128>,  <23.963675, 37.346153, 21.592674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.856825, 37.232903, 21.961128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175072, 0.954219, 0.242522,
		-0.947626, -0.096481, -0.304461,
		-0.267123, -0.283122, 0.921133,
		23.776688, 37.147964, 22.237469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.309204, 37.589867, 21.725290>,  <23.963675, 37.346153, 21.592674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.309204, 37.589867, 21.725290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.465031, 37.519676, 22.086941>,  <23.558527, 37.477562, 22.303930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.465031, 37.519676, 22.086941>,  <23.309204, 37.589867, 21.725290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.465031, 37.519676, 22.086941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214525, 0.937391, 0.274366,
		-0.895665, -0.300842, 0.327534,
		0.389569, -0.175476, 0.904126,
		23.581902, 37.467033, 22.358179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.835012, 37.919216, 22.286398>,  <23.309204, 37.589867, 21.725290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.835012, 37.919216, 22.286398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.167099, 37.850281, 22.498451>,  <23.366350, 37.808922, 22.625683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.167099, 37.850281, 22.498451>,  <22.835012, 37.919216, 22.286398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.167099, 37.850281, 22.498451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044893, 0.927252, 0.371736,
		-0.555631, -0.332420, 0.762083,
		0.830216, -0.172336, 0.530134,
		23.416164, 37.798580, 22.657492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.291861, 38.404552, 22.128296>,  <22.835012, 37.919216, 22.286398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.291861, 38.404552, 22.128296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.912073, 38.472672, 22.233749>,  <21.684200, 38.513542, 22.297022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.912073, 38.472672, 22.233749>,  <22.291861, 38.404552, 22.128296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.912073, 38.472672, 22.233749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287694, -0.807993, -0.514179,
		0.125451, -0.564044, 0.816160,
		-0.949471, 0.170300, 0.263635,
		21.627232, 38.523762, 22.312840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.023191, 37.807434, 22.625412>,  <22.291861, 38.404552, 22.128296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.023191, 37.807434, 22.625412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.699160, 37.960381, 22.447620>,  <21.504740, 38.052151, 22.340946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.699160, 37.960381, 22.447620>,  <22.023191, 37.807434, 22.625412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.699160, 37.960381, 22.447620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210198, -0.897092, -0.388643,
		-0.547344, -0.221403, 0.807090,
		-0.810081, 0.382370, -0.444479,
		21.456135, 38.075092, 22.314276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.413923, 37.251709, 22.647068>,  <22.023191, 37.807434, 22.625412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.413923, 37.251709, 22.647068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.302280, 37.519695, 22.371895>,  <21.235294, 37.680485, 22.206791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.302280, 37.519695, 22.371895>,  <21.413923, 37.251709, 22.647068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.302280, 37.519695, 22.371895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315419, -0.740614, -0.593297,
		-0.906978, 0.051393, 0.418030,
		-0.279107, 0.669962, -0.687931,
		21.218548, 37.720684, 22.165516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.808298, 37.097561, 22.535368>,  <21.413923, 37.251709, 22.647068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.808298, 37.097561, 22.535368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.874466, 37.304974, 22.199806>,  <20.914167, 37.429420, 21.998470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.874466, 37.304974, 22.199806>,  <20.808298, 37.097561, 22.535368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.874466, 37.304974, 22.199806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368758, -0.756402, -0.540254,
		-0.914688, 0.398722, 0.066089,
		0.165421, 0.518535, -0.838903,
		20.924091, 37.460533, 21.948135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.174982, 37.004520, 22.002270>,  <20.808298, 37.097561, 22.535368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.174982, 37.004520, 22.002270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.500223, 37.122581, 21.801571>,  <20.695368, 37.193417, 21.681152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.500223, 37.122581, 21.801571>,  <20.174982, 37.004520, 22.002270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.500223, 37.122581, 21.801571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175683, -0.697317, -0.694898,
		-0.554977, 0.653172, -0.515138,
		0.813103, 0.295152, -0.501746,
		20.744154, 37.211128, 21.651047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.985065, 37.113770, 21.340698>,  <20.174982, 37.004520, 22.002270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.985065, 37.113770, 21.340698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.379410, 37.058319, 21.303036>,  <20.616016, 37.025051, 21.280439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.379410, 37.058319, 21.303036>,  <19.985065, 37.113770, 21.340698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.379410, 37.058319, 21.303036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158779, -0.593095, -0.789321,
		0.053576, 0.793109, -0.606719,
		0.985859, -0.138623, -0.094154,
		20.675167, 37.016731, 21.274790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.144917, 37.104065, 20.610472>,  <19.985065, 37.113770, 21.340698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.144917, 37.104065, 20.610472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.457682, 36.926502, 20.785542>,  <20.645342, 36.819965, 20.890583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.457682, 36.926502, 20.785542>,  <20.144917, 37.104065, 20.610472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.457682, 36.926502, 20.785542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041715, -0.663256, -0.747229,
		0.621989, 0.602527, -0.500091,
		0.781914, -0.443907, 0.437672,
		20.692255, 36.793331, 20.916843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.693981, 36.964672, 20.142094>,  <20.144917, 37.104065, 20.610472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.693981, 36.964672, 20.142094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.755751, 36.700844, 20.436337>,  <20.792812, 36.542545, 20.612883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.755751, 36.700844, 20.436337>,  <20.693981, 36.964672, 20.142094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.755751, 36.700844, 20.436337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221554, -0.702458, -0.676363,
		0.962843, 0.267424, 0.037653,
		0.154426, -0.659573, 0.735606,
		20.802078, 36.502972, 20.657019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.151007, 36.456726, 19.866142>,  <20.693981, 36.964672, 20.142094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.151007, 36.456726, 19.866142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.059568, 36.261608, 20.203140>,  <21.004705, 36.144539, 20.405340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.059568, 36.261608, 20.203140>,  <21.151007, 36.456726, 19.866142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059568, 36.261608, 20.203140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307847, -0.857223, -0.412794,
		0.923566, 0.164997, 0.346123,
		-0.228595, -0.487796, 0.842496,
		20.990990, 36.115269, 20.455889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.820133, 36.098427, 20.128458>,  <21.151007, 36.456726, 19.866142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.820133, 36.098427, 20.128458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.476099, 35.926842, 20.238907>,  <21.269678, 35.823891, 20.305176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.476099, 35.926842, 20.238907>,  <21.820133, 36.098427, 20.128458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.476099, 35.926842, 20.238907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288721, -0.855535, -0.429767,
		0.420584, -0.289915, 0.859685,
		-0.860087, -0.428962, 0.276120,
		21.218073, 35.798153, 20.321743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.074484, 35.501984, 20.233702>,  <21.820133, 36.098427, 20.128458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.074484, 35.501984, 20.233702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.678488, 35.446800, 20.221806>,  <21.440889, 35.413689, 20.214668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.678488, 35.446800, 20.221806>,  <22.074484, 35.501984, 20.233702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.678488, 35.446800, 20.221806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137494, -0.895290, -0.423734,
		0.031832, -0.423582, 0.905298,
		-0.989991, -0.137961, -0.029741,
		21.381491, 35.405411, 20.212883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.134527, 34.801418, 20.241043>,  <22.074484, 35.501984, 20.233702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.134527, 34.801418, 20.241043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.765501, 34.908966, 20.130352>,  <21.544085, 34.973495, 20.063936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.765501, 34.908966, 20.130352>,  <22.134527, 34.801418, 20.241043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.765501, 34.908966, 20.130352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045865, -0.788555, -0.613252,
		-0.383100, -0.553074, 0.739827,
		-0.922568, 0.268869, -0.276729,
		21.488731, 34.989628, 20.047333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.741623, 34.230240, 20.329136>,  <22.134527, 34.801418, 20.241043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.741623, 34.230240, 20.329136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.549387, 34.457623, 20.062035>,  <21.434046, 34.594051, 19.901773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.549387, 34.457623, 20.062035>,  <21.741623, 34.230240, 20.329136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.549387, 34.457623, 20.062035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103929, -0.793008, -0.600281,
		-0.870766, -0.219089, 0.440190,
		-0.480589, 0.568452, -0.667754,
		21.405210, 34.628159, 19.861708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.310431, 33.693729, 20.090092>,  <21.741623, 34.230240, 20.329136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.310431, 33.693729, 20.090092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.325459, 34.006935, 19.841743>,  <21.334475, 34.194859, 19.692734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.325459, 34.006935, 19.841743>,  <21.310431, 33.693729, 20.090092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.325459, 34.006935, 19.841743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103234, -0.614946, -0.781783,
		-0.993947, 0.093467, 0.057729,
		0.037570, 0.783011, -0.620872,
		21.336729, 34.241837, 19.655481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.766867, 33.571644, 19.631880>,  <21.310431, 33.693729, 20.090092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.766867, 33.571644, 19.631880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.044044, 33.807568, 19.466015>,  <21.210352, 33.949123, 19.366495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.044044, 33.807568, 19.466015>,  <20.766867, 33.571644, 19.631880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.044044, 33.807568, 19.466015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074902, -0.513129, -0.855037,
		-0.717088, 0.623554, -0.311393,
		0.692946, 0.589813, -0.414664,
		21.251928, 33.984512, 19.341616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.600525, 33.554436, 18.898846>,  <20.766867, 33.571644, 19.631880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.600525, 33.554436, 18.898846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.978384, 33.684635, 18.915291>,  <21.205099, 33.762756, 18.925158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.978384, 33.684635, 18.915291>,  <20.600525, 33.554436, 18.898846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.978384, 33.684635, 18.915291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201318, -0.476132, -0.856020,
		-0.259061, 0.816913, -0.515306,
		0.944647, 0.325502, 0.041112,
		21.261778, 33.782288, 18.927624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.755589, 33.819763, 18.233477>,  <20.600525, 33.554436, 18.898846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.755589, 33.819763, 18.233477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.104290, 33.762371, 18.420864>,  <21.313511, 33.727936, 18.533297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.104290, 33.762371, 18.420864>,  <20.755589, 33.819763, 18.233477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.104290, 33.762371, 18.420864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427475, -0.244473, -0.870344,
		0.239402, 0.958983, -0.151787,
		0.871752, -0.143477, 0.468468,
		21.365816, 33.719326, 18.561405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.195784, 34.191032, 17.822878>,  <20.755589, 33.819763, 18.233477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.195784, 34.191032, 17.822878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.396494, 33.906799, 18.020176>,  <21.516920, 33.736259, 18.138554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.396494, 33.906799, 18.020176>,  <21.195784, 34.191032, 17.822878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.396494, 33.906799, 18.020176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410599, -0.306222, -0.858857,
		0.761334, 0.633479, 0.138111,
		0.501775, -0.710586, 0.493244,
		21.547026, 33.693623, 18.168150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.857109, 34.118652, 17.545994>,  <21.195784, 34.191032, 17.822878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.857109, 34.118652, 17.545994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.792311, 33.774334, 17.738987>,  <21.753431, 33.567745, 17.854782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.792311, 33.774334, 17.738987>,  <21.857109, 34.118652, 17.545994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.792311, 33.774334, 17.738987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439070, -0.500752, -0.745966,
		0.883728, 0.090999, 0.459069,
		-0.161998, -0.860794, 0.482484,
		21.743711, 33.516094, 17.883732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.475796, 33.819145, 17.621969>,  <21.857109, 34.118652, 17.545994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.475796, 33.819145, 17.621969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.211430, 33.518982, 17.625507>,  <22.052809, 33.338882, 17.627630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.211430, 33.518982, 17.625507>,  <22.475796, 33.819145, 17.621969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.211430, 33.518982, 17.625507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454021, -0.409206, -0.791464,
		0.597540, -0.519076, 0.611152,
		-0.660917, -0.750407, 0.008845,
		22.013155, 33.293861, 17.628160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.836123, 33.220554, 17.350601>,  <22.475796, 33.819145, 17.621969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.836123, 33.220554, 17.350601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.453848, 33.122528, 17.285355>,  <22.224483, 33.063713, 17.246206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.453848, 33.122528, 17.285355>,  <22.836123, 33.220554, 17.350601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.453848, 33.122528, 17.285355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266306, -0.483497, -0.833853,
		0.125482, -0.840341, 0.527334,
		-0.955686, -0.245066, -0.163118,
		22.167143, 33.049007, 17.236420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.834688, 29.142267, 22.995420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162313, 29.356613, 23.077377>,  <28.358889, 29.485222, 23.126551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162313, 29.356613, 23.077377>,  <27.834688, 29.142267, 22.995420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162313, 29.356613, 23.077377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449590, 0.821390, -0.350981,
		-0.356375, 0.195359, 0.913691,
		0.819064, 0.535867, 0.204892,
		28.408033, 29.517374, 23.138845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488071, 29.751551, 23.220558>,  <27.834688, 29.142267, 22.995420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488071, 29.751551, 23.220558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863214, 29.868214, 23.145344>,  <28.088301, 29.938211, 23.100216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863214, 29.868214, 23.145344>,  <27.488071, 29.751551, 23.220558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863214, 29.868214, 23.145344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314033, 0.943889, -0.102257,
		0.147661, 0.154952, 0.976824,
		0.937859, 0.291656, -0.188036,
		28.144571, 29.955711, 23.088932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528986, 30.394373, 23.505529>,  <27.488071, 29.751551, 23.220558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528986, 30.394373, 23.505529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851398, 30.416016, 23.269772>,  <28.044846, 30.429001, 23.128317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851398, 30.416016, 23.269772>,  <27.528986, 30.394373, 23.505529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851398, 30.416016, 23.269772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263825, 0.924256, -0.275947,
		0.529819, 0.377919, 0.759256,
		0.806033, 0.054109, -0.589393,
		28.093208, 30.432249, 23.092955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841057, 30.927547, 23.795406>,  <27.528986, 30.394373, 23.505529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841057, 30.927547, 23.795406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930676, 30.882484, 23.408188>,  <27.984446, 30.855446, 23.175858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930676, 30.882484, 23.408188>,  <27.841057, 30.927547, 23.795406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930676, 30.882484, 23.408188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250518, 0.953262, -0.168916,
		0.941830, 0.280357, 0.185351,
		0.224045, -0.112657, -0.968046,
		27.997889, 30.848688, 23.117775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156803, 31.526470, 23.709696>,  <27.841057, 30.927547, 23.795406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156803, 31.526470, 23.709696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088394, 31.391647, 23.339367>,  <28.047348, 31.310753, 23.117170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088394, 31.391647, 23.339367>,  <28.156803, 31.526470, 23.709696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088394, 31.391647, 23.339367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001592, 0.939758, -0.341837,
		0.985266, -0.056988, -0.161257,
		-0.171024, -0.337057, -0.925820,
		28.037086, 31.290531, 23.061621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646040, 31.932640, 23.224623>,  <28.156803, 31.526470, 23.709696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646040, 31.932640, 23.224623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359152, 31.785934, 22.987614>,  <28.187019, 31.697910, 22.845409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359152, 31.785934, 22.987614>,  <28.646040, 31.932640, 23.224623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359152, 31.785934, 22.987614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069046, 0.883505, -0.463304,
		0.693419, -0.291379, -0.658990,
		-0.717219, -0.366764, -0.592521,
		28.143986, 31.675905, 22.809856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826853, 32.125408, 22.590836>,  <28.646040, 31.932640, 23.224623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826853, 32.125408, 22.590836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433796, 32.051426, 22.585056>,  <28.197962, 32.007038, 22.581589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433796, 32.051426, 22.585056>,  <28.826853, 32.125408, 22.590836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433796, 32.051426, 22.585056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152171, 0.848109, -0.507500,
		0.106118, -0.496491, -0.861531,
		-0.982641, -0.184954, -0.014448,
		28.139004, 31.995939, 22.580723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653715, 32.338360, 21.941448>,  <28.826853, 32.125408, 22.590836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653715, 32.338360, 21.941448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285629, 32.298267, 22.092793>,  <28.064777, 32.274212, 22.183599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285629, 32.298267, 22.092793>,  <28.653715, 32.338360, 21.941448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285629, 32.298267, 22.092793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284699, 0.834767, -0.471287,
		-0.268608, -0.541405, -0.796699,
		-0.920215, -0.100228, 0.378363,
		28.009565, 32.268200, 22.206301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151962, 32.330528, 21.324846>,  <28.653715, 32.338360, 21.941448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151962, 32.330528, 21.324846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969984, 32.445965, 21.661831>,  <27.860796, 32.515228, 21.864021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969984, 32.445965, 21.661831>,  <28.151962, 32.330528, 21.324846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969984, 32.445965, 21.661831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344481, 0.815352, -0.465333,
		-0.821192, -0.501913, -0.271528,
		-0.454947, 0.288592, 0.842460,
		27.833500, 32.532543, 21.914568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610693, 32.787159, 21.142002>,  <28.151962, 32.330528, 21.324846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610693, 32.787159, 21.142002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615816, 32.888668, 21.528873>,  <27.618891, 32.949574, 21.760996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615816, 32.888668, 21.528873>,  <27.610693, 32.787159, 21.142002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615816, 32.888668, 21.528873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361367, 0.903059, -0.232160,
		-0.932336, -0.346534, 0.103270,
		0.012808, 0.253769, 0.967180,
		27.619658, 32.964798, 21.819027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989809, 33.166378, 21.263786>,  <27.610693, 32.787159, 21.142002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989809, 33.166378, 21.263786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255405, 33.269249, 21.544636>,  <27.414762, 33.330971, 21.713146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255405, 33.269249, 21.544636>,  <26.989809, 33.166378, 21.263786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255405, 33.269249, 21.544636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256135, 0.960413, -0.109555,
		-0.702504, -0.107094, 0.703576,
		0.663991, 0.257173, 0.702124,
		27.454603, 33.346401, 21.755274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682379, 33.629498, 21.653463>,  <26.989809, 33.166378, 21.263786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682379, 33.629498, 21.653463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072823, 33.686756, 21.718853>,  <27.307089, 33.721111, 21.758087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072823, 33.686756, 21.718853>,  <26.682379, 33.629498, 21.653463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072823, 33.686756, 21.718853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121461, 0.983271, -0.135738,
		-0.180170, 0.112639, 0.977165,
		0.976108, 0.143143, 0.163475,
		27.365654, 33.729698, 21.767895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708406, 34.139095, 22.170174>,  <26.682379, 33.629498, 21.653463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708406, 34.139095, 22.170174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023407, 34.208115, 21.933506>,  <27.212406, 34.249527, 21.791506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023407, 34.208115, 21.933506>,  <26.708406, 34.139095, 22.170174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023407, 34.208115, 21.933506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193092, 0.980752, 0.029021,
		0.585286, 0.091392, 0.805660,
		0.787500, 0.172552, -0.591668,
		27.259657, 34.259880, 21.756006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.132376, 34.675716, 22.487919>,  <26.708406, 34.139095, 22.170174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.132376, 34.675716, 22.487919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176785, 34.674751, 22.090393>,  <27.203430, 34.674171, 21.851877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176785, 34.674751, 22.090393>,  <27.132376, 34.675716, 22.487919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176785, 34.674751, 22.090393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277357, 0.960189, -0.033321,
		0.954331, 0.279341, 0.105934,
		0.111024, -0.002418, -0.993815,
		27.210093, 34.674026, 21.792248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441660, 35.106525, 23.073582>,  <27.132376, 34.675716, 22.487919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441660, 35.106525, 23.073582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325176, 35.179192, 23.449284>,  <27.255287, 35.222790, 23.674704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325176, 35.179192, 23.449284>,  <27.441660, 35.106525, 23.073582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325176, 35.179192, 23.449284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956499, 0.073298, 0.282377,
		-0.017548, 0.980625, -0.195105,
		-0.291207, 0.181662, 0.939254,
		27.237814, 35.233692, 23.731060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718746, 35.786236, 23.237741>,  <27.441660, 35.106525, 23.073582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718746, 35.786236, 23.237741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670391, 35.601757, 23.589352>,  <27.641378, 35.491070, 23.800318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670391, 35.601757, 23.589352>,  <27.718746, 35.786236, 23.237741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670391, 35.601757, 23.589352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984682, 0.056373, 0.164995,
		-0.125648, 0.885507, 0.447315,
		-0.120888, -0.461194, 0.879026,
		27.634125, 35.463398, 23.853060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127457, 36.097332, 23.752272>,  <27.718746, 35.786236, 23.237741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127457, 36.097332, 23.752272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069366, 35.728909, 23.896805>,  <28.034513, 35.507854, 23.983524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069366, 35.728909, 23.896805>,  <28.127457, 36.097332, 23.752272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069366, 35.728909, 23.896805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965030, -0.051307, 0.257071,
		-0.218238, 0.386031, 0.896299,
		-0.145223, -0.921058, 0.361335,
		28.025799, 35.452591, 24.005205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600311, 36.043758, 24.303036>,  <28.127457, 36.097332, 23.752272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600311, 36.043758, 24.303036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515739, 35.656040, 24.252823>,  <28.464996, 35.423409, 24.222694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515739, 35.656040, 24.252823>,  <28.600311, 36.043758, 24.303036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515739, 35.656040, 24.252823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947079, -0.234913, 0.218762,
		-0.241535, -0.072635, 0.967670,
		-0.211429, -0.969299, -0.125531,
		28.452311, 35.365250, 24.215164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853535, 35.593956, 24.974033>,  <28.600311, 36.043758, 24.303036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853535, 35.593956, 24.974033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817690, 35.333832, 24.672287>,  <28.796183, 35.177757, 24.491238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817690, 35.333832, 24.672287>,  <28.853535, 35.593956, 24.974033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817690, 35.333832, 24.672287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921488, -0.341541, 0.184960,
		-0.377928, -0.678566, 0.629856,
		-0.089614, -0.650306, -0.754368,
		28.790806, 35.138741, 24.445976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266775, 35.053745, 25.100597>,  <28.853535, 35.593956, 24.974033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266775, 35.053745, 25.100597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178074, 34.955074, 24.723244>,  <29.124853, 34.895870, 24.496832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178074, 34.955074, 24.723244>,  <29.266775, 35.053745, 25.100597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178074, 34.955074, 24.723244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921294, -0.369945, -0.119826,
		-0.319442, -0.895707, 0.309299,
		-0.221752, -0.246678, -0.943385,
		29.111547, 34.881069, 24.440228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059540, 34.343437, 24.992472>,  <29.266775, 35.053745, 25.100597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059540, 34.343437, 24.992472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218792, 34.473145, 24.649231>,  <29.314344, 34.550968, 24.443287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218792, 34.473145, 24.649231>,  <29.059540, 34.343437, 24.992472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218792, 34.473145, 24.649231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758021, -0.643114, 0.108668,
		-0.516619, -0.693723, -0.501849,
		0.398132, 0.324272, -0.858102,
		29.338232, 34.570427, 24.391800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259609, 33.821693, 24.635576>,  <29.059540, 34.343437, 24.992472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259609, 33.821693, 24.635576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475309, 34.104595, 24.452713>,  <29.604731, 34.274338, 24.342995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475309, 34.104595, 24.452713>,  <29.259609, 33.821693, 24.635576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475309, 34.104595, 24.452713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829526, -0.539715, 0.143510,
		-0.145237, -0.456613, -0.877730,
		0.539252, 0.707257, -0.457159,
		29.637085, 34.316772, 24.315565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517660, 33.459198, 24.081402>,  <29.259609, 33.821693, 24.635576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517660, 33.459198, 24.081402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734327, 33.783764, 24.169224>,  <29.864328, 33.978504, 24.221916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734327, 33.783764, 24.169224>,  <29.517660, 33.459198, 24.081402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734327, 33.783764, 24.169224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816215, -0.570148, 0.093408,
		0.200970, 0.128606, -0.971119,
		0.541668, 0.811413, 0.219553,
		29.896828, 34.027187, 24.235090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093149, 33.510078, 23.621416>,  <29.517660, 33.459198, 24.081402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093149, 33.510078, 23.621416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219498, 33.730122, 23.930637>,  <30.295307, 33.862148, 24.116171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219498, 33.730122, 23.930637>,  <30.093149, 33.510078, 23.621416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219498, 33.730122, 23.930637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822244, -0.565263, 0.066270,
		0.473434, 0.614706, -0.630870,
		0.315871, 0.550104, 0.773053,
		30.314259, 33.895153, 24.162554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845541, 33.738205, 23.532265>,  <30.093149, 33.510078, 23.621416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845541, 33.738205, 23.532265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800837, 33.786705, 23.926788>,  <30.774014, 33.815804, 24.163504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800837, 33.786705, 23.926788>,  <30.845541, 33.738205, 23.532265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800837, 33.786705, 23.926788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805751, -0.569852, 0.161351,
		0.581615, 0.812753, -0.034007,
		-0.111760, 0.121245, 0.986311,
		30.767309, 33.823078, 24.222681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548021, 33.551983, 23.780815>,  <30.845541, 33.738205, 23.532265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548021, 33.551983, 23.780815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327267, 33.571289, 24.113823>,  <31.194813, 33.582874, 24.313627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327267, 33.571289, 24.113823>,  <31.548021, 33.551983, 23.780815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327267, 33.571289, 24.113823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615403, -0.650135, 0.445650,
		0.562760, 0.758284, 0.329100,
		-0.551889, 0.048265, 0.832520,
		31.161699, 33.585770, 24.363579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975559, 33.859295, 24.278904>,  <31.548021, 33.551983, 23.780815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975559, 33.859295, 24.278904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696304, 33.632084, 24.453236>,  <31.528751, 33.495758, 24.557835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696304, 33.632084, 24.453236>,  <31.975559, 33.859295, 24.278904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696304, 33.632084, 24.453236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713485, -0.602564, 0.357568,
		0.059507, 0.560589, 0.825953,
		-0.698139, -0.568028, 0.435829,
		31.486862, 33.461674, 24.583984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238945, 33.622547, 24.972647>,  <31.975559, 33.859295, 24.278904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238945, 33.622547, 24.972647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927134, 33.389210, 24.881393>,  <31.740047, 33.249207, 24.826641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927134, 33.389210, 24.881393>,  <32.238945, 33.622547, 24.972647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927134, 33.389210, 24.881393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549866, -0.811743, 0.196774,
		-0.299971, 0.027949, 0.953539,
		-0.779528, -0.583345, -0.228131,
		31.693275, 33.214207, 24.812954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871002, 33.041134, 25.493887>,  <32.238945, 33.622547, 24.972647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871002, 33.041134, 25.493887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141369, 33.212166, 25.733990>,  <32.303589, 33.314785, 25.878052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141369, 33.212166, 25.733990>,  <31.871002, 33.041134, 25.493887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141369, 33.212166, 25.733990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020422, 0.825039, -0.564707,
		-0.736693, 0.369437, 0.566391,
		0.675919, 0.427583, 0.600256,
		32.344143, 33.340439, 25.914066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657513, 33.774227, 25.535261>,  <31.871002, 33.041134, 25.493887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657513, 33.774227, 25.535261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042747, 33.778587, 25.642853>,  <32.273888, 33.781204, 25.707407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042747, 33.778587, 25.642853>,  <31.657513, 33.774227, 25.535261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042747, 33.778587, 25.642853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131577, 0.852639, -0.505662,
		-0.234851, 0.522387, 0.819730,
		0.963085, 0.010898, 0.268977,
		32.331673, 33.781857, 25.723545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800631, 34.397041, 25.978586>,  <31.657513, 33.774227, 25.535261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800631, 34.397041, 25.978586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139355, 34.269279, 25.808460>,  <32.342590, 34.192623, 25.706385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139355, 34.269279, 25.808460>,  <31.800631, 34.397041, 25.978586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139355, 34.269279, 25.808460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173430, 0.921726, -0.346904,
		0.502828, 0.220000, 0.835921,
		0.846810, -0.319406, -0.425315,
		32.393398, 34.173458, 25.680866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318939, 34.842602, 26.235552>,  <31.800631, 34.397041, 25.978586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318939, 34.842602, 26.235552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470528, 34.682308, 25.901894>,  <32.561481, 34.586132, 25.701698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470528, 34.682308, 25.901894>,  <32.318939, 34.842602, 26.235552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470528, 34.682308, 25.901894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301812, 0.905614, -0.297947,
		0.874809, -0.138841, 0.464147,
		0.378971, -0.400732, -0.834143,
		32.584217, 34.562088, 25.651651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038605, 35.197044, 26.171963>,  <32.318939, 34.842602, 26.235552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038605, 35.197044, 26.171963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995132, 35.036072, 25.808372>,  <32.969051, 34.939487, 25.590218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995132, 35.036072, 25.808372>,  <33.038605, 35.197044, 26.171963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995132, 35.036072, 25.808372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344236, 0.842581, -0.414197,
		0.932572, -0.357915, 0.046965,
		-0.108676, -0.402435, -0.908975,
		32.962528, 34.915340, 25.535681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695988, 35.340492, 25.864693>,  <33.038605, 35.197044, 26.171963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695988, 35.340492, 25.864693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412136, 35.285194, 25.588341>,  <33.241825, 35.252018, 25.422529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412136, 35.285194, 25.588341>,  <33.695988, 35.340492, 25.864693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412136, 35.285194, 25.588341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367554, 0.763932, -0.530389,
		0.601105, -0.630315, -0.491300,
		-0.709632, -0.138240, -0.690878,
		33.199245, 35.243721, 25.381077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034363, 35.366386, 25.244015>,  <33.695988, 35.340492, 25.864693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034363, 35.366386, 25.244015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653946, 35.440037, 25.144718>,  <33.425697, 35.484226, 25.085140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653946, 35.440037, 25.144718>,  <34.034363, 35.366386, 25.244015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653946, 35.440037, 25.144718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294153, 0.785762, -0.544106,
		0.094871, -0.590486, -0.801452,
		-0.951038, 0.184129, -0.248240,
		33.368633, 35.495277, 25.070246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091541, 35.490410, 24.547337>,  <34.034363, 35.366386, 25.244015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091541, 35.490410, 24.547337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733486, 35.638340, 24.646896>,  <33.518654, 35.727100, 24.706633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733486, 35.638340, 24.646896>,  <34.091541, 35.490410, 24.547337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733486, 35.638340, 24.646896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153716, 0.780166, -0.606392,
		-0.418446, -0.504546, -0.755207,
		-0.895140, 0.369830, 0.248900,
		33.464943, 35.749290, 24.721567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800228, 35.805977, 23.957106>,  <34.091541, 35.490410, 24.547337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800228, 35.805977, 23.957106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587246, 35.968025, 24.254391>,  <33.459457, 36.065254, 24.432762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587246, 35.968025, 24.254391>,  <33.800228, 35.805977, 23.957106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587246, 35.968025, 24.254391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031064, 0.868082, -0.495447,
		-0.845886, -0.286892, -0.449632,
		-0.532458, 0.405125, 0.743211,
		33.427509, 36.089561, 24.477354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291058, 36.316570, 23.612698>,  <33.800228, 35.805977, 23.957106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291058, 36.316570, 23.612698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291668, 36.446625, 23.990963>,  <33.292034, 36.524658, 24.217922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291668, 36.446625, 23.990963>,  <33.291058, 36.316570, 23.612698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291668, 36.446625, 23.990963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264224, 0.911928, -0.313964,
		-0.964460, 0.250346, -0.084517,
		0.001526, 0.325137, 0.945666,
		33.292126, 36.544167, 24.274662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912910, 36.935318, 23.634724>,  <33.291058, 36.316570, 23.612698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912910, 36.935318, 23.634724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139061, 36.953888, 23.964134>,  <33.274750, 36.965031, 24.161781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139061, 36.953888, 23.964134>,  <32.912910, 36.935318, 23.634724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139061, 36.953888, 23.964134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345418, 0.893325, -0.287500,
		-0.749024, 0.447007, 0.489028,
		0.565375, 0.046425, 0.823526,
		33.308674, 36.967815, 24.211191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744576, 37.471004, 24.083687>,  <32.912910, 36.935318, 23.634724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744576, 37.471004, 24.083687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136410, 37.390747, 24.088696>,  <33.371510, 37.342594, 24.091700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136410, 37.390747, 24.088696>,  <32.744576, 37.471004, 24.083687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136410, 37.390747, 24.088696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186765, 0.885245, -0.425982,
		0.074386, 0.419624, 0.904645,
		0.979584, -0.200643, 0.012521,
		33.430286, 37.330555, 24.092451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.958891, 31.575815, 29.250723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.353767, 31.560436, 29.188786>,  <32.590694, 31.551208, 29.151623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.353767, 31.560436, 29.188786>,  <31.958891, 31.575815, 29.250723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353767, 31.560436, 29.188786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105347, 0.571797, -0.813603,
		0.119818, 0.819494, 0.560422,
		0.987191, -0.038446, -0.154843,
		32.649925, 31.548903, 29.142332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117321, 32.282997, 29.178240>,  <31.958891, 31.575815, 29.250723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117321, 32.282997, 29.178240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.383797, 32.045994, 28.997074>,  <32.543682, 31.903791, 28.888374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.383797, 32.045994, 28.997074>,  <32.117321, 32.282997, 29.178240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383797, 32.045994, 28.997074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058354, 0.564022, -0.823696,
		0.743500, 0.575162, 0.341167,
		0.666185, -0.592510, -0.452913,
		32.583652, 31.868240, 28.861200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406612, 32.769905, 28.832670>,  <32.117321, 32.282997, 29.178240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406612, 32.769905, 28.832670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.519230, 32.423218, 28.667973>,  <32.586800, 32.215206, 28.569155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.519230, 32.423218, 28.667973>,  <32.406612, 32.769905, 28.832670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519230, 32.423218, 28.667973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176930, 0.468636, -0.865492,
		0.943095, 0.170825, 0.285290,
		0.281545, -0.866717, -0.411744,
		32.603695, 32.163204, 28.544449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907497, 32.925198, 28.310131>,  <32.406612, 32.769905, 28.832670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907497, 32.925198, 28.310131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.797871, 32.569530, 28.163559>,  <32.732094, 32.356129, 28.075615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.797871, 32.569530, 28.163559>,  <32.907497, 32.925198, 28.310131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797871, 32.569530, 28.163559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022250, 0.375055, -0.926736,
		0.961454, -0.262137, -0.083004,
		-0.274063, -0.889167, -0.366431,
		32.715652, 32.302780, 28.053629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362915, 32.771931, 27.809952>,  <32.907497, 32.925198, 28.310131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362915, 32.771931, 27.809952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.056396, 32.530750, 27.721184>,  <32.872486, 32.386044, 27.667923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.056396, 32.530750, 27.721184>,  <33.362915, 32.771931, 27.809952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056396, 32.530750, 27.721184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002340, 0.342782, -0.939412,
		0.642487, -0.720384, -0.261260,
		-0.766293, -0.602949, -0.221919,
		32.826508, 32.349865, 27.654608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531822, 32.472183, 27.218084>,  <33.362915, 32.771931, 27.809952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531822, 32.472183, 27.218084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.133202, 32.446495, 27.239079>,  <32.894028, 32.431084, 27.251675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.133202, 32.446495, 27.239079>,  <33.531822, 32.472183, 27.218084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133202, 32.446495, 27.239079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067138, 0.253133, -0.965099,
		0.048689, -0.965298, -0.256572,
		-0.996555, -0.064215, 0.052484,
		32.834236, 32.427231, 27.254824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336884, 32.209755, 26.547867>,  <33.531822, 32.472183, 27.218084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336884, 32.209755, 26.547867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.013706, 32.370152, 26.720573>,  <32.819798, 32.466389, 26.824198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.013706, 32.370152, 26.720573>,  <33.336884, 32.209755, 26.547867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013706, 32.370152, 26.720573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296327, 0.356849, -0.885917,
		-0.509324, -0.843719, -0.169490,
		-0.807948, 0.400995, 0.431768,
		32.771320, 32.490452, 26.850103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832100, 32.113400, 26.037243>,  <33.336884, 32.209755, 26.547867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832100, 32.113400, 26.037243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.749508, 32.417320, 26.283840>,  <32.699951, 32.599674, 26.431799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.749508, 32.417320, 26.283840>,  <32.832100, 32.113400, 26.037243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749508, 32.417320, 26.283840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165884, 0.593766, -0.787353,
		-0.964286, -0.264842, 0.003437,
		-0.206483, 0.759803, 0.616493,
		32.687561, 32.645260, 26.468788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351120, 32.500599, 25.625839>,  <32.832100, 32.113400, 26.037243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351120, 32.500599, 25.625839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.453499, 32.751877, 25.919743>,  <32.514927, 32.902641, 26.096085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.453499, 32.751877, 25.919743>,  <32.351120, 32.500599, 25.625839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453499, 32.751877, 25.919743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063690, 0.747466, -0.661240,
		-0.964591, 0.216037, 0.151300,
		0.255944, 0.628190, 0.734758,
		32.530281, 32.940334, 26.140171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865503, 32.422878, 26.203407>,  <32.351120, 32.500599, 25.625839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865503, 32.422878, 26.203407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.520847, 32.376263, 26.005825>,  <31.314053, 32.348293, 25.887276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.520847, 32.376263, 26.005825>,  <31.865503, 32.422878, 26.203407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520847, 32.376263, 26.005825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443456, -0.300459, 0.844435,
		-0.246823, 0.946649, 0.207208,
		-0.861641, -0.116538, -0.493957,
		31.262356, 32.341301, 25.857637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314945, 32.703800, 26.581503>,  <31.865503, 32.422878, 26.203407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314945, 32.703800, 26.581503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.150375, 32.449299, 26.320457>,  <31.051634, 32.296597, 26.163830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.150375, 32.449299, 26.320457>,  <31.314945, 32.703800, 26.581503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150375, 32.449299, 26.320457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525377, -0.419548, 0.740243,
		-0.744787, 0.647424, -0.161661,
		-0.411427, -0.636256, -0.652615,
		31.026947, 32.258423, 26.124672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766968, 32.589695, 26.897720>,  <31.314945, 32.703800, 26.581503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766968, 32.589695, 26.897720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.734446, 32.274105, 26.654110>,  <30.714931, 32.084751, 26.507944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.734446, 32.274105, 26.654110>,  <30.766968, 32.589695, 26.897720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734446, 32.274105, 26.654110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421513, -0.526494, 0.738330,
		-0.903170, 0.316742, -0.289756,
		-0.081305, -0.788973, -0.609025,
		30.710054, 32.037415, 26.471403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086077, 32.257069, 27.014709>,  <30.766968, 32.589695, 26.897720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086077, 32.257069, 27.014709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.344681, 31.988567, 26.869690>,  <30.499844, 31.827465, 26.782679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.344681, 31.988567, 26.869690>,  <30.086077, 32.257069, 27.014709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344681, 31.988567, 26.869690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293859, -0.657661, 0.693634,
		-0.704044, -0.341899, -0.622436,
		0.646506, -0.671257, -0.362553,
		30.538633, 31.787191, 26.760925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646715, 31.769384, 26.817102>,  <30.086077, 32.257069, 27.014709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646715, 31.769384, 26.817102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.987734, 31.560337, 26.814701>,  <30.192345, 31.434908, 26.813261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.987734, 31.560337, 26.814701>,  <29.646715, 31.769384, 26.817102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987734, 31.560337, 26.814701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359785, -0.595168, 0.718561,
		-0.379104, -0.610448, -0.695438,
		0.852546, -0.522617, -0.006000,
		30.243498, 31.403551, 26.812901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430389, 31.071348, 26.782860>,  <29.646715, 31.769384, 26.817102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430389, 31.071348, 26.782860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.804499, 31.086304, 26.923637>,  <30.028965, 31.095278, 27.008104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.804499, 31.086304, 26.923637>,  <29.430389, 31.071348, 26.782860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804499, 31.086304, 26.923637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238028, -0.669469, 0.703672,
		0.261926, -0.741899, -0.617237,
		0.935274, 0.037390, 0.351944,
		30.085081, 31.097521, 27.029221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673058, 30.334354, 26.849566>,  <29.430389, 31.071348, 26.782860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673058, 30.334354, 26.849566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.895975, 30.559277, 27.093937>,  <30.029726, 30.694231, 27.240561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.895975, 30.559277, 27.093937>,  <29.673058, 30.334354, 26.849566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895975, 30.559277, 27.093937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105743, -0.681725, 0.723927,
		0.823555, -0.468041, -0.320460,
		0.557292, 0.562307, 0.610930,
		30.063164, 30.727968, 27.277216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114328, 29.920368, 27.187103>,  <29.673058, 30.334354, 26.849566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114328, 29.920368, 27.187103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.130833, 30.243523, 27.422260>,  <30.140736, 30.437416, 27.563354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.130833, 30.243523, 27.422260>,  <30.114328, 29.920368, 27.187103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130833, 30.243523, 27.422260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142789, -0.587120, 0.796807,
		0.988893, 0.051067, -0.139583,
		0.041262, 0.807887, 0.587890,
		30.143211, 30.485889, 27.598627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705320, 29.900587, 27.587265>,  <30.114328, 29.920368, 27.187103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705320, 29.900587, 27.587265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.460489, 30.139507, 27.794567>,  <30.313591, 30.282860, 27.918949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.460489, 30.139507, 27.794567>,  <30.705320, 29.900587, 27.587265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460489, 30.139507, 27.794567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078628, -0.606146, 0.791457,
		0.786878, 0.525184, 0.324044,
		-0.612078, 0.597302, 0.518257,
		30.276865, 30.318697, 27.950045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864721, 29.685484, 28.134796>,  <30.705320, 29.900587, 27.587265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864721, 29.685484, 28.134796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.558630, 29.927330, 28.223221>,  <30.374975, 30.072437, 28.276276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.558630, 29.927330, 28.223221>,  <30.864721, 29.685484, 28.134796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558630, 29.927330, 28.223221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030077, -0.376590, 0.925892,
		0.643059, 0.701867, 0.306362,
		-0.765226, 0.604617, 0.221059,
		30.329062, 30.108715, 28.289539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957748, 29.948380, 28.809902>,  <30.864721, 29.685484, 28.134796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957748, 29.948380, 28.809902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.563223, 29.932610, 28.745869>,  <30.326508, 29.923147, 28.707449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.563223, 29.932610, 28.745869>,  <30.957748, 29.948380, 28.809902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563223, 29.932610, 28.745869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134168, -0.372324, 0.918354,
		-0.095809, 0.927266, 0.361939,
		-0.986316, -0.039426, -0.160082,
		30.267328, 29.920782, 28.697844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644197, 30.276346, 29.443098>,  <30.957748, 29.948380, 28.809902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644197, 30.276346, 29.443098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.379969, 30.034561, 29.264988>,  <30.221432, 29.889490, 29.158123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.379969, 30.034561, 29.264988>,  <30.644197, 30.276346, 29.443098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379969, 30.034561, 29.264988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184188, -0.444489, 0.876644,
		-0.727817, 0.661101, 0.182283,
		-0.660573, -0.604462, -0.445274,
		30.181797, 29.853222, 29.131407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125267, 30.139767, 29.975988>,  <30.644197, 30.276346, 29.443098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125267, 30.139767, 29.975988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.081190, 29.864948, 29.688705>,  <30.054745, 29.700056, 29.516336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.081190, 29.864948, 29.688705>,  <30.125267, 30.139767, 29.975988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081190, 29.864948, 29.688705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187791, -0.695201, 0.693851,
		-0.976008, 0.211329, -0.052416,
		-0.110191, -0.687048, -0.718208,
		30.048132, 29.658834, 29.473244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607506, 29.764748, 30.250931>,  <30.125267, 30.139767, 29.975988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607506, 29.764748, 30.250931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.763420, 29.524361, 29.971817>,  <29.856968, 29.380129, 29.804348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.763420, 29.524361, 29.971817>,  <29.607506, 29.764748, 30.250931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763420, 29.524361, 29.971817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054073, -0.741474, 0.668799,
		-0.919316, -0.298420, -0.256520,
		0.389786, -0.600967, -0.697786,
		29.880356, 29.344070, 29.762482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.556305, 27.935638, 27.463522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.222801, 28.018070, 27.668415>,  <35.022701, 28.067530, 27.791351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.222801, 28.018070, 27.668415>,  <35.556305, 27.935638, 27.463522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222801, 28.018070, 27.668415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359008, 0.502502, -0.786515,
		-0.419483, -0.839657, -0.344980,
		-0.833755, 0.206079, 0.512234,
		34.972675, 28.079893, 27.822084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904808, 27.623331, 27.068560>,  <35.556305, 27.935638, 27.463522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904808, 27.623331, 27.068560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.784763, 27.935966, 27.287300>,  <34.712734, 28.123549, 27.418545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.784763, 27.935966, 27.287300>,  <34.904808, 27.623331, 27.068560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784763, 27.935966, 27.287300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217370, 0.502161, -0.837009,
		-0.928806, -0.370069, 0.019187,
		-0.300116, 0.781590, 0.546852,
		34.694729, 28.170443, 27.451355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237549, 27.798338, 26.810381>,  <34.904808, 27.623331, 27.068560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237549, 27.798338, 26.810381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.375195, 28.127125, 26.991909>,  <34.457783, 28.324396, 27.100826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.375195, 28.127125, 26.991909>,  <34.237549, 27.798338, 26.810381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375195, 28.127125, 26.991909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210268, 0.538526, -0.815951,
		-0.915079, 0.185361, 0.358151,
		0.344119, 0.821968, 0.453818,
		34.478432, 28.373714, 27.128054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757988, 28.340986, 26.610323>,  <34.237549, 27.798338, 26.810381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757988, 28.340986, 26.610323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048630, 28.566116, 26.767941>,  <34.223015, 28.701195, 26.862511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048630, 28.566116, 26.767941>,  <33.757988, 28.340986, 26.610323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048630, 28.566116, 26.767941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235458, 0.742786, -0.626761,
		-0.645447, 0.362627, 0.672234,
		0.726606, 0.562824, 0.394046,
		34.266613, 28.734964, 26.886154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511314, 29.000032, 26.796627>,  <33.757988, 28.340986, 26.610323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511314, 29.000032, 26.796627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905972, 29.057709, 26.766331>,  <34.142765, 29.092316, 26.748154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905972, 29.057709, 26.766331>,  <33.511314, 29.000032, 26.796627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905972, 29.057709, 26.766331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156303, 0.707501, -0.689211,
		-0.045793, 0.691846, 0.720592,
		0.986647, 0.144192, -0.075739,
		34.201965, 29.100965, 26.743608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594509, 29.729956, 26.701046>,  <33.511314, 29.000032, 26.796627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594509, 29.729956, 26.701046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.938560, 29.579662, 26.563057>,  <34.144989, 29.489487, 26.480263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.938560, 29.579662, 26.563057>,  <33.594509, 29.729956, 26.701046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938560, 29.579662, 26.563057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004284, 0.670966, -0.741476,
		0.510064, 0.639240, 0.575505,
		0.860126, -0.375735, -0.344975,
		34.196598, 29.466942, 26.459564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946415, 30.269228, 26.489843>,  <33.594509, 29.729956, 26.701046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946415, 30.269228, 26.489843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.147182, 29.985371, 26.292061>,  <34.267643, 29.815056, 26.173391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.147182, 29.985371, 26.292061>,  <33.946415, 30.269228, 26.489843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147182, 29.985371, 26.292061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130358, 0.627219, -0.767856,
		0.855036, 0.320944, 0.407319,
		0.501917, -0.709642, -0.494457,
		34.297756, 29.772478, 26.143724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501770, 30.686724, 26.150486>,  <33.946415, 30.269228, 26.489843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501770, 30.686724, 26.150486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423424, 30.338440, 25.970043>,  <34.376415, 30.129469, 25.861778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423424, 30.338440, 25.970043>,  <34.501770, 30.686724, 26.150486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423424, 30.338440, 25.970043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086681, 0.442844, -0.892398,
		0.976792, -0.213892, -0.011264,
		-0.195865, -0.870712, -0.451107,
		34.364666, 30.077227, 25.834711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924950, 30.623953, 25.624359>,  <34.501770, 30.686724, 26.150486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924950, 30.623953, 25.624359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.660236, 30.345852, 25.512169>,  <34.501408, 30.178991, 25.444855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.660236, 30.345852, 25.512169>,  <34.924950, 30.623953, 25.624359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660236, 30.345852, 25.512169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078898, 0.307451, -0.948287,
		0.745532, -0.649689, -0.148612,
		-0.661783, -0.695254, -0.280473,
		34.461700, 30.137276, 25.428026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165432, 30.313940, 25.050127>,  <34.924950, 30.623953, 25.624359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165432, 30.313940, 25.050127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.766087, 30.296085, 25.064476>,  <34.526482, 30.285372, 25.073086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.766087, 30.296085, 25.064476>,  <35.165432, 30.313940, 25.050127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766087, 30.296085, 25.064476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055855, 0.620800, -0.781977,
		0.012634, -0.782697, -0.622274,
		-0.998359, -0.044636, 0.035874,
		34.466579, 30.282694, 25.075239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063389, 30.189602, 24.371933>,  <35.165432, 30.313940, 25.050127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063389, 30.189602, 24.371933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.694683, 30.290066, 24.490093>,  <34.473457, 30.350344, 24.560989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.694683, 30.290066, 24.490093>,  <35.063389, 30.189602, 24.371933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694683, 30.290066, 24.490093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207038, 0.325343, -0.922652,
		-0.327839, -0.911631, -0.247891,
		-0.921768, 0.251158, 0.295403,
		34.418152, 30.365414, 24.578714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584839, 29.903561, 23.886173>,  <35.063389, 30.189602, 24.371933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584839, 29.903561, 23.886173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369904, 30.181847, 24.076855>,  <34.240940, 30.348818, 24.191263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369904, 30.181847, 24.076855>,  <34.584839, 29.903561, 23.886173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369904, 30.181847, 24.076855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055935, 0.534595, -0.843255,
		-0.841508, -0.479780, -0.248345,
		-0.537341, 0.695715, 0.476703,
		34.208702, 30.390560, 24.219866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954895, 30.137257, 23.474049>,  <34.584839, 29.903561, 23.886173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954895, 30.137257, 23.474049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.026928, 30.427994, 23.739159>,  <34.070148, 30.602436, 23.898224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.026928, 30.427994, 23.739159>,  <33.954895, 30.137257, 23.474049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026928, 30.427994, 23.739159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313508, 0.681061, -0.661716,
		-0.932354, -0.088621, 0.350518,
		0.180082, 0.726844, 0.662774,
		34.080952, 30.646048, 23.937990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350933, 30.438025, 23.520636>,  <33.954895, 30.137257, 23.474049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350933, 30.438025, 23.520636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.635258, 30.697784, 23.628731>,  <33.805851, 30.853640, 23.693588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.635258, 30.697784, 23.628731>,  <33.350933, 30.438025, 23.520636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635258, 30.697784, 23.628731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308859, 0.633340, -0.709567,
		-0.631945, 0.420903, 0.650758,
		0.710810, 0.649400, 0.270236,
		33.848499, 30.892605, 23.709803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786659, 30.286266, 23.903805>,  <33.350933, 30.438025, 23.520636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786659, 30.286266, 23.903805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.440742, 30.165600, 23.743240>,  <32.233192, 30.093201, 23.646902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.440742, 30.165600, 23.743240>,  <32.786659, 30.286266, 23.903805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440742, 30.165600, 23.743240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047166, -0.844688, 0.533177,
		-0.499910, 0.442154, 0.744708,
		-0.864792, -0.301665, -0.401413,
		32.181305, 30.075100, 23.622816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496983, 29.913084, 24.526274>,  <32.786659, 30.286266, 23.903805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496983, 29.913084, 24.526274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.272408, 29.788998, 24.219406>,  <32.137661, 29.714546, 24.035286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.272408, 29.788998, 24.219406>,  <32.496983, 29.913084, 24.526274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272408, 29.788998, 24.219406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135913, -0.879916, 0.455275,
		-0.816279, 0.359879, 0.451859,
		-0.561441, -0.310218, -0.767169,
		32.103973, 29.695932, 23.989256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959629, 29.556362, 24.769848>,  <32.496983, 29.913084, 24.526274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959629, 29.556362, 24.769848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.947508, 29.428295, 24.391098>,  <31.940235, 29.351456, 24.163847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.947508, 29.428295, 24.391098>,  <31.959629, 29.556362, 24.769848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947508, 29.428295, 24.391098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047418, -0.945785, 0.321314,
		-0.998415, 0.054636, 0.013478,
		-0.030302, -0.320165, -0.946877,
		31.938417, 29.332245, 24.107035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315807, 29.058012, 24.765835>,  <31.959629, 29.556362, 24.769848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315807, 29.058012, 24.765835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590960, 28.974026, 24.487919>,  <31.756050, 28.923634, 24.321169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590960, 28.974026, 24.487919>,  <31.315807, 29.058012, 24.765835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590960, 28.974026, 24.487919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027794, -0.964163, 0.263852,
		-0.725292, -0.162188, -0.669064,
		0.687880, -0.209965, -0.694792,
		31.797323, 28.911036, 24.279482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045061, 28.461548, 24.399368>,  <31.315807, 29.058012, 24.765835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045061, 28.461548, 24.399368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.439709, 28.484360, 24.338276>,  <31.676498, 28.498047, 24.301620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.439709, 28.484360, 24.338276>,  <31.045061, 28.461548, 24.399368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439709, 28.484360, 24.338276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116642, -0.901434, 0.416907,
		-0.113901, -0.429144, -0.896026,
		0.986621, 0.057028, -0.152730,
		31.735695, 28.501469, 24.292458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181547, 27.792322, 24.158060>,  <31.045061, 28.461548, 24.399368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181547, 27.792322, 24.158060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.520987, 27.958210, 24.289448>,  <31.724649, 28.057743, 24.368280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.520987, 27.958210, 24.289448>,  <31.181547, 27.792322, 24.158060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520987, 27.958210, 24.289448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207071, -0.831717, 0.515139,
		0.486831, -0.369129, -0.791669,
		0.848597, 0.414717, 0.328470,
		31.775566, 28.082624, 24.387989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682665, 27.277557, 24.147829>,  <31.181547, 27.792322, 24.158060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682665, 27.277557, 24.147829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.863791, 27.532593, 24.397129>,  <31.972466, 27.685614, 24.546709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.863791, 27.532593, 24.397129>,  <31.682665, 27.277557, 24.147829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863791, 27.532593, 24.397129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361987, -0.770283, 0.525005,
		0.814817, -0.012120, -0.579592,
		0.452813, 0.637587, 0.623252,
		31.999634, 27.723869, 24.584105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275578, 26.934546, 24.322617>,  <31.682665, 27.277557, 24.147829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275578, 26.934546, 24.322617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221848, 27.203392, 24.613880>,  <32.189610, 27.364700, 24.788639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221848, 27.203392, 24.613880>,  <32.275578, 26.934546, 24.322617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221848, 27.203392, 24.613880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515258, -0.580299, 0.630684,
		0.846443, 0.459907, -0.268365,
		-0.134324, 0.672115, 0.728161,
		32.181549, 27.405027, 24.832329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887062, 26.915258, 24.679205>,  <32.275578, 26.934546, 24.322617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887062, 26.915258, 24.679205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.625458, 27.085171, 24.929592>,  <32.468494, 27.187119, 25.079824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.625458, 27.085171, 24.929592>,  <32.887062, 26.915258, 24.679205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625458, 27.085171, 24.929592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445516, -0.452473, 0.772518,
		0.611384, 0.784111, 0.106675,
		-0.654007, 0.424780, 0.625969,
		32.429256, 27.212605, 25.117382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332596, 27.078739, 25.327509>,  <32.887062, 26.915258, 24.679205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332596, 27.078739, 25.327509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946831, 27.081528, 25.433235>,  <32.715374, 27.083200, 25.496672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946831, 27.081528, 25.433235>,  <33.332596, 27.078739, 25.327509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946831, 27.081528, 25.433235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245676, -0.345935, 0.905523,
		0.097748, 0.938232, 0.331911,
		-0.964411, 0.006971, 0.264316,
		32.657509, 27.083618, 25.512529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320091, 27.249306, 26.051449>,  <33.332596, 27.078739, 25.327509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320091, 27.249306, 26.051449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.986420, 27.051334, 25.954136>,  <32.786217, 26.932550, 25.895748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.986420, 27.051334, 25.954136>,  <33.320091, 27.249306, 26.051449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986420, 27.051334, 25.954136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040106, -0.385523, 0.921826,
		-0.550030, 0.778727, 0.301746,
		-0.834181, -0.494930, -0.243281,
		32.736164, 26.902855, 25.881151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907505, 27.454586, 26.655071>,  <33.320091, 27.249306, 26.051449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907505, 27.454586, 26.655071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727791, 27.124863, 26.517284>,  <32.619961, 26.927029, 26.434612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727791, 27.124863, 26.517284>,  <32.907505, 27.454586, 26.655071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727791, 27.124863, 26.517284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160554, -0.304797, 0.938787,
		-0.878842, 0.477091, 0.004595,
		-0.449288, -0.824308, -0.344467,
		32.593006, 26.877571, 26.413944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300945, 27.270962, 27.121645>,  <32.907505, 27.454586, 26.655071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300945, 27.270962, 27.121645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411190, 26.935535, 26.933666>,  <32.477337, 26.734280, 26.820879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411190, 26.935535, 26.933666>,  <32.300945, 27.270962, 27.121645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411190, 26.935535, 26.933666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041262, -0.478110, 0.877330,
		-0.960383, -0.261192, -0.097171,
		0.275610, -0.838564, -0.469946,
		32.493874, 26.683966, 26.792683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728769, 26.843086, 27.188858>,  <32.300945, 27.270962, 27.121645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728769, 26.843086, 27.188858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.054008, 26.622215, 27.115128>,  <32.249153, 26.489693, 27.070889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.054008, 26.622215, 27.115128>,  <31.728769, 26.843086, 27.188858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054008, 26.622215, 27.115128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086401, -0.427609, 0.899825,
		-0.575684, -0.715717, -0.395396,
		0.813095, -0.552177, -0.184329,
		32.297935, 26.456562, 27.059830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115263, 26.444893, 27.148726>,  <31.728769, 26.843086, 27.188858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115263, 26.444893, 27.148726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727856, 26.500954, 27.231018>,  <30.495411, 26.534590, 27.280394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727856, 26.500954, 27.231018>,  <31.115263, 26.444893, 27.148726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727856, 26.500954, 27.231018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131256, 0.414726, -0.900430,
		-0.211518, -0.899089, -0.383275,
		-0.968520, 0.140150, 0.205733,
		30.437300, 26.542999, 27.292738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757120, 25.974352, 26.713200>,  <31.115263, 26.444893, 27.148726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757120, 25.974352, 26.713200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.539623, 26.292793, 26.819458>,  <30.409126, 26.483858, 26.883213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.539623, 26.292793, 26.819458>,  <30.757120, 25.974352, 26.713200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539623, 26.292793, 26.819458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079340, 0.266350, -0.960605,
		-0.835494, -0.543397, -0.081662,
		-0.543741, 0.796101, 0.265647,
		30.376501, 26.531624, 26.899153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248482, 25.981344, 26.150829>,  <30.757120, 25.974352, 26.713200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248482, 25.981344, 26.150829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.216862, 26.336784, 26.331558>,  <30.197889, 26.550049, 26.439995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.216862, 26.336784, 26.331558>,  <30.248482, 25.981344, 26.150829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216862, 26.336784, 26.331558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129630, 0.440229, -0.888479,
		-0.988406, -0.128802, 0.080390,
		-0.079048, 0.888599, 0.451822,
		30.193148, 26.603365, 26.467104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690781, 26.247461, 25.973417>,  <30.248482, 25.981344, 26.150829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690781, 26.247461, 25.973417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.886700, 26.579144, 26.081131>,  <30.004251, 26.778152, 26.145760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.886700, 26.579144, 26.081131>,  <29.690781, 26.247461, 25.973417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886700, 26.579144, 26.081131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254980, 0.431610, -0.865273,
		-0.833718, 0.355145, 0.422832,
		0.489796, 0.829208, 0.269286,
		30.033638, 26.827906, 26.161917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248358, 26.809225, 25.680138>,  <29.690781, 26.247461, 25.973417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248358, 26.809225, 25.680138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.591236, 26.998802, 25.760731>,  <29.796963, 27.112549, 25.809088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.591236, 26.998802, 25.760731>,  <29.248358, 26.809225, 25.680138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591236, 26.998802, 25.760731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149084, 0.602855, -0.783799,
		-0.492941, 0.641830, 0.587421,
		0.857195, 0.473942, 0.201485,
		29.848394, 27.140985, 25.821177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028559, 27.384775, 25.561708>,  <29.248358, 26.809225, 25.680138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028559, 27.384775, 25.561708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.426107, 27.425415, 25.544270>,  <29.664637, 27.449799, 25.533806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.426107, 27.425415, 25.544270>,  <29.028559, 27.384775, 25.561708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426107, 27.425415, 25.544270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105345, 0.750586, -0.652321,
		-0.033555, 0.652915, 0.756688,
		0.993869, 0.101602, -0.043596,
		29.724268, 27.455896, 25.531191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199272, 28.116182, 25.686522>,  <29.028559, 27.384775, 25.561708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199272, 28.116182, 25.686522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.496737, 27.946373, 25.479931>,  <29.675215, 27.844488, 25.355976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.496737, 27.946373, 25.479931>,  <29.199272, 28.116182, 25.686522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496737, 27.946373, 25.479931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016989, 0.784276, -0.620180,
		0.668340, 0.452430, 0.590448,
		0.743662, -0.424523, -0.516476,
		29.719835, 27.819016, 25.324987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695961, 28.586861, 25.540106>,  <29.199272, 28.116182, 25.686522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695961, 28.586861, 25.540106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.756561, 28.305344, 25.262482>,  <29.792921, 28.136433, 25.095907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.756561, 28.305344, 25.262482>,  <29.695961, 28.586861, 25.540106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756561, 28.305344, 25.262482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119335, 0.684007, -0.719648,
		0.981227, 0.191852, 0.019639,
		0.151500, -0.703795, -0.694061,
		29.802011, 28.094206, 25.054264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890551, 29.017059, 25.023540>,  <29.695961, 28.586861, 25.540106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890551, 29.017059, 25.023540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.864569, 28.665211, 24.835052>,  <29.848980, 28.454102, 24.721960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.864569, 28.665211, 24.835052>,  <29.890551, 29.017059, 25.023540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864569, 28.665211, 24.835052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300894, 0.467500, -0.831207,
		0.951443, 0.087798, -0.295039,
		-0.064953, -0.879622, -0.471218,
		29.845083, 28.401323, 24.693687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269091, 29.086557, 24.404158>,  <29.890551, 29.017059, 25.023540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269091, 29.086557, 24.404158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.972517, 28.820969, 24.365341>,  <29.794573, 28.661615, 24.342052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.972517, 28.820969, 24.365341>,  <30.269091, 29.086557, 24.404158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972517, 28.820969, 24.365341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307799, 0.465024, -0.830068,
		0.596268, -0.585571, -0.549155,
		-0.741434, -0.663972, -0.097041,
		29.750086, 28.621777, 24.336229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258621, 28.925922, 23.685297>,  <30.269091, 29.086557, 24.404158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258621, 28.925922, 23.685297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.900476, 28.807034, 23.817951>,  <29.685589, 28.735701, 23.897543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.900476, 28.807034, 23.817951>,  <30.258621, 28.925922, 23.685297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900476, 28.807034, 23.817951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437366, 0.446633, -0.780532,
		0.083871, -0.843907, -0.529894,
		-0.895363, -0.297222, 0.331637,
		29.631866, 28.717867, 23.917442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912439, 28.862064, 23.085264>,  <30.258621, 28.925922, 23.685297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912439, 28.862064, 23.085264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.621931, 28.863380, 23.360226>,  <29.447626, 28.864170, 23.525202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.621931, 28.863380, 23.360226>,  <29.912439, 28.862064, 23.085264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621931, 28.863380, 23.360226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581974, 0.529250, -0.617414,
		-0.365841, -0.848460, -0.382461,
		-0.726269, 0.003293, 0.687403,
		29.404051, 28.864368, 23.566446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352448, 28.705276, 22.739223>,  <29.912439, 28.862064, 23.085264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352448, 28.705276, 22.739223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.220575, 28.871239, 23.078438>,  <29.141451, 28.970816, 23.281967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.220575, 28.871239, 23.078438>,  <29.352448, 28.705276, 22.739223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220575, 28.871239, 23.078438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578254, 0.621303, -0.528777,
		-0.746279, -0.664708, 0.035089,
		-0.329681, 0.414905, 0.848035,
		29.121672, 28.995710, 23.332848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557947, 28.751272, 22.736471>,  <29.352448, 28.705276, 22.739223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557947, 28.751272, 22.736471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.673721, 29.023842, 23.005363>,  <28.743185, 29.187384, 23.166698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.673721, 29.023842, 23.005363>,  <28.557947, 28.751272, 22.736471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673721, 29.023842, 23.005363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497603, 0.707047, -0.502470,
		-0.817692, -0.189072, 0.543721,
		0.289433, 0.681423, 0.672229,
		28.760551, 29.228270, 23.207031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.747555, 33.999310, 15.321865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.890747, 33.625816, 15.321101>,  <45.976662, 33.401722, 15.320642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.890747, 33.625816, 15.321101>,  <45.747555, 33.999310, 15.321865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890747, 33.625816, 15.321101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494414, -0.191286, 0.847918,
		-0.792091, -0.302590, -0.530124,
		0.357977, -0.933729, -0.001911,
		45.998138, 33.345699, 15.320528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.112682, 33.524136, 15.416255>,  <45.747555, 33.999310, 15.321865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.112682, 33.524136, 15.416255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.449501, 33.324749, 15.498712>,  <45.651592, 33.205116, 15.548185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.449501, 33.324749, 15.498712>,  <45.112682, 33.524136, 15.416255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449501, 33.324749, 15.498712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436642, -0.405491, 0.803070,
		-0.316715, -0.766229, -0.559092,
		0.842043, -0.498468, 0.206143,
		45.702114, 33.175209, 15.560555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012543, 32.737221, 15.508046>,  <45.112682, 33.524136, 15.416255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012543, 32.737221, 15.508046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.323807, 32.866016, 15.723744>,  <45.510567, 32.943295, 15.853163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.323807, 32.866016, 15.723744>,  <45.012543, 32.737221, 15.508046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323807, 32.866016, 15.723744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372662, -0.454399, 0.809101,
		0.505556, -0.830568, -0.233602,
		0.778162, 0.321992, 0.539245,
		45.557255, 32.962612, 15.885518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.081017, 32.159042, 16.027960>,  <45.012543, 32.737221, 15.508046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.081017, 32.159042, 16.027960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.278164, 32.482784, 16.155727>,  <45.396454, 32.677029, 16.232388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.278164, 32.482784, 16.155727>,  <45.081017, 32.159042, 16.027960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.278164, 32.482784, 16.155727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297475, -0.188243, 0.935988,
		0.817673, -0.556338, 0.147983,
		0.492869, 0.809353, 0.319418,
		45.426025, 32.725590, 16.251553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314537, 31.895372, 16.621798>,  <45.081017, 32.159042, 16.027960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314537, 31.895372, 16.621798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.376282, 32.288151, 16.665524>,  <45.413330, 32.523819, 16.691759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.376282, 32.288151, 16.665524>,  <45.314537, 31.895372, 16.621798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376282, 32.288151, 16.665524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226539, -0.072515, 0.971299,
		0.961692, -0.174698, 0.211256,
		0.154364, 0.981948, 0.109313,
		45.422592, 32.582737, 16.698317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.764606, 32.000271, 17.287058>,  <45.314537, 31.895372, 16.621798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.764606, 32.000271, 17.287058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.565750, 32.329670, 17.177727>,  <45.446434, 32.527309, 17.112129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.565750, 32.329670, 17.177727>,  <45.764606, 32.000271, 17.287058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565750, 32.329670, 17.177727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368961, 0.084474, 0.925598,
		0.785313, 0.561002, 0.261841,
		-0.497144, 0.823493, -0.273326,
		45.416607, 32.576717, 17.095728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781384, 32.471054, 17.903601>,  <45.764606, 32.000271, 17.287058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.781384, 32.471054, 17.903601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.469406, 32.578659, 17.677567>,  <45.282219, 32.643223, 17.541946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.469406, 32.578659, 17.677567>,  <45.781384, 32.471054, 17.903601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469406, 32.578659, 17.677567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544348, 0.153951, 0.824612,
		0.308825, 0.950753, 0.026363,
		-0.779944, 0.269011, -0.565085,
		45.235424, 32.659363, 17.508041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494514, 33.125870, 18.158003>,  <45.781384, 32.471054, 17.903601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494514, 33.125870, 18.158003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.203804, 32.944748, 17.951405>,  <45.029377, 32.836075, 17.827446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.203804, 32.944748, 17.951405>,  <45.494514, 33.125870, 18.158003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203804, 32.944748, 17.951405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646306, 0.196221, 0.737419,
		-0.232556, 0.869753, -0.435256,
		-0.726778, -0.452800, -0.516494,
		44.985771, 32.808907, 17.796457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028343, 33.561665, 18.177187>,  <45.494514, 33.125870, 18.158003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028343, 33.561665, 18.177187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.821468, 33.236725, 18.069401>,  <44.697342, 33.041763, 18.004728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.821468, 33.236725, 18.069401>,  <45.028343, 33.561665, 18.177187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821468, 33.236725, 18.069401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728934, 0.253087, 0.636083,
		-0.448521, 0.525397, -0.723040,
		-0.517188, -0.812345, -0.269465,
		44.666313, 32.993023, 17.988562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326797, 33.779045, 18.166641>,  <45.028343, 33.561665, 18.177187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326797, 33.779045, 18.166641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.256435, 33.385883, 18.144913>,  <44.214218, 33.149986, 18.131876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.256435, 33.385883, 18.144913>,  <44.326797, 33.779045, 18.166641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256435, 33.385883, 18.144913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664923, 0.077944, 0.742834,
		-0.725902, 0.166791, -0.667268,
		-0.175908, -0.982907, -0.054323,
		44.203663, 33.091011, 18.128616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500805, 33.588997, 18.061543>,  <44.326797, 33.779045, 18.166641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500805, 33.588997, 18.061543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.687160, 33.281742, 18.237225>,  <43.798973, 33.097389, 18.342634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.687160, 33.281742, 18.237225>,  <43.500805, 33.588997, 18.061543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687160, 33.281742, 18.237225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770517, -0.108156, 0.628177,
		-0.435026, -0.631079, -0.642255,
		0.465893, -0.768142, 0.439206,
		43.826927, 33.051300, 18.368986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009617, 33.104443, 18.103649>,  <43.500805, 33.588997, 18.061543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009617, 33.104443, 18.103649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.291508, 32.947811, 18.340302>,  <43.460644, 32.853832, 18.482292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.291508, 32.947811, 18.340302>,  <43.009617, 33.104443, 18.103649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291508, 32.947811, 18.340302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702573, -0.269110, 0.658765,
		-0.098743, -0.879914, -0.464760,
		0.704728, -0.391576, 0.591631,
		43.502926, 32.830338, 18.517790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747002, 32.484348, 18.423397>,  <43.009617, 33.104443, 18.103649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747002, 32.484348, 18.423397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.041801, 32.579239, 18.676556>,  <43.218681, 32.636173, 18.828451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.041801, 32.579239, 18.676556>,  <42.747002, 32.484348, 18.423397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041801, 32.579239, 18.676556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555566, -0.320677, 0.767146,
		0.384946, -0.916999, -0.104541,
		0.736996, 0.237230, 0.632897,
		43.262901, 32.650410, 18.866425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840080, 31.902304, 18.863026>,  <42.747002, 32.484348, 18.423397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840080, 31.902304, 18.863026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.007671, 32.207226, 19.060345>,  <43.108227, 32.390179, 19.178736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.007671, 32.207226, 19.060345>,  <42.840080, 31.902304, 18.863026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007671, 32.207226, 19.060345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530667, -0.235263, 0.814275,
		0.736782, -0.602944, 0.305960,
		0.418981, 0.762306, 0.493300,
		43.133366, 32.435917, 19.208334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077129, 31.727020, 19.561287>,  <42.840080, 31.902304, 18.863026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077129, 31.727020, 19.561287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.029087, 32.123707, 19.579510>,  <43.000263, 32.361717, 19.590443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.029087, 32.123707, 19.579510>,  <43.077129, 31.727020, 19.561287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029087, 32.123707, 19.579510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637788, -0.112243, 0.761990,
		0.760791, 0.062462, 0.645985,
		-0.120103, 0.991715, 0.045556,
		42.993057, 32.421223, 19.593176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000496, 31.814642, 20.311316>,  <43.077129, 31.727020, 19.561287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000496, 31.814642, 20.311316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.858353, 32.144264, 20.134838>,  <42.773067, 32.342037, 20.028952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.858353, 32.144264, 20.134838>,  <43.000496, 31.814642, 20.311316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858353, 32.144264, 20.134838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733652, 0.046585, 0.677926,
		0.579203, 0.564588, 0.588017,
		-0.355357, 0.824057, -0.441194,
		42.751747, 32.391479, 20.002480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905815, 32.330391, 20.886343>,  <43.000496, 31.814642, 20.311316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905815, 32.330391, 20.886343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.664478, 32.428329, 20.582756>,  <42.519676, 32.487091, 20.400604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.664478, 32.428329, 20.582756>,  <42.905815, 32.330391, 20.886343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664478, 32.428329, 20.582756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789355, -0.047816, 0.612072,
		0.113572, 0.968382, 0.222120,
		-0.603341, 0.244846, -0.758967,
		42.483475, 32.501781, 20.355066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496380, 32.871319, 21.173233>,  <42.905815, 32.330391, 20.886343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496380, 32.871319, 21.173233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.265118, 32.773087, 20.861996>,  <42.126362, 32.714146, 20.675253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.265118, 32.773087, 20.861996>,  <42.496380, 32.871319, 21.173233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265118, 32.773087, 20.861996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815796, 0.156700, 0.556707,
		-0.014789, 0.956627, -0.290939,
		-0.578151, -0.245580, -0.778095,
		42.091671, 32.699413, 20.628567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882862, 33.223518, 21.253769>,  <42.496380, 32.871319, 21.173233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882862, 33.223518, 21.253769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.759258, 32.938156, 21.002193>,  <41.685097, 32.766937, 20.851248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.759258, 32.938156, 21.002193>,  <41.882862, 33.223518, 21.253769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759258, 32.938156, 21.002193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892639, -0.010647, 0.450646,
		-0.328190, 0.700670, -0.633524,
		-0.309009, -0.713406, -0.628939,
		41.666557, 32.724133, 20.813511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262337, 33.474388, 21.045013>,  <41.882862, 33.223518, 21.253769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262337, 33.474388, 21.045013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.253380, 33.091763, 20.928749>,  <41.248005, 32.862186, 20.858990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.253380, 33.091763, 20.928749>,  <41.262337, 33.474388, 21.045013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253380, 33.091763, 20.928749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894659, -0.110584, 0.432847,
		-0.446188, 0.269733, -0.853323,
		-0.022390, -0.956564, -0.290660,
		41.246662, 32.804794, 20.841551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653336, 33.371002, 20.735151>,  <41.262337, 33.474388, 21.045013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653336, 33.371002, 20.735151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.750221, 33.003330, 20.859367>,  <40.808353, 32.782726, 20.933897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.750221, 33.003330, 20.859367>,  <40.653336, 33.371002, 20.735151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750221, 33.003330, 20.859367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881628, -0.074897, 0.465965,
		-0.405049, -0.386643, -0.828518,
		0.242215, -0.919183, 0.310538,
		40.822887, 32.727573, 20.952528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856789, 33.347889, 20.393991>,  <40.653336, 33.371002, 20.735151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856789, 33.347889, 20.393991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.580215, 33.415211, 20.112965>,  <39.414272, 33.455605, 19.944349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.580215, 33.415211, 20.112965>,  <39.856789, 33.347889, 20.393991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580215, 33.415211, 20.112965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712315, -0.003446, -0.701851,
		-0.120549, -0.985728, -0.117507,
		-0.691430, 0.168309, -0.702565,
		39.372787, 33.465702, 19.902195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010231, 32.900543, 19.909168>,  <39.856789, 33.347889, 20.393991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010231, 32.900543, 19.909168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.809692, 33.198971, 19.733887>,  <39.689369, 33.378029, 19.628717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.809692, 33.198971, 19.733887>,  <40.010231, 32.900543, 19.909168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809692, 33.198971, 19.733887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716975, 0.074713, -0.693083,
		-0.484351, -0.661659, -0.572374,
		-0.501349, 0.746073, -0.438206,
		39.659286, 33.422794, 19.602425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065331, 32.812016, 19.179302>,  <40.010231, 32.900543, 19.909168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065331, 32.812016, 19.179302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.977890, 33.200935, 19.212383>,  <39.925426, 33.434288, 19.232231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.977890, 33.200935, 19.212383>,  <40.065331, 32.812016, 19.179302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977890, 33.200935, 19.212383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647881, 0.207990, -0.732796,
		-0.729702, -0.106608, -0.675404,
		-0.218599, 0.972304, 0.082701,
		39.912312, 33.492626, 19.237194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044121, 32.997108, 18.545351>,  <40.065331, 32.812016, 19.179302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044121, 32.997108, 18.545351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115986, 33.323151, 18.765652>,  <40.159107, 33.518776, 18.897833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115986, 33.323151, 18.765652>,  <40.044121, 32.997108, 18.545351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115986, 33.323151, 18.765652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511123, 0.401011, -0.760225,
		-0.840520, 0.418088, -0.344570,
		0.179665, 0.815102, 0.550753,
		40.169884, 33.567680, 18.930878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008938, 33.491894, 18.102480>,  <40.044121, 32.997108, 18.545351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008938, 33.491894, 18.102480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.209560, 33.669285, 18.399605>,  <40.329933, 33.775719, 18.577879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.209560, 33.669285, 18.399605>,  <40.008938, 33.491894, 18.102480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209560, 33.669285, 18.399605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669192, 0.345290, -0.657994,
		-0.548289, 0.827107, -0.123587,
		0.501558, 0.443474, 0.742812,
		40.360027, 33.802326, 18.622448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154392, 34.212189, 17.914351>,  <40.008938, 33.491894, 18.102480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154392, 34.212189, 17.914351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.418156, 34.149265, 18.208408>,  <40.576412, 34.111511, 18.384844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.418156, 34.149265, 18.208408>,  <40.154392, 34.212189, 17.914351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418156, 34.149265, 18.208408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698083, 0.491078, -0.521079,
		-0.279045, 0.856795, 0.433632,
		0.659405, -0.157307, 0.735146,
		40.615978, 34.102074, 18.428951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560593, 34.942921, 17.963099>,  <40.154392, 34.212189, 17.914351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560593, 34.942921, 17.963099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.783306, 34.645615, 18.111454>,  <40.916935, 34.467232, 18.200466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.783306, 34.645615, 18.111454>,  <40.560593, 34.942921, 17.963099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783306, 34.645615, 18.111454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804403, 0.371080, -0.463935,
		0.207196, 0.556653, 0.804492,
		0.556782, -0.743261, 0.370887,
		40.950340, 34.422638, 18.222719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308231, 35.152534, 17.921572>,  <40.560593, 34.942921, 17.963099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308231, 35.152534, 17.921572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.376461, 34.764069, 17.988205>,  <41.417400, 34.530991, 18.028185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.376461, 34.764069, 17.988205>,  <41.308231, 35.152534, 17.921572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376461, 34.764069, 17.988205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843020, 0.056315, -0.534927,
		0.510119, 0.231681, 0.828313,
		0.170579, -0.971161, 0.166584,
		41.427635, 34.472721, 18.038179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005569, 35.119823, 18.151827>,  <41.308231, 35.152534, 17.921572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005569, 35.119823, 18.151827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.911434, 34.767971, 17.986485>,  <41.854954, 34.556858, 17.887280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.911434, 34.767971, 17.986485>,  <42.005569, 35.119823, 18.151827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911434, 34.767971, 17.986485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848123, 0.021838, -0.529349,
		0.474660, -0.475153, 0.740897,
		-0.235342, -0.879632, -0.413353,
		41.840832, 34.504082, 17.862478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612553, 34.741421, 18.267420>,  <42.005569, 35.119823, 18.151827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612553, 34.741421, 18.267420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.408016, 34.579899, 17.963982>,  <42.285294, 34.482986, 17.781918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.408016, 34.579899, 17.963982>,  <42.612553, 34.741421, 18.267420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408016, 34.579899, 17.963982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817867, 0.042370, -0.573845,
		0.263865, -0.913862, 0.308597,
		-0.511340, -0.403809, -0.758597,
		42.254616, 34.458755, 17.736403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128475, 34.238243, 17.945107>,  <42.612553, 34.741421, 18.267420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128475, 34.238243, 17.945107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.856548, 34.305328, 17.659527>,  <42.693394, 34.345577, 17.488178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.856548, 34.305328, 17.659527>,  <43.128475, 34.238243, 17.945107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856548, 34.305328, 17.659527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715853, -0.059836, -0.695682,
		-0.159393, -0.984019, -0.079379,
		-0.679815, 0.167711, -0.713950,
		42.652603, 34.355640, 17.445341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207355, 33.732117, 17.430161>,  <43.128475, 34.238243, 17.945107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207355, 33.732117, 17.430161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.009712, 34.023247, 17.239952>,  <42.891125, 34.197926, 17.125828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.009712, 34.023247, 17.239952>,  <43.207355, 33.732117, 17.430161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009712, 34.023247, 17.239952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726437, 0.045135, -0.685750,
		-0.477646, -0.684271, -0.551023,
		-0.494109, 0.727830, -0.475521,
		42.861481, 34.241596, 17.097296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414085, 33.665051, 16.795252>,  <43.207355, 33.732117, 17.430161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414085, 33.665051, 16.795252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.257202, 34.032578, 16.777641>,  <43.163071, 34.253094, 16.767075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.257202, 34.032578, 16.777641>,  <43.414085, 33.665051, 16.795252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257202, 34.032578, 16.777641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757832, 0.295623, -0.581633,
		-0.521401, -0.261488, -0.812259,
		-0.392213, 0.918820, -0.044026,
		43.139538, 34.308224, 16.764433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371342, 33.737980, 16.141886>,  <43.414085, 33.665051, 16.795252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371342, 33.737980, 16.141886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.355839, 34.104687, 16.300900>,  <43.346535, 34.324711, 16.396307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.355839, 34.104687, 16.300900>,  <43.371342, 33.737980, 16.141886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355839, 34.104687, 16.300900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557861, 0.349917, -0.752562,
		-0.829029, 0.192598, -0.524993,
		-0.038762, 0.916768, 0.397534,
		43.344212, 34.379719, 16.420160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024635, 34.194515, 15.673656>,  <43.371342, 33.737980, 16.141886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024635, 34.194515, 15.673656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.256180, 34.413372, 15.915498>,  <43.395107, 34.544685, 16.060602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.256180, 34.413372, 15.915498>,  <43.024635, 34.194515, 15.673656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256180, 34.413372, 15.915498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646187, 0.144434, -0.749387,
		-0.497350, 0.824482, -0.269951,
		0.578866, 0.547146, 0.604603,
		43.429840, 34.577515, 16.096878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232117, 34.793270, 15.297447>,  <43.024635, 34.194515, 15.673656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232117, 34.793270, 15.297447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.479115, 34.809040, 15.611682>,  <43.627312, 34.818501, 15.800222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.479115, 34.809040, 15.611682>,  <43.232117, 34.793270, 15.297447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479115, 34.809040, 15.611682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743843, 0.295443, -0.599509,
		-0.255730, 0.954547, 0.153110,
		0.617495, 0.039423, 0.785586,
		43.664364, 34.820866, 15.847358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503365, 35.432293, 15.168573>,  <43.232117, 34.793270, 15.297447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503365, 35.432293, 15.168573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.771194, 35.248505, 15.402003>,  <43.931892, 35.138233, 15.542062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.771194, 35.248505, 15.402003>,  <43.503365, 35.432293, 15.168573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771194, 35.248505, 15.402003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740113, 0.346663, -0.576244,
		0.062460, 0.817750, 0.572174,
		0.669575, -0.459466, 0.583575,
		43.972069, 35.110664, 15.577076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967239, 35.895752, 15.276228>,  <43.503365, 35.432293, 15.168573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967239, 35.895752, 15.276228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.150417, 35.546120, 15.341067>,  <44.260323, 35.336342, 15.379971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.150417, 35.546120, 15.341067>,  <43.967239, 35.895752, 15.276228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150417, 35.546120, 15.341067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700282, 0.242367, -0.671464,
		0.547624, 0.421009, 0.723091,
		0.457946, -0.874077, 0.162099,
		44.287800, 35.283897, 15.389697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.754337, 36.064175, 15.327475>,  <43.967239, 35.895752, 15.276228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.754337, 36.064175, 15.327475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.766502, 35.667202, 15.279885>,  <44.773800, 35.429020, 15.251331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.766502, 35.667202, 15.279885>,  <44.754337, 36.064175, 15.327475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766502, 35.667202, 15.279885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774904, 0.098594, -0.624342,
		0.631347, -0.073204, 0.772038,
		0.030414, -0.992432, -0.118973,
		44.775627, 35.369473, 15.244193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.558285, 35.763023, 15.471170>,  <44.754337, 36.064175, 15.327475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.558285, 35.763023, 15.471170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.324425, 35.542198, 15.233377>,  <45.184109, 35.409702, 15.090700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.324425, 35.542198, 15.233377>,  <45.558285, 35.763023, 15.471170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324425, 35.542198, 15.233377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709492, 0.007451, -0.704674,
		0.393454, -0.833769, 0.387328,
		-0.584650, -0.552063, -0.594484,
		45.149029, 35.376579, 15.055032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862305, 35.026569, 15.192202>,  <45.558285, 35.763023, 15.471170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862305, 35.026569, 15.192202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.616833, 35.214016, 14.938022>,  <45.469551, 35.326485, 14.785514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.616833, 35.214016, 14.938022>,  <45.862305, 35.026569, 15.192202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.616833, 35.214016, 14.938022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691238, -0.070058, -0.719223,
		-0.381557, -0.880620, -0.280931,
		-0.613681, 0.468615, -0.635450,
		45.432728, 35.354599, 14.747387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.181808, 29.168388, 30.289816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.526390, 29.066010, 30.114368>,  <29.733139, 29.004581, 30.009100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.526390, 29.066010, 30.114368>,  <29.181808, 29.168388, 30.289816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526390, 29.066010, 30.114368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022350, -0.843760, 0.536255,
		-0.507344, -0.471762, -0.721140,
		0.861454, -0.255948, -0.438620,
		29.784826, 28.989225, 29.982782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152834, 28.416971, 30.035997>,  <29.181808, 29.168388, 30.289816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152834, 28.416971, 30.035997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.548130, 28.477268, 30.046272>,  <29.785307, 28.513447, 30.052437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.548130, 28.477268, 30.046272>,  <29.152834, 28.416971, 30.035997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548130, 28.477268, 30.046272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085811, -0.685730, 0.722780,
		0.126571, -0.712075, -0.690600,
		0.988239, 0.150744, 0.025689,
		29.844603, 28.522491, 30.053980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447836, 27.654964, 30.007774>,  <29.152834, 28.416971, 30.035997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447836, 27.654964, 30.007774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.711727, 27.922878, 30.144096>,  <29.870062, 28.083628, 30.225889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.711727, 27.922878, 30.144096>,  <29.447836, 27.654964, 30.007774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711727, 27.922878, 30.144096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284737, -0.642464, 0.711453,
		0.695475, -0.372325, -0.614564,
		0.659727, 0.669787, 0.340803,
		29.909645, 28.123814, 30.246338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041389, 27.301769, 29.974993>,  <29.447836, 27.654964, 30.007774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041389, 27.301769, 29.974993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.064341, 27.595112, 30.245960>,  <30.078112, 27.771116, 30.408541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.064341, 27.595112, 30.245960>,  <30.041389, 27.301769, 29.974993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064341, 27.595112, 30.245960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338990, -0.652536, 0.677704,
		0.939039, 0.190754, -0.286041,
		0.057377, 0.733355, 0.677420,
		30.081554, 27.815119, 30.449186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738922, 27.236139, 30.300032>,  <30.041389, 27.301769, 29.974993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738922, 27.236139, 30.300032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.521282, 27.452663, 30.556450>,  <30.390697, 27.582577, 30.710300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.521282, 27.452663, 30.556450>,  <30.738922, 27.236139, 30.300032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521282, 27.452663, 30.556450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347286, -0.550216, 0.759378,
		0.763772, 0.635804, 0.111384,
		-0.544101, 0.541309, 0.641045,
		30.358051, 27.615057, 30.748764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257841, 27.409435, 30.912985>,  <30.738922, 27.236139, 30.300032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257841, 27.409435, 30.912985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.881405, 27.461800, 31.037701>,  <30.655542, 27.493219, 31.112530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.881405, 27.461800, 31.037701>,  <31.257841, 27.409435, 30.912985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881405, 27.461800, 31.037701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237616, -0.400016, 0.885170,
		0.240599, 0.907110, 0.345344,
		-0.941090, 0.130912, 0.311788,
		30.599077, 27.501074, 31.131237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323044, 27.770189, 31.591251>,  <31.257841, 27.409435, 30.912985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323044, 27.770189, 31.591251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.951405, 27.624043, 31.568314>,  <30.728422, 27.536354, 31.554550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.951405, 27.624043, 31.568314>,  <31.323044, 27.770189, 31.591251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951405, 27.624043, 31.568314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093947, -0.383125, 0.918906,
		-0.357708, 0.848365, 0.390285,
		-0.929096, -0.365366, -0.057345,
		30.672676, 27.514433, 31.551109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002304, 28.008348, 32.236267>,  <31.323044, 27.770189, 31.591251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002304, 28.008348, 32.236267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.797312, 27.693993, 32.097851>,  <30.674316, 27.505379, 32.014801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.797312, 27.693993, 32.097851>,  <31.002304, 28.008348, 32.236267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797312, 27.693993, 32.097851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172328, -0.488908, 0.855145,
		-0.841229, 0.378613, 0.385987,
		-0.512481, -0.785889, -0.346038,
		30.643568, 27.458225, 31.994040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470552, 27.966722, 32.646538>,  <31.002304, 28.008348, 32.236267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470552, 27.966722, 32.646538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.474815, 27.598518, 32.490307>,  <30.477373, 27.377596, 32.396568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.474815, 27.598518, 32.490307>,  <30.470552, 27.966722, 32.646538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474815, 27.598518, 32.490307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108332, -0.389364, 0.914691,
		-0.994058, 0.032564, -0.103870,
		0.010658, -0.920508, -0.390577,
		30.478012, 27.322367, 32.373135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947105, 27.624205, 32.995846>,  <30.470552, 27.966722, 32.646538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947105, 27.624205, 32.995846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.173103, 27.336140, 32.834778>,  <30.308702, 27.163300, 32.738136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.173103, 27.336140, 32.834778>,  <29.947105, 27.624205, 32.995846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173103, 27.336140, 32.834778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048360, -0.458290, 0.887486,
		-0.823677, -0.520897, -0.224104,
		0.564993, -0.720164, -0.402674,
		30.342602, 27.120090, 32.713974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564013, 26.818043, 32.993671>,  <29.947105, 27.624205, 32.995846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564013, 26.818043, 32.993671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.961187, 26.773037, 32.978626>,  <30.199492, 26.746033, 32.969597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.961187, 26.773037, 32.978626>,  <29.564013, 26.818043, 32.993671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961187, 26.773037, 32.978626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038939, -0.608585, 0.792533,
		-0.112064, -0.785471, -0.608668,
		0.992938, -0.112515, -0.037615,
		30.259069, 26.739283, 32.967342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719990, 26.085653, 33.094566>,  <29.564013, 26.818043, 32.993671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719990, 26.085653, 33.094566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.060293, 26.284012, 33.164192>,  <30.264475, 26.403027, 33.205967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.060293, 26.284012, 33.164192>,  <29.719990, 26.085653, 33.094566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060293, 26.284012, 33.164192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139328, -0.532165, 0.835098,
		0.506753, -0.686213, -0.521836,
		0.850758, 0.495895, 0.174068,
		30.315521, 26.432781, 33.216412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108421, 25.587515, 33.412407>,  <29.719990, 26.085653, 33.094566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108421, 25.587515, 33.412407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.317015, 25.914509, 33.510201>,  <30.442171, 26.110704, 33.568878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.317015, 25.914509, 33.510201>,  <30.108421, 25.587515, 33.412407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317015, 25.914509, 33.510201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252581, -0.421587, 0.870900,
		0.815019, -0.392408, -0.426332,
		0.521485, 0.817484, 0.244486,
		30.473459, 26.159754, 33.583546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756769, 25.409868, 32.908249>,  <30.108421, 25.587515, 33.412407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756769, 25.409868, 32.908249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093792, 25.521019, 33.092804>,  <31.296005, 25.587709, 33.203537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093792, 25.521019, 33.092804>,  <30.756769, 25.409868, 32.908249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093792, 25.521019, 33.092804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499629, 0.083293, 0.862226,
		0.201167, -0.956997, 0.209017,
		0.842557, 0.277882, 0.461387,
		31.346560, 25.604382, 33.231220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170643, 25.094004, 32.463570>,  <30.756769, 25.409868, 32.908249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170643, 25.094004, 32.463570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.380693, 24.767975, 32.365669>,  <30.506723, 24.572357, 32.306931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.380693, 24.767975, 32.365669>,  <30.170643, 25.094004, 32.463570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380693, 24.767975, 32.365669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028617, 0.304341, -0.952133,
		0.850542, 0.492988, 0.183143,
		0.525128, -0.815070, -0.244747,
		30.538233, 24.523455, 32.292244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736794, 25.375341, 32.141056>,  <30.170643, 25.094004, 32.463570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736794, 25.375341, 32.141056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.710318, 24.996037, 32.016850>,  <30.694433, 24.768454, 31.942326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.710318, 24.996037, 32.016850>,  <30.736794, 25.375341, 32.141056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710318, 24.996037, 32.016850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001941, 0.311078, -0.950382,
		0.997805, -0.063507, -0.018750,
		-0.066189, -0.948260, -0.310519,
		30.690460, 24.711559, 31.923695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271450, 25.351339, 31.709131>,  <30.736794, 25.375341, 32.141056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271450, 25.351339, 31.709131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.027594, 25.047146, 31.619690>,  <30.881279, 24.864630, 31.566025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.027594, 25.047146, 31.619690>,  <31.271450, 25.351339, 31.709131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027594, 25.047146, 31.619690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002428, 0.280294, -0.959911,
		0.792673, -0.585745, -0.169033,
		-0.609642, -0.760486, -0.223604,
		30.844702, 24.819000, 31.552608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570396, 25.005718, 31.136730>,  <31.271450, 25.351339, 31.709131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570396, 25.005718, 31.136730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.178255, 24.927402, 31.146313>,  <30.942970, 24.880413, 31.152061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.178255, 24.927402, 31.146313>,  <31.570396, 25.005718, 31.136730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178255, 24.927402, 31.146313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081831, 0.293194, -0.952544,
		0.179473, -0.935791, -0.303455,
		-0.980354, -0.195788, 0.023956,
		30.884150, 24.868666, 31.153500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480877, 24.624813, 30.509594>,  <31.570396, 25.005718, 31.136730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480877, 24.624813, 30.509594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.121851, 24.757389, 30.625889>,  <30.906435, 24.836935, 30.695665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.121851, 24.757389, 30.625889>,  <31.480877, 24.624813, 30.509594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121851, 24.757389, 30.625889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191808, 0.300213, -0.934388,
		-0.396977, -0.894438, -0.205888,
		-0.897563, 0.331439, 0.290738,
		30.852583, 24.856821, 30.713110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134014, 24.372398, 29.993221>,  <31.480877, 24.624813, 30.509594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134014, 24.372398, 29.993221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.907722, 24.660767, 30.153332>,  <30.771948, 24.833788, 30.249397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.907722, 24.660767, 30.153332>,  <31.134014, 24.372398, 29.993221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907722, 24.660767, 30.153332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323929, 0.252102, -0.911874,
		-0.758300, -0.645537, 0.090905,
		-0.565731, 0.720921, 0.400277,
		30.738003, 24.877043, 30.273415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524488, 24.341499, 29.660879>,  <31.134014, 24.372398, 29.993221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524488, 24.341499, 29.660879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530575, 24.715141, 29.803547>,  <30.534227, 24.939327, 29.889149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530575, 24.715141, 29.803547>,  <30.524488, 24.341499, 29.660879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530575, 24.715141, 29.803547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303136, 0.344234, -0.888601,
		-0.952826, -0.094598, 0.288400,
		0.015217, 0.934106, 0.356671,
		30.535139, 24.995373, 29.910547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881876, 24.595016, 29.459820>,  <30.524488, 24.341499, 29.660879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881876, 24.595016, 29.459820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.091173, 24.927647, 29.534328>,  <30.216751, 25.127226, 29.579033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.091173, 24.927647, 29.534328>,  <29.881876, 24.595016, 29.459820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091173, 24.927647, 29.534328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332672, 0.400560, -0.853745,
		-0.784567, 0.384749, 0.486233,
		0.523244, 0.831576, 0.186271,
		30.248146, 25.177120, 29.590210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468819, 25.138229, 29.171686>,  <29.881876, 24.595016, 29.459820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468819, 25.138229, 29.171686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.829208, 25.303551, 29.224495>,  <30.045443, 25.402742, 29.256180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.829208, 25.303551, 29.224495>,  <29.468819, 25.138229, 29.171686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829208, 25.303551, 29.224495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111100, 0.513907, -0.850621,
		-0.419410, 0.751719, 0.508934,
		0.900973, 0.413302, 0.132022,
		30.099501, 25.427542, 29.264101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394421, 25.899717, 29.204918>,  <29.468819, 25.138229, 29.171686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394421, 25.899717, 29.204918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.769049, 25.806076, 29.100586>,  <29.993826, 25.749891, 29.037987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.769049, 25.806076, 29.100586>,  <29.394421, 25.899717, 29.204918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769049, 25.806076, 29.100586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075094, 0.592886, -0.801778,
		0.342340, 0.770508, 0.537700,
		0.936571, -0.234103, -0.260829,
		30.050020, 25.735846, 29.022337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646168, 26.449337, 29.053690>,  <29.394421, 25.899717, 29.204918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646168, 26.449337, 29.053690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.911406, 26.202213, 28.884636>,  <30.070549, 26.053940, 28.783203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.911406, 26.202213, 28.884636>,  <29.646168, 26.449337, 29.053690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911406, 26.202213, 28.884636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037770, 0.536279, -0.843195,
		0.747583, 0.575080, 0.332269,
		0.663094, -0.617809, -0.422634,
		30.110334, 26.016870, 28.757845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178524, 26.858444, 28.845713>,  <29.646168, 26.449337, 29.053690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178524, 26.858444, 28.845713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.219608, 26.515358, 28.644207>,  <30.244259, 26.309507, 28.523304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.219608, 26.515358, 28.644207>,  <30.178524, 26.858444, 28.845713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219608, 26.515358, 28.644207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054221, 0.510517, -0.858157,
		0.993233, 0.060826, 0.098941,
		0.102709, -0.857714, -0.503764,
		30.250422, 26.258043, 28.493078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838806, 26.961420, 28.413975>,  <30.178524, 26.858444, 28.845713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838806, 26.961420, 28.413975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.598198, 26.681503, 28.259850>,  <30.453833, 26.513554, 28.167374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.598198, 26.681503, 28.259850>,  <30.838806, 26.961420, 28.413975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598198, 26.681503, 28.259850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091005, 0.419162, -0.903339,
		0.793659, -0.578440, -0.188449,
		-0.601518, -0.699793, -0.385313,
		30.417742, 26.471565, 28.144257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151209, 26.673346, 27.835602>,  <30.838806, 26.961420, 28.413975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151209, 26.673346, 27.835602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.757015, 26.616203, 27.798916>,  <30.520498, 26.581919, 27.776903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.757015, 26.616203, 27.798916>,  <31.151209, 26.673346, 27.835602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757015, 26.616203, 27.798916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004498, 0.518097, -0.855310,
		0.169703, -0.843308, -0.509935,
		-0.985485, -0.142855, -0.091716,
		30.461370, 26.573347, 27.771400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784655, 26.266867, 27.819122>,  <31.151209, 26.673346, 27.835602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784655, 26.266867, 27.819122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132675, 26.249828, 27.622677>,  <32.341488, 26.239605, 27.504808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132675, 26.249828, 27.622677>,  <31.784655, 26.266867, 27.819122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132675, 26.249828, 27.622677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334996, -0.679785, 0.652434,
		-0.361644, -0.732174, -0.577179,
		0.870052, -0.042597, -0.491115,
		32.393692, 26.237049, 27.475342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936026, 25.652412, 27.818638>,  <31.784655, 26.266867, 27.819122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936026, 25.652412, 27.818638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293255, 25.821972, 27.758335>,  <32.507591, 25.923708, 27.722153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293255, 25.821972, 27.758335>,  <31.936026, 25.652412, 27.818638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293255, 25.821972, 27.758335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391654, -0.567585, 0.724192,
		0.221418, -0.705801, -0.672918,
		0.893074, 0.423900, -0.150756,
		32.561176, 25.949142, 27.713108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307800, 25.124010, 27.802456>,  <31.936026, 25.652412, 27.818638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307800, 25.124010, 27.802456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566242, 25.422470, 27.866718>,  <32.721306, 25.601545, 27.905275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566242, 25.422470, 27.866718>,  <32.307800, 25.124010, 27.802456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566242, 25.422470, 27.866718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350448, -0.477006, 0.806010,
		0.678037, -0.464466, -0.569682,
		0.646106, 0.746148, 0.160656,
		32.760075, 25.646315, 27.914915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947357, 24.863869, 27.837515>,  <32.307800, 25.124010, 27.802456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947357, 24.863869, 27.837515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952793, 25.197914, 28.057480>,  <32.956055, 25.398340, 28.189459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952793, 25.197914, 28.057480>,  <32.947357, 24.863869, 27.837515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952793, 25.197914, 28.057480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322490, -0.524235, 0.788148,
		0.946475, 0.166629, -0.276440,
		0.013591, 0.835112, 0.549912,
		32.956871, 25.448448, 28.222454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409798, 24.646706, 28.368383>,  <32.947357, 24.863869, 27.837515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409798, 24.646706, 28.368383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223419, 24.975475, 28.499432>,  <33.111591, 25.172737, 28.578060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223419, 24.975475, 28.499432>,  <33.409798, 24.646706, 28.368383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223419, 24.975475, 28.499432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135024, -0.299884, 0.944372,
		0.874451, 0.484260, 0.028750,
		-0.465943, 0.821925, 0.327621,
		33.083637, 25.222054, 28.597717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852386, 24.789339, 28.915785>,  <33.409798, 24.646706, 28.368383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852386, 24.789339, 28.915785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505657, 24.978806, 28.978085>,  <33.297619, 25.092485, 29.015465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505657, 24.978806, 28.978085>,  <33.852386, 24.789339, 28.915785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505657, 24.978806, 28.978085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113679, -0.116397, 0.986676,
		0.485481, 0.872980, 0.047050,
		-0.866825, 0.473664, 0.155748,
		33.245609, 25.120905, 29.024809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964161, 25.293116, 29.413630>,  <33.852386, 24.789339, 28.915785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964161, 25.293116, 29.413630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.574574, 25.211563, 29.453274>,  <33.340820, 25.162632, 29.477060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.574574, 25.211563, 29.453274>,  <33.964161, 25.293116, 29.413630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574574, 25.211563, 29.453274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173023, -0.386076, 0.906095,
		-0.146471, 0.899654, 0.411301,
		-0.973966, -0.203881, 0.099112,
		33.282383, 25.150398, 29.483007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276546, 25.983023, 29.643688>,  <33.964161, 25.293116, 29.413630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276546, 25.983023, 29.643688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637295, 26.091297, 29.778366>,  <34.853745, 26.156261, 29.859173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637295, 26.091297, 29.778366>,  <34.276546, 25.983023, 29.643688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637295, 26.091297, 29.778366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004070, 0.784653, -0.619921,
		-0.431993, 0.557717, 0.708755,
		0.901868, 0.270686, 0.336695,
		34.907856, 26.172503, 29.879375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198269, 26.678722, 29.897736>,  <34.276546, 25.983023, 29.643688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198269, 26.678722, 29.897736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591526, 26.640369, 29.835453>,  <34.827480, 26.617357, 29.798084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591526, 26.640369, 29.835453>,  <34.198269, 26.678722, 29.897736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591526, 26.640369, 29.835453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008196, 0.827543, -0.561342,
		0.182677, 0.553154, 0.812804,
		0.983139, -0.095883, -0.155706,
		34.886467, 26.611605, 29.788740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438015, 27.282887, 30.032286>,  <34.198269, 26.678722, 29.897736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438015, 27.282887, 30.032286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722759, 27.117596, 29.805130>,  <34.893604, 27.018421, 29.668837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722759, 27.117596, 29.805130>,  <34.438015, 27.282887, 30.032286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722759, 27.117596, 29.805130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014996, 0.799464, -0.600527,
		0.702161, 0.436008, 0.562910,
		0.711860, -0.413226, -0.567890,
		34.936317, 26.993628, 29.634764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881130, 27.763479, 29.860254>,  <34.438015, 27.282887, 30.032286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881130, 27.763479, 29.860254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966187, 27.491055, 29.579987>,  <35.017220, 27.327600, 29.411825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966187, 27.491055, 29.579987>,  <34.881130, 27.763479, 29.860254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966187, 27.491055, 29.579987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029431, 0.721207, -0.692094,
		0.976686, 0.126548, 0.173404,
		0.212644, -0.681062, -0.700669,
		35.029980, 27.286736, 29.369785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273121, 28.120893, 29.460804>,  <34.881130, 27.763479, 29.860254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273121, 28.120893, 29.460804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156349, 27.822498, 29.221378>,  <35.086285, 27.643461, 29.077723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156349, 27.822498, 29.221378>,  <35.273121, 28.120893, 29.460804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156349, 27.822498, 29.221378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054480, 0.637779, -0.768291,
		0.954887, -0.191677, -0.226828,
		-0.291930, -0.745988, -0.598564,
		35.068771, 27.598701, 29.041809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759888, 28.082649, 28.842197>,  <35.273121, 28.120893, 29.460804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759888, 28.082649, 28.842197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396938, 27.936508, 28.759060>,  <35.179169, 27.848824, 28.709177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396938, 27.936508, 28.759060>,  <35.759888, 28.082649, 28.842197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396938, 27.936508, 28.759060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050213, 0.585142, -0.809375,
		0.417325, -0.723966, -0.549285,
		-0.907369, -0.365353, -0.207842,
		35.124729, 27.826902, 28.696707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779282, 27.990646, 28.141119>,  <35.759888, 28.082649, 28.842197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779282, 27.990646, 28.141119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382915, 27.981335, 28.194088>,  <35.145096, 27.975748, 28.225870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382915, 27.981335, 28.194088>,  <35.779282, 27.990646, 28.141119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382915, 27.981335, 28.194088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119668, 0.601705, -0.789703,
		-0.061296, -0.798379, -0.599027,
		-0.990920, -0.023279, 0.132423,
		35.085640, 27.974352, 28.233814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.153141, 27.578650, 34.835594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.905922, 27.419464, 34.564404>,  <32.757591, 27.323954, 34.401691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.905922, 27.419464, 34.564404>,  <33.153141, 27.578650, 34.835594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905922, 27.419464, 34.564404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135225, 0.903367, -0.406992,
		0.774426, -0.159860, -0.612134,
		-0.618044, -0.397961, -0.677974,
		32.720509, 27.300076, 34.361012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391785, 27.672457, 34.036720>,  <33.153141, 27.578650, 34.835594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391785, 27.672457, 34.036720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.995014, 27.643261, 34.078205>,  <32.756950, 27.625744, 34.103096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.995014, 27.643261, 34.078205>,  <33.391785, 27.672457, 34.036720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995014, 27.643261, 34.078205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121549, 0.780505, -0.613219,
		-0.036193, -0.620874, -0.783074,
		-0.991925, -0.072988, 0.103716,
		32.697437, 27.621365, 34.109322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222698, 27.576605, 33.397415>,  <33.391785, 27.672457, 34.036720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222698, 27.576605, 33.397415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896427, 27.719009, 33.579811>,  <32.700665, 27.804453, 33.689247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896427, 27.719009, 33.579811>,  <33.222698, 27.576605, 33.397415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896427, 27.719009, 33.579811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112359, 0.675711, -0.728553,
		-0.567488, -0.645500, -0.511162,
		-0.815679, 0.356012, 0.455986,
		32.651722, 27.825813, 33.716606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838161, 27.810333, 32.806885>,  <33.222698, 27.576605, 33.397415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838161, 27.810333, 32.806885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.650494, 27.982746, 33.115192>,  <32.537891, 28.086195, 33.300179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.650494, 27.982746, 33.115192>,  <32.838161, 27.810333, 32.806885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650494, 27.982746, 33.115192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128381, 0.830233, -0.542431,
		-0.873728, -0.353443, -0.334182,
		-0.469168, 0.431034, 0.770773,
		32.509743, 28.112057, 33.346424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138874, 28.039516, 32.575832>,  <32.838161, 27.810333, 32.806885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138874, 28.039516, 32.575832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.249989, 28.254509, 32.894314>,  <32.316658, 28.383505, 33.085403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.249989, 28.254509, 32.894314>,  <32.138874, 28.039516, 32.575832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249989, 28.254509, 32.894314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085180, 0.839345, -0.536884,
		-0.956859, 0.081318, 0.278940,
		0.277785, 0.537483, 0.796208,
		32.333324, 28.415754, 33.133175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629061, 28.497341, 32.707249>,  <32.138874, 28.039516, 32.575832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629061, 28.497341, 32.707249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.952894, 28.642609, 32.891720>,  <32.147194, 28.729769, 33.002403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.952894, 28.642609, 32.891720>,  <31.629061, 28.497341, 32.707249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952894, 28.642609, 32.891720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036434, 0.815216, -0.578010,
		-0.585871, 0.451146, 0.673218,
		0.809585, 0.363167, 0.461174,
		32.195770, 28.751558, 33.030071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504143, 29.149111, 32.809361>,  <31.629061, 28.497341, 32.707249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504143, 29.149111, 32.809361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.903452, 29.126133, 32.814350>,  <32.143036, 29.112347, 32.817345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.903452, 29.126133, 32.814350>,  <31.504143, 29.149111, 32.809361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903452, 29.126133, 32.814350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054571, 0.826672, -0.560032,
		0.021858, 0.559745, 0.828377,
		0.998271, -0.057446, 0.012476,
		32.202934, 29.108898, 32.818092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693989, 29.824057, 32.513485>,  <31.504143, 29.149111, 32.809361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693989, 29.824057, 32.513485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.052315, 29.646461, 32.521400>,  <32.267311, 29.539904, 32.526150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.052315, 29.646461, 32.521400>,  <31.693989, 29.824057, 32.513485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052315, 29.646461, 32.521400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372104, 0.724940, -0.579655,
		0.243017, 0.526626, 0.814621,
		0.895813, -0.443990, 0.019787,
		32.321060, 29.513264, 32.527336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145412, 30.297194, 32.524715>,  <31.693989, 29.824057, 32.513485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145412, 30.297194, 32.524715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.349083, 29.984432, 32.380848>,  <32.471287, 29.796776, 32.294525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.349083, 29.984432, 32.380848>,  <32.145412, 30.297194, 32.524715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349083, 29.984432, 32.380848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318427, 0.559393, -0.765300,
		0.799590, 0.275143, 0.533809,
		0.509176, -0.781905, -0.359672,
		32.501835, 29.749861, 32.272945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845165, 30.517143, 32.481564>,  <32.145412, 30.297194, 32.524715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845165, 30.517143, 32.481564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.800362, 30.211227, 32.227776>,  <32.773479, 30.027678, 32.075504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.800362, 30.211227, 32.227776>,  <32.845165, 30.517143, 32.481564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800362, 30.211227, 32.227776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372458, 0.559628, -0.740332,
		0.921265, -0.319234, 0.222171,
		-0.112006, -0.764791, -0.634467,
		32.766758, 29.981791, 32.037434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442596, 30.527981, 31.986877>,  <32.845165, 30.517143, 32.481564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442596, 30.527981, 31.986877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.182461, 30.289852, 31.798134>,  <33.026379, 30.146975, 31.684889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.182461, 30.289852, 31.798134>,  <33.442596, 30.527981, 31.986877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182461, 30.289852, 31.798134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323042, 0.345456, -0.881081,
		0.687532, -0.725433, -0.032350,
		-0.650341, -0.595321, -0.471857,
		32.987358, 30.111256, 31.656576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796551, 30.436277, 31.416924>,  <33.442596, 30.527981, 31.986877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796551, 30.436277, 31.416924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.431065, 30.320816, 31.302513>,  <33.211773, 30.251539, 31.233868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.431065, 30.320816, 31.302513>,  <33.796551, 30.436277, 31.416924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431065, 30.320816, 31.302513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174151, 0.357800, -0.917415,
		0.367168, -0.888060, -0.276653,
		-0.913706, -0.288666, -0.286030,
		33.156952, 30.234221, 31.216705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136803, 29.799065, 31.166153>,  <33.796551, 30.436277, 31.416924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136803, 29.799065, 31.166153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.531319, 29.748562, 31.123642>,  <34.768028, 29.718260, 31.098135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.531319, 29.748562, 31.123642>,  <34.136803, 29.799065, 31.166153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531319, 29.748562, 31.123642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023637, -0.745424, 0.666172,
		-0.163330, -0.654525, -0.738187,
		0.986288, -0.126255, -0.106279,
		34.827206, 29.710686, 31.091759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335007, 29.066805, 30.946840>,  <34.136803, 29.799065, 31.166153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335007, 29.066805, 30.946840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.656982, 29.213028, 31.133789>,  <34.850166, 29.300762, 31.245958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.656982, 29.213028, 31.133789>,  <34.335007, 29.066805, 30.946840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656982, 29.213028, 31.133789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026294, -0.764929, 0.643578,
		0.592772, -0.530331, -0.606110,
		0.804941, 0.365558, 0.467373,
		34.898464, 29.322695, 31.274000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980049, 28.518938, 30.955223>,  <34.335007, 29.066805, 30.946840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980049, 28.518938, 30.955223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.064751, 28.755978, 31.266090>,  <35.115570, 28.898201, 31.452610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.064751, 28.755978, 31.266090>,  <34.980049, 28.518938, 30.955223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064751, 28.755978, 31.266090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047042, -0.800459, 0.597539,
		0.976191, -0.089968, -0.197374,
		0.211749, 0.592597, 0.777169,
		35.128277, 28.933756, 31.499241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526485, 28.177893, 31.329056>,  <34.980049, 28.518938, 30.955223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526485, 28.177893, 31.329056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363010, 28.436405, 31.586830>,  <35.264927, 28.591513, 31.741495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363010, 28.436405, 31.586830>,  <35.526485, 28.177893, 31.329056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363010, 28.436405, 31.586830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095147, -0.732419, 0.674173,
		0.907701, 0.214210, 0.360822,
		-0.408688, 0.646279, 0.644436,
		35.240402, 28.630289, 31.780161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903744, 28.066860, 31.978245>,  <35.526485, 28.177893, 31.329056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903744, 28.066860, 31.978245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.563690, 28.260689, 32.060673>,  <35.359657, 28.376986, 32.110130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.563690, 28.260689, 32.060673>,  <35.903744, 28.066860, 31.978245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563690, 28.260689, 32.060673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182157, -0.637818, 0.748336,
		0.494057, 0.598648, 0.630498,
		-0.850133, 0.484570, 0.206071,
		35.308651, 28.406059, 32.122494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998875, 28.240244, 32.664761>,  <35.903744, 28.066860, 31.978245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998875, 28.240244, 32.664761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.605633, 28.262978, 32.595169>,  <35.369686, 28.276617, 32.553413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.605633, 28.262978, 32.595169>,  <35.998875, 28.240244, 32.664761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605633, 28.262978, 32.595169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170460, -0.630421, 0.757306,
		-0.066638, 0.774170, 0.629460,
		-0.983109, 0.056832, -0.173975,
		35.310699, 28.280027, 32.542976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714405, 28.342997, 33.275883>,  <35.998875, 28.240244, 32.664761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714405, 28.342997, 33.275883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.406101, 28.210426, 33.058224>,  <35.221119, 28.130884, 32.927628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.406101, 28.210426, 33.058224>,  <35.714405, 28.342997, 33.275883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406101, 28.210426, 33.058224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221215, -0.661713, 0.716379,
		-0.597495, 0.672526, 0.436703,
		-0.770756, -0.331428, -0.544143,
		35.174873, 28.110998, 32.894981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183430, 28.318546, 33.753441>,  <35.714405, 28.342997, 33.275883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183430, 28.318546, 33.753441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.112804, 28.075630, 33.443596>,  <35.070427, 27.929880, 33.257690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.112804, 28.075630, 33.443596>,  <35.183430, 28.318546, 33.753441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112804, 28.075630, 33.443596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289730, -0.720043, 0.630551,
		-0.940681, 0.335763, -0.048813,
		-0.176568, -0.607290, -0.774611,
		35.059834, 27.893444, 33.211212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552704, 27.985741, 33.863342>,  <35.183430, 28.318546, 33.753441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552704, 27.985741, 33.863342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.779301, 27.767086, 33.616676>,  <34.915260, 27.635893, 33.468678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.779301, 27.767086, 33.616676>,  <34.552704, 27.985741, 33.863342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779301, 27.767086, 33.616676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223539, -0.822196, 0.523473,
		-0.793166, -0.158697, -0.587965,
		0.566496, -0.546634, -0.616663,
		34.949249, 27.603096, 33.431675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176044, 27.410681, 33.886944>,  <34.552704, 27.985741, 33.863342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176044, 27.410681, 33.886944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.509026, 27.293442, 33.698853>,  <34.708817, 27.223099, 33.585999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.509026, 27.293442, 33.698853>,  <34.176044, 27.410681, 33.886944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509026, 27.293442, 33.698853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177360, -0.944941, 0.275009,
		-0.524939, -0.145534, -0.838606,
		0.832456, -0.293098, -0.470224,
		34.758762, 27.205513, 33.557785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034359, 26.731264, 33.588398>,  <34.176044, 27.410681, 33.886944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034359, 26.731264, 33.588398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.426231, 26.760803, 33.662983>,  <34.661354, 26.778526, 33.707733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.426231, 26.760803, 33.662983>,  <34.034359, 26.731264, 33.588398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426231, 26.760803, 33.662983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002178, -0.925772, 0.378077,
		0.200543, -0.370801, -0.906802,
		0.979683, 0.073845, 0.186464,
		34.720135, 26.782957, 33.718922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339329, 26.101021, 33.401024>,  <34.034359, 26.731264, 33.588398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339329, 26.101021, 33.401024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.633694, 26.248905, 33.627914>,  <34.810314, 26.337637, 33.764050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.633694, 26.248905, 33.627914>,  <34.339329, 26.101021, 33.401024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633694, 26.248905, 33.627914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196785, -0.918384, 0.343289,
		0.647847, -0.141010, -0.748606,
		0.735914, 0.369713, 0.567223,
		34.854469, 26.359819, 33.798080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879200, 25.609289, 33.356453>,  <34.339329, 26.101021, 33.401024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879200, 25.609289, 33.356453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.976543, 25.844101, 33.665302>,  <35.034950, 25.984989, 33.850613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.976543, 25.844101, 33.665302>,  <34.879200, 25.609289, 33.356453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976543, 25.844101, 33.665302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317807, -0.800369, 0.508339,
		0.916391, 0.121675, -0.381342,
		0.243362, 0.587031, 0.772120,
		35.049553, 26.020210, 33.896938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579792, 25.368876, 33.588680>,  <34.879200, 25.609289, 33.356453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579792, 25.368876, 33.588680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.366291, 25.537968, 33.881641>,  <35.238190, 25.639423, 34.057419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.366291, 25.537968, 33.881641>,  <35.579792, 25.368876, 33.588680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366291, 25.537968, 33.881641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104807, -0.826341, 0.553332,
		0.839124, 0.372101, 0.396753,
		-0.533748, 0.422732, 0.732401,
		35.206165, 25.664787, 34.101360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776997, 25.515150, 32.895016>,  <35.579792, 25.368876, 33.588680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776997, 25.515150, 32.895016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.689240, 25.171021, 32.710968>,  <35.636585, 24.964542, 32.600540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.689240, 25.171021, 32.710968>,  <35.776997, 25.515150, 32.895016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689240, 25.171021, 32.710968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100951, 0.489097, -0.866368,
		0.970399, -0.143628, -0.194156,
		-0.219395, -0.860322, -0.460120,
		35.623421, 24.912924, 32.572933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128784, 25.625290, 32.317711>,  <35.776997, 25.515150, 32.895016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128784, 25.625290, 32.317711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.885948, 25.318619, 32.234146>,  <35.740246, 25.134617, 32.184006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.885948, 25.318619, 32.234146>,  <36.128784, 25.625290, 32.317711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885948, 25.318619, 32.234146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187694, 0.393817, -0.899822,
		0.772146, -0.507064, -0.382985,
		-0.607093, -0.766677, -0.208912,
		35.703819, 25.088615, 32.171474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414490, 25.297890, 31.666023>,  <36.128784, 25.625290, 32.317711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414490, 25.297890, 31.666023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.027195, 25.198452, 31.676708>,  <35.794819, 25.138790, 31.683119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.027195, 25.198452, 31.676708>,  <36.414490, 25.297890, 31.666023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027195, 25.198452, 31.676708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116003, 0.352021, -0.928776,
		0.221484, -0.902376, -0.369678,
		-0.968239, -0.248593, 0.026711,
		35.736725, 25.123875, 31.684721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245567, 24.891649, 31.052784>,  <36.414490, 25.297890, 31.666023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245567, 24.891649, 31.052784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.894455, 25.037857, 31.176651>,  <35.683788, 25.125582, 31.250971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.894455, 25.037857, 31.176651>,  <36.245567, 24.891649, 31.052784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894455, 25.037857, 31.176651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083972, 0.519000, -0.850640,
		-0.471643, -0.772679, -0.424875,
		-0.877782, 0.365521, 0.309666,
		35.631119, 25.147512, 31.269550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933289, 24.897215, 30.477551>,  <36.245567, 24.891649, 31.052784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933289, 24.897215, 30.477551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.700577, 25.151672, 30.680275>,  <35.560951, 25.304346, 30.801910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.700577, 25.151672, 30.680275>,  <35.933289, 24.897215, 30.477551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700577, 25.151672, 30.680275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102119, 0.561056, -0.821455,
		-0.806912, -0.529659, -0.261448,
		-0.581778, 0.636143, 0.506811,
		35.526043, 25.342516, 30.832317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402683, 25.083454, 29.933819>,  <35.933289, 24.897215, 30.477551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402683, 25.083454, 29.933819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.288692, 25.338703, 30.219921>,  <35.220299, 25.491852, 30.391582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.288692, 25.338703, 30.219921>,  <35.402683, 25.083454, 29.933819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288692, 25.338703, 30.219921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195244, 0.691911, -0.695082,
		-0.938441, -0.337729, -0.072586,
		-0.284973, 0.638121, 0.715256,
		35.203201, 25.530140, 30.434498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598595, 25.341915, 29.806749>,  <35.402683, 25.083454, 29.933819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598595, 25.341915, 29.806749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.835709, 25.600430, 29.998966>,  <34.977978, 25.755539, 30.114296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.835709, 25.600430, 29.998966>,  <34.598595, 25.341915, 29.806749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835709, 25.600430, 29.998966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282765, 0.725711, -0.627206,
		-0.754089, 0.235918, 0.612938,
		0.592785, 0.646286, 0.480542,
		35.013542, 25.794315, 30.143129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936909, 25.416924, 30.132528>,  <34.598595, 25.341915, 29.806749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936909, 25.416924, 30.132528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.597767, 25.226242, 30.039661>,  <33.394283, 25.111834, 29.983942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.597767, 25.226242, 30.039661>,  <33.936909, 25.416924, 30.132528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597767, 25.226242, 30.039661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129170, -0.610362, 0.781520,
		-0.514258, 0.632625, 0.579072,
		-0.847853, -0.476702, -0.232167,
		33.343410, 25.083231, 29.970011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470547, 25.406515, 30.795347>,  <33.936909, 25.416924, 30.132528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470547, 25.406515, 30.795347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.374374, 25.107182, 30.548061>,  <33.316669, 24.927582, 30.399689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.374374, 25.107182, 30.548061>,  <33.470547, 25.406515, 30.795347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374374, 25.107182, 30.548061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195437, -0.586534, 0.785991,
		-0.950788, 0.309798, -0.005232,
		-0.240430, -0.748333, -0.618216,
		33.302246, 24.882681, 30.362597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824909, 25.103432, 31.088852>,  <33.470547, 25.406515, 30.795347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824909, 25.103432, 31.088852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.973446, 24.825787, 30.842175>,  <33.062569, 24.659201, 30.694168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.973446, 24.825787, 30.842175>,  <32.824909, 25.103432, 31.088852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973446, 24.825787, 30.842175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205635, -0.709176, 0.674377,
		-0.905438, -0.123612, -0.406082,
		0.371345, -0.694111, -0.616695,
		33.084850, 24.617554, 30.657166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304340, 24.576788, 31.142765>,  <32.824909, 25.103432, 31.088852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304340, 24.576788, 31.142765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.617157, 24.379940, 30.989803>,  <32.804848, 24.261831, 30.898026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.617157, 24.379940, 30.989803>,  <32.304340, 24.576788, 31.142765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617157, 24.379940, 30.989803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057618, -0.668050, 0.741882,
		-0.620557, -0.558150, -0.550798,
		0.782042, -0.492116, -0.382404,
		32.851768, 24.232304, 30.875082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098068, 23.756435, 31.119341>,  <32.304340, 24.576788, 31.142765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098068, 23.756435, 31.119341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.495739, 23.788654, 31.090714>,  <32.734341, 23.807985, 31.073538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.495739, 23.788654, 31.090714>,  <32.098068, 23.756435, 31.119341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495739, 23.788654, 31.090714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106808, -0.649164, 0.753112,
		0.014201, -0.756372, -0.653988,
		0.994178, 0.080546, -0.071567,
		32.793991, 23.812819, 31.069242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415905, 23.044914, 31.093380>,  <32.098068, 23.756435, 31.119341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415905, 23.044914, 31.093380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.703960, 23.284695, 31.233131>,  <32.876793, 23.428562, 31.316982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.703960, 23.284695, 31.233131>,  <32.415905, 23.044914, 31.093380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703960, 23.284695, 31.233131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115493, -0.600085, 0.791555,
		0.684155, -0.529675, -0.501375,
		0.720135, 0.599452, 0.349377,
		32.920002, 23.464531, 31.337944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819603, 22.563467, 31.351765>,  <32.415905, 23.044914, 31.093380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819603, 22.563467, 31.351765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.953598, 22.910717, 31.498264>,  <33.033997, 23.119068, 31.586164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.953598, 22.910717, 31.498264>,  <32.819603, 22.563467, 31.351765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953598, 22.910717, 31.498264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188984, -0.442714, 0.876521,
		0.923075, -0.224410, -0.312367,
		0.334990, 0.868127, 0.366248,
		33.054096, 23.171156, 31.608139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432705, 22.414133, 31.667812>,  <32.819603, 22.563467, 31.351765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432705, 22.414133, 31.667812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.304405, 22.754841, 31.833515>,  <33.227425, 22.959265, 31.932936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.304405, 22.754841, 31.833515>,  <33.432705, 22.414133, 31.667812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304405, 22.754841, 31.833515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010316, -0.434197, 0.900759,
		0.947107, 0.293194, 0.130483,
		-0.320752, 0.851769, 0.414255,
		33.208179, 23.010372, 31.957792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816696, 22.525484, 32.308079>,  <33.432705, 22.414133, 31.667812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816696, 22.525484, 32.308079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.500862, 22.759571, 32.381920>,  <33.311363, 22.900024, 32.426224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.500862, 22.759571, 32.381920>,  <33.816696, 22.525484, 32.308079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500862, 22.759571, 32.381920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026841, -0.267608, 0.963154,
		0.613057, 0.765444, 0.195591,
		-0.789582, 0.585219, 0.184605,
		33.263988, 22.935137, 32.437302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.628023, 33.528061, 20.521736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356304, 33.565788, 20.812847>,  <30.193274, 33.588425, 20.987514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356304, 33.565788, 20.812847>,  <30.628023, 33.528061, 20.521736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356304, 33.565788, 20.812847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474726, -0.699788, 0.533790,
		0.559636, 0.708097, 0.430588,
		-0.679295, 0.094317, 0.727779,
		30.152515, 33.594082, 21.031181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960823, 33.715668, 21.089029>,  <30.628023, 33.528061, 20.521736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960823, 33.715668, 21.089029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616940, 33.586597, 21.247410>,  <30.410610, 33.509155, 21.342438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616940, 33.586597, 21.247410>,  <30.960823, 33.715668, 21.089029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616940, 33.586597, 21.247410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510066, -0.501231, 0.699000,
		-0.027089, 0.802898, 0.595500,
		-0.859709, -0.322679, 0.395953,
		30.359026, 33.489792, 21.366196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932697, 33.951561, 21.742279>,  <30.960823, 33.715668, 21.089029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932697, 33.951561, 21.742279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710135, 33.621399, 21.704067>,  <30.576597, 33.423302, 21.681139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710135, 33.621399, 21.704067>,  <30.932697, 33.951561, 21.742279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710135, 33.621399, 21.704067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558881, -0.456841, 0.692060,
		-0.614871, 0.331675, 0.715490,
		-0.556405, -0.825401, -0.095532,
		30.543213, 33.373779, 21.675407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946251, 33.809757, 22.404696>,  <30.932697, 33.951561, 21.742279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946251, 33.809757, 22.404696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807714, 33.487026, 22.213245>,  <30.724594, 33.293388, 22.098375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807714, 33.487026, 22.213245>,  <30.946251, 33.809757, 22.404696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807714, 33.487026, 22.213245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446637, -0.590484, 0.672193,
		-0.824963, 0.019035, 0.564866,
		-0.346339, -0.806825, -0.478626,
		30.703814, 33.244980, 22.069658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673670, 33.386421, 22.928576>,  <30.946251, 33.809757, 22.404696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673670, 33.386421, 22.928576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744768, 33.151585, 22.612671>,  <30.787428, 33.010681, 22.423128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744768, 33.151585, 22.612671>,  <30.673670, 33.386421, 22.928576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744768, 33.151585, 22.612671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384520, -0.697306, 0.604904,
		-0.905843, -0.411199, 0.101807,
		0.177745, -0.587095, -0.789764,
		30.798092, 32.975456, 22.375742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340076, 32.658096, 23.048843>,  <30.673670, 33.386421, 22.928576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340076, 32.658096, 23.048843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636221, 32.601662, 22.785950>,  <30.813908, 32.567802, 22.628214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636221, 32.601662, 22.785950>,  <30.340076, 32.658096, 23.048843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636221, 32.601662, 22.785950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292252, -0.812928, 0.503724,
		-0.605352, -0.565017, -0.560629,
		0.740363, -0.141085, -0.657235,
		30.858330, 32.559338, 22.588779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383917, 31.937527, 23.071081>,  <30.340076, 32.658096, 23.048843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383917, 31.937527, 23.071081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687174, 32.045303, 22.833553>,  <30.869127, 32.109970, 22.691036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687174, 32.045303, 22.833553>,  <30.383917, 31.937527, 23.071081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687174, 32.045303, 22.833553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415731, -0.901293, 0.121815,
		-0.502384, -0.339222, -0.795323,
		0.758141, 0.269443, -0.593820,
		30.914616, 32.126137, 22.655407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377256, 31.567377, 22.514286>,  <30.383917, 31.937527, 23.071081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377256, 31.567377, 22.514286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755005, 31.663738, 22.603844>,  <30.981653, 31.721556, 22.657579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755005, 31.663738, 22.603844>,  <30.377256, 31.567377, 22.514286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755005, 31.663738, 22.603844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149170, -0.920475, 0.361211,
		0.293107, -0.307719, -0.905206,
		0.944371, 0.240903, 0.223895,
		31.038317, 31.736010, 22.671013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775713, 31.091448, 22.227322>,  <30.377256, 31.567377, 22.514286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775713, 31.091448, 22.227322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026407, 31.247936, 22.496883>,  <31.176823, 31.341829, 22.658621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026407, 31.247936, 22.496883>,  <30.775713, 31.091448, 22.227322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026407, 31.247936, 22.496883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224116, -0.918790, 0.324957,
		0.746308, -0.052629, -0.663516,
		0.626734, 0.391223, 0.673905,
		31.214428, 31.365303, 22.699055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452753, 30.815224, 22.117521>,  <30.775713, 31.091448, 22.227322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452753, 30.815224, 22.117521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471085, 30.938091, 22.497742>,  <31.482082, 31.011812, 22.725874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471085, 30.938091, 22.497742>,  <31.452753, 30.815224, 22.117521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471085, 30.938091, 22.497742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485108, -0.838662, 0.247622,
		0.873253, 0.449772, -0.187443,
		0.045828, 0.307167, 0.950552,
		31.484833, 31.030241, 22.782907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205467, 30.771870, 22.353117>,  <31.452753, 30.815224, 22.117521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205467, 30.771870, 22.353117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988230, 30.755272, 22.688576>,  <31.857887, 30.745314, 22.889851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988230, 30.755272, 22.688576>,  <32.205467, 30.771870, 22.353117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988230, 30.755272, 22.688576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506679, -0.812640, 0.287909,
		0.669570, 0.581286, 0.462366,
		-0.543095, -0.041496, 0.838645,
		31.825302, 30.742823, 22.940168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680641, 30.645119, 22.963181>,  <32.205467, 30.771870, 22.353117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680641, 30.645119, 22.963181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329212, 30.539463, 23.122353>,  <32.118355, 30.476070, 23.217855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329212, 30.539463, 23.122353>,  <32.680641, 30.645119, 22.963181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329212, 30.539463, 23.122353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443491, -0.760435, 0.474398,
		0.177294, 0.593270, 0.785237,
		-0.878569, -0.264138, 0.397930,
		32.065643, 30.460222, 23.241732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012943, 31.096981, 23.406897>,  <32.680641, 30.645119, 22.963181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012943, 31.096981, 23.406897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392681, 31.208515, 23.464867>,  <33.620522, 31.275436, 23.499649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392681, 31.208515, 23.464867>,  <33.012943, 31.096981, 23.406897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392681, 31.208515, 23.464867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095614, 0.695613, -0.712025,
		-0.299349, 0.662098, 0.687034,
		0.949341, 0.278835, 0.144925,
		33.677483, 31.292166, 23.508345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053925, 31.797695, 23.623604>,  <33.012943, 31.096981, 23.406897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053925, 31.797695, 23.623604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387562, 31.689022, 23.431572>,  <33.587746, 31.623817, 23.316353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387562, 31.689022, 23.431572>,  <33.053925, 31.797695, 23.623604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387562, 31.689022, 23.431572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054913, 0.825084, -0.562335,
		0.548884, 0.495402, 0.673278,
		0.834093, -0.271685, -0.480079,
		33.637791, 31.607517, 23.287548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230011, 32.436871, 23.375130>,  <33.053925, 31.797695, 23.623604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230011, 32.436871, 23.375130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505074, 32.204319, 23.201176>,  <33.670113, 32.064789, 23.096804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505074, 32.204319, 23.201176>,  <33.230011, 32.436871, 23.375130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505074, 32.204319, 23.201176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123649, 0.684018, -0.718909,
		0.715427, 0.440591, 0.542258,
		0.687660, -0.581376, -0.434886,
		33.711372, 32.029907, 23.070709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825554, 32.820728, 23.243589>,  <33.230011, 32.436871, 23.375130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825554, 32.820728, 23.243589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843552, 32.525669, 22.974113>,  <33.854351, 32.348633, 22.812428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843552, 32.525669, 22.974113>,  <33.825554, 32.820728, 23.243589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843552, 32.525669, 22.974113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234774, 0.663291, -0.710581,
		0.971008, -0.126190, 0.203027,
		0.044998, -0.737645, -0.673687,
		33.857052, 32.304375, 22.772007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484825, 32.797386, 22.936296>,  <33.825554, 32.820728, 23.243589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484825, 32.797386, 22.936296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246464, 32.612064, 22.673923>,  <34.103447, 32.500870, 22.516500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246464, 32.612064, 22.673923>,  <34.484825, 32.797386, 22.936296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246464, 32.612064, 22.673923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451625, 0.482046, -0.750777,
		0.664030, -0.743625, -0.078012,
		-0.595902, -0.463306, -0.655933,
		34.067692, 32.473072, 22.477144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002930, 32.480694, 22.436129>,  <34.484825, 32.797386, 22.936296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002930, 32.480694, 22.436129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644581, 32.524117, 22.263794>,  <34.429569, 32.550171, 22.160393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644581, 32.524117, 22.263794>,  <35.002930, 32.480694, 22.436129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644581, 32.524117, 22.263794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407060, 0.589175, -0.697979,
		0.178065, -0.800679, -0.572019,
		-0.895877, 0.108560, -0.430837,
		34.375816, 32.556686, 22.134542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129993, 32.317612, 21.689739>,  <35.002930, 32.480694, 22.436129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129993, 32.317612, 21.689739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784195, 32.516289, 21.720566>,  <34.576714, 32.635494, 21.739061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784195, 32.516289, 21.720566>,  <35.129993, 32.317612, 21.689739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784195, 32.516289, 21.720566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340870, 0.692020, -0.636330,
		-0.369391, -0.523837, -0.767558,
		-0.864499, 0.496692, 0.077065,
		34.524845, 32.665295, 21.743685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250584, 32.676769, 21.170797>,  <35.129993, 32.317612, 21.689739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250584, 32.676769, 21.170797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939552, 32.846504, 21.356407>,  <34.752934, 32.948345, 21.467773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939552, 32.846504, 21.356407>,  <35.250584, 32.676769, 21.170797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939552, 32.846504, 21.356407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150420, 0.842067, -0.517974,
		-0.610535, -0.332964, -0.718597,
		-0.777574, 0.424333, 0.464027,
		34.706280, 32.973804, 21.495615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821495, 33.024086, 20.679197>,  <35.250584, 32.676769, 21.170797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821495, 33.024086, 20.679197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756664, 33.207077, 21.028927>,  <34.717766, 33.316872, 21.238764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756664, 33.207077, 21.028927>,  <34.821495, 33.024086, 20.679197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756664, 33.207077, 21.028927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224524, 0.879896, -0.418775,
		-0.960895, 0.128431, -0.245330,
		-0.162081, 0.457482, 0.874323,
		34.708038, 33.344322, 21.291224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688519, 33.688065, 20.506968>,  <34.821495, 33.024086, 20.679197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688519, 33.688065, 20.506968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743294, 33.751751, 20.898048>,  <34.776157, 33.789963, 21.132696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743294, 33.751751, 20.898048>,  <34.688519, 33.688065, 20.506968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743294, 33.751751, 20.898048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312117, 0.929790, -0.195127,
		-0.940123, 0.331877, 0.077629,
		0.136937, 0.159214, 0.977701,
		34.784374, 33.799515, 21.191359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422672, 34.337448, 20.572765>,  <34.688519, 33.688065, 20.506968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422672, 34.337448, 20.572765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652546, 34.270195, 20.893131>,  <34.790470, 34.229843, 21.085350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652546, 34.270195, 20.893131>,  <34.422672, 34.337448, 20.572765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652546, 34.270195, 20.893131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386865, 0.918226, -0.084829,
		-0.721158, 0.358596, 0.592740,
		0.574689, -0.168135, 0.800914,
		34.824951, 34.219753, 21.133406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339550, 34.965431, 20.960926>,  <34.422672, 34.337448, 20.572765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339550, 34.965431, 20.960926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667522, 34.773869, 21.086372>,  <34.864307, 34.658932, 21.161640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667522, 34.773869, 21.086372>,  <34.339550, 34.965431, 20.960926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667522, 34.773869, 21.086372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511348, 0.859006, -0.025147,
		-0.257355, 0.180986, 0.949217,
		0.819934, -0.478908, 0.313617,
		34.913502, 34.630196, 21.180458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682472, 35.345768, 21.528728>,  <34.339550, 34.965431, 20.960926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682472, 35.345768, 21.528728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976559, 35.115997, 21.384785>,  <35.153011, 34.978134, 21.298418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976559, 35.115997, 21.384785>,  <34.682472, 35.345768, 21.528728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976559, 35.115997, 21.384785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584884, 0.805936, -0.091527,
		0.342598, -0.143184, 0.928507,
		0.735212, -0.574426, -0.359858,
		35.197121, 34.943668, 21.276827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265999, 35.544434, 21.939302>,  <34.682472, 35.345768, 21.528728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265999, 35.544434, 21.939302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404156, 35.337845, 21.625881>,  <35.487049, 35.213890, 21.437828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404156, 35.337845, 21.625881>,  <35.265999, 35.544434, 21.939302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404156, 35.337845, 21.625881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686560, 0.708284, -0.164226,
		0.639797, -0.481234, 0.599228,
		0.345393, -0.516477, -0.783553,
		35.507774, 35.182903, 21.390816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123173, 35.963940, 22.631382>,  <35.265999, 35.544434, 21.939302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123173, 35.963940, 22.631382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476273, 36.148159, 22.594196>,  <35.688133, 36.258690, 22.571884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476273, 36.148159, 22.594196>,  <35.123173, 35.963940, 22.631382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476273, 36.148159, 22.594196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186448, -0.161761, 0.969057,
		0.431258, -0.872771, -0.228663,
		0.882754, 0.460547, -0.092965,
		35.741100, 36.286324, 22.566307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613605, 35.535236, 22.867723>,  <35.123173, 35.963940, 22.631382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613605, 35.535236, 22.867723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697159, 35.924053, 22.910622>,  <35.747292, 36.157345, 22.936359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697159, 35.924053, 22.910622>,  <35.613605, 35.535236, 22.867723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697159, 35.924053, 22.910622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028883, -0.103484, 0.994212,
		0.977515, -0.210767, 0.006460,
		0.208879, 0.972043, 0.107244,
		35.759823, 36.215668, 22.942795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326756, 35.766098, 23.178467>,  <35.613605, 35.535236, 22.867723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326756, 35.766098, 23.178467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010677, 35.991474, 23.274902>,  <35.821030, 36.126701, 23.332764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010677, 35.991474, 23.274902>,  <36.326756, 35.766098, 23.178467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010677, 35.991474, 23.274902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065833, -0.313072, 0.947445,
		0.609306, 0.764540, 0.210296,
		-0.790197, 0.563440, 0.241089,
		35.773617, 36.160507, 23.347229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538769, 36.094929, 23.690804>,  <36.326756, 35.766098, 23.178467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538769, 36.094929, 23.690804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139042, 36.085358, 23.702099>,  <35.899208, 36.079617, 23.708876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139042, 36.085358, 23.702099>,  <36.538769, 36.094929, 23.690804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139042, 36.085358, 23.702099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035173, -0.376491, 0.925752,
		-0.011516, 0.926111, 0.377075,
		-0.999315, -0.023924, 0.028238,
		35.839249, 36.078182, 23.710571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414120, 36.486893, 24.329752>,  <36.538769, 36.094929, 23.690804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414120, 36.486893, 24.329752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105286, 36.253197, 24.229713>,  <35.919987, 36.112980, 24.169689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105286, 36.253197, 24.229713>,  <36.414120, 36.486893, 24.329752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105286, 36.253197, 24.229713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061836, -0.460725, 0.885386,
		-0.632507, 0.668126, 0.391845,
		-0.772082, -0.584243, -0.250098,
		35.873661, 36.077923, 24.154684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960789, 36.467129, 24.899496>,  <36.414120, 36.486893, 24.329752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960789, 36.467129, 24.899496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826534, 36.152290, 24.692486>,  <35.745983, 35.963387, 24.568279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826534, 36.152290, 24.692486>,  <35.960789, 36.467129, 24.899496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826534, 36.152290, 24.692486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124872, -0.507367, 0.852634,
		-0.933679, 0.350797, 0.072003,
		-0.335634, -0.787096, -0.517523,
		35.725845, 35.916161, 24.537230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325447, 36.206577, 25.196781>,  <35.960789, 36.467129, 24.899496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325447, 36.206577, 25.196781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472916, 35.885082, 25.009983>,  <35.561398, 35.692184, 24.897905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472916, 35.885082, 25.009983>,  <35.325447, 36.206577, 25.196781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472916, 35.885082, 25.009983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257443, -0.571013, 0.779530,
		-0.893200, -0.167165, -0.417433,
		0.368670, -0.803741, -0.466993,
		35.583515, 35.643959, 24.869884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859760, 35.644859, 25.368599>,  <35.325447, 36.206577, 25.196781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859760, 35.644859, 25.368599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198967, 35.478939, 25.236656>,  <35.402493, 35.379387, 25.157490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198967, 35.478939, 25.236656>,  <34.859760, 35.644859, 25.368599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198967, 35.478939, 25.236656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117749, -0.754329, 0.645851,
		-0.516718, -0.508854, -0.688528,
		0.848020, -0.414796, -0.329858,
		35.453373, 35.354500, 25.137699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659275, 34.951874, 25.122671>,  <34.859760, 35.644859, 25.368599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659275, 34.951874, 25.122671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053169, 34.926590, 25.187531>,  <35.289505, 34.911419, 25.226446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053169, 34.926590, 25.187531>,  <34.659275, 34.951874, 25.122671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053169, 34.926590, 25.187531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133473, -0.872211, 0.470566,
		0.111684, -0.485028, -0.867338,
		0.984739, -0.063211, 0.162150,
		35.348591, 34.907627, 25.236176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796234, 34.211098, 25.342134>,  <34.659275, 34.951874, 25.122671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796234, 34.211098, 25.342134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155128, 34.375759, 25.406017>,  <35.370464, 34.474556, 25.444347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155128, 34.375759, 25.406017>,  <34.796234, 34.211098, 25.342134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155128, 34.375759, 25.406017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209783, -0.715690, 0.666167,
		0.388529, -0.564207, -0.728502,
		0.897238, 0.411653, 0.159705,
		35.424301, 34.499256, 25.453928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388359, 33.763542, 25.237846>,  <34.796234, 34.211098, 25.342134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388359, 33.763542, 25.237846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558956, 34.034698, 25.477367>,  <35.661316, 34.197392, 25.621080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558956, 34.034698, 25.477367>,  <35.388359, 33.763542, 25.237846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558956, 34.034698, 25.477367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326409, -0.732775, 0.597075,
		0.843539, -0.059196, -0.533796,
		0.426496, 0.677891, 0.598802,
		35.686905, 34.238068, 25.657007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025356, 33.499897, 25.467348>,  <35.388359, 33.763542, 25.237846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025356, 33.499897, 25.467348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934078, 33.773281, 25.744709>,  <35.879311, 33.937313, 25.911125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934078, 33.773281, 25.744709>,  <36.025356, 33.499897, 25.467348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934078, 33.773281, 25.744709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160760, -0.675967, 0.719183,
		0.960251, 0.275589, 0.044382,
		-0.228199, 0.683461, 0.693402,
		35.865620, 33.978321, 25.952730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501137, 33.424488, 26.014721>,  <36.025356, 33.499897, 25.467348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501137, 33.424488, 26.014721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181976, 33.605942, 26.173504>,  <35.990479, 33.714813, 26.268774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181976, 33.605942, 26.173504>,  <36.501137, 33.424488, 26.014721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181976, 33.605942, 26.173504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117124, -0.529312, 0.840304,
		0.591301, 0.716972, 0.369208,
		-0.797900, 0.453630, 0.396957,
		35.942608, 33.742031, 26.292591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656960, 33.620365, 26.839441>,  <36.501137, 33.424488, 26.014721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656960, 33.620365, 26.839441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260151, 33.627663, 26.789543>,  <36.022064, 33.632042, 26.759605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260151, 33.627663, 26.789543>,  <36.656960, 33.620365, 26.839441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260151, 33.627663, 26.789543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122084, -0.385831, 0.914456,
		-0.031450, 0.922389, 0.384980,
		-0.992021, 0.018241, -0.124744,
		35.962543, 33.633137, 26.752121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287746, 33.945213, 27.506134>,  <36.656960, 33.620365, 26.839441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287746, 33.945213, 27.506134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046909, 33.709095, 27.291084>,  <35.902405, 33.567425, 27.162054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046909, 33.709095, 27.291084>,  <36.287746, 33.945213, 27.506134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046909, 33.709095, 27.291084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132774, -0.589954, 0.796446,
		-0.787307, 0.550918, 0.276833,
		-0.602095, -0.590291, -0.537622,
		35.866280, 33.532009, 27.129797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846504, 33.748173, 27.917231>,  <36.287746, 33.945213, 27.506134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846504, 33.748173, 27.917231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773499, 33.462181, 27.647270>,  <35.729694, 33.290585, 27.485294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773499, 33.462181, 27.647270>,  <35.846504, 33.748173, 27.917231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773499, 33.462181, 27.647270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180683, -0.650351, 0.737833,
		-0.966459, 0.256605, -0.010489,
		-0.182510, -0.714981, -0.674902,
		35.718746, 33.247688, 27.444799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161808, 33.418888, 28.081959>,  <35.846504, 33.748173, 27.917231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161808, 33.418888, 28.081959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386059, 33.162842, 27.871834>,  <35.520611, 33.009216, 27.745760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386059, 33.162842, 27.871834>,  <35.161808, 33.418888, 28.081959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386059, 33.162842, 27.871834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171351, -0.710330, 0.682693,
		-0.810145, -0.292724, -0.507914,
		0.560628, -0.640112, -0.525312,
		35.554249, 32.970810, 27.714241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819164, 32.749825, 28.188227>,  <35.161808, 33.418888, 28.081959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819164, 32.749825, 28.188227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166443, 32.648865, 28.017334>,  <35.374809, 32.588287, 27.914799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166443, 32.648865, 28.017334>,  <34.819164, 32.749825, 28.188227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166443, 32.648865, 28.017334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002448, -0.863141, 0.504958,
		-0.496212, -0.437357, -0.749995,
		0.868198, -0.252402, -0.427230,
		35.426903, 32.573143, 27.889164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716061, 32.098808, 27.944759>,  <34.819164, 32.749825, 28.188227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716061, 32.098808, 27.944759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103794, 32.164688, 28.017715>,  <35.336433, 32.204216, 28.061489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103794, 32.164688, 28.017715>,  <34.716061, 32.098808, 27.944759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103794, 32.164688, 28.017715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004295, -0.730727, 0.682657,
		0.245709, -0.662506, -0.707611,
		0.969334, 0.164696, 0.182392,
		35.394596, 32.214096, 28.072433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962215, 31.385616, 27.889124>,  <34.716061, 32.098808, 27.944759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962215, 31.385616, 27.889124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230495, 31.623360, 28.066616>,  <35.391464, 31.766006, 28.173111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230495, 31.623360, 28.066616>,  <34.962215, 31.385616, 27.889124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230495, 31.623360, 28.066616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168098, -0.704475, 0.689535,
		0.722427, -0.387882, -0.572404,
		0.670703, 0.594359, 0.443729,
		35.431705, 31.801668, 28.199736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385521, 30.971653, 28.136442>,  <34.962215, 31.385616, 27.889124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385521, 30.971653, 28.136442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512260, 31.285881, 28.349041>,  <35.588306, 31.474417, 28.476601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512260, 31.285881, 28.349041>,  <35.385521, 30.971653, 28.136442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512260, 31.285881, 28.349041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219787, -0.605927, 0.764556,
		0.922659, -0.125434, -0.364646,
		0.316851, 0.785569, 0.531495,
		35.607315, 31.521551, 28.508490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073597, 30.763121, 28.470100>,  <35.385521, 30.971653, 28.136442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073597, 30.763121, 28.470100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917889, 31.066826, 28.678711>,  <35.824463, 31.249048, 28.803877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917889, 31.066826, 28.678711>,  <36.073597, 30.763121, 28.470100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917889, 31.066826, 28.678711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192908, -0.486429, 0.852158,
		0.900697, 0.432327, 0.042884,
		-0.389271, 0.759263, 0.521524,
		35.801105, 31.294605, 28.835169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528881, 30.942751, 29.043211>,  <36.073597, 30.763121, 28.470100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528881, 30.942751, 29.043211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169346, 31.079552, 29.152847>,  <35.953625, 31.161633, 29.218628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169346, 31.079552, 29.152847>,  <36.528881, 30.942751, 29.043211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169346, 31.079552, 29.152847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082281, -0.482580, 0.871979,
		0.430487, 0.806320, 0.405621,
		-0.898838, 0.342001, 0.274089,
		35.899693, 31.182152, 29.235075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606075, 30.941572, 29.755409>,  <36.528881, 30.942751, 29.043211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606075, 30.941572, 29.755409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211418, 30.973564, 29.698650>,  <35.974625, 30.992760, 29.664595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211418, 30.973564, 29.698650>,  <36.606075, 30.941572, 29.755409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211418, 30.973564, 29.698650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162884, -0.487833, 0.857606,
		-0.000630, 0.869266, 0.494345,
		-0.986645, 0.079980, -0.141897,
		35.915424, 30.997559, 29.656082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278614, 31.163469, 30.398327>,  <36.606075, 30.941572, 29.755409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278614, 31.163469, 30.398327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994659, 30.982677, 30.182262>,  <35.824287, 30.874203, 30.052624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994659, 30.982677, 30.182262>,  <36.278614, 31.163469, 30.398327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994659, 30.982677, 30.182262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205239, -0.600895, 0.772530,
		-0.673749, 0.659271, 0.333804,
		-0.709887, -0.451981, -0.540160,
		35.781693, 30.847084, 30.020214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702961, 31.180717, 30.797632>,  <36.278614, 31.163469, 30.398327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702961, 31.180717, 30.797632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624748, 30.881668, 30.543758>,  <35.577820, 30.702238, 30.391434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624748, 30.881668, 30.543758>,  <35.702961, 31.180717, 30.797632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624748, 30.881668, 30.543758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261648, -0.583950, 0.768468,
		-0.945149, 0.316325, -0.081433,
		-0.195533, -0.747624, -0.634686,
		35.566090, 30.657381, 30.353354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907387, 31.012463, 30.653986>,  <35.702961, 31.180717, 30.797632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907387, 31.012463, 30.653986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116486, 30.679367, 30.581013>,  <35.241947, 30.479509, 30.537228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116486, 30.679367, 30.581013>,  <34.907387, 31.012463, 30.653986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116486, 30.679367, 30.581013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563800, -0.498233, 0.658706,
		-0.639424, -0.241481, -0.729948,
		0.522749, -0.832737, -0.182435,
		35.273312, 30.429546, 30.526283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422871, 30.564764, 30.878326>,  <34.907387, 31.012463, 30.653986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422871, 30.564764, 30.878326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753822, 30.340614, 30.863262>,  <34.952393, 30.206125, 30.854223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753822, 30.340614, 30.863262>,  <34.422871, 30.564764, 30.878326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753822, 30.340614, 30.863262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376396, -0.603015, 0.703348,
		-0.416847, -0.567764, -0.709847,
		0.827384, -0.560372, -0.037661,
		35.002037, 30.172503, 30.851963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849602, 30.241121, 30.648367>,  <34.422871, 30.564764, 30.878326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849602, 30.241121, 30.648367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458168, 30.304581, 30.700832>,  <33.223309, 30.342657, 30.732311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458168, 30.304581, 30.700832>,  <33.849602, 30.241121, 30.648367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458168, 30.304581, 30.700832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074047, 0.323237, -0.943416,
		-0.192071, -0.932924, -0.304567,
		-0.978584, 0.158650, 0.131165,
		33.164593, 30.352175, 30.740181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522995, 29.903183, 30.094364>,  <33.849602, 30.241121, 30.648367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522995, 29.903183, 30.094364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285297, 30.199368, 30.219959>,  <33.142677, 30.377079, 30.295317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285297, 30.199368, 30.219959>,  <33.522995, 29.903183, 30.094364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285297, 30.199368, 30.219959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046964, 0.357783, -0.932623,
		-0.802913, -0.568952, -0.177835,
		-0.594244, 0.740463, 0.313989,
		33.107025, 30.421507, 30.314156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088238, 30.051462, 29.479000>,  <33.522995, 29.903183, 30.094364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088238, 30.051462, 29.479000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025871, 30.360790, 29.724819>,  <32.988453, 30.546387, 29.872311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025871, 30.360790, 29.724819>,  <33.088238, 30.051462, 29.479000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025871, 30.360790, 29.724819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277641, 0.562762, -0.778597,
		-0.947949, -0.292015, 0.126964,
		-0.155912, 0.773321, 0.614545,
		32.979099, 30.592787, 29.909184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473103, 30.301424, 29.319696>,  <33.088238, 30.051462, 29.479000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473103, 30.301424, 29.319696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657288, 30.617905, 29.480682>,  <32.767799, 30.807793, 29.577274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657288, 30.617905, 29.480682>,  <32.473103, 30.301424, 29.319696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657288, 30.617905, 29.480682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331211, 0.573777, -0.749052,
		-0.823576, 0.211607, 0.526255,
		0.460458, 0.791203, 0.402463,
		32.795425, 30.855265, 29.601421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132404, 30.831347, 29.020859>,  <32.473103, 30.301424, 29.319696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132404, 30.831347, 29.020859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469425, 30.996941, 29.158688>,  <32.671638, 31.096296, 29.241385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469425, 30.996941, 29.158688>,  <32.132404, 30.831347, 29.020859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469425, 30.996941, 29.158688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067097, 0.715416, -0.695470,
		-0.534424, 0.562848, 0.630550,
		0.842549, 0.413983, 0.344570,
		32.722191, 31.121136, 29.262058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
