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
	<42.952492, 32.171059, 22.831697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867886, 32.561932, 22.824020>,  <42.817123, 32.796455, 22.819414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867886, 32.561932, 22.824020>,  <42.952492, 32.171059, 22.831697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867886, 32.561932, 22.824020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697877, 0.137253, -0.702943,
		-0.684272, -0.162076, -0.710987,
		-0.211516, 0.977186, -0.019191,
		42.804432, 32.855087, 22.818264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053398, 31.431967, 22.678226>,  <42.952492, 32.171059, 22.831697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053398, 31.431967, 22.678226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128407, 31.249313, 23.026093>,  <43.173412, 31.139721, 23.234812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128407, 31.249313, 23.026093>,  <43.053398, 31.431967, 22.678226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128407, 31.249313, 23.026093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394491, 0.775821, 0.492421,
		-0.899563, -0.435415, -0.034656,
		0.187521, -0.456635, 0.869667,
		43.184662, 31.112324, 23.286993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479252, 31.680391, 23.071375>,  <43.053398, 31.431967, 22.678226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479252, 31.680391, 23.071375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767303, 31.535721, 23.308224>,  <42.940132, 31.448917, 23.450333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767303, 31.535721, 23.308224>,  <42.479252, 31.680391, 23.071375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767303, 31.535721, 23.308224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198345, 0.710475, 0.675192,
		-0.664890, -0.603668, 0.439893,
		0.720125, -0.361678, 0.592122,
		42.983341, 31.427217, 23.485861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808449, 31.504652, 22.868080>,  <42.479252, 31.680391, 23.071375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808449, 31.504652, 22.868080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870056, 31.344414, 22.506794>,  <41.907021, 31.248272, 22.290022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870056, 31.344414, 22.506794>,  <41.808449, 31.504652, 22.868080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870056, 31.344414, 22.506794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714280, 0.676753, -0.178351,
		0.682702, -0.617680, 0.390371,
		0.154021, -0.400594, -0.903217,
		41.916264, 31.224236, 22.235828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095177, 31.835274, 23.133362>,  <41.808449, 31.504652, 22.868080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095177, 31.835274, 23.133362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869740, 32.124172, 23.293728>,  <40.734478, 32.297512, 23.389948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869740, 32.124172, 23.293728>,  <41.095177, 31.835274, 23.133362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869740, 32.124172, 23.293728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246101, -0.316490, 0.916116,
		0.788544, 0.614978, 0.000625,
		-0.563589, 0.722244, 0.400913,
		40.700665, 32.340847, 23.414001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481308, 32.321014, 23.595169>,  <41.095177, 31.835274, 23.133362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481308, 32.321014, 23.595169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097927, 32.303486, 23.707920>,  <40.867901, 32.292969, 23.775572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097927, 32.303486, 23.707920>,  <41.481308, 32.321014, 23.595169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097927, 32.303486, 23.707920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285263, -0.143736, 0.947610,
		-0.001008, 0.988645, 0.150263,
		-0.958449, -0.043820, 0.281879,
		40.810394, 32.290340, 23.792484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438244, 32.777725, 24.138611>,  <41.481308, 32.321014, 23.595169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438244, 32.777725, 24.138611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133663, 32.521282, 24.176907>,  <40.950912, 32.367416, 24.199884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133663, 32.521282, 24.176907>,  <41.438244, 32.777725, 24.138611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133663, 32.521282, 24.176907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070237, 0.065225, 0.995396,
		-0.644401, 0.764674, -0.004636,
		-0.761455, -0.641108, 0.095740,
		40.905228, 32.328949, 24.205629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941738, 33.080944, 24.601479>,  <41.438244, 32.777725, 24.138611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941738, 33.080944, 24.601479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859905, 32.693024, 24.654587>,  <40.810806, 32.460270, 24.686451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859905, 32.693024, 24.654587>,  <40.941738, 33.080944, 24.601479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859905, 32.693024, 24.654587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092449, 0.154175, 0.983709,
		-0.974474, 0.188975, -0.121199,
		-0.204582, -0.969803, 0.132769,
		40.798531, 32.402084, 24.694418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441601, 33.061050, 25.123285>,  <40.941738, 33.080944, 24.601479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441601, 33.061050, 25.123285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566986, 32.681576, 25.106617>,  <40.642216, 32.453892, 25.096617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566986, 32.681576, 25.106617>,  <40.441601, 33.061050, 25.123285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566986, 32.681576, 25.106617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134073, -0.087655, 0.987087,
		-0.940088, -0.303828, -0.154670,
		0.313463, -0.948686, -0.041669,
		40.661026, 32.396969, 25.094116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987274, 32.678883, 25.538141>,  <40.441601, 33.061050, 25.123285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987274, 32.678883, 25.538141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286682, 32.415775, 25.504528>,  <40.466328, 32.257912, 25.484360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286682, 32.415775, 25.504528>,  <39.987274, 32.678883, 25.538141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286682, 32.415775, 25.504528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187917, -0.331937, 0.924395,
		-0.635930, -0.676136, -0.372067,
		0.748519, -0.657767, -0.084031,
		40.511238, 32.218445, 25.479319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777016, 32.209709, 25.996078>,  <39.987274, 32.678883, 25.538141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777016, 32.209709, 25.996078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163837, 32.126255, 25.937737>,  <40.395931, 32.076183, 25.902731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163837, 32.126255, 25.937737>,  <39.777016, 32.209709, 25.996078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163837, 32.126255, 25.937737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072289, -0.324313, 0.943183,
		-0.244080, -0.922656, -0.298548,
		0.967057, -0.208630, -0.145856,
		40.453953, 32.063667, 25.893980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864025, 31.537832, 26.249508>,  <39.777016, 32.209709, 25.996078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864025, 31.537832, 26.249508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213478, 31.732311, 26.241634>,  <40.423149, 31.848999, 26.236910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213478, 31.732311, 26.241634>,  <39.864025, 31.537832, 26.249508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213478, 31.732311, 26.241634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167802, -0.263051, 0.950077,
		0.456746, -0.833317, -0.311393,
		0.873628, 0.486196, -0.019685,
		40.475567, 31.878170, 26.235729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226612, 31.072254, 26.522448>,  <39.864025, 31.537832, 26.249508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226612, 31.072254, 26.522448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438923, 31.409561, 26.556339>,  <40.566307, 31.611946, 26.576674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438923, 31.409561, 26.556339>,  <40.226612, 31.072254, 26.522448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438923, 31.409561, 26.556339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197026, -0.220007, 0.955394,
		0.824293, -0.490405, -0.282920,
		0.530774, 0.843267, 0.084728,
		40.598156, 31.662542, 26.581758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946671, 30.842360, 26.597136>,  <40.226612, 31.072254, 26.522448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946671, 30.842360, 26.597136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915730, 31.209454, 26.752972>,  <40.897167, 31.429710, 26.846474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915730, 31.209454, 26.752972>,  <40.946671, 30.842360, 26.597136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915730, 31.209454, 26.752972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213592, -0.366434, 0.905596,
		0.973856, 0.153259, -0.167677,
		-0.077348, 0.917735, 0.389589,
		40.892525, 31.484774, 26.869848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513889, 30.887257, 27.096273>,  <40.946671, 30.842360, 26.597136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513889, 30.887257, 27.096273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253490, 31.176613, 27.188278>,  <41.097252, 31.350227, 27.243481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253490, 31.176613, 27.188278>,  <41.513889, 30.887257, 27.096273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253490, 31.176613, 27.188278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100155, -0.218510, 0.970682,
		0.752444, 0.654948, 0.069798,
		-0.650998, 0.723392, 0.230012,
		41.058189, 31.393631, 27.257282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802624, 31.289917, 27.711033>,  <41.513889, 30.887257, 27.096273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802624, 31.289917, 27.711033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413395, 31.379322, 27.688492>,  <41.179859, 31.432964, 27.674967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413395, 31.379322, 27.688492>,  <41.802624, 31.289917, 27.711033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413395, 31.379322, 27.688492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104021, -0.207630, 0.972661,
		0.205700, 0.952330, 0.225288,
		-0.973071, 0.223511, -0.056353,
		41.121475, 31.446375, 27.671585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640266, 31.806463, 28.236597>,  <41.802624, 31.289917, 27.711033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640266, 31.806463, 28.236597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287762, 31.624660, 28.184750>,  <41.076260, 31.515579, 28.153641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287762, 31.624660, 28.184750>,  <41.640266, 31.806463, 28.236597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287762, 31.624660, 28.184750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059628, -0.165134, 0.984467,
		-0.468853, 0.875302, 0.118425,
		-0.881261, -0.454508, -0.129616,
		41.023384, 31.488308, 28.145864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342159, 31.960211, 28.829456>,  <41.640266, 31.806463, 28.236597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342159, 31.960211, 28.829456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143448, 31.642986, 28.688454>,  <41.024220, 31.452652, 28.603851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143448, 31.642986, 28.688454>,  <41.342159, 31.960211, 28.829456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143448, 31.642986, 28.688454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106963, -0.347129, 0.931698,
		-0.861259, 0.500557, 0.087620,
		-0.496783, -0.793061, -0.352508,
		40.994411, 31.405067, 28.582701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885361, 31.879999, 29.333260>,  <41.342159, 31.960211, 28.829456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885361, 31.879999, 29.333260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889137, 31.527550, 29.144142>,  <40.891403, 31.316080, 29.030672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889137, 31.527550, 29.144142>,  <40.885361, 31.879999, 29.333260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889137, 31.527550, 29.144142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231759, -0.461867, 0.856135,
		-0.972727, 0.101489, -0.208570,
		0.009443, -0.881124, -0.472792,
		40.891972, 31.263212, 29.002304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271233, 31.564568, 29.451971>,  <40.885361, 31.879999, 29.333260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271233, 31.564568, 29.451971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521481, 31.270058, 29.348820>,  <40.671631, 31.093351, 29.286928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521481, 31.270058, 29.348820>,  <40.271233, 31.564568, 29.451971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521481, 31.270058, 29.348820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271642, -0.515469, 0.812713,
		-0.731308, -0.438399, -0.522490,
		0.625620, -0.736274, -0.257879,
		40.709167, 31.049175, 29.271456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821247, 31.020975, 29.633705>,  <40.271233, 31.564568, 29.451971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821247, 31.020975, 29.633705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173271, 30.833195, 29.605099>,  <40.384483, 30.720526, 29.587934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173271, 30.833195, 29.605099>,  <39.821247, 31.020975, 29.633705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173271, 30.833195, 29.605099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207501, -0.515634, 0.831303,
		-0.427132, -0.716755, -0.551199,
		0.880058, -0.469450, -0.071516,
		40.437286, 30.692358, 29.583643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795086, 30.293194, 29.791880>,  <39.821247, 31.020975, 29.633705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795086, 30.293194, 29.791880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191940, 30.328865, 29.827026>,  <40.430054, 30.350267, 29.848114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191940, 30.328865, 29.827026>,  <39.795086, 30.293194, 29.791880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191940, 30.328865, 29.827026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000849, -0.706610, 0.707602,
		0.125190, -0.701961, -0.701127,
		0.992132, 0.089179, 0.087865,
		40.489578, 30.355619, 29.853386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070412, 29.653913, 29.643160>,  <39.795086, 30.293194, 29.791880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070412, 29.653913, 29.643160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349087, 29.844246, 29.857903>,  <40.516293, 29.958445, 29.986748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349087, 29.844246, 29.857903>,  <40.070412, 29.653913, 29.643160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349087, 29.844246, 29.857903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017917, -0.736586, 0.676107,
		0.717151, -0.480654, -0.504644,
		0.696687, 0.475829, 0.536855,
		40.558094, 29.986994, 30.018959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590164, 29.132658, 29.821793>,  <40.070412, 29.653913, 29.643160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590164, 29.132658, 29.821793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655739, 29.410950, 30.101532>,  <40.695084, 29.577925, 30.269375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655739, 29.410950, 30.101532>,  <40.590164, 29.132658, 29.821793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655739, 29.410950, 30.101532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189702, -0.717942, 0.669755,
		0.968059, 0.022869, -0.249679,
		0.163938, 0.695727, 0.699349,
		40.704922, 29.619667, 30.311337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230984, 28.987610, 30.122807>,  <40.590164, 29.132658, 29.821793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230984, 28.987610, 30.122807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051620, 29.201183, 30.409538>,  <40.944004, 29.329327, 30.581577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051620, 29.201183, 30.409538>,  <41.230984, 28.987610, 30.122807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051620, 29.201183, 30.409538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298685, -0.666365, 0.683188,
		0.842446, 0.520454, 0.139326,
		-0.448410, 0.533934, 0.716828,
		40.917099, 29.361364, 30.624586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696388, 28.912336, 30.659807>,  <41.230984, 28.987610, 30.122807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696388, 28.912336, 30.659807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350323, 29.022556, 30.827408>,  <41.142685, 29.088688, 30.927969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350323, 29.022556, 30.827408>,  <41.696388, 28.912336, 30.659807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350323, 29.022556, 30.827408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140521, -0.668839, 0.730006,
		0.481399, 0.690454, 0.539935,
		-0.865164, 0.275552, 0.419001,
		41.090775, 29.105223, 30.953108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767033, 29.057308, 31.329754>,  <41.696388, 28.912336, 30.659807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767033, 29.057308, 31.329754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419804, 28.896152, 31.213730>,  <41.211468, 28.799459, 31.144115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419804, 28.896152, 31.213730>,  <41.767033, 29.057308, 31.329754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419804, 28.896152, 31.213730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314924, -0.898567, 0.305614,
		-0.383765, 0.173948, 0.906900,
		-0.868071, -0.402888, -0.290058,
		41.159382, 28.775286, 31.126713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747890, 28.507442, 31.679863>,  <41.767033, 29.057308, 31.329754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747890, 28.507442, 31.679863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464485, 28.415714, 31.412903>,  <41.294441, 28.360678, 31.252726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464485, 28.415714, 31.412903>,  <41.747890, 28.507442, 31.679863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464485, 28.415714, 31.412903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007976, -0.943067, 0.332507,
		-0.705655, 0.240907, 0.666344,
		-0.708511, -0.229320, -0.667401,
		41.251930, 28.346918, 31.212683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214962, 28.167698, 32.012024>,  <41.747890, 28.507442, 31.679863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214962, 28.167698, 32.012024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229027, 28.055225, 31.628418>,  <41.237465, 27.987741, 31.398256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229027, 28.055225, 31.628418>,  <41.214962, 28.167698, 32.012024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229027, 28.055225, 31.628418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013867, -0.959648, 0.280860,
		-0.999286, 0.003424, -0.037639,
		0.035158, -0.281181, -0.959010,
		41.239574, 27.970871, 31.340715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762356, 27.611338, 31.869593>,  <41.214962, 28.167698, 32.012024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762356, 27.611338, 31.869593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081242, 27.624084, 31.628448>,  <41.272572, 27.631733, 31.483763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081242, 27.624084, 31.628448>,  <40.762356, 27.611338, 31.869593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081242, 27.624084, 31.628448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312280, -0.876394, 0.366627,
		-0.516658, -0.480540, -0.708623,
		0.797211, 0.031868, -0.602859,
		41.320404, 27.633644, 31.447590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871815, 26.920595, 31.673815>,  <40.762356, 27.611338, 31.869593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871815, 26.920595, 31.673815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215282, 27.121666, 31.633823>,  <41.421364, 27.242308, 31.609829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215282, 27.121666, 31.633823>,  <40.871815, 26.920595, 31.673815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215282, 27.121666, 31.633823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501912, -0.785257, 0.362568,
		0.103746, -0.361507, -0.926579,
		0.858674, 0.502676, -0.099977,
		41.472885, 27.272469, 31.603830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313980, 26.445190, 31.595419>,  <40.871815, 26.920595, 31.673815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313980, 26.445190, 31.595419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985664, 26.282101, 31.435387>,  <39.788673, 26.184246, 31.339367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985664, 26.282101, 31.435387>,  <40.313980, 26.445190, 31.595419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985664, 26.282101, 31.435387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273368, 0.334606, -0.901837,
		0.501572, -0.849587, -0.163181,
		-0.820790, -0.407727, -0.400079,
		39.739426, 26.159782, 31.315363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495979, 26.342003, 30.906752>,  <40.313980, 26.445190, 31.595419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495979, 26.342003, 30.906752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098373, 26.306641, 30.881050>,  <39.859810, 26.285423, 30.865629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098373, 26.306641, 30.881050>,  <40.495979, 26.342003, 30.906752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098373, 26.306641, 30.881050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002570, 0.568867, -0.822425,
		0.109259, -0.817664, -0.565232,
		-0.994010, -0.088405, -0.064255,
		39.800171, 26.280119, 30.861774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351646, 25.996599, 30.287926>,  <40.495979, 26.342003, 30.906752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351646, 25.996599, 30.287926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065575, 26.245693, 30.414871>,  <39.893932, 26.395149, 30.491039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065575, 26.245693, 30.414871>,  <40.351646, 25.996599, 30.287926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065575, 26.245693, 30.414871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048001, 0.409230, -0.911168,
		-0.697292, -0.666881, -0.262780,
		-0.715178, 0.622737, 0.317364,
		39.851021, 26.432514, 30.510080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702763, 25.985741, 29.795471>,  <40.351646, 25.996599, 30.287926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702763, 25.985741, 29.795471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770290, 26.340118, 29.968262>,  <39.810806, 26.552744, 30.071936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770290, 26.340118, 29.968262>,  <39.702763, 25.985741, 29.795471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770290, 26.340118, 29.968262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053269, 0.445829, -0.893532,
		-0.984206, 0.127836, 0.122459,
		0.168821, 0.885943, 0.431978,
		39.820938, 26.605902, 30.097855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031654, 26.369068, 29.886133>,  <39.702763, 25.985741, 29.795471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031654, 26.369068, 29.886133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371315, 26.575783, 29.842545>,  <39.575111, 26.699812, 29.816391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371315, 26.575783, 29.842545>,  <39.031654, 26.369068, 29.886133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371315, 26.575783, 29.842545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338706, 0.374531, -0.863137,
		-0.405244, 0.769843, 0.493071,
		0.849150, 0.516787, -0.108974,
		39.626060, 26.730820, 29.809853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920135, 27.117413, 29.757452>,  <39.031654, 26.369068, 29.886133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920135, 27.117413, 29.757452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265285, 27.001801, 29.591610>,  <39.472378, 26.932432, 29.492104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265285, 27.001801, 29.591610>,  <38.920135, 27.117413, 29.757452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265285, 27.001801, 29.591610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130038, 0.665758, -0.734749,
		0.488394, 0.687915, 0.536884,
		0.862880, -0.289032, -0.414607,
		39.524151, 26.915091, 29.467228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177002, 27.654202, 29.489149>,  <38.920135, 27.117413, 29.757452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177002, 27.654202, 29.489149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435150, 27.421310, 29.291359>,  <39.590038, 27.281576, 29.172684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435150, 27.421310, 29.291359>,  <39.177002, 27.654202, 29.489149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435150, 27.421310, 29.291359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038139, 0.671084, -0.740400,
		0.762917, 0.458974, 0.455303,
		0.645371, -0.582228, -0.494476,
		39.628761, 27.246641, 29.143017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670830, 28.134172, 29.200556>,  <39.177002, 27.654202, 29.489149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670830, 28.134172, 29.200556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707829, 27.806206, 28.974571>,  <39.730026, 27.609426, 28.838980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707829, 27.806206, 28.974571>,  <39.670830, 28.134172, 29.200556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707829, 27.806206, 28.974571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003924, 0.567091, -0.823646,
		0.995705, 0.078401, 0.049236,
		0.092496, -0.819915, -0.564964,
		39.735577, 27.560230, 28.805082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200417, 28.284534, 28.707439>,  <39.670830, 28.134172, 29.200556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200417, 28.284534, 28.707439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950565, 28.021461, 28.539013>,  <39.800655, 27.863617, 28.437958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950565, 28.021461, 28.539013>,  <40.200417, 28.284534, 28.707439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950565, 28.021461, 28.539013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104254, 0.464133, -0.879609,
		0.773935, -0.593323, -0.221342,
		-0.624624, -0.657684, -0.421065,
		39.763176, 27.824156, 28.412693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482288, 28.210382, 28.108637>,  <40.200417, 28.284534, 28.707439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482288, 28.210382, 28.108637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109333, 28.080948, 28.044201>,  <39.885559, 28.003286, 28.005539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109333, 28.080948, 28.044201>,  <40.482288, 28.210382, 28.108637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109333, 28.080948, 28.044201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007730, 0.463404, -0.886113,
		0.361383, -0.824954, -0.434573,
		-0.932386, -0.323586, -0.161089,
		39.829617, 27.983871, 27.995874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476700, 27.881367, 27.475893>,  <40.482288, 28.210382, 28.108637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476700, 27.881367, 27.475893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084702, 27.950718, 27.514988>,  <39.849503, 27.992329, 27.538445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084702, 27.950718, 27.514988>,  <40.476700, 27.881367, 27.475893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084702, 27.950718, 27.514988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027659, 0.367660, -0.929549,
		-0.197099, -0.913655, -0.355508,
		-0.979993, 0.173380, 0.097736,
		39.790703, 28.002731, 27.544310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150169, 27.704433, 26.828278>,  <40.476700, 27.881367, 27.475893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150169, 27.704433, 26.828278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864986, 27.933079, 26.990734>,  <39.693878, 28.070267, 27.088207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864986, 27.933079, 26.990734>,  <40.150169, 27.704433, 26.828278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864986, 27.933079, 26.990734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092465, 0.497506, -0.862518,
		-0.695084, -0.652493, -0.301846,
		-0.712957, 0.571612, 0.406141,
		39.651100, 28.104563, 27.112576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839722, 27.934980, 26.241592>,  <40.150169, 27.704433, 26.828278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839722, 27.934980, 26.241592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657711, 28.168713, 26.510368>,  <39.548504, 28.308952, 26.671635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657711, 28.168713, 26.510368>,  <39.839722, 27.934980, 26.241592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657711, 28.168713, 26.510368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227911, 0.653029, -0.722226,
		-0.860816, -0.481777, -0.163971,
		-0.455029, 0.584333, 0.671940,
		39.521202, 28.344013, 26.711950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158787, 28.110332, 26.045424>,  <39.839722, 27.934980, 26.241592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158787, 28.110332, 26.045424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235111, 28.406567, 26.303146>,  <39.280907, 28.584307, 26.457779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235111, 28.406567, 26.303146>,  <39.158787, 28.110332, 26.045424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235111, 28.406567, 26.303146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249037, 0.671411, -0.697989,
		-0.949512, -0.027275, 0.312543,
		0.190807, 0.740584, 0.644305,
		39.292355, 28.628742, 26.496437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511490, 28.504551, 26.092785>,  <39.158787, 28.110332, 26.045424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511490, 28.504551, 26.092785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816013, 28.737766, 26.206257>,  <38.998726, 28.877695, 26.274340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816013, 28.737766, 26.206257>,  <38.511490, 28.504551, 26.092785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816013, 28.737766, 26.206257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377966, 0.754552, -0.536463,
		-0.526830, 0.301193, 0.794816,
		0.761309, 0.583039, 0.283681,
		39.044407, 28.912678, 26.291361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148952, 29.155762, 26.161209>,  <38.511490, 28.504551, 26.092785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148952, 29.155762, 26.161209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530918, 29.269276, 26.196087>,  <38.760098, 29.337383, 26.217014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530918, 29.269276, 26.196087>,  <38.148952, 29.155762, 26.161209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530918, 29.269276, 26.196087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214269, 0.862094, -0.459219,
		-0.205489, 0.419832, 0.884034,
		0.954915, 0.283786, 0.087194,
		38.817394, 29.354412, 26.222244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252792, 29.797155, 26.598402>,  <38.148952, 29.155762, 26.161209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252792, 29.797155, 26.598402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549896, 29.770733, 26.331882>,  <38.728157, 29.754879, 26.171970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549896, 29.770733, 26.331882>,  <38.252792, 29.797155, 26.598402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549896, 29.770733, 26.331882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257793, 0.890195, -0.375627,
		0.617946, 0.450766, 0.644168,
		0.742755, -0.066056, -0.666297,
		38.772724, 29.750916, 26.131994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604324, 30.460020, 26.654888>,  <38.252792, 29.797155, 26.598402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604324, 30.460020, 26.654888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662128, 30.284145, 26.300308>,  <38.696812, 30.178621, 26.087561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662128, 30.284145, 26.300308>,  <38.604324, 30.460020, 26.654888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662128, 30.284145, 26.300308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296145, 0.835572, -0.462729,
		0.944148, 0.329387, -0.009461,
		0.144511, -0.439686, -0.886450,
		38.705482, 30.152239, 26.034374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030914, 30.866379, 26.357195>,  <38.604324, 30.460020, 26.654888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030914, 30.866379, 26.357195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859547, 30.660412, 26.060192>,  <38.756725, 30.536831, 25.881990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859547, 30.660412, 26.060192>,  <39.030914, 30.866379, 26.357195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859547, 30.660412, 26.060192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143244, 0.850051, -0.506848,
		0.892154, -0.110783, -0.437936,
		-0.428418, -0.514918, -0.742507,
		38.731022, 30.505936, 25.837440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365131, 31.126368, 25.854160>,  <39.030914, 30.866379, 26.357195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365131, 31.126368, 25.854160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062214, 30.964199, 25.649361>,  <38.880463, 30.866898, 25.526482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062214, 30.964199, 25.649361>,  <39.365131, 31.126368, 25.854160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062214, 30.964199, 25.649361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160266, 0.875375, -0.456106,
		0.633106, -0.263350, -0.727890,
		-0.757293, -0.405419, -0.511999,
		38.835026, 30.842573, 25.495760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426243, 31.320660, 25.097551>,  <39.365131, 31.126368, 25.854160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426243, 31.320660, 25.097551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041233, 31.213673, 25.115440>,  <38.810226, 31.149481, 25.126173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041233, 31.213673, 25.115440>,  <39.426243, 31.320660, 25.097551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041233, 31.213673, 25.115440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253626, 0.829510, -0.497581,
		0.095989, -0.490278, -0.866264,
		-0.962528, -0.267469, 0.044723,
		38.752476, 31.133432, 25.128857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184311, 31.149925, 24.381510>,  <39.426243, 31.320660, 25.097551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184311, 31.149925, 24.381510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864315, 31.245113, 24.601833>,  <38.672318, 31.302225, 24.734028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864315, 31.245113, 24.601833>,  <39.184311, 31.149925, 24.381510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864315, 31.245113, 24.601833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234000, 0.721567, -0.651601,
		-0.552507, -0.650162, -0.521560,
		-0.799987, 0.237969, 0.550809,
		38.624317, 31.316504, 24.767076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744152, 31.337225, 23.860910>,  <39.184311, 31.149925, 24.381510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744152, 31.337225, 23.860910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600388, 31.501709, 24.195988>,  <38.514130, 31.600399, 24.397034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600388, 31.501709, 24.195988>,  <38.744152, 31.337225, 23.860910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600388, 31.501709, 24.195988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205440, 0.840787, -0.500871,
		-0.910284, -0.352115, -0.217710,
		-0.359412, 0.411209, 0.837694,
		38.492565, 31.625072, 24.447296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258595, 31.807632, 23.616146>,  <38.744152, 31.337225, 23.860910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258595, 31.807632, 23.616146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318016, 31.933208, 23.991245>,  <38.353668, 32.008556, 24.216305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318016, 31.933208, 23.991245>,  <38.258595, 31.807632, 23.616146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318016, 31.933208, 23.991245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042601, 0.945358, -0.323238,
		-0.987987, 0.087967, 0.127059,
		0.148551, 0.313942, 0.937749,
		38.362583, 32.027390, 24.272570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877628, 32.422379, 23.654961>,  <38.258595, 31.807632, 23.616146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877628, 32.422379, 23.654961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111404, 32.448643, 23.978470>,  <38.251671, 32.464401, 24.172575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111404, 32.448643, 23.978470>,  <37.877628, 32.422379, 23.654961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111404, 32.448643, 23.978470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050195, 0.997737, -0.044727,
		-0.809879, -0.014456, 0.586418,
		0.584445, 0.065659, 0.808773,
		38.286739, 32.468342, 24.221102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510433, 32.879292, 24.175583>,  <37.877628, 32.422379, 23.654961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510433, 32.879292, 24.175583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904644, 32.880867, 24.243370>,  <38.141171, 32.881813, 24.284042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904644, 32.880867, 24.243370>,  <37.510433, 32.879292, 24.175583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904644, 32.880867, 24.243370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000297, 0.999768, -0.021518,
		-0.169515, 0.021156, 0.985300,
		0.985527, 0.003940, 0.169470,
		38.200302, 32.882050, 24.294210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695267, 33.470619, 24.648228>,  <37.510433, 32.879292, 24.175583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695267, 33.470619, 24.648228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015289, 33.361816, 24.434341>,  <38.207302, 33.296535, 24.306009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015289, 33.361816, 24.434341>,  <37.695267, 33.470619, 24.648228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015289, 33.361816, 24.434341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217476, 0.962178, -0.164064,
		0.559118, 0.014973, 0.828953,
		0.800057, -0.272008, -0.534715,
		38.255306, 33.280212, 24.273928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511742, 32.709824, 25.029270>,  <37.695267, 33.470619, 24.648228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511742, 32.709824, 25.029270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141071, 32.672714, 24.883579>,  <36.918667, 32.650448, 24.796165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141071, 32.672714, 24.883579>,  <37.511742, 32.709824, 25.029270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141071, 32.672714, 24.883579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357075, 0.085190, -0.930183,
		0.117324, -0.992036, -0.045817,
		-0.926678, -0.092773, -0.364226,
		36.863068, 32.644882, 24.774311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332386, 32.071369, 24.605080>,  <37.511742, 32.709824, 25.029270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332386, 32.071369, 24.605080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119526, 32.392952, 24.498898>,  <36.991810, 32.585903, 24.435188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119526, 32.392952, 24.498898>,  <37.332386, 32.071369, 24.605080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119526, 32.392952, 24.498898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302872, -0.112018, -0.946425,
		-0.790620, -0.584042, -0.183885,
		-0.532154, 0.803957, -0.265454,
		36.959881, 32.634140, 24.419262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879162, 31.835556, 24.098398>,  <37.332386, 32.071369, 24.605080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879162, 31.835556, 24.098398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925716, 32.224777, 24.018780>,  <36.953648, 32.458309, 23.971008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925716, 32.224777, 24.018780>,  <36.879162, 31.835556, 24.098398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925716, 32.224777, 24.018780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274344, -0.224107, -0.935153,
		-0.954563, 0.054227, -0.293034,
		0.116382, 0.973055, -0.199048,
		36.960632, 32.516693, 23.959066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313637, 31.678062, 23.841591>,  <36.879162, 31.835556, 24.098398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313637, 31.678062, 23.841591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982002, 31.801586, 24.028030>,  <35.783020, 31.875700, 24.139894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982002, 31.801586, 24.028030>,  <36.313637, 31.678062, 23.841591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982002, 31.801586, 24.028030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112518, -0.908733, 0.401924,
		0.547676, 0.280787, 0.788168,
		-0.829090, 0.308807, 0.466098,
		35.733276, 31.894228, 24.167860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670616, 31.201193, 23.797834>,  <36.313637, 31.678062, 23.841591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670616, 31.201193, 23.797834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653202, 31.224594, 24.196770>,  <35.642754, 31.238634, 24.436131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653202, 31.224594, 24.196770>,  <35.670616, 31.201193, 23.797834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653202, 31.224594, 24.196770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596281, -0.802500, 0.021049,
		0.801595, -0.593777, 0.069818,
		-0.043531, 0.058504, 0.997338,
		35.640144, 31.242146, 24.495972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580456, 30.482080, 24.150988>,  <35.670616, 31.201193, 23.797834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580456, 30.482080, 24.150988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435547, 30.726208, 24.432774>,  <35.348602, 30.872684, 24.601845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435547, 30.726208, 24.432774>,  <35.580456, 30.482080, 24.150988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435547, 30.726208, 24.432774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666396, -0.698032, 0.262046,
		0.651670, -0.374520, 0.659591,
		-0.362274, 0.610317, 0.704465,
		35.326866, 30.909304, 24.644114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689644, 30.236200, 24.855499>,  <35.580456, 30.482080, 24.150988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689644, 30.236200, 24.855499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365837, 30.464886, 24.802097>,  <35.171555, 30.602097, 24.770056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365837, 30.464886, 24.802097>,  <35.689644, 30.236200, 24.855499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365837, 30.464886, 24.802097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578531, -0.738105, 0.347135,
		0.099921, 0.358250, 0.928263,
		-0.809517, 0.571715, -0.133507,
		35.122982, 30.636400, 24.762045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288845, 30.033682, 25.505627>,  <35.689644, 30.236200, 24.855499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288845, 30.033682, 25.505627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038837, 30.218014, 25.253597>,  <34.888832, 30.328613, 25.102381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038837, 30.218014, 25.253597>,  <35.288845, 30.033682, 25.505627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038837, 30.218014, 25.253597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773670, -0.473104, 0.421434,
		-0.103880, 0.750871, 0.652229,
		-0.625015, 0.460831, -0.630072,
		34.851334, 30.356264, 25.064575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684807, 30.177954, 25.923164>,  <35.288845, 30.033682, 25.505627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684807, 30.177954, 25.923164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556755, 30.204414, 25.545139>,  <34.479923, 30.220291, 25.318325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556755, 30.204414, 25.545139>,  <34.684807, 30.177954, 25.923164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556755, 30.204414, 25.545139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858442, -0.442229, 0.259830,
		-0.400747, 0.894460, 0.198354,
		-0.320125, 0.066149, -0.945063,
		34.460716, 30.224258, 25.261620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914574, 30.436972, 25.815260>,  <34.684807, 30.177954, 25.923164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914574, 30.436972, 25.815260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019928, 30.223396, 25.493877>,  <34.083141, 30.095251, 25.301048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019928, 30.223396, 25.493877>,  <33.914574, 30.436972, 25.815260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019928, 30.223396, 25.493877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905339, -0.424434, -0.014721,
		-0.333153, 0.731277, -0.595183,
		0.263381, -0.533938, -0.803455,
		34.098942, 30.063215, 25.252840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265129, 30.499451, 25.382240>,  <33.914574, 30.436972, 25.815260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265129, 30.499451, 25.382240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473072, 30.192581, 25.231937>,  <33.597836, 30.008459, 25.141756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473072, 30.192581, 25.231937>,  <33.265129, 30.499451, 25.382240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473072, 30.192581, 25.231937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853911, -0.479145, -0.203115,
		-0.024216, 0.426453, -0.904185,
		0.519855, -0.767175, -0.375756,
		33.629028, 29.962429, 25.119211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953339, 30.314291, 24.767569>,  <33.265129, 30.499451, 25.382240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953339, 30.314291, 24.767569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167061, 29.985317, 24.845669>,  <33.295292, 29.787933, 24.892529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167061, 29.985317, 24.845669>,  <32.953339, 30.314291, 24.767569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167061, 29.985317, 24.845669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821138, -0.559822, -0.111042,
		0.200630, -0.100997, -0.974447,
		0.534302, -0.822434, 0.195250,
		33.327351, 29.738586, 24.904243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634262, 29.901079, 24.374310>,  <32.953339, 30.314291, 24.767569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634262, 29.901079, 24.374310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823124, 29.676914, 24.646488>,  <32.936440, 29.542416, 24.809795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823124, 29.676914, 24.646488>,  <32.634262, 29.901079, 24.374310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823124, 29.676914, 24.646488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858776, -0.466621, 0.211585,
		0.198936, -0.684254, -0.701585,
		0.472152, -0.560412, 0.680449,
		32.964771, 29.508791, 24.850622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282024, 29.212570, 24.380251>,  <32.634262, 29.901079, 24.374310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282024, 29.212570, 24.380251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470665, 29.194069, 24.732491>,  <32.583847, 29.182968, 24.943834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470665, 29.194069, 24.732491>,  <32.282024, 29.212570, 24.380251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470665, 29.194069, 24.732491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831391, -0.356171, 0.426535,
		0.293915, -0.933275, -0.206426,
		0.471597, -0.046255, 0.880600,
		32.612144, 29.180193, 24.996670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330803, 28.476126, 24.636814>,  <32.282024, 29.212570, 24.380251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330803, 28.476126, 24.636814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344471, 28.728310, 24.947002>,  <32.352673, 28.879620, 25.133116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344471, 28.728310, 24.947002>,  <32.330803, 28.476126, 24.636814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344471, 28.728310, 24.947002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729301, -0.514798, 0.450671,
		0.683339, -0.580951, 0.442203,
		0.034173, 0.630460, 0.775470,
		32.354721, 28.917448, 25.179644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158108, 28.079401, 25.158451>,  <32.330803, 28.476126, 24.636814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158108, 28.079401, 25.158451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125675, 28.424347, 25.358353>,  <32.106216, 28.631315, 25.478294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125675, 28.424347, 25.358353>,  <32.158108, 28.079401, 25.158451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125675, 28.424347, 25.358353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741212, -0.387388, 0.548210,
		0.666356, -0.325973, 0.670606,
		-0.081083, 0.862365, 0.499753,
		32.101349, 28.683056, 25.508278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212227, 27.832916, 25.889826>,  <32.158108, 28.079401, 25.158451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212227, 27.832916, 25.889826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053894, 28.200237, 25.887379>,  <31.958895, 28.420630, 25.885910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053894, 28.200237, 25.887379>,  <32.212227, 27.832916, 25.889826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053894, 28.200237, 25.887379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708670, -0.301218, 0.638009,
		0.584044, 0.256876, 0.770005,
		-0.395828, 0.918304, -0.006115,
		31.935146, 28.475729, 25.885544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225990, 28.097429, 26.556103>,  <32.212227, 27.832916, 25.889826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225990, 28.097429, 26.556103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935843, 28.282475, 26.352211>,  <31.761753, 28.393501, 26.229876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935843, 28.282475, 26.352211>,  <32.225990, 28.097429, 26.556103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935843, 28.282475, 26.352211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647778, -0.208259, 0.732811,
		0.232852, 0.861753, 0.450735,
		-0.725371, 0.462613, -0.509731,
		31.718231, 28.421259, 26.199291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029907, 28.542585, 27.023533>,  <32.225990, 28.097429, 26.556103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029907, 28.542585, 27.023533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724878, 28.509724, 26.766865>,  <31.541862, 28.490005, 26.612864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724878, 28.509724, 26.766865>,  <32.029907, 28.542585, 27.023533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724878, 28.509724, 26.766865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583593, -0.340613, 0.737158,
		-0.279123, 0.936607, 0.211796,
		-0.762568, -0.082155, -0.641670,
		31.496107, 28.485077, 26.574364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478065, 28.860043, 27.410683>,  <32.029907, 28.542585, 27.023533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478065, 28.860043, 27.410683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323412, 28.653214, 27.105225>,  <31.230619, 28.529116, 26.921949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323412, 28.653214, 27.105225>,  <31.478065, 28.860043, 27.410683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323412, 28.653214, 27.105225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543673, -0.541060, 0.641619,
		-0.744939, 0.663244, -0.071926,
		-0.386633, -0.517071, -0.763644,
		31.207422, 28.498093, 26.876131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827658, 28.915388, 27.555347>,  <31.478065, 28.860043, 27.410683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827658, 28.915388, 27.555347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853523, 28.597610, 27.313793>,  <30.869043, 28.406944, 27.168859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853523, 28.597610, 27.313793>,  <30.827658, 28.915388, 27.555347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853523, 28.597610, 27.313793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614443, -0.508532, 0.603204,
		-0.786307, 0.332049, -0.521023,
		0.064664, -0.794443, -0.603887,
		30.872923, 28.359278, 27.132627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177273, 28.740835, 27.423513>,  <30.827658, 28.915388, 27.555347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177273, 28.740835, 27.423513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417620, 28.421928, 27.400467>,  <30.561829, 28.230583, 27.386639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417620, 28.421928, 27.400467>,  <30.177273, 28.740835, 27.423513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417620, 28.421928, 27.400467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521796, -0.445818, 0.727307,
		-0.605546, -0.406951, -0.683889,
		0.600869, -0.797269, -0.057618,
		30.597881, 28.182749, 27.383183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762150, 28.172068, 27.685978>,  <30.177273, 28.740835, 27.423513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762150, 28.172068, 27.685978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124886, 28.003918, 27.698147>,  <30.342527, 27.903028, 27.705448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124886, 28.003918, 27.698147>,  <29.762150, 28.172068, 27.685978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124886, 28.003918, 27.698147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273130, -0.531155, 0.802044,
		-0.320997, -0.735636, -0.596490,
		0.906841, -0.420373, 0.030425,
		30.396938, 27.877806, 27.707273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704405, 27.466413, 27.747311>,  <29.762150, 28.172068, 27.685978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704405, 27.466413, 27.747311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072828, 27.529915, 27.889549>,  <30.293882, 27.568016, 27.974894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072828, 27.529915, 27.889549>,  <29.704405, 27.466413, 27.747311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072828, 27.529915, 27.889549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191986, -0.609342, 0.769313,
		0.338814, -0.776852, -0.530760,
		0.921057, 0.158756, 0.355599,
		30.349146, 27.577541, 27.996229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867565, 26.813267, 28.066214>,  <29.704405, 27.466413, 27.747311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867565, 26.813267, 28.066214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152590, 27.054367, 28.209850>,  <30.323605, 27.199028, 28.296032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152590, 27.054367, 28.209850>,  <29.867565, 26.813267, 28.066214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152590, 27.054367, 28.209850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030632, -0.484596, 0.874201,
		0.700940, -0.633923, -0.326841,
		0.712562, 0.602751, 0.359092,
		30.366358, 27.235191, 28.317577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467175, 26.447933, 28.181307>,  <29.867565, 26.813267, 28.066214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467175, 26.447933, 28.181307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486555, 26.760445, 28.430225>,  <30.498182, 26.947952, 28.579576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486555, 26.760445, 28.430225>,  <30.467175, 26.447933, 28.181307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486555, 26.760445, 28.430225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015280, -0.623535, 0.781646,
		0.998709, -0.028362, -0.042148,
		0.048450, 0.781281, 0.622296,
		30.501091, 26.994829, 28.616915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983139, 26.247343, 28.658703>,  <30.467175, 26.447933, 28.181307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983139, 26.247343, 28.658703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782536, 26.526844, 28.862755>,  <30.662174, 26.694544, 28.985186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782536, 26.526844, 28.862755>,  <30.983139, 26.247343, 28.658703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782536, 26.526844, 28.862755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110012, -0.533350, 0.838710,
		0.858130, 0.476741, 0.190608,
		-0.501508, 0.698753, 0.510131,
		30.632084, 26.736469, 29.015795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357145, 26.353876, 29.333586>,  <30.983139, 26.247343, 28.658703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357145, 26.353876, 29.333586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996809, 26.513184, 29.402718>,  <30.780607, 26.608768, 29.444197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996809, 26.513184, 29.402718>,  <31.357145, 26.353876, 29.333586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996809, 26.513184, 29.402718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043076, -0.478112, 0.877242,
		0.432010, 0.782809, 0.447858,
		-0.900840, 0.398269, 0.172829,
		30.726557, 26.632664, 29.454567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382187, 26.510117, 30.020502>,  <31.357145, 26.353876, 29.333586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382187, 26.510117, 30.020502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985016, 26.530720, 29.977711>,  <30.746714, 26.543081, 29.952036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985016, 26.530720, 29.977711>,  <31.382187, 26.510117, 30.020502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985016, 26.530720, 29.977711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118005, -0.527786, 0.841140,
		-0.013135, 0.847814, 0.530131,
		-0.992926, 0.051510, -0.106979,
		30.687138, 26.546173, 29.945618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019320, 26.926178, 30.643784>,  <31.382187, 26.510117, 30.020502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019320, 26.926178, 30.643784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752447, 26.680984, 30.474491>,  <30.592323, 26.533869, 30.372915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752447, 26.680984, 30.474491>,  <31.019320, 26.926178, 30.643784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752447, 26.680984, 30.474491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208672, -0.391622, 0.896152,
		-0.715071, 0.686211, 0.133370,
		-0.667180, -0.612982, -0.423231,
		30.552294, 26.497089, 30.347521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419621, 26.909803, 31.008568>,  <31.019320, 26.926178, 30.643784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419621, 26.909803, 31.008568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383434, 26.566231, 30.806953>,  <30.361723, 26.360086, 30.685986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383434, 26.566231, 30.806953>,  <30.419621, 26.909803, 31.008568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383434, 26.566231, 30.806953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238246, -0.472751, 0.848378,
		-0.966982, 0.196833, -0.161870,
		-0.090465, -0.858932, -0.504037,
		30.356295, 26.308552, 30.655743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920063, 26.551226, 31.325653>,  <30.419621, 26.909803, 31.008568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920063, 26.551226, 31.325653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094696, 26.252537, 31.124931>,  <30.199476, 26.073324, 31.004499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094696, 26.252537, 31.124931>,  <29.920063, 26.551226, 31.325653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094696, 26.252537, 31.124931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156457, -0.612283, 0.775004,
		-0.885957, -0.259841, -0.384140,
		0.436580, -0.746721, -0.501802,
		30.225670, 26.028521, 30.974390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547157, 25.977112, 31.475809>,  <29.920063, 26.551226, 31.325653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547157, 25.977112, 31.475809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883511, 25.804718, 31.344864>,  <30.085323, 25.701283, 31.266296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883511, 25.804718, 31.344864>,  <29.547157, 25.977112, 31.475809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883511, 25.804718, 31.344864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002310, -0.607720, 0.794148,
		-0.541209, -0.667031, -0.512019,
		0.840885, -0.430983, -0.327363,
		30.135777, 25.675423, 31.246655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388012, 25.303705, 31.418848>,  <29.547157, 25.977112, 31.475809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388012, 25.303705, 31.418848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781778, 25.355228, 31.466740>,  <30.018038, 25.386143, 31.495474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781778, 25.355228, 31.466740>,  <29.388012, 25.303705, 31.418848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781778, 25.355228, 31.466740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019567, -0.596365, 0.802475,
		0.174766, -0.792311, -0.584551,
		0.984416, 0.128807, 0.119727,
		30.077103, 25.393871, 31.502657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585356, 24.750916, 31.747433>,  <29.388012, 25.303705, 31.418848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585356, 24.750916, 31.747433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905396, 24.979313, 31.820976>,  <30.097420, 25.116352, 31.865103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905396, 24.979313, 31.820976>,  <29.585356, 24.750916, 31.747433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905396, 24.979313, 31.820976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138164, -0.473675, 0.869795,
		0.583739, -0.670519, -0.457878,
		0.800099, 0.570996, 0.183861,
		30.145426, 25.150612, 31.876135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115034, 24.266972, 31.797829>,  <29.585356, 24.750916, 31.747433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115034, 24.266972, 31.797829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249477, 24.598454, 31.976837>,  <30.330143, 24.797342, 32.084244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249477, 24.598454, 31.976837>,  <30.115034, 24.266972, 31.797829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249477, 24.598454, 31.976837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326643, -0.548243, 0.769892,
		0.883366, -0.112588, -0.454960,
		0.336109, 0.828706, 0.447523,
		30.350309, 24.847065, 32.111095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798325, 24.158651, 32.040943>,  <30.115034, 24.266972, 31.797829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798325, 24.158651, 32.040943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677080, 24.468399, 32.263107>,  <30.604334, 24.654247, 32.396404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677080, 24.468399, 32.263107>,  <30.798325, 24.158651, 32.040943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677080, 24.468399, 32.263107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417870, -0.415799, 0.807772,
		0.856452, 0.476931, -0.197553,
		-0.303109, 0.774369, 0.555407,
		30.586147, 24.700710, 32.429729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326107, 24.270847, 32.590397>,  <30.798325, 24.158651, 32.040943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326107, 24.270847, 32.590397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997850, 24.453350, 32.728020>,  <30.800896, 24.562851, 32.810593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997850, 24.453350, 32.728020>,  <31.326107, 24.270847, 32.590397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997850, 24.453350, 32.728020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145913, -0.414825, 0.898126,
		0.552499, 0.787243, 0.273849,
		-0.820643, 0.456255, 0.344059,
		30.751657, 24.590227, 32.831238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561357, 24.485859, 33.178440>,  <31.326107, 24.270847, 32.590397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561357, 24.485859, 33.178440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162531, 24.467266, 33.202759>,  <30.923235, 24.456110, 33.217350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162531, 24.467266, 33.202759>,  <31.561357, 24.485859, 33.178440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162531, 24.467266, 33.202759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076039, -0.511724, 0.855778,
		-0.008668, 0.857891, 0.513758,
		-0.997067, -0.046484, 0.060798,
		30.863411, 24.453321, 33.220997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457844, 24.597332, 33.926994>,  <31.561357, 24.485859, 33.178440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457844, 24.597332, 33.926994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118036, 24.431976, 33.795891>,  <30.914152, 24.332764, 33.717228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118036, 24.431976, 33.795891>,  <31.457844, 24.597332, 33.926994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118036, 24.431976, 33.795891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080663, -0.512196, 0.855072,
		-0.521357, 0.752838, 0.401774,
		-0.849518, -0.413390, -0.327763,
		30.863180, 24.307959, 33.697563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079311, 24.644442, 34.526257>,  <31.457844, 24.597332, 33.926994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079311, 24.644442, 34.526257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917040, 24.376881, 34.277100>,  <30.819677, 24.216343, 34.127605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917040, 24.376881, 34.277100>,  <31.079311, 24.644442, 34.526257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917040, 24.376881, 34.277100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105616, -0.642618, 0.758872,
		-0.907894, 0.373645, 0.190049,
		-0.405677, -0.668903, -0.622892,
		30.795336, 24.176210, 34.090233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353594, 24.587803, 34.786213>,  <31.079311, 24.644442, 34.526257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353594, 24.587803, 34.786213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472004, 24.248043, 34.611450>,  <30.543051, 24.044188, 34.506592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472004, 24.248043, 34.611450>,  <30.353594, 24.587803, 34.786213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472004, 24.248043, 34.611450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291054, -0.515871, 0.805708,
		-0.909756, -0.111347, -0.399933,
		0.296027, -0.849399, -0.436908,
		30.560812, 23.993223, 34.480377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891899, 24.099451, 35.097408>,  <30.353594, 24.587803, 34.786213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891899, 24.099451, 35.097408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188366, 23.873981, 34.951565>,  <30.366245, 23.738699, 34.864059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188366, 23.873981, 34.951565>,  <29.891899, 24.099451, 35.097408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188366, 23.873981, 34.951565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249415, -0.735462, 0.629991,
		-0.623267, -0.375990, -0.685690,
		0.741168, -0.563674, -0.364612,
		30.410717, 23.704880, 34.842182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583569, 23.353767, 35.018673>,  <29.891899, 24.099451, 35.097408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583569, 23.353767, 35.018673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982405, 23.345470, 35.048004>,  <30.221706, 23.340492, 35.065605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982405, 23.345470, 35.048004>,  <29.583569, 23.353767, 35.018673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982405, 23.345470, 35.048004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070739, -0.609846, 0.789356,
		0.028350, -0.792248, -0.609540,
		0.997092, -0.020740, 0.073332,
		30.281532, 23.339249, 35.070004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720291, 22.682522, 35.276867>,  <29.583569, 23.353767, 35.018673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720291, 22.682522, 35.276867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077608, 22.848858, 35.345108>,  <30.291998, 22.948660, 35.386051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077608, 22.848858, 35.345108>,  <29.720291, 22.682522, 35.276867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077608, 22.848858, 35.345108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112338, -0.574064, 0.811068,
		0.435211, -0.705356, -0.559522,
		0.893292, 0.415841, 0.170600,
		30.345596, 22.973610, 35.396290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173498, 22.055214, 35.421501>,  <29.720291, 22.682522, 35.276867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173498, 22.055214, 35.421501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391870, 22.361237, 35.558121>,  <30.522894, 22.544849, 35.640091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391870, 22.361237, 35.558121>,  <30.173498, 22.055214, 35.421501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391870, 22.361237, 35.558121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126652, -0.478326, 0.869001,
		0.828204, -0.431156, -0.358027,
		0.545929, 0.765055, 0.341545,
		30.555649, 22.590754, 35.660583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765236, 21.733456, 35.610962>,  <30.173498, 22.055214, 35.421501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765236, 21.733456, 35.610962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744156, 22.068195, 35.828918>,  <30.731508, 22.269039, 35.959694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744156, 22.068195, 35.828918>,  <30.765236, 21.733456, 35.610962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744156, 22.068195, 35.828918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046317, -0.543014, 0.838445,
		0.997536, 0.069424, -0.010143,
		-0.052701, 0.836849, 0.544891,
		30.728346, 22.319250, 35.992386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160717, 21.690313, 36.189751>,  <30.765236, 21.733456, 35.610962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160717, 21.690313, 36.189751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905003, 21.975739, 36.304390>,  <30.751574, 22.146994, 36.373173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905003, 21.975739, 36.304390>,  <31.160717, 21.690313, 36.189751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905003, 21.975739, 36.304390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038348, -0.401827, 0.914912,
		0.768011, 0.573902, 0.284247,
		-0.639288, 0.713563, 0.286600,
		30.713217, 22.189808, 36.390369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441027, 21.878962, 36.898243>,  <31.160717, 21.690313, 36.189751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441027, 21.878962, 36.898243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064096, 22.012486, 36.907986>,  <30.837938, 22.092600, 36.913830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064096, 22.012486, 36.907986>,  <31.441027, 21.878962, 36.898243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064096, 22.012486, 36.907986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022856, -0.136776, 0.990338,
		0.333915, 0.932665, 0.136517,
		-0.942326, 0.333809, 0.024355,
		30.781399, 22.112629, 36.915291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368464, 22.512451, 37.358833>,  <31.441027, 21.878962, 36.898243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368464, 22.512451, 37.358833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024441, 22.308422, 37.363411>,  <30.818027, 22.186005, 37.366158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024441, 22.308422, 37.363411>,  <31.368464, 22.512451, 37.358833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024441, 22.308422, 37.363411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048451, -0.059327, 0.997062,
		-0.507893, 0.858084, 0.075738,
		-0.860056, -0.510071, 0.011443,
		30.766424, 22.155401, 37.366844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829435, 22.873795, 37.686150>,  <31.368464, 22.512451, 37.358833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829435, 22.873795, 37.686150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793913, 22.477371, 37.725971>,  <30.772598, 22.239517, 37.749866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793913, 22.477371, 37.725971>,  <30.829435, 22.873795, 37.686150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793913, 22.477371, 37.725971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076983, 0.106483, 0.991330,
		-0.993069, 0.080374, -0.085751,
		-0.088808, -0.991061, 0.099557,
		30.767271, 22.180054, 37.755840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197235, 22.713303, 37.998482>,  <30.829435, 22.873795, 37.686150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197235, 22.713303, 37.998482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463818, 22.427517, 38.083691>,  <30.623766, 22.256044, 38.134815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463818, 22.427517, 38.083691>,  <30.197235, 22.713303, 37.998482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463818, 22.427517, 38.083691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155008, 0.146694, 0.976961,
		-0.729255, -0.684119, -0.012983,
		0.666454, -0.714466, 0.213021,
		30.663754, 22.213177, 38.147598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829800, 22.201767, 38.182598>,  <30.197235, 22.713303, 37.998482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829800, 22.201767, 38.182598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197208, 22.220619, 38.339619>,  <30.417654, 22.231930, 38.433830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197208, 22.220619, 38.339619>,  <29.829800, 22.201767, 38.182598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197208, 22.220619, 38.339619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395188, 0.139939, 0.907879,
		-0.012148, -0.989038, 0.147161,
		0.918520, 0.047128, 0.392556,
		30.472765, 22.234758, 38.457386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376129, 22.734072, 38.471272>,  <29.829800, 22.201767, 38.182598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376129, 22.734072, 38.471272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017668, 22.760147, 38.295700>,  <28.802591, 22.775791, 38.190357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017668, 22.760147, 38.295700>,  <29.376129, 22.734072, 38.471272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017668, 22.760147, 38.295700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365547, 0.669199, -0.646953,
		0.251556, -0.740218, -0.623536,
		-0.896156, 0.065187, -0.438926,
		28.748821, 22.779703, 38.164021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426517, 22.612614, 37.786823>,  <29.376129, 22.734072, 38.471272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426517, 22.612614, 37.786823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103033, 22.844727, 37.825310>,  <28.908943, 22.983995, 37.848400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103033, 22.844727, 37.825310>,  <29.426517, 22.612614, 37.786823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103033, 22.844727, 37.825310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394325, 0.656217, -0.643340,
		-0.436457, -0.482337, -0.759510,
		-0.808710, 0.580285, 0.096213,
		28.860420, 23.018812, 37.854176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430870, 23.114420, 37.249161>,  <29.426517, 22.612614, 37.786823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430870, 23.114420, 37.249161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138935, 23.254002, 37.484303>,  <28.963774, 23.337751, 37.625385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138935, 23.254002, 37.484303>,  <29.430870, 23.114420, 37.249161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138935, 23.254002, 37.484303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011224, 0.865908, -0.500078,
		-0.683530, -0.358377, -0.635887,
		-0.729836, 0.348956, 0.587851,
		28.919985, 23.358688, 37.660660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811874, 23.479534, 36.955597>,  <29.430870, 23.114420, 37.249161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811874, 23.479534, 36.955597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907228, 23.614670, 37.319801>,  <28.964441, 23.695751, 37.538326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907228, 23.614670, 37.319801>,  <28.811874, 23.479534, 36.955597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907228, 23.614670, 37.319801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011778, 0.936468, -0.350554,
		-0.971099, 0.094292, 0.219262,
		0.238387, 0.337840, 0.910514,
		28.978745, 23.716022, 37.592957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334772, 24.005266, 37.412476>,  <28.811874, 23.479534, 36.955597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334772, 24.005266, 37.412476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733099, 24.040909, 37.404385>,  <28.972095, 24.062294, 37.399532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733099, 24.040909, 37.404385>,  <28.334772, 24.005266, 37.412476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733099, 24.040909, 37.404385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089171, 0.899388, -0.427960,
		-0.019946, 0.427973, 0.903571,
		0.995817, 0.089108, -0.020223,
		29.031843, 24.067642, 37.398319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486546, 24.713158, 37.677067>,  <28.334772, 24.005266, 37.412476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486546, 24.713158, 37.677067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791142, 24.578289, 37.455635>,  <28.973900, 24.497368, 37.322777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791142, 24.578289, 37.455635>,  <28.486546, 24.713158, 37.677067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791142, 24.578289, 37.455635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006879, 0.849802, -0.527057,
		0.648140, 0.405157, 0.644796,
		0.761490, -0.337171, -0.553578,
		29.019588, 24.477139, 37.289562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142164, 25.183592, 37.731682>,  <28.486546, 24.713158, 37.677067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142164, 25.183592, 37.731682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135437, 24.979496, 37.387733>,  <29.131401, 24.857038, 37.181366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135437, 24.979496, 37.387733>,  <29.142164, 25.183592, 37.731682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135437, 24.979496, 37.387733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059134, 0.858992, -0.508563,
		0.998108, 0.042294, -0.044621,
		-0.016820, -0.510239, -0.859868,
		29.130390, 24.826424, 37.129772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580282, 25.645370, 37.337662>,  <29.142164, 25.183592, 37.731682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580282, 25.645370, 37.337662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372986, 25.401321, 37.097935>,  <29.248608, 25.254892, 36.954098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372986, 25.401321, 37.097935>,  <29.580282, 25.645370, 37.337662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372986, 25.401321, 37.097935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114162, 0.743838, -0.658538,
		0.847583, -0.272861, -0.455137,
		-0.518237, -0.610125, -0.599314,
		29.217514, 25.218285, 36.918140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940889, 25.697458, 36.733913>,  <29.580282, 25.645370, 37.337662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940889, 25.697458, 36.733913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579329, 25.549114, 36.648659>,  <29.362392, 25.460108, 36.597507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579329, 25.549114, 36.648659>,  <29.940889, 25.697458, 36.733913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579329, 25.549114, 36.648659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117432, 0.694289, -0.710051,
		0.411306, -0.616787, -0.671120,
		-0.903901, -0.370859, -0.213134,
		29.308159, 25.437857, 36.584717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977602, 25.557112, 36.073513>,  <29.940889, 25.697458, 36.733913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977602, 25.557112, 36.073513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591070, 25.607597, 36.163204>,  <29.359152, 25.637890, 36.217018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591070, 25.607597, 36.163204>,  <29.977602, 25.557112, 36.073513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591070, 25.607597, 36.163204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096009, 0.631645, -0.769290,
		-0.238732, -0.764915, -0.598258,
		-0.966328, 0.126216, 0.224232,
		29.301172, 25.645462, 36.230473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586210, 25.627653, 35.469223>,  <29.977602, 25.557112, 36.073513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586210, 25.627653, 35.469223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314041, 25.766270, 35.727505>,  <29.150740, 25.849440, 35.882473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314041, 25.766270, 35.727505>,  <29.586210, 25.627653, 35.469223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314041, 25.766270, 35.727505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253220, 0.715666, -0.650924,
		-0.687681, -0.606409, -0.399204,
		-0.680422, 0.346541, 0.645704,
		29.109915, 25.870232, 35.921215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960573, 25.744049, 35.068180>,  <29.586210, 25.627653, 35.469223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960573, 25.744049, 35.068180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913862, 25.958889, 35.402340>,  <28.885836, 26.087793, 35.602837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913862, 25.958889, 35.402340>,  <28.960573, 25.744049, 35.068180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913862, 25.958889, 35.402340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243612, 0.799962, -0.548374,
		-0.962817, -0.267551, 0.037426,
		-0.116779, 0.537101, 0.835395,
		28.878828, 26.120020, 35.652958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291056, 26.004122, 34.990665>,  <28.960573, 25.744049, 35.068180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291056, 26.004122, 34.990665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484577, 26.230774, 35.257458>,  <28.600691, 26.366766, 35.417534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484577, 26.230774, 35.257458>,  <28.291056, 26.004122, 34.990665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484577, 26.230774, 35.257458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259193, 0.820688, -0.509205,
		-0.835914, 0.073479, 0.543920,
		0.483804, 0.566631, 0.666980,
		28.629719, 26.400763, 35.457550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816223, 26.729420, 35.076115>,  <28.291056, 26.004122, 34.990665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816223, 26.729420, 35.076115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192829, 26.787914, 35.197548>,  <28.418793, 26.823011, 35.270409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192829, 26.787914, 35.197548>,  <27.816223, 26.729420, 35.076115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192829, 26.787914, 35.197548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009105, 0.889558, -0.456732,
		-0.336844, 0.432785, 0.836202,
		0.941516, 0.146234, 0.303583,
		28.475285, 26.831785, 35.288624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849228, 27.434151, 35.137142>,  <27.816223, 26.729420, 35.076115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849228, 27.434151, 35.137142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239271, 27.345524, 35.133659>,  <28.473297, 27.292347, 35.131569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239271, 27.345524, 35.133659>,  <27.849228, 27.434151, 35.137142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239271, 27.345524, 35.133659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171988, 0.780532, -0.600991,
		0.139958, 0.584532, 0.799208,
		0.975106, -0.221568, -0.008709,
		28.531803, 27.279053, 35.131046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232553, 28.052479, 35.142403>,  <27.849228, 27.434151, 35.137142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232553, 28.052479, 35.142403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510780, 27.807068, 34.992859>,  <28.677715, 27.659821, 34.903133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510780, 27.807068, 34.992859>,  <28.232553, 28.052479, 35.142403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510780, 27.807068, 34.992859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378715, 0.755295, -0.534888,
		0.610544, 0.230463, 0.757709,
		0.695566, -0.613528, -0.373861,
		28.719450, 27.623009, 34.880699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793533, 28.388250, 35.160736>,  <28.232553, 28.052479, 35.142403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793533, 28.388250, 35.160736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901953, 28.100018, 34.905457>,  <28.967005, 27.927078, 34.752289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901953, 28.100018, 34.905457>,  <28.793533, 28.388250, 35.160736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901953, 28.100018, 34.905457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493164, 0.673343, -0.550816,
		0.826633, -0.165437, 0.537874,
		0.271048, -0.720583, -0.638195,
		28.983267, 27.883842, 34.713997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427099, 28.534506, 35.012619>,  <28.793533, 28.388250, 35.160736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427099, 28.534506, 35.012619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309797, 28.303864, 34.707588>,  <29.239416, 28.165478, 34.524570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309797, 28.303864, 34.707588>,  <29.427099, 28.534506, 35.012619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309797, 28.303864, 34.707588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520551, 0.572740, -0.633242,
		0.801891, -0.582662, 0.132195,
		-0.293253, -0.576605, -0.762580,
		29.221821, 28.130882, 34.478813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012022, 28.478094, 34.571346>,  <29.427099, 28.534506, 35.012619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012022, 28.478094, 34.571346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696316, 28.402100, 34.337776>,  <29.506891, 28.356503, 34.197636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696316, 28.402100, 34.337776>,  <30.012022, 28.478094, 34.571346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696316, 28.402100, 34.337776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465316, 0.435445, -0.770629,
		0.400669, -0.879940, -0.255283,
		-0.789269, -0.189980, -0.583919,
		29.459536, 28.345104, 34.162601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269732, 28.250999, 33.972290>,  <30.012022, 28.478094, 34.571346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269732, 28.250999, 33.972290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913033, 28.417080, 33.900299>,  <29.699013, 28.516729, 33.857105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913033, 28.417080, 33.900299>,  <30.269732, 28.250999, 33.972290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913033, 28.417080, 33.900299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309055, 0.268263, -0.912425,
		-0.330561, -0.869276, -0.367544,
		-0.891748, 0.415204, -0.179977,
		29.645508, 28.541641, 33.846306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072058, 28.112103, 33.286739>,  <30.269732, 28.250999, 33.972290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072058, 28.112103, 33.286739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788145, 28.391354, 33.324318>,  <29.617798, 28.558905, 33.346867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788145, 28.391354, 33.324318>,  <30.072058, 28.112103, 33.286739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788145, 28.391354, 33.324318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095100, 0.227114, -0.969214,
		-0.697973, -0.678995, -0.227593,
		-0.709781, 0.698129, 0.093947,
		29.575211, 28.600792, 33.352501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626053, 27.958961, 32.643337>,  <30.072058, 28.112103, 33.286739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626053, 27.958961, 32.643337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580086, 28.329559, 32.786667>,  <29.552505, 28.551918, 32.872665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580086, 28.329559, 32.786667>,  <29.626053, 27.958961, 32.643337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580086, 28.329559, 32.786667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104514, 0.369993, -0.923137,
		-0.987862, -0.068636, -0.139351,
		-0.114919, 0.926496, 0.358328,
		29.545610, 28.607508, 32.894165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103281, 28.247906, 32.236660>,  <29.626053, 27.958961, 32.643337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103281, 28.247906, 32.236660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345366, 28.524548, 32.394348>,  <29.490616, 28.690533, 32.488960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345366, 28.524548, 32.394348>,  <29.103281, 28.247906, 32.236660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345366, 28.524548, 32.394348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057020, 0.456273, -0.888011,
		-0.794021, 0.559912, 0.236706,
		0.605211, 0.691602, 0.394216,
		29.526928, 28.732029, 32.512611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110291, 28.741699, 31.656816>,  <29.103281, 28.247906, 32.236660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110291, 28.741699, 31.656816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389170, 28.891659, 31.901230>,  <29.556498, 28.981634, 32.047878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389170, 28.891659, 31.901230>,  <29.110291, 28.741699, 31.656816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389170, 28.891659, 31.901230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332096, 0.586476, -0.738754,
		-0.635315, 0.717982, 0.284389,
		0.697200, 0.374897, 0.611036,
		29.598330, 29.004128, 32.084541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143171, 29.348881, 31.401398>,  <29.110291, 28.741699, 31.656816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143171, 29.348881, 31.401398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485586, 29.307690, 31.604019>,  <29.691034, 29.282974, 31.725592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485586, 29.307690, 31.604019>,  <29.143171, 29.348881, 31.401398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485586, 29.307690, 31.604019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467653, 0.571799, -0.674052,
		-0.220236, 0.813905, 0.537638,
		0.856036, -0.102978, 0.506555,
		29.742397, 29.276796, 31.755985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356113, 30.004490, 31.437418>,  <29.143171, 29.348881, 31.401398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356113, 30.004490, 31.437418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677967, 29.778526, 31.510567>,  <29.871078, 29.642948, 31.554457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677967, 29.778526, 31.510567>,  <29.356113, 30.004490, 31.437418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677967, 29.778526, 31.510567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547316, 0.586207, -0.597332,
		0.230236, 0.580723, 0.780866,
		0.804634, -0.564908, 0.182873,
		29.919357, 29.609055, 31.565428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958879, 30.442165, 31.570530>,  <29.356113, 30.004490, 31.437418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958879, 30.442165, 31.570530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127634, 30.099533, 31.451683>,  <30.228888, 29.893953, 31.380375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127634, 30.099533, 31.451683>,  <29.958879, 30.442165, 31.570530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127634, 30.099533, 31.451683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424111, 0.476097, -0.770365,
		0.801337, 0.198997, 0.564145,
		0.421888, -0.856582, -0.297117,
		30.254200, 29.842558, 31.362547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715195, 30.560261, 31.585224>,  <29.958879, 30.442165, 31.570530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715195, 30.560261, 31.585224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637737, 30.256653, 31.336582>,  <30.591263, 30.074488, 31.187397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637737, 30.256653, 31.336582>,  <30.715195, 30.560261, 31.585224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637737, 30.256653, 31.336582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481098, 0.478718, -0.734421,
		0.855013, -0.441267, 0.272463,
		-0.193643, -0.759021, -0.621603,
		30.579645, 30.028946, 31.150101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340725, 30.514641, 31.204430>,  <30.715195, 30.560261, 31.585224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340725, 30.514641, 31.204430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051216, 30.333370, 30.996281>,  <30.877512, 30.224607, 30.871391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051216, 30.333370, 30.996281>,  <31.340725, 30.514641, 31.204430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051216, 30.333370, 30.996281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484030, 0.204052, -0.850928,
		0.491805, -0.867751, 0.071666,
		-0.723769, -0.453179, -0.520371,
		30.834085, 30.197416, 30.840170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662756, 30.339680, 30.548044>,  <31.340725, 30.514641, 31.204430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662756, 30.339680, 30.548044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275339, 30.292702, 30.460285>,  <31.042889, 30.264515, 30.407629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275339, 30.292702, 30.460285>,  <31.662756, 30.339680, 30.548044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275339, 30.292702, 30.460285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178697, 0.285361, -0.941614,
		0.173193, -0.951198, -0.255397,
		-0.968541, -0.117442, -0.219399,
		30.984777, 30.257469, 30.394464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617197, 30.002087, 29.903784>,  <31.662756, 30.339680, 30.548044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617197, 30.002087, 29.903784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268930, 30.193832, 29.947872>,  <31.059971, 30.308880, 29.974325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268930, 30.193832, 29.947872>,  <31.617197, 30.002087, 29.903784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268930, 30.193832, 29.947872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082117, 0.362597, -0.928321,
		-0.484968, -0.799209, -0.355065,
		-0.870668, 0.479363, 0.110220,
		31.007730, 30.337641, 29.980938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328770, 29.909981, 29.248426>,  <31.617197, 30.002087, 29.903784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328770, 29.909981, 29.248426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111982, 30.205555, 29.408550>,  <30.981911, 30.382900, 29.504623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111982, 30.205555, 29.408550>,  <31.328770, 29.909981, 29.248426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111982, 30.205555, 29.408550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042037, 0.499569, -0.865253,
		-0.839348, -0.452111, -0.301813,
		-0.541966, 0.738936, 0.400307,
		30.949392, 30.427237, 29.528643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729830, 29.958267, 28.853073>,  <31.328770, 29.909981, 29.248426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729830, 29.958267, 28.853073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773607, 30.311283, 29.036003>,  <30.799873, 30.523092, 29.145761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773607, 30.311283, 29.036003>,  <30.729830, 29.958267, 28.853073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773607, 30.311283, 29.036003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096865, 0.448431, -0.888553,
		-0.989262, 0.141546, -0.036409,
		0.109444, 0.882539, 0.457326,
		30.806440, 30.576044, 29.173201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480301, 30.408293, 28.383621>,  <30.729830, 29.958267, 28.853073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480301, 30.408293, 28.383621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699066, 30.632107, 28.632717>,  <30.830326, 30.766396, 28.782175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699066, 30.632107, 28.632717>,  <30.480301, 30.408293, 28.383621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699066, 30.632107, 28.632717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268989, 0.586962, -0.763623,
		-0.792798, 0.585147, 0.170510,
		0.546915, 0.559534, 0.622741,
		30.863140, 30.799967, 28.819540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188549, 31.045614, 28.208727>,  <30.480301, 30.408293, 28.383621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188549, 31.045614, 28.208727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555416, 31.082523, 28.363792>,  <30.775537, 31.104670, 28.456833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555416, 31.082523, 28.363792>,  <30.188549, 31.045614, 28.208727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555416, 31.082523, 28.363792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303634, 0.468217, -0.829807,
		-0.258081, 0.878783, 0.401417,
		0.917170, 0.092273, 0.387666,
		30.830566, 31.110205, 28.480093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409676, 31.755323, 28.066343>,  <30.188549, 31.045614, 28.208727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409676, 31.755323, 28.066343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749479, 31.554585, 28.131435>,  <30.953362, 31.434141, 28.170490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749479, 31.554585, 28.131435>,  <30.409676, 31.755323, 28.066343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749479, 31.554585, 28.131435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416030, 0.447556, -0.791588,
		0.324424, 0.740164, 0.588987,
		0.849510, -0.501847, 0.162732,
		31.004332, 31.404030, 28.180256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827675, 32.161880, 27.752153>,  <30.409676, 31.755323, 28.066343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827675, 32.161880, 27.752153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087729, 31.861816, 27.800449>,  <31.243761, 31.681778, 27.829428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087729, 31.861816, 27.800449>,  <30.827675, 32.161880, 27.752153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087729, 31.861816, 27.800449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450300, 0.252409, -0.856457,
		0.612007, 0.611183, 0.501899,
		0.650136, -0.750163, 0.120740,
		31.282770, 31.636766, 27.836672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500216, 32.456333, 27.757660>,  <30.827675, 32.161880, 27.752153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500216, 32.456333, 27.757660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528244, 32.074512, 27.641788>,  <31.545061, 31.845419, 27.572266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528244, 32.074512, 27.641788>,  <31.500216, 32.456333, 27.757660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528244, 32.074512, 27.641788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516889, 0.283110, -0.807882,
		0.853179, -0.093121, 0.513238,
		0.070072, -0.954556, -0.289677,
		31.549265, 31.788145, 27.554886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194935, 32.437687, 27.496458>,  <31.500216, 32.456333, 27.757660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194935, 32.437687, 27.496458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000328, 32.116066, 27.359756>,  <31.883564, 31.923094, 27.277737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000328, 32.116066, 27.359756>,  <32.194935, 32.437687, 27.496458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000328, 32.116066, 27.359756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310242, 0.206678, -0.927919,
		0.816730, -0.557477, 0.148899,
		-0.486520, -0.804054, -0.341753,
		31.854372, 31.874849, 27.257231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810516, 32.100468, 27.093618>,  <32.194935, 32.437687, 27.496458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810516, 32.100468, 27.093618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450905, 31.962608, 26.985565>,  <32.235138, 31.879894, 26.920732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450905, 31.962608, 26.985565>,  <32.810516, 32.100468, 27.093618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450905, 31.962608, 26.985565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257739, 0.082245, -0.962708,
		0.354010, -0.935123, 0.014888,
		-0.899026, -0.344646, -0.270134,
		32.181198, 31.859215, 26.904526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841309, 31.475536, 26.662712>,  <32.810516, 32.100468, 27.093618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841309, 31.475536, 26.662712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483387, 31.617447, 26.554295>,  <32.268635, 31.702593, 26.489244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483387, 31.617447, 26.554295>,  <32.841309, 31.475536, 26.662712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483387, 31.617447, 26.554295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262751, -0.072363, -0.962146,
		-0.360959, -0.932147, -0.028467,
		-0.894802, 0.354775, -0.271043,
		32.214947, 31.723879, 26.472982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625816, 31.014111, 26.193314>,  <32.841309, 31.475536, 26.662712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625816, 31.014111, 26.193314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472271, 31.380875, 26.149632>,  <32.380142, 31.600933, 26.123423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472271, 31.380875, 26.149632>,  <32.625816, 31.014111, 26.193314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472271, 31.380875, 26.149632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389430, 0.053523, -0.919500,
		-0.837252, -0.395492, -0.377617,
		-0.383866, 0.916909, -0.109204,
		32.357113, 31.655947, 26.116871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558189, 30.974035, 25.564594>,  <32.625816, 31.014111, 26.193314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558189, 30.974035, 25.564594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504726, 31.362926, 25.641438>,  <32.472649, 31.596262, 25.687544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504726, 31.362926, 25.641438>,  <32.558189, 30.974035, 25.564594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504726, 31.362926, 25.641438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142092, 0.210643, -0.967181,
		-0.980788, -0.101977, -0.166300,
		-0.133660, 0.972230, 0.192106,
		32.464630, 31.654594, 25.699070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194878, 31.153521, 24.947979>,  <32.558189, 30.974035, 25.564594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194878, 31.153521, 24.947979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321049, 31.498573, 25.106152>,  <32.396751, 31.705605, 25.201056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321049, 31.498573, 25.106152>,  <32.194878, 31.153521, 24.947979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321049, 31.498573, 25.106152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158218, 0.363064, -0.918233,
		-0.935666, 0.352204, -0.021962,
		0.315431, 0.862634, 0.395431,
		32.415680, 31.757364, 25.224781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865925, 31.799429, 24.529846>,  <32.194878, 31.153521, 24.947979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865925, 31.799429, 24.529846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201923, 31.928299, 24.704479>,  <32.403522, 32.005623, 24.809259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201923, 31.928299, 24.704479>,  <31.865925, 31.799429, 24.529846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201923, 31.928299, 24.704479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152991, 0.631349, -0.760258,
		-0.520574, 0.705409, 0.481042,
		0.839998, 0.322175, 0.436585,
		32.453922, 32.024952, 24.835455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223280, 31.925554, 25.014534>,  <31.865925, 31.799429, 24.529846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223280, 31.925554, 25.014534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872250, 31.770836, 24.901218>,  <30.661633, 31.678005, 24.833229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872250, 31.770836, 24.901218>,  <31.223280, 31.925554, 25.014534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872250, 31.770836, 24.901218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401775, 0.270886, 0.874756,
		-0.261611, 0.881482, -0.393127,
		-0.877574, -0.386794, -0.283291,
		30.608978, 31.654799, 24.816231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698204, 32.353844, 25.188293>,  <31.223280, 31.925554, 25.014534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698204, 32.353844, 25.188293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467262, 32.031918, 25.133263>,  <30.328697, 31.838760, 25.100245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467262, 32.031918, 25.133263>,  <30.698204, 32.353844, 25.188293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467262, 32.031918, 25.133263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572063, 0.278505, 0.771478,
		-0.582586, 0.524118, -0.621204,
		-0.577354, -0.804820, -0.137575,
		30.294056, 31.790472, 25.091990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929533, 32.603901, 25.185665>,  <30.698204, 32.353844, 25.188293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929533, 32.603901, 25.185665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957098, 32.222076, 25.301640>,  <29.973637, 31.992981, 25.371225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957098, 32.222076, 25.301640>,  <29.929533, 32.603901, 25.185665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957098, 32.222076, 25.301640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509957, 0.216083, 0.832618,
		-0.857435, -0.205232, -0.471894,
		0.068911, -0.954561, 0.289937,
		29.977772, 31.935707, 25.388620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294243, 32.531040, 25.579123>,  <29.929533, 32.603901, 25.185665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294243, 32.531040, 25.579123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522430, 32.219826, 25.684364>,  <29.659344, 32.033096, 25.747509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522430, 32.219826, 25.684364>,  <29.294243, 32.531040, 25.579123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522430, 32.219826, 25.684364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475532, -0.051698, 0.878178,
		-0.669654, -0.626087, -0.399474,
		0.570468, -0.778038, 0.263104,
		29.693571, 31.986414, 25.763296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845629, 31.978016, 25.677107>,  <29.294243, 32.531040, 25.579123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845629, 31.978016, 25.677107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177233, 31.875961, 25.876163>,  <29.376196, 31.814728, 25.995598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177233, 31.875961, 25.876163>,  <28.845629, 31.978016, 25.677107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177233, 31.875961, 25.876163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506221, 0.035808, 0.861660,
		-0.237663, -0.966241, -0.099472,
		0.829010, -0.255139, 0.497642,
		29.425936, 31.799419, 26.025455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654392, 31.449173, 26.090378>,  <28.845629, 31.978016, 25.677107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654392, 31.449173, 26.090378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994413, 31.583256, 26.252880>,  <29.198427, 31.663706, 26.350382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994413, 31.583256, 26.252880>,  <28.654392, 31.449173, 26.090378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994413, 31.583256, 26.252880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397064, -0.098930, 0.912443,
		0.346047, -0.936936, 0.049002,
		0.850054, 0.335206, 0.406258,
		29.249430, 31.683817, 26.374758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001200, 30.858185, 26.529470>,  <28.654392, 31.449173, 26.090378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001200, 30.858185, 26.529470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107166, 31.220337, 26.662197>,  <29.170746, 31.437628, 26.741833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107166, 31.220337, 26.662197>,  <29.001200, 30.858185, 26.529470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107166, 31.220337, 26.662197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517002, -0.157108, 0.841443,
		0.813959, -0.394462, 0.426464,
		0.264916, 0.905382, 0.331816,
		29.186642, 31.491951, 26.761742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326622, 30.685633, 27.098911>,  <29.001200, 30.858185, 26.529470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326622, 30.685633, 27.098911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212698, 31.067696, 27.131298>,  <29.144342, 31.296934, 27.150730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212698, 31.067696, 27.131298>,  <29.326622, 30.685633, 27.098911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212698, 31.067696, 27.131298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393491, -0.193514, 0.898731,
		0.874098, 0.224110, 0.430961,
		-0.284812, 0.955158, 0.080965,
		29.127254, 31.354242, 27.155588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487740, 30.865082, 27.846821>,  <29.326622, 30.685633, 27.098911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487740, 30.865082, 27.846821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253792, 31.173275, 27.745403>,  <29.113422, 31.358191, 27.684553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253792, 31.173275, 27.745403>,  <29.487740, 30.865082, 27.846821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253792, 31.173275, 27.745403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543528, -0.140252, 0.827591,
		0.602083, 0.621842, 0.500807,
		-0.584870, 0.770481, -0.253545,
		29.078331, 31.404419, 27.669340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506611, 31.273561, 28.493719>,  <29.487740, 30.865082, 27.846821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506611, 31.273561, 28.493719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188133, 31.372875, 28.273018>,  <28.997047, 31.432463, 28.140596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188133, 31.372875, 28.273018>,  <29.506611, 31.273561, 28.493719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188133, 31.372875, 28.273018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593341, -0.141918, 0.792342,
		0.118422, 0.958235, 0.260312,
		-0.796192, 0.248285, -0.551754,
		28.949276, 31.447361, 28.107492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078335, 31.588140, 28.970688>,  <29.506611, 31.273561, 28.493719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078335, 31.588140, 28.970688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827248, 31.518024, 28.667309>,  <28.676596, 31.475954, 28.485281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827248, 31.518024, 28.667309>,  <29.078335, 31.588140, 28.970688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827248, 31.518024, 28.667309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733475, -0.193161, 0.651693,
		-0.260738, 0.965382, -0.007320,
		-0.627718, -0.175290, -0.758448,
		28.638931, 31.465437, 28.439774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496895, 31.954906, 29.155128>,  <29.078335, 31.588140, 28.970688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496895, 31.954906, 29.155128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364519, 31.670589, 28.906853>,  <28.285095, 31.499998, 28.757887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364519, 31.670589, 28.906853>,  <28.496895, 31.954906, 29.155128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364519, 31.670589, 28.906853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745869, -0.205899, 0.633470,
		-0.578066, 0.672591, -0.462019,
		-0.330937, -0.710793, -0.620688,
		28.265238, 31.457352, 28.720646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823828, 32.046757, 29.290047>,  <28.496895, 31.954906, 29.155128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823828, 32.046757, 29.290047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866613, 31.688614, 29.117119>,  <27.892284, 31.473728, 29.013363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866613, 31.688614, 29.117119>,  <27.823828, 32.046757, 29.290047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866613, 31.688614, 29.117119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674867, -0.384689, 0.629737,
		-0.730146, 0.224398, -0.645393,
		0.106964, -0.895355, -0.432317,
		27.898703, 31.420008, 28.987423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164715, 31.750706, 29.339243>,  <27.823828, 32.046757, 29.290047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164715, 31.750706, 29.339243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385967, 31.431278, 29.244305>,  <27.518719, 31.239622, 29.187342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385967, 31.431278, 29.244305>,  <27.164715, 31.750706, 29.339243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385967, 31.431278, 29.244305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474555, -0.536181, 0.698074,
		-0.684723, -0.273490, -0.675543,
		0.553129, -0.798570, -0.237349,
		27.551907, 31.191708, 29.173100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721994, 31.299202, 29.301849>,  <27.164715, 31.750706, 29.339243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721994, 31.299202, 29.301849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069090, 31.116562, 29.380386>,  <27.277348, 31.006979, 29.427509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069090, 31.116562, 29.380386>,  <26.721994, 31.299202, 29.301849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069090, 31.116562, 29.380386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459686, -0.587056, 0.666374,
		-0.189002, -0.668493, -0.719302,
		0.867737, -0.456599, 0.196342,
		27.329411, 30.979582, 29.439289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457609, 30.696098, 29.554867>,  <26.721994, 31.299202, 29.301849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457609, 30.696098, 29.554867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845644, 30.704243, 29.651630>,  <27.078465, 30.709129, 29.709688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845644, 30.704243, 29.651630>,  <26.457609, 30.696098, 29.554867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845644, 30.704243, 29.651630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183519, -0.590812, 0.785660,
		0.158920, -0.806552, -0.569402,
		0.970085, 0.020361, 0.241910,
		27.136669, 30.710350, 29.724203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662567, 29.991074, 29.771019>,  <26.457609, 30.696098, 29.554867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662567, 29.991074, 29.771019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901571, 30.268581, 29.931850>,  <27.044973, 30.435085, 30.028349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901571, 30.268581, 29.931850>,  <26.662567, 29.991074, 29.771019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901571, 30.268581, 29.931850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002613, -0.503115, 0.864216,
		0.801857, -0.515327, -0.302429,
		0.597511, 0.693768, 0.402079,
		27.080824, 30.476711, 30.052475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103952, 29.571384, 30.149195>,  <26.662567, 29.991074, 29.771019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103952, 29.571384, 30.149195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159895, 29.935783, 30.304386>,  <27.193460, 30.154423, 30.397501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159895, 29.935783, 30.304386>,  <27.103952, 29.571384, 30.149195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159895, 29.935783, 30.304386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120941, -0.404613, 0.906455,
		0.982758, -0.079851, -0.166765,
		0.139857, 0.910995, 0.387979,
		27.201853, 30.209082, 30.420780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805321, 29.640190, 30.392456>,  <27.103952, 29.571384, 30.149195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805321, 29.640190, 30.392456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601023, 29.921738, 30.589924>,  <27.478443, 30.090666, 30.708405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601023, 29.921738, 30.589924>,  <27.805321, 29.640190, 30.392456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601023, 29.921738, 30.589924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316751, -0.379763, 0.869166,
		0.799255, 0.600292, -0.028988,
		-0.510745, 0.703867, 0.493671,
		27.447800, 30.132898, 30.738026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248569, 29.852837, 30.954769>,  <27.805321, 29.640190, 30.392456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248569, 29.852837, 30.954769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872070, 29.947842, 31.050800>,  <27.646170, 30.004845, 31.108419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872070, 29.947842, 31.050800>,  <28.248569, 29.852837, 30.954769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872070, 29.947842, 31.050800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119113, -0.431727, 0.894105,
		0.316008, 0.870172, 0.378073,
		-0.941250, 0.237511, 0.240079,
		27.589695, 30.019094, 31.122824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239313, 30.030428, 31.622578>,  <28.248569, 29.852837, 30.954769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239313, 30.030428, 31.622578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854050, 29.938606, 31.566540>,  <27.622890, 29.883512, 31.532917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854050, 29.938606, 31.566540>,  <28.239313, 30.030428, 31.622578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854050, 29.938606, 31.566540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033747, -0.619987, 0.783886,
		-0.266800, 0.750280, 0.604894,
		-0.963161, -0.229554, -0.140093,
		27.565102, 29.869740, 31.524511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964598, 29.925207, 32.247910>,  <28.239313, 30.030428, 31.622578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964598, 29.925207, 32.247910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731468, 29.714088, 32.000767>,  <27.591591, 29.587418, 31.852482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731468, 29.714088, 32.000767>,  <27.964598, 29.925207, 32.247910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731468, 29.714088, 32.000767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148162, -0.678579, 0.719429,
		-0.798979, 0.510842, 0.317291,
		-0.582822, -0.527798, -0.617857,
		27.556622, 29.555748, 31.815409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405659, 29.697414, 32.718578>,  <27.964598, 29.925207, 32.247910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405659, 29.697414, 32.718578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370872, 29.481068, 32.383938>,  <27.350000, 29.351259, 32.183155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370872, 29.481068, 32.383938>,  <27.405659, 29.697414, 32.718578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370872, 29.481068, 32.383938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400892, -0.749782, 0.526414,
		-0.911988, 0.381167, -0.151623,
		-0.086967, -0.540868, -0.836599,
		27.344782, 29.318808, 32.132957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768850, 29.330313, 32.628323>,  <27.405659, 29.697414, 32.718578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768850, 29.330313, 32.628323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007557, 29.104565, 32.400162>,  <27.150782, 28.969116, 32.263268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007557, 29.104565, 32.400162>,  <26.768850, 29.330313, 32.628323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007557, 29.104565, 32.400162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336556, -0.821350, 0.460558,
		-0.728423, -0.082875, -0.680097,
		0.596767, -0.564372, -0.570398,
		27.186586, 28.935253, 32.229042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392002, 28.706619, 32.486996>,  <26.768850, 29.330313, 32.628323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392002, 28.706619, 32.486996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773266, 28.605904, 32.419956>,  <27.002024, 28.545475, 32.379730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773266, 28.605904, 32.419956>,  <26.392002, 28.706619, 32.486996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773266, 28.605904, 32.419956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137658, -0.854512, 0.500858,
		-0.269326, -0.454327, -0.849147,
		0.953160, -0.251787, -0.167601,
		27.059214, 28.530367, 32.369675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316446, 28.066872, 32.270493>,  <26.392002, 28.706619, 32.486996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316446, 28.066872, 32.270493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698311, 28.086838, 32.387886>,  <26.927429, 28.098818, 32.458324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698311, 28.086838, 32.387886>,  <26.316446, 28.066872, 32.270493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698311, 28.086838, 32.387886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097559, -0.878948, 0.466833,
		0.281261, -0.474299, -0.834226,
		0.954659, 0.049915, 0.293486,
		26.984709, 28.101812, 32.475933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555387, 27.423395, 32.032021>,  <26.316446, 28.066872, 32.270493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555387, 27.423395, 32.032021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828293, 27.574360, 32.282486>,  <26.992035, 27.664938, 32.432766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828293, 27.574360, 32.282486>,  <26.555387, 27.423395, 32.032021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828293, 27.574360, 32.282486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208602, -0.921344, 0.328040,
		0.700717, -0.093190, -0.707327,
		0.682262, 0.377413, 0.626162,
		27.032970, 27.687584, 32.470333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196358, 27.007170, 31.928572>,  <26.555387, 27.423395, 32.032021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196358, 27.007170, 31.928572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193958, 27.176777, 32.290825>,  <27.192518, 27.278542, 32.508179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193958, 27.176777, 32.290825>,  <27.196358, 27.007170, 31.928572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193958, 27.176777, 32.290825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205319, -0.885832, 0.416108,
		0.978677, 0.188440, -0.081746,
		-0.005998, 0.424020, 0.905633,
		27.192160, 27.303984, 32.562515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769247, 26.778881, 32.262089>,  <27.196358, 27.007170, 31.928572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769247, 26.778881, 32.262089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524416, 26.910191, 32.549866>,  <27.377518, 26.988976, 32.722530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524416, 26.910191, 32.549866>,  <27.769247, 26.778881, 32.262089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524416, 26.910191, 32.549866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147952, -0.846168, 0.511967,
		0.776834, 0.419807, 0.469353,
		-0.612078, 0.328272, 0.719443,
		27.340792, 27.008673, 32.765697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119051, 26.672159, 32.838120>,  <27.769247, 26.778881, 32.262089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119051, 26.672159, 32.838120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741777, 26.697437, 32.968601>,  <27.515413, 26.712605, 33.046890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741777, 26.697437, 32.968601>,  <28.119051, 26.672159, 32.838120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741777, 26.697437, 32.968601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127385, -0.837957, 0.530661,
		0.306880, 0.542065, 0.782298,
		-0.943185, 0.063196, 0.326203,
		27.458822, 26.716396, 33.066463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158409, 26.647408, 33.515617>,  <28.119051, 26.672159, 32.838120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158409, 26.647408, 33.515617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769928, 26.561729, 33.473885>,  <27.536839, 26.510323, 33.448845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769928, 26.561729, 33.473885>,  <28.158409, 26.647408, 33.515617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769928, 26.561729, 33.473885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045527, -0.596675, 0.801190,
		-0.233862, 0.773369, 0.589245,
		-0.971203, -0.214195, -0.104330,
		27.478567, 26.497471, 33.442585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810371, 26.752796, 34.140011>,  <28.158409, 26.647408, 33.515617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810371, 26.752796, 34.140011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559172, 26.497761, 33.961529>,  <27.408453, 26.344740, 33.854439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559172, 26.497761, 33.961529>,  <27.810371, 26.752796, 34.140011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559172, 26.497761, 33.961529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094920, -0.506337, 0.857095,
		-0.772405, 0.580608, 0.257459,
		-0.627997, -0.637587, -0.446209,
		27.370773, 26.306484, 33.827667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276564, 26.674486, 34.618855>,  <27.810371, 26.752796, 34.140011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276564, 26.674486, 34.618855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289534, 26.359718, 34.372375>,  <27.297316, 26.170856, 34.224487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289534, 26.359718, 34.372375>,  <27.276564, 26.674486, 34.618855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289534, 26.359718, 34.372375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231284, -0.605699, 0.761338,
		-0.972346, 0.117833, -0.201641,
		0.032423, -0.786920, -0.616202,
		27.299261, 26.123642, 34.187515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697065, 26.241474, 34.694710>,  <27.276564, 26.674486, 34.618855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697065, 26.241474, 34.694710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954565, 25.986557, 34.525265>,  <27.109064, 25.833607, 34.423599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954565, 25.986557, 34.525265>,  <26.697065, 26.241474, 34.694710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954565, 25.986557, 34.525265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263887, -0.704486, 0.658835,
		-0.718310, -0.312327, -0.621677,
		0.643735, -0.637300, -0.423620,
		27.147690, 25.795368, 34.398182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291225, 25.617348, 34.703651>,  <26.697065, 26.241474, 34.694710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291225, 25.617348, 34.703651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669231, 25.492741, 34.663849>,  <26.896036, 25.417976, 34.639969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669231, 25.492741, 34.663849>,  <26.291225, 25.617348, 34.703651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669231, 25.492741, 34.663849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255062, -0.892545, 0.371896,
		-0.204662, -0.326069, -0.922926,
		0.945017, -0.311517, -0.099502,
		26.952736, 25.399286, 34.633999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142546, 24.880117, 34.651779>,  <26.291225, 25.617348, 34.703651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142546, 24.880117, 34.651779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538286, 24.914684, 34.698624>,  <26.775730, 24.935425, 34.726730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538286, 24.914684, 34.698624>,  <26.142546, 24.880117, 34.651779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538286, 24.914684, 34.698624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010075, -0.843371, 0.537237,
		0.145191, -0.530337, -0.835262,
		0.989352, 0.086418, 0.117107,
		26.835093, 24.940609, 34.733757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482588, 24.272158, 34.405533>,  <26.142546, 24.880117, 34.651779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482588, 24.272158, 34.405533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712534, 24.461578, 34.672451>,  <26.850502, 24.575232, 34.832600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712534, 24.461578, 34.672451>,  <26.482588, 24.272158, 34.405533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712534, 24.461578, 34.672451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039074, -0.798696, 0.600464,
		0.817315, -0.371259, -0.440638,
		0.574864, 0.473551, 0.667294,
		26.884993, 24.603643, 34.872639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040039, 23.846357, 34.611256>,  <26.482588, 24.272158, 34.405533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040039, 23.846357, 34.611256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991032, 24.104397, 34.912941>,  <26.961628, 24.259220, 35.093952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991032, 24.104397, 34.912941>,  <27.040039, 23.846357, 34.611256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991032, 24.104397, 34.912941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065720, -0.752998, 0.654733,
		0.990288, 0.129785, 0.049861,
		-0.122519, 0.645097, 0.754214,
		26.954275, 24.297926, 35.139206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628531, 23.251625, 34.844883>,  <27.040039, 23.846357, 34.611256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628531, 23.251625, 34.844883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529884, 22.935287, 34.620831>,  <26.470695, 22.745485, 34.486401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529884, 22.935287, 34.620831>,  <26.628531, 23.251625, 34.844883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529884, 22.935287, 34.620831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177519, 0.605066, -0.776133,
		0.952716, -0.091974, -0.289610,
		-0.246617, -0.790845, -0.560129,
		26.455898, 22.698034, 34.452793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104694, 23.192080, 34.260487>,  <26.628531, 23.251625, 34.844883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104694, 23.192080, 34.260487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759613, 23.020111, 34.153973>,  <26.552565, 22.916929, 34.090065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759613, 23.020111, 34.153973>,  <27.104694, 23.192080, 34.260487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759613, 23.020111, 34.153973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142207, 0.711553, -0.688092,
		0.485301, -0.555753, -0.674998,
		-0.862705, -0.429921, -0.266286,
		26.500801, 22.891134, 34.074085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116352, 23.274132, 33.570087>,  <27.104694, 23.192080, 34.260487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116352, 23.274132, 33.570087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736223, 23.186356, 33.658386>,  <26.508146, 23.133690, 33.711365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736223, 23.186356, 33.658386>,  <27.116352, 23.274132, 33.570087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736223, 23.186356, 33.658386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310981, 0.639312, -0.703258,
		0.013198, -0.736971, -0.675796,
		-0.950324, -0.219441, 0.220747,
		26.451126, 23.120523, 33.724609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840086, 23.159052, 32.953316>,  <27.116352, 23.274132, 33.570087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840086, 23.159052, 32.953316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514845, 23.219212, 33.178261>,  <26.319700, 23.255306, 33.313229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514845, 23.219212, 33.178261>,  <26.840086, 23.159052, 32.953316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514845, 23.219212, 33.178261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375937, 0.601914, -0.704536,
		-0.444452, -0.784270, -0.432877,
		-0.813101, 0.150398, 0.562359,
		26.270914, 23.264330, 33.346970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247992, 23.012062, 32.542583>,  <26.840086, 23.159052, 32.953316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247992, 23.012062, 32.542583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150944, 23.252098, 32.847485>,  <26.092714, 23.396120, 33.030426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150944, 23.252098, 32.847485>,  <26.247992, 23.012062, 32.542583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150944, 23.252098, 32.847485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343931, 0.681488, -0.645977,
		-0.907109, -0.418889, 0.041047,
		-0.242620, 0.600089, 0.762253,
		26.078157, 23.432125, 33.076160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664568, 23.324932, 32.270885>,  <26.247992, 23.012062, 32.542583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.664568, 23.324932, 32.270885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781971, 23.553982, 32.577076>,  <25.852413, 23.691412, 32.760792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781971, 23.553982, 32.577076>,  <25.664568, 23.324932, 32.270885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781971, 23.553982, 32.577076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427830, 0.794760, -0.430485,
		-0.854876, -0.201143, 0.478255,
		0.293509, 0.572624, 0.765477,
		25.870024, 23.725769, 32.806721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107019, 23.813166, 32.268322>,  <25.664568, 23.324932, 32.270885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.107019, 23.813166, 32.268322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401184, 23.979412, 32.482399>,  <25.577682, 24.079161, 32.610844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401184, 23.979412, 32.482399>,  <25.107019, 23.813166, 32.268322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.401184, 23.979412, 32.482399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149126, 0.869717, -0.470483,
		-0.661008, 0.266187, 0.701579,
		0.735412, 0.415616, 0.535194,
		25.621807, 24.104097, 32.642956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.822269, 24.380539, 32.625431>,  <25.107019, 23.813166, 32.268322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.822269, 24.380539, 32.625431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214058, 24.451538, 32.587215>,  <25.449131, 24.494137, 32.564285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214058, 24.451538, 32.587215>,  <24.822269, 24.380539, 32.625431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214058, 24.451538, 32.587215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199509, 0.785959, -0.585204,
		-0.028786, 0.592252, 0.805238,
		0.979473, 0.177499, -0.095535,
		25.507900, 24.504787, 32.558556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905014, 25.146843, 32.637508>,  <24.822269, 24.380539, 32.625431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905014, 25.146843, 32.637508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247555, 25.010757, 32.482117>,  <25.453079, 24.929106, 32.388882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247555, 25.010757, 32.482117>,  <24.905014, 25.146843, 32.637508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247555, 25.010757, 32.482117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007806, 0.760738, -0.649011,
		0.516334, 0.552749, 0.654115,
		0.856351, -0.340213, -0.388481,
		25.504459, 24.908693, 32.365574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.242046, 25.758661, 32.553051>,  <24.905014, 25.146843, 32.637508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.242046, 25.758661, 32.553051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434565, 25.486412, 32.332104>,  <25.550076, 25.323063, 32.199535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434565, 25.486412, 32.332104>,  <25.242046, 25.758661, 32.553051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434565, 25.486412, 32.332104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108889, 0.671695, -0.732781,
		0.869769, 0.292537, 0.397396,
		0.481295, -0.680623, -0.552366,
		25.578953, 25.282225, 32.166393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868164, 26.148514, 32.258080>,  <25.242046, 25.758661, 32.553051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868164, 26.148514, 32.258080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796907, 25.813026, 32.052238>,  <25.754152, 25.611734, 31.928734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796907, 25.813026, 32.052238>,  <25.868164, 26.148514, 32.258080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796907, 25.813026, 32.052238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076870, 0.509507, -0.857026,
		0.980998, -0.192230, -0.026293,
		-0.178142, -0.838720, -0.514602,
		25.743465, 25.561411, 31.897858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457817, 25.927624, 31.762779>,  <25.868164, 26.148514, 32.258080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457817, 25.927624, 31.762779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085546, 25.847916, 31.640053>,  <25.862185, 25.800091, 31.566418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085546, 25.847916, 31.640053>,  <26.457817, 25.927624, 31.762779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085546, 25.847916, 31.640053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121536, 0.622608, -0.773039,
		0.345070, -0.756737, -0.555227,
		-0.930675, -0.199272, -0.306814,
		25.806343, 25.788134, 31.548008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522541, 25.876581, 31.094166>,  <26.457817, 25.927624, 31.762779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522541, 25.876581, 31.094166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132401, 25.950645, 31.142178>,  <25.898317, 25.995085, 31.170984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132401, 25.950645, 31.142178>,  <26.522541, 25.876581, 31.094166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132401, 25.950645, 31.142178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044573, 0.698058, -0.714652,
		-0.216115, -0.691686, -0.689104,
		-0.975350, 0.185163, 0.120030,
		25.839796, 26.006195, 31.178186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142441, 25.786209, 30.459230>,  <26.522541, 25.876581, 31.094166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142441, 25.786209, 30.459230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933859, 26.045731, 30.680912>,  <25.808710, 26.201443, 30.813921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933859, 26.045731, 30.680912>,  <26.142441, 25.786209, 30.459230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933859, 26.045731, 30.680912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069256, 0.679537, -0.730365,
		-0.850464, -0.342471, -0.399281,
		-0.521455, 0.648802, 0.554203,
		25.777422, 26.240372, 30.847174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547503, 26.035652, 30.026421>,  <26.142441, 25.786209, 30.459230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547503, 26.035652, 30.026421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594303, 26.301662, 30.321461>,  <25.622383, 26.461267, 30.498486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594303, 26.301662, 30.321461>,  <25.547503, 26.035652, 30.026421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.594303, 26.301662, 30.321461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012347, 0.743617, -0.668491,
		-0.993055, 0.069106, 0.095214,
		0.117000, 0.665024, 0.737600,
		25.629402, 26.501169, 30.542740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101831, 26.586737, 29.904110>,  <25.547503, 26.035652, 30.026421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101831, 26.586737, 29.904110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342558, 26.774658, 30.162445>,  <25.486994, 26.887411, 30.317446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342558, 26.774658, 30.162445>,  <25.101831, 26.586737, 29.904110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342558, 26.774658, 30.162445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020031, 0.799541, -0.600278,
		-0.798384, 0.374193, 0.471766,
		0.601816, 0.469802, 0.645836,
		25.523102, 26.915598, 30.356195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033140, 27.334743, 29.940172>,  <25.101831, 26.586737, 29.904110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033140, 27.334743, 29.940172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403469, 27.348019, 30.090771>,  <25.625668, 27.355984, 30.181129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403469, 27.348019, 30.090771>,  <25.033140, 27.334743, 29.940172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403469, 27.348019, 30.090771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158724, 0.869899, -0.466993,
		-0.343011, 0.492112, 0.800106,
		0.925824, 0.033187, 0.376495,
		25.681217, 27.357975, 30.203718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202766, 28.110491, 29.927946>,  <25.033140, 27.334743, 29.940172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202766, 28.110491, 29.927946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548552, 27.910713, 29.950775>,  <25.756023, 27.790848, 29.964474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548552, 27.910713, 29.950775>,  <25.202766, 28.110491, 29.927946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548552, 27.910713, 29.950775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446340, 0.710362, -0.544211,
		0.231258, 0.495926, 0.837005,
		0.864465, -0.499442, 0.057075,
		25.807892, 27.760880, 29.967897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604599, 28.575945, 30.090197>,  <25.202766, 28.110491, 29.927946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604599, 28.575945, 30.090197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845835, 28.293304, 29.942142>,  <25.990576, 28.123720, 29.853310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845835, 28.293304, 29.942142>,  <25.604599, 28.575945, 30.090197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845835, 28.293304, 29.942142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549075, 0.704328, -0.449932,
		0.578617, 0.068119, 0.812750,
		0.603091, -0.706599, -0.370134,
		26.026762, 28.081326, 29.831102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261316, 28.857424, 30.183485>,  <25.604599, 28.575945, 30.090197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261316, 28.857424, 30.183485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271587, 28.573475, 29.901939>,  <26.277750, 28.403107, 29.733011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271587, 28.573475, 29.901939>,  <26.261316, 28.857424, 30.183485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271587, 28.573475, 29.901939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523736, 0.609285, -0.595376,
		0.851494, -0.353351, 0.387430,
		0.025678, -0.709870, -0.703865,
		26.279291, 28.360514, 29.690781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916067, 28.790871, 29.944311>,  <26.261316, 28.857424, 30.183485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916067, 28.790871, 29.944311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683537, 28.653633, 29.649193>,  <26.544018, 28.571291, 29.472122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683537, 28.653633, 29.649193>,  <26.916067, 28.790871, 29.944311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683537, 28.653633, 29.649193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483220, 0.583960, -0.652295,
		0.654644, -0.735715, -0.173681,
		-0.581326, -0.343095, -0.737798,
		26.509138, 28.550705, 29.427853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386879, 28.620462, 29.433460>,  <26.916067, 28.790871, 29.944311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386879, 28.620462, 29.433460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054581, 28.581139, 29.214298>,  <26.855202, 28.557545, 29.082802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054581, 28.581139, 29.214298>,  <27.386879, 28.620462, 29.433460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054581, 28.581139, 29.214298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427223, 0.518394, -0.740775,
		0.356853, -0.849473, -0.388654,
		-0.830744, -0.098306, -0.547905,
		26.805357, 28.551647, 29.049927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521509, 28.298506, 28.696039>,  <27.386879, 28.620462, 29.433460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521509, 28.298506, 28.696039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176828, 28.500683, 28.678162>,  <26.970020, 28.621988, 28.667435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176828, 28.500683, 28.678162>,  <27.521509, 28.298506, 28.696039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176828, 28.500683, 28.678162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352315, 0.532597, -0.769555,
		-0.365162, -0.678873, -0.637014,
		-0.861703, 0.505441, -0.044693,
		26.918318, 28.652315, 28.664753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420706, 28.325794, 28.048008>,  <27.521509, 28.298506, 28.696039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420706, 28.325794, 28.048008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172726, 28.619171, 28.159523>,  <27.023937, 28.795197, 28.226433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172726, 28.619171, 28.159523>,  <27.420706, 28.325794, 28.048008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172726, 28.619171, 28.159523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251066, 0.522054, -0.815123,
		-0.743389, -0.435341, -0.507790,
		-0.619950, 0.733442, 0.278790,
		26.986740, 28.839205, 28.243160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000584, 28.465893, 27.483728>,  <27.420706, 28.325794, 28.048008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000584, 28.465893, 27.483728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935371, 28.780846, 27.721535>,  <26.896244, 28.969818, 27.864218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935371, 28.780846, 27.721535>,  <27.000584, 28.465893, 27.483728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935371, 28.780846, 27.721535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110104, 0.584293, -0.804039,
		-0.980458, -0.196542, -0.008564,
		-0.163031, 0.787384, 0.594515,
		26.886461, 29.017061, 27.899889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371876, 28.757984, 27.271336>,  <27.000584, 28.465893, 27.483728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371876, 28.757984, 27.271336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566656, 29.058659, 27.449257>,  <26.683523, 29.239063, 27.556009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566656, 29.058659, 27.449257>,  <26.371876, 28.757984, 27.271336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566656, 29.058659, 27.449257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121911, 0.445780, -0.886802,
		-0.864881, 0.486054, 0.125433,
		0.486949, 0.751686, 0.444802,
		26.712740, 29.284164, 27.582697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050798, 29.407267, 27.070271>,  <26.371876, 28.757984, 27.271336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050798, 29.407267, 27.070271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421570, 29.487213, 27.197304>,  <26.644032, 29.535181, 27.273523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421570, 29.487213, 27.197304>,  <26.050798, 29.407267, 27.070271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421570, 29.487213, 27.197304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064422, 0.749019, -0.659409,
		-0.369669, 0.631684, 0.681411,
		0.926928, 0.199865, 0.317584,
		26.699648, 29.547173, 27.292580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005383, 30.133854, 27.051897>,  <26.050798, 29.407267, 27.070271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005383, 30.133854, 27.051897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397482, 30.056717, 27.069458>,  <26.632742, 30.010435, 27.079994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397482, 30.056717, 27.069458>,  <26.005383, 30.133854, 27.051897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397482, 30.056717, 27.069458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159393, 0.638863, -0.752627,
		0.117091, 0.744758, 0.656982,
		0.980247, -0.192844, 0.043904,
		26.691555, 29.998863, 27.082630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291807, 30.755432, 27.145948>,  <26.005383, 30.133854, 27.051897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291807, 30.755432, 27.145948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567509, 30.512325, 26.988190>,  <26.732929, 30.366461, 26.893536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567509, 30.512325, 26.988190>,  <26.291807, 30.755432, 27.145948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567509, 30.512325, 26.988190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190163, 0.677025, -0.710968,
		0.699118, 0.415039, 0.582217,
		0.689255, -0.607767, -0.394395,
		26.774284, 30.329996, 26.869871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962309, 31.197189, 27.000439>,  <26.291807, 30.755432, 27.145948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962309, 31.197189, 27.000439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.005911, 30.869003, 26.775955>,  <27.032072, 30.672092, 26.641266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.005911, 30.869003, 26.775955>,  <26.962309, 31.197189, 27.000439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.005911, 30.869003, 26.775955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247051, 0.569219, -0.784191,
		0.962852, -0.053166, 0.264745,
		0.109006, -0.820465, -0.561208,
		27.038612, 30.622864, 26.607594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542629, 31.265860, 26.514746>,  <26.962309, 31.197189, 27.000439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542629, 31.265860, 26.514746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325369, 30.983009, 26.333656>,  <27.195013, 30.813299, 26.225002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325369, 30.983009, 26.333656>,  <27.542629, 31.265860, 26.514746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325369, 30.983009, 26.333656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198993, 0.415419, -0.887597,
		0.815715, -0.572187, -0.084921,
		-0.543149, -0.707128, -0.452725,
		27.162424, 30.770870, 26.197838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877821, 31.253128, 25.856655>,  <27.542629, 31.265860, 26.514746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877821, 31.253128, 25.856655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535049, 31.051834, 25.812069>,  <27.329386, 30.931057, 25.785316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535049, 31.051834, 25.812069>,  <27.877821, 31.253128, 25.856655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535049, 31.051834, 25.812069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039766, 0.280161, -0.959129,
		0.513899, -0.817472, -0.260090,
		-0.856928, -0.503238, -0.111467,
		27.277971, 30.900864, 25.778629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870289, 30.841576, 25.098494>,  <27.877821, 31.253128, 25.856655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870289, 30.841576, 25.098494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511211, 30.936199, 25.247189>,  <27.295765, 30.992973, 25.336407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511211, 30.936199, 25.247189>,  <27.870289, 30.841576, 25.098494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511211, 30.936199, 25.247189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341723, 0.158831, -0.926282,
		-0.278163, -0.958547, -0.061744,
		-0.897692, 0.236558, 0.371738,
		27.241903, 31.007166, 25.358709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534876, 30.906961, 24.463667>,  <27.870289, 30.841576, 25.098494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534876, 30.906961, 24.463667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233568, 31.026176, 24.698189>,  <27.052784, 31.097706, 24.838902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233568, 31.026176, 24.698189>,  <27.534876, 30.906961, 24.463667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233568, 31.026176, 24.698189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498960, 0.321833, -0.804651,
		-0.428511, -0.898663, -0.093717,
		-0.753271, 0.298040, 0.586306,
		27.007587, 31.115589, 24.874081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939104, 30.648140, 24.184624>,  <27.534876, 30.906961, 24.463667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939104, 30.648140, 24.184624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777454, 30.912308, 24.437775>,  <26.680464, 31.070808, 24.589664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777454, 30.912308, 24.437775>,  <26.939104, 30.648140, 24.184624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777454, 30.912308, 24.437775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744355, 0.164683, -0.647160,
		-0.531620, -0.732616, 0.425033,
		-0.404124, 0.660418, 0.632875,
		26.656218, 31.110434, 24.627638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267914, 30.375303, 24.184196>,  <26.939104, 30.648140, 24.184624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267914, 30.375303, 24.184196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280817, 30.759548, 24.294601>,  <26.288559, 30.990095, 24.360846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280817, 30.759548, 24.294601>,  <26.267914, 30.375303, 24.184196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280817, 30.759548, 24.294601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536871, 0.249588, -0.805900,
		-0.843047, -0.122189, 0.523776,
		0.032256, 0.960612, 0.276014,
		26.290493, 31.047731, 24.377405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637493, 30.583506, 24.292004>,  <26.267914, 30.375303, 24.184196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637493, 30.583506, 24.292004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817825, 30.935848, 24.234253>,  <25.926025, 31.147253, 24.199602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817825, 30.935848, 24.234253>,  <25.637493, 30.583506, 24.292004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817825, 30.935848, 24.234253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722964, 0.265472, -0.637847,
		-0.523522, 0.391941, 0.756510,
		0.450831, 0.880856, -0.144379,
		25.953075, 31.200106, 24.190939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223110, 31.089386, 24.544594>,  <25.637493, 30.583506, 24.292004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.223110, 31.089386, 24.544594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472509, 31.275414, 24.293209>,  <25.622149, 31.387030, 24.142378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472509, 31.275414, 24.293209>,  <25.223110, 31.089386, 24.544594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472509, 31.275414, 24.293209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780956, 0.332564, -0.528686,
		-0.036871, 0.820435, 0.570549,
		0.623497, 0.465067, -0.628462,
		25.659559, 31.414934, 24.104670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910564, 31.785818, 24.411695>,  <25.223110, 31.089386, 24.544594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910564, 31.785818, 24.411695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164347, 31.752018, 24.104366>,  <25.316616, 31.731737, 23.919968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164347, 31.752018, 24.104366>,  <24.910564, 31.785818, 24.411695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164347, 31.752018, 24.104366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673496, 0.427333, -0.603149,
		0.379298, 0.900136, 0.214213,
		0.634457, -0.084501, -0.768325,
		25.354685, 31.726667, 23.873869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910219, 32.459698, 24.169939>,  <24.910564, 31.785818, 24.411695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910219, 32.459698, 24.169939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040462, 32.216396, 23.880386>,  <25.118608, 32.070415, 23.706656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040462, 32.216396, 23.880386>,  <24.910219, 32.459698, 24.169939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040462, 32.216396, 23.880386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461663, 0.565856, -0.683135,
		0.825134, 0.556623, -0.096563,
		0.325608, -0.608258, -0.723880,
		25.138145, 32.033920, 23.663223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.685328, 32.299782, 24.855526>,  <24.910219, 32.459698, 24.169939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.685328, 32.299782, 24.855526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493874, 32.474422, 25.160233>,  <24.379002, 32.579205, 25.343058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493874, 32.474422, 25.160233>,  <24.685328, 32.299782, 24.855526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.493874, 32.474422, 25.160233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549754, 0.527462, -0.647730,
		-0.684601, -0.728812, -0.012441,
		-0.478636, 0.436597, 0.761768,
		24.350283, 32.605400, 25.388763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.964506, 32.320614, 24.764862>,  <24.685328, 32.299782, 24.855526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.964506, 32.320614, 24.764862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.104509, 32.627312, 24.980118>,  <24.188511, 32.811333, 25.109272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.104509, 32.627312, 24.980118>,  <23.964506, 32.320614, 24.764862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.104509, 32.627312, 24.980118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486891, 0.639688, -0.594758,
		-0.800269, -0.053844, 0.597218,
		0.350009, 0.766746, 0.538139,
		24.209513, 32.857334, 25.141560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.314459, 32.657387, 24.966837>,  <23.964506, 32.320614, 24.764862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.314459, 32.657387, 24.966837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.620161, 32.915344, 24.968815>,  <23.803581, 33.070118, 24.970001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.620161, 32.915344, 24.968815>,  <23.314459, 32.657387, 24.966837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.620161, 32.915344, 24.968815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545430, 0.650433, -0.528623,
		-0.344124, 0.401305, 0.848842,
		0.764255, 0.644896, 0.004946,
		23.849438, 33.108814, 24.970299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.056692, 33.275890, 25.317261>,  <23.314459, 32.657387, 24.966837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.056692, 33.275890, 25.317261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.382843, 33.362278, 25.102406>,  <23.578533, 33.414112, 24.973492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.382843, 33.362278, 25.102406>,  <23.056692, 33.275890, 25.317261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.382843, 33.362278, 25.102406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527444, 0.659621, -0.535447,
		0.238668, 0.719901, 0.651752,
		0.815378, 0.215968, -0.537138,
		23.627457, 33.427067, 24.941265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.144230, 34.076664, 25.300217>,  <23.056692, 33.275890, 25.317261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.144230, 34.076664, 25.300217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.316277, 33.907822, 24.981010>,  <23.419504, 33.806519, 24.789486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.316277, 33.907822, 24.981010>,  <23.144230, 34.076664, 25.300217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.316277, 33.907822, 24.981010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407637, 0.697908, -0.588861,
		0.805501, 0.578580, 0.128118,
		0.430118, -0.422102, -0.798015,
		23.445312, 33.781193, 24.741606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.660158, 34.662102, 25.269447>,  <23.144230, 34.076664, 25.300217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.660158, 34.662102, 25.269447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.702492, 34.364197, 25.005894>,  <22.727892, 34.185455, 24.847761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.702492, 34.364197, 25.005894>,  <22.660158, 34.662102, 25.269447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.702492, 34.364197, 25.005894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992264, -0.035856, -0.118852,
		0.064891, 0.666364, -0.742797,
		0.105832, -0.744764, -0.658883,
		22.734241, 34.140766, 24.808229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.219233, 35.230549, 24.842091>,  <22.660158, 34.662102, 25.269447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.219233, 35.230549, 24.842091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.007116, 35.335274, 24.519539>,  <21.879847, 35.398109, 24.326008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.007116, 35.335274, 24.519539>,  <22.219233, 35.230549, 24.842091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.007116, 35.335274, 24.519539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844954, 0.241276, -0.477324,
		0.069591, -0.934474, -0.349165,
		-0.530292, 0.261811, -0.806378,
		21.848028, 35.413818, 24.277626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.687111, 35.048668, 24.353510>,  <22.219233, 35.230549, 24.842091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.687111, 35.048668, 24.353510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.417507, 35.291695, 24.185429>,  <22.255745, 35.437511, 24.084579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.417507, 35.291695, 24.185429>,  <22.687111, 35.048668, 24.353510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.417507, 35.291695, 24.185429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659032, 0.237556, -0.713614,
		-0.333746, -0.757911, -0.560521,
		-0.674011, 0.607567, -0.420204,
		22.215303, 35.473965, 24.059368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.659193, 34.879848, 23.609476>,  <22.687111, 35.048668, 24.353510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.659193, 34.879848, 23.609476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.549999, 35.261513, 23.658573>,  <22.484484, 35.490509, 23.688032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.549999, 35.261513, 23.658573>,  <22.659193, 34.879848, 23.609476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.549999, 35.261513, 23.658573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811786, 0.296935, -0.502825,
		-0.516220, -0.037622, -0.855629,
		-0.272984, 0.954156, 0.122743,
		22.468103, 35.547760, 23.695396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.943993, 35.022797, 23.078077>,  <22.659193, 34.879848, 23.609476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.943993, 35.022797, 23.078077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.842428, 35.363026, 23.262276>,  <22.781490, 35.567162, 23.372795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.842428, 35.363026, 23.262276>,  <22.943993, 35.022797, 23.078077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.842428, 35.363026, 23.262276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607476, 0.510719, -0.608391,
		-0.752664, 0.125263, -0.646379,
		-0.253909, 0.850574, 0.460494,
		22.766256, 35.618198, 23.400423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.831757, 35.499283, 22.521360>,  <22.943993, 35.022797, 23.078077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.831757, 35.499283, 22.521360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.892813, 35.725494, 22.845551>,  <22.929447, 35.861221, 23.040066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.892813, 35.725494, 22.845551>,  <22.831757, 35.499283, 22.521360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.892813, 35.725494, 22.845551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697983, 0.518895, -0.493527,
		-0.699658, 0.641032, -0.315527,
		0.152641, 0.565532, 0.810478,
		22.938604, 35.895153, 23.088694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.849340, 36.265785, 22.222433>,  <22.831757, 35.499283, 22.521360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.849340, 36.265785, 22.222433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.047728, 36.225651, 22.567444>,  <23.166759, 36.201569, 22.774450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.047728, 36.225651, 22.567444>,  <22.849340, 36.265785, 22.222433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.047728, 36.225651, 22.567444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766168, 0.518036, -0.380297,
		-0.408660, 0.849454, 0.333804,
		0.495967, -0.100338, 0.862525,
		23.196518, 36.195549, 22.826200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.222019, 36.864925, 22.395117>,  <22.849340, 36.265785, 22.222433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.222019, 36.864925, 22.395117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.440338, 36.613422, 22.616665>,  <23.571329, 36.462521, 22.749594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.440338, 36.613422, 22.616665>,  <23.222019, 36.864925, 22.395117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.440338, 36.613422, 22.616665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837773, 0.397227, -0.374629,
		0.015538, 0.668489, 0.743560,
		0.545797, -0.628755, 0.553870,
		23.604076, 36.424797, 22.782825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.791069, 37.230774, 22.551254>,  <23.222019, 36.864925, 22.395117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.791069, 37.230774, 22.551254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.897152, 36.848045, 22.598858>,  <23.960802, 36.618408, 22.627420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.897152, 36.848045, 22.598858>,  <23.791069, 37.230774, 22.551254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.897152, 36.848045, 22.598858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888512, 0.194587, -0.415551,
		0.374449, 0.215947, 0.901751,
		0.265206, -0.956819, 0.119009,
		23.976713, 36.561001, 22.634560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.536570, 37.289345, 22.603067>,  <23.791069, 37.230774, 22.551254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.536570, 37.289345, 22.603067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457367, 36.903564, 22.533058>,  <24.409845, 36.672096, 22.491053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457367, 36.903564, 22.533058>,  <24.536570, 37.289345, 22.603067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.457367, 36.903564, 22.533058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682482, -0.007485, -0.730864,
		0.703570, -0.264166, 0.659701,
		-0.198008, -0.964448, -0.175023,
		24.397964, 36.614231, 22.480551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299335, 36.980495, 22.492228>,  <24.536570, 37.289345, 22.603067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299335, 36.980495, 22.492228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036230, 36.728825, 22.326588>,  <24.878366, 36.577820, 22.227203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036230, 36.728825, 22.326588>,  <25.299335, 36.980495, 22.492228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.036230, 36.728825, 22.326588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631675, -0.161313, -0.758264,
		0.410285, -0.760336, 0.503543,
		-0.657764, -0.629180, -0.414101,
		24.838902, 36.540070, 22.202358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737200, 36.377880, 22.335705>,  <25.299335, 36.980495, 22.492228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737200, 36.377880, 22.335705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409044, 36.360718, 22.107628>,  <25.212151, 36.350422, 21.970781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409044, 36.360718, 22.107628>,  <25.737200, 36.377880, 22.335705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409044, 36.360718, 22.107628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569875, -0.143249, -0.809149,
		-0.046961, -0.988756, 0.141972,
		-0.820389, -0.042908, -0.570194,
		25.162928, 36.347847, 21.936569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837427, 35.763214, 21.917213>,  <25.737200, 36.377880, 22.335705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837427, 35.763214, 21.917213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580233, 35.987240, 21.708256>,  <25.425915, 36.121655, 21.582882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580233, 35.987240, 21.708256>,  <25.837427, 35.763214, 21.917213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580233, 35.987240, 21.708256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473325, -0.245641, -0.845946,
		-0.602105, -0.791194, -0.107148,
		-0.642988, 0.560064, -0.522393,
		25.387337, 36.155258, 21.551538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567017, 35.368641, 21.409969>,  <25.837427, 35.763214, 21.917213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567017, 35.368641, 21.409969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493729, 35.734940, 21.266956>,  <25.449757, 35.954720, 21.181149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493729, 35.734940, 21.266956>,  <25.567017, 35.368641, 21.409969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493729, 35.734940, 21.266956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350351, -0.278985, -0.894104,
		-0.918523, -0.289079, -0.269719,
		-0.183219, 0.915751, -0.357533,
		25.438763, 36.009666, 21.159697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.170021, 35.211479, 20.923285>,  <25.567017, 35.368641, 21.409969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.170021, 35.211479, 20.923285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308199, 35.576889, 20.837368>,  <25.391106, 35.796135, 20.785818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308199, 35.576889, 20.837368>,  <25.170021, 35.211479, 20.923285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308199, 35.576889, 20.837368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290948, -0.321862, -0.900974,
		-0.892198, 0.248742, -0.376974,
		0.345444, 0.913528, -0.214793,
		25.411833, 35.850948, 20.772930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027882, 35.246243, 20.176067>,  <25.170021, 35.211479, 20.923285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027882, 35.246243, 20.176067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290184, 35.536777, 20.258457>,  <25.447565, 35.711098, 20.307892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290184, 35.536777, 20.258457>,  <25.027882, 35.246243, 20.176067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290184, 35.536777, 20.258457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383826, -0.085801, -0.919411,
		-0.650125, 0.681967, -0.335050,
		0.655755, 0.726333, 0.205975,
		25.486910, 35.754677, 20.320250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021311, 35.610897, 19.599604>,  <25.027882, 35.246243, 20.176067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021311, 35.610897, 19.599604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372829, 35.704929, 19.765713>,  <25.583740, 35.761349, 19.865377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372829, 35.704929, 19.765713>,  <25.021311, 35.610897, 19.599604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372829, 35.704929, 19.765713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473046, -0.314651, -0.822936,
		-0.062790, 0.919637, -0.387718,
		0.878798, 0.235080, 0.415273,
		25.636469, 35.775452, 19.890295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350441, 35.955772, 19.092197>,  <25.021311, 35.610897, 19.599604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350441, 35.955772, 19.092197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658569, 35.843998, 19.321465>,  <25.843447, 35.776932, 19.459024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658569, 35.843998, 19.321465>,  <25.350441, 35.955772, 19.092197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658569, 35.843998, 19.321465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522368, -0.238975, -0.818549,
		0.365706, 0.929949, -0.038118,
		0.770319, -0.279437, 0.573170,
		25.889666, 35.760166, 19.493416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950315, 36.094151, 18.722637>,  <25.350441, 35.955772, 19.092197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950315, 36.094151, 18.722637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096882, 35.840122, 18.994644>,  <26.184822, 35.687706, 19.157848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096882, 35.840122, 18.994644>,  <25.950315, 36.094151, 18.722637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096882, 35.840122, 18.994644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558674, -0.434278, -0.706602,
		0.744060, 0.638818, 0.195672,
		0.366414, -0.635070, 0.680020,
		26.206806, 35.649601, 19.198650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623755, 36.123108, 18.662504>,  <25.950315, 36.094151, 18.722637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623755, 36.123108, 18.662504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562750, 35.764904, 18.829739>,  <26.526148, 35.549980, 18.930080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562750, 35.764904, 18.829739>,  <26.623755, 36.123108, 18.662504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562750, 35.764904, 18.829739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532584, -0.430826, -0.728521,
		0.832523, 0.111559, 0.542642,
		-0.152511, -0.895513, 0.418087,
		26.516996, 35.496250, 18.955164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255276, 35.734810, 18.640511>,  <26.623755, 36.123108, 18.662504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255276, 35.734810, 18.640511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979294, 35.451263, 18.699127>,  <26.813704, 35.281136, 18.734297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979294, 35.451263, 18.699127>,  <27.255276, 35.734810, 18.640511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979294, 35.451263, 18.699127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435120, -0.567946, -0.698647,
		0.578473, -0.418272, 0.700298,
		-0.689956, -0.708862, 0.146543,
		26.772306, 35.238605, 18.743090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715729, 35.211685, 18.555582>,  <27.255276, 35.734810, 18.640511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715729, 35.211685, 18.555582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332983, 35.098164, 18.530708>,  <27.103336, 35.030048, 18.515785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332983, 35.098164, 18.530708>,  <27.715729, 35.211685, 18.555582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332983, 35.098164, 18.530708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229537, -0.607227, -0.760650,
		0.178119, -0.742111, 0.646178,
		-0.956863, -0.283807, -0.062183,
		27.045923, 35.013020, 18.512053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717176, 34.417248, 18.467264>,  <27.715729, 35.211685, 18.555582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717176, 34.417248, 18.467264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396238, 34.590576, 18.303082>,  <27.203676, 34.694572, 18.204571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396238, 34.590576, 18.303082>,  <27.717176, 34.417248, 18.467264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396238, 34.590576, 18.303082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091962, -0.589734, -0.802345,
		-0.589734, -0.681503, 0.433321,
		0.802345, -0.433321, 0.410459,
		27.155535, 34.720573, 18.179943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332441, 33.942287, 18.011547>,  <27.717176, 34.417248, 18.467264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332441, 33.942287, 18.011547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178442, 34.293682, 17.898380>,  <27.086042, 34.504517, 17.830481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178442, 34.293682, 17.898380>,  <27.332441, 33.942287, 18.011547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178442, 34.293682, 17.898380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058413, -0.329125, -0.942478,
		-0.921067, -0.346327, 0.178028,
		-0.384998, 0.878484, -0.282916,
		27.062943, 34.557228, 17.813505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576197, 33.927547, 17.707878>,  <27.332441, 33.942287, 18.011547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576197, 33.927547, 17.707878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861122, 34.162983, 17.554951>,  <27.032078, 34.304245, 17.463194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861122, 34.162983, 17.554951>,  <26.576197, 33.927547, 17.707878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861122, 34.162983, 17.554951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082786, -0.611380, -0.786995,
		-0.696960, 0.528939, -0.484222,
		0.712316, 0.588591, -0.382318,
		27.074818, 34.339561, 17.440256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349195, 33.954105, 16.969095>,  <26.576197, 33.927547, 17.707878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349195, 33.954105, 16.969095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739815, 34.030708, 17.008442>,  <26.974186, 34.076672, 17.032049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739815, 34.030708, 17.008442>,  <26.349195, 33.954105, 16.969095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739815, 34.030708, 17.008442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194509, -0.588943, -0.784418,
		-0.092290, 0.785156, -0.612382,
		0.976550, 0.191508, 0.098366,
		27.032780, 34.088161, 17.037952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779808, 34.207600, 16.325369>,  <26.349195, 33.954105, 16.969095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779808, 34.207600, 16.325369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056639, 34.034065, 16.556129>,  <27.222738, 33.929943, 16.694586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056639, 34.034065, 16.556129>,  <26.779808, 34.207600, 16.325369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056639, 34.034065, 16.556129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334498, -0.515471, -0.788924,
		0.639639, 0.738969, -0.211629,
		0.692079, -0.433837, 0.576899,
		27.264263, 33.903915, 16.729198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128382, 34.786961, 16.003181>,  <26.779808, 34.207600, 16.325369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128382, 34.786961, 16.003181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119217, 34.518871, 15.706460>,  <27.113718, 34.358017, 15.528427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119217, 34.518871, 15.706460>,  <27.128382, 34.786961, 16.003181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119217, 34.518871, 15.706460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925499, 0.294810, -0.237778,
		0.378056, 0.681093, -0.627046,
		-0.022911, -0.670224, -0.741805,
		27.112343, 34.317802, 15.483918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924803, 34.990032, 15.279470>,  <27.128382, 34.786961, 16.003181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924803, 34.990032, 15.279470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790247, 34.617077, 15.332364>,  <26.709513, 34.393303, 15.364100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790247, 34.617077, 15.332364>,  <26.924803, 34.990032, 15.279470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790247, 34.617077, 15.332364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930281, 0.307190, -0.200527,
		0.146349, -0.190470, -0.970723,
		-0.336390, -0.932392, 0.132234,
		26.689329, 34.337360, 15.372034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469707, 35.593159, 15.207591>,  <26.924803, 34.990032, 15.279470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469707, 35.593159, 15.207591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274858, 35.900093, 15.040784>,  <26.157949, 36.084255, 14.940700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274858, 35.900093, 15.040784>,  <26.469707, 35.593159, 15.207591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274858, 35.900093, 15.040784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232989, 0.346011, 0.908841,
		0.841682, 0.539876, 0.010232,
		-0.487121, 0.767339, -0.417017,
		26.128721, 36.130295, 14.915679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625347, 36.176926, 15.637137>,  <26.469707, 35.593159, 15.207591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625347, 36.176926, 15.637137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272776, 36.191269, 15.448756>,  <26.061234, 36.199875, 15.335728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272776, 36.191269, 15.448756>,  <26.625347, 36.176926, 15.637137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272776, 36.191269, 15.448756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445882, 0.265730, 0.854738,
		0.155793, 0.963381, -0.218235,
		-0.881429, 0.035855, -0.470953,
		26.008347, 36.202026, 15.307470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276691, 36.774063, 15.820979>,  <26.625347, 36.176926, 15.637137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276691, 36.774063, 15.820979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993954, 36.501720, 15.744239>,  <25.824310, 36.338314, 15.698195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993954, 36.501720, 15.744239>,  <26.276691, 36.774063, 15.820979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993954, 36.501720, 15.744239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387121, 0.145339, 0.910502,
		-0.592036, 0.717854, -0.366305,
		-0.706846, -0.680854, -0.191851,
		25.781900, 36.297462, 15.686684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752964, 36.958927, 16.233238>,  <26.276691, 36.774063, 15.820979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752964, 36.958927, 16.233238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637243, 36.590237, 16.129917>,  <25.567810, 36.369022, 16.067924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637243, 36.590237, 16.129917>,  <25.752964, 36.958927, 16.233238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637243, 36.590237, 16.129917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643737, -0.012374, 0.765146,
		-0.708454, 0.387637, -0.589772,
		-0.289301, -0.921729, -0.258303,
		25.550453, 36.313717, 16.052427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.019913, 36.852539, 16.076630>,  <25.752964, 36.958927, 16.233238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.019913, 36.852539, 16.076630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187635, 36.534832, 16.252502>,  <25.288269, 36.344208, 16.358027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187635, 36.534832, 16.252502>,  <25.019913, 36.852539, 16.076630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187635, 36.534832, 16.252502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701512, 0.023944, 0.712255,
		-0.576250, -0.607094, -0.547149,
		0.419305, -0.794269, 0.439682,
		25.313427, 36.296551, 16.384407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.452114, 36.486141, 16.178890>,  <25.019913, 36.852539, 16.076630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.452114, 36.486141, 16.178890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737827, 36.394127, 16.443279>,  <24.909254, 36.338921, 16.601913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737827, 36.394127, 16.443279>,  <24.452114, 36.486141, 16.178890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.737827, 36.394127, 16.443279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659326, 0.095565, 0.745759,
		-0.234715, -0.968479, -0.083406,
		0.714282, -0.230032, 0.660974,
		24.952112, 36.325119, 16.641571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.171659, 35.947536, 16.650921>,  <24.452114, 36.486141, 16.178890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.171659, 35.947536, 16.650921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460039, 36.121426, 16.866791>,  <24.633066, 36.225758, 16.996313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460039, 36.121426, 16.866791>,  <24.171659, 35.947536, 16.650921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.460039, 36.121426, 16.866791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604599, 0.014002, 0.796407,
		0.338661, -0.900455, 0.272929,
		0.720950, 0.434724, 0.539673,
		24.676325, 36.251842, 17.028692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.072727, 35.674728, 17.246086>,  <24.171659, 35.947536, 16.650921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.072727, 35.674728, 17.246086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.282776, 35.994991, 17.361458>,  <24.408806, 36.187149, 17.430681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.282776, 35.994991, 17.361458>,  <24.072727, 35.674728, 17.246086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.282776, 35.994991, 17.361458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532931, 0.045144, 0.844954,
		0.663500, -0.597416, 0.450403,
		0.525121, 0.800660, 0.288428,
		24.440311, 36.235188, 17.447987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.356369, 35.551449, 17.921875>,  <24.072727, 35.674728, 17.246086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.356369, 35.551449, 17.921875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.376040, 35.948112, 17.874226>,  <24.387842, 36.186111, 17.845636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.376040, 35.948112, 17.874226>,  <24.356369, 35.551449, 17.921875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.376040, 35.948112, 17.874226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499129, 0.127708, 0.857066,
		0.865131, 0.017311, 0.501247,
		0.049176, 0.991661, -0.119124,
		24.390793, 36.245609, 17.838488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.690315, 35.939301, 18.533003>,  <24.356369, 35.551449, 17.921875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.690315, 35.939301, 18.533003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456718, 36.215801, 18.362766>,  <24.316561, 36.381702, 18.260624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456718, 36.215801, 18.362766>,  <24.690315, 35.939301, 18.533003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.456718, 36.215801, 18.362766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301365, 0.302195, 0.904355,
		0.753746, 0.656394, 0.031839,
		-0.583991, 0.691249, -0.425593,
		24.281521, 36.423176, 18.235088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.701555, 36.564137, 18.987005>,  <24.690315, 35.939301, 18.533003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.701555, 36.564137, 18.987005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406605, 36.647232, 18.729908>,  <24.229635, 36.697090, 18.575649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406605, 36.647232, 18.729908>,  <24.701555, 36.564137, 18.987005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.406605, 36.647232, 18.729908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540916, 0.388323, 0.746067,
		0.404582, 0.897802, -0.173969,
		-0.737376, 0.207743, -0.642743,
		24.185392, 36.709557, 18.537085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.484386, 37.197159, 19.167389>,  <24.701555, 36.564137, 18.987005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.484386, 37.197159, 19.167389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.176729, 37.025459, 18.978004>,  <23.992136, 36.922440, 18.864374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.176729, 37.025459, 18.978004>,  <24.484386, 37.197159, 19.167389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.176729, 37.025459, 18.978004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586913, 0.181278, 0.789095,
		-0.252892, 0.884806, -0.391362,
		-0.769142, -0.429251, -0.473460,
		23.945986, 36.896683, 18.835966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.867462, 37.652081, 19.283447>,  <24.484386, 37.197159, 19.167389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.867462, 37.652081, 19.283447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.720617, 37.300270, 19.162346>,  <23.632509, 37.089184, 19.089685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.720617, 37.300270, 19.162346>,  <23.867462, 37.652081, 19.283447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.720617, 37.300270, 19.162346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703518, 0.049613, 0.708944,
		-0.608515, 0.473255, -0.636976,
		-0.367113, -0.879527, -0.302753,
		23.610483, 37.036411, 19.071520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.070095, 37.734600, 19.144180>,  <23.867462, 37.652081, 19.283447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.070095, 37.734600, 19.144180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.135126, 37.348415, 19.225616>,  <23.174145, 37.116703, 19.274479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.135126, 37.348415, 19.225616>,  <23.070095, 37.734600, 19.144180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.135126, 37.348415, 19.225616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867101, -0.041332, 0.496414,
		-0.470855, -0.257239, -0.843874,
		0.162576, -0.965463, 0.203591,
		23.183899, 37.058777, 19.286694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.532007, 37.468258, 18.930456>,  <23.070095, 37.734600, 19.144180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.532007, 37.468258, 18.930456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.695312, 37.218170, 19.196514>,  <22.793297, 37.068119, 19.356150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.695312, 37.218170, 19.196514>,  <22.532007, 37.468258, 18.930456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.695312, 37.218170, 19.196514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858510, -0.015299, 0.512569,
		-0.310293, -0.780298, -0.543004,
		0.408264, -0.625220, 0.665146,
		22.817791, 37.030605, 19.396059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.934338, 37.160194, 19.187918>,  <22.532007, 37.468258, 18.930456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.934338, 37.160194, 19.187918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.215279, 37.044693, 19.448170>,  <22.383844, 36.975391, 19.604321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.215279, 37.044693, 19.448170>,  <21.934338, 37.160194, 19.187918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.215279, 37.044693, 19.448170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691449, -0.059608, 0.719962,
		-0.169112, -0.955545, -0.241527,
		0.702353, -0.288758, 0.650630,
		22.425985, 36.958069, 19.643358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.642204, 36.518505, 19.556852>,  <21.934338, 37.160194, 19.187918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.642204, 36.518505, 19.556852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.924215, 36.690777, 19.782223>,  <22.093422, 36.794140, 19.917446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.924215, 36.690777, 19.782223>,  <21.642204, 36.518505, 19.556852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.924215, 36.690777, 19.782223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515785, -0.233868, 0.824179,
		0.486728, -0.871675, 0.057257,
		0.705026, 0.430684, 0.563427,
		22.135723, 36.819981, 19.951250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.594086, 36.077328, 20.103043>,  <21.642204, 36.518505, 19.556852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.594086, 36.077328, 20.103043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.795801, 36.385071, 20.259899>,  <21.916830, 36.569717, 20.354013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.795801, 36.385071, 20.259899>,  <21.594086, 36.077328, 20.103043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.795801, 36.385071, 20.259899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412789, -0.184097, 0.892028,
		0.758483, -0.611714, 0.224745,
		0.504291, 0.769360, 0.392144,
		21.947088, 36.615879, 20.377542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.958101, 35.892014, 20.843857>,  <21.594086, 36.077328, 20.103043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.958101, 35.892014, 20.843857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.910995, 36.288414, 20.818378>,  <21.882732, 36.526253, 20.803091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.910995, 36.288414, 20.818378>,  <21.958101, 35.892014, 20.843857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.910995, 36.288414, 20.818378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452253, 0.003581, 0.891882,
		0.884081, 0.133836, 0.447760,
		-0.117762, 0.990997, -0.063694,
		21.875668, 36.585712, 20.799271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.110786, 36.138767, 21.551052>,  <21.958101, 35.892014, 20.843857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.110786, 36.138767, 21.551052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.923603, 36.438969, 21.364391>,  <21.811293, 36.619087, 21.252394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.923603, 36.438969, 21.364391>,  <22.110786, 36.138767, 21.551052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.923603, 36.438969, 21.364391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548941, 0.166975, 0.819014,
		0.692589, 0.639429, 0.333843,
		-0.467958, 0.750500, -0.466653,
		21.783216, 36.664120, 21.224396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.165487, 36.699921, 22.088135>,  <22.110786, 36.138767, 21.551052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.165487, 36.699921, 22.088135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.856064, 36.773636, 21.845600>,  <21.670410, 36.817867, 21.700079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.856064, 36.773636, 21.845600>,  <22.165487, 36.699921, 22.088135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.856064, 36.773636, 21.845600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601747, 0.086483, 0.793991,
		0.198764, 0.979059, 0.043998,
		-0.773559, 0.184293, -0.606336,
		21.623997, 36.828922, 21.663700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.854980, 37.215382, 22.366945>,  <22.165487, 36.699921, 22.088135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.854980, 37.215382, 22.366945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.562801, 37.095211, 22.121609>,  <21.387493, 37.023109, 21.974407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.562801, 37.095211, 22.121609>,  <21.854980, 37.215382, 22.366945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.562801, 37.095211, 22.121609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682670, 0.294730, 0.668652,
		-0.020113, 0.907125, -0.420380,
		-0.730450, -0.300430, -0.613339,
		21.343666, 37.005081, 21.937607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.459417, 37.704906, 22.490192>,  <21.854980, 37.215382, 22.366945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.459417, 37.704906, 22.490192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.224455, 37.412693, 22.350891>,  <21.083477, 37.237366, 22.267309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.224455, 37.412693, 22.350891>,  <21.459417, 37.704906, 22.490192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.224455, 37.412693, 22.350891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591862, 0.094291, 0.800506,
		-0.551956, 0.676340, -0.487759,
		-0.587405, -0.730530, -0.348255,
		21.048233, 37.193535, 22.246414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.754251, 37.870049, 22.428436>,  <21.459417, 37.704906, 22.490192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.754251, 37.870049, 22.428436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.717611, 37.473324, 22.464012>,  <20.695627, 37.235287, 22.485357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.717611, 37.473324, 22.464012>,  <20.754251, 37.870049, 22.428436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.717611, 37.473324, 22.464012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750903, 0.127456, 0.647996,
		-0.654029, -0.007428, -0.756433,
		-0.091599, -0.991817, 0.088938,
		20.690132, 37.175777, 22.490694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.074566, 37.814724, 22.507746>,  <20.754251, 37.870049, 22.428436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.074566, 37.814724, 22.507746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.197437, 37.454582, 22.631039>,  <20.271160, 37.238499, 22.705015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.197437, 37.454582, 22.631039>,  <20.074566, 37.814724, 22.507746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.197437, 37.454582, 22.631039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688342, 0.013444, 0.725262,
		-0.657134, -0.434956, -0.615620,
		0.307181, -0.900352, 0.308233,
		20.289591, 37.184475, 22.723509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.520000, 37.595470, 22.836609>,  <20.074566, 37.814724, 22.507746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.520000, 37.595470, 22.836609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.841927, 37.386581, 22.949432>,  <20.035082, 37.261250, 23.017126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.841927, 37.386581, 22.949432>,  <19.520000, 37.595470, 22.836609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.841927, 37.386581, 22.949432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395050, -0.116663, 0.911222,
		-0.442956, -0.844791, -0.300197,
		0.804814, -0.522224, 0.282058,
		20.083370, 37.229916, 23.034050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.324902, 37.997547, 23.499470>,  <19.520000, 37.595470, 22.836609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.324902, 37.997547, 23.499470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.421825, 37.616016, 23.570469>,  <19.479980, 37.387100, 23.613068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.421825, 37.616016, 23.570469>,  <19.324902, 37.997547, 23.499470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.421825, 37.616016, 23.570469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710496, -0.049872, 0.701932,
		-0.660668, -0.296195, -0.689773,
		0.242309, -0.953825, 0.177496,
		19.494518, 37.329868, 23.623718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.639736, 37.499168, 23.599751>,  <19.324902, 37.997547, 23.499470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.639736, 37.499168, 23.599751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.964241, 37.378269, 23.799950>,  <19.158943, 37.305729, 23.920069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.964241, 37.378269, 23.799950>,  <18.639736, 37.499168, 23.599751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.964241, 37.378269, 23.799950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573408, -0.243997, 0.782092,
		-0.114263, -0.921473, -0.371256,
		0.811263, -0.302245, 0.500501,
		19.207619, 37.287594, 23.950100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.306110, 36.917046, 23.773434>,  <18.639736, 37.499168, 23.599751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.306110, 36.917046, 23.773434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.629181, 37.083355, 23.940666>,  <18.823023, 37.183140, 24.041006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.629181, 37.083355, 23.940666>,  <18.306110, 36.917046, 23.773434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.629181, 37.083355, 23.940666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450709, -0.021809, 0.892404,
		0.380155, -0.909207, 0.169778,
		0.807678, 0.415773, 0.418079,
		18.871485, 37.208088, 24.066090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759668, 37.238865, 23.364954>,  <18.306110, 36.917046, 23.773434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.759668, 37.238865, 23.364954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809637, 37.633865, 23.403385>,  <17.839619, 37.870865, 23.426443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809637, 37.633865, 23.403385>,  <17.759668, 37.238865, 23.364954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.809637, 37.633865, 23.403385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279636, -0.127955, 0.951541,
		0.951944, -0.092002, -0.292126,
		0.124922, 0.987504, 0.096079,
		17.847115, 37.930115, 23.432209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.052725, 23.920387, 28.458092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.441454, 23.947960, 28.548260>,  <29.674690, 23.964502, 28.602360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.441454, 23.947960, 28.548260>,  <29.052725, 23.920387, 28.458092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441454, 23.947960, 28.548260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104848, 0.730083, -0.675267,
		-0.211121, 0.679873, 0.702282,
		0.971820, 0.068930, 0.225419,
		29.733000, 23.968639, 28.615885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142235, 24.594105, 28.539623>,  <29.052725, 23.920387, 28.458092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142235, 24.594105, 28.539623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.526453, 24.490685, 28.498619>,  <29.756983, 24.428633, 28.474016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.526453, 24.490685, 28.498619>,  <29.142235, 24.594105, 28.539623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526453, 24.490685, 28.498619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161765, 0.819158, -0.550283,
		0.226246, 0.511989, 0.828661,
		0.960544, -0.258548, -0.102509,
		29.814617, 24.413120, 28.467867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443953, 25.231806, 28.428673>,  <29.142235, 24.594105, 28.539623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443953, 25.231806, 28.428673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.722593, 24.979351, 28.292194>,  <29.889778, 24.827879, 28.210306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.722593, 24.979351, 28.292194>,  <29.443953, 25.231806, 28.428673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722593, 24.979351, 28.292194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267102, 0.669511, -0.693117,
		0.665886, 0.391691, 0.634959,
		0.696600, -0.631136, -0.341197,
		29.931574, 24.790010, 28.189835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134754, 25.567627, 28.406315>,  <29.443953, 25.231806, 28.428673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134754, 25.567627, 28.406315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.100897, 25.285686, 28.124599>,  <30.080582, 25.116522, 27.955570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.100897, 25.285686, 28.124599>,  <30.134754, 25.567627, 28.406315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100897, 25.285686, 28.124599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004243, 0.707073, -0.707128,
		0.996402, -0.056866, -0.062841,
		-0.084645, -0.704851, -0.704287,
		30.075502, 25.074232, 27.913313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681936, 25.735332, 27.944967>,  <30.134754, 25.567627, 28.406315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681936, 25.735332, 27.944967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.438463, 25.477077, 27.760509>,  <30.292379, 25.322124, 27.649834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.438463, 25.477077, 27.760509>,  <30.681936, 25.735332, 27.944967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438463, 25.477077, 27.760509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001808, 0.582345, -0.812939,
		0.793410, -0.493990, -0.355632,
		-0.608684, -0.645638, -0.461146,
		30.255857, 25.283386, 27.622166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965080, 25.605671, 27.322247>,  <30.681936, 25.735332, 27.944967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965080, 25.605671, 27.322247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.577662, 25.512325, 27.287697>,  <30.345211, 25.456318, 27.266968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.577662, 25.512325, 27.287697>,  <30.965080, 25.605671, 27.322247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577662, 25.512325, 27.287697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082779, 0.629500, -0.772579,
		0.234665, -0.741128, -0.629017,
		-0.968546, -0.233366, -0.086372,
		30.287098, 25.442316, 27.261786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848228, 25.550449, 26.581253>,  <30.965080, 25.605671, 27.322247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848228, 25.550449, 26.581253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.472132, 25.589500, 26.711739>,  <30.246473, 25.612930, 26.790030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.472132, 25.589500, 26.711739>,  <30.848228, 25.550449, 26.581253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472132, 25.589500, 26.711739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210485, 0.586419, -0.782182,
		-0.267658, -0.804103, -0.530827,
		-0.940242, 0.097626, 0.326212,
		30.190060, 25.618788, 26.809603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456879, 25.263542, 26.049044>,  <30.848228, 25.550449, 26.581253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456879, 25.263542, 26.049044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.268042, 25.538612, 26.269672>,  <30.154739, 25.703655, 26.402050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.268042, 25.538612, 26.269672>,  <30.456879, 25.263542, 26.049044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268042, 25.538612, 26.269672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259644, 0.489462, -0.832474,
		-0.842444, -0.536217, -0.052521,
		-0.472094, 0.687676, 0.551570,
		30.126413, 25.744915, 26.435143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829317, 25.404747, 25.688259>,  <30.456879, 25.263542, 26.049044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829317, 25.404747, 25.688259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.831951, 25.710121, 25.946598>,  <29.833532, 25.893347, 26.101601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.831951, 25.710121, 25.946598>,  <29.829317, 25.404747, 25.688259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831951, 25.710121, 25.946598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311104, 0.615374, -0.724243,
		-0.950353, -0.196156, 0.241561,
		0.006586, 0.763438, 0.645848,
		29.833927, 25.939152, 26.140352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273676, 25.743551, 25.509590>,  <29.829317, 25.404747, 25.688259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273676, 25.743551, 25.509590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.491331, 26.012547, 25.710258>,  <29.621923, 26.173944, 25.830660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.491331, 26.012547, 25.710258>,  <29.273676, 25.743551, 25.509590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491331, 26.012547, 25.710258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318402, 0.718729, -0.618101,
		-0.776231, 0.176599, 0.605209,
		0.544138, 0.672489, 0.501670,
		29.654572, 26.214293, 25.860760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822104, 26.380310, 25.710184>,  <29.273676, 25.743551, 25.509590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822104, 26.380310, 25.710184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.204725, 26.494919, 25.731766>,  <29.434298, 26.563684, 25.744715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.204725, 26.494919, 25.731766>,  <28.822104, 26.380310, 25.710184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204725, 26.494919, 25.731766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232658, 0.861657, -0.451018,
		-0.175715, 0.418870, 0.890883,
		0.956553, 0.286522, 0.053953,
		29.491692, 26.580875, 25.747952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783119, 27.079075, 25.844461>,  <28.822104, 26.380310, 25.710184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783119, 27.079075, 25.844461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.157827, 27.048462, 25.707870>,  <29.382652, 27.030094, 25.625916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.157827, 27.048462, 25.707870>,  <28.783119, 27.079075, 25.844461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157827, 27.048462, 25.707870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106371, 0.867351, -0.486196,
		0.333392, 0.491777, 0.804366,
		0.936768, -0.076533, -0.341479,
		29.438858, 27.025501, 25.605427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028822, 27.833004, 25.940325>,  <28.783119, 27.079075, 25.844461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028822, 27.833004, 25.940325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.293337, 27.673882, 25.685940>,  <29.452045, 27.578407, 25.533308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.293337, 27.673882, 25.685940>,  <29.028822, 27.833004, 25.940325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293337, 27.673882, 25.685940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080711, 0.805146, -0.587559,
		0.745779, 0.439874, 0.500324,
		0.661286, -0.397807, -0.635964,
		29.491722, 27.554539, 25.495150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579834, 28.310524, 25.781490>,  <29.028822, 27.833004, 25.940325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579834, 28.310524, 25.781490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.582409, 28.079876, 25.454697>,  <29.583954, 27.941486, 25.258619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.582409, 28.079876, 25.454697>,  <29.579834, 28.310524, 25.781490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582409, 28.079876, 25.454697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018768, 0.816929, -0.576433,
		0.999803, -0.011622, 0.016082,
		0.006438, -0.576621, -0.816986,
		29.584341, 27.906889, 25.209600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943157, 28.692347, 25.267986>,  <29.579834, 28.310524, 25.781490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943157, 28.692347, 25.267986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.793491, 28.407013, 25.030952>,  <29.703691, 28.235813, 24.888733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.793491, 28.407013, 25.030952>,  <29.943157, 28.692347, 25.267986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793491, 28.407013, 25.030952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209186, 0.557608, -0.803315,
		0.903461, -0.424532, -0.059418,
		-0.374164, -0.713334, -0.592583,
		29.681242, 28.193012, 24.853178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383631, 28.726713, 24.680325>,  <29.943157, 28.692347, 25.267986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383631, 28.726713, 24.680325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.042715, 28.544762, 24.577030>,  <29.838165, 28.435591, 24.515053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.042715, 28.544762, 24.577030>,  <30.383631, 28.726713, 24.680325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042715, 28.544762, 24.577030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074728, 0.594519, -0.800602,
		0.517704, -0.663047, -0.540695,
		-0.852290, -0.454880, -0.258236,
		29.787027, 28.408297, 24.499559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431667, 28.620995, 24.027431>,  <30.383631, 28.726713, 24.680325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431667, 28.620995, 24.027431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.038198, 28.572384, 24.080528>,  <29.802116, 28.543219, 24.112387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.038198, 28.572384, 24.080528>,  <30.431667, 28.620995, 24.027431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038198, 28.572384, 24.080528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179737, 0.700827, -0.690316,
		-0.009139, -0.702904, -0.711226,
		-0.983672, -0.121525, 0.132742,
		29.743097, 28.535927, 24.120352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107533, 28.580093, 23.329041>,  <30.431667, 28.620995, 24.027431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107533, 28.580093, 23.329041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.801804, 28.659454, 23.574463>,  <29.618366, 28.707071, 23.721716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.801804, 28.659454, 23.574463>,  <30.107533, 28.580093, 23.329041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801804, 28.659454, 23.574463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405817, 0.591437, -0.696789,
		-0.501123, -0.781562, -0.371533,
		-0.764322, 0.198403, 0.613554,
		29.572508, 28.718975, 23.758530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537212, 28.474977, 22.957001>,  <30.107533, 28.580093, 23.329041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537212, 28.474977, 22.957001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.397999, 28.713524, 23.246338>,  <29.314470, 28.856651, 23.419939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.397999, 28.713524, 23.246338>,  <29.537212, 28.474977, 22.957001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397999, 28.713524, 23.246338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498802, 0.535501, -0.681495,
		-0.793769, -0.597987, 0.111095,
		-0.348033, 0.596364, 0.723341,
		29.293589, 28.892433, 23.463341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777773, 28.522018, 22.911676>,  <29.537212, 28.474977, 22.957001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777773, 28.522018, 22.911676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.893625, 28.851547, 23.106583>,  <28.963137, 29.049265, 23.223526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.893625, 28.851547, 23.106583>,  <28.777773, 28.522018, 22.911676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893625, 28.851547, 23.106583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625790, 0.548192, -0.554863,
		-0.724224, -0.144221, 0.674314,
		0.289631, 0.823824, 0.487266,
		28.980515, 29.098694, 23.252762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247240, 28.860239, 22.848108>,  <28.777773, 28.522018, 22.911676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247240, 28.860239, 22.848108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.519438, 29.138477, 22.940258>,  <28.682756, 29.305420, 22.995548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.519438, 29.138477, 22.940258>,  <28.247240, 28.860239, 22.848108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519438, 29.138477, 22.940258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388117, 0.608834, -0.691872,
		-0.621522, 0.381404, 0.684282,
		0.680497, 0.695595, 0.230375,
		28.723587, 29.347157, 23.009371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917631, 29.418884, 22.842384>,  <28.247240, 28.860239, 22.848108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917631, 29.418884, 22.842384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.297350, 29.538708, 22.804237>,  <28.525181, 29.610601, 22.781349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.297350, 29.538708, 22.804237>,  <27.917631, 29.418884, 22.842384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297350, 29.538708, 22.804237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293601, 0.736344, -0.609587,
		-0.112383, 0.606681, 0.786961,
		0.949299, 0.299559, -0.095370,
		28.582140, 29.628576, 22.775627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484692, 29.976751, 22.956913>,  <27.917631, 29.418884, 22.842384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484692, 29.976751, 22.956913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.196867, 29.878784, 22.696991>,  <27.024172, 29.820004, 22.541039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.196867, 29.878784, 22.696991>,  <27.484692, 29.976751, 22.956913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196867, 29.878784, 22.696991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308772, -0.725310, 0.615293,
		-0.622005, 0.643383, 0.446282,
		-0.719562, -0.244916, -0.649805,
		26.980999, 29.805309, 22.502048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867632, 29.998610, 23.334276>,  <27.484692, 29.976751, 22.956913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867632, 29.998610, 23.334276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.767307, 29.752205, 23.035580>,  <26.707111, 29.604362, 22.856361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.767307, 29.752205, 23.035580>,  <26.867632, 29.998610, 23.334276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767307, 29.752205, 23.035580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295937, -0.685677, 0.665033,
		-0.921691, 0.387787, -0.010323,
		-0.250813, -0.616010, -0.746743,
		26.692064, 29.567402, 22.811558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350332, 29.573057, 23.568655>,  <26.867632, 29.998610, 23.334276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350332, 29.573057, 23.568655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.459253, 29.360264, 23.247944>,  <26.524605, 29.232588, 23.055517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.459253, 29.360264, 23.247944>,  <26.350332, 29.573057, 23.568655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459253, 29.360264, 23.247944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216501, -0.845771, 0.487646,
		-0.937540, 0.040800, -0.345478,
		0.272299, -0.531983, -0.801777,
		26.540943, 29.200668, 23.007410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982531, 28.927700, 23.597073>,  <26.350332, 29.573057, 23.568655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982531, 28.927700, 23.597073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.274593, 28.840775, 23.337952>,  <26.449831, 28.788620, 23.182480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.274593, 28.840775, 23.337952>,  <25.982531, 28.927700, 23.597073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274593, 28.840775, 23.337952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160573, -0.866952, 0.471817,
		-0.664145, -0.448519, -0.598115,
		0.730156, -0.217314, -0.647802,
		26.493641, 28.775579, 23.143612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791021, 28.278709, 23.310732>,  <25.982531, 28.927700, 23.597073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791021, 28.278709, 23.310732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.183449, 28.291782, 23.234383>,  <26.418905, 28.299625, 23.188572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.183449, 28.291782, 23.234383>,  <25.791021, 28.278709, 23.310732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183449, 28.291782, 23.234383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101214, -0.926848, 0.361536,
		-0.165097, -0.374012, -0.912611,
		0.981070, 0.032680, -0.190875,
		26.477770, 28.301586, 23.177120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895943, 27.638245, 23.075527>,  <25.791021, 28.278709, 23.310732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895943, 27.638245, 23.075527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.237429, 27.781548, 23.226696>,  <26.442320, 27.867529, 23.317398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.237429, 27.781548, 23.226696>,  <25.895943, 27.638245, 23.075527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237429, 27.781548, 23.226696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181126, -0.884710, 0.429514,
		0.488226, -0.298231, -0.820179,
		0.853714, 0.358255, 0.377921,
		26.493544, 27.889025, 23.340073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278444, 27.065430, 23.063745>,  <25.895943, 27.638245, 23.075527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278444, 27.065430, 23.063745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.491362, 27.300808, 23.307186>,  <26.619112, 27.442036, 23.453251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.491362, 27.300808, 23.307186>,  <26.278444, 27.065430, 23.063745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491362, 27.300808, 23.307186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246569, -0.795508, 0.553508,
		0.809856, -0.144567, -0.568537,
		0.532294, 0.588445, 0.608601,
		26.651051, 27.477341, 23.489767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883587, 26.609751, 23.133673>,  <26.278444, 27.065430, 23.063745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883587, 26.609751, 23.133673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.900208, 26.871952, 23.435291>,  <26.910179, 27.029274, 23.616262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.900208, 26.871952, 23.435291>,  <26.883587, 26.609751, 23.133673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900208, 26.871952, 23.435291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174310, -0.747880, 0.640539,
		0.983814, 0.104824, -0.145336,
		0.041550, 0.655505, 0.754047,
		26.912672, 27.068604, 23.661505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505436, 26.424978, 23.578844>,  <26.883587, 26.609751, 23.133673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505436, 26.424978, 23.578844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.274166, 26.663380, 23.801731>,  <27.135405, 26.806421, 23.935463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.274166, 26.663380, 23.801731>,  <27.505436, 26.424978, 23.578844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274166, 26.663380, 23.801731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184334, -0.569863, 0.800798,
		0.794816, 0.565717, 0.219618,
		-0.578177, 0.596004, 0.557217,
		27.100714, 26.842180, 23.968897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878956, 26.520845, 24.170815>,  <27.505436, 26.424978, 23.578844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878956, 26.520845, 24.170815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.502501, 26.609138, 24.273216>,  <27.276628, 26.662115, 24.334658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.502501, 26.609138, 24.273216>,  <27.878956, 26.520845, 24.170815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502501, 26.609138, 24.273216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127183, -0.470467, 0.873204,
		0.313188, 0.854364, 0.414700,
		-0.941137, 0.220734, 0.256005,
		27.220160, 26.675358, 24.350018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914270, 26.634127, 24.875713>,  <27.878956, 26.520845, 24.170815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914270, 26.634127, 24.875713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.534391, 26.543129, 24.789619>,  <27.306465, 26.488531, 24.737963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.534391, 26.543129, 24.789619>,  <27.914270, 26.634127, 24.875713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534391, 26.543129, 24.789619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046288, -0.577754, 0.814897,
		-0.309736, 0.783867, 0.538160,
		-0.949695, -0.227493, -0.215234,
		27.249483, 26.474880, 24.725050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626431, 26.596638, 25.561050>,  <27.914270, 26.634127, 24.875713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626431, 26.596638, 25.561050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.399513, 26.411114, 25.288857>,  <27.263363, 26.299799, 25.125540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.399513, 26.411114, 25.288857>,  <27.626431, 26.596638, 25.561050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399513, 26.411114, 25.288857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247887, -0.691820, 0.678186,
		-0.785323, 0.553413, 0.277491,
		-0.567291, -0.463809, -0.680487,
		27.229326, 26.271971, 25.084711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998987, 26.502195, 25.903675>,  <27.626431, 26.596638, 25.561050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998987, 26.502195, 25.903675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.000803, 26.232616, 25.608170>,  <27.001892, 26.070869, 25.430866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.000803, 26.232616, 25.608170>,  <26.998987, 26.502195, 25.903675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000803, 26.232616, 25.608170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280639, -0.709941, 0.645929,
		-0.959803, 0.204396, -0.192357,
		0.004537, -0.673948, -0.738765,
		27.002165, 26.030432, 25.386539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319380, 26.182045, 26.031359>,  <26.998987, 26.502195, 25.903675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319380, 26.182045, 26.031359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.588488, 25.944443, 25.854931>,  <26.749952, 25.801882, 25.749075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.588488, 25.944443, 25.854931>,  <26.319380, 26.182045, 26.031359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588488, 25.944443, 25.854931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125009, -0.678849, 0.723558,
		-0.729219, -0.431647, -0.530962,
		0.672765, -0.594007, -0.441070,
		26.790318, 25.766241, 25.722610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005386, 25.505896, 26.052866>,  <26.319380, 26.182045, 26.031359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005386, 25.505896, 26.052866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.391094, 25.425961, 25.983299>,  <26.622519, 25.377998, 25.941559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.391094, 25.425961, 25.983299>,  <26.005386, 25.505896, 26.052866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391094, 25.425961, 25.983299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004793, -0.669537, 0.742763,
		-0.264875, -0.715391, -0.646573,
		0.964271, -0.199838, -0.173915,
		26.680376, 25.366009, 25.931126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091492, 24.795122, 26.060957>,  <26.005386, 25.505896, 26.052866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.091492, 24.795122, 26.060957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.472664, 24.903015, 26.116341>,  <26.701366, 24.967751, 26.149570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.472664, 24.903015, 26.116341>,  <26.091492, 24.795122, 26.060957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472664, 24.903015, 26.116341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110489, -0.734203, 0.669879,
		0.282346, -0.623049, -0.729446,
		0.952929, 0.269733, 0.138459,
		26.758543, 24.983934, 26.157879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450741, 24.202036, 26.164007>,  <26.091492, 24.795122, 26.060957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450741, 24.202036, 26.164007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.715227, 24.457787, 26.320972>,  <26.873919, 24.611237, 26.415152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.715227, 24.457787, 26.320972>,  <26.450741, 24.202036, 26.164007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715227, 24.457787, 26.320972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190008, -0.648760, 0.736891,
		0.725735, -0.412682, -0.550457,
		0.661216, 0.639378, 0.392415,
		26.913591, 24.649601, 26.438698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963818, 23.735273, 26.409233>,  <26.450741, 24.202036, 26.164007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963818, 23.735273, 26.409233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.038317, 24.079693, 26.598507>,  <27.083017, 24.286345, 26.712072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.038317, 24.079693, 26.598507>,  <26.963818, 23.735273, 26.409233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038317, 24.079693, 26.598507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230582, -0.506469, 0.830856,
		0.955062, -0.045638, -0.292872,
		0.186249, 0.861050, 0.473186,
		27.094191, 24.338007, 26.740463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.734371, 23.717783, 26.648798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.555857, 23.997643, 26.871983>,  <27.448748, 24.165558, 27.005894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.555857, 23.997643, 26.871983>,  <27.734371, 23.717783, 26.648798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555857, 23.997643, 26.871983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387808, -0.410701, 0.825185,
		0.806495, 0.584650, -0.088040,
		-0.446286, 0.699650, 0.557960,
		27.421970, 24.207537, 27.039371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248774, 24.084026, 27.169739>,  <27.734371, 23.717783, 26.648798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248774, 24.084026, 27.169739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.878649, 24.158669, 27.301785>,  <27.656574, 24.203453, 27.381012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.878649, 24.158669, 27.301785>,  <28.248774, 24.084026, 27.169739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878649, 24.158669, 27.301785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289853, -0.213255, 0.933010,
		0.244502, 0.959010, 0.143240,
		-0.925313, 0.186605, 0.330114,
		27.601055, 24.214649, 27.400818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282516, 24.441288, 27.741793>,  <28.248774, 24.084026, 27.169739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282516, 24.441288, 27.741793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.924063, 24.267754, 27.779160>,  <27.708990, 24.163633, 27.801580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.924063, 24.267754, 27.779160>,  <28.282516, 24.441288, 27.741793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924063, 24.267754, 27.779160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219944, -0.251353, 0.942574,
		-0.385440, 0.865222, 0.320666,
		-0.896136, -0.433835, 0.093419,
		27.655222, 24.137604, 27.807186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092911, 24.563505, 28.378223>,  <28.282516, 24.441288, 27.741793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092911, 24.563505, 28.378223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.820967, 24.289562, 28.273335>,  <27.657801, 24.125196, 28.210402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.820967, 24.289562, 28.273335>,  <28.092911, 24.563505, 28.378223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820967, 24.289562, 28.273335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077044, -0.288890, 0.954257,
		-0.729284, 0.668964, 0.143640,
		-0.679859, -0.684858, -0.262223,
		27.617008, 24.084105, 28.194668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529428, 24.556774, 28.915705>,  <28.092911, 24.563505, 28.378223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529428, 24.556774, 28.915705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.507986, 24.198071, 28.740002>,  <27.495121, 23.982847, 28.634581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.507986, 24.198071, 28.740002>,  <27.529428, 24.556774, 28.915705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507986, 24.198071, 28.740002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142435, -0.428526, 0.892232,
		-0.988351, 0.110395, -0.104758,
		-0.053606, -0.896760, -0.439258,
		27.491903, 23.929043, 28.608225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000305, 24.236727, 29.207535>,  <27.529428, 24.556774, 28.915705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000305, 24.236727, 29.207535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.230721, 23.947174, 29.055653>,  <27.368971, 23.773443, 28.964523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.230721, 23.947174, 29.055653>,  <27.000305, 24.236727, 29.207535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230721, 23.947174, 29.055653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000340, -0.464728, 0.885454,
		-0.817422, -0.509927, -0.267948,
		0.576039, -0.723880, -0.379705,
		27.403532, 23.730009, 28.941742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665991, 23.532032, 29.414068>,  <27.000305, 24.236727, 29.207535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665991, 23.532032, 29.414068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.038269, 23.421844, 29.317799>,  <27.261635, 23.355732, 29.260036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.038269, 23.421844, 29.317799>,  <26.665991, 23.532032, 29.414068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038269, 23.421844, 29.317799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000128, -0.657703, 0.753277,
		-0.365797, -0.701102, -0.612085,
		0.930694, -0.275468, -0.240675,
		27.317478, 23.339203, 29.245596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555471, 22.783413, 29.298183>,  <26.665991, 23.532032, 29.414068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555471, 22.783413, 29.298183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.950663, 22.831432, 29.337139>,  <27.187778, 22.860245, 29.360514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.950663, 22.831432, 29.337139>,  <26.555471, 22.783413, 29.298183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950663, 22.831432, 29.337139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026942, -0.754095, 0.656213,
		0.152219, -0.645701, -0.748264,
		0.987980, 0.120048, 0.097391,
		27.247057, 22.867447, 29.366356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923920, 22.159979, 29.214041>,  <26.555471, 22.783413, 29.298183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923920, 22.159979, 29.214041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.195833, 22.373158, 29.415581>,  <27.358980, 22.501064, 29.536505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.195833, 22.373158, 29.415581>,  <26.923920, 22.159979, 29.214041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195833, 22.373158, 29.415581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163481, -0.779817, 0.604284,
		0.714961, -0.328412, -0.617233,
		0.679783, 0.532945, 0.503850,
		27.399769, 22.533041, 29.566736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541178, 21.706289, 29.211462>,  <26.923920, 22.159979, 29.214041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541178, 21.706289, 29.211462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.538235, 21.971012, 29.511318>,  <27.536469, 22.129845, 29.691231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.538235, 21.971012, 29.511318>,  <27.541178, 21.706289, 29.211462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538235, 21.971012, 29.511318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261085, -0.722385, 0.640308,
		0.965288, 0.200430, -0.167473,
		-0.007357, 0.661806, 0.749639,
		27.536028, 22.169554, 29.736210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092102, 21.550974, 29.635681>,  <27.541178, 21.706289, 29.211462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092102, 21.550974, 29.635681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.877628, 21.775913, 29.887482>,  <27.748943, 21.910877, 30.038561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.877628, 21.775913, 29.887482>,  <28.092102, 21.550974, 29.635681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877628, 21.775913, 29.887482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262014, -0.598045, 0.757424,
		0.802405, 0.571057, 0.173319,
		-0.536185, 0.562349, 0.629499,
		27.716772, 21.944618, 30.076332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420620, 21.554625, 30.341253>,  <28.092102, 21.550974, 29.635681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420620, 21.554625, 30.341253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.065840, 21.701267, 30.453625>,  <27.852972, 21.789253, 30.521048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.065840, 21.701267, 30.453625>,  <28.420620, 21.554625, 30.341253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065840, 21.701267, 30.453625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016351, -0.582938, 0.812352,
		0.461578, 0.725108, 0.511042,
		-0.886949, 0.366608, 0.280928,
		27.799755, 21.811249, 30.537903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581450, 21.667189, 31.012302>,  <28.420620, 21.554625, 30.341253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581450, 21.667189, 31.012302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.189175, 21.651287, 30.935703>,  <27.953810, 21.641747, 30.889744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.189175, 21.651287, 30.935703>,  <28.581450, 21.667189, 31.012302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189175, 21.651287, 30.935703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131526, -0.590615, 0.796163,
		-0.144754, 0.805974, 0.573980,
		-0.980687, -0.039755, -0.191500,
		27.894968, 21.639360, 30.878254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262638, 21.851917, 31.611765>,  <28.581450, 21.667189, 31.012302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262638, 21.851917, 31.611765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.964008, 21.661736, 31.425617>,  <27.784830, 21.547626, 31.313929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.964008, 21.661736, 31.425617>,  <28.262638, 21.851917, 31.611765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964008, 21.661736, 31.425617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224660, -0.478234, 0.849011,
		-0.626222, 0.738400, 0.250221,
		-0.746574, -0.475455, -0.465370,
		27.740036, 21.519098, 31.286007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800226, 21.866379, 32.163486>,  <28.262638, 21.851917, 31.611765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800226, 21.866379, 32.163486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.653162, 21.590984, 31.913425>,  <27.564922, 21.425749, 31.763390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.653162, 21.590984, 31.913425>,  <27.800226, 21.866379, 32.163486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653162, 21.590984, 31.913425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335909, -0.528530, 0.779629,
		-0.867174, 0.496634, -0.036948,
		-0.367662, -0.688485, -0.625151,
		27.542864, 21.384439, 31.725880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176001, 21.837456, 32.354996>,  <27.800226, 21.866379, 32.163486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176001, 21.837456, 32.354996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.265211, 21.508636, 32.145424>,  <27.318737, 21.311346, 32.019680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.265211, 21.508636, 32.145424>,  <27.176001, 21.837456, 32.354996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265211, 21.508636, 32.145424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350304, -0.569147, 0.743881,
		-0.909696, 0.017631, -0.414900,
		0.223024, -0.822046, -0.523927,
		27.332119, 21.262022, 31.988245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612213, 21.420576, 32.405190>,  <27.176001, 21.837456, 32.354996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612213, 21.420576, 32.405190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.909237, 21.170120, 32.310062>,  <27.087450, 21.019848, 32.252987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.909237, 21.170120, 32.310062>,  <26.612213, 21.420576, 32.405190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909237, 21.170120, 32.310062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340502, -0.658667, 0.670982,
		-0.576772, -0.417264, -0.702299,
		0.742558, -0.626138, -0.237821,
		27.132004, 20.982279, 32.238716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346632, 20.664219, 32.390045>,  <26.612213, 21.420576, 32.405190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346632, 20.664219, 32.390045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.738594, 20.588715, 32.415833>,  <26.973772, 20.543413, 32.431305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.738594, 20.588715, 32.415833>,  <26.346632, 20.664219, 32.390045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738594, 20.588715, 32.415833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184502, -0.734937, 0.652554,
		-0.075795, -0.651335, -0.754995,
		0.979905, -0.188758, 0.064468,
		27.032566, 20.532087, 32.435173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370424, 19.974649, 32.471928>,  <26.346632, 20.664219, 32.390045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370424, 19.974649, 32.471928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.730436, 20.090652, 32.602058>,  <26.946444, 20.160254, 32.680138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.730436, 20.090652, 32.602058>,  <26.370424, 19.974649, 32.471928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730436, 20.090652, 32.602058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000171, -0.746705, 0.665155,
		0.435824, -0.598605, -0.672108,
		0.900032, 0.290006, 0.325330,
		27.000446, 20.177654, 32.699657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712414, 19.426260, 32.689526>,  <26.370424, 19.974649, 32.471928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712414, 19.426260, 32.689526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.947584, 19.684258, 32.884800>,  <27.088686, 19.839056, 33.001965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.947584, 19.684258, 32.884800>,  <26.712414, 19.426260, 32.689526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947584, 19.684258, 32.884800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079768, -0.646790, 0.758486,
		0.804971, -0.406993, -0.431715,
		0.587927, 0.644996, 0.488182,
		27.123962, 19.877756, 33.031254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514561, 19.207796, 32.770424>,  <26.712414, 19.426260, 32.689526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514561, 19.207796, 32.770424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.429832, 19.471275, 33.059216>,  <27.378996, 19.629362, 33.232491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.429832, 19.471275, 33.059216>,  <27.514561, 19.207796, 32.770424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429832, 19.471275, 33.059216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044561, -0.731462, 0.680425,
		0.976292, 0.176301, 0.125587,
		-0.211822, 0.658697, 0.721976,
		27.366285, 19.668884, 33.275810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038401, 19.048975, 33.270695>,  <27.514561, 19.207796, 32.770424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038401, 19.048975, 33.270695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.753387, 19.265099, 33.449745>,  <27.582380, 19.394773, 33.557175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.753387, 19.265099, 33.449745>,  <28.038401, 19.048975, 33.270695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753387, 19.265099, 33.449745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117140, -0.537407, 0.835148,
		0.691794, 0.647503, 0.319627,
		-0.712531, 0.540309, 0.447623,
		27.539629, 19.427191, 33.584034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334183, 19.397449, 33.840321>,  <28.038401, 19.048975, 33.270695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334183, 19.397449, 33.840321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.955658, 19.272968, 33.875290>,  <27.728542, 19.198280, 33.896271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.955658, 19.272968, 33.875290>,  <28.334183, 19.397449, 33.840321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955658, 19.272968, 33.875290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251097, -0.537387, 0.805087,
		-0.203566, 0.783817, 0.586679,
		-0.946314, -0.311202, 0.087420,
		27.671764, 19.179607, 33.901516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002394, 19.399555, 34.616154>,  <28.334183, 19.397449, 33.840321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002394, 19.399555, 34.616154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861925, 19.139889, 34.346260>,  <27.777643, 18.984089, 34.184326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861925, 19.139889, 34.346260>,  <28.002394, 19.399555, 34.616154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861925, 19.139889, 34.346260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173981, -0.753317, 0.634227,
		-0.920005, 0.105332, 0.377487,
		-0.351172, -0.649168, -0.674729,
		27.756575, 18.945139, 34.143841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158247, 19.889717, 35.131218>,  <28.002394, 19.399555, 34.616154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158247, 19.889717, 35.131218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.537495, 19.807755, 35.228447>,  <28.765043, 19.758577, 35.286785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.537495, 19.807755, 35.228447>,  <28.158247, 19.889717, 35.131218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537495, 19.807755, 35.228447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288980, 0.874183, -0.390249,
		-0.132528, 0.440246, 0.888043,
		0.948117, -0.204908, 0.243076,
		28.821930, 19.746283, 35.301369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394627, 20.534872, 35.273434>,  <28.158247, 19.889717, 35.131218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394627, 20.534872, 35.273434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.736582, 20.329922, 35.240852>,  <28.941755, 20.206951, 35.221302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.736582, 20.329922, 35.240852>,  <28.394627, 20.534872, 35.273434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736582, 20.329922, 35.240852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453436, 0.814193, -0.362609,
		0.252114, 0.273056, 0.928375,
		0.854889, -0.512377, -0.081456,
		28.993048, 20.176208, 35.216415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845678, 20.931150, 35.474697>,  <28.394627, 20.534872, 35.273434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845678, 20.931150, 35.474697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.046103, 20.668949, 35.248688>,  <29.166357, 20.511629, 35.113083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.046103, 20.668949, 35.248688>,  <28.845678, 20.931150, 35.474697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046103, 20.668949, 35.248688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568338, 0.741614, -0.356372,
		0.652633, -0.142561, 0.744142,
		0.501061, -0.655504, -0.565024,
		29.196421, 20.472298, 35.079182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590485, 21.015709, 35.545879>,  <28.845678, 20.931150, 35.474697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590485, 21.015709, 35.545879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.511593, 20.847847, 35.191483>,  <29.464258, 20.747129, 34.978844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.511593, 20.847847, 35.191483>,  <29.590485, 21.015709, 35.545879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511593, 20.847847, 35.191483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373307, 0.803513, -0.463690,
		0.906500, -0.422202, -0.001817,
		-0.197231, -0.419657, -0.885995,
		29.452423, 20.721951, 34.925682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122175, 21.354633, 35.075974>,  <29.590485, 21.015709, 35.545879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122175, 21.354633, 35.075974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.838982, 21.206787, 34.835262>,  <29.669065, 21.118080, 34.690834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.838982, 21.206787, 34.835262>,  <30.122175, 21.354633, 35.075974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838982, 21.206787, 34.835262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258713, 0.657133, -0.707986,
		0.657133, -0.656932, -0.369616,
		0.707986, 0.369616, 0.601781,
		29.626585, 21.095901, 34.654728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551893, 21.211832, 34.467770>,  <30.122175, 21.354633, 35.075974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551893, 21.211832, 34.467770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166979, 21.198177, 34.359818>,  <29.936029, 21.189985, 34.295044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166979, 21.198177, 34.359818>,  <30.551893, 21.211832, 34.467770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166979, 21.198177, 34.359818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223313, 0.467436, -0.855357,
		0.155352, -0.883368, -0.442185,
		-0.962287, -0.034135, -0.269885,
		29.878292, 21.187937, 34.278851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553587, 21.102915, 33.721153>,  <30.551893, 21.211832, 34.467770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553587, 21.102915, 33.721153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192389, 21.246300, 33.815899>,  <29.975670, 21.332331, 33.872746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192389, 21.246300, 33.815899>,  <30.553587, 21.102915, 33.721153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192389, 21.246300, 33.815899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052483, 0.455132, -0.888876,
		-0.426433, -0.815082, -0.392168,
		-0.902995, 0.358464, 0.236861,
		29.921490, 21.353838, 33.886959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159786, 21.022652, 33.071823>,  <30.553587, 21.102915, 33.721153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159786, 21.022652, 33.071823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.972046, 21.321114, 33.260700>,  <29.859402, 21.500191, 33.374027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.972046, 21.321114, 33.260700>,  <30.159786, 21.022652, 33.071823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972046, 21.321114, 33.260700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124140, 0.473683, -0.871902,
		-0.874242, -0.467846, -0.129696,
		-0.469351, 0.746153, 0.472192,
		29.831240, 21.544960, 33.402359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426458, 21.128368, 32.923859>,  <30.159786, 21.022652, 33.071823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426458, 21.128368, 32.923859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587528, 21.486401, 33.000473>,  <29.684170, 21.701220, 33.046440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587528, 21.486401, 33.000473>,  <29.426458, 21.128368, 32.923859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587528, 21.486401, 33.000473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395570, 0.358868, -0.845422,
		-0.825456, 0.264664, 0.498573,
		0.402674, 0.895079, 0.191537,
		29.708330, 21.754925, 33.057934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109324, 21.488426, 32.501724>,  <29.426458, 21.128368, 32.923859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109324, 21.488426, 32.501724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359301, 21.787045, 32.593040>,  <29.509287, 21.966215, 32.647831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359301, 21.787045, 32.593040>,  <29.109324, 21.488426, 32.501724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359301, 21.787045, 32.593040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133116, 0.390050, -0.911121,
		-0.769239, 0.539008, 0.343136,
		0.624941, 0.746547, 0.228291,
		29.546783, 22.011009, 32.661530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856642, 22.198418, 32.367188>,  <29.109324, 21.488426, 32.501724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856642, 22.198418, 32.367188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.254419, 22.234890, 32.346146>,  <29.493086, 22.256773, 32.333523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.254419, 22.234890, 32.346146>,  <28.856642, 22.198418, 32.367188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254419, 22.234890, 32.346146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088309, 0.450632, -0.888331,
		-0.057295, 0.888041, 0.456181,
		0.994444, 0.091182, -0.052603,
		29.552753, 22.262245, 32.330364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944706, 22.941835, 32.090565>,  <28.856642, 22.198418, 32.367188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944706, 22.941835, 32.090565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.275627, 22.725475, 32.029911>,  <29.474180, 22.595659, 31.993519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.275627, 22.725475, 32.029911>,  <28.944706, 22.941835, 32.090565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275627, 22.725475, 32.029911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084314, 0.386438, -0.918453,
		0.555391, 0.747055, 0.365307,
		0.827304, -0.540901, -0.151637,
		29.523819, 22.563206, 31.984421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342312, 23.368305, 31.707888>,  <28.944706, 22.941835, 32.090565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342312, 23.368305, 31.707888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.510157, 23.020176, 31.604767>,  <29.610863, 22.811298, 31.542894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.510157, 23.020176, 31.604767>,  <29.342312, 23.368305, 31.707888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510157, 23.020176, 31.604767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125260, 0.336817, -0.933201,
		0.899019, 0.359290, 0.250350,
		0.419612, -0.870325, -0.257801,
		29.636040, 22.759079, 31.527426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061630, 23.501057, 31.448336>,  <29.342312, 23.368305, 31.707888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061630, 23.501057, 31.448336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.951111, 23.146198, 31.300480>,  <29.884800, 22.933283, 31.211767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.951111, 23.146198, 31.300480>,  <30.061630, 23.501057, 31.448336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951111, 23.146198, 31.300480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295076, 0.287730, -0.911121,
		0.914652, -0.360814, 0.182275,
		-0.276299, -0.887144, -0.369640,
		29.868221, 22.880054, 31.189589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658602, 23.319201, 30.958851>,  <30.061630, 23.501057, 31.448336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658602, 23.319201, 30.958851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335264, 23.097622, 30.879124>,  <30.141262, 22.964676, 30.831287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335264, 23.097622, 30.879124>,  <30.658602, 23.319201, 30.958851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335264, 23.097622, 30.879124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147459, 0.137261, -0.979497,
		0.569946, -0.821160, -0.029270,
		-0.808342, -0.553945, -0.199319,
		30.092762, 22.931438, 30.819328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801241, 23.021036, 30.335718>,  <30.658602, 23.319201, 30.958851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801241, 23.021036, 30.335718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.413439, 22.923363, 30.344086>,  <30.180758, 22.864758, 30.349106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.413439, 22.923363, 30.344086>,  <30.801241, 23.021036, 30.335718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413439, 22.923363, 30.344086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070041, 0.194273, -0.978444,
		0.234865, -0.950067, -0.205451,
		-0.969501, -0.244192, 0.020916,
		30.122587, 22.850107, 30.350361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669201, 22.559786, 29.811979>,  <30.801241, 23.021036, 30.335718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669201, 22.559786, 29.811979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.313116, 22.730885, 29.874653>,  <30.099464, 22.833544, 29.912258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.313116, 22.730885, 29.874653>,  <30.669201, 22.559786, 29.811979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313116, 22.730885, 29.874653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006136, 0.355182, -0.934777,
		-0.455502, -0.831190, -0.318813,
		-0.890214, 0.427749, 0.156686,
		30.046051, 22.859209, 29.921659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413492, 22.542456, 29.160421>,  <30.669201, 22.559786, 29.811979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413492, 22.542456, 29.160421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209183, 22.827858, 29.352261>,  <30.086597, 22.999100, 29.467365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209183, 22.827858, 29.352261>,  <30.413492, 22.542456, 29.160421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209183, 22.827858, 29.352261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024275, 0.569606, -0.821560,
		-0.859371, -0.407991, -0.308261,
		-0.510776, 0.713508, 0.479599,
		30.055950, 23.041910, 29.496140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853607, 22.709867, 28.744045>,  <30.413492, 22.542456, 29.160421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853607, 22.709867, 28.744045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.919872, 23.025040, 28.981270>,  <29.959631, 23.214142, 29.123606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.919872, 23.025040, 28.981270>,  <29.853607, 22.709867, 28.744045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919872, 23.025040, 28.981270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230185, 0.615655, -0.753646,
		-0.958942, -0.011662, 0.283362,
		0.165664, 0.787929, 0.593062,
		29.969572, 23.261419, 29.159189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226046, 23.114042, 28.689150>,  <29.853607, 22.709867, 28.744045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226046, 23.114042, 28.689150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.505203, 23.374489, 28.808475>,  <29.672697, 23.530758, 28.880072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.505203, 23.374489, 28.808475>,  <29.226046, 23.114042, 28.689150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505203, 23.374489, 28.808475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290643, 0.638159, -0.712937,
		-0.654578, 0.410851, 0.634609,
		0.697893, 0.651118, 0.298314,
		29.714571, 23.569824, 28.897970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.109383, 34.941994, 17.833588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.403156, 34.707527, 17.970417>,  <26.579420, 34.566849, 18.052515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.403156, 34.707527, 17.970417>,  <26.109383, 34.941994, 17.833588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403156, 34.707527, 17.970417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233940, 0.254487, 0.938354,
		-0.637085, -0.769185, 0.049776,
		0.734435, -0.586166, 0.342073,
		26.623487, 34.531677, 18.073038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912077, 34.458557, 18.315290>,  <26.109383, 34.941994, 17.833588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912077, 34.458557, 18.315290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.271126, 34.617867, 18.390816>,  <26.486555, 34.713451, 18.436131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.271126, 34.617867, 18.390816>,  <25.912077, 34.458557, 18.315290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271126, 34.617867, 18.390816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320219, 0.294905, 0.900273,
		0.302868, -0.868570, 0.392247,
		0.897625, 0.398268, 0.188815,
		26.540413, 34.737350, 18.447460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995514, 34.247509, 19.032040>,  <25.912077, 34.458557, 18.315290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995514, 34.247509, 19.032040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.224977, 34.562531, 18.941994>,  <26.362656, 34.751541, 18.887966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.224977, 34.562531, 18.941994>,  <25.995514, 34.247509, 19.032040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224977, 34.562531, 18.941994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053599, 0.310338, 0.949114,
		0.817338, -0.532403, 0.220240,
		0.573660, 0.787551, -0.225115,
		26.397076, 34.798798, 18.874458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358818, 34.424965, 19.592497>,  <25.995514, 34.247509, 19.032040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358818, 34.424965, 19.592497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.426607, 34.768753, 19.399586>,  <26.467281, 34.975025, 19.283840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.426607, 34.768753, 19.399586>,  <26.358818, 34.424965, 19.592497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426607, 34.768753, 19.399586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195862, 0.508967, 0.838207,
		0.965876, -0.047594, 0.254594,
		0.169473, 0.859469, -0.482277,
		26.477449, 35.026592, 19.254902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667080, 34.832596, 20.109648>,  <26.358818, 34.424965, 19.592497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667080, 34.832596, 20.109648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.536606, 35.090626, 19.833248>,  <26.458321, 35.245445, 19.667408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.536606, 35.090626, 19.833248>,  <26.667080, 34.832596, 20.109648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536606, 35.090626, 19.833248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199174, 0.667670, 0.717319,
		0.924085, 0.371607, -0.089301,
		-0.326185, 0.645077, -0.690999,
		26.438751, 35.284149, 19.625948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887360, 35.452641, 20.208431>,  <26.667080, 34.832596, 20.109648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887360, 35.452641, 20.208431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.560230, 35.546566, 19.998276>,  <26.363953, 35.602921, 19.872183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.560230, 35.546566, 19.998276>,  <26.887360, 35.452641, 20.208431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560230, 35.546566, 19.998276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284657, 0.628393, 0.723943,
		0.500138, 0.741612, -0.447073,
		-0.817822, 0.234809, -0.525388,
		26.314884, 35.617008, 19.840660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815662, 36.101555, 20.457653>,  <26.887360, 35.452641, 20.208431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815662, 36.101555, 20.457653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.468504, 36.015511, 20.278553>,  <26.260208, 35.963882, 20.171093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.468504, 36.015511, 20.278553>,  <26.815662, 36.101555, 20.457653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468504, 36.015511, 20.278553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489193, 0.526698, 0.695183,
		0.086288, 0.822385, -0.562351,
		-0.867897, -0.215112, -0.447752,
		26.208136, 35.950977, 20.144228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431822, 36.666542, 20.531015>,  <26.815662, 36.101555, 20.457653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431822, 36.666542, 20.531015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.150486, 36.392262, 20.456043>,  <25.981684, 36.227695, 20.411060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.150486, 36.392262, 20.456043>,  <26.431822, 36.666542, 20.531015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150486, 36.392262, 20.456043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554255, 0.363897, 0.748586,
		-0.445097, 0.630396, -0.635995,
		-0.703342, -0.685697, -0.187431,
		25.939484, 36.186554, 20.399815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716125, 37.047615, 20.438393>,  <26.431822, 36.666542, 20.531015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716125, 37.047615, 20.438393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.623724, 36.676628, 20.555992>,  <25.568283, 36.454037, 20.626551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.623724, 36.676628, 20.555992>,  <25.716125, 37.047615, 20.438393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623724, 36.676628, 20.555992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650928, 0.371909, 0.661798,
		-0.723139, -0.038492, -0.689630,
		-0.231006, -0.927471, 0.293997,
		25.554422, 36.398388, 20.644192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016897, 37.066135, 20.562208>,  <25.716125, 37.047615, 20.438393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016897, 37.066135, 20.562208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.163626, 36.749722, 20.758049>,  <25.251663, 36.559875, 20.875553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.163626, 36.749722, 20.758049>,  <25.016897, 37.066135, 20.562208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163626, 36.749722, 20.758049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606469, 0.195745, 0.770636,
		-0.705435, -0.579614, -0.407933,
		0.366820, -0.791032, 0.489603,
		25.273672, 36.512413, 20.904930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.466805, 36.790989, 20.875929>,  <25.016897, 37.066135, 20.562208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.466805, 36.790989, 20.875929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.739183, 36.593838, 21.092590>,  <24.902611, 36.475548, 21.222588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.739183, 36.593838, 21.092590>,  <24.466805, 36.790989, 20.875929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.739183, 36.593838, 21.092590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590226, 0.068486, 0.804327,
		-0.433528, -0.867401, -0.244273,
		0.680945, -0.492875, 0.541653,
		24.943466, 36.445976, 21.255087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.046783, 36.409370, 21.260719>,  <24.466805, 36.790989, 20.875929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.046783, 36.409370, 21.260719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.386879, 36.362988, 21.466106>,  <24.590937, 36.335159, 21.589338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.386879, 36.362988, 21.466106>,  <24.046783, 36.409370, 21.260719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.386879, 36.362988, 21.466106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525163, -0.120158, 0.842476,
		-0.035990, -0.985960, -0.163057,
		0.850240, -0.115952, 0.513465,
		24.641951, 36.328201, 21.620146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.911272, 35.779018, 21.708582>,  <24.046783, 36.409370, 21.260719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.911272, 35.779018, 21.708582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.208340, 36.009598, 21.844902>,  <24.386580, 36.147945, 21.926695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.208340, 36.009598, 21.844902>,  <23.911272, 35.779018, 21.708582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.208340, 36.009598, 21.844902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356031, -0.091143, 0.930019,
		0.567174, -0.812031, 0.137547,
		0.742668, 0.576453, 0.340802,
		24.431141, 36.182533, 21.947144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.268980, 35.337925, 22.211590>,  <23.911272, 35.779018, 21.708582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.268980, 35.337925, 22.211590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.310429, 35.726978, 22.294777>,  <24.335297, 35.960411, 22.344690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.310429, 35.726978, 22.294777>,  <24.268980, 35.337925, 22.211590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.310429, 35.726978, 22.294777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430743, -0.144586, 0.890817,
		0.896506, -0.181887, 0.403972,
		0.103620, 0.972632, 0.207969,
		24.341515, 36.018768, 22.357168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.434410, 35.401169, 22.883291>,  <24.268980, 35.337925, 22.211590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.434410, 35.401169, 22.883291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.271236, 35.752022, 22.781918>,  <24.173332, 35.962532, 22.721094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.271236, 35.752022, 22.781918>,  <24.434410, 35.401169, 22.883291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.271236, 35.752022, 22.781918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623174, -0.064628, 0.779408,
		0.667264, 0.475883, 0.572970,
		-0.407936, 0.877131, -0.253434,
		24.148855, 36.015160, 22.705887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.281759, 35.640636, 23.469381>,  <24.434410, 35.401169, 22.883291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.281759, 35.640636, 23.469381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.051298, 35.875191, 23.241627>,  <23.913021, 36.015923, 23.104973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.051298, 35.875191, 23.241627>,  <24.281759, 35.640636, 23.469381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.051298, 35.875191, 23.241627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747014, -0.095074, 0.657975,
		0.331693, 0.804433, 0.492816,
		-0.576150, 0.586386, -0.569388,
		23.878452, 36.051105, 23.070810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.901329, 36.122265, 23.957579>,  <24.281759, 35.640636, 23.469381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.901329, 36.122265, 23.957579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.688215, 36.108223, 23.619370>,  <23.560347, 36.099796, 23.416445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.688215, 36.108223, 23.619370>,  <23.901329, 36.122265, 23.957579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.688215, 36.108223, 23.619370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837544, -0.121070, 0.532787,
		-0.121070, 0.992023, 0.035104,
		-0.532787, -0.035104, -0.845521,
		23.528379, 36.097691, 23.365713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.319595, 36.487377, 24.155209>,  <23.901329, 36.122265, 23.957579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.319595, 36.487377, 24.155209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.219318, 36.300316, 23.816162>,  <23.159151, 36.188080, 23.612734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.219318, 36.300316, 23.816162>,  <23.319595, 36.487377, 24.155209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.219318, 36.300316, 23.816162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908118, -0.189723, 0.373266,
		-0.335372, 0.863309, -0.377124,
		-0.250695, -0.467656, -0.847615,
		23.144110, 36.160019, 23.561878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.686937, 36.772305, 23.948187>,  <23.319595, 36.487377, 24.155209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.686937, 36.772305, 23.948187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.690626, 36.424252, 23.751095>,  <22.692841, 36.215420, 23.632839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.690626, 36.424252, 23.751095>,  <22.686937, 36.772305, 23.948187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.690626, 36.424252, 23.751095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937580, -0.178837, 0.298265,
		-0.347649, 0.459224, -0.817468,
		0.009223, -0.870133, -0.492731,
		22.693394, 36.163212, 23.603275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.038254, 36.776962, 23.594810>,  <22.686937, 36.772305, 23.948187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.038254, 36.776962, 23.594810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.186533, 36.413460, 23.671486>,  <22.275501, 36.195358, 23.717491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.186533, 36.413460, 23.671486>,  <22.038254, 36.776962, 23.594810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.186533, 36.413460, 23.671486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891113, -0.289856, 0.349144,
		-0.261725, -0.300243, -0.917254,
		0.370699, -0.908756, 0.191688,
		22.297743, 36.140835, 23.728992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.513258, 36.342087, 23.429354>,  <22.038254, 36.776962, 23.594810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.513258, 36.342087, 23.429354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.731266, 36.084049, 23.643570>,  <21.862070, 35.929226, 23.772100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.731266, 36.084049, 23.643570>,  <21.513258, 36.342087, 23.429354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.731266, 36.084049, 23.643570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836369, -0.373618, 0.401119,
		-0.058673, -0.666527, -0.743169,
		0.545018, -0.645098, 0.535541,
		21.894772, 35.890518, 23.804232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.837145, 36.038406, 23.125383>,  <21.513258, 36.342087, 23.429354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.837145, 36.038406, 23.125383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.665186, 36.372421, 22.988033>,  <20.562012, 36.572830, 22.905624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.665186, 36.372421, 22.988033>,  <20.837145, 36.038406, 23.125383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.665186, 36.372421, 22.988033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324940, -0.211736, -0.921727,
		-0.842380, -0.507823, -0.180312,
		-0.429895, 0.835035, -0.343374,
		20.536217, 36.622932, 22.885021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.474379, 35.921726, 22.480829>,  <20.837145, 36.038406, 23.125383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.474379, 35.921726, 22.480829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.538504, 36.316376, 22.469025>,  <20.576979, 36.553165, 22.461943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.538504, 36.316376, 22.469025>,  <20.474379, 35.921726, 22.480829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.538504, 36.316376, 22.469025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339321, -0.083160, -0.936988,
		-0.926910, 0.140198, -0.348114,
		0.160313, 0.986625, -0.029509,
		20.586597, 36.612362, 22.460173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.438486, 36.097317, 21.743753>,  <20.474379, 35.921726, 22.480829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.438486, 36.097317, 21.743753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.608078, 36.425148, 21.897915>,  <20.709833, 36.621845, 21.990412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.608078, 36.425148, 21.897915>,  <20.438486, 36.097317, 21.743753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.608078, 36.425148, 21.897915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434027, 0.189627, -0.880717,
		-0.794897, 0.540682, -0.275320,
		0.423980, 0.819576, 0.385404,
		20.735271, 36.671021, 22.013536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.381676, 36.566330, 21.206573>,  <20.438486, 36.097317, 21.743753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.381676, 36.566330, 21.206573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.670397, 36.681793, 21.458183>,  <20.843630, 36.751072, 21.609150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.670397, 36.681793, 21.458183>,  <20.381676, 36.566330, 21.206573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.670397, 36.681793, 21.458183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594183, 0.207581, -0.777082,
		-0.354888, 0.934657, -0.021685,
		0.721804, 0.288662, 0.629026,
		20.886938, 36.768391, 21.646891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.741482, 37.068447, 20.721235>,  <20.381676, 36.566330, 21.206573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.741482, 37.068447, 20.721235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.994989, 37.042198, 21.029530>,  <21.147093, 37.026451, 21.214506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.994989, 37.042198, 21.029530>,  <20.741482, 37.068447, 20.721235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.994989, 37.042198, 21.029530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769835, 0.150696, -0.620198,
		-0.075450, 0.986400, 0.146023,
		0.633768, -0.065620, 0.770735,
		21.185120, 37.022511, 21.260750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.187485, 37.750523, 20.858961>,  <20.741482, 37.068447, 20.721235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.187485, 37.750523, 20.858961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.357954, 37.397652, 20.939095>,  <21.460236, 37.185928, 20.987175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.357954, 37.397652, 20.939095>,  <21.187485, 37.750523, 20.858961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.357954, 37.397652, 20.939095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703671, 0.184095, -0.686262,
		0.568525, 0.433438, 0.699221,
		0.426175, -0.882179, 0.200335,
		21.485807, 37.132999, 20.999195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.806770, 37.866642, 20.804272>,  <21.187485, 37.750523, 20.858961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.806770, 37.866642, 20.804272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.801342, 37.467369, 20.780796>,  <21.798084, 37.227806, 20.766710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.801342, 37.467369, 20.780796>,  <21.806770, 37.866642, 20.804272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.801342, 37.467369, 20.780796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748826, 0.028751, -0.662142,
		0.662627, -0.052936, 0.747076,
		-0.013571, -0.998184, -0.058691,
		21.797270, 37.167915, 20.763189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.472410, 37.722305, 20.876282>,  <21.806770, 37.866642, 20.804272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.472410, 37.722305, 20.876282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.321424, 37.391186, 20.710258>,  <22.230833, 37.192516, 20.610645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.321424, 37.391186, 20.710258>,  <22.472410, 37.722305, 20.876282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.321424, 37.391186, 20.710258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805825, -0.072791, -0.587662,
		0.456253, -0.556286, 0.694535,
		-0.377464, -0.827797, -0.415058,
		22.208185, 37.142845, 20.585741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.023434, 37.263527, 20.821220>,  <22.472410, 37.722305, 20.876282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.023434, 37.263527, 20.821220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.757336, 37.125031, 20.556625>,  <22.597677, 37.041935, 20.397869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.757336, 37.125031, 20.556625>,  <23.023434, 37.263527, 20.821220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.757336, 37.125031, 20.556625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743998, -0.233167, -0.626179,
		0.062570, -0.908709, 0.412714,
		-0.665246, -0.346239, -0.661488,
		22.557762, 37.021160, 20.358179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.259239, 36.665756, 20.557484>,  <23.023434, 37.263527, 20.821220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.259239, 36.665756, 20.557484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.000475, 36.732643, 20.259880>,  <22.845217, 36.772774, 20.081318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.000475, 36.732643, 20.259880>,  <23.259239, 36.665756, 20.557484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.000475, 36.732643, 20.259880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673658, -0.331883, -0.660333,
		-0.357342, -0.928381, 0.102051,
		-0.646910, 0.167218, -0.744007,
		22.806402, 36.782810, 20.036678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.328123, 36.066719, 20.134335>,  <23.259239, 36.665756, 20.557484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.328123, 36.066719, 20.134335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.165993, 36.363163, 19.920242>,  <23.068714, 36.541031, 19.791788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.165993, 36.363163, 19.920242>,  <23.328123, 36.066719, 20.134335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.165993, 36.363163, 19.920242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693571, -0.132116, -0.708170,
		-0.595543, -0.658258, -0.460461,
		-0.405324, 0.741108, -0.535230,
		23.044395, 36.585495, 19.759674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.461695, 35.805370, 19.537992>,  <23.328123, 36.066719, 20.134335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.461695, 35.805370, 19.537992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.349743, 36.176743, 19.440269>,  <23.282572, 36.399567, 19.381636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.349743, 36.176743, 19.440269>,  <23.461695, 35.805370, 19.537992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.349743, 36.176743, 19.440269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582695, -0.037964, -0.811804,
		-0.762978, -0.369564, -0.530366,
		-0.279879, 0.928430, -0.244308,
		23.265779, 36.455273, 19.366978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.244732, 35.858162, 18.876232>,  <23.461695, 35.805370, 19.537992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.244732, 35.858162, 18.876232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.351208, 36.240211, 18.928211>,  <23.415092, 36.469440, 18.959398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.351208, 36.240211, 18.928211>,  <23.244732, 35.858162, 18.876232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.351208, 36.240211, 18.928211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579001, -0.050653, -0.813752,
		-0.770650, 0.291850, -0.566500,
		0.266188, 0.955122, 0.129946,
		23.431065, 36.526749, 18.967196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.024841, 36.189945, 18.306528>,  <23.244732, 35.858162, 18.876232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.024841, 36.189945, 18.306528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.316412, 36.407345, 18.473034>,  <23.491354, 36.537785, 18.572937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.316412, 36.407345, 18.473034>,  <23.024841, 36.189945, 18.306528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.316412, 36.407345, 18.473034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495200, 0.001245, -0.868778,
		-0.472698, 0.839409, -0.268233,
		0.728926, 0.543499, 0.416264,
		23.535089, 36.570396, 18.597914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.130991, 36.807514, 17.807224>,  <23.024841, 36.189945, 18.306528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.130991, 36.807514, 17.807224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.468449, 36.788025, 18.021099>,  <23.670923, 36.776329, 18.149424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.468449, 36.788025, 18.021099>,  <23.130991, 36.807514, 17.807224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.468449, 36.788025, 18.021099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528137, -0.103907, -0.842778,
		0.096624, 0.993393, -0.061927,
		0.843644, -0.048727, 0.534687,
		23.721542, 36.773407, 18.181505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.639324, 37.308842, 17.497364>,  <23.130991, 36.807514, 17.807224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.639324, 37.308842, 17.497364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.841782, 37.058132, 17.734337>,  <23.963255, 36.907707, 17.876520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.841782, 37.058132, 17.734337>,  <23.639324, 37.308842, 17.497364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.841782, 37.058132, 17.734337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670923, -0.145480, -0.727116,
		0.541925, 0.765499, 0.346884,
		0.506142, -0.626775, 0.592431,
		23.993624, 36.870098, 17.912066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.329813, 37.480968, 17.561712>,  <23.639324, 37.308842, 17.497364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.329813, 37.480968, 17.561712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.395626, 37.105595, 17.683216>,  <24.435114, 36.880371, 17.756119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.395626, 37.105595, 17.683216>,  <24.329813, 37.480968, 17.561712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.395626, 37.105595, 17.683216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698316, -0.106672, -0.707797,
		0.696623, 0.328577, 0.637773,
		0.164533, -0.938434, 0.303760,
		24.444986, 36.824066, 17.774343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.011616, 37.332939, 17.746479>,  <24.329813, 37.480968, 17.561712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.011616, 37.332939, 17.746479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.859694, 36.974640, 17.654060>,  <24.768539, 36.759659, 17.598608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.859694, 36.974640, 17.654060>,  <25.011616, 37.332939, 17.746479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859694, 36.974640, 17.654060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732433, -0.138621, -0.666578,
		0.565058, -0.422397, 0.708725,
		-0.379805, -0.895748, -0.231048,
		24.745752, 36.705914, 17.584745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.588549, 36.816654, 17.727531>,  <25.011616, 37.332939, 17.746479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.588549, 36.816654, 17.727531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.294777, 36.659302, 17.506313>,  <25.118513, 36.564888, 17.373583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.294777, 36.659302, 17.506313>,  <25.588549, 36.816654, 17.727531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.294777, 36.659302, 17.506313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667191, -0.269163, -0.694556,
		0.124368, -0.879091, 0.460144,
		-0.734431, -0.393384, -0.553046,
		25.074448, 36.541286, 17.340399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828665, 36.038750, 17.516491>,  <25.588549, 36.816654, 17.727531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828665, 36.038750, 17.516491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.556837, 36.130013, 17.237598>,  <25.393740, 36.184769, 17.070263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.556837, 36.130013, 17.237598>,  <25.828665, 36.038750, 17.516491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556837, 36.130013, 17.237598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470378, -0.593822, -0.652778,
		-0.562965, -0.771570, 0.296225,
		-0.679569, 0.228154, -0.697231,
		25.352966, 36.198460, 17.028429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792162, 35.393658, 17.204746>,  <25.828665, 36.038750, 17.516491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792162, 35.393658, 17.204746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.665274, 35.672222, 16.947258>,  <25.589142, 35.839363, 16.792765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.665274, 35.672222, 16.947258>,  <25.792162, 35.393658, 17.204746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665274, 35.672222, 16.947258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365865, -0.536363, -0.760564,
		-0.874937, -0.476781, -0.084649,
		-0.317219, 0.696415, -0.643721,
		25.570108, 35.881145, 16.754141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.430494, 25.544388, 24.359306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691772, 25.774620, 24.556095>,  <26.848539, 25.912760, 24.674170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691772, 25.774620, 24.556095>,  <26.430494, 25.544388, 24.359306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691772, 25.774620, 24.556095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126386, 0.723501, -0.678655,
		-0.746565, 0.381117, 0.545335,
		0.653198, 0.575583, 0.491973,
		26.887732, 25.947294, 24.703688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013575, 26.083557, 24.538315>,  <26.430494, 25.544388, 24.359306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013575, 26.083557, 24.538315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393585, 26.203815, 24.571930>,  <26.621592, 26.275970, 24.592098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393585, 26.203815, 24.571930>,  <26.013575, 26.083557, 24.538315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393585, 26.203815, 24.571930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187220, 0.764146, -0.617276,
		-0.249797, 0.570695, 0.782246,
		0.950026, 0.300646, 0.084036,
		26.678593, 26.294008, 24.597141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954264, 26.822470, 24.616678>,  <26.013575, 26.083557, 24.538315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954264, 26.822470, 24.616678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344070, 26.782291, 24.536449>,  <26.577953, 26.758184, 24.488312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344070, 26.782291, 24.536449>,  <25.954264, 26.822470, 24.616678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344070, 26.782291, 24.536449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047086, 0.782627, -0.620707,
		0.219322, 0.614333, 0.757953,
		0.974516, -0.100446, -0.200573,
		26.636425, 26.752157, 24.476278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204206, 27.543434, 24.618687>,  <25.954264, 26.822470, 24.616678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204206, 27.543434, 24.618687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499035, 27.331680, 24.450649>,  <26.675932, 27.204628, 24.349827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499035, 27.331680, 24.450649>,  <26.204206, 27.543434, 24.618687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499035, 27.331680, 24.450649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132399, 0.722676, -0.678388,
		0.662717, 0.444402, 0.602754,
		0.737073, -0.529383, -0.420091,
		26.720158, 27.172865, 24.324621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862080, 27.931494, 24.624754>,  <26.204206, 27.543434, 24.618687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862080, 27.931494, 24.624754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885822, 27.674500, 24.319157>,  <26.900068, 27.520304, 24.135798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885822, 27.674500, 24.319157>,  <26.862080, 27.931494, 24.624754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885822, 27.674500, 24.319157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165900, 0.761051, -0.627120,
		0.984355, -0.089524, 0.151761,
		0.059356, -0.642486, -0.763996,
		26.903629, 27.481754, 24.089958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406672, 28.142025, 24.284195>,  <26.862080, 27.931494, 24.624754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406672, 28.142025, 24.284195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188261, 27.933167, 24.022137>,  <27.057215, 27.807852, 23.864901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188261, 27.933167, 24.022137>,  <27.406672, 28.142025, 24.284195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188261, 27.933167, 24.022137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023914, 0.771982, -0.635194,
		0.837427, -0.362500, -0.409036,
		-0.546026, -0.522147, -0.655148,
		27.024452, 27.776522, 23.825592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718054, 28.382002, 23.738928>,  <27.406672, 28.142025, 24.284195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718054, 28.382002, 23.738928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390623, 28.204163, 23.593456>,  <27.194164, 28.097460, 23.506172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390623, 28.204163, 23.593456>,  <27.718054, 28.382002, 23.738928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390623, 28.204163, 23.593456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034471, 0.670038, -0.741526,
		0.573357, -0.594462, -0.563805,
		-0.818580, -0.444595, -0.363679,
		27.145050, 28.070784, 23.484352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750713, 28.260906, 23.028822>,  <27.718054, 28.382002, 23.738928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750713, 28.260906, 23.028822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357748, 28.288540, 23.098209>,  <27.121969, 28.305120, 23.139841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357748, 28.288540, 23.098209>,  <27.750713, 28.260906, 23.028822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357748, 28.288540, 23.098209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062002, 0.755618, -0.652072,
		-0.176125, -0.651359, -0.738046,
		-0.982413, 0.069085, 0.173469,
		27.063025, 28.309265, 23.150249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506613, 28.574842, 22.439550>,  <27.750713, 28.260906, 23.028822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506613, 28.574842, 22.439550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184387, 28.638599, 22.667816>,  <26.991053, 28.676853, 22.804775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184387, 28.638599, 22.667816>,  <27.506613, 28.574842, 22.439550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184387, 28.638599, 22.667816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280851, 0.745343, -0.604637,
		-0.521717, -0.647346, -0.555656,
		-0.805564, 0.159393, 0.570666,
		26.942719, 28.686417, 22.839016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915524, 28.579268, 21.987368>,  <27.506613, 28.574842, 22.439550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915524, 28.579268, 21.987368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785696, 28.775742, 22.310699>,  <26.707800, 28.893625, 22.504698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785696, 28.775742, 22.310699>,  <26.915524, 28.579268, 21.987368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785696, 28.775742, 22.310699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170193, 0.810318, -0.560731,
		-0.930425, -0.319566, -0.179406,
		-0.324566, 0.491184, 0.808328,
		26.688326, 28.923098, 22.553198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240856, 28.916563, 21.819855>,  <26.915524, 28.579268, 21.987368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240856, 28.916563, 21.819855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409986, 29.123707, 22.117321>,  <26.511465, 29.247993, 22.295801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409986, 29.123707, 22.117321>,  <26.240856, 28.916563, 21.819855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409986, 29.123707, 22.117321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009168, 0.823036, -0.567914,
		-0.906165, 0.233311, 0.352749,
		0.422826, 0.517858, 0.743668,
		26.536835, 29.279064, 22.340422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882446, 29.525141, 21.858082>,  <26.240856, 28.916563, 21.819855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882446, 29.525141, 21.858082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242006, 29.608948, 22.012005>,  <26.457743, 29.659231, 22.104359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242006, 29.608948, 22.012005>,  <25.882446, 29.525141, 21.858082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242006, 29.608948, 22.012005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051337, 0.821845, -0.567393,
		-0.435132, 0.529786, 0.728002,
		0.898902, 0.209518, 0.384809,
		26.511677, 29.671803, 22.127447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.999102, 30.275190, 22.146395>,  <25.882446, 29.525141, 21.858082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.999102, 30.275190, 22.146395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342400, 30.130909, 22.000347>,  <26.548378, 30.044340, 21.912718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342400, 30.130909, 22.000347>,  <25.999102, 30.275190, 22.146395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342400, 30.130909, 22.000347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096757, 0.812348, -0.575090,
		0.504040, 0.458239, 0.732093,
		0.858243, -0.360704, -0.365118,
		26.599873, 30.022697, 21.890812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067699, 30.861006, 22.642393>,  <25.999102, 30.275190, 22.146395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067699, 30.861006, 22.642393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181255, 30.955914, 23.014008>,  <26.249390, 31.012857, 23.236977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181255, 30.955914, 23.014008>,  <26.067699, 30.861006, 22.642393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181255, 30.955914, 23.014008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730453, -0.574155, 0.369844,
		0.621164, -0.783613, 0.010317,
		0.283891, 0.237270, 0.929037,
		26.266422, 31.027094, 23.292719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418224, 31.194553, 22.744116>,  <26.067699, 30.861006, 22.642393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418224, 31.194553, 22.744116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307924, 31.447922, 23.033318>,  <25.241745, 31.599943, 23.206839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307924, 31.447922, 23.033318>,  <25.418224, 31.194553, 22.744116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307924, 31.447922, 23.033318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841731, -0.204094, 0.499834,
		0.464168, 0.746405, -0.476893,
		-0.275748, 0.633423, 0.723007,
		25.225201, 31.637949, 23.250219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030243, 31.701231, 22.815409>,  <25.418224, 31.194553, 22.744116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030243, 31.701231, 22.815409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831642, 31.697388, 23.162601>,  <25.712481, 31.695082, 23.370916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831642, 31.697388, 23.162601>,  <26.030243, 31.701231, 22.815409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831642, 31.697388, 23.162601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860196, -0.139532, 0.490504,
		0.116398, 0.990171, 0.077543,
		-0.496503, -0.009608, 0.867982,
		25.682692, 31.694506, 23.422997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448959, 32.106548, 23.326052>,  <26.030243, 31.701231, 22.815409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448959, 32.106548, 23.326052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199888, 31.868408, 23.529160>,  <26.050446, 31.725525, 23.651024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199888, 31.868408, 23.529160>,  <26.448959, 32.106548, 23.326052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199888, 31.868408, 23.529160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738203, -0.231771, 0.633512,
		-0.259473, 0.769314, 0.583806,
		-0.622679, -0.595348, 0.507772,
		26.013084, 31.689804, 23.681492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528131, 32.375221, 24.067163>,  <26.448959, 32.106548, 23.326052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528131, 32.375221, 24.067163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361197, 32.012383, 24.089062>,  <26.261036, 31.794678, 24.102200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361197, 32.012383, 24.089062>,  <26.528131, 32.375221, 24.067163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361197, 32.012383, 24.089062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606964, -0.233404, 0.759682,
		-0.676332, 0.350271, 0.647986,
		-0.417337, -0.907101, 0.054743,
		26.235996, 31.740252, 24.105484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413923, 32.397057, 24.682787>,  <26.528131, 32.375221, 24.067163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413923, 32.397057, 24.682787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376696, 32.010265, 24.587887>,  <26.354359, 31.778191, 24.530947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376696, 32.010265, 24.587887>,  <26.413923, 32.397057, 24.682787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376696, 32.010265, 24.587887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425171, -0.254064, 0.868724,
		-0.900315, -0.020019, 0.434778,
		-0.093071, -0.966980, -0.237249,
		26.348774, 31.720171, 24.516712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065893, 32.100185, 25.245520>,  <26.413923, 32.397057, 24.682787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065893, 32.100185, 25.245520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286989, 31.825649, 25.056454>,  <26.419647, 31.660927, 24.943014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286989, 31.825649, 25.056454>,  <26.065893, 32.100185, 25.245520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286989, 31.825649, 25.056454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337557, -0.334176, 0.879990,
		-0.761926, -0.645959, 0.046966,
		0.552742, -0.686341, -0.472665,
		26.452812, 31.619747, 24.914654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224962, 31.671303, 25.741858>,  <26.065893, 32.100185, 25.245520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224962, 31.671303, 25.741858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442999, 31.467495, 25.475544>,  <26.573820, 31.345209, 25.315756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442999, 31.467495, 25.475544>,  <26.224962, 31.671303, 25.741858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442999, 31.467495, 25.475544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330459, -0.599261, 0.729166,
		-0.770502, -0.617475, -0.158276,
		0.545091, -0.509520, -0.665781,
		26.606525, 31.314638, 25.275810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038328, 30.981176, 25.772881>,  <26.224962, 31.671303, 25.741858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.038328, 30.981176, 25.772881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414778, 30.994324, 25.638294>,  <26.640648, 31.002213, 25.557543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414778, 30.994324, 25.638294>,  <26.038328, 30.981176, 25.772881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414778, 30.994324, 25.638294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275775, -0.650313, 0.707843,
		-0.195543, -0.758955, -0.621088,
		0.941122, 0.032867, -0.336465,
		26.697115, 31.004183, 25.537355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190771, 30.255419, 25.526253>,  <26.038328, 30.981176, 25.772881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190771, 30.255419, 25.526253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525951, 30.458797, 25.605576>,  <26.727058, 30.580824, 25.653170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525951, 30.458797, 25.605576>,  <26.190771, 30.255419, 25.526253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525951, 30.458797, 25.605576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208907, -0.634526, 0.744134,
		0.504182, -0.582118, -0.637918,
		0.837949, 0.508444, 0.198308,
		26.777336, 30.611330, 25.665068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553997, 29.752796, 25.643486>,  <26.190771, 30.255419, 25.526253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553997, 29.752796, 25.643486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746912, 30.063694, 25.805122>,  <26.862661, 30.250233, 25.902103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746912, 30.063694, 25.805122>,  <26.553997, 29.752796, 25.643486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746912, 30.063694, 25.805122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237115, -0.559887, 0.793916,
		0.843313, -0.287079, -0.454322,
		0.482286, 0.777246, 0.404089,
		26.891598, 30.296867, 25.926350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082182, 29.505461, 25.961824>,  <26.553997, 29.752796, 25.643486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082182, 29.505461, 25.961824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083540, 29.858166, 26.150497>,  <27.084354, 30.069788, 26.263700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083540, 29.858166, 26.150497>,  <27.082182, 29.505461, 25.961824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083540, 29.858166, 26.150497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071702, -0.470686, 0.879382,
		0.997420, 0.030836, -0.064822,
		0.003394, 0.881762, 0.471683,
		27.084558, 30.122694, 26.292002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663193, 29.519508, 26.423136>,  <27.082182, 29.505461, 25.961824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663193, 29.519508, 26.423136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394695, 29.784153, 26.556824>,  <27.233597, 29.942940, 26.637037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394695, 29.784153, 26.556824>,  <27.663193, 29.519508, 26.423136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394695, 29.784153, 26.556824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082285, -0.514619, 0.853461,
		0.736655, 0.545380, 0.399875,
		-0.671244, 0.661610, 0.334220,
		27.193321, 29.982635, 26.657089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937738, 29.690161, 27.024298>,  <27.663193, 29.519508, 26.423136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937738, 29.690161, 27.024298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557896, 29.810432, 27.059708>,  <27.329990, 29.882595, 27.080954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557896, 29.810432, 27.059708>,  <27.937738, 29.690161, 27.024298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557896, 29.810432, 27.059708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105481, -0.572509, 0.813085,
		0.295159, 0.762774, 0.575376,
		-0.949608, 0.300680, 0.088523,
		27.273014, 29.900637, 27.086264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872515, 29.986021, 27.711351>,  <27.937738, 29.690161, 27.024298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872515, 29.986021, 27.711351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524683, 29.833374, 27.586006>,  <27.315983, 29.741787, 27.510799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524683, 29.833374, 27.586006>,  <27.872515, 29.986021, 27.711351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524683, 29.833374, 27.586006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056381, -0.553729, 0.830786,
		-0.490561, 0.740104, 0.459997,
		-0.869581, -0.381616, -0.313365,
		27.263809, 29.718889, 27.491997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688946, 30.699877, 27.831787>,  <27.872515, 29.986021, 27.711351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688946, 30.699877, 27.831787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864946, 30.927547, 28.109619>,  <27.970547, 31.064150, 28.276318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864946, 30.927547, 28.109619>,  <27.688946, 30.699877, 27.831787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864946, 30.927547, 28.109619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489381, 0.496541, -0.716905,
		-0.752931, 0.655353, -0.060064,
		0.440001, 0.569174, 0.694578,
		27.996946, 31.098299, 28.317993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629049, 31.430731, 27.696140>,  <27.688946, 30.699877, 27.831787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629049, 31.430731, 27.696140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957493, 31.421661, 27.924271>,  <28.154558, 31.416220, 28.061148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957493, 31.421661, 27.924271>,  <27.629049, 31.430731, 27.696140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957493, 31.421661, 27.924271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509158, 0.480683, -0.713934,
		-0.257956, 0.876601, 0.406238,
		0.821107, -0.022676, 0.570324,
		28.203825, 31.414858, 28.095367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886412, 31.972342, 27.575699>,  <27.629049, 31.430731, 27.696140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886412, 31.972342, 27.575699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209778, 31.779221, 27.710381>,  <28.403797, 31.663349, 27.791189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209778, 31.779221, 27.710381>,  <27.886412, 31.972342, 27.575699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209778, 31.779221, 27.710381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554866, 0.434159, -0.709669,
		0.196445, 0.760533, 0.618870,
		0.808414, -0.482800, 0.336706,
		28.452301, 31.634380, 27.811392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280521, 32.370735, 27.274508>,  <27.886412, 31.972342, 27.575699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280521, 32.370735, 27.274508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516827, 32.070885, 27.393883>,  <28.658609, 31.890976, 27.465508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516827, 32.070885, 27.393883>,  <28.280521, 32.370735, 27.274508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516827, 32.070885, 27.393883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692537, 0.281323, -0.664266,
		0.413992, 0.599103, 0.685337,
		0.590765, -0.749622, 0.298436,
		28.694056, 31.845999, 27.483414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912580, 32.642502, 27.451401>,  <28.280521, 32.370735, 27.274508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912580, 32.642502, 27.451401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976723, 32.258030, 27.361588>,  <29.015209, 32.027348, 27.307699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976723, 32.258030, 27.361588>,  <28.912580, 32.642502, 27.451401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976723, 32.258030, 27.361588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684158, 0.272203, -0.676634,
		0.711487, -0.045112, 0.701250,
		0.160358, -0.961182, -0.224533,
		29.024830, 31.969675, 27.294228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582500, 32.630520, 27.218222>,  <28.912580, 32.642502, 27.451401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582500, 32.630520, 27.218222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461462, 32.285088, 27.056896>,  <29.388838, 32.077827, 26.960102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461462, 32.285088, 27.056896>,  <29.582500, 32.630520, 27.218222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461462, 32.285088, 27.056896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780523, 0.018329, -0.624859,
		0.547009, -0.503875, 0.668499,
		-0.302598, -0.863582, -0.403312,
		29.370682, 32.026012, 26.935902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244749, 32.244518, 27.023390>,  <29.582500, 32.630520, 27.218222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244749, 32.244518, 27.023390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954004, 32.049145, 26.830269>,  <29.779558, 31.931919, 26.714396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954004, 32.049145, 26.830269>,  <30.244749, 32.244518, 27.023390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954004, 32.049145, 26.830269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580632, -0.061591, -0.811833,
		0.366794, -0.870422, 0.328371,
		-0.726862, -0.488438, -0.482804,
		29.735945, 31.902613, 26.685429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486309, 31.559389, 26.757612>,  <30.244749, 32.244518, 27.023390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486309, 31.559389, 26.757612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160437, 31.608391, 26.530884>,  <29.964912, 31.637793, 26.394846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160437, 31.608391, 26.530884>,  <30.486309, 31.559389, 26.757612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160437, 31.608391, 26.530884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537969, -0.205300, -0.817583,
		-0.216530, -0.971001, 0.101348,
		-0.814680, 0.122509, -0.566822,
		29.916033, 31.645142, 26.360838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422722, 31.000202, 26.207285>,  <30.486309, 31.559389, 26.757612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422722, 31.000202, 26.207285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181049, 31.286652, 26.067493>,  <30.036045, 31.458521, 25.983620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181049, 31.286652, 26.067493>,  <30.422722, 31.000202, 26.207285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181049, 31.286652, 26.067493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236248, -0.257876, -0.936849,
		-0.761021, -0.648590, -0.013378,
		-0.604181, 0.716122, -0.349477,
		29.999796, 31.501488, 25.962650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060760, 30.697792, 25.681541>,  <30.422722, 31.000202, 26.207285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060760, 30.697792, 25.681541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020508, 31.086430, 25.595863>,  <29.996357, 31.319613, 25.544456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020508, 31.086430, 25.595863>,  <30.060760, 30.697792, 25.681541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020508, 31.086430, 25.595863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251226, -0.183500, -0.950375,
		-0.962683, -0.149448, -0.225624,
		-0.100630, 0.971593, -0.214197,
		29.990318, 31.377907, 25.531605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637442, 30.664347, 25.106817>,  <30.060760, 30.697792, 25.681541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637442, 30.664347, 25.106817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852081, 31.001614, 25.120274>,  <29.980865, 31.203974, 25.128347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852081, 31.001614, 25.120274>,  <29.637442, 30.664347, 25.106817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852081, 31.001614, 25.120274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284345, -0.143140, -0.947976,
		-0.794486, 0.518249, -0.316559,
		0.536600, 0.843166, 0.033639,
		30.013062, 31.254564, 25.130365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360186, 31.186411, 24.525951>,  <29.637442, 30.664347, 25.106817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360186, 31.186411, 24.525951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747807, 31.213226, 24.620983>,  <29.980379, 31.229317, 24.678001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747807, 31.213226, 24.620983>,  <29.360186, 31.186411, 24.525951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747807, 31.213226, 24.620983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242953, -0.088518, -0.965991,
		-0.043731, 0.993816, -0.102066,
		0.969052, 0.067041, 0.237579,
		30.038523, 31.233339, 24.692257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.312563, 29.637455, 31.331404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.692202, 29.731750, 31.414967>,  <26.919985, 29.788328, 31.465105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.692202, 29.731750, 31.414967>,  <26.312563, 29.637455, 31.331404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692202, 29.731750, 31.414967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005789, 0.650067, -0.759855,
		-0.314930, 0.722386, 0.615612,
		0.949097, 0.235737, 0.208908,
		26.976931, 29.802471, 31.477638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368031, 30.413960, 31.410746>,  <26.312563, 29.637455, 31.331404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368031, 30.413960, 31.410746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.736944, 30.283909, 31.327145>,  <26.958292, 30.205879, 31.276983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.736944, 30.283909, 31.327145>,  <26.368031, 30.413960, 31.410746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736944, 30.283909, 31.327145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048937, 0.634623, -0.771271,
		0.383399, 0.701104, 0.601214,
		0.922285, -0.325126, -0.209004,
		27.013630, 30.186371, 31.264442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727077, 31.033571, 31.311155>,  <26.368031, 30.413960, 31.410746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727077, 31.033571, 31.311155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.944918, 30.740841, 31.147282>,  <27.075623, 30.565203, 31.048958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.944918, 30.740841, 31.147282>,  <26.727077, 31.033571, 31.311155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944918, 30.740841, 31.147282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243662, 0.605465, -0.757655,
		0.802521, 0.312795, 0.508054,
		0.544600, -0.731827, -0.409682,
		27.108297, 30.521292, 31.024378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316568, 31.354536, 31.012932>,  <26.727077, 31.033571, 31.311155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316568, 31.354536, 31.012932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.294403, 30.999126, 30.830742>,  <27.281103, 30.785881, 30.721428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.294403, 30.999126, 30.830742>,  <27.316568, 31.354536, 31.012932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294403, 30.999126, 30.830742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243799, 0.430326, -0.869127,
		0.968241, -0.159205, 0.192775,
		-0.055413, -0.888523, -0.455474,
		27.277779, 30.732569, 30.694099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908434, 31.308563, 30.505173>,  <27.316568, 31.354536, 31.012932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908434, 31.308563, 30.505173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.663361, 31.026737, 30.361950>,  <27.516315, 30.857641, 30.276016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.663361, 31.026737, 30.361950>,  <27.908434, 31.308563, 30.505173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663361, 31.026737, 30.361950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250768, 0.256331, -0.933493,
		0.749488, -0.661727, 0.019632,
		-0.612685, -0.704565, -0.358057,
		27.479555, 30.815367, 30.254534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368832, 30.862394, 30.158222>,  <27.908434, 31.308563, 30.505173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368832, 30.862394, 30.158222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.997812, 30.799282, 30.022720>,  <27.775200, 30.761414, 29.941420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.997812, 30.799282, 30.022720>,  <28.368832, 30.862394, 30.158222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997812, 30.799282, 30.022720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309823, 0.182171, -0.933179,
		0.208948, -0.970525, -0.120089,
		-0.927551, -0.157780, -0.338756,
		27.719547, 30.751947, 29.921093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445581, 30.334642, 29.737719>,  <28.368832, 30.862394, 30.158222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445581, 30.334642, 29.737719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.103767, 30.516804, 29.637817>,  <27.898680, 30.626101, 29.577877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.103767, 30.516804, 29.637817>,  <28.445581, 30.334642, 29.737719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103767, 30.516804, 29.637817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388750, 0.241904, -0.889020,
		-0.344446, -0.856791, -0.383753,
		-0.854535, 0.455403, -0.249755,
		27.847406, 30.653425, 29.562891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345896, 30.164209, 29.054783>,  <28.445581, 30.334642, 29.737719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345896, 30.164209, 29.054783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.104315, 30.480839, 29.091984>,  <27.959366, 30.670816, 29.114304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.104315, 30.480839, 29.091984>,  <28.345896, 30.164209, 29.054783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104315, 30.480839, 29.091984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350236, 0.368401, -0.861171,
		-0.715944, -0.487534, -0.499735,
		-0.603952, 0.791576, 0.093003,
		27.923128, 30.718311, 29.119884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019819, 30.216381, 28.430536>,  <28.345896, 30.164209, 29.054783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019819, 30.216381, 28.430536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.974016, 30.576565, 28.598373>,  <27.946533, 30.792675, 28.699076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.974016, 30.576565, 28.598373>,  <28.019819, 30.216381, 28.430536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974016, 30.576565, 28.598373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232083, 0.434931, -0.870042,
		-0.965932, -0.002247, -0.258785,
		-0.114509, 0.900461, 0.419593,
		27.939663, 30.846703, 28.724251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373291, 30.206713, 28.265663>,  <28.019819, 30.216381, 28.430536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373291, 30.206713, 28.265663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.175024, 29.929893, 28.055756>,  <27.056063, 29.763802, 27.929811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.175024, 29.929893, 28.055756>,  <27.373291, 30.206713, 28.265663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175024, 29.929893, 28.055756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115597, -0.546273, 0.829592,
		-0.860785, 0.471864, 0.190772,
		-0.495669, -0.692047, -0.524770,
		27.026323, 29.722279, 27.898325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537355, 30.080158, 28.520538>,  <27.373291, 30.206713, 28.265663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537355, 30.080158, 28.520538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.665468, 29.749207, 28.335991>,  <26.742336, 29.550634, 28.225262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.665468, 29.749207, 28.335991>,  <26.537355, 30.080158, 28.520538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665468, 29.749207, 28.335991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456863, -0.561550, 0.689883,
		-0.829877, -0.010173, -0.557853,
		0.320280, -0.827380, -0.461370,
		26.761553, 29.500992, 28.197580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055618, 29.685114, 28.717907>,  <26.537355, 30.080158, 28.520538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055618, 29.685114, 28.717907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.324461, 29.435768, 28.558060>,  <26.485765, 29.286161, 28.462152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.324461, 29.435768, 28.558060>,  <26.055618, 29.685114, 28.717907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324461, 29.435768, 28.558060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471130, -0.776367, 0.418677,
		-0.571236, -0.093124, -0.815486,
		0.672105, -0.623363, -0.399616,
		26.526093, 29.248758, 28.438175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660465, 29.121651, 28.687532>,  <26.055618, 29.685114, 28.717907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660465, 29.121651, 28.687532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.036793, 28.990570, 28.652950>,  <26.262589, 28.911921, 28.632200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.036793, 28.990570, 28.652950>,  <25.660465, 29.121651, 28.687532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036793, 28.990570, 28.652950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270795, -0.880242, 0.389673,
		-0.203800, -0.343198, -0.916886,
		0.940817, -0.327703, -0.086457,
		26.319038, 28.892260, 28.627012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630844, 28.428114, 28.499912>,  <25.660465, 29.121651, 28.687532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630844, 28.428114, 28.499912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.002024, 28.446732, 28.647827>,  <26.224731, 28.457903, 28.736576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.002024, 28.446732, 28.647827>,  <25.630844, 28.428114, 28.499912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002024, 28.446732, 28.647827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212120, -0.749849, 0.626683,
		0.306452, -0.659970, -0.685950,
		0.927951, 0.046544, 0.369785,
		26.280409, 28.460695, 28.758762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971752, 27.743654, 28.551914>,  <25.630844, 28.428114, 28.499912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971752, 27.743654, 28.551914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.164711, 27.984581, 28.806316>,  <26.280487, 28.129137, 28.958958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.164711, 27.984581, 28.806316>,  <25.971752, 27.743654, 28.551914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164711, 27.984581, 28.806316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086462, -0.755272, 0.649683,
		0.871674, -0.258416, -0.416420,
		0.482399, 0.602317, 0.636008,
		26.309431, 28.165276, 28.997118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448339, 27.370579, 28.809742>,  <25.971752, 27.743654, 28.551914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448339, 27.370579, 28.809742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.397789, 27.657249, 29.084087>,  <26.367458, 27.829252, 29.248693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.397789, 27.657249, 29.084087>,  <26.448339, 27.370579, 28.809742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397789, 27.657249, 29.084087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018040, -0.689631, 0.723936,
		0.991818, 0.103860, 0.074224,
		-0.126375, 0.716674, 0.685862,
		26.359877, 27.872252, 29.289846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880726, 27.205814, 29.386166>,  <26.448339, 27.370579, 28.809742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880726, 27.205814, 29.386166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.616352, 27.476498, 29.515923>,  <26.457727, 27.638908, 29.593777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.616352, 27.476498, 29.515923>,  <26.880726, 27.205814, 29.386166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616352, 27.476498, 29.515923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246657, -0.604145, 0.757739,
		0.708749, 0.420802, 0.566216,
		-0.660935, 0.676709, 0.324393,
		26.418072, 27.679510, 29.613241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017391, 27.286196, 30.106306>,  <26.880726, 27.205814, 29.386166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017391, 27.286196, 30.106306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.638031, 27.405624, 30.063610>,  <26.410416, 27.477282, 30.037992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.638031, 27.405624, 30.063610>,  <27.017391, 27.286196, 30.106306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638031, 27.405624, 30.063610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262539, -0.550669, 0.792362,
		0.177800, 0.779498, 0.600641,
		-0.948399, 0.298573, -0.106740,
		26.353512, 27.495197, 30.031588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808281, 27.281130, 30.743839>,  <27.017391, 27.286196, 30.106306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808281, 27.281130, 30.743839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.448023, 27.308235, 30.572144>,  <26.231869, 27.324497, 30.469126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.448023, 27.308235, 30.572144>,  <26.808281, 27.281130, 30.743839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448023, 27.308235, 30.572144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362425, -0.662122, 0.655929,
		-0.239761, 0.746326, 0.620896,
		-0.900646, 0.067762, -0.429238,
		26.177830, 27.328564, 30.443373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349081, 27.413795, 31.200539>,  <26.808281, 27.281130, 30.743839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349081, 27.413795, 31.200539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.099035, 27.244259, 30.938366>,  <25.949009, 27.142536, 30.781063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.099035, 27.244259, 30.938366>,  <26.349081, 27.413795, 31.200539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099035, 27.244259, 30.938366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274996, -0.666287, 0.693137,
		-0.730487, 0.613530, 0.299950,
		-0.625113, -0.423842, -0.655432,
		25.911501, 27.117105, 30.741735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625061, 27.312778, 31.608627>,  <26.349081, 27.413795, 31.200539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625061, 27.312778, 31.608627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.643023, 27.079788, 31.283985>,  <25.653799, 26.939995, 31.089199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.643023, 27.079788, 31.283985>,  <25.625061, 27.312778, 31.608627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643023, 27.079788, 31.283985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359974, -0.767284, 0.530748,
		-0.931881, 0.268325, -0.244131,
		0.044904, -0.582475, -0.811607,
		25.656494, 26.905046, 31.040503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107920, 26.966515, 31.724758>,  <25.625061, 27.312778, 31.608627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.107920, 26.966515, 31.724758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.281528, 26.744072, 31.441246>,  <25.385695, 26.610607, 31.271139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.281528, 26.744072, 31.441246>,  <25.107920, 26.966515, 31.724758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281528, 26.744072, 31.441246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097496, -0.811120, 0.576697,
		-0.895610, -0.181196, -0.406263,
		0.434023, -0.556104, -0.708782,
		25.411736, 26.577240, 31.228611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671524, 26.502617, 31.499250>,  <25.107920, 26.966515, 31.724758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.671524, 26.502617, 31.499250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.038755, 26.354527, 31.442589>,  <25.259094, 26.265673, 31.408592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.038755, 26.354527, 31.442589>,  <24.671524, 26.502617, 31.499250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038755, 26.354527, 31.442589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218844, -0.771336, 0.597619,
		-0.330517, -0.517660, -0.789168,
		0.918077, -0.370228, -0.141653,
		25.314178, 26.243458, 31.400093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.375555, 25.404655, 31.651945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.979712, 25.394611, 31.595310>,  <30.742207, 25.388584, 31.561329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.979712, 25.394611, 31.595310>,  <31.375555, 25.404655, 31.651945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979712, 25.394611, 31.595310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133449, 0.206357, -0.969334,
		0.053558, -0.978154, -0.200862,
		-0.989607, -0.025111, -0.141586,
		30.682829, 25.387077, 31.552834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225677, 25.039968, 30.931248>,  <31.375555, 25.404655, 31.651945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225677, 25.039968, 30.931248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.905497, 25.255096, 31.037098>,  <30.713388, 25.384174, 31.100609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.905497, 25.255096, 31.037098>,  <31.225677, 25.039968, 30.931248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905497, 25.255096, 31.037098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035876, 0.397706, -0.916811,
		-0.598324, -0.743356, -0.299050,
		-0.800451, 0.537821, 0.264626,
		30.665361, 25.416443, 31.116486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817513, 25.145321, 30.273125>,  <31.225677, 25.039968, 30.931248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817513, 25.145321, 30.273125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.646503, 25.416771, 30.512020>,  <30.543898, 25.579641, 30.655357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.646503, 25.416771, 30.512020>,  <30.817513, 25.145321, 30.273125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646503, 25.416771, 30.512020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278415, 0.529704, -0.801186,
		-0.860064, -0.508805, -0.037521,
		-0.427522, 0.678624, 0.597238,
		30.518248, 25.620358, 30.691191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147804, 25.254761, 29.932653>,  <30.817513, 25.145321, 30.273125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147804, 25.254761, 29.932653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.223209, 25.568733, 30.168736>,  <30.268454, 25.757116, 30.310385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.223209, 25.568733, 30.168736>,  <30.147804, 25.254761, 29.932653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223209, 25.568733, 30.168736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224492, 0.619512, -0.752202,
		-0.956068, 0.009304, 0.292997,
		0.188514, 0.784932, 0.590207,
		30.279764, 25.804213, 30.345798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680510, 25.710024, 29.725901>,  <30.147804, 25.254761, 29.932653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680510, 25.710024, 29.725901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.945986, 25.930992, 29.927631>,  <30.105272, 26.063572, 30.048670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.945986, 25.930992, 29.927631>,  <29.680510, 25.710024, 29.725901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945986, 25.930992, 29.927631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002333, 0.672697, -0.739914,
		-0.748003, 0.492252, 0.445174,
		0.663692, 0.552419, 0.504328,
		30.145094, 26.096718, 30.078930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409712, 26.432032, 29.709429>,  <29.680510, 25.710024, 29.725901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409712, 26.432032, 29.709429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.802908, 26.446815, 29.781387>,  <30.038826, 26.455687, 29.824562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.802908, 26.446815, 29.781387>,  <29.409712, 26.432032, 29.709429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802908, 26.446815, 29.781387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114298, 0.643606, -0.756774,
		-0.143753, 0.764464, 0.628434,
		0.982991, 0.036960, 0.179897,
		30.097805, 26.457903, 29.835356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563942, 27.189310, 29.691690>,  <29.409712, 26.432032, 29.709429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563942, 27.189310, 29.691690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.905796, 26.996658, 29.614094>,  <30.110909, 26.881067, 29.567535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.905796, 26.996658, 29.614094>,  <29.563942, 27.189310, 29.691690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905796, 26.996658, 29.614094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238492, 0.695992, -0.677286,
		0.461219, 0.532566, 0.709683,
		0.854634, -0.481631, -0.193992,
		30.162186, 26.852169, 29.555897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029127, 27.756186, 29.424126>,  <29.563942, 27.189310, 29.691690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029127, 27.756186, 29.424126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.221596, 27.419102, 29.327530>,  <30.337076, 27.216852, 29.269573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.221596, 27.419102, 29.327530>,  <30.029127, 27.756186, 29.424126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221596, 27.419102, 29.327530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301170, 0.417620, -0.857258,
		0.823269, 0.339758, 0.454745,
		0.481171, -0.842709, -0.241488,
		30.365948, 27.166288, 29.255083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673346, 28.025393, 29.348682>,  <30.029127, 27.756186, 29.424126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673346, 28.025393, 29.348682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.621523, 27.707661, 29.111279>,  <30.590429, 27.517021, 28.968836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.621523, 27.707661, 29.111279>,  <30.673346, 28.025393, 29.348682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621523, 27.707661, 29.111279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383641, 0.511786, -0.768697,
		0.914349, -0.327286, 0.238431,
		-0.129558, -0.794329, -0.593512,
		30.582655, 27.469362, 28.933226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220387, 28.101160, 28.840866>,  <30.673346, 28.025393, 29.348682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220387, 28.101160, 28.840866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.966002, 27.837177, 28.680862>,  <30.813370, 27.678787, 28.584860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.966002, 27.837177, 28.680862>,  <31.220387, 28.101160, 28.840866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966002, 27.837177, 28.680862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256194, 0.308391, -0.916111,
		0.727953, -0.685093, -0.027049,
		-0.635962, -0.659956, -0.400011,
		30.775213, 27.639191, 28.560860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609522, 27.691353, 28.309288>,  <31.220387, 28.101160, 28.840866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609522, 27.691353, 28.309288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.219419, 27.667938, 28.224010>,  <30.985359, 27.653889, 28.172844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.219419, 27.667938, 28.224010>,  <31.609522, 27.691353, 28.309288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219419, 27.667938, 28.224010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181626, 0.337704, -0.923563,
		0.126059, -0.939431, -0.318715,
		-0.975255, -0.058537, -0.213195,
		30.926844, 27.650377, 28.160051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616812, 27.328754, 27.741032>,  <31.609522, 27.691353, 28.309288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616812, 27.328754, 27.741032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.252403, 27.491886, 27.716652>,  <31.033758, 27.589766, 27.702024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.252403, 27.491886, 27.716652>,  <31.616812, 27.328754, 27.741032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252403, 27.491886, 27.716652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146839, 0.182731, -0.972136,
		-0.385331, -0.894585, -0.226357,
		-0.911021, 0.407832, -0.060948,
		30.979097, 27.614235, 27.698368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320055, 27.042820, 27.171642>,  <31.616812, 27.328754, 27.741032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320055, 27.042820, 27.171642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.149483, 27.396362, 27.248539>,  <31.047140, 27.608488, 27.294678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.149483, 27.396362, 27.248539>,  <31.320055, 27.042820, 27.171642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149483, 27.396362, 27.248539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210870, 0.303821, -0.929100,
		-0.879597, -0.355659, -0.315937,
		-0.426431, 0.883855, 0.192242,
		31.021553, 27.661518, 27.306211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053913, 27.257284, 26.542894>,  <31.320055, 27.042820, 27.171642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053913, 27.257284, 26.542894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.001184, 27.610622, 26.722816>,  <30.969547, 27.822626, 26.830769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.001184, 27.610622, 26.722816>,  <31.053913, 27.257284, 26.542894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001184, 27.610622, 26.722816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261110, 0.468680, -0.843896,
		-0.956266, 0.006206, -0.292431,
		-0.131819, 0.883346, 0.449803,
		30.961639, 27.875626, 26.857758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305279, 27.115040, 26.508739>,  <31.053913, 27.257284, 26.542894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305279, 27.115040, 26.508739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.086538, 26.850304, 26.303635>,  <29.955294, 26.691462, 26.180573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.086538, 26.850304, 26.303635>,  <30.305279, 27.115040, 26.508739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086538, 26.850304, 26.303635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016883, -0.621042, 0.783595,
		-0.837061, 0.419852, 0.350791,
		-0.546849, -0.661839, -0.512762,
		29.922483, 26.651752, 26.149807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769955, 26.937250, 26.902006>,  <30.305279, 27.115040, 26.508739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769955, 26.937250, 26.902006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.824482, 26.622719, 26.660973>,  <29.857199, 26.434000, 26.516352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.824482, 26.622719, 26.660973>,  <29.769955, 26.937250, 26.902006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824482, 26.622719, 26.660973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148107, -0.617603, 0.772419,
		-0.979532, -0.016046, -0.200649,
		0.136316, -0.786326, -0.602585,
		29.865377, 26.386822, 26.480198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435913, 26.377489, 27.338642>,  <29.769955, 26.937250, 26.902006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435913, 26.377489, 27.338642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.622650, 26.194294, 27.036037>,  <29.734692, 26.084377, 26.854475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.622650, 26.194294, 27.036037>,  <29.435913, 26.377489, 27.338642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622650, 26.194294, 27.036037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083029, -0.828973, 0.553091,
		-0.880435, -0.321018, -0.348972,
		0.466840, -0.457986, -0.756511,
		29.762703, 26.056898, 26.809084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011759, 25.864923, 27.257708>,  <29.435913, 26.377489, 27.338642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011759, 25.864923, 27.257708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.361860, 25.746864, 27.104439>,  <29.571920, 25.676029, 27.012478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.361860, 25.746864, 27.104439>,  <29.011759, 25.864923, 27.257708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361860, 25.746864, 27.104439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083612, -0.687964, 0.720912,
		-0.476384, -0.663018, -0.577465,
		0.875253, -0.295148, -0.383171,
		29.624435, 25.658319, 26.989487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996252, 25.129057, 27.058250>,  <29.011759, 25.864923, 27.257708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996252, 25.129057, 27.058250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.380821, 25.212460, 27.130016>,  <29.611563, 25.262501, 27.173077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.380821, 25.212460, 27.130016>,  <28.996252, 25.129057, 27.058250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380821, 25.212460, 27.130016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078237, -0.832592, 0.548334,
		0.263710, -0.513145, -0.816786,
		0.961424, 0.208505, 0.179416,
		29.669249, 25.275011, 27.183842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357208, 24.529255, 27.052206>,  <28.996252, 25.129057, 27.058250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357208, 24.529255, 27.052206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.649294, 24.738533, 27.227959>,  <29.824545, 24.864100, 27.333410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.649294, 24.738533, 27.227959>,  <29.357208, 24.529255, 27.052206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649294, 24.738533, 27.227959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119477, -0.730980, 0.671858,
		0.672693, -0.438103, -0.596280,
		0.730212, 0.523196, 0.439382,
		29.868357, 24.895493, 27.359774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842682, 23.974218, 27.327427>,  <29.357208, 24.529255, 27.052206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842682, 23.974218, 27.327427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.962929, 24.315521, 27.497875>,  <30.035076, 24.520304, 27.600145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.962929, 24.315521, 27.497875>,  <29.842682, 23.974218, 27.327427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962929, 24.315521, 27.497875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229704, -0.498411, 0.835956,
		0.925670, -0.153420, -0.345828,
		0.300617, 0.853258, 0.426123,
		30.053114, 24.571499, 27.625711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628096, 23.874586, 27.556141>,  <29.842682, 23.974218, 27.327427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628096, 23.874586, 27.556141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.427290, 24.155979, 27.757374>,  <30.306807, 24.324816, 27.878115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.427290, 24.155979, 27.757374>,  <30.628096, 23.874586, 27.556141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427290, 24.155979, 27.757374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075942, -0.543590, 0.835908,
		0.861520, 0.457841, 0.219464,
		-0.502012, 0.703485, 0.503083,
		30.276686, 24.367025, 27.908298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006701, 24.068911, 28.172314>,  <30.628096, 23.874586, 27.556141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006701, 24.068911, 28.172314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.618855, 24.145630, 28.233059>,  <30.386147, 24.191662, 28.269506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.618855, 24.145630, 28.233059>,  <31.006701, 24.068911, 28.172314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618855, 24.145630, 28.233059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036473, -0.500489, 0.864974,
		0.241908, 0.844230, 0.478285,
		-0.969614, 0.191799, 0.151864,
		30.327971, 24.203169, 28.278618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958727, 24.225809, 28.814945>,  <31.006701, 24.068911, 28.172314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958727, 24.225809, 28.814945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.581730, 24.110596, 28.747128>,  <30.355532, 24.041468, 28.706438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.581730, 24.110596, 28.747128>,  <30.958727, 24.225809, 28.814945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581730, 24.110596, 28.747128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090251, -0.269099, 0.958875,
		-0.321810, 0.919034, 0.227629,
		-0.942493, -0.288032, -0.169542,
		30.298983, 24.024185, 28.696264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533733, 24.522779, 29.384388>,  <30.958727, 24.225809, 28.814945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533733, 24.522779, 29.384388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.323591, 24.209766, 29.250736>,  <30.197506, 24.021957, 29.170546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.323591, 24.209766, 29.250736>,  <30.533733, 24.522779, 29.384388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323591, 24.209766, 29.250736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122937, -0.318757, 0.939830,
		-0.841955, 0.534821, 0.071258,
		-0.525355, -0.782535, -0.334128,
		30.165985, 23.975006, 29.150497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955521, 24.317795, 29.876419>,  <30.533733, 24.522779, 29.384388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955521, 24.317795, 29.876419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.964487, 23.982666, 29.658226>,  <29.969868, 23.781590, 29.527309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.964487, 23.982666, 29.658226>,  <29.955521, 24.317795, 29.876419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964487, 23.982666, 29.658226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186064, -0.539585, 0.821114,
		-0.982282, 0.083089, -0.167984,
		0.022416, -0.837821, -0.545484,
		29.971212, 23.731319, 29.494581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439585, 24.018791, 30.155672>,  <29.955521, 24.317795, 29.876419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439585, 24.018791, 30.155672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.627369, 23.725246, 29.959282>,  <29.740040, 23.549120, 29.841448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.627369, 23.725246, 29.959282>,  <29.439585, 24.018791, 30.155672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627369, 23.725246, 29.959282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103472, -0.597954, 0.794824,
		-0.876870, -0.322335, -0.356649,
		0.469459, -0.733861, -0.490975,
		29.768208, 23.505089, 29.811989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940731, 23.472832, 30.082041>,  <29.439585, 24.018791, 30.155672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940731, 23.472832, 30.082041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.292141, 23.287815, 30.034283>,  <29.502987, 23.176805, 30.005629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.292141, 23.287815, 30.034283>,  <28.940731, 23.472832, 30.082041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292141, 23.287815, 30.034283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267619, -0.683581, 0.679041,
		-0.395699, -0.564601, -0.724326,
		0.878523, -0.462539, -0.119394,
		29.555698, 23.149054, 29.998465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512642, 23.226395, 29.518661>,  <28.940731, 23.472832, 30.082041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512642, 23.226395, 29.518661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.133902, 23.104351, 29.477909>,  <27.906656, 23.031124, 29.453457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.133902, 23.104351, 29.477909>,  <28.512642, 23.226395, 29.518661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133902, 23.104351, 29.477909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036311, 0.416084, -0.908601,
		0.319611, -0.856612, -0.405049,
		-0.946853, -0.305106, -0.101880,
		27.849846, 23.012819, 29.447344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485592, 22.894844, 28.879419>,  <28.512642, 23.226395, 29.518661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485592, 22.894844, 28.879419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.119879, 23.019852, 28.982506>,  <27.900450, 23.094856, 29.044357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.119879, 23.019852, 28.982506>,  <28.485592, 22.894844, 28.879419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119879, 23.019852, 28.982506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111876, 0.416653, -0.902155,
		-0.389318, -0.853658, -0.345976,
		-0.914284, 0.312519, 0.257714,
		27.845594, 23.113607, 29.059820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964283, 22.718855, 28.389782>,  <28.485592, 22.894844, 28.879419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964283, 22.718855, 28.389782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.769630, 23.021839, 28.563881>,  <27.652838, 23.203630, 28.668341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.769630, 23.021839, 28.563881>,  <27.964283, 22.718855, 28.389782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769630, 23.021839, 28.563881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127130, 0.431515, -0.893103,
		-0.864307, -0.489946, -0.113693,
		-0.486632, 0.757462, 0.435248,
		27.623640, 23.249077, 28.694456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363970, 22.757011, 28.085335>,  <27.964283, 22.718855, 28.389782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363970, 22.757011, 28.085335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.405113, 23.117844, 28.252987>,  <27.429798, 23.334343, 28.353579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.405113, 23.117844, 28.252987>,  <27.363970, 22.757011, 28.085335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405113, 23.117844, 28.252987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245982, 0.431346, -0.868005,
		-0.963802, -0.013818, 0.266263,
		0.102857, 0.902081, 0.419131,
		27.435970, 23.388468, 28.378727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800325, 23.123516, 27.819416>,  <27.363970, 22.757011, 28.085335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800325, 23.123516, 27.819416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.039841, 23.418861, 27.943531>,  <27.183550, 23.596067, 28.018000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.039841, 23.418861, 27.943531>,  <26.800325, 23.123516, 27.819416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039841, 23.418861, 27.943531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156609, 0.487882, -0.858746,
		-0.785448, 0.465612, 0.407771,
		0.598786, 0.738361, 0.310287,
		27.219477, 23.640369, 28.036617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457909, 23.690914, 27.747990>,  <26.800325, 23.123516, 27.819416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457909, 23.690914, 27.747990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.834070, 23.825764, 27.765831>,  <27.059767, 23.906673, 27.776537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.834070, 23.825764, 27.765831>,  <26.457909, 23.690914, 27.747990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834070, 23.825764, 27.765831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196774, 0.646431, -0.737161,
		-0.277349, 0.684451, 0.674243,
		0.940403, 0.337124, 0.044605,
		27.116192, 23.926901, 27.779213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388943, 24.457893, 27.866323>,  <26.457909, 23.690914, 27.747990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388943, 24.457893, 27.866323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.752184, 24.368240, 27.724838>,  <26.970129, 24.314449, 27.639948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.752184, 24.368240, 27.724838>,  <26.388943, 24.457893, 27.866323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752184, 24.368240, 27.724838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057766, 0.769571, -0.635943,
		0.414742, 0.597935, 0.685903,
		0.908104, -0.224130, -0.353714,
		27.024614, 24.301001, 27.618725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682793, 25.103996, 27.644831>,  <26.388943, 24.457893, 27.866323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682793, 25.103996, 27.644831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.931110, 24.847137, 27.464935>,  <27.080101, 24.693022, 27.356998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.931110, 24.847137, 27.464935>,  <26.682793, 25.103996, 27.644831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931110, 24.847137, 27.464935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159598, 0.458134, -0.874438,
		0.767556, 0.614623, 0.181923,
		0.620795, -0.642145, -0.449736,
		27.117350, 24.654493, 27.330015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122906, 25.492559, 27.329039>,  <26.682793, 25.103996, 27.644831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122906, 25.492559, 27.329039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.141665, 25.134178, 27.152374>,  <27.152920, 24.919149, 27.046375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.141665, 25.134178, 27.152374>,  <27.122906, 25.492559, 27.329039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141665, 25.134178, 27.152374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049235, 0.439538, -0.896873,
		0.997685, 0.063808, -0.023498,
		0.046899, -0.895954, -0.441662,
		27.155735, 24.865393, 27.019875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697458, 25.550592, 26.864668>,  <27.122906, 25.492559, 27.329039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697458, 25.550592, 26.864668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.437250, 25.265053, 26.760941>,  <27.281126, 25.093729, 26.698704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.437250, 25.265053, 26.760941>,  <27.697458, 25.550592, 26.864668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437250, 25.265053, 26.760941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059437, 0.388241, -0.919639,
		0.757161, -0.582828, -0.294987,
		-0.650518, -0.713848, -0.259320,
		27.242094, 25.050898, 26.683146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948074, 25.314978, 26.301815>,  <27.697458, 25.550592, 26.864668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948074, 25.314978, 26.301815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.556240, 25.235760, 26.287994>,  <27.321140, 25.188229, 26.279701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.556240, 25.235760, 26.287994>,  <27.948074, 25.314978, 26.301815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556240, 25.235760, 26.287994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053222, 0.421223, -0.905394,
		0.193862, -0.885071, -0.423163,
		-0.979584, -0.198043, -0.034553,
		27.262365, 25.176346, 26.277628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965595, 25.177956, 25.683834>,  <27.948074, 25.314978, 26.301815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965595, 25.177956, 25.683834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.571701, 25.221680, 25.738010>,  <27.335363, 25.247913, 25.770515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.571701, 25.221680, 25.738010>,  <27.965595, 25.177956, 25.683834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571701, 25.221680, 25.738010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054249, 0.546643, -0.835607,
		-0.165378, -0.830201, -0.532369,
		-0.984737, 0.109310, 0.135440,
		27.276279, 25.254473, 25.778643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629351, 24.978910, 25.008631>,  <27.965595, 25.177956, 25.683834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629351, 24.978910, 25.008631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.377716, 25.220375, 25.204525>,  <27.226734, 25.365253, 25.322062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.377716, 25.220375, 25.204525>,  <27.629351, 24.978910, 25.008631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377716, 25.220375, 25.204525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107960, 0.556064, -0.824098,
		-0.769800, -0.571303, -0.284642,
		-0.629089, 0.603661, 0.489736,
		27.188990, 25.401474, 25.351446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055014, 25.069424, 24.574377>,  <27.629351, 24.978910, 25.008631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055014, 25.069424, 24.574377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.025070, 25.382401, 24.821659>,  <27.007103, 25.570187, 24.970028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.025070, 25.382401, 24.821659>,  <27.055014, 25.069424, 24.574377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025070, 25.382401, 24.821659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240304, 0.587521, -0.772705,
		-0.967807, -0.206402, 0.144043,
		-0.074860, 0.782443, 0.618206,
		27.002613, 25.617134, 25.007120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.904911, 29.505199, 31.390867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.270863, 29.397835, 31.270229>,  <40.490433, 29.333416, 31.197847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.270863, 29.397835, 31.270229>,  <39.904911, 29.505199, 31.390867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270863, 29.397835, 31.270229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028871, 0.788585, -0.614247,
		0.402705, 0.553252, 0.729206,
		0.914874, -0.268414, -0.301594,
		40.545326, 29.317310, 31.179750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374664, 30.130095, 31.486544>,  <39.904911, 29.505199, 31.390867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374664, 30.130095, 31.486544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.530460, 29.877750, 31.218121>,  <40.623936, 29.726345, 31.057068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.530460, 29.877750, 31.218121>,  <40.374664, 30.130095, 31.486544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530460, 29.877750, 31.218121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180310, 0.766721, -0.616139,
		0.903210, 0.118979, 0.412378,
		0.389487, -0.630859, -0.671056,
		40.647308, 29.688492, 31.016804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880024, 30.522198, 31.192675>,  <40.374664, 30.130095, 31.486544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880024, 30.522198, 31.192675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818802, 30.249580, 30.906437>,  <40.782066, 30.086010, 30.734695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818802, 30.249580, 30.906437>,  <40.880024, 30.522198, 31.192675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818802, 30.249580, 30.906437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337503, 0.644534, -0.686053,
		0.928798, -0.346521, 0.131371,
		-0.153058, -0.681542, -0.715593,
		40.772884, 30.045118, 30.691759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418995, 30.546398, 30.718445>,  <40.880024, 30.522198, 31.192675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418995, 30.546398, 30.718445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.126621, 30.384300, 30.498806>,  <40.951195, 30.287043, 30.367022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.126621, 30.384300, 30.498806>,  <41.418995, 30.546398, 30.718445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126621, 30.384300, 30.498806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291894, 0.541647, -0.788300,
		0.616873, -0.736475, -0.277620,
		-0.730935, -0.405245, -0.549100,
		40.907341, 30.262728, 30.334076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737312, 30.312624, 30.100382>,  <41.418995, 30.546398, 30.718445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737312, 30.312624, 30.100382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.346256, 30.345367, 30.022911>,  <41.111622, 30.365013, 29.976429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.346256, 30.345367, 30.022911>,  <41.737312, 30.312624, 30.100382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346256, 30.345367, 30.022911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209325, 0.466034, -0.859649,
		0.019889, -0.880972, -0.472751,
		-0.977644, 0.081861, -0.193678,
		41.052963, 30.369926, 29.964808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767330, 30.219999, 29.411840>,  <41.737312, 30.312624, 30.100382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767330, 30.219999, 29.411840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.397251, 30.357365, 29.476429>,  <41.175201, 30.439783, 29.515182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.397251, 30.357365, 29.476429>,  <41.767330, 30.219999, 29.411840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397251, 30.357365, 29.476429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045936, 0.321028, -0.945955,
		-0.376691, -0.882614, -0.281240,
		-0.925199, 0.343414, 0.161473,
		41.119690, 30.460388, 29.524870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378212, 30.017385, 28.820467>,  <41.767330, 30.219999, 29.411840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378212, 30.017385, 28.820467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.166988, 30.327896, 28.958195>,  <41.040257, 30.514202, 29.040831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.166988, 30.327896, 28.958195>,  <41.378212, 30.017385, 28.820467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166988, 30.327896, 28.958195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160929, 0.306638, -0.938123,
		-0.833822, -0.550792, -0.036997,
		-0.528055, 0.776274, 0.344320,
		41.008572, 30.560778, 29.061491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854355, 30.128536, 28.299982>,  <41.378212, 30.017385, 28.820467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854355, 30.128536, 28.299982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.863144, 30.471142, 28.506245>,  <40.868416, 30.676704, 28.630003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.863144, 30.471142, 28.506245>,  <40.854355, 30.128536, 28.299982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863144, 30.471142, 28.506245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195759, 0.509485, -0.837916,
		-0.980406, -0.082533, 0.178865,
		0.021974, 0.856512, 0.515659,
		40.869736, 30.728096, 28.660942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214199, 30.459490, 28.120239>,  <40.854355, 30.128536, 28.299982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214199, 30.459490, 28.120239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476952, 30.730728, 28.252110>,  <40.634605, 30.893471, 28.331232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476952, 30.730728, 28.252110>,  <40.214199, 30.459490, 28.120239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476952, 30.730728, 28.252110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246305, 0.606241, -0.756178,
		-0.712625, 0.415522, 0.565249,
		0.656886, 0.678096, 0.329677,
		40.674019, 30.934156, 28.351013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842438, 31.095362, 28.021519>,  <40.214199, 30.459490, 28.120239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842438, 31.095362, 28.021519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.227066, 31.200314, 28.053844>,  <40.457844, 31.263285, 28.073240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.227066, 31.200314, 28.053844>,  <39.842438, 31.095362, 28.021519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227066, 31.200314, 28.053844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064477, 0.501945, -0.862493,
		-0.266864, 0.824141, 0.499575,
		0.961575, 0.262379, 0.080813,
		40.515537, 31.279028, 28.078089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847618, 31.601620, 27.584330>,  <39.842438, 31.095362, 28.021519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847618, 31.601620, 27.584330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.245201, 31.570789, 27.615593>,  <40.483749, 31.552292, 27.634352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.245201, 31.570789, 27.615593>,  <39.847618, 31.601620, 27.584330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245201, 31.570789, 27.615593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103070, 0.410388, -0.906067,
		0.037760, 0.908648, 0.415853,
		0.993957, -0.077075, 0.078158,
		40.543388, 31.547667, 27.639040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148983, 32.273758, 27.498817>,  <39.847618, 31.601620, 27.584330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148983, 32.273758, 27.498817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.450375, 32.019890, 27.430153>,  <40.631210, 31.867569, 27.388954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.450375, 32.019890, 27.430153>,  <40.148983, 32.273758, 27.498817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450375, 32.019890, 27.430153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241949, 0.510429, -0.825181,
		0.611339, 0.580220, 0.538154,
		0.753475, -0.634671, -0.171661,
		40.676418, 31.829489, 27.378654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837280, 32.702217, 27.329044>,  <40.148983, 32.273758, 27.498817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837280, 32.702217, 27.329044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.863857, 32.323338, 27.203568>,  <40.879803, 32.096012, 27.128281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.863857, 32.323338, 27.203568>,  <40.837280, 32.702217, 27.329044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863857, 32.323338, 27.203568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000376, 0.314413, -0.949286,
		0.997790, 0.062953, 0.021246,
		0.066441, -0.947197, -0.313694,
		40.883789, 32.039177, 27.109459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297462, 32.773697, 26.800171>,  <40.837280, 32.702217, 27.329044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297462, 32.773697, 26.800171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.081421, 32.447571, 26.716694>,  <40.951794, 32.251896, 26.666607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.081421, 32.447571, 26.716694>,  <41.297462, 32.773697, 26.800171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081421, 32.447571, 26.716694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026115, 0.231616, -0.972457,
		0.841192, -0.530679, -0.103805,
		-0.540106, -0.815312, -0.208692,
		40.919388, 32.202976, 26.654087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609570, 32.469139, 26.217739>,  <41.297462, 32.773697, 26.800171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609570, 32.469139, 26.217739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.268974, 32.259430, 26.213554>,  <41.064617, 32.133602, 26.211044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.268974, 32.259430, 26.213554>,  <41.609570, 32.469139, 26.217739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268974, 32.259430, 26.213554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061639, -0.080257, -0.994866,
		0.520747, -0.847757, 0.100654,
		-0.851483, -0.524277, -0.010461,
		41.013531, 32.102146, 26.210417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729591, 31.822758, 25.832775>,  <41.609570, 32.469139, 26.217739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729591, 31.822758, 25.832775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.336952, 31.898350, 25.843697>,  <41.101368, 31.943705, 25.850248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.336952, 31.898350, 25.843697>,  <41.729591, 31.822758, 25.832775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336952, 31.898350, 25.843697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033885, -0.031689, -0.998923,
		-0.187913, -0.981469, 0.037510,
		-0.981601, 0.188982, 0.027302,
		41.042473, 31.955044, 25.851887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431187, 31.369764, 25.394674>,  <41.729591, 31.822758, 25.832775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431187, 31.369764, 25.394674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.146763, 31.650337, 25.414211>,  <40.976109, 31.818682, 25.425934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.146763, 31.650337, 25.414211>,  <41.431187, 31.369764, 25.394674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146763, 31.650337, 25.414211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027129, 0.042045, -0.998747,
		-0.702608, -0.711494, -0.010867,
		-0.711060, 0.701433, 0.048843,
		40.933445, 31.860767, 25.428864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046818, 31.205362, 24.910767>,  <41.431187, 31.369764, 25.394674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046818, 31.205362, 24.910767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.913685, 31.577785, 24.970573>,  <40.833805, 31.801239, 25.006458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.913685, 31.577785, 24.970573>,  <41.046818, 31.205362, 24.910767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913685, 31.577785, 24.970573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036431, 0.145745, -0.988651,
		-0.942283, -0.334500, -0.014589,
		-0.332830, 0.931058, 0.149519,
		40.813835, 31.857103, 25.015429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355236, 31.186882, 24.597034>,  <41.046818, 31.205362, 24.910767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355236, 31.186882, 24.597034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.479362, 31.566818, 24.612583>,  <40.553837, 31.794779, 24.621912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.479362, 31.566818, 24.612583>,  <40.355236, 31.186882, 24.597034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479362, 31.566818, 24.612583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280898, 0.130683, -0.950799,
		-0.908186, 0.284126, 0.307360,
		0.310314, 0.949839, 0.038874,
		40.572456, 31.851770, 24.624245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836857, 31.576733, 24.312902>,  <40.355236, 31.186882, 24.597034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836857, 31.576733, 24.312902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.167042, 31.799850, 24.278309>,  <40.365150, 31.933722, 24.257553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.167042, 31.799850, 24.278309>,  <39.836857, 31.576733, 24.312902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167042, 31.799850, 24.278309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275927, 0.265085, -0.923902,
		-0.492422, 0.786507, 0.372728,
		0.825460, 0.557795, -0.086484,
		40.414680, 31.967190, 24.252363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585888, 32.156284, 24.179195>,  <39.836857, 31.576733, 24.312902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585888, 32.156284, 24.179195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.966312, 32.197929, 24.062824>,  <40.194569, 32.222916, 23.993002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.966312, 32.197929, 24.062824>,  <39.585888, 32.156284, 24.179195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966312, 32.197929, 24.062824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308966, 0.333282, -0.890766,
		0.004225, 0.937062, 0.349138,
		0.951064, 0.104108, -0.290928,
		40.251633, 32.229160, 23.975546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472328, 32.783363, 24.528959>,  <39.585888, 32.156284, 24.179195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472328, 32.783363, 24.528959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.077415, 32.821815, 24.478298>,  <38.840469, 32.844887, 24.447901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.077415, 32.821815, 24.478298>,  <39.472328, 32.783363, 24.528959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077415, 32.821815, 24.478298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125054, -0.961398, 0.245101,
		-0.098202, 0.257822, 0.961189,
		-0.987278, 0.096131, -0.126653,
		38.781231, 32.850655, 24.440302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176193, 32.524204, 25.148010>,  <39.472328, 32.783363, 24.528959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176193, 32.524204, 25.148010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.892281, 32.512905, 24.866470>,  <38.721931, 32.506126, 24.697546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.892281, 32.512905, 24.866470>,  <39.176193, 32.524204, 25.148010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892281, 32.512905, 24.866470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275411, -0.908531, 0.314198,
		-0.648346, 0.416862, 0.637081,
		-0.709785, -0.028250, -0.703851,
		38.679344, 32.504429, 24.655315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607258, 32.321114, 25.487049>,  <39.176193, 32.524204, 25.148010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607258, 32.321114, 25.487049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.510250, 32.246201, 25.106289>,  <38.452045, 32.201252, 24.877832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.510250, 32.246201, 25.106289>,  <38.607258, 32.321114, 25.487049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510250, 32.246201, 25.106289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357335, -0.894963, 0.267119,
		-0.901941, 0.404928, 0.150121,
		-0.242517, -0.187282, -0.951899,
		38.437496, 32.190018, 24.820719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943150, 32.152836, 25.516827>,  <38.607258, 32.321114, 25.487049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943150, 32.152836, 25.516827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.127975, 31.989319, 25.202023>,  <38.238873, 31.891209, 25.013140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.127975, 31.989319, 25.202023>,  <37.943150, 32.152836, 25.516827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127975, 31.989319, 25.202023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190136, -0.912453, 0.362322,
		-0.866223, -0.017779, -0.499342,
		0.462068, -0.408794, -0.787007,
		38.266594, 31.866680, 24.965919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550465, 31.534416, 25.411186>,  <37.943150, 32.152836, 25.516827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550465, 31.534416, 25.411186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.896473, 31.484928, 25.216690>,  <38.104076, 31.455236, 25.099993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.896473, 31.484928, 25.216690>,  <37.550465, 31.534416, 25.411186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896473, 31.484928, 25.216690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057386, -0.938366, 0.340846,
		-0.498441, -0.322743, -0.804608,
		0.865022, -0.123719, -0.486241,
		38.155979, 31.447813, 25.070818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519711, 30.841625, 25.153934>,  <37.550465, 31.534416, 25.411186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519711, 30.841625, 25.153934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.907093, 30.941231, 25.150307>,  <38.139523, 31.000994, 25.148130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.907093, 30.941231, 25.150307>,  <37.519711, 30.841625, 25.153934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907093, 30.941231, 25.150307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211918, -0.803942, 0.555668,
		0.131078, -0.540063, -0.831354,
		0.968457, 0.249015, -0.009070,
		38.197632, 31.015936, 25.147585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882782, 30.130779, 25.023470>,  <37.519711, 30.841625, 25.153934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882782, 30.130779, 25.023470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.162689, 30.370071, 25.179642>,  <38.330635, 30.513647, 25.273346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.162689, 30.370071, 25.179642>,  <37.882782, 30.130779, 25.023470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162689, 30.370071, 25.179642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404060, -0.782175, 0.474275,
		0.589112, -0.174127, -0.789067,
		0.699773, 0.598232, 0.390431,
		38.372620, 30.549541, 25.296772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468586, 29.691933, 24.883533>,  <37.882782, 30.130779, 25.023470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468586, 29.691933, 24.883533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.554230, 29.963531, 25.164425>,  <38.605618, 30.126490, 25.332960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.554230, 29.963531, 25.164425>,  <38.468586, 29.691933, 24.883533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554230, 29.963531, 25.164425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381604, -0.719913, 0.579745,
		0.899186, 0.143844, -0.413247,
		0.214109, 0.678995, 0.702227,
		38.618462, 30.167231, 25.375093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188629, 29.655706, 24.924423>,  <38.468586, 29.691933, 24.883533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188629, 29.655706, 24.924423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.030979, 29.820274, 25.253155>,  <38.936390, 29.919014, 25.450394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.030979, 29.820274, 25.253155>,  <39.188629, 29.655706, 24.924423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030979, 29.820274, 25.253155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452602, -0.691374, 0.563163,
		0.799888, 0.593916, 0.086275,
		-0.394120, 0.411419, 0.821829,
		38.912743, 29.943701, 25.499704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778412, 29.692669, 25.315006>,  <39.188629, 29.655706, 24.924423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778412, 29.692669, 25.315006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.461658, 29.697628, 25.559227>,  <39.271606, 29.700603, 25.705759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.461658, 29.697628, 25.559227>,  <39.778412, 29.692669, 25.315006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461658, 29.697628, 25.559227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427149, -0.703275, 0.568285,
		0.436430, 0.710810, 0.551614,
		-0.791879, 0.012396, 0.610552,
		39.224094, 29.701347, 25.742393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054424, 29.555664, 25.977564>,  <39.778412, 29.692669, 25.315006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054424, 29.555664, 25.977564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.667797, 29.491638, 26.057686>,  <39.435822, 29.453222, 26.105759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.667797, 29.491638, 26.057686>,  <40.054424, 29.555664, 25.977564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667797, 29.491638, 26.057686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254039, -0.703659, 0.663572,
		0.034730, 0.692274, 0.720798,
		-0.966570, -0.160065, 0.200303,
		39.377827, 29.443619, 26.117777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053898, 29.652777, 26.676146>,  <40.054424, 29.555664, 25.977564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053898, 29.652777, 26.676146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.747158, 29.420891, 26.565964>,  <39.563114, 29.281759, 26.499855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.747158, 29.420891, 26.565964>,  <40.053898, 29.652777, 26.676146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747158, 29.420891, 26.565964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114600, -0.545945, 0.829946,
		-0.631517, 0.604874, 0.485092,
		-0.766846, -0.579717, -0.275455,
		39.517105, 29.246975, 26.483328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660439, 29.591444, 27.268759>,  <40.053898, 29.652777, 26.676146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660439, 29.591444, 27.268759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.543663, 29.282562, 27.043026>,  <39.473598, 29.097233, 26.907585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.543663, 29.282562, 27.043026>,  <39.660439, 29.591444, 27.268759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543663, 29.282562, 27.043026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027366, -0.596541, 0.802116,
		-0.956044, 0.218728, 0.195288,
		-0.291942, -0.772203, -0.564334,
		39.456081, 29.050901, 26.873726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162437, 29.236881, 27.665262>,  <39.660439, 29.591444, 27.268759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162437, 29.236881, 27.665262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281296, 28.977005, 27.385376>,  <39.352612, 28.821079, 27.217443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281296, 28.977005, 27.385376>,  <39.162437, 29.236881, 27.665262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281296, 28.977005, 27.385376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064268, -0.717546, 0.693540,
		-0.952666, -0.251053, -0.171462,
		0.297147, -0.649693, -0.699717,
		39.370441, 28.782097, 27.175461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672344, 28.741690, 27.617264>,  <39.162437, 29.236881, 27.665262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672344, 28.741690, 27.617264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.021198, 28.594578, 27.488190>,  <39.230511, 28.506311, 27.410746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.021198, 28.594578, 27.488190>,  <38.672344, 28.741690, 27.617264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021198, 28.594578, 27.488190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069225, -0.745641, 0.662742,
		-0.484350, -0.555660, -0.675757,
		0.872132, -0.367778, -0.322686,
		39.282837, 28.484243, 27.391384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500896, 28.059586, 27.685486>,  <38.672344, 28.741690, 27.617264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500896, 28.059586, 27.685486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.899654, 28.071804, 27.656467>,  <39.138908, 28.079136, 27.639057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.899654, 28.071804, 27.656467>,  <38.500896, 28.059586, 27.685486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899654, 28.071804, 27.656467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071482, -0.737216, 0.671865,
		-0.032957, -0.674966, -0.737112,
		0.996897, 0.030548, -0.072544,
		39.198723, 28.080969, 27.634705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701130, 27.412388, 27.740103>,  <38.500896, 28.059586, 27.685486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701130, 27.412388, 27.740103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.053467, 27.587185, 27.812931>,  <39.264870, 27.692064, 27.856628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.053467, 27.587185, 27.812931>,  <38.701130, 27.412388, 27.740103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053467, 27.587185, 27.812931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148136, -0.619714, 0.770721,
		0.449634, -0.651913, -0.610606,
		0.880844, 0.436995, 0.182072,
		39.317719, 27.718283, 27.867552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258331, 26.839411, 27.785316>,  <38.701130, 27.412388, 27.740103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258331, 26.839411, 27.785316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.367085, 27.165634, 27.989647>,  <39.432339, 27.361368, 28.112246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.367085, 27.165634, 27.989647>,  <39.258331, 26.839411, 27.785316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367085, 27.165634, 27.989647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204363, -0.567649, 0.797502,
		0.940380, -0.112436, -0.321005,
		0.271886, 0.815557, 0.510828,
		39.448650, 27.410301, 28.142895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760517, 26.494154, 28.134930>,  <39.258331, 26.839411, 27.785316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760517, 26.494154, 28.134930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.767376, 26.845348, 28.326283>,  <39.771492, 27.056065, 28.441093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.767376, 26.845348, 28.326283>,  <39.760517, 26.494154, 28.134930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767376, 26.845348, 28.326283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315248, -0.458796, 0.830738,
		0.948854, 0.136560, -0.284652,
		0.017152, 0.877985, 0.478380,
		39.772522, 27.108744, 28.469797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419044, 26.523857, 28.465120>,  <39.760517, 26.494154, 28.134930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419044, 26.523857, 28.465120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.156189, 26.738316, 28.677052>,  <39.998478, 26.866991, 28.804211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.156189, 26.738316, 28.677052>,  <40.419044, 26.523857, 28.465120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156189, 26.738316, 28.677052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236484, -0.520772, 0.820288,
		0.715715, 0.664337, 0.215428,
		-0.657136, 0.536147, 0.529829,
		39.959049, 26.899160, 28.836000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734444, 26.584805, 29.041088>,  <40.419044, 26.523857, 28.465120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734444, 26.584805, 29.041088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.357803, 26.666698, 29.148026>,  <40.131821, 26.715834, 29.212189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.357803, 26.666698, 29.148026>,  <40.734444, 26.584805, 29.041088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357803, 26.666698, 29.148026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129344, -0.513126, 0.848512,
		0.310899, 0.833539, 0.456678,
		-0.941601, 0.204733, 0.267344,
		40.075325, 26.728119, 29.228230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<25.071215, 24.970860, 31.034679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.375921, 25.198235, 31.158993>,  <25.558746, 25.334660, 31.233582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.375921, 25.198235, 31.158993>,  <25.071215, 24.970860, 31.034679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.375921, 25.198235, 31.158993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281514, -0.722499, 0.631462,
		0.583489, -0.393538, -0.710401,
		0.761768, 0.568439, 0.310784,
		25.604452, 25.368767, 31.252228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719109, 24.592974, 31.055624>,  <25.071215, 24.970860, 31.034679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719109, 24.592974, 31.055624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.722570, 24.892529, 31.320679>,  <25.724648, 25.072262, 31.479712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.722570, 24.892529, 31.320679>,  <25.719109, 24.592974, 31.055624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722570, 24.892529, 31.320679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222982, -0.647423, 0.728782,
		0.974784, 0.141451, -0.172591,
		0.008652, 0.748889, 0.662639,
		25.725166, 25.117195, 31.519470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289406, 24.430550, 31.410070>,  <25.719109, 24.592974, 31.055624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289406, 24.430550, 31.410070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.081749, 24.693554, 31.628490>,  <25.957155, 24.851357, 31.759542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.081749, 24.693554, 31.628490>,  <26.289406, 24.430550, 31.410070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081749, 24.693554, 31.628490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170924, -0.546115, 0.820088,
		0.837422, 0.519075, 0.171127,
		-0.519142, 0.657510, 0.546051,
		25.926006, 24.890806, 31.792305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687557, 24.502068, 31.986446>,  <26.289406, 24.430550, 31.410070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687557, 24.502068, 31.986446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.325615, 24.627602, 32.101509>,  <26.108450, 24.702923, 32.170547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.325615, 24.627602, 32.101509>,  <26.687557, 24.502068, 31.986446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325615, 24.627602, 32.101509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075063, -0.547491, 0.833438,
		0.419051, 0.775732, 0.471842,
		-0.904854, 0.313835, 0.287655,
		26.054159, 24.721752, 32.187805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777954, 24.420782, 32.648773>,  <26.687557, 24.502068, 31.986446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777954, 24.420782, 32.648773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.384394, 24.481148, 32.610485>,  <26.148258, 24.517366, 32.587513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.384394, 24.481148, 32.610485>,  <26.777954, 24.420782, 32.648773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384394, 24.481148, 32.610485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164631, -0.557014, 0.814022,
		0.069529, 0.816677, 0.572892,
		-0.983902, 0.150914, -0.095722,
		26.089224, 24.526423, 32.581768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527851, 24.703592, 33.307938>,  <26.777954, 24.420782, 32.648773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527851, 24.703592, 33.307938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.242666, 24.494370, 33.121132>,  <26.071556, 24.368835, 33.009048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.242666, 24.494370, 33.121132>,  <26.527851, 24.703592, 33.307938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242666, 24.494370, 33.121132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057258, -0.620363, 0.782223,
		-0.698861, 0.584435, 0.412346,
		-0.712962, -0.523055, -0.467011,
		26.028778, 24.337454, 32.981030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125418, 24.556938, 33.796543>,  <26.527851, 24.703592, 33.307938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125418, 24.556938, 33.796543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.048239, 24.287266, 33.511375>,  <26.001932, 24.125462, 33.340275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.048239, 24.287266, 33.511375>,  <26.125418, 24.556938, 33.796543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048239, 24.287266, 33.511375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025687, -0.722849, 0.690529,
		-0.980873, 0.151549, 0.122155,
		-0.192948, -0.674183, -0.712915,
		25.990355, 24.085011, 33.297501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587387, 24.129698, 34.039856>,  <26.125418, 24.556938, 33.796543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587387, 24.129698, 34.039856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.735069, 23.922131, 33.731464>,  <25.823679, 23.797590, 33.546429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.735069, 23.922131, 33.731464>,  <25.587387, 24.129698, 34.039856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735069, 23.922131, 33.731464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172427, -0.853439, 0.491844,
		-0.913212, -0.048654, -0.404570,
		0.369206, -0.518916, -0.770982,
		25.845831, 23.766457, 33.500172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255737, 23.569958, 34.120861>,  <25.587387, 24.129698, 34.039856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255737, 23.569958, 34.120861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.555950, 23.479740, 33.872398>,  <25.736078, 23.425610, 33.723320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.555950, 23.479740, 33.872398>,  <25.255737, 23.569958, 34.120861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555950, 23.479740, 33.872398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107319, -0.885876, 0.451338,
		-0.652060, -0.405406, -0.640675,
		0.750533, -0.225543, -0.621152,
		25.781111, 23.412077, 33.686054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167429, 22.882219, 33.912159>,  <25.255737, 23.569958, 34.120861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167429, 22.882219, 33.912159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.554789, 22.969826, 33.864441>,  <25.787205, 23.022390, 33.835812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.554789, 22.969826, 33.864441>,  <25.167429, 22.882219, 33.912159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554789, 22.969826, 33.864441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249397, -0.849798, 0.464375,
		0.000331, -0.479453, -0.877567,
		0.968401, 0.219017, -0.119293,
		25.845308, 23.035530, 33.828651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396139, 22.213816, 33.862171>,  <25.167429, 22.882219, 33.912159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396139, 22.213816, 33.862171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.732637, 22.422001, 33.920727>,  <25.934536, 22.546911, 33.955860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.732637, 22.422001, 33.920727>,  <25.396139, 22.213816, 33.862171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732637, 22.422001, 33.920727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399867, -0.781177, 0.479447,
		0.363890, -0.344795, -0.865275,
		0.841244, 0.520461, 0.146390,
		25.985010, 22.578138, 33.964645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968817, 21.695305, 33.815216>,  <25.396139, 22.213816, 33.862171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968817, 21.695305, 33.815216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.126236, 22.007626, 34.009319>,  <26.220688, 22.195017, 34.125782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.126236, 22.007626, 34.009319>,  <25.968817, 21.695305, 33.815216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126236, 22.007626, 34.009319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512986, -0.624545, 0.588888,
		0.762867, 0.017173, -0.646327,
		0.393548, 0.780800, 0.485255,
		26.244301, 22.241865, 34.154896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598442, 21.243139, 34.292213>,  <25.968817, 21.695305, 33.815216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.598442, 21.243139, 34.292213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.966072, 21.261284, 34.135632>,  <26.186651, 21.272171, 34.041683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.966072, 21.261284, 34.135632>,  <25.598442, 21.243139, 34.292213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966072, 21.261284, 34.135632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326329, -0.644485, 0.691483,
		-0.220923, -0.763270, -0.607134,
		0.919077, 0.045361, -0.391459,
		26.241795, 21.274893, 34.018192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943892, 20.662626, 34.318119>,  <25.598442, 21.243139, 34.292213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943892, 20.662626, 34.318119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.259592, 20.907021, 34.342724>,  <26.449013, 21.053658, 34.357487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.259592, 20.907021, 34.342724>,  <25.943892, 20.662626, 34.318119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259592, 20.907021, 34.342724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395899, -0.582854, 0.709610,
		0.469414, -0.535706, -0.701905,
		0.789250, 0.610984, 0.061514,
		26.496367, 21.090315, 34.361179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588852, 20.154119, 34.273582>,  <25.943892, 20.662626, 34.318119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588852, 20.154119, 34.273582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.864742, 19.942436, 34.075909>,  <27.030275, 19.815426, 33.957306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.864742, 19.942436, 34.075909>,  <26.588852, 20.154119, 34.273582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864742, 19.942436, 34.075909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004398, 0.679433, -0.733724,
		0.724059, 0.508241, 0.466294,
		0.689724, -0.529208, -0.494185,
		27.071659, 19.783674, 33.927654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118574, 20.653479, 34.092064>,  <26.588852, 20.154119, 34.273582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118574, 20.653479, 34.092064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.183714, 20.336506, 33.856937>,  <27.222797, 20.146322, 33.715862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.183714, 20.336506, 33.856937>,  <27.118574, 20.653479, 34.092064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183714, 20.336506, 33.856937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159804, 0.609089, -0.776835,
		0.973624, 0.032570, 0.225823,
		0.162848, -0.792432, -0.587819,
		27.232569, 20.098776, 33.680592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617531, 20.802818, 33.722439>,  <27.118574, 20.653479, 34.092064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617531, 20.802818, 33.722439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.460264, 20.516609, 33.491459>,  <27.365904, 20.344883, 33.352871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.460264, 20.516609, 33.491459>,  <27.617531, 20.802818, 33.722439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460264, 20.516609, 33.491459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164403, 0.563195, -0.809804,
		0.904650, -0.413322, -0.103796,
		-0.393167, -0.715525, -0.577445,
		27.342314, 20.301952, 33.318226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036987, 20.767733, 33.120590>,  <27.617531, 20.802818, 33.722439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036987, 20.767733, 33.120590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.730082, 20.548523, 32.987339>,  <27.545938, 20.416998, 32.907387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.730082, 20.548523, 32.987339>,  <28.036987, 20.767733, 33.120590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730082, 20.548523, 32.987339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162702, 0.336114, -0.927661,
		0.620352, -0.765961, -0.168724,
		-0.767263, -0.548025, -0.333132,
		27.499903, 20.384115, 32.887398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273962, 20.453739, 32.578743>,  <28.036987, 20.767733, 33.120590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273962, 20.453739, 32.578743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.877514, 20.486198, 32.536613>,  <27.639645, 20.505674, 32.511337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.877514, 20.486198, 32.536613>,  <28.273962, 20.453739, 32.578743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877514, 20.486198, 32.536613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129803, 0.418926, -0.898695,
		-0.028806, -0.904387, -0.425740,
		-0.991121, 0.081150, -0.105325,
		27.580177, 20.510544, 32.505016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141481, 20.253359, 31.874567>,  <28.273962, 20.453739, 32.578743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141481, 20.253359, 31.874567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.819006, 20.463737, 31.982967>,  <27.625521, 20.589964, 32.048008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.819006, 20.463737, 31.982967>,  <28.141481, 20.253359, 31.874567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819006, 20.463737, 31.982967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013640, 0.441393, -0.897210,
		-0.591503, -0.727016, -0.348671,
		-0.806187, 0.525947, 0.271002,
		27.577150, 20.621521, 32.064266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578365, 20.118752, 31.393890>,  <28.141481, 20.253359, 31.874567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578365, 20.118752, 31.393890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.506069, 20.466953, 31.577000>,  <27.462692, 20.675875, 31.686865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.506069, 20.466953, 31.577000>,  <27.578365, 20.118752, 31.393890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506069, 20.466953, 31.577000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010803, 0.467168, -0.884103,
		-0.983472, -0.154846, -0.093839,
		-0.180739, 0.870504, 0.457774,
		27.451847, 20.728104, 31.714333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243008, 20.443836, 30.892433>,  <27.578365, 20.118752, 31.393890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243008, 20.443836, 30.892433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.322252, 20.734821, 31.155205>,  <27.369799, 20.909412, 31.312868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.322252, 20.734821, 31.155205>,  <27.243008, 20.443836, 30.892433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322252, 20.734821, 31.155205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148078, 0.640306, -0.753711,
		-0.968930, 0.246594, 0.019130,
		0.198110, 0.727461, 0.656927,
		27.381685, 20.953060, 31.352283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841619, 20.894054, 30.646532>,  <27.243008, 20.443836, 30.892433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841619, 20.894054, 30.646532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.122463, 21.086979, 30.856071>,  <27.290970, 21.202734, 30.981796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.122463, 21.086979, 30.856071>,  <26.841619, 20.894054, 30.646532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122463, 21.086979, 30.856071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024832, 0.718642, -0.694937,
		-0.711635, 0.500931, 0.492589,
		0.702110, 0.482309, 0.523850,
		27.333096, 21.231672, 31.013226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613764, 21.573923, 30.784424>,  <26.841619, 20.894054, 30.646532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613764, 21.573923, 30.784424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.013288, 21.588074, 30.797852>,  <27.253002, 21.596565, 30.805908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.013288, 21.588074, 30.797852>,  <26.613764, 21.573923, 30.784424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013288, 21.588074, 30.797852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012808, 0.854445, -0.519384,
		-0.047059, 0.518336, 0.853881,
		0.998810, 0.035378, 0.033570,
		27.312931, 21.598686, 30.807922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668314, 22.298756, 30.903517>,  <26.613764, 21.573923, 30.784424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668314, 22.298756, 30.903517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.017654, 22.142998, 30.786465>,  <27.227259, 22.049543, 30.716234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.017654, 22.142998, 30.786465>,  <26.668314, 22.298756, 30.903517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017654, 22.142998, 30.786465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181953, 0.818077, -0.545566,
		0.451834, 0.423225, 0.785319,
		0.873349, -0.389396, -0.292628,
		27.279659, 22.026178, 30.698677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231958, 22.761496, 30.928669>,  <26.668314, 22.298756, 30.903517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231958, 22.761496, 30.928669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.373959, 22.519821, 30.643311>,  <27.459158, 22.374817, 30.472095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.373959, 22.519821, 30.643311>,  <27.231958, 22.761496, 30.928669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373959, 22.519821, 30.643311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274197, 0.796829, -0.538404,
		0.893752, -0.004478, 0.448540,
		0.354998, -0.604188, -0.713395,
		27.480457, 22.338564, 30.429293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644485, 23.167316, 30.617651>,  <27.231958, 22.761496, 30.928669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644485, 23.167316, 30.617651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.622433, 22.862354, 30.359753>,  <27.609201, 22.679377, 30.205013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.622433, 22.862354, 30.359753>,  <27.644485, 23.167316, 30.617651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622433, 22.862354, 30.359753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255777, 0.613399, -0.747208,
		0.965162, -0.206106, 0.161189,
		-0.055130, -0.762405, -0.644747,
		27.605894, 22.633633, 30.166328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279488, 23.179955, 30.215845>,  <27.644485, 23.167316, 30.617651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279488, 23.179955, 30.215845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.991039, 22.985455, 30.018444>,  <27.817970, 22.868753, 29.900003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.991039, 22.985455, 30.018444>,  <28.279488, 23.179955, 30.215845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991039, 22.985455, 30.018444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130929, 0.603839, -0.786280,
		0.680330, -0.631614, -0.371773,
		-0.721116, -0.486254, -0.493506,
		27.774704, 22.839579, 29.870392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864557, 22.681929, 30.270679>,  <28.279488, 23.179955, 30.215845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864557, 22.681929, 30.270679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.258539, 22.736565, 30.313023>,  <29.494928, 22.769346, 30.338428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.258539, 22.736565, 30.313023>,  <28.864557, 22.681929, 30.270679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258539, 22.736565, 30.313023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015724, -0.680876, 0.732230,
		0.172090, -0.719549, -0.672781,
		0.984956, 0.136588, 0.105858,
		29.554026, 22.777540, 30.344780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159569, 22.017145, 30.514040>,  <28.864557, 22.681929, 30.270679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159569, 22.017145, 30.514040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.435249, 22.295620, 30.594364>,  <29.600657, 22.462706, 30.642559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.435249, 22.295620, 30.594364>,  <29.159569, 22.017145, 30.514040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435249, 22.295620, 30.594364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211783, -0.458594, 0.863040,
		0.692929, -0.552280, -0.463504,
		0.689200, 0.696188, 0.200810,
		29.642010, 22.504477, 30.654608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688173, 21.646383, 30.839521>,  <29.159569, 22.017145, 30.514040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688173, 21.646383, 30.839521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.745247, 22.030537, 30.935276>,  <29.779491, 22.261028, 30.992729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.745247, 22.030537, 30.935276>,  <29.688173, 21.646383, 30.839521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745247, 22.030537, 30.935276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268317, -0.270337, 0.924621,
		0.952706, -0.067697, -0.296259,
		0.142684, 0.960383, 0.239387,
		29.788052, 22.318651, 31.007092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191933, 21.606745, 31.262327>,  <29.688173, 21.646383, 30.839521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191933, 21.606745, 31.262327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.028835, 21.964211, 31.337273>,  <29.930977, 22.178690, 31.382240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.028835, 21.964211, 31.337273>,  <30.191933, 21.606745, 31.262327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028835, 21.964211, 31.337273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011149, -0.210052, 0.977627,
		0.913028, 0.396534, 0.095611,
		-0.407745, 0.893666, 0.187362,
		29.906511, 22.232311, 31.393480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642614, 21.931921, 31.702803>,  <30.191933, 21.606745, 31.262327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642614, 21.931921, 31.702803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289194, 22.099197, 31.787136>,  <30.077141, 22.199562, 31.837736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289194, 22.099197, 31.787136>,  <30.642614, 21.931921, 31.702803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289194, 22.099197, 31.787136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120820, -0.231411, 0.965324,
		0.452479, 0.878388, 0.153939,
		-0.883553, 0.418190, 0.210836,
		30.024128, 22.224655, 31.850388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826649, 22.409243, 32.326992>,  <30.642614, 21.931921, 31.702803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826649, 22.409243, 32.326992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.427794, 22.379261, 32.330982>,  <30.188480, 22.361273, 32.333378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.427794, 22.379261, 32.330982>,  <30.826649, 22.409243, 32.326992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427794, 22.379261, 32.330982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029361, -0.262191, 0.964569,
		-0.069682, 0.962101, 0.263641,
		-0.997137, -0.074954, 0.009978,
		30.128653, 22.356775, 32.333977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575844, 22.802179, 32.910667>,  <30.826649, 22.409243, 32.326992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575844, 22.802179, 32.910667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.280827, 22.544567, 32.829422>,  <30.103817, 22.389999, 32.780674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.280827, 22.544567, 32.829422>,  <30.575844, 22.802179, 32.910667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280827, 22.544567, 32.829422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077269, -0.218318, 0.972814,
		-0.670867, 0.733185, 0.111255,
		-0.737541, -0.644032, -0.203115,
		30.059565, 22.351357, 32.768486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178268, 23.185043, 33.390102>,  <30.575844, 22.802179, 32.910667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178268, 23.185043, 33.390102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.340244, 23.485191, 33.599091>,  <30.437429, 23.665279, 33.724483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.340244, 23.485191, 33.599091>,  <30.178268, 23.185043, 33.390102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340244, 23.485191, 33.599091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094008, 0.602550, -0.792525,
		-0.909499, 0.271807, 0.314536,
		0.404938, 0.750369, 0.522467,
		30.461725, 23.710302, 33.755829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721561, 23.843470, 33.358917>,  <30.178268, 23.185043, 33.390102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721561, 23.843470, 33.358917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079058, 23.990280, 33.462086>,  <30.293554, 24.078365, 33.523987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079058, 23.990280, 33.462086>,  <29.721561, 23.843470, 33.358917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079058, 23.990280, 33.462086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055933, 0.661656, -0.747719,
		-0.445087, 0.653839, 0.611876,
		0.893739, 0.367024, 0.257923,
		30.347179, 24.100388, 33.539463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555609, 24.564041, 33.339931>,  <29.721561, 23.843470, 33.358917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555609, 24.564041, 33.339931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.948822, 24.517349, 33.283333>,  <30.184750, 24.489334, 33.249374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.948822, 24.517349, 33.283333>,  <29.555609, 24.564041, 33.339931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948822, 24.517349, 33.283333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011125, 0.732032, -0.681179,
		0.183095, 0.671195, 0.718313,
		0.983032, -0.116729, -0.141498,
		30.243732, 24.482330, 33.240883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812990, 25.243473, 33.477894>,  <29.555609, 24.564041, 33.339931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812990, 25.243473, 33.477894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.069864, 25.038582, 33.249779>,  <30.223988, 24.915648, 33.112911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.069864, 25.038582, 33.249779>,  <29.812990, 25.243473, 33.477894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069864, 25.038582, 33.249779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075566, 0.782640, -0.617871,
		0.762817, 0.353692, 0.541306,
		0.642184, -0.512227, -0.570284,
		30.262520, 24.884914, 33.078693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313713, 25.660446, 33.254303>,  <29.812990, 25.243473, 33.477894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313713, 25.660446, 33.254303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.388950, 25.374680, 32.984715>,  <30.434092, 25.203220, 32.822964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.388950, 25.374680, 32.984715>,  <30.313713, 25.660446, 33.254303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388950, 25.374680, 32.984715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127190, 0.698155, -0.704558,
		0.973881, 0.046799, 0.222184,
		0.188091, -0.714415, -0.673968,
		30.445377, 25.160355, 32.782524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682459, 25.960766, 32.723328>,  <30.313713, 25.660446, 33.254303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682459, 25.960766, 32.723328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.632202, 25.615185, 32.528267>,  <30.602049, 25.407837, 32.411232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.632202, 25.615185, 32.528267>,  <30.682459, 25.960766, 32.723328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632202, 25.615185, 32.528267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145793, 0.502285, -0.852323,
		0.981305, -0.035990, -0.189065,
		-0.125639, -0.863953, -0.487647,
		30.594511, 25.355999, 32.381973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142361, 25.960632, 32.095081>,  <30.682459, 25.960766, 32.723328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142361, 25.960632, 32.095081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.828798, 25.718586, 32.039478>,  <30.640661, 25.573359, 32.006115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.828798, 25.718586, 32.039478>,  <31.142361, 25.960632, 32.095081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828798, 25.718586, 32.039478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137947, 0.388041, -0.911260,
		0.605361, -0.695166, -0.387662,
		-0.783906, -0.605118, -0.139009,
		30.593626, 25.537050, 31.997776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.069708, 25.149204, 36.080662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.042603, 24.876072, 35.789692>,  <27.026339, 24.712193, 35.615108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.042603, 24.876072, 35.789692>,  <27.069708, 25.149204, 36.080662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042603, 24.876072, 35.789692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188813, 0.707152, -0.681385,
		0.979672, -0.183521, 0.081008,
		-0.067764, -0.682829, -0.727429,
		27.022274, 24.671223, 35.571465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648422, 25.267584, 35.680286>,  <27.069708, 25.149204, 36.080662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648422, 25.267584, 35.680286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.392708, 25.072330, 35.442619>,  <27.239279, 24.955177, 35.300018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.392708, 25.072330, 35.442619>,  <27.648422, 25.267584, 35.680286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392708, 25.072330, 35.442619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320491, 0.533241, -0.782904,
		0.699000, -0.690925, -0.184450,
		-0.639284, -0.488136, -0.594171,
		27.200922, 24.925890, 35.264366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085600, 24.983698, 35.213795>,  <27.648422, 25.267584, 35.680286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085600, 24.983698, 35.213795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.713953, 25.024364, 35.071579>,  <27.490965, 25.048763, 34.986252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.713953, 25.024364, 35.071579>,  <28.085600, 24.983698, 35.213795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713953, 25.024364, 35.071579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353156, 0.529044, -0.771617,
		0.109648, -0.842482, -0.527447,
		-0.929117, 0.101665, -0.355537,
		27.435219, 25.054865, 34.964916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113129, 24.886600, 34.538197>,  <28.085600, 24.983698, 35.213795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113129, 24.886600, 34.538197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.758814, 25.066013, 34.585857>,  <27.546225, 25.173660, 34.614452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.758814, 25.066013, 34.585857>,  <28.113129, 24.886600, 34.538197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758814, 25.066013, 34.585857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153117, 0.524820, -0.837328,
		-0.438101, -0.723452, -0.533558,
		-0.885789, 0.448531, 0.119151,
		27.493076, 25.200573, 34.621601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873919, 24.937201, 33.807732>,  <28.113129, 24.886600, 34.538197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873919, 24.937201, 33.807732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.643187, 25.199852, 34.002098>,  <27.504747, 25.357443, 34.118717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.643187, 25.199852, 34.002098>,  <27.873919, 24.937201, 33.807732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643187, 25.199852, 34.002098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084706, 0.543562, -0.835084,
		-0.812462, -0.522859, -0.257921,
		-0.576828, 0.656627, 0.485913,
		27.470139, 25.396839, 34.147873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252869, 25.098232, 33.358440>,  <27.873919, 24.937201, 33.807732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252869, 25.098232, 33.358440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.290545, 25.417202, 33.596851>,  <27.313150, 25.608583, 33.739899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.290545, 25.417202, 33.596851>,  <27.252869, 25.098232, 33.358440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290545, 25.417202, 33.596851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263266, 0.597324, -0.757559,
		-0.960114, -0.085559, 0.266196,
		0.094189, 0.797423, 0.596024,
		27.318802, 25.656429, 33.775658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600937, 25.517332, 33.180439>,  <27.252869, 25.098232, 33.358440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600937, 25.517332, 33.180439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.851463, 25.757923, 33.378811>,  <27.001780, 25.902279, 33.497833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.851463, 25.757923, 33.378811>,  <26.600937, 25.517332, 33.180439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851463, 25.757923, 33.378811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190034, 0.734772, -0.651151,
		-0.756052, 0.313582, 0.574501,
		0.626317, 0.601479, 0.495935,
		27.039358, 25.938366, 33.527592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204487, 26.144861, 33.343056>,  <26.600937, 25.517332, 33.180439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204487, 26.144861, 33.343056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.586721, 26.262241, 33.353924>,  <26.816063, 26.332670, 33.360443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.586721, 26.262241, 33.353924>,  <26.204487, 26.144861, 33.343056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586721, 26.262241, 33.353924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225989, 0.788814, -0.571578,
		-0.189160, 0.540054, 0.820098,
		0.955588, 0.293453, 0.027166,
		26.873398, 26.350277, 33.362072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163269, 26.835001, 33.268894>,  <26.204487, 26.144861, 33.343056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163269, 26.835001, 33.268894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.559814, 26.804298, 33.226368>,  <26.797743, 26.785877, 33.200851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.559814, 26.804298, 33.226368>,  <26.163269, 26.835001, 33.268894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559814, 26.804298, 33.226368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010536, 0.854785, -0.518876,
		0.130705, 0.513275, 0.848213,
		0.991365, -0.076756, -0.106317,
		26.857224, 26.781271, 33.194473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463039, 27.437054, 33.640110>,  <26.163269, 26.835001, 33.268894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463039, 27.437054, 33.640110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.734749, 27.303371, 33.378761>,  <26.897774, 27.223162, 33.221951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.734749, 27.303371, 33.378761>,  <26.463039, 27.437054, 33.640110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734749, 27.303371, 33.378761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107709, 0.926049, -0.361707,
		0.725939, 0.175324, 0.665038,
		0.679273, -0.334207, -0.653371,
		26.938530, 27.203110, 33.182751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041904, 27.847740, 33.703533>,  <26.463039, 27.437054, 33.640110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041904, 27.847740, 33.703533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.077904, 27.667210, 33.348408>,  <27.099503, 27.558891, 33.135334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.077904, 27.667210, 33.348408>,  <27.041904, 27.847740, 33.703533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077904, 27.667210, 33.348408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192779, 0.882462, -0.429064,
		0.977106, -0.132538, 0.166424,
		0.089996, -0.451325, -0.887810,
		27.104902, 27.531813, 33.082066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722456, 28.008535, 33.525509>,  <27.041904, 27.847740, 33.703533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722456, 28.008535, 33.525509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.516491, 27.916798, 33.195110>,  <27.392912, 27.861755, 32.996872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.516491, 27.916798, 33.195110>,  <27.722456, 28.008535, 33.525509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516491, 27.916798, 33.195110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213772, 0.898754, -0.382809,
		0.830161, -0.373687, -0.413752,
		-0.514912, -0.229345, -0.825995,
		27.362019, 27.847994, 32.947311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468359, 27.915283, 33.412823>,  <27.722456, 28.008535, 33.525509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468359, 27.915283, 33.412823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.785461, 28.042942, 33.620548>,  <28.975723, 28.119537, 33.745182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.785461, 28.042942, 33.620548>,  <28.468359, 27.915283, 33.412823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785461, 28.042942, 33.620548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014240, -0.842044, 0.539221,
		0.609374, -0.434865, -0.662990,
		0.792755, 0.319146, 0.519312,
		29.023289, 28.138685, 33.776340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828106, 27.381338, 33.471333>,  <28.468359, 27.915283, 33.412823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828106, 27.381338, 33.471333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.953537, 27.609127, 33.775272>,  <29.028795, 27.745800, 33.957638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.953537, 27.609127, 33.775272>,  <28.828106, 27.381338, 33.471333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953537, 27.609127, 33.775272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078480, -0.781929, 0.618408,
		0.946314, -0.253551, -0.200502,
		0.313576, 0.569473, 0.759849,
		29.047609, 27.779968, 34.003227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313848, 27.061569, 33.807579>,  <28.828106, 27.381338, 33.471333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313848, 27.061569, 33.807579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.202005, 27.327755, 34.084412>,  <29.134899, 27.487467, 34.250511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.202005, 27.327755, 34.084412>,  <29.313848, 27.061569, 33.807579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202005, 27.327755, 34.084412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006758, -0.719448, 0.694514,
		0.960090, 0.198870, 0.196668,
		-0.279610, 0.665467, 0.692078,
		29.118122, 27.527395, 34.292034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586693, 26.839230, 34.463142>,  <29.313848, 27.061569, 33.807579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586693, 26.839230, 34.463142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.326981, 27.104794, 34.611549>,  <29.171154, 27.264132, 34.700596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.326981, 27.104794, 34.611549>,  <29.586693, 26.839230, 34.463142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326981, 27.104794, 34.611549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109954, -0.564647, 0.817975,
		0.752558, 0.490301, 0.439615,
		-0.649281, 0.663911, 0.371019,
		29.132196, 27.303967, 34.722855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831465, 27.052303, 35.134659>,  <29.586693, 26.839230, 34.463142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831465, 27.052303, 35.134659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.434734, 27.102871, 35.127766>,  <29.196695, 27.133211, 35.123631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.434734, 27.102871, 35.127766>,  <29.831465, 27.052303, 35.134659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434734, 27.102871, 35.127766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100245, -0.688565, 0.718213,
		0.078929, 0.714071, 0.695610,
		-0.991827, 0.126419, -0.017234,
		29.137186, 27.140797, 35.122597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639486, 26.968122, 35.847145>,  <29.831465, 27.052303, 35.134659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639486, 26.968122, 35.847145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.280191, 26.940250, 35.673565>,  <29.064613, 26.923527, 35.569416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.280191, 26.940250, 35.673565>,  <29.639486, 26.968122, 35.847145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280191, 26.940250, 35.673565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280041, -0.670239, 0.687282,
		-0.338740, 0.738866, 0.582521,
		-0.898238, -0.069680, -0.433950,
		29.010719, 26.919346, 35.543381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242964, 27.130373, 36.337280>,  <29.639486, 26.968122, 35.847145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242964, 27.130373, 36.337280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.042093, 26.908237, 36.072128>,  <28.921570, 26.774956, 35.913036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.042093, 26.908237, 36.072128>,  <29.242964, 27.130373, 36.337280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042093, 26.908237, 36.072128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154716, -0.696483, 0.700696,
		-0.850811, 0.454433, 0.263839,
		-0.502179, -0.555339, -0.662884,
		28.891439, 26.741636, 35.873264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630543, 26.892281, 36.684021>,  <29.242964, 27.130373, 36.337280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630543, 26.892281, 36.684021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.712477, 26.647869, 36.378162>,  <28.761637, 26.501223, 36.194649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.712477, 26.647869, 36.378162>,  <28.630543, 26.892281, 36.684021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712477, 26.647869, 36.378162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163689, -0.791594, 0.588715,
		-0.965012, 0.004574, -0.262166,
		0.204836, -0.611030, -0.764647,
		28.773928, 26.464560, 36.148769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205143, 26.321527, 36.752556>,  <28.630543, 26.892281, 36.684021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205143, 26.321527, 36.752556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.489079, 26.192482, 36.502102>,  <28.659439, 26.115055, 36.351830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.489079, 26.192482, 36.502102>,  <28.205143, 26.321527, 36.752556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489079, 26.192482, 36.502102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013844, -0.882378, 0.470337,
		-0.704230, -0.342531, -0.621879,
		0.709837, -0.322616, -0.626139,
		28.702030, 26.095697, 36.314259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040359, 25.693529, 36.535534>,  <28.205143, 26.321527, 36.752556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040359, 25.693529, 36.535534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.432219, 25.678127, 36.456734>,  <28.667334, 25.668886, 36.409454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.432219, 25.678127, 36.456734>,  <28.040359, 25.693529, 36.535534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432219, 25.678127, 36.456734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025914, -0.948960, 0.314331,
		-0.199052, -0.313039, -0.928647,
		0.979646, -0.038503, -0.197005,
		28.726112, 25.666576, 36.397633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166368, 24.972944, 36.218513>,  <28.040359, 25.693529, 36.535534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166368, 24.972944, 36.218513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.519510, 25.128120, 36.324394>,  <28.731396, 25.221226, 36.387924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.519510, 25.128120, 36.324394>,  <28.166368, 24.972944, 36.218513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519510, 25.128120, 36.324394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279110, -0.886695, 0.368605,
		0.377706, -0.251544, -0.891103,
		0.882856, 0.387940, 0.264701,
		28.784367, 25.244503, 36.403805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632338, 24.419228, 36.112713>,  <28.166368, 24.972944, 36.218513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632338, 24.419228, 36.112713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.814953, 24.689861, 36.343815>,  <28.924522, 24.852242, 36.482475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.814953, 24.689861, 36.343815>,  <28.632338, 24.419228, 36.112713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814953, 24.689861, 36.343815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469016, -0.734844, 0.489927,
		0.756040, 0.047307, -0.652813,
		0.456539, 0.676584, 0.577760,
		28.951914, 24.892838, 36.517143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330656, 24.249155, 35.982990>,  <28.632338, 24.419228, 36.112713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330656, 24.249155, 35.982990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.270271, 24.456863, 36.319458>,  <29.234039, 24.581488, 36.521339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.270271, 24.456863, 36.319458>,  <29.330656, 24.249155, 35.982990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270271, 24.456863, 36.319458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350303, -0.767604, 0.536724,
		0.924390, 0.375691, -0.066022,
		-0.150964, 0.519270, 0.841171,
		29.224981, 24.612644, 36.571808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798159, 23.977606, 36.417641>,  <29.330656, 24.249155, 35.982990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798159, 23.977606, 36.417641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.559008, 24.150719, 36.687527>,  <29.415516, 24.254587, 36.849457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.559008, 24.150719, 36.687527>,  <29.798159, 23.977606, 36.417641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559008, 24.150719, 36.687527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391970, -0.576379, 0.717040,
		0.699214, 0.693171, 0.174967,
		-0.597879, 0.432783, 0.674714,
		29.379644, 24.280554, 36.889942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846102, 23.170166, 36.661362>,  <29.798159, 23.977606, 36.417641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846102, 23.170166, 36.661362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.099199, 22.869873, 36.585430>,  <30.251059, 22.689697, 36.539871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.099199, 22.869873, 36.585430>,  <29.846102, 23.170166, 36.661362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099199, 22.869873, 36.585430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418935, 0.538047, -0.731436,
		0.651251, 0.383284, 0.654954,
		0.632744, -0.750732, -0.189833,
		30.289022, 22.644653, 36.528481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545511, 23.475872, 36.608784>,  <29.846102, 23.170166, 36.661362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545511, 23.475872, 36.608784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.589840, 23.121029, 36.429558>,  <30.616438, 22.908123, 36.322021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.589840, 23.121029, 36.429558>,  <30.545511, 23.475872, 36.608784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589840, 23.121029, 36.429558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200856, 0.461529, -0.864088,
		0.973332, 0.005763, 0.229328,
		0.110822, -0.887106, -0.448063,
		30.623087, 22.854897, 36.295139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071596, 23.613684, 36.221748>,  <30.545511, 23.475872, 36.608784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071596, 23.613684, 36.221748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.894869, 23.306705, 36.035923>,  <30.788832, 23.122519, 35.924427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.894869, 23.306705, 36.035923>,  <31.071596, 23.613684, 36.221748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894869, 23.306705, 36.035923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211457, 0.414171, -0.885295,
		0.871826, -0.489377, -0.020707,
		-0.441819, -0.767445, -0.464568,
		30.762323, 23.076471, 35.896553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465502, 23.533367, 35.698135>,  <31.071596, 23.613684, 36.221748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465502, 23.533367, 35.698135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.116297, 23.360336, 35.608047>,  <30.906773, 23.256517, 35.553993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.116297, 23.360336, 35.608047>,  <31.465502, 23.533367, 35.698135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116297, 23.360336, 35.608047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066939, 0.351151, -0.933923,
		0.483079, -0.830404, -0.277603,
		-0.873014, -0.432576, -0.225220,
		30.854393, 23.230564, 35.540482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565266, 23.226055, 34.998100>,  <31.465502, 23.533367, 35.698135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565266, 23.226055, 34.998100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.167965, 23.261131, 35.028458>,  <30.929585, 23.282177, 35.046673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.167965, 23.261131, 35.028458>,  <31.565266, 23.226055, 34.998100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167965, 23.261131, 35.028458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053773, 0.231553, -0.971335,
		-0.102750, -0.968862, -0.225275,
		-0.993253, 0.087691, 0.075890,
		30.869989, 23.287439, 35.051224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256657, 22.908382, 34.337196>,  <31.565266, 23.226055, 34.998100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256657, 22.908382, 34.337196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.986111, 23.159119, 34.491909>,  <30.823784, 23.309561, 34.584736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.986111, 23.159119, 34.491909>,  <31.256657, 22.908382, 34.337196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986111, 23.159119, 34.491909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239375, 0.309548, -0.920260,
		-0.696586, -0.715017, -0.059317,
		-0.676364, 0.626841, 0.386785,
		30.783201, 23.347172, 34.607944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687185, 22.862391, 33.828232>,  <31.256657, 22.908382, 34.337196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687185, 22.862391, 33.828232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.645147, 23.210567, 34.020599>,  <30.619925, 23.419474, 34.136021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.645147, 23.210567, 34.020599>,  <30.687185, 22.862391, 33.828232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645147, 23.210567, 34.020599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173594, 0.460118, -0.870722,
		-0.979194, -0.174995, 0.102747,
		-0.105096, 0.870441, 0.480923,
		30.613619, 23.471701, 34.164875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923071, 22.667362, 33.932281>,  <30.687185, 22.862391, 33.828232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923071, 22.667362, 33.932281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.725748, 22.421280, 33.686298>,  <29.607355, 22.273630, 33.538708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.725748, 22.421280, 33.686298>,  <29.923071, 22.667362, 33.932281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725748, 22.421280, 33.686298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423994, -0.447233, 0.787535,
		-0.759524, 0.649234, -0.040220,
		-0.493307, -0.615205, -0.614956,
		29.577757, 22.236719, 33.501812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180742, 22.419197, 34.121059>,  <29.923071, 22.667362, 33.932281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180742, 22.419197, 34.121059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.346430, 22.131069, 33.898506>,  <29.445843, 21.958193, 33.764973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.346430, 22.131069, 33.898506>,  <29.180742, 22.419197, 34.121059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346430, 22.131069, 33.898506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152178, -0.657494, 0.737932,
		-0.897366, -0.220996, -0.381963,
		0.414218, -0.720321, -0.556382,
		29.470695, 21.914972, 33.731590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785677, 21.933159, 34.103191>,  <29.180742, 22.419197, 34.121059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785677, 21.933159, 34.103191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.138533, 21.756054, 34.038952>,  <29.350246, 21.649792, 34.000408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.138533, 21.756054, 34.038952>,  <28.785677, 21.933159, 34.103191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138533, 21.756054, 34.038952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244469, -0.721886, 0.647392,
		-0.402572, -0.531829, -0.745045,
		0.882140, -0.442762, -0.160596,
		29.403175, 21.623224, 33.990772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633701, 21.188015, 33.992702>,  <28.785677, 21.933159, 34.103191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633701, 21.188015, 33.992702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.028509, 21.177792, 34.056122>,  <29.265394, 21.171658, 34.094173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.028509, 21.177792, 34.056122>,  <28.633701, 21.188015, 33.992702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028509, 21.177792, 34.056122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108097, -0.835839, 0.538227,
		0.118763, -0.548380, -0.827753,
		0.987021, -0.025556, 0.158545,
		29.324615, 21.170124, 34.103683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921507, 20.628599, 33.725441>,  <28.633701, 21.188015, 33.992702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921507, 20.628599, 33.725441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.161095, 20.727135, 34.030216>,  <29.304848, 20.786257, 34.213081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.161095, 20.727135, 34.030216>,  <28.921507, 20.628599, 33.725441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161095, 20.727135, 34.030216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360126, -0.766989, 0.531072,
		0.715222, -0.592491, -0.370691,
		0.598971, 0.246339, 0.761938,
		29.340786, 20.801037, 34.258797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372196, 20.072786, 33.812748>,  <28.921507, 20.628599, 33.725441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372196, 20.072786, 33.812748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.407053, 20.278877, 34.153793>,  <29.427967, 20.402531, 34.358421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.407053, 20.278877, 34.153793>,  <29.372196, 20.072786, 33.812748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407053, 20.278877, 34.153793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231399, -0.821991, 0.520371,
		0.968948, -0.242640, 0.047592,
		0.087142, 0.515225, 0.852613,
		29.433195, 20.433445, 34.409576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854734, 19.675426, 34.177101>,  <29.372196, 20.072786, 33.812748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854734, 19.675426, 34.177101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.661690, 19.915279, 34.432453>,  <29.545862, 20.059191, 34.585663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.661690, 19.915279, 34.432453>,  <29.854734, 19.675426, 34.177101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661690, 19.915279, 34.432453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269337, -0.795169, 0.543290,
		0.833393, 0.090258, 0.545261,
		-0.482611, 0.599633, 0.638378,
		29.516907, 20.095169, 34.623966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046759, 19.431437, 34.814770>,  <29.854734, 19.675426, 34.177101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046759, 19.431437, 34.814770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.725153, 19.627087, 34.950016>,  <29.532190, 19.744476, 35.031162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.725153, 19.627087, 34.950016>,  <30.046759, 19.431437, 34.814770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725153, 19.627087, 34.950016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207711, -0.763837, 0.611072,
		0.557153, 0.421081, 0.715732,
		-0.804013, 0.489126, 0.338111,
		29.483950, 19.773825, 35.051449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062933, 19.381542, 35.526989>,  <30.046759, 19.431437, 34.814770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062933, 19.381542, 35.526989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.685251, 19.476791, 35.435974>,  <29.458641, 19.533941, 35.381363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.685251, 19.476791, 35.435974>,  <30.062933, 19.381542, 35.526989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685251, 19.476791, 35.435974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329219, -0.662326, 0.673008,
		0.009552, 0.710368, 0.703765,
		-0.944205, 0.238121, -0.227540,
		29.401989, 19.548227, 35.367710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.781137, 30.162992, 22.655899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415331, 30.010586, 22.710281>,  <29.195847, 29.919142, 22.742910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415331, 30.010586, 22.710281>,  <29.781137, 30.162992, 22.655899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415331, 30.010586, 22.710281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343598, -0.554165, 0.758183,
		-0.213536, 0.740087, 0.637709,
		-0.914518, -0.381015, 0.135958,
		29.140976, 29.896280, 22.751068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601488, 30.266108, 23.297832>,  <29.781137, 30.162992, 22.655899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601488, 30.266108, 23.297832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321629, 29.993820, 23.211010>,  <29.153713, 29.830448, 23.158916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321629, 29.993820, 23.211010>,  <29.601488, 30.266108, 23.297832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321629, 29.993820, 23.211010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152443, -0.439018, 0.885452,
		-0.698034, 0.586417, 0.410929,
		-0.699649, -0.680719, -0.217054,
		29.111734, 29.789604, 23.145893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151859, 30.190981, 23.901392>,  <29.601488, 30.266108, 23.297832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151859, 30.190981, 23.901392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108761, 29.843113, 23.708698>,  <29.082903, 29.634392, 23.593082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108761, 29.843113, 23.708698>,  <29.151859, 30.190981, 23.901392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108761, 29.843113, 23.708698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293145, -0.490801, 0.820475,
		-0.949977, -0.052816, 0.307821,
		-0.107744, -0.869669, -0.481733,
		29.076437, 29.582212, 23.564178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787035, 29.716961, 24.411142>,  <29.151859, 30.190981, 23.901392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787035, 29.716961, 24.411142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924486, 29.466427, 24.131248>,  <29.006956, 29.316107, 23.963312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924486, 29.466427, 24.131248>,  <28.787035, 29.716961, 24.411142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924486, 29.466427, 24.131248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263086, -0.651066, 0.711968,
		-0.901502, -0.428741, -0.058944,
		0.343626, -0.626334, -0.699734,
		29.027575, 29.278526, 23.921328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592905, 29.005901, 24.538969>,  <28.787035, 29.716961, 24.411142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592905, 29.005901, 24.538969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880934, 28.913532, 24.277229>,  <29.053751, 28.858110, 24.120186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880934, 28.913532, 24.277229>,  <28.592905, 29.005901, 24.538969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880934, 28.913532, 24.277229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165120, -0.858891, 0.484810,
		-0.673967, -0.457144, -0.580334,
		0.720072, -0.230921, -0.654348,
		29.096954, 28.844255, 24.080925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499195, 28.450211, 24.260857>,  <28.592905, 29.005901, 24.538969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499195, 28.450211, 24.260857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897615, 28.463261, 24.227825>,  <29.136667, 28.471090, 24.208006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897615, 28.463261, 24.227825>,  <28.499195, 28.450211, 24.260857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897615, 28.463261, 24.227825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073712, -0.822333, 0.564211,
		-0.049500, -0.568070, -0.821490,
		0.996050, 0.032625, -0.082579,
		29.196430, 28.473047, 24.203051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756229, 27.809643, 23.981932>,  <28.499195, 28.450211, 24.260857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756229, 27.809643, 23.981932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063547, 27.981380, 24.171833>,  <29.247938, 28.084423, 24.285774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063547, 27.981380, 24.171833>,  <28.756229, 27.809643, 23.981932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063547, 27.981380, 24.171833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050166, -0.779793, 0.624025,
		0.638128, -0.455618, -0.620648,
		0.768294, 0.429343, 0.474751,
		29.294035, 28.110184, 24.314259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154129, 27.230169, 24.157652>,  <28.756229, 27.809643, 23.981932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154129, 27.230169, 24.157652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308182, 27.528824, 24.374615>,  <29.400614, 27.708017, 24.504793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308182, 27.528824, 24.374615>,  <29.154129, 27.230169, 24.157652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308182, 27.528824, 24.374615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239918, -0.648539, 0.722382,
		0.891131, -0.148079, -0.428904,
		0.385131, 0.746639, 0.542407,
		29.423721, 27.752815, 24.537336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853096, 27.076632, 24.208330>,  <29.154129, 27.230169, 24.157652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853096, 27.076632, 24.208330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755396, 27.319572, 24.510712>,  <29.696775, 27.465338, 24.692141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755396, 27.319572, 24.510712>,  <29.853096, 27.076632, 24.208330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755396, 27.319572, 24.510712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365510, -0.664403, 0.651898,
		0.898190, 0.435534, -0.059714,
		-0.244250, 0.607354, 0.755952,
		29.682121, 27.501780, 24.737497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171280, 26.822456, 24.698502>,  <29.853096, 27.076632, 24.208330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171280, 26.822456, 24.698502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971718, 27.075043, 24.935936>,  <29.851980, 27.226595, 25.078396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971718, 27.075043, 24.935936>,  <30.171280, 26.822456, 24.698502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971718, 27.075043, 24.935936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152972, -0.609997, 0.777498,
		0.853049, 0.478701, 0.207735,
		-0.498907, 0.631466, 0.593585,
		29.822046, 27.264482, 25.114012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679937, 27.000839, 25.234344>,  <30.171280, 26.822456, 24.698502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679937, 27.000839, 25.234344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291338, 26.998203, 25.329124>,  <30.058178, 26.996622, 25.385992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291338, 26.998203, 25.329124>,  <30.679937, 27.000839, 25.234344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291338, 26.998203, 25.329124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171455, -0.709796, 0.683222,
		0.163685, 0.704376, 0.690696,
		-0.971499, -0.006590, 0.236952,
		29.999887, 26.996227, 25.400209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685692, 27.063673, 25.904625>,  <30.679937, 27.000839, 25.234344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685692, 27.063673, 25.904625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337166, 26.888096, 25.816860>,  <30.128050, 26.782749, 25.764202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337166, 26.888096, 25.816860>,  <30.685692, 27.063673, 25.904625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337166, 26.888096, 25.816860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112158, -0.613407, 0.781762,
		-0.477737, 0.656552, 0.583701,
		-0.871314, -0.438944, -0.219410,
		30.075771, 26.756413, 25.751038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635921, 27.843664, 25.909618>,  <30.685692, 27.063673, 25.904625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635921, 27.843664, 25.909618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798855, 28.057316, 26.205940>,  <30.896614, 28.185507, 26.383734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798855, 28.057316, 26.205940>,  <30.635921, 27.843664, 25.909618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798855, 28.057316, 26.205940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503562, 0.545350, -0.670089,
		-0.761909, 0.645989, -0.046827,
		0.407333, 0.534127, 0.740802,
		30.921055, 28.217554, 26.428181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579098, 28.447868, 25.705616>,  <30.635921, 27.843664, 25.909618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579098, 28.447868, 25.705616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870312, 28.458092, 25.979641>,  <31.045040, 28.464226, 26.144056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870312, 28.458092, 25.979641>,  <30.579098, 28.447868, 25.705616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870312, 28.458092, 25.979641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537470, 0.599039, -0.593530,
		-0.425551, 0.800312, 0.422384,
		0.728034, 0.025559, 0.685065,
		31.088722, 28.465759, 26.185160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781475, 29.137568, 25.679255>,  <30.579098, 28.447868, 25.705616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781475, 29.137568, 25.679255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082497, 28.927402, 25.838051>,  <31.263109, 28.801304, 25.933329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082497, 28.927402, 25.838051>,  <30.781475, 29.137568, 25.679255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082497, 28.927402, 25.838051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653563, 0.522009, -0.548053,
		0.080723, 0.671897, 0.736232,
		0.752555, -0.525415, 0.396989,
		31.308264, 28.769777, 25.957148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287670, 29.541563, 25.617584>,  <30.781475, 29.137568, 25.679255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287670, 29.541563, 25.617584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488577, 29.217041, 25.737255>,  <31.609121, 29.022327, 25.809057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488577, 29.217041, 25.737255>,  <31.287670, 29.541563, 25.617584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488577, 29.217041, 25.737255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831052, 0.357312, -0.426239,
		0.238910, 0.462720, 0.853705,
		0.502269, -0.811306, 0.299179,
		31.639257, 28.973650, 25.827009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909210, 29.758457, 26.082611>,  <31.287670, 29.541563, 25.617584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909210, 29.758457, 26.082611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983038, 29.403854, 25.912884>,  <32.027336, 29.191093, 25.811049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983038, 29.403854, 25.912884>,  <31.909210, 29.758457, 26.082611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983038, 29.403854, 25.912884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889738, 0.334109, -0.311024,
		0.417492, -0.320125, 0.850423,
		0.184568, -0.886505, -0.424316,
		32.038410, 29.137903, 25.785589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609009, 29.711576, 26.191017>,  <31.909210, 29.758457, 26.082611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609009, 29.711576, 26.191017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519306, 29.475475, 25.880840>,  <32.465485, 29.333815, 25.694735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519306, 29.475475, 25.880840>,  <32.609009, 29.711576, 26.191017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519306, 29.475475, 25.880840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899840, 0.180082, -0.397314,
		0.374159, -0.786874, 0.490748,
		-0.224261, -0.590254, -0.775440,
		32.452026, 29.298399, 25.648209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166229, 29.281727, 26.138611>,  <32.609009, 29.711576, 26.191017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166229, 29.281727, 26.138611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000061, 29.229706, 25.778496>,  <32.900360, 29.198494, 25.562428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000061, 29.229706, 25.778496>,  <33.166229, 29.281727, 26.138611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000061, 29.229706, 25.778496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904863, 0.042125, -0.423614,
		0.093017, -0.990612, 0.100182,
		-0.415417, -0.130054, -0.900286,
		32.875435, 29.190689, 25.508410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572197, 28.757633, 25.794060>,  <33.166229, 29.281727, 26.138611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572197, 28.757633, 25.794060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392994, 28.988861, 25.521259>,  <33.285473, 29.127598, 25.357578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392994, 28.988861, 25.521259>,  <33.572197, 28.757633, 25.794060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392994, 28.988861, 25.521259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893757, 0.308425, -0.325689,
		0.022076, -0.755455, -0.654829,
		-0.448009, 0.578068, -0.682001,
		33.258591, 29.162281, 25.316658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935440, 28.613049, 25.108000>,  <33.572197, 28.757633, 25.794060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935440, 28.613049, 25.108000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760906, 28.970726, 25.067940>,  <33.656185, 29.185331, 25.043903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760906, 28.970726, 25.067940>,  <33.935440, 28.613049, 25.108000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760906, 28.970726, 25.067940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853921, 0.376442, -0.359319,
		-0.283599, -0.242306, -0.927825,
		-0.436338, 0.894192, -0.100151,
		33.630005, 29.238983, 25.037895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360378, 28.930006, 24.645464>,  <33.935440, 28.613049, 25.108000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360378, 28.930006, 24.645464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139637, 29.232536, 24.785992>,  <34.007191, 29.414055, 24.870308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139637, 29.232536, 24.785992>,  <34.360378, 28.930006, 24.645464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139637, 29.232536, 24.785992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777907, 0.618683, -0.109965,
		-0.300524, 0.212607, -0.929776,
		-0.551857, 0.756326, 0.351318,
		33.974079, 29.459435, 24.891386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215477, 29.464565, 24.113985>,  <34.360378, 28.930006, 24.645464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215477, 29.464565, 24.113985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190460, 29.648853, 24.468121>,  <34.175449, 29.759426, 24.680603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190460, 29.648853, 24.468121>,  <34.215477, 29.464565, 24.113985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190460, 29.648853, 24.468121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649054, 0.692648, -0.314591,
		-0.758166, 0.554957, -0.342354,
		-0.062546, 0.460719, 0.885340,
		34.171696, 29.787069, 24.733723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232925, 30.170502, 23.934973>,  <34.215477, 29.464565, 24.113985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232925, 30.170502, 23.934973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279030, 30.171722, 24.332306>,  <34.306694, 30.172455, 24.570705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279030, 30.171722, 24.332306>,  <34.232925, 30.170502, 23.934973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279030, 30.171722, 24.332306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530941, 0.844973, -0.064204,
		-0.839534, 0.534800, 0.095771,
		0.115260, 0.003052, 0.993331,
		34.313606, 30.172638, 24.630304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979172, 30.768410, 24.182043>,  <34.232925, 30.170502, 23.934973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979172, 30.768410, 24.182043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253822, 30.654270, 24.449512>,  <34.418613, 30.585787, 24.609993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253822, 30.654270, 24.449512>,  <33.979172, 30.768410, 24.182043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253822, 30.654270, 24.449512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539622, 0.816385, -0.205726,
		-0.487190, 0.502087, 0.714531,
		0.686625, -0.285349, 0.668672,
		34.459808, 30.568666, 24.650114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066128, 31.335194, 24.483835>,  <33.979172, 30.768410, 24.182043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066128, 31.335194, 24.483835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395302, 31.115692, 24.542683>,  <34.592808, 30.983992, 24.577991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395302, 31.115692, 24.542683>,  <34.066128, 31.335194, 24.483835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395302, 31.115692, 24.542683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567618, 0.783156, -0.253921,
		0.024122, 0.292469, 0.955971,
		0.822938, -0.548752, 0.147119,
		34.642185, 30.951067, 24.586819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437801, 31.736465, 24.294918>,  <34.066128, 31.335194, 24.483835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437801, 31.736465, 24.294918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329994, 32.121662, 24.295826>,  <33.265308, 32.352779, 24.296370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329994, 32.121662, 24.295826>,  <33.437801, 31.736465, 24.294918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329994, 32.121662, 24.295826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197420, -0.057559, 0.978628,
		0.942542, 0.263311, 0.205627,
		-0.269519, 0.962992, 0.002269,
		33.249138, 32.410561, 24.296507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818901, 32.267170, 24.770191>,  <33.437801, 31.736465, 24.294918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818901, 32.267170, 24.770191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422764, 32.296211, 24.722954>,  <33.185081, 32.313637, 24.694611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422764, 32.296211, 24.722954>,  <33.818901, 32.267170, 24.770191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422764, 32.296211, 24.722954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126380, -0.122742, 0.984359,
		0.056970, 0.989779, 0.130733,
		-0.990345, 0.072601, -0.118095,
		33.125660, 32.317993, 24.687525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480537, 32.571632, 25.420025>,  <33.818901, 32.267170, 24.770191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480537, 32.571632, 25.420025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172340, 32.395458, 25.235695>,  <32.987423, 32.289753, 25.125097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172340, 32.395458, 25.235695>,  <33.480537, 32.571632, 25.420025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172340, 32.395458, 25.235695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439524, -0.156536, 0.884486,
		-0.461695, 0.884032, -0.072973,
		-0.770491, -0.440437, -0.460825,
		32.941193, 32.263329, 25.097446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001289, 32.700935, 25.884512>,  <33.480537, 32.571632, 25.420025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001289, 32.700935, 25.884512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780872, 32.461437, 25.652008>,  <32.648624, 32.317738, 25.512506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780872, 32.461437, 25.652008>,  <33.001289, 32.700935, 25.884512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780872, 32.461437, 25.652008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662978, -0.108891, 0.740677,
		-0.506769, 0.793504, -0.336951,
		-0.551040, -0.598743, -0.581259,
		32.615559, 32.281815, 25.477631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285740, 32.960663, 25.752983>,  <33.001289, 32.700935, 25.884512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285740, 32.960663, 25.752983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334286, 32.563763, 25.742405>,  <32.363415, 32.325623, 25.736057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334286, 32.563763, 25.742405>,  <32.285740, 32.960663, 25.752983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334286, 32.563763, 25.742405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523897, -0.086666, 0.847361,
		-0.843091, -0.088988, -0.530358,
		0.121369, -0.992255, -0.026447,
		32.370697, 32.266087, 25.734470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656773, 32.709568, 25.935579>,  <32.285740, 32.960663, 25.752983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656773, 32.709568, 25.935579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890596, 32.387733, 25.977383>,  <32.030891, 32.194633, 26.002464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890596, 32.387733, 25.977383>,  <31.656773, 32.709568, 25.935579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890596, 32.387733, 25.977383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447488, -0.212274, 0.868731,
		-0.676788, -0.554593, -0.484132,
		0.584561, -0.804591, 0.104509,
		32.065964, 32.146355, 26.008736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114553, 32.116901, 26.032774>,  <31.656773, 32.709568, 25.935579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114553, 32.116901, 26.032774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466696, 32.011234, 26.190350>,  <31.677982, 31.947834, 26.284895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466696, 32.011234, 26.190350>,  <31.114553, 32.116901, 26.032774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466696, 32.011234, 26.190350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464534, -0.312445, 0.828605,
		-0.095804, -0.912466, -0.397777,
		0.880358, -0.264165, 0.393938,
		31.730803, 31.931984, 26.308531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091902, 31.445032, 26.332447>,  <31.114553, 32.116901, 26.032774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091902, 31.445032, 26.332447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421618, 31.579765, 26.514477>,  <31.619448, 31.660604, 26.623695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421618, 31.579765, 26.514477>,  <31.091902, 31.445032, 26.332447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421618, 31.579765, 26.514477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281067, -0.454287, 0.845355,
		0.491476, -0.824723, -0.279792,
		0.824289, 0.336832, 0.455074,
		31.668903, 31.680815, 26.650999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248491, 30.881645, 26.719271>,  <31.091902, 31.445032, 26.332447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248491, 30.881645, 26.719271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456507, 31.175194, 26.894081>,  <31.581316, 31.351322, 26.998968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456507, 31.175194, 26.894081>,  <31.248491, 30.881645, 26.719271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456507, 31.175194, 26.894081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204308, -0.389928, 0.897895,
		0.829348, -0.556228, -0.052842,
		0.520039, 0.733871, 0.437027,
		31.612518, 31.395355, 27.025188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662004, 30.515734, 27.211809>,  <31.248491, 30.881645, 26.719271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662004, 30.515734, 27.211809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623400, 30.900829, 27.312862>,  <31.600237, 31.131886, 27.373493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623400, 30.900829, 27.312862>,  <31.662004, 30.515734, 27.211809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623400, 30.900829, 27.312862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163509, -0.265704, 0.950087,
		0.981810, 0.050388, 0.183060,
		-0.096512, 0.962737, 0.252632,
		31.594446, 31.189650, 27.388653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996376, 30.538904, 27.907263>,  <31.662004, 30.515734, 27.211809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996376, 30.538904, 27.907263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804937, 30.889202, 27.881927>,  <31.690073, 31.099380, 27.866726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804937, 30.889202, 27.881927>,  <31.996376, 30.538904, 27.907263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804937, 30.889202, 27.881927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267928, -0.076965, 0.960360,
		0.836156, 0.476598, 0.271472,
		-0.478599, 0.875746, -0.063339,
		31.661358, 31.151926, 27.862926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204517, 30.888369, 28.509735>,  <31.996376, 30.538904, 27.907263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204517, 30.888369, 28.509735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848291, 31.046799, 28.420280>,  <31.634554, 31.141857, 28.366608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848291, 31.046799, 28.420280>,  <32.204517, 30.888369, 28.509735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848291, 31.046799, 28.420280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251627, -0.019429, 0.967629,
		0.378907, 0.918013, 0.116966,
		-0.890569, 0.396073, -0.223636,
		31.581121, 31.165621, 28.353189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917105, 31.309004, 29.126484>,  <32.204517, 30.888369, 28.509735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917105, 31.309004, 29.126484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578936, 31.244911, 28.922688>,  <31.376034, 31.206455, 28.800409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578936, 31.244911, 28.922688>,  <31.917105, 31.309004, 29.126484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578936, 31.244911, 28.922688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445066, -0.315987, 0.837895,
		-0.295252, 0.935135, 0.195828,
		-0.845425, -0.160233, -0.509493,
		31.325308, 31.196840, 28.769840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499613, 31.698725, 29.519213>,  <31.917105, 31.309004, 29.126484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499613, 31.698725, 29.519213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299973, 31.419235, 29.314201>,  <31.180187, 31.251541, 29.191195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299973, 31.419235, 29.314201>,  <31.499613, 31.698725, 29.519213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299973, 31.419235, 29.314201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358316, -0.372118, 0.856234,
		-0.788991, 0.610996, -0.064638,
		-0.499102, -0.698722, -0.512528,
		31.150242, 31.209620, 29.160442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885962, 31.699955, 29.819645>,  <31.499613, 31.698725, 29.519213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885962, 31.699955, 29.819645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870106, 31.349865, 29.626808>,  <30.860592, 31.139811, 29.511106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870106, 31.349865, 29.626808>,  <30.885962, 31.699955, 29.819645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870106, 31.349865, 29.626808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407607, -0.426338, 0.807523,
		-0.912297, 0.228513, -0.339848,
		-0.039639, -0.875225, -0.482090,
		30.858213, 31.087297, 29.482182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253637, 31.397184, 30.011423>,  <30.885962, 31.699955, 29.819645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253637, 31.397184, 30.011423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458668, 31.088486, 29.860867>,  <30.581686, 30.903267, 29.770533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458668, 31.088486, 29.860867>,  <30.253637, 31.397184, 30.011423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458668, 31.088486, 29.860867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265561, -0.559351, 0.785241,
		-0.816542, -0.302543, -0.491657,
		0.512578, -0.771747, -0.376390,
		30.612442, 30.856962, 29.747950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867266, 30.839804, 30.157209>,  <30.253637, 31.397184, 30.011423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867266, 30.839804, 30.157209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227068, 30.678486, 30.089981>,  <30.442949, 30.581696, 30.049644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227068, 30.678486, 30.089981>,  <29.867266, 30.839804, 30.157209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227068, 30.678486, 30.089981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158495, -0.659666, 0.734657,
		-0.407152, -0.634188, -0.657292,
		0.899503, -0.403295, -0.168069,
		30.496920, 30.557497, 30.039560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760183, 30.140228, 30.103441>,  <29.867266, 30.839804, 30.157209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760183, 30.140228, 30.103441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145699, 30.177048, 30.203556>,  <30.377007, 30.199139, 30.263624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145699, 30.177048, 30.203556>,  <29.760183, 30.140228, 30.103441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145699, 30.177048, 30.203556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145250, -0.605919, 0.782154,
		0.223650, -0.790183, -0.570606,
		0.963786, 0.092049, 0.250288,
		30.434834, 30.204662, 30.278643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975752, 29.492119, 30.118847>,  <29.760183, 30.140228, 30.103441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975752, 29.492119, 30.118847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247974, 29.689644, 30.335361>,  <30.411308, 29.808159, 30.465271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247974, 29.689644, 30.335361>,  <29.975752, 29.492119, 30.118847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247974, 29.689644, 30.335361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178372, -0.604872, 0.776088,
		0.710652, -0.624722, -0.323568,
		0.680557, 0.493813, 0.541287,
		30.452141, 29.837788, 30.497747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341600, 28.935459, 30.488861>,  <29.975752, 29.492119, 30.118847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341600, 28.935459, 30.488861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457687, 29.251606, 30.704674>,  <30.527340, 29.441294, 30.834162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457687, 29.251606, 30.704674>,  <30.341600, 28.935459, 30.488861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457687, 29.251606, 30.704674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153097, -0.518190, 0.841451,
		0.944635, -0.326803, -0.029384,
		0.290216, 0.790366, 0.539533,
		30.544752, 29.488716, 30.866533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877508, 28.771317, 31.096857>,  <30.341600, 28.935459, 30.488861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877508, 28.771317, 31.096857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671640, 29.095982, 31.207359>,  <30.548120, 29.290781, 31.273661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671640, 29.095982, 31.207359>,  <30.877508, 28.771317, 31.096857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671640, 29.095982, 31.207359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275655, -0.461744, 0.843094,
		0.811868, 0.357764, 0.461385,
		-0.514670, 0.811664, 0.276256,
		30.517239, 29.339481, 31.290236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955828, 28.903708, 31.884205>,  <30.877508, 28.771317, 31.096857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955828, 28.903708, 31.884205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647305, 29.128693, 31.765060>,  <30.462191, 29.263683, 31.693575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647305, 29.128693, 31.765060>,  <30.955828, 28.903708, 31.884205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647305, 29.128693, 31.765060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475107, -0.197418, 0.857496,
		0.423506, 0.802909, 0.419500,
		-0.771308, 0.562462, -0.297860,
		30.415913, 29.297432, 31.675703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875172, 29.408615, 32.388245>,  <30.955828, 28.903708, 31.884205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875172, 29.408615, 32.388245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530231, 29.335960, 32.199200>,  <30.323267, 29.292368, 32.085773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530231, 29.335960, 32.199200>,  <30.875172, 29.408615, 32.388245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530231, 29.335960, 32.199200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434436, -0.213952, 0.874923,
		-0.260035, 0.959808, 0.105592,
		-0.862350, -0.181637, -0.472610,
		30.271526, 29.281469, 32.057415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490860, 29.505424, 32.849995>,  <30.875172, 29.408615, 32.388245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490860, 29.505424, 32.849995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216305, 29.340435, 32.610416>,  <30.051571, 29.241442, 32.466671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216305, 29.340435, 32.610416>,  <30.490860, 29.505424, 32.849995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216305, 29.340435, 32.610416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520112, -0.297202, 0.800721,
		-0.508286, 0.861124, -0.010537,
		-0.686389, -0.412476, -0.598944,
		30.010387, 29.216692, 32.430733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925709, 29.861092, 32.950706>,  <30.490860, 29.505424, 32.849995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925709, 29.861092, 32.950706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812826, 29.501755, 32.816040>,  <29.745096, 29.286152, 32.735241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812826, 29.501755, 32.816040>,  <29.925709, 29.861092, 32.950706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812826, 29.501755, 32.816040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487306, -0.168050, 0.856909,
		-0.826373, 0.405884, -0.390342,
		-0.282208, -0.898341, -0.336662,
		29.728163, 29.232252, 32.715042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368689, 29.842356, 33.395145>,  <29.925709, 29.861092, 32.950706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368689, 29.842356, 33.395145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422218, 29.470596, 33.257561>,  <29.454336, 29.247540, 33.175011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422218, 29.470596, 33.257561>,  <29.368689, 29.842356, 33.395145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422218, 29.470596, 33.257561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482978, -0.364237, 0.796281,
		-0.865346, 0.059563, -0.497623,
		0.133824, -0.929400, -0.343959,
		29.462366, 29.191776, 33.154373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696491, 29.501177, 33.437237>,  <29.368689, 29.842356, 33.395145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696491, 29.501177, 33.437237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998566, 29.239727, 33.417358>,  <29.179810, 29.082857, 33.405434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998566, 29.239727, 33.417358>,  <28.696491, 29.501177, 33.437237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998566, 29.239727, 33.417358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392589, -0.511689, 0.764230,
		-0.524962, -0.557614, -0.643025,
		0.755175, -0.653637, -0.049704,
		29.225121, 29.043638, 33.402451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462973, 28.823286, 33.355564>,  <28.696491, 29.501177, 33.437237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462973, 28.823286, 33.355564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817446, 28.761925, 33.530445>,  <29.030130, 28.725109, 33.635376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817446, 28.761925, 33.530445>,  <28.462973, 28.823286, 33.355564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817446, 28.761925, 33.530445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458682, -0.423859, 0.780996,
		0.065507, -0.892643, -0.445979,
		0.886183, -0.153401, 0.437205,
		29.083302, 28.715904, 33.661606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188248, 28.261208, 32.850735>,  <28.462973, 28.823286, 33.355564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188248, 28.261208, 32.850735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813107, 28.229729, 32.715538>,  <27.588022, 28.210842, 32.634418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813107, 28.229729, 32.715538>,  <28.188248, 28.261208, 32.850735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813107, 28.229729, 32.715538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163624, 0.758622, -0.630651,
		0.306037, -0.646761, -0.698600,
		-0.937853, -0.078695, -0.337992,
		27.531750, 28.206120, 32.614140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282143, 28.247791, 32.067844>,  <28.188248, 28.261208, 32.850735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282143, 28.247791, 32.067844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895649, 28.316044, 32.145069>,  <27.663752, 28.356995, 32.191402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895649, 28.316044, 32.145069>,  <28.282143, 28.247791, 32.067844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895649, 28.316044, 32.145069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005735, 0.734867, -0.678187,
		-0.257594, -0.656396, -0.709077,
		-0.966236, 0.170630, 0.193061,
		27.605778, 28.367233, 32.202988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015789, 28.308659, 31.473148>,  <28.282143, 28.247791, 32.067844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015789, 28.308659, 31.473148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767031, 28.502193, 31.719448>,  <27.617777, 28.618315, 31.867228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767031, 28.502193, 31.719448>,  <28.015789, 28.308659, 31.473148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767031, 28.502193, 31.719448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080100, 0.742869, -0.664627,
		-0.778994, -0.462650, -0.423231,
		-0.621895, 0.483840, 0.615749,
		27.580462, 28.647345, 31.904173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415339, 28.513105, 31.103409>,  <28.015789, 28.308659, 31.473148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415339, 28.513105, 31.103409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411030, 28.753864, 31.422810>,  <27.408443, 28.898319, 31.614450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411030, 28.753864, 31.422810>,  <27.415339, 28.513105, 31.103409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411030, 28.753864, 31.422810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063645, 0.796516, -0.601258,
		-0.997914, -0.057298, 0.029727,
		-0.010773, 0.601896, 0.798502,
		27.407799, 28.934433, 31.662359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859461, 28.906872, 31.096895>,  <27.415339, 28.513105, 31.103409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859461, 28.906872, 31.096895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149401, 29.085213, 31.306965>,  <27.323364, 29.192217, 31.433006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149401, 29.085213, 31.306965>,  <26.859461, 28.906872, 31.096895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149401, 29.085213, 31.306965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076399, 0.809652, -0.581916,
		-0.684658, 0.381679, 0.620938,
		0.724849, 0.445853, 0.525175,
		27.366856, 29.218969, 31.464518>
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
